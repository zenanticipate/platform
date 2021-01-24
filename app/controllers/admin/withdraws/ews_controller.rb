module Admin
  module Withdraws
    class EwsController < ::Admin::Withdraws::BaseController
      load_and_authorize_resource :class => '::Withdraws::Ew'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24 * 3)
        @one_ews = @ews.with_aasm_state(:almost_done).order("id DESC")
        @all_ews = @ews.without_aasm_state(:almost_done).where('created_at > ?', start_at).order("id DESC")
      end

      def show
      end

      def update
        @ew.process!
        redirect_to :back, notice: t('.notice')
      end

      def destroy
        @ew.reject!
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
