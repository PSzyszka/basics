class Article
	attr_reader :title, :body, :author, :created_at, :likes, :dislikes
	attr_writer :likes, :dislikes

	def initialize(title, body, author = nil)
		@title = title
		@body = body
		@author = author
		@created_at = Time.now
		@likes = 0
		@dislikes = 0
	end

	def like!
		@likes += 1
	end

	def dislike!
		@dislikes += 1
	end

	def points
		@likes - @dislikes
	end

	def votes
		@likes + @dislikes
	end

	def long_lines
		body.split("/n").select { |line| line.length > 80 }
	end

	def length
		body.length
	end

	def truncate(limit)
		if body.length > limit
			"#{body.slice(0..limit)}..."
		end
	end

	def contain?(string_or_regexp)
		body.include?(string_or_regexp)
	end
end
