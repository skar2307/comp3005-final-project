class PersonalTrainingSessionsController < ApplicationController
  before_action :set_personal_training_session, only: %i[ show edit update destroy ]

  # GET /personal_training_sessions or /personal_training_sessions.json
  def index
    @personal_training_sessions = PersonalTrainingSession.all
  end

  # GET /personal_training_sessions/1 or /personal_training_sessions/1.json
  def show
  end

  # GET /personal_training_sessions/new
  def new
    @personal_training_session = PersonalTrainingSession.new
  end

  # GET /personal_training_sessions/1/edit
  def edit
  end

  # POST /personal_training_sessions or /personal_training_sessions.json
  def create
    @personal_training_session = PersonalTrainingSession.new(personal_training_session_params)

    respond_to do |format|
      if @personal_training_session.save
        format.html { redirect_to personal_training_session_url(@personal_training_session), notice: "Personal training session was successfully created." }
        format.json { render :show, status: :created, location: @personal_training_session }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @personal_training_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_training_sessions/1 or /personal_training_sessions/1.json
  def update
    respond_to do |format|
      if @personal_training_session.update(personal_training_session_params)
        format.html { redirect_to personal_training_session_url(@personal_training_session), notice: "Personal training session was successfully updated." }
        format.json { render :show, status: :ok, location: @personal_training_session }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @personal_training_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_training_sessions/1 or /personal_training_sessions/1.json
  def destroy
    @personal_training_session.destroy!

    respond_to do |format|
      format.html { redirect_to personal_training_sessions_url, notice: "Personal training session was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_training_session
      @personal_training_session = PersonalTrainingSession.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def personal_training_session_params
      params.require(:personal_training_session).permit(:name, :description, :start_time, :end_time, :member_id_id, :trainer_id_id)
    end
end
