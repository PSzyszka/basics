require 'rails_helper'

RSpec.describe ArticlesFileSystem do
  describe '#save' do
    it 'saves array of articles' do
      array1 = [Article.new('naked heat', 'castle')]
      article_file_system = ArticlesFileSystem.new("#{Dir.pwd}/spec/models").save(array1)

      expect(File.exist?("#{Dir.pwd}/spec/models/naked_heat.article")).to eq(true)
      expect(File.exist?("#{Dir.pwd}/spec/models/castle.article")).to eq(false)
      # expect(File.read('naked_heat.article')).to eq('|| 0 || 0 || castle')
      # expect(Dir.glob('naked_heat.article')).to eq(nil)
    end
  end

  # describe '#load' do
  #   it 'load array of articles from the selected path(if were previously saved)' do
  #     article = ArticlesFileSystem.new('/')
  #     expect(article.load()).to eq()
  #   end
  # end
end
