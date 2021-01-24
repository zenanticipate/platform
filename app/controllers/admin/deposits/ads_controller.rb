module Admin
  module Deposits
    class AdsController < ::Admin::Deposits::BaseController
      load_and_authorize_resource :class => '::Deposits::Ad'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24 * 365)
        @ads = @ads.includes(:member).
          where('created_at > ?', start_at).
          order('id DESC').page(params[:page]).per(20)
      end

      def update
        @ad.accept! if @ad.may_accept?
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
