class ProductsController < ApplicationController
  before_action :redirect_unless_signed_in, only: [:create, :destroy]
  
  def index
    @products = Product.all
  end

  def show

  end

  def new
    @product = Product.new
  end

  def create
   @product = current_user.products.build(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to root_url, notice: 'Product was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def upvote
    @productid = params[:id]
    service = UpvoteService.new(current_user.id, @productid).call
    @vote_number = service
    # VoteQuery.new(product_id: @productid).total_count
    respond_to do |format|
      format.js
    end
  end

  def comment
    @product_id = params[:id]
    @comments = Comment.where(product_id: @product_id)
    respond_to do |format|
      format.js
    end
  end

  def commentcreate
    @comment = Comment.new(title: params['title'], product_id: params['product_id'], user_id: current_user.id )
    @product_id = params[:id]
    @comments = Comment.where(product_id: @product_id)
    respond_to do |format|
      if @comment.save
        format.js
      else
        redirect_to 'root_url'
      end
    end
  end

  def product_params
    params.require(:product).permit(:productname, :url, :description, :date => Date.new)
  end
end