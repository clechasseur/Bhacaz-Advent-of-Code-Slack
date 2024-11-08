# frozen_string_literal: true

class Leaderboard < ApplicationRecord
  LEADERBOARD_URL = "https://adventofcode.com/#{Date.current.year}/leaderboard/private/view"

  encrypts :token

  has_many :members, dependent: :destroy
  has_one :post_config, dependent: :destroy

  validates :leaderboard_id, presence: true

  def fetch_leaderboard_data
    headers = { cookie: "session=#{token}" }
    response = HTTParty.get("#{url}.json", headers: headers)

    raise 'Something went wrong while fetching leaderboard data.' if response.code != 200

    JSON.parse(response.body)

    # require_relative '../../spec/support/leaderboard_data_mock'
    # pp LeaderboardDataMock::MOCK
    # JSON.parse(LeaderboardDataMock::MOCK)
  end

  def url
    "#{LEADERBOARD_URL}/#{leaderboard_id}"
  end

  def last_scores
    score_ids = MemberScore.where(member_id: members.select(:id)).group(:member_id).maximum(:id).values
    MemberScore.includes(:member).where(id: score_ids)
  end
end
