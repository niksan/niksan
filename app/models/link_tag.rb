class LinkTag < ActiveRecord::Base
  belongs_to :tag
  belongs_to :tagged, :polymorphic => true
end
