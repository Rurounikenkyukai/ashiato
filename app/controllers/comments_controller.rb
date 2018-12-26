class CommentsController < ApplicationController

  def create
    event = Event.find(params[:event_id])
    comment = current_user.comments.new(comment_params)
    comment.event_id = event.id
    if comment.save
       redirect_to event_path(event)
       flash[:success] = "コメントを投稿しました。"
     else
       redirect_to event_path(event)

       flash[:danger] = "アーティスト名とコメントの内容の記述は必須です。"
     end
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:user_id,:event_id,:comment,:favorite_artist)
  end


end
