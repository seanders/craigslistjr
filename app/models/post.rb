class Post < ActiveRecord::Base
  belongs_to :category

  def self.generate_secret_key
    o =  [('a'..'z'),('A'..'Z')].map{|i| i.to_a}.flatten
    string  =  (0...8).map{ o[rand(o.length)] }.join
  end

end
