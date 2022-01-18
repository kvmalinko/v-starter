Scenario: Create a board with API
Given request body: {}
When I issue a HTTP POST request for a resource with the URL 'https://trello.com/1/boards?key=e6b6b5a0c1bbb927e06fdadeb89d3eb8&token=9a42665a7b87e5dca84955db66106eb6d45d5cc7ba3f9d4d80443abbca8b19d3&name=<boardName>'
Then the response code is equal to '200'
Then the response body contains '<boardName>'
Examples:
|boardName             |
|New Board from Vividus|
