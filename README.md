# SimpleToken
SimpleToken generates random, non-cryptographic alphanumeric string tokens.

## Installation
1. Add `simple_token` to your list of dependencies in `mix.exs`:

  ```elixir
  def deps do
    [{:simple_token, "~> 0.1.0"}]
  end
  ```

2. Fetch dependencies

  ```bash
  mix deps.get
  ```

## Usage
SimpleToken is really simple to use:

#### 1. Generate a token with the default length of 16 characters

```elixir
token = SimpleToken.generate # => token: "BKjW17nVOuwekNgP"
```

#### 2. Generate a token with a custom length

```elixir
token = SimpleToken.generate(24) # => token: "fCleyrpZAO9LXKtsR1xUMFPj"
```

## License
See [LICENSE](https://github.com/railsmechanic/simple_token/blob/master/LICENSE).
