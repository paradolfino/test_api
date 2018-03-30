class DeclarationsController < ApplicationController
  before_action :set_declaration, only: [:show, :update, :destroy]
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

    def params_dec
      params.permit(:content)
    end

    def set_declaration
      @declaration = Declaration.find(params[:id])
    end
end
