import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :zombie_bug, ZombieBugWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "TnZUrPGCPzRW8U2UxZiKU0h/1w3ZOVo8O8z/xJ6+ghNW/JIEz4/Jd6NNuuFhz19P",
  server: false

# In test we don't send emails.
config :zombie_bug, ZombieBug.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
