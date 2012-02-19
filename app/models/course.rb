class Course < ActiveRecord::Base
has_many :scores
has_many :students, :through => :scores
end
