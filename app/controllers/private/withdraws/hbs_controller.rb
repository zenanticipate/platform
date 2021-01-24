module Private::Withdraws
  class HbsController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
