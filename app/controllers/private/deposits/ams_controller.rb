module Private
  module Deposits
    class AmsController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
