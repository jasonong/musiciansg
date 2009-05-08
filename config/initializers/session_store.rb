# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_temp_session',
  :secret      => '8649452d1240f9c511e67c1dbd722e64402b975d514371e06246eeb2b2bf84e58d76c41b12a71ef4bb89e0719a95344292d609896a939c835b85c60dae8e88cf'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
