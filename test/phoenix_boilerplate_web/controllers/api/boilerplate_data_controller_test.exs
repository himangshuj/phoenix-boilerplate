defmodule PhoenixBoilerplateWeb.Api.BoilerplateDataControllerTest do
  use PhoenixBoilerplateWeb.ConnCase

  alias PhoenixBoilerplate.BoilerplateDataManagement
  alias PhoenixBoilerplate.BoilerplateDataManagement.BoilerplateData




  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all boiler_plate_datas", %{conn: conn} do
      conn = get(conn, Routes.api_boilerplate_data_path(conn, :index))
      assert json_response(conn, 200)["data"] == []
    end
  end

end
