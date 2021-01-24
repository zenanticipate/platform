module Admin
  module Withdraws
    class AmsController < ::Admin::Withdraws::BaseController
      load_and_authorize_resource :class => '::Withdraws::Am'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24 * 3)
        @one_ams = @ams.with_aasm_state(:almost_done).order("id DESC")
        @all_ams = @ams.without_aasm_state(:almost_done).where('created_at > ?', start_at).order("id DESC")
      end

      def show
      end

      def update
        @am.process!
        redirect_to :back, notice: t('.notice')
      end

      def destroy
        @am.reject!
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
