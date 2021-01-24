module Admin
  module Withdraws
    class EpsController < ::Admin::Withdraws::BaseController
      load_and_authorize_resource :class => '::Withdraws::Ep'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24 * 3)
        @one_eps = @eps.with_aasm_state(:almost_done).order("id DESC")
        @all_eps = @eps.without_aasm_state(:almost_done).where('created_at > ?', start_at).order("id DESC")
      end

      def show
      end

      def update
        @ep.process!
        redirect_to :back, notice: t('.notice')
      end

      def destroy
        @ep.reject!
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
