# frozen_string_literal: true

class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, error: exception.message
  end

  def after_sign_in_path_for(_resource)
    root_path
  end

  def skip_authorize?
    devise_controller? || active_admin_resource?
  end

  def active_admin_resource?
    self.class.ancestors.include? ActiveAdmin::BaseController
  end

  def access_denied(exception)
    redirect_to root_url, error: exception.message
  end
end
