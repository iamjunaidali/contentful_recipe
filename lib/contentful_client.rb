# frozen_string_literal: true

module ContentfulClient
  class << self
    def recipes(content_type)
      client.entries(include: 2, content_type: content_type)
    end

    def recipe(content_id)
      client.entry(content_id)
    end

    private

    def client
      @client ||= Contentful::Client.new(
        access_token: ENV['CONTENTFUL_ACCESS_TOKEN'],
        space: ENV['CONTENTFUL_SPACE_ID'],
        dynamic_entries: :auto,
        raise_errors: true
      )
    end
  end
end
