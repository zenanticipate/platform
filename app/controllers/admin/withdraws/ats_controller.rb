module Admin
  module Withdraws
    class AtsController < ::Admin::Withdraws::BaseController
      load_and_authorize_resource :class => '::Withdraws::At'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24 * 3)
        @one_ats = @ats.with_aasm_state(:almost_done).order("id DESC")
        @all_ats = @ats.without_aasm_state(:almost_done).where('created_at > ?', start_at).order("id DESC")
      end

      def show
      end

      def update
        @at.process!
        redirect_to :back, notice: t('.notice')
      end

      def destroy
        @at.reject!
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
