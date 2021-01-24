module Admin
  module Withdraws
    class AnsController < ::Admin::Withdraws::BaseController
      load_and_authorize_resource :class => '::Withdraws::An'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24 * 3)
        @one_ans = @ans.with_aasm_state(:almost_done).order("id DESC")
        @all_ans = @ans.without_aasm_state(:almost_done).where('created_at > ?', start_at).order("id DESC")
      end

      def show
      end

      def update
        @an.process!
        redirect_to :back, notice: t('.notice')
      end

      def destroy
        @an.reject!
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
