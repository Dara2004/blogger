module ArticlesHelper
  # this support  strong params
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
