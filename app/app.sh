# app.sh

echo "[ basename $0 ] : Executing $0 $1"

QUESTION=$1

curl https://api.openai.com/v1/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -d '{
  "model": "text-davinci-002",
  "prompt": "'"$QUESTION"'",
  "temperature": 1,
  "max_tokens": 4000,
  "top_p": 1,
  "frequency_penalty": 0,
  "presence_penalty": 0
}' --silent > output.json
