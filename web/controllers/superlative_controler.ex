defmodule SoftwareSuperlative.SuperlativeController do
    use SoftwareSuperlative.Web, :controller

    def index(conn, _params) do
        render conn, "index.html"
    end
end