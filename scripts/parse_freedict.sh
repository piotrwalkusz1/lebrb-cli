xpath -q -e "/div/entry/@xml:id | /div/entry/sense/sense/sense/cit[@type='trans']//quote[@xml:lang!='en']" a.xml \
| sed ':a;N;$!ba;s/\n<quote>/<quote>/g' \
| sed 's/^ xml:id=".-//' \
| sed 's/"<quote>/;/' \
| sed 's/<\/quote>//g' \
| sed 's/<quote>/, /g' \
| sed 's/\(.*\);\(.*\)/\L\1;\E\1;\2/'
