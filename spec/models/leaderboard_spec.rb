# frozen_string_literal: true

describe Leaderboard do
  describe '#last_scores' do
    subject { leaderboard.last_scores }

    let(:leaderboard) { create(:leaderboard) }
    let(:member) { create(:member, leaderboard: leaderboard) }
    let!(:scores) { create_list(:member_score, 2, member: member) }

    it 'return the last created score' do
      expect(subject).to eq [scores.last]
    end
  end
end
