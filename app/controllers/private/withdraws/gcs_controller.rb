module Private::Withdraws
  class GcsController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
