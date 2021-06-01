defmodule RumblWeb.TestHelpers do

  defp default_user() do
    %{
      name: "Some User",
      username: "user#{System.unique_integer([:positive])}",
      password: "supersecret"
    }
  end

  def insert_user(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(default_user())
      |> Rumbl.Accounts.register_user

      user
  end
end

# ExUnit.start()
# Ecto.Adapters.SQL.Sandbox.mode(Rumbl.Repo, :manual)
