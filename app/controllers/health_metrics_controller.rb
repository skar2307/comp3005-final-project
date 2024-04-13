class HealthMetricsController < ApplicationController
  before_action :set_health_metric, only: %i[ show edit update destroy ]

  # GET /health_metrics or /health_metrics.json
  def index
    @health_metrics = HealthMetric.all
  end

  # GET /health_metrics/1 or /health_metrics/1.json
  def show
  end

  # GET /health_metrics/new
  def new
    @health_metric = HealthMetric.new
  end

  # GET /health_metrics/1/edit
  def edit
  end

  # POST /health_metrics or /health_metrics.json
  def create
    @health_metric = HealthMetric.new(health_metric_params)

    respond_to do |format|
      if @health_metric.save
        format.html { redirect_to health_metric_url(@health_metric), notice: "Health metric was successfully created." }
        format.json { render :show, status: :created, location: @health_metric }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @health_metric.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /health_metrics/1 or /health_metrics/1.json
  def update
    respond_to do |format|
      if @health_metric.update(health_metric_params)
        format.html { redirect_to health_metric_url(@health_metric), notice: "Health metric was successfully updated." }
        format.json { render :show, status: :ok, location: @health_metric }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @health_metric.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_metrics/1 or /health_metrics/1.json
  def destroy
    @health_metric.destroy!

    respond_to do |format|
      format.html { redirect_to health_metrics_url, notice: "Health metric was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_metric
      @health_metric = HealthMetric.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def health_metric_params
      params.require(:health_metric).permit(:name, :value, :members_id)
    end
end
