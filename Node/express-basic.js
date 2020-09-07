// ___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___ #
// ⭐️ Basic Express server with REST Calls
// ——————————————————————————————————————————————————————————————————————— #
// ℹ️ Making GET, POST, PUT, DELETE calls, and spinning a server
// ——————————————————————————————————————————————————————————————————————— #
// 📚 Docs: https://expressjs.com/en/api.html
// 🔗 App Specific Docs: https://expressjs.com/en/api.html#app
// ___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___|___ #

//* Import & load main app
const express = require('express')  // Regular
import express from 'express'       // Module
const app = express()               // Our server var

//* Make a REST Request to Endpoint
// GET
app.get('/', (req, res) => {
  return res.send('Received a GET HTTP method')
})
// POST
app.post('/', (req, res) => {
  return res.send('Received a POST HTTP method')
})
// PUT
app.put('/', (req, res) => {
  return res.send('Received a PUT HTTP method')
})
// DELETE
app.delete('/', (req, res) => {
  return res.send('Received a DELETE HTTP method')
})

//* Dynamic Endpoint Request
app.put('/users/:userId', (req, res) => {
  return res.send(`PUT on user/${req.params.userId}`)
})

//* Run Server on Port
app.listen(8080, () => console.log(`Live on port 8080!`))

//* Run Server on Port & Lan IP

// Get the OS (Operating System) built in module
var os = require('os')

// Get list of network interfaces
var networkInterfaces = os.networkInterfaces()

// Get LAN Ip Node is running on
function getLocalIp() {
  for(let addresses of Object.values(os.networkInterfaces())) {
    for(let add of addresses) {
      if(add.address.startsWith('192.168.')) {
        return add.address
      }
    }
  }
}
var lanIp = getLocalIp()

// Run on localhost port & LanIP
app.listen(8080, lanIp, () => console.log(`Live on port 8080 & ${lanIp}`))
