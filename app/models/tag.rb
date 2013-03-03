class Tag < ActiveRecord::Base

  def self.search(q)
    where("lower(name) LIKE '%#{q}%'").map{|t| t.name }
  end

end