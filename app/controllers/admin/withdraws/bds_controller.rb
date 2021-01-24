module Admin
  module Withdraws
    class BdsController < ::Admin::Withdraws::BaseController
      load_and_authorize_resource :class => '::Withdraws::Bd'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24 * 3)
        @one_bds = @bds.with_aasm_state(:almost_done).order("id DESC")
        @all_bds = @bds.without_aasm_state(:almost_done).where('created_at > ?', start_at).order("id DESC")
      end

      def show
      end

      def update
        @bd.process!
        redirect_to :back, notice: t('.notice')
      end

      def destroy
        @bd.reject!
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
