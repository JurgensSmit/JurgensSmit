class BlogController < ApplicationController

# Oh, no. Why are you looking at this?
  http_basic_authenticate_with :name => "JurgensSmit", :password => "Please do not fuck my shit up", :except => [:index, :show]
 
  
   # GET /
  # GET /blog.json
  def index
    @blog = Blog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blog }
    end
  end

  # GET /blog/1
  # GET /blog/1.json
  def show
    @blog = Blog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blog }
    end
  end

  # GET /blog/new
  # GET /blog/new.json
  def new
    @blog = Blog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blog }
    end
  end

  # GET /blog/1/edit
  def edit
    @blog = Blog.find(params[:id])
  end

  # POST /blog
  # POST /blog.json
  def create
    @blog = Blog.new(params[:blog])

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.json { render json: @blog, status: :created, location: @blog }
      else
        format.html { render action: "new" }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blog/1
  # PUT /blog/1.json
  def update
    @blog = Blog.find(params[:id])

    respond_to do |format|
      if @blog.update_attributes(params[:blog])
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog/1
  # DELETE /blog/1.json
  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy

    respond_to do |format|
      format.html { redirect_to blog_url }
      format.json { head :no_content }
    end
  end
end