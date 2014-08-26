class Users::RegistrationsController < Devise::RegistrationsController

  before_action :configure_permitted_parameters

  before_action :validate_user_status, only: :create

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :first_name
    devise_parameter_sanitizer.for(:sign_up) << :last_name
    devise_parameter_sanitizer.for(:sign_up) << :status
  end

  def validate_user_status
    unless %w(pending_mentor student).include?(params[:user][:status])
      flash[:alert] = "Votre compte ne peut être ouvert sans statut valide."
      redirect_to root_path
    end
  end

end