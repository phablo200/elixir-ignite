# running test:
mix test

# compiling the project:
mix compile

# to format the code
mix format

# to loading the code in the iex
iex -S mix

# to download libs
mix deps.get

*** REPORTS GENERATOR ***

# Installing credo
- inside the mix.exs file
- {:credo, "~> 1.5", only: [:dev, :test], runtime: false}

# Generatint file config credo lib
mix credo gen.config

# Executing credo
mix credo

# Executing in several mode
mix credo --strict