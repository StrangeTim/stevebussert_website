class RepositoriesController < ApplicationController

  def new
    @category = Category.find(params[:category_id])
    @repository = @category.repositories.new
  end

  def create
    @category = Category.find(params[:category_id])
    @repository = @category.repositories.new(repository_params)
    if @repository.save
      redirect_to category_path(@repository.category)
    else
      render :new
    end
  end

  def show
    @category = Category.find(params[:category_id])
    @repository = Repository.find(params[:id])
  end

  def edit
    @category = Category.find(params[:category_id])
    @repository = Repository.find(params[:id])
  end

  def update
    @repository = Repository.find(params[:id])
    @category = Category.find(params[:category_id])
    if @repository.update(repository_params)
      redirect_to category_repository_path(@category, @repository)
    else
      render :edit
    end
  end

  private
  def repository_params
    params.require(:repository).permit(:repo_name, :repo_url, :description)
  end

end
