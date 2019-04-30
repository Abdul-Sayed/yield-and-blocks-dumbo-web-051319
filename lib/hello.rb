def hello_t(array)
  if (block_given?)
    i = 0 
    while i < array.length 
      yield(array[i])
      i +=1 
    end
    return array
end

# call your method here!

hello_t(["Tim", "Tom", "Jim"]  ) { |name|
  puts "Hi, #{name}" if name.start_with?("T")
}