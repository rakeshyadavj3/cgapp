curl -s http://35.74.253.177:8081/service/rest/v1/repositories | jq '.[] | select ( .format == "docker" ) | .name ' | sed 's/\"//g'
