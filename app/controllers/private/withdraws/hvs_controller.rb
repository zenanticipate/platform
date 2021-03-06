module Private::Withdraws
  class HvsController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
