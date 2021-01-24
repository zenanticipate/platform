module Private
  module Deposits
    class AcsController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
