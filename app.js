const express = require('express')
const axios = require('axios')
const app = express()
const port = 3002

const makeRequest = async (req, res) =>{
    const response = await axios.get('http://localhost:3000/microservicetwoname?lastname=bakal');
    console.log(response.data)
}
makeRequest();
  
app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})