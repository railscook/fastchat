# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fastchat_session',
  :secret      => '6bd0354b0ac92f5f1846ac5611d4a2732cc11c13b97ed2c3b3393a9bdfd061948e10a18ddfc936a5ac2f8bfa20d81af48608216247edb7be682fdea26c40ec00'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
