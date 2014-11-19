require 'spec_helper'

describe Spree::AlipayNotifyController do

  # Regression tests for #55
  context "not from alipay" do


    context "notify_web" do
      it "raises ActiveRecord::RecordNotFound" do
        expect(lambda { post :notify_web, :use_route => :spree }).
          to "error"
      end
    end


  end
end