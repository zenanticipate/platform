module Private
  module Deposits
    class BasController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
