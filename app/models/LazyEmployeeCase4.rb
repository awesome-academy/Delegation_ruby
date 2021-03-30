require "active_support/core_ext/module/delegation"

class LazyEmployeeCase4
  def initialize(sandwich_maker)
    @sandwich_maker = sandwich_maker
  end

  delegate :make_me_a_sandwich, to: :sandwich_maker

  private

  attr_reader :sandwich_maker
end
