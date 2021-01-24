module Private
  module Deposits
    class EpsController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
