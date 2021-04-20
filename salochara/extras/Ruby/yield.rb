def timer_for
  puts "Hello. I'm in the function"
  start_time = Time.now
  yield
  end_time = Time.now
  diff = end_time - start_time
  puts diff

end

timer_for do
  puts "Hello. I'm yield"
  sleep(2)
end
