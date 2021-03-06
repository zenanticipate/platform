module Admin
  module Withdraws
    class EtsController < ::Admin::Withdraws::BaseController
      load_and_authorize_resource :class => '::Withdraws::Et'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24 * 3)
        @one_ets = @ets.with_aasm_state(:almost_done).order("id DESC")
        @all_ets = @ets.without_aasm_state(:almost_done).where('created_at > ?', start_at).order("id DESC")
      end

      def show
      end

      def update
        @et.process!
        redirect_to :back, notice: t('.notice')
      end

      def destroy
        @et.reject!
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
