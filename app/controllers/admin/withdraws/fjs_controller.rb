module Admin
  module Withdraws
    class FjsController < ::Admin::Withdraws::BaseController
      load_and_authorize_resource :class => '::Withdraws::Fj'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24 * 3)
        @one_fjs = @fjs.with_aasm_state(:almost_done).order("id DESC")
        @all_fjs = @fjs.without_aasm_state(:almost_done).where('created_at > ?', start_at).order("id DESC")
      end

      def show
      end

      def update
        @fj.process!
        redirect_to :back, notice: t('.notice')
      end

      def destroy
        @fj.reject!
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
