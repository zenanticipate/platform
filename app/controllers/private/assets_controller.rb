module Private
  class AssetsController < BaseController
    skip_before_action :auth_member!, only: [:index]

    def index
      @brl_assets  = Currency.assets('brl')
      @btc_proof   = Proof.current :btc
      @brl_proof   = Proof.current :brl
      @doge_proof   = Proof.current :doge
      @ltc_proof   = Proof.current :ltc
      @spero_proof   = Proof.current :spero
      @mxt_proof   = Proof.current :mxt
      @eth_proof   = Proof.current :eth
      @rvn_proof   = Proof.current :rvn
      @da_proof   = Proof.current :da
      @ac_proof   = Proof.current :ac
      @ep_proof   = Proof.current :ep
      @ad_proof   = Proof.current :ad
      @bd_proof   = Proof.current :bd
      @hb_proof   = Proof.current :hb
      @am_proof   = Proof.current :am
      @at_proof   = Proof.current :at
      @fz_proof   = Proof.current :fz
      @ew_proof   = Proof.current :ew
      @an_proof   = Proof.current :an
      @fj_proof   = Proof.current :fj
      @ba_proof   = Proof.current :ba
      #proof

      if current_user
        @btc_account = current_user.accounts.with_currency(:btc).first
        @brl_account = current_user.accounts.with_currency(:brl).first
        @doge_account = current_user.accounts.with_currency(:doge).first
        @ltc_account = current_user.accounts.with_currency(:ltc).first
        @spero_account = current_user.accounts.with_currency(:spero).first
        @mxt_account = current_user.accounts.with_currency(:mxt).first
        @eth_account = current_user.accounts.with_currency(:eth).first
        @rvn_account = current_user.accounts.with_currency(:rvn).first
        @da_account = current_user.accounts.with_currency(:da).first
        @ac_account = current_user.accounts.with_currency(:ac).first
        @ep_account = current_user.accounts.with_currency(:ep).first
        @ad_account = current_user.accounts.with_currency(:ad).first
        @bd_account = current_user.accounts.with_currency(:bd).first
        @hb_account = current_user.accounts.with_currency(:hb).first
        @am_account = current_user.accounts.with_currency(:am).first
        @at_account = current_user.accounts.with_currency(:at).first
        @fz_account = current_user.accounts.with_currency(:fz).first
        @ew_account = current_user.accounts.with_currency(:ew).first
        @an_account = current_user.accounts.with_currency(:an).first
        @fj_account = current_user.accounts.with_currency(:fj).first
        @ba_account = current_user.accounts.with_currency(:ba).first
        #account
      end
    end

    def partial_tree
      account    = current_user.accounts.with_currency(params[:id]).first
      @timestamp = Proof.with_currency(params[:id]).last.timestamp
      @json      = account.partial_tree.to_json.html_safe
      respond_to do |format|
        format.js
      end
    end

  end
end
