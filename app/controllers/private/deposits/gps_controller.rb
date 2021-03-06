module Private
  module Deposits
    class GpsController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
