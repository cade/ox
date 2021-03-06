
module Ox

  class Error < StandardError
  end # Error

  # An Exception that is raised as a result of a parse error while parsing a XML document.
  class ParseError < Error
  end # ParseError

  # An Exception that is raised as a result of an invalid argument.
  class ArgError < Error
  end # ArgError

  # An Exception raised if a path is not valid.
  class InvalidPath < Error
    def initialize(path)
      super("#{path.join('/')} is not a valid location.")
    end
  end # InvalidPath

end # Ox
