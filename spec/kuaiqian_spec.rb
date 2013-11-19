#encoding: utf-8
require 'spec_helper'

describe KuaiQian::PayMent do

  it "快钱请求" do
    # pay = KuaiQian::PayMent.request(
    #   :bg_url => "http://219.233.173.50:8802/orders/1",
    #   :payer_name => "kaka",
    #   :order_id => "20131119095132",
    #   :order_amount => "10.0",
    #   :product_name => "伊利金领冠/厅4段400g",
    #   :product_id => "55558888",
    #   :product_num => "5",
    #   :payer_contact_type => "1",
    #   :payer_contact => "huxinghai1988@gmail.com",
    #   :order_time => "20131119095132"
    # )
    # puts pay.url
  end

  it "快钱响应" do
    # response = KuaiQian::PayMent.response({
    #   "merchantAcctId"=>"1002300545701",
    #   "version"=>"v2.0",
    #   "language"=>"1",
    #   "signType"=>"4",
    #   "payType"=>"12",
    #   "bankId"=>"",
    #   "orderId"=>"20131119095132",
    #   "orderAmount"=>"1",
    #   "orderTime"=>"20131119095132",
    #   "ext1"=>"", "ext2"=>"",
    #   "payAmount"=>"1",
    #   "dealId"=>"1281415983",
    #   "bankDealId"=>"",
    #   "dealTime"=>"20131119095152",
    #   "payResult"=>"10",
    #   "errCode"=>"",
    #   "fee"=>"1",
    #   "signMsg"=>"574DE37C37A8BEF8EA65B720875F9A7F"
    # })
    # puts response.successfully?
  end
end