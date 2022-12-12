class HealthsController < ApplicationController
  def new
    # byebug
    @health = Health.new
    @care_user = CareUser.find(params[:care_user_id])
    # @care_user = params[:care_user_id]
    # byebug
  end

  def create
    @health = Health.new(health_params)
    # @health.care_user_id = @care_user.id
    # @care_user = @health.build_care_user(care_user_params)
    # byebug
    if @health.save
      redirect_to healths_path(health_params), notice: "登録完了！"
    else
      # redirect_to new_health_path(care_user_id: care_user_id)
      render :new
    end
  end

  def index
    # byebug
    @healths = Health.where(care_user_id: params[:care_user_id])
    @care_user = CareUser.find(params[:care_user_id])
    # @healths = care_user.healths
  end

  private

  def health_params
    params.require(:health).permit(:record_in_at, :time, :blood_pressure_up, :blood_pressure_down, :pulse, :body_temperature, :breakfast, :lunch, :snack, :dinner, :before_sleep, :morning_medicine, :daytime_medicine, :snack_medicine, :evening_medicine, :sleep_medicine, :bath_time, :bath_division, :caregiver, :height, :body_weight, :daytime, :daytime_staff, :night, :night_staff, :contact, :contact_staff, :responsibility, :care_user_id)
    .merge(breakfast: params[:health][:breakfast].to_i, lunch: params[:health][:lunch].to_i, snack: params[:health][:snack].to_i, dinner: params[:health][:dinner].to_i, before_sleep: params[:health][:before_sleep].to_i, morning_medicine: params[:health][:morning_medicine].to_i, daytime_medicine: params[:health][:daytime_medicine].to_i, snack_medicine: params[:health][:snack_medicine].to_i, evening_medicine: params[:health][:evening_medicine].to_i, sleep_medicine: params[:health][:sleep_medicine].to_i, bath_division: params[:health][:bath_division].to_i)
  end

end
