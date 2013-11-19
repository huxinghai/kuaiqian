require "kuaiqian/version"
require 'kuaiqian/options'
require 'kuaiqian/request'
require 'kuaiqian/response'

module KuaiQian
  module PayMent

    class << self

      def request(options)
        KuaiQian::Request.new(options)
      end

      def response(options)
        KuaiQian::Response.new(options)
      end

      def config
        path = "config/kuaiqian.yml"
        raise 'no exists kuaiqian.yml file!' unless File.exists?(path)
        @config ||= YAML::load_file(path)
        @config
      end
    end
  end
end
