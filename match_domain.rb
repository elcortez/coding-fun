  def domain_name(url)
    url.scan(/.*.com/)[0].gsub(/.com/, "").gsub(/www./, "").gsub(/http:\/\//, "").gsub(/https:\/\//, "")
  end

p domain_name('www.github.com')
p domain_name('http://zombie-bites.com')
p domain_name('https://github.com/carbonfive/raygun')
