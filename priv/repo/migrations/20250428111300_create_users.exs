defmodule TpBonnePratique.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add(:address, :string)
      add(:height, :integer)
      add(:astro_sign, :string)
      add(:hobbbies, {:array, :string})

      timestamps(type: :utc_datetime)
    end
  end
end
