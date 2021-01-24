module Private::Withdraws
  class FzsController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
