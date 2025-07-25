defmodule NorthwindElixirTraders.Category do
  use Ecto.Schema
  import(Ecto.Changeset)
  alias NorthwindElixirTraders.Product

  @name_mxlen 50
  @desc_mxlen 100

  schema "categories" do
    field(:name, :string)
    field(:description, :string)
    has_many(:products, Product)
    timestamps(type: :utc_datetime)
  end

  def changeset(category, params \\ %{}) do
    permitted = [:id, :name, :description]
    required = [:name]

    category
    |> cast(params, permitted)
    |> validate_required(required)
    |> validate_length(:name, max: @name_mxlen)
    |> validate_length(:description, max: @desc_mxlen)
    |> unique_constraint(:name)
    |> unique_constraint([:id])
  end
end
