module Admin
  module Withdraws
    class DasController < ::Admin::Withdraws::BaseController
      load_and_authorize_resource :class => '::Withdraws::Da'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24 * 3)
        @one_das = @das.with_aasm_state(:almost_done).order("id DESC")
        @all_das = @das.without_aasm_state(:almost_done).where('created_at > ?', start_at).order("id DESC")
      end

      def show
      end

      def update
        @da.process!
        redirect_to :back, notice: t('.notice')
      end

      def destroy
        @da.reject!
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
