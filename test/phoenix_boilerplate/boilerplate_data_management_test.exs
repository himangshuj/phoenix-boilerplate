defmodule PhoenixBoilerplate.BoilerplateDataManagementTest do
  use PhoenixBoilerplate.DataCase

  alias PhoenixBoilerplate.BoilerplateDataManagement

  describe "boiler_plate_datas" do
    alias PhoenixBoilerplate.BoilerplateDataManagement.BoilerplateData

    @valid_attrs %{description: "some description", name: "some name"}
    @update_attrs %{description: "some updated description", name: "some updated name"}
    @invalid_attrs %{description: nil, name: nil}

    def boilerplate_data_fixture(attrs \\ %{}) do
      {:ok, boilerplate_data} =
        attrs
        |> Enum.into(@valid_attrs)
        |> BoilerplateDataManagement.create_boilerplate_data()

      boilerplate_data
    end

    test "list_boiler_plate_datas/0 returns all boiler_plate_datas" do
      boilerplate_data = boilerplate_data_fixture()
      assert BoilerplateDataManagement.list_boiler_plate_datas() == [boilerplate_data]
    end

    test "get_boilerplate_data!/1 returns the boilerplate_data with given id" do
      boilerplate_data = boilerplate_data_fixture()
      assert BoilerplateDataManagement.get_boilerplate_data!(boilerplate_data.id) == boilerplate_data
    end

    test "create_boilerplate_data/1 with valid data creates a boilerplate_data" do
      assert {:ok, %BoilerplateData{} = boilerplate_data} = BoilerplateDataManagement.create_boilerplate_data(@valid_attrs)
      assert boilerplate_data.description == "some description"
      assert boilerplate_data.name == "some name"
    end

    test "create_boilerplate_data/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = BoilerplateDataManagement.create_boilerplate_data(@invalid_attrs)
    end

    test "update_boilerplate_data/2 with valid data updates the boilerplate_data" do
      boilerplate_data = boilerplate_data_fixture()
      assert {:ok, %BoilerplateData{} = boilerplate_data} = BoilerplateDataManagement.update_boilerplate_data(boilerplate_data, @update_attrs)
      assert boilerplate_data.description == "some updated description"
      assert boilerplate_data.name == "some updated name"
    end

    test "update_boilerplate_data/2 with invalid data returns error changeset" do
      boilerplate_data = boilerplate_data_fixture()
      assert {:error, %Ecto.Changeset{}} = BoilerplateDataManagement.update_boilerplate_data(boilerplate_data, @invalid_attrs)
      assert boilerplate_data == BoilerplateDataManagement.get_boilerplate_data!(boilerplate_data.id)
    end

    test "delete_boilerplate_data/1 deletes the boilerplate_data" do
      boilerplate_data = boilerplate_data_fixture()
      assert {:ok, %BoilerplateData{}} = BoilerplateDataManagement.delete_boilerplate_data(boilerplate_data)
      assert_raise Ecto.NoResultsError, fn -> BoilerplateDataManagement.get_boilerplate_data!(boilerplate_data.id) end
    end

    test "change_boilerplate_data/1 returns a boilerplate_data changeset" do
      boilerplate_data = boilerplate_data_fixture()
      assert %Ecto.Changeset{} = BoilerplateDataManagement.change_boilerplate_data(boilerplate_data)
    end
  end
end
