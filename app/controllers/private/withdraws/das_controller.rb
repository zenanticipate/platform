module Private::Withdraws
  class DasController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
