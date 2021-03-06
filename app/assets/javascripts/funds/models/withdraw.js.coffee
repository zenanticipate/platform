class Withdraw extends PeatioModel.Model
  @configure 'Withdraw', 'sn', 'account_id', 'member_id', 'currency', 'amount', 'fee', 'fund_uid', 'fund_extra',
    'created_at', 'updated_at', 'done_at', 'txid', 'blockchain_url', 'aasm_state', 'sum', 'type', 'is_submitting'

  constructor: ->
    super
    @is_submitting = @aasm_state == "submitting"

  @initData: (records) ->
    PeatioModel.Ajax.disable ->
      $.each records, (idx, record) ->
        Withdraw.create(record)

  afterScope: ->
    "#{@pathName()}"

  pathName: ->
    switch @currency
      when 'brl' then 'banks'
      when 'btc' then 'satoshis'
      when 'doge' then 'doges'
      when 'ltc' then 'ltcs'
      when 'spero' then 'speros'
      when 'mxt' then 'mxts'
      when 'rvn' then 'rvns'
      when 'da' then 'das'
      when 'ac' then 'acs'
      when 'ep' then 'eps'
      when 'ad' then 'ads'
      when 'bd' then 'bds'
      when 'hb' then 'hbs'
      when 'am' then 'ams'
      when 'at' then 'ats'
      when 'fz' then 'fzs'
      when 'ew' then 'ews'
      when 'an' then 'ans'
      when 'fj' then 'fjs'
      when 'ba' then 'bas'
      when 'et' then 'ets'
      when 'hv' then 'hvs'
      when 'gp' then 'gps'

window.Withdraw = Withdraw
