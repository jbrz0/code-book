# Curl Example Snippets

[Docs](https://curl.haxx.se/docs/httpscripting.html)

### HTTP GET request (body)
`curl https://oddscenes.com`

### HTTP GET request (body + headers)
`curl -i https://oddscenes.com`

### HTTP GET request (headers)
`curl -I https://oddscenes.com`

### HTTP POST request (form-urlencoded - inferred)
`curl -d "optOne=valOne&optTwo=valTwo" -X POST https://oddscenes.com`

### HTTP Post request (json - specified in -H header)
**Multiple line requests can use `"\"` end of line**

```sh
curl -d '{"opeOne": "valOne", "optTwo": "valTwo"}'\
-H "Content-Type: application/json" -X POST https://oddscenes.com
```
