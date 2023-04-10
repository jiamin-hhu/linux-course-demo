for i in {0..6};do
  res=`eval echo '$'"$i"`
  echo the \$$i is : $res
done

echo -e "\n\nthe \$# is $#"
echo "the \$$ is $$"
echo "the \$* is $*"
echo "the \$@ is $@"


