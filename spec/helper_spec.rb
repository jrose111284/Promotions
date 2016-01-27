require 'spec_helper'
def checkout_scan
  checkout.scan(001)
  checkout.scan(002)
  checkout.scan(003)
end
