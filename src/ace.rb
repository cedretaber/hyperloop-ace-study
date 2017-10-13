require "opal"
require "native"

class AceEditor
  include Hyperloop::Component::Mixin

  EDITOR_ID = "ace_editor"

  CONTAINER_STYLE = {
    position: "relative",
    height: "100%"
  }

  EDITOR_STYLE = {
    position: "absolute",
    top: "0",
    right: "0",
    bottom: "0",
    left: "0"
  }

  after_mount do
    editor = Native(`ace`).edit EDITOR_ID
    editor.setTheme "ace/theme/monokai"
    editor.getSession.setMode "ace/mode/ruby"
    editor.resize()
  end

  render do
    DIV(id: "editor_container", style: CONTAINER_STYLE) do
      DIV(id: EDITOR_ID, style: EDITOR_STYLE) { 'puts "Hello, world!"' }
    end
  end
end
