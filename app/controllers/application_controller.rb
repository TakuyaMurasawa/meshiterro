class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  # ログイン、ログアウト後は、投稿一覧画面を作成したので、ログイン後は投稿一覧画面に遷移するように修正
  def after_sign_in_path_for(resource)
    post_images_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  
end
