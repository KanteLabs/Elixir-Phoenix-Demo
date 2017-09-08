defmodule BeanieBabies.Repo.Migrations.CreateBeanieBabies do
  use Ecto.Migration

  def change do
    create table(:beanie_babies) do
      add :name, :string
      add :year, :integer
      add :value, :integer
      add :picture_url, :string
      add :notes, :text

      timestamps()
    end

  end
end
