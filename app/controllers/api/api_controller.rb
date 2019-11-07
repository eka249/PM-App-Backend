module Api
    class ApiController < ApplicationController
      include Knock::Authenticable
      include Api::Concerns::Response
      include Api::Concerns::ExceptionHandler
      api_controller.rb
unless Rails.env.production?
  # https://youtu.be/Lvlhh6qhTIE?t=2m40s - to work alongside Devise

  undef_method :current_user
  undef_method :current_admin
end
    end
  end