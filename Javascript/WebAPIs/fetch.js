// Basic data fetch in the browser
/*
https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API
*/

// Get data, return as JSON
fetch('http://localhost:3001/')
  .then((res) => { return res.json(); })
  .then((data) => { console.log(data); })
