defmodule SoftwareSuperlative.HelloController do
    use SoftwareSuperlative.Web, :controller

    def index(conn, _params) do
        render conn, "index.html"
    end

    def show(conn, %{"dude" => dude}) do
        render conn, "show.html", dude: dude
    end
end