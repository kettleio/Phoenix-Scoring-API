defmodule KettlePhoenix.Router do  
  use KettlePhoenix.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", KettlePhoenix do
    pipe_through :api

    resources "/scores", ScoreController, except: [:new, :edit]
  end 

end 