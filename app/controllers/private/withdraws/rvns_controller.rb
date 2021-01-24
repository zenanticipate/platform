module Private::Withdraws
  class RvnsController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
