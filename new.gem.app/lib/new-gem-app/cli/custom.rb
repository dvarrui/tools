
require_relative "../../#{Version::GEM}"

class CLI

  map ['-i', '--interactive'] => 'interactive'
  desc 'interactive [FOLDER]', 'Interactively create new gem application'
  long_desc <<-LONGDESC
    Interactively create new gem application
  LONGDESC
  def interactive(folder)
    NewGemApp.interactive(folder)
  end

end
