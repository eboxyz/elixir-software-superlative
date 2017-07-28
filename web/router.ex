defmodule SoftwareSuperlative.Router do
  use SoftwareSuperlative.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SoftwareSuperlative do
    pipe_through :browser # Use the default browser stack

    get "/", SuperlativeController, :index
    
    get "/hello", HelloController, :index
    get "/hello/:dude", HelloController, :show

    get "/software_superlative", SuperlativeController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", SoftwareSuperlative do
  #   pipe_through :api
  # end
end
