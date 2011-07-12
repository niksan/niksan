class LinkTag < ActiveRecord::Base
  belongs_to :tag, :counter_cache => true
  belongs_to :tagged, :polymorphic => true
end
