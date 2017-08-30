defmodule FrzrApiWeb.Router do
  use FrzrApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", FrzrApiWeb do
    pipe_through :api
  end
end
