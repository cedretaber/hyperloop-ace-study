require_relative "ace"

class Root
  include Hyperloop::Component::Mixin

  render DIV do
    H1 { "Editor" }
    AceEditor()
  end
end
