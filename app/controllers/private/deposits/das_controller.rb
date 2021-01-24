module Private
  module Deposits
    class DasController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
