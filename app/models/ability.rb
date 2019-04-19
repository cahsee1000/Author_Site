# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    alias_action :create, :read, :update, to: :cru
    user ||= User.new # guest user (not logged in)
    can :cru, :all # Guest
    cannot :cru, :user

    if user.privledge == "owner"
      can :manage, :all
    end

    if user.privledge == "admin"
      can :manage, Blog
      can :manage, Event
      can :read, User
      can :read, Book
    end

    if user.privledge == "assistant"
      can :manage, Event
      can :read, Book
      can :read, Blog
    end

    # Define abilities for the passed in user here. For example:
    #
    #
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end