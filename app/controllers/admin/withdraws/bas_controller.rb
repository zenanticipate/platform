module Admin
  module Withdraws
    class BasController < ::Admin::Withdraws::BaseController
      load_and_authorize_resource :class => '::Withdraws::Ba'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24 * 3)
        @one_bas = @bas.with_aasm_state(:almost_done).order("id DESC")
        @all_bas = @bas.without_aasm_state(:almost_done).where('created_at > ?', start_at).order("id DESC")
      end

      def show
      end

      def update
        @ba.process!
        redirect_to :back, notice: t('.notice')
      end

      def destroy
        @ba.reject!
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
