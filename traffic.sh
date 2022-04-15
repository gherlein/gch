source ./github-token
curl -sS -H "Accept: application/vnd.github.v3+json" \
 -H "Authorization: Token $GITHUB_TOKEN" \
 https://api.github.com/repos/aws-samples/$1/traffic/clones | jq -c .count | tr -d '\n'
echo -n ","
curl -sS -H "Accept: application/vnd.github.v3+json" \
 -H "Authorization: Token $GITHUB_TOKEN" \
 https://api.github.com/repos/aws-samples/$1/traffic/clones | jq .uniques 

