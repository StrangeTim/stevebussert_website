class ReferencesController < ApplicationController

  def index
    @references = Reference.all
  end

  def new
    @reference = Reference.new
  end

  def create
    @reference = Reference.new(reference_params)
    @reference.save
    respond_to do |format|
      format.html {redirect_to references_path}
      format.js
    end
  end

  def destroy
    @reference = Reference.find(params[:id])
    @reference.destroy()
    respond_to do |format|
      format.html { redirect_to references_path}
      format.js
    end
  end

  private

  def reference_params
    params.require(:reference).permit(:name, :phone)
  end
end
