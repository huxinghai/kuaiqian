module KuaiQian
  class Request < Options

    def initialize(opts)
      super sym_keys_slice!(opts, attrs)
      set(:sign_msg, sign_secret)
    end

    def attrs
      %w(
        inputCharset pageUrl bgUrl version language signType
        merchantAcctId payerName payerContactType payerContact
        orderId orderAmount orderTime productName productNum
        productId productDesc ext1 ext2 payType bankId redoFlag
        pid key signMsg).map {|key| _underscore(key).to_sym  }
    end

    def openssl_sign
      opts = config[:rsa] || {}
      pri = OpenSSL::PKey::RSA.new(File.read(opts["pem_path"]), opts["password"])
      sign = pri.sign(OpenSSL::Digest::SHA1.new, sign_param)
      Base64.encode64(sign).gsub(/\n/, '')
    end

    def md5_sign
      super
    end

    def url
      "#{config[:remote]}?#{to_param}"
    end
  end
end