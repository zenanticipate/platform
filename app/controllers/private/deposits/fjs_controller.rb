module Private
  module Deposits
    class FjsController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
