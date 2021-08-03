class User < ApplicationRecord
  validates_presence_of :name

  after_create_commit { broadcast_prepend_to "users" }
  after_update_commit { broadcast_replace_to "users" }
  after_destroy_commit { broadcast_remove_to "users" }
end
