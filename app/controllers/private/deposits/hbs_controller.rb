module Private
  module Deposits
    class HbsController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
