module Private::Withdraws
  class FjsController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
