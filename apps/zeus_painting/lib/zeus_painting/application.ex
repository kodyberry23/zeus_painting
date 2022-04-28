defmodule ZeusPainting.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      ZeusPainting.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: ZeusPainting.PubSub}
      # Start a worker by calling: ZeusPainting.Worker.start_link(arg)
      # {ZeusPainting.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: ZeusPainting.Supervisor)
  end
end
