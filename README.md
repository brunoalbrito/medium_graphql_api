# MediumGraphqlApi

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

# Step by Step 

1. Creating a Phoenix Project

```bash
  mix phx.new medium_graphql_api  --no-html --no-esbuild --no-live --no-tailwind
```

2. Creating a new database 

```bash
  mix ecto.create
```

3. Creating a new context for Accounts

```bash
  mix phx.gen.context Accounts User users first_name last_name email password_hash role
```


## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
