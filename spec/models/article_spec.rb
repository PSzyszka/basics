require 'rails_helper'

RSpec.describe Article do
  describe 'initialization' do
    it '' do
      Timecop.freeze(Time.now + 5.seconds) do
        article = Article.new('naked heat', 'castle')

        aggregate_failures 'article attributes' do
          expect(article.title).to eq('naked heat')
          expect(article.body).to eq('castle')
          expect(article.author).to be_nil
          expect(article.likes).to eq(0)
          expect(article.created_at).to eq(Time.now)
          expect(article.dislikes).to eq(0)
        end
      end
    end
  end

  describe '#like!' do
    it 'increases number of likes by 1' do
      article = Article.new('naked heat', 'castle')
      expect(article.likes).to eq(0)
      article.like!
      expect(article.likes).to eq(1)
    end
  end

  describe '#dislike!' do
    it 'increases number of dislike by 1' do
      article = Article.new('naked heat', 'castle')
      expect(article.dislikes).to eq(0)
      article.dislike!
      expect(article.dislikes).to eq(1)
    end
  end

  describe '#points' do
    it 'calculates the subtraction between likes and dislikes' do
      article = Article.new('naked heat', 'castle')
      expect(article.points).to eq(0)
    end
  end

  describe '#votes' do
    it 'calculates the sum of likes and dislikes' do
      article = Article.new('naked heat', 'castle')
      expect(article.votes).to eq(0)
    end
  end

  describe '#long_lines' do
    it 'returns an empty array if the body is shorter then 80 characters' do
      article = Article.new('naked heat', 'castle')
      expect(article.long_lines).to eq([])
    end

    it 'returns empty array if the body is equal to 80 characters' do
      article = Article.new('naked heat', "a" * 80)
      expect(article.long_lines).to eq([])
    end

    it 'returns array of body sting (lines) if the body is longer then 80 characters' do
      article = Article.new('naked heat', 'a' * 85)
      expect(article.long_lines).to eq(["a" * 85])
    end
  end

  describe '#length' do
    it 'returns the length of body' do
      article = Article.new('naked heat', 'castle')
      expect(article.length).to eq(6)
    end
  end

  describe '#truncate' do
    it 'returns nil when body length is shorter than limit parameter' do
      article = Article.new('naked heat', 'castle')
      expect(article.truncate(10)).to eq(nil)
    end

    it 'returns an array of string when body length is length longer than limit parameter' do
      article_second = Article.new('naked heat', 'castle is the best')
      expect(article_second.truncate(13)).to eq('castle is the ...')
    end
  end

  describe '#contain?' do
    it 'returns true when the body of article includes the defined string_or_regexp' do
      article = Article.new('naked heat', 'castle')
      expect(article.contain?('ca')).to eq(true)

    end

    it "returns false when the body of article don't includes the defined string_or_regexp" do
      article = Article.new('naked heat', 'castle')
      expect(article.contain?('na')).to eq(false)
    end
  end
end
