defmodule MangaStorn.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      MangaStorn.Repo,
      # Start the Telemetry supervisor
      MangaStornWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: MangaStorn.PubSub},
      # Start the Endpoint (http/https)
      MangaStornWeb.Endpoint
      # Start a worker by calling: MangaStorn.Worker.start_link(arg)
      # {MangaStorn.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MangaStorn.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    MangaStornWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
