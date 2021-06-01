# frozen_string_literal: true

module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from Contentful::EmptyFieldError do |e|
      render json: { message: e.message }, status: :not_found
    end

    rescue_from Contentful::AccessDenied do |e|
      render json: { message: e.message }, status: :forbidden
    end

    rescue_from Contentful::BadGateway do |e|
      render json: { message: e.message }, status: :bad_gateway
    end

    rescue_from Contentful::BadRequest do |e|
      render json: { message: e.message }, status: :bad_request
    end

    rescue_from Contentful::EmptyFieldError do |e|
      render json: { message: e.message }, status: :not_found
    end

    rescue_from Contentful::Error do |e|
      render json: { message: e.message }, status: :not_acceptable
    end

    rescue_from Contentful::NotFound do |e|
      render json: { message: e.message }, status: :not_found
    end

    rescue_from Contentful::RateLimitExceeded do |e|
      render json: { message: e.message }, status: :upgrade_required
    end

    rescue_from Contentful::UnparsableResource do |e|
      render json: { message: e.message }, status: :unprocessable_entity
    end

    rescue_from Contentful::ServerError do |e|
      render json: { message: e.message }, status: :internal_server_error
    end

    rescue_from Contentful::ServiceUnavailable do |e|
      render json: { message: e.message }, status: :service_unavailable
    end

    rescue_from Contentful::Unauthorized do |e|
      render json: { message: e.message }, status: :unauthorized
    end
  end
end
