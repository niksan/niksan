# encoding: utf-8
class SiteTechnology < ActiveRecord::Base
  belongs_to :site
  belongs_to :technology
end
