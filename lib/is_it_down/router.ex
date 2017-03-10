defmodule IsItDown.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    conn
    |> send_resp(200, "Success!")
  end

  def start_link do
    Plug.Adapters.Cowboy.http(IsItDown.Router, [])
  end
end