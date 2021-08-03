class User < ApplicationRecord
  after_create_commit { broadcast_append_to "users" }
  after_update_commit { broadcast_replace_to "users" }
  after_destroy_commit { broadcast_remove_to "users" }
end
