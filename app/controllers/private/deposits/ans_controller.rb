module Private
  module Deposits
    class AnsController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
