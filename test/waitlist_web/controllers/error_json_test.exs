defmodule WaitlistWeb.ErrorJSONTest do
  use WaitlistWeb.ConnCase, async: true

  test "renders 404" do
    assert WaitlistWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert WaitlistWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
