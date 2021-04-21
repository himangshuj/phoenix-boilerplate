defmodule PhoenixBoilerplateWeb.Api.BoilerplateDataView do
  use PhoenixBoilerplateWeb, :view
  alias PhoenixBoilerplateWeb.Api.BoilerplateDataView

  def render("index.json", %{boiler_plate_datas: boiler_plate_datas}) do
    %{data: render_many(boiler_plate_datas, BoilerplateDataView, "boilerplate_data.json")}
  end

  def render("show.json", %{boilerplate_data: boilerplate_data}) do
    %{data: render_one(boilerplate_data, BoilerplateDataView, "boilerplate_data.json")}
  end

  def render("boilerplate_data.json", %{boilerplate_data: boilerplate_data}) do
    %{id: boilerplate_data.id,
      name: boilerplate_data.name,
      description: boilerplate_data.description}
  end
end
