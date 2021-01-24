module Admin
  module Withdraws
    class HbsController < ::Admin::Withdraws::BaseController
      load_and_authorize_resource :class => '::Withdraws::Hb'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24 * 3)
        @one_hbs = @hbs.with_aasm_state(:almost_done).order("id DESC")
        @all_hbs = @hbs.without_aasm_state(:almost_done).where('created_at > ?', start_at).order("id DESC")
      end

      def show
      end

      def update
        @hb.process!
        redirect_to :back, notice: t('.notice')
      end

      def destroy
        @hb.reject!
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
