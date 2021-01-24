module Admin
  module Deposits
    class BasController < ::Admin::Deposits::BaseController
      load_and_authorize_resource :class => '::Deposits::Ba'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24 * 365)
        @bas = @bas.includes(:member).
          where('created_at > ?', start_at).
          order('id DESC').page(params[:page]).per(20)
      end

      def update
        @ba.accept! if @ba.may_accept?
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
