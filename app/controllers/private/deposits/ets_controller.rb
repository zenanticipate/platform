module Private
  module Deposits
    class EtsController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
