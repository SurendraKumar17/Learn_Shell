#while loop
i=10
while [  $i -gt 0 ]; do
 echo i = $i
 i=$(($i-1))
done

#for loop
for fruit in apple banana ; do
  echo fruit name : $fruit
done