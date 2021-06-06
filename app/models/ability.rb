# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user == nil
      can :create, :all
    else
      if !user.admin?
        cannot [:destoy, :index, :update, :edit], user
      else 
        can :manage, :all
      end
    end
  end
end
