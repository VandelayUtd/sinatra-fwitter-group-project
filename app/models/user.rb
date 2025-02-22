class User < ActiveRecord::Base
  has_secure_password
  has_many :tweets

  def slug 
    self.username.downcase.gsub(" ", "-")
  end

  def self.find_by_slug(slug) 
    name = slug.gsub("-", " ")
    User.all.find{|user| user.slug == slug}
  end

end
