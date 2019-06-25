class Ability
  include CanCan::Ability

  def initialize(user)
    if user && user.admin?
      can :access, :rails_admin   # grant access to rails_admin
      can :manage, :all
    else
      can :manage, [NormalModel]           # allow superadmins to do anything
    end
  end
end
