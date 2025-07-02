defmodule NorthwindElixirTraders.Shipper do
  use Ecto.Schema
  import Ecto.Changeset

  @name_mxlen 50
  @phone_mxlen 15

  schema "categories" do
    field(:name, :string)
    field(:phone, :string)
    timestamps(type: :utc_datetime)
  end

  def changeset(category, params \\ %{}) do
    permitted = [:id, :name, :phone]
    required = permitted |> List.delete(:id)

    category
    |> cast(params, permitted)
    |> validate_required(required)
    |> validate_length(:name, max: @name_mxlen)
    |> validate_length(:phone, max: @phone_mxlen)
    |> unique_constraint(:name)
    |> unique_constraint([:id])
  end
end
