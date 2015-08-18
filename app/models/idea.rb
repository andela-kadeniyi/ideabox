class Idea < ActiveRecord::Base
 belongs_to :channel
 has_many :remarks, dependent: :destroy
end
