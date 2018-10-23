require_relative "./connection_adapter.rb"

DBRegistry ||= OpenStruct.new(test: ConnectionAdapter.new("db/tarantino-test.db"), 
  development: ConnectionAdapter.new("db/tarantino-development.db"), 
  production: ConnectionAdapter.new("db/tarantino-production.db")
  )