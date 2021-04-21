defmodule PhoenixBoilerplate.Release do
  require Logger
  @app :phoenix_boilerplate
  
  @moduledoc false
  def migrate do
    load_app()
    Logger.info("Start Migrating Data")

    for repo <- repos() do
      {:ok, _, _} = Ecto.Migrator.with_repo(repo, &Ecto.Migrator.run(&1, :up, all: true))
    end

    seed_data()
  end

  def rollback(repo, version) do
    load_app()
    {:ok, _, _} = Ecto.Migrator.with_repo(repo, &Ecto.Migrator.run(&1, :down, to: version))
  end

  defp repos do
    Application.fetch_env!(@app, :ecto_repos)
  end

  defp load_app do
    Application.ensure_all_started(@app)
    Application.load(@app)
  end

  @doc """
  Populates seed data. This will run every time we start the app and needs to be idempotent
  """
  alias PhoenixBoilerplate.BoilerplateDataManagement
  def seed_data() do
    case BoilerplateDataManagement.list_boiler_plate_datas() do
      [] -> BoilerplateDataManagement.create_boilerplate_data(%{name: "Seed Data", description: "Seed Data successful"})
      [_hd|_] -> _hd
    end
  end
end
