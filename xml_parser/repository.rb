require 'json'

class Repository
  def initialize(hash)
    @hash = hash
  end

  def data(tag)
    if @hash[tag.name]
      @hash[tag.name][:quantity] += 1
      # if we find a tag name, we add 1 to its quantity
      attributes(tag)
      # and we generate its attributes
      @hash[tag.name][:attributes].uniq! if @hash[tag.name][:attributes]
      # let's make sure we remove duplicates if any
    else
      @hash[tag.name] = {quantity: 1}
      @hash[tag.name][:attributes] = tag.attributes.keys if tag.attributes.any?
      # if we don't find tag we create them, and attributes if necessary
    end
  end

  def attributes(tag)
    if @hash[tag.name][:attributes] && tag.attributes.any?
      @hash[tag.name][:attributes] += tag.attributes.keys
      # if some attributes exists already we add the new one
    elsif tag.attributes.any?
      @hash[tag.name][:attributes] = tag.attributes.keys
      # if not we create them
    end
  end

  def generator
    hash_sorted = @hash.sort_by {|_key,value| value[:quantity]}.reverse
    # now we can sort our hash by occurences and return our tags !
    puts "most common tag is : #{hash_sorted[0][0]}"
    puts "occurences found : #{hash_sorted[0][1][:quantity]}"
    hash_sorted[0][1][:attributes].each {|att| puts "attribute : #{att}"}
    # json_maker
  end

  def json_maker
    # optionnal method : get a json with all tags, occurences and attributes
    File.open("tags_and_attributes.json","w") do |f|
      f.write(JSON.pretty_generate(@hash))
    end
  end
end


