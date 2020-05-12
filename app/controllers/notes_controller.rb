class NotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  # GET /notes
  # GET /notes.json
  def index
    @notes = @post.notes.where(user_id: current_user.id)
   
   if !@notes.any? { |n| n[:user_id] == current_user.id } and !@notes.empty?

        redirect_to denial_index_path
 
   end 
  end

  # GET /notes/1
  # GET /notes/1.json

  # edit show here. 

   
 
  # GET /notes/new
  def new
    @note = @post.notes.new()
  end
 
  # GET /notes/1/edit
  def edit
  end

  # POST /notes
  # POST /notes.json
  def create
    @note = @post.notes.build(note_params)
   @note.user_id = current_user.id
  
    respond_to do |format|
      if @note.save
        format.html { redirect_to new_post_note_path, notice: 'Note was successfully created.' }
        format.json { render :show, status: :created, location: @note }
      else
        format.html { render :new }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to post_notes_path, notice: 'Note was successfully updated.' }
        format.json { render :show, status: :ok, location: @note }
      else
        format.html { render :edit }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to post_notes_path, notice: 'Note was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    

    def set_post
      @post = Post.find(params[:post_id])
      
    end
    def set_note
      @note = @post.notes.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def note_params
      params.require(:note).permit(:note_location, :note_str, :posts_id, :user_id)
    end
end
