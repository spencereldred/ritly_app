class Url < ActiveRecord::Base
  validates :link, presence: true, length: {minimum: 3, maximum: 50}
end
