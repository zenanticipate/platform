module Private::Withdraws
  class AtsController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
