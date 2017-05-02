2.  404 Not Found: the requested resource is no longer available
		403 Forbidden: access to the resource is forbidden
		500 Internal Server Error: general server-side error code
		503 Service Unavailable: the web server isn't available for an unknown reason
		504 Gateway Timeout: server did not respond within pre-determined time
		300 Multiple Choices: requested resource has multiple choices which can not be resolved into one

3.  A GET request requests data from a specified source. It can be cached, remains in browser history, can be bookmarked, and is vulnerable to hacking so no sensitive data should be handled with a GET request. A POST request submits data to be processed to a specified resource. It is never cached, does not remain in browser history, cannot be bookmarked, and has no restriction on data length or type. A GET request ought to be used to retrieve data while a POST might be used to handle the transference of a form of sensitive user data.

4.  Cookies are small pieces of data that are stored on a user's computer which is requested and passed (phrasing?) to a web server informing that web server about user specific data. That data may include browser activity, shopping cart items, logged in or out, and information entered into forms in the past.