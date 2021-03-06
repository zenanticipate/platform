module Admin
  module Withdraws
    class GpsController < ::Admin::Withdraws::BaseController
      load_and_authorize_resource :class => '::Withdraws::Gp'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24 * 3)
        @one_gps = @gps.with_aasm_state(:almost_done).order("id DESC")
        @all_gps = @gps.without_aasm_state(:almost_done).where('created_at > ?', start_at).order("id DESC")
      end

      def show
      end

      def update
        @gp.process!
        redirect_to :back, notice: t('.notice')
      end

      def destroy
        @gp.reject!
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
