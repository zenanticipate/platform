module Private
  module Deposits
    class GcsController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
