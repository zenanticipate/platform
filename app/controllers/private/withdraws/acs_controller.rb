module Private::Withdraws
  class AcsController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
