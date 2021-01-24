module Admin
  module Withdraws
    class RvnsController < ::Admin::Withdraws::BaseController
      load_and_authorize_resource :class => '::Withdraws::Rvn'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24 * 3)
        @one_rvns = @rvns.with_aasm_state(:almost_done).order("id DESC")
        @all_rvns = @rvns.without_aasm_state(:almost_done).where('created_at > ?', start_at).order("id DESC")
      end

      def show
      end

      def update
        @rvn.process!
        redirect_to :back, notice: t('.notice')
      end

      def destroy
        @rvn.reject!
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
