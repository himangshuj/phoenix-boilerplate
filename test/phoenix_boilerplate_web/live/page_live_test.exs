defmodule PhoenixBoilerplateWeb.PageLiveTest do
  use PhoenixBoilerplateWeb.ConnCase

  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, page_live, disconnected_html} = live(conn, "/")
    assert disconnected_html =~ "Phx BP"
    assert render(page_live) =~ "Show me the code"
  end
end
