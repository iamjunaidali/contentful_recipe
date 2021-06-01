class ApplicationController < ActionController::Base
  include ExceptionHandler
  include Pagy::Backend
end
