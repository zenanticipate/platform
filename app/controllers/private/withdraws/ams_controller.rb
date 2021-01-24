module Private::Withdraws
  class AmsController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
