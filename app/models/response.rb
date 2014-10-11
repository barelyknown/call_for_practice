class Response < ActiveRecord::Base

  belongs_to :prompt
  belongs_to :incoming_call

  validates :prompt, presence: true
  validates :incoming_call, presence: true

end