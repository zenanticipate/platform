module Private::Withdraws
  class AnsController < ::Private::Withdraws::BaseController
    include ::Withdraws::Withdrawable
  end
end
