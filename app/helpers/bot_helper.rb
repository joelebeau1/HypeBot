module HypeBot
 def self.session
     Redd.it(user_agent: ENV['USER_AGENT'], client_id: ENV['CLIENT_ID'], secret: ENV['SECRET'], username: ENV['REDD_USERNAME'], password: ENV['REDD_PASSWORD'])
  end

  def self.random_post(user, compliment)
    submissions = user.submitted
    index = rand(0..submissions.count)
    post = submissions[index]
    post.reply(compliment)
  end
end
