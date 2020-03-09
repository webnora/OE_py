while read p; do
  # echo "$p"
  wget https://raw.githubusercontent.com/iswoc/iswoc-treebank/master/$p.{conll,xml} -P out
done < out/iswoc-treebank.txt
