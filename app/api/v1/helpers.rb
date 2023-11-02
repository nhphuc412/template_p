module V1
  module Helpers
    extend Grape::API::Helpers

    def logger
      Base.logger
    end

    def declared_params
      @declared_params ||= ActionController::Parameters.new(declared(params, include_missing: false)).permit!
    end

    def access_token_param
      @access_token ||= headers["Authorization"]
      { access_token: @access_token }
    end

    params :only do
      optional :only, type: Array, desc: "Use only to get only what you need!"
    end

    params :include do
      optional :include, type: String, desc: 'Option allow include addition data in response. Ex: total_unread'
    end
  end
end
