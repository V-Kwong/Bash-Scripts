#content=$(curl -v https://query.yahooapis.com/v1/public/yql    -d q="select item from weather.forecast where u='c' AND woeid=55998882"    -d format=json)

content=$(curl 'https://query.yahooapis.com/v1/public/yql?q=select+item.condition+from+weather.forecast+where+u=%27c%27+AND+woeid%3D55998882&format=json')

echo $content | jq -r '.query.results.channel.item'
