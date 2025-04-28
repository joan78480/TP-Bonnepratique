defmodule TpBonnePratique.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :address, :string
      add :height, :integer

      timestamps(type: :utc_datetime)
    end
  end
end
