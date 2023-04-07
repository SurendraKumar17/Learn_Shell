echo following values from script
echo "0 - $0"
echo "1 - $1"
echo "2 - $2"
echo "* - $*"
echo "@ - $@"
echo "# - $#"

example() {
  echo "following values from function"
  echo "0 - $0"
  echo "1 - $1"
  echo "2 - $2"
  echo "* - $*"
  echo "@ - $@"
  echo "# - $#"
}
example

#