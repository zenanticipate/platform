module Private::Withdraws
  class BasController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
