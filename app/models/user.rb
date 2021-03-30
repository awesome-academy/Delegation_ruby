class User < ApplicationRecord
  has_many :posts

  def say_hello
    "hello"
  end

  def say_hi
    "Hi"
  end
end
