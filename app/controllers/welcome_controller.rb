class WelcomeController < ApplicationController
  @sentences = JSON.parse(File.read("testfiles/sentences.json"))
  print @sentences[0]
  def index
  end

  def search
    @sentences = JSON.parse(File.read("testfiles/sentences.json"))
    @filtered_sentences = @sentences.collect{ |sent| sent if sent.include? params[:search_query] }.compact
  end

  def search_results
    #displays results
  end
end
