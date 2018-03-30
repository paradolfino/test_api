class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :update, :destroy]
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

    def params_entry
      params.permit(:content)
    end
end
