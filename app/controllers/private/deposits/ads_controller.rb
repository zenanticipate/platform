module Private
  module Deposits
    class AdsController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
