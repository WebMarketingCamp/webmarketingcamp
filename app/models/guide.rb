class Guide < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'

  has_many :guide_units
  has_many :units, through: :guide_units

end
