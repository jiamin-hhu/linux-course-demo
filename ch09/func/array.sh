
test_passAsWhole() {
  echo "the parameters are: $@"
  thisarray=$1
  echo "if received as whole, the received array is ${thisarray[*]}"
}

myarray=(1 2 3 4 5)
echo "the original array is: ${myarray[*]}"
test_passAsWhole $myarray

test_passAsIndividual() {
  local newarray
  newarray=($(echo "$@"))
  echo -e "\n\nif received as individual list, the received array is ${newarray[*]}"
}
test_passAsIndividual ${myarray[*]}
