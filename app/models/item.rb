class Item < ActiveRecord::Base
  belongs_to :list
  acts_as_taggable_on :categories
end
