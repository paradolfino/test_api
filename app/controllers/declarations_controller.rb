class DeclarationsController < ApplicationController
  before_action :set_declaration, only: [:show, :update, :destroy]
  def index
    @declarations = Declaration.all
    json_response(@declarations)
  end

  def show
    json_response(@declaration.to_json(:include => :entries))
  end

  def new
    @declaration = Declaration.new
  end

  def create
    @declaration = Phrase.new(params_dec)

    if @declaration.save
      json_response(@declaration)
    else
      json_response(@declaration.errors, :unprocessable_entity)
    end
  end

  def update
    if @declaration.update(params_dec)
      json_response(@declaration)
    else
      json_response(@declaration.errors, :unprocessable_entity)
    end
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
