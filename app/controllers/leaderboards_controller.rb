class LeaderboardsController < ApplicationController

  def new
    @leaderboard = Leaderboard.new
  end

  def destroy
    PostConfig.joins(:leaderboard).merge(Leaderboard.where(leaderboard_id: params[:id])).first.destroy!
    redirect_to new_leaderboard_path
  end

  def create
    @leaderboard = Leaderboard.find_or_initialize_by(leaderboard_params)

    begin
      @leaderboard.fetch_leaderboard_data
    rescue => e
      flash[:error] = e.message
      render :new
      return
    end

    if @leaderboard.new_record? || @leaderboard.post_config.nil?
      @leaderboard.save!
      redirect_to edit_post_configs_leaderboards_path(@leaderboard.leaderboard_id)
    else
      redirect_to show_post_configs_leaderboards_path(@leaderboard.leaderboard_id)
    end
  end

  def edit_post_configs
    @leaderboard = Leaderboard.find_by(leaderboard_id: params[:id])
    @post_config = @leaderboard.post_config || PostConfig.new(leaderboard: @leaderboard)
  end

  def update_post_configs
    @leaderboard = Leaderboard.find_by(leaderboard_id: params[:id])
    post_config = PostConfig.find_or_initialize_by(leaderboard_id: @leaderboard.id)
    post_config.display_other = false unless post_configs_params.key?(:display_other)
    post_config.assign_attributes(post_configs_params)
    post_config.save!
    redirect_to show_post_configs_leaderboards_path(params[:id])
  end

  def show_post_configs
    @leaderboard = Leaderboard.find_by(leaderboard_id: params[:id])
    @post_config = @leaderboard.post_config
  end

  def slack_test
    leaderboard = Leaderboard.find_by(leaderboard_id: params[:id])
    TrySlackPostJob.perform_later(leaderboard.id)
    redirect_to show_post_configs_leaderboards_path(leaderboard.leaderboard_id)
  end

  private

  def leaderboard_params
    params.permit(:leaderboard_id, :token)
  end

  def post_configs_params
    params.required(:post_config).permit(:channel, :webhook_url, :order_by, :display_other)
  end
end
