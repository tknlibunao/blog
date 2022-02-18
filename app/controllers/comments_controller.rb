class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_article
  before_action :set_comment, only: [:edit, :update, :destroy]

  def index
    redirect_to articles_path(@article)
  end

  def create
    @comment = @article.comments.build(comment_params)
    
    if @comment.save
      redirect_to article_path(@article)
    else
      @comments = @article.comments
      render 'articles/show'
    end
  end

  def edit
    #@comment = @article.comments.find(params[:id])
  end

  def update
    #@comment = @article.comments.find(params[:id])
    if @comment.update(comment_params)
      redirect_to article_path(@article), notice: "Comment updated"
    else
      flash[:error] = "There were some errors encountered"
      render :edit
    end
  end

  def destroy
    #@comment = @article.comments.find(params[:id])
    @comment.destroy

    redirect_to article_path(@article)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_comment
    @comment = @article.comments.find(params[:id])
  end

  def set_article
    @article = Article.find(params[:article_id])
  end
end
