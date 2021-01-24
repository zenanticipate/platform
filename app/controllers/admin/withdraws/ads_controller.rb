module Admin
  module Withdraws
    class AdsController < ::Admin::Withdraws::BaseController
      load_and_authorize_resource :class => '::Withdraws::Ad'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24 * 3)
        @one_ads = @ads.with_aasm_state(:almost_done).order("id DESC")
        @all_ads = @ads.without_aasm_state(:almost_done).where('created_at > ?', start_at).order("id DESC")
      end

      def show
      end

      def update
        @ad.process!
        redirect_to :back, notice: t('.notice')
      end

      def destroy
        @ad.reject!
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
