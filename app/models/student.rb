class Student < ActiveRecord::Base
belongs_to :faculty

 has_many :scores
 has_many :courses, :through => :scores

def picture_file= (p)
    if p
      self.picture_data = p.read
      self.content_type = p.content_type
    end
  end
  
end
