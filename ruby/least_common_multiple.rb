def lcm(*args)
  return args.first if args.length == 1
  return 0 if args.any? { |a| a == 0 }

  multiple = 1

  while true
    all_multiples = array_of_dividees(args, multiple)
    return multiple if all_multiples.length == 1 && all_multiples.first == true
    multiple += 1
  end
end


def array_of_dividees(args, multiple)
  args.map do |a|
    return [] if a == 0 || multiple / a != multiple.to_f / a
    true
  end.uniq
end
