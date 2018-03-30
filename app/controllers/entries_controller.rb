class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :update, :destroy]
  def index
    @entries = Declaration.all
    json_response(@entries)
  end

  def show
    json_response(@entry.to_json(:include => :entries))
  end

  def new
    @entry = Declaration.new
  end

  def create
    @entry = Phrase.new(params_dec)

    if @entry.save
      json_response(@entry)
    else
      json_response(@entry.errors, :unprocessable_entity)
    end
  end

  def update
    if @entry.update(params_entry)
      json_response(@entry)
    else
      json_response(@entry.errors, :unprocessable_entity)
    end
  end

  def edit
  end

  def destroy
  end

  private

    def params_entry
      params.permit(:content, :declaration_id)
    end

    def set_entry
      @entry = Entry.find(params[:id])
    end
end
