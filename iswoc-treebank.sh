while read p; do
  # wget https://raw.githubusercontent.com/iswoc/iswoc-treebank/master/$p.{conll,xml} -P $1
  wget https://raw.githubusercontent.com/iswoc/iswoc-treebank/master/$p.conll -P $1
done < $2
