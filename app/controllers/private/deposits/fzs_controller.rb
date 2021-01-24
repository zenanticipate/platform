module Private
  module Deposits
    class FzsController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
