# frozen_string_literal: true

class MemberScoreParser
  attr_reader :new_members, :stars_change_members

  def initialize(leaderboard)
    @leaderboard = leaderboard
    @new_members = []
    @stars_change_members = []
  end

  def parse
    data = @leaderboard.fetch_leaderboard_data

    ActiveRecord::Base.transaction do
      data['members'].map do |member_id, member_data|
        member = Member.find_or_initialize_by(
          leaderboard_id: @leaderboard.id,
          member_id: member_id
        )
        member.name = member_data['name']

        @new_members << member if member.new_record?

        member.save!

        # TODO: Make it more perfo
        score_record = member.scores.last

        if score_record && score_record.stars == member_data['stars']
          score_record.update!(score: member_data['local_score']) if score_record.score != member_data['local_score']
          next
        end

        member.scores.create!(
          stars: member_data['stars'],
          score: member_data['local_score']
        )
        @stars_change_members << member
      end

      remove_leaved_members(data['members'].keys.map(&:to_i))
    end
  end

  def nothing_new?
    @new_members.empty? && @stars_change_members.empty?
  end

  def remove_leaved_members(remote_member_ids)
    to_remove_member_ids = @leaderboard.members.pluck(:member_id) - remote_member_ids
    return unless to_remove_member_ids.any?

    @leaderboard.members.where(member_id: to_remove_member_ids).destroy_all
  end
end
