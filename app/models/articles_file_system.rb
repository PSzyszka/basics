# require './article'

class ArticlesFileSystem
  def initialize(directory_name)
    @directory_name = directory_name
  end

  def save(array_of_articles)
    array_of_articles.each do |article|
      File.open("#{@directory_name}/#{article.title.gsub(' ', '_')}.article", 'w+') do |file|
        file.write("#{article.author} || #{article.likes} || #{article.dislikes} || #{article.body}")
      end
    end
  end

  def load
    Dir.glob("#{@directory_name}*.article").map do |filename|
      article_data = File.read(filename).split('||')
      title = filename.split('/').last.gsub('_', ' ').gsub('', 'article')
      Article.new(title, article_data[3].strip, article_data[0].strip)
    end
  end
end
