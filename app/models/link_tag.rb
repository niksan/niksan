class LinkTag < ActiveRecord::Base
  belongs_to :tag, :counter_cache => true, :touch => true
  belongs_to :tagged, :polymorphic => true

end
