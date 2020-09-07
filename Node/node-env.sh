# Setting node environment in package json
"scripts": {
  "dev": "NODE_ENV=dev node index.js",
  "start": "NODE_ENV=production node index.js"
},

# Then in file:
import dotenv from 'dotenv'
dotenv.config()
const env = process.env.NODE_ENV  # Access whatever we set
