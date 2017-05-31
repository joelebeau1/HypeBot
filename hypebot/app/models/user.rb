class User < ActiveRecord::Base
  include HypeBot
  has_many :hypes

  validates_presence_of :username
  validates :username, uniqueness: true
  validate :validate_reddit_user

  def validate_reddit_user
    @user = HypeBot.session.user(self.username)
    if @user == nil
      @user.errors.add(username: 'Invalid reddit username, please try again')
    end
  end

  def reddit_user
    @user ||= HypeBot.session.user(self.username)
  end

end
