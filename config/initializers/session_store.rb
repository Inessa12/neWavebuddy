# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_neWavebuddy_session',
  :secret      => 'b35a9bc968e418c8a5b0acc5264dba7fd1deeb0342684d50fcc2e40f6bfef586f33f6cd666a5d2475f323171d1c15cea132e216c8de34b774d1ee9ee3a054e20'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
