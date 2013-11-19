# Kuaiqian

[99bill快钱支付](https://www.99bill.com/)

## Installation

Add this line to your application's Gemfile:

    gem 'kuaiqian', :github => "huxinghai1988/kuaiqian"

And then execute:

    $ bundle

## Usage

config.yml配置:

    #rsa加密
    remote: https://www.99bill.com/gateway/recvMerchantInfoAction.htm
    rsa:
      pem_path: 99bill-rsa.pem
      password: 123456
      cer_path: 99bill-rsa.cer

    params:
      merchant_acct_id: 1002301545701
      version: v2.0
      language: 1
      sign_type: 4

    #md5加密, 替换rsa与修改sign_type参数

    md5:
      key: XZDE46UKTFJ6TPQT

    params:
      sign_type: 1



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
