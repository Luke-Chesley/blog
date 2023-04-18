class GameResultsController < ApplicationController
  def index
        # Enqueue the background job to run
        UpdateGameResultsJob.schedule

        # Load the articles to display
        @articles = Article.all
  end
end
