*What are some common HTTP status codes?*
- 404: Not found
- 403: Forbidden
- 500: Internal Server Error
- 503: Service Unavailable
- 504: Gateway Timeout

*What is the difference between a GET request and a POST request? When might each be used?*

In HTTP, a GET request retreives data (such as a webpage) from a remote server. On the other hand, a POST request
will submit or update information to a remote server. From what I've read, a POST request will be more secure when 
handling private data. GET requests can be used by third parties and sensitive data may be compromised. 

*Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?*

A cookie is a piece of data that a remote server will send to the web browser that will then be sent back the next time the remote
server is accessed. This allows the server to know that this was the same browser that originaly accessed the server and therefore
will allow some information to be readily available without having to go through the process of accessing it again (such as login information).