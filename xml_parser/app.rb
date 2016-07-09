require 'rexml/document'
require 'rexml/streamlistener'
require_relative "tag"
require_relative "repository"
include REXML
# we will parse the XML file thanks to these tools

class Listener
  include StreamListener
  @@repo = Repository.new(Hash.new)
  # let's generate a repository to store and order our data
  def tag_start(name, attributes)
    tag = Tag.new(name, attributes)
    # here we generate a Tag object for each tag we find
    @@repo.data(tag)
    # lets now move that object into our repo
  end

  def generator
    @@repo.generator
    # we can now use our generator to get our data
  end
end

listener = Listener.new
parser = Parsers::StreamParser.new(File.new("test.xml"), listener)
parsing = parser.parse
listener.generator
