class LazyEmployee
  def initialize(sandwich_maker)
    @sandwich_maker = sandwich_maker
  end

  def make_me_a_sandwich
    sandwich_maker.make_me_a_sandwich
  end

  private

  attr_reader :sandwich_maker
end
