class V1::EventsController < ApplicationController
  before_action :set_v1_event, only: [:show, :update, :destroy]

  # GET /v1/events
  def index
    @v1_events = V1::Event.all

    render json: @v1_events
  end

  # GET /v1/events/1
  def show
    render json: @v1_event
  end

  # POST /v1/events
  def create
    @v1_event = V1::Event.new(v1_event_params)

    if @v1_event.save
      render json: @v1_event, status: :created, location: @v1_event
    else
      render json: @v1_event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /v1/events/1
  def update
    if @v1_event.update(v1_event_params)
      render json: @v1_event
    else
      render json: @v1_event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /v1/events/1
  def destroy
    @v1_event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v1_event
      @v1_event = V1::Event.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def v1_event_params
      params.fetch(:v1_event, {})
    end
end
