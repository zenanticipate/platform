module Private
  module Deposits
    class EwsController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
