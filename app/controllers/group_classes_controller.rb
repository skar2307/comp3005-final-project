class GroupClassesController < ApplicationController
  before_action :set_group_class, only: %i[ show edit update destroy ]

  # GET /group_classes or /group_classes.json
  def index
    @group_classes = GroupClass.all
  end

  # GET /group_classes/1 or /group_classes/1.json
  def show
  end

  # GET /group_classes/new
  def new
    @group_class = GroupClass.new
  end

  # GET /group_classes/1/edit
  def edit
  end

  # POST /group_classes or /group_classes.json
  def create
    @group_class = GroupClass.new(group_class_params)

    respond_to do |format|
      if @group_class.save
        format.html { redirect_to group_class_url(@group_class), notice: "Group class was successfully created." }
        format.json { render :show, status: :created, location: @group_class }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @group_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_classes/1 or /group_classes/1.json
  def update
    respond_to do |format|
      if @group_class.update(group_class_params)
        format.html { redirect_to group_class_url(@group_class), notice: "Group class was successfully updated." }
        format.json { render :show, status: :ok, location: @group_class }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @group_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_classes/1 or /group_classes/1.json
  def destroy
    @group_class.destroy!

    respond_to do |format|
      format.html { redirect_to group_classes_url, notice: "Group class was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_class
      @group_class = GroupClass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def group_class_params
      params.require(:group_class).permit(:name, :description, :start_time, :end_time, :is_recurring, :trainers_id)
    end
end
