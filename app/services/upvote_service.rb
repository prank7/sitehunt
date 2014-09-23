class UpvoteService
    
  attr_accessor :user_id, :product_id

  def initialize(user_id, product_id)
    self.user_id = user_id
    self.product_id = product_id
  end

  def call
    upvote_if_not_voted(user_id, product_id)
    
    total_for_product_id(product_id)
  end

  def vote_count
    total_for_product_id(product_id)
  end

  private

  def upvote_if_not_voted(user_id, product_id)
    Vote.find_or_create_by(user_id: user_id, product_id: product_id)
  end

  def total_for_product_id(product_id)
    Vote.where(product_id: product_id).count
  end
    
    
end