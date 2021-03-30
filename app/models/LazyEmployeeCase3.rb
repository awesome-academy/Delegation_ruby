require 'forwardable'

class LazyEmployeeCase3
  extend Forwardable

  def initialize(sandwich_maker)
    @sandwich_maker = sandwich_maker
  end

  def_delegators :@sandwich_maker, :make_me_a_sandwich
end
