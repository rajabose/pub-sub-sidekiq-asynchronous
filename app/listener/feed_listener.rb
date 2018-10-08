# app/listener/feed_listener.rb
class FeedListener
  def self.post_create
   #ActiveRecord::Base.connection_pool.with_connection do 
   # "puts I am in the middle of the thread and thread poll is working on cpu thread ***********************************"
   #Feed.create!({:content => post.content})
   #end
   puts "working"
  end
end
