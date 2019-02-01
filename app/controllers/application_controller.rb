class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def welcome; end

  private

  def locals(values)
    render locals: values
  end

  protected
  def access_denied(error)
    redirect_to root_path
  end
end