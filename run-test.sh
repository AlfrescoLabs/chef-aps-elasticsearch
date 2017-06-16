echo "executing YAMLLINT"
find . \( -name "*.yaml" -o -name "*.yml" \) -not -path "./vendor/*" | xargs yamllint

echo "executing JSONLINT"
find . -name "*.json" -not -path "./vendor/*" -exec jsonlint -c -q {} \;

echo "executing FOODCRITIC"
rm -rf .bundle/
chef exec bundle install --quiet --path vendor/cache/
chef exec foodcritic -f any .

#echo "executing RUBOCOP"
#chef exec rubocop -r cookstyle -D --format html -o rubocop-results.html

file="./Berksfile.lock"
if [ -f "$file" ]; then
    echo "Berksfile.lock found....deleting"
    rm Berksfile.lock
fi

echo "executing BERKS"
berks --quiet

echo "executing RSPEC"
chef exec bundle exec rspec
if [ $? = 0 ]
then
  echo "RSPEC succeeded!"
else
  echo "RSPEC failed!"
  read -n 1 -s -p "Press any key to read unit-results.xml"
  cat unit-results.xml
fi
