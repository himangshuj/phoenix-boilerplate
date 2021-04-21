defmodule PhoenixBoilerplate.BoilerplateDataManagement do
  @moduledoc """
  The BoilerplateDataManagement context.
  """

  import Ecto.Query, warn: false
  alias PhoenixBoilerplate.Repo

  alias PhoenixBoilerplate.BoilerplateDataManagement.BoilerplateData

  @doc """
  Returns the list of boiler_plate_datas.

  ## Examples

      iex> list_boiler_plate_datas()
      [%BoilerplateData{}, ...]

  """
  def list_boiler_plate_datas do
    Repo.all(BoilerplateData)
  end

  @doc """
  Gets a single boilerplate_data.

  Raises `Ecto.NoResultsError` if the Boilerplate data does not exist.

  ## Examples

      iex> get_boilerplate_data!(123)
      %BoilerplateData{}

      iex> get_boilerplate_data!(456)
      ** (Ecto.NoResultsError)

  """
  def get_boilerplate_data!(id), do: Repo.get!(BoilerplateData, id)

  @doc """
  Creates a boilerplate_data.

  ## Examples

      iex> create_boilerplate_data(%{field: value})
      {:ok, %BoilerplateData{}}

      iex> create_boilerplate_data(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_boilerplate_data(attrs \\ %{}) do
    %BoilerplateData{}
    |> BoilerplateData.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a boilerplate_data.

  ## Examples

      iex> update_boilerplate_data(boilerplate_data, %{field: new_value})
      {:ok, %BoilerplateData{}}

      iex> update_boilerplate_data(boilerplate_data, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_boilerplate_data(%BoilerplateData{} = boilerplate_data, attrs) do
    boilerplate_data
    |> BoilerplateData.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a boilerplate_data.

  ## Examples

      iex> delete_boilerplate_data(boilerplate_data)
      {:ok, %BoilerplateData{}}

      iex> delete_boilerplate_data(boilerplate_data)
      {:error, %Ecto.Changeset{}}

  """
  def delete_boilerplate_data(%BoilerplateData{} = boilerplate_data) do
    Repo.delete(boilerplate_data)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking boilerplate_data changes.

  ## Examples

      iex> change_boilerplate_data(boilerplate_data)
      %Ecto.Changeset{data: %BoilerplateData{}}

  """
  def change_boilerplate_data(%BoilerplateData{} = boilerplate_data, attrs \\ %{}) do
    BoilerplateData.changeset(boilerplate_data, attrs)
  end
end
