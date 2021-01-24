module Private::Withdraws
  class BdsController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
