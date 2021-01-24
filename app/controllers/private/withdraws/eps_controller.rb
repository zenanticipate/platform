module Private::Withdraws
  class EpsController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
