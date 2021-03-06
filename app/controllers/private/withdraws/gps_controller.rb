module Private::Withdraws
  class GpsController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
