class Post < ApplicationRecord
  belongs_to :user

  # delegate :name, to: :user, allow_nil: true

  # delegate :say_hello, to: :user

  delegate :name, :email, to: :user, prefix: :my
end
