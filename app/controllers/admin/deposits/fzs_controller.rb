module Admin
  module Deposits
    class FzsController < ::Admin::Deposits::BaseController
      load_and_authorize_resource :class => '::Deposits::Fz'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24 * 365)
        @fzs = @fzs.includes(:member).
          where('created_at > ?', start_at).
          order('id DESC').page(params[:page]).per(20)
      end

      def update
        @fz.accept! if @fz.may_accept?
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
