defmodule PhoenixBoilerplate.BoilerplateDataManagement.BoilerplateData do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "boiler_plate_datas" do
    field :description, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(boilerplate_data, attrs) do
    boilerplate_data
    |> cast(attrs, [:name, :description])
    |> validate_required([:name, :description])
  end
end
