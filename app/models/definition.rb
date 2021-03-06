class Definition < ActiveRecord::Base
  validates_presence_of :keyword, :description
  validates_uniqueness_of :keyword

  scope :last_updated, -> { order('updated_at DESC') }
  scope :by_keyword, -> { order('keyword') }

end
