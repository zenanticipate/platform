module Private::Withdraws
  class EwsController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
