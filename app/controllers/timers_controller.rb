class TimersController < ApplicationController
  before_action :set_timer, only: [:show, :update, :destroy]
  before_action :set_categories, only: [:categories]
  before_action :set_default_start_and_date, :only => :create
  
  # GET /timers
  def index
    @timers = User.find(params[:user_id]).timers
    render json: @timers
  end

  # GET /users/1/daily
  def daily
    @timers = User.find(params[:user_id]).timers_at_date(Date.today)
    render json: @timers
  end

  # GET /users/1/week
  def weekly
    @timers = User.find(params[:user_id]).week(Date.today)
    render json: @timers
  end

  # GET /users/1/week
  def monthly
    @timers = User.find(params[:user_id]).monthly(Date.today)
    render json: @timers
  end

  # GET /users/1/categories
  def categories
    render json: @categories
  end
  
  # GET /users/1/timers/1
  def show
    render json: @timer
  end

  # POST /users/1/timers
  def create

    if @timer.save
      render json: @timer
    else
      render json: @timer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /timers/1
  def update
    zone = ActiveSupport::TimeZone.new("Eastern Time (US & Canada)")
    start = params[:start_time].to_datetime.in_time_zone(zone)
    end_time = params[:end_time].to_datetime.in_time_zone(zone)
    date = params[:start_time].to_date.in_time_zone(zone).to_s.split(" ")[0]

    if @timer.update(start_time: start, end_time: end_time, date: date)
      render json: @timer
    else
      render json: @timer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /timers/1
  def destroy
    @timer.destroy
    render json: "Success"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timer
      @timer = User.find(params[:user_id]).timers.find(params[:id])
    end

    def set_categories
      @categories = User.find(params[:user_id]).categories
    end
    
    def set_default_start_and_date 
      @timer = User.find(params[:user_id]).timers.new(timer_params)
      @timer.start_time = DateTime.now.in_time_zone(ActiveSupport::TimeZone.new("Eastern Time (US & Canada)"))
    end

    
    # Only allow a trusted parameter "white list" through.
    def timer_params
      params.require(:timer).permit(:user_id, :name, :category, :start_time, :end_time, :total_time, :date)
    end
end
