defmodule PhoenixBoilerplateWeb.Api.BoilerplateDataController do
  use PhoenixBoilerplateWeb, :controller

  alias PhoenixBoilerplate.BoilerplateDataManagement
  alias PhoenixBoilerplate.BoilerplateDataManagement.BoilerplateData

  action_fallback PhoenixBoilerplateWeb.FallbackController

  def index(conn, _params) do
    boiler_plate_datas = BoilerplateDataManagement.list_boiler_plate_datas()
    render(conn, "index.json", boiler_plate_datas: boiler_plate_datas)
  end
end
