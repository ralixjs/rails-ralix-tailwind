class PagesController < ApplicationController
  def show
    render template: "pages/#{params[:page]}"
  rescue ActionView::MissingTemplate
    render "errors/not_found", status: 404
  end
end
