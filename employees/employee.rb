class Employee
  attr_accessor :name, :birthdate, :email, :discount

  def initialize(overrides = {})
    @name = overrides.fetch(:name)
    @birthdate = overrides.fetch(:birthdate)
    @email = overrides.fetch(:email)
  end
end
