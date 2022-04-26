module Admin
  module Withdraws
    class GcsController < ::Admin::Withdraws::BaseController
      load_and_authorize_resource :class => '::Withdraws::Gc'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24 * 3)
        @one_gcs = @gcs.with_aasm_state(:almost_done).order("id DESC")
        @all_gcs = @gcs.without_aasm_state(:almost_done).where('created_at > ?', start_at).order("id DESC")
      end

      def show
      end

      def update
        @gc.process!
        redirect_to :back, notice: t('.notice')
      end

      def destroy
        @gc.reject!
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
