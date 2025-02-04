require "test_helper"

class FormTagTestTest < Minitest::Spec
  include Cell::Testing
  controller SongsController

  it do
    if Rails.version >= "6.0"
      _(cell("form_tag").().gsub(/\s\s/, "")).must_equal %{<form action=\"/songs\" accept-charset=\"UTF-8\" method=\"post\"><input name=\"utf8\" type=\"hidden\" value=\"&#x2713;\" autocomplete=\"off\" /> Second <input type=\"text\" name=\"id\" id=\"id\" /> <input type=\"submit\" name=\"commit\" value=\"Save\" data-disable-with=\"Save\" />\n</form>\n}
    else
      _(cell("form_tag").().gsub(/\s\s/, "")).must_equal "<form action=\"/songs\" accept-charset=\"UTF-8\" method=\"post\"><input name=\"utf8\" type=\"hidden\" value=\"&#x2713;\" /> Second <input type=\"text\" name=\"id\" id=\"id\" /> <input type=\"submit\" name=\"commit\" value=\"Save\" data-disable-with=\"Save\" />\n</form>\n"
    end
  end
end
