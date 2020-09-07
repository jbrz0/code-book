/*

Install:
npm i --save axios

Github:
https://github.com/axios/axios

NPM:
https://www.npmjs.com/package/axios

*/

import axios from 'axios'

//* GET Request
axios.get('/user?ID=12345')
  .then(function (response) {
    // handle success
    console.log(response)
  })
  .catch(function (error) {
    // handle error
    console.log(error)
  })
  .finally(function () {
    // always executed
  })

//* Optional params (instead as obj)
axios.get('/user', {
    params: {
      ID: 12345
    }
  }) // ...etc

//* Async GET Request
async function getUser() {
  try {
    const response = await axios.get('/user?ID=12345')
    console.log(response)
  } catch (error) {
    console.error(error)
  }
}
getUser()

//* POST Request
axios.post('/user', {
    firstName: 'Fred',
    lastName: 'Flintstone'
  })
  .then(function (response) {
    console.log(response)
  })
  .catch(function (error) {
    console.log(error)
  })

//* POST Form Data
async function postForm() {

  // Append form data to post
  let formdata = new FormData()
  formdata.append("FirstName", "Justin")

  await axios.post(`www.website.com/api/product/edit`, formdata,  { 
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' }
  }).then(() => {
    // do something after etc.
  })
}
postForm()
