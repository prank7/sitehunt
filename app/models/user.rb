class User < ActiveRecord::Base
  has_many :products

  def to_param
    username
  end
  
  def self.find_with_omniauth(auth)
    find_by(provider: auth['provider'], uid: auth['uid'])
  end

  def self.create_with_omniauth(auth)
    create!(uid: auth['uid'], provider: auth['provider'], username: auth.info['nickname'], image: auth.info['image'], name: auth.info['name'], description: auth.info['description'])
  end
end
