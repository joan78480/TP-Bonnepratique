defmodule TpBonnePratique.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `TpBonnePratique.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        address: "some address",
        height: 42,
        astro_sign: "some astro_sign",
        hobbbies: ["option1", "option2"]
      })
      |> TpBonnePratique.Accounts.create_user()

    user
  end
end
