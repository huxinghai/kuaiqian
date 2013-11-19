module KuaiQian
  class Response < Options

    def initialize(opts)
      super format_opts(opts)
    end

    def attrs
      %w(merchantAcctId version language signType
        payType bankId orderId orderTime orderAmount
        dealId bankDealId dealTime payAmount fee ext1
        ext2 payResult errCode key signMsg).map {|key| _underscore(key).to_sym  }
    end

    def openssl_sign
      rsa = config[:rsa] || {}
      raw = File.read(rsa["cer_path"])
      sign_msg = Base64.decode64(attributes[:sign_msg])
      sign = OpenSSL::X509::Certificate.new(raw).public_key
      sign.verify(OpenSSL::Digest::SHA1.new, sign_msg, sign_param)
    end

    def md5_sign
      super == get(:sign_msg)
    end

    alias_method :sign_verify?, :sign_secret

    def successfully?
      get(:pay_result) == "10" && sign_verify?
    end

    private
    def format_opts(opts)
      opts.keys.inject({}) do |h, key|
        h[_underscore(key).to_sym] = opts[key]; h
      end
    end
  end
end