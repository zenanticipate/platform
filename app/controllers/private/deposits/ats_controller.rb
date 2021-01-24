module Private
  module Deposits
    class AtsController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
