module Private::Withdraws
  class AdsController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
