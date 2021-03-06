module Admin
  class Ability
    include CanCan::Ability

    def initialize(user)
      return unless user.admin?

      can :read, Order
      can :read, Trade
      can :read, Proof
      can :update, Proof
      can :manage, Document
      can :manage, Member
      can :manage, Ticket
      can :manage, IdDocument
      can :manage, TwoFactor

      can :menu, Deposit
      can :manage, ::Deposits::Bank
      can :manage, ::Deposits::Satoshi
      can :manage, ::Deposits::Ether
      can :manage, ::Deposits::Doge
      can :manage, ::Deposits::Ltc
      can :manage, ::Deposits::Spero
      can :manage, ::Deposits::Mxt
      can :manage, ::Deposits::Rvn
      can :manage, ::Deposits::Da
      can :manage, ::Deposits::Ac
      can :manage, ::Deposits::Ep
      can :manage, ::Deposits::Ad
      can :manage, ::Deposits::Bd
      can :manage, ::Deposits::Hb
      can :manage, ::Deposits::Am
      can :manage, ::Deposits::At
      can :manage, ::Deposits::Fz
      can :manage, ::Deposits::Ew
      can :manage, ::Deposits::An
      can :manage, ::Deposits::Fj
      can :manage, ::Deposits::Ba
      can :manage, ::Deposits::Et
      can :manage, ::Deposits::Hv
      can :manage, ::Deposits::Gp

      can :menu, Withdraw
      can :manage, ::Withdraws::Bank
      can :manage, ::Withdraws::Satoshi
      can :manage, ::Withdraws::Ether
      can :manage, ::Withdraws::Doge
      can :manage, ::Withdraws::Ltc
      can :manage, ::Withdraws::Spero
      can :manage, ::Withdraws::Mxt
      can :manage, ::Withdraws::Rvn
      can :manage, ::Withdraws::Da
      can :manage, ::Withdraws::Ac
      can :manage, ::Withdraws::Ep
      can :manage, ::Withdraws::Ad
      can :manage, ::Withdraws::Bd
      can :manage, ::Withdraws::Hb
      can :manage, ::Withdraws::Am
      can :manage, ::Withdraws::At
      can :manage, ::Withdraws::Fz
      can :manage, ::Withdraws::Ew
      can :manage, ::Withdraws::An
      can :manage, ::Withdraws::Fj
      can :manage, ::Withdraws::Ba
      can :manage, ::Withdraws::Et
      can :manage, ::Withdraws::Hv
      can :manage, ::Withdraws::Gp

    end
  end
end
