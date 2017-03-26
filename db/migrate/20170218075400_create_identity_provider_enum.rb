class CreateIdentityProviderEnum < ActiveRecord::Migration[5.0]
  ENUM_NAME = 'oauth_provider'.freeze
  IDENTITY_PROVIDERS = %w(
    facebook
    google
    twitter
    github
    linkedin
    instagram
  ).freeze

  def up
    enum_values = IDENTITY_PROVIDERS.map { |prov| "'#{prov}'" }.join(', ')

    execute "CREATE TYPE #{ENUM_NAME} AS ENUM (#{enum_values})"
  end

  def down
    execute "DROP TYPE #{ENUM_NAME}"
  end
end
