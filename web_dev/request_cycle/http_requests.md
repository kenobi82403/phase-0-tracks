# What are some common HTTP status codes?
    1. 404 - the requested resource is no longer available or not found.
    2. 403 - means you do not have access to the resources. Not the same as 401(unauthorized error. 
    3. 500 - server side error codes. it is a catch all error 
    4. 503 - means the web server isn't available. (it is updating or etc.) 
    5. 504 - the web server is unreachable
    6. 200 - the request succeeded

# What is the difference between a GET request and a POST request? When might each be used?

GET - requests data from a specified resource
POST - submits data to be processed to a specified resource
HEAD - same as GET but returns only HTTP headers and no document bod 
PUT - uploads URL
DELETE - deletes the specified
OPTIONS - return the HTTP methods that the server supports 
CONNECT - converts the request to a transparent TSP/IP tuneel.

# What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests? 

    A small piece of data sent from a website and stored on the user's
    computer by the user's web browser while the user is browsing. Cookies are useful for websites to remember stateful information (items added to a shopping cart), or to record the user's browsing activity, logging in. It allows you to know if two requests came from the same browser allowing to keep a user logged-in, for example. 

    Cookies are mainly used for these three purposes:

Session management (user logins, shopping carts)
Personalization (user preferences)
Tracking (analyzing user behavior)

https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies

it remembers stateful information for the stateless http protocol. It gets sent over request from the server.