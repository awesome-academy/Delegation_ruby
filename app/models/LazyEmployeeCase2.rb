class LazyEmployeeCase2
  def initialize(sandwich_maker)
    @sandwich_maker = sandwich_maker
  end

  def method_missing(method, *args)
    if sandwich_maker.respond_to?(method)
      sandwich_maker.send(method, *args)
    else
      super
    end
  end

  private

  attr_reader :sandwich_maker
end
