module Private
  module Deposits
    class HvsController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
