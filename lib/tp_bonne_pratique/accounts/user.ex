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
        field(:astro_sign, :string)
    field(:hobbbies, {:array, :string})

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:address, :height, :astro_sign, :hobbbies])
    |> validate_required([:address, :height, :astro_sign, :hobbbies])
  end
end
