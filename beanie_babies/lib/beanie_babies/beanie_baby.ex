defmodule BeanieBabies.Beanie_baby do
  use Ecto.Schema
  import Ecto.Changeset
  alias BeanieBabies.Beanie_baby


  schema "beanie_babies" do
    field :name, :string
    field :notes, :string
    field :picture_url, :string
    field :value, :integer
    field :year, :integer

    timestamps()
  end

  @doc false
  def changeset(%Beanie_baby{} = beanie_baby, attrs) do
    beanie_baby
    |> cast(attrs, [:name, :year, :value, :picture_url, :notes])
    |> validate_required([:name, :year, :value, :picture_url, :notes])
  end
end
