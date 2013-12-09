class RegistrationsController < Devise::RegistrationsController

  before_filter :configure_permitted_parameters, :only => [:create, :edit, :update]


  protected

    def after_update_path_for(resource)
      edit_user_registration_path(resource)
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation, :job_title, :team_id, :team_mgr) }
          devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :password_confirmation, :job_title, :team_id, :team_mgr) }
    end

end