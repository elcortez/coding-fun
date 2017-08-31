class Stuff
  attr_reader :one, :two
  def initialize(args)
    @one = args[:one] || 10
    @two = args[:two] && 20
  end
end


class StuffFetched
  attr_reader :one, :two
  def initialize(args)
    @one = args.fetch(:one, 10)
    @two = args.fetch(:two, 20)
  end
end

stuff = Stuff.new(one: false, two: false)
stufffetched = StuffFetched.new(one: false, two: true)

p stuff.one #=> 10 because the || makes the true a priority
p stuff.two #=> false because the && makes the false a priority

p stufffetched.one #=> false because the fetch only rejects the "nil"
p stufffetched.two #=> true because both boleeans are accepted by the fetch
