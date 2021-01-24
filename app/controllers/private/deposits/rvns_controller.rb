module Private
  module Deposits
    class RvnsController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
