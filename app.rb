counter = 0

while true
  counter += 1
  sleep 1

  raise "Have you prepared yourself for your evaluation ?" if counter % 5 == 0
end