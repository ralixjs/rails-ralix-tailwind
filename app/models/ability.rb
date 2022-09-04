class Ability
  include CanCan::Ability

  def initialize(user)
    can [:read, :create], Article
    can [:update, :destroy], Article, user: user
  end
end
