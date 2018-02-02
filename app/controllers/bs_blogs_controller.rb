class BsBlogsController < ApplicationController
  before_action :set_bs_blog, only: [:show, :edit, :update, :destroy]

  # GET /bs_blogs
  # GET /bs_blogs.json
  def index
    @bs_blogs = BsBlog.all
  end

  # GET /bs_blogs/1
  # GET /bs_blogs/1.json
  def show
  end

  # GET /bs_blogs/new
  def new
    @bs_blog = BsBlog.new
  end

  # GET /bs_blogs/1/edit
  def edit
  end

  # POST /bs_blogs
  # POST /bs_blogs.json
  def create
    @bs_blog = BsBlog.new(bs_blog_params)
    respond_to do |format|
      if @bs_blog.save
        format.html { redirect_to @bs_blog, notice: 'Bs blog was successfully created.' }
        format.json { render :show, status: :created, location: @bs_blog }
      else
        format.html { render :new }
        format.json { render json: @bs_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bs_blogs/1
  # PATCH/PUT /bs_blogs/1.json
  def update
    respond_to do |format|
      if @bs_blog.update(bs_blog_params)
        format.html { redirect_to @bs_blog, notice: 'Bs blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @bs_blog }
      else
        format.html { render :edit }
        format.json { render json: @bs_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bs_blogs/1
  # DELETE /bs_blogs/1.json
  def destroy
    @bs_blog.destroy
    respond_to do |format|
      format.html { redirect_to bs_blogs_url, notice: 'Bs blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bs_blog
      @bs_blog = BsBlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bs_blog_params
      params.require(:bs_blog).permit(:title, :email, :content)
    end
end
