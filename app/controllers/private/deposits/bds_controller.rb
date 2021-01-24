module Private
  module Deposits
    class BdsController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
