defmodule TpBonnePratique.Accounts.User do
  @moduledoc """
    Schéma définissant un User et les champs qui lui sont associés.
    User(:address, :height)
  """
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field(:address, :string)
    field(:height, :integer)

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:address, :height])
    |> validate_required([:address, :height])
  end
end
