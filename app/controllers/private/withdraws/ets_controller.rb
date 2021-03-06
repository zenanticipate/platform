module Private::Withdraws
  class EtsController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
