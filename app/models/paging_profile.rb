class PagingProfile < ActiveRecord::Base
  attr_accessible :name, :off_hook_paging_interrupt, :paging_realm
end
