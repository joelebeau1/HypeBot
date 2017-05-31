class Hype < ActiveRecord::Base
  belongs_to :user

  after_initialize :random_compliment
  validates_presence_of :user, :compliment

 def self.recent_order
    Hype.order(created_at: :desc)
  end

  def self.recent(n)
    Hype.recent_order.limit(n)
  end


  private
  def random_compliment
    self.compliment = Hype.compliments.sample
  end

  def self.compliments
    compliments = ["Love this!", "LOL too funny!", "You're so impressive!", "You're my    new hero!", "Wow even Beyonce should be jealous of you", "BEST. POST. EVER.", "YASSSSSS!", "inpsiring!", "#blessed", "WOW. #kindness", "You go girl!", "you beautiful tropical fish you" ]
  end

end
