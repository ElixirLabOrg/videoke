defmodule Videoke.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Videoke.Repo,
      # Start the Telemetry supervisor
      VideokeWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Videoke.PubSub},
      # Start the Endpoint (http/https)
      VideokeWeb.Endpoint
      # Start a worker by calling: Videoke.Worker.start_link(arg)
      # {Videoke.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Videoke.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    VideokeWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
