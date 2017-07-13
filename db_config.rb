require 'active_record'

options = {
	adapter: 'postgresql',
	database: 'mantor',
	username: 'mancuso'
}

ActiveRecord::Base.establish_connection( ENV['DATABASE_URL'] || options )