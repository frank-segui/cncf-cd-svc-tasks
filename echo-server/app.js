const express = require('express')
const app = express()
const port = process.env.PORT || 3000
let toggleCounter = 0
const secrets = [
  process.env.SVC_TASK_SECRET1,
  process.env.SVC_TASK_SECRET2,
]

app.get('/toggle', (req, res) => {
  toggleCounter++
  console.log(`Toggle counter: ${toggleCounter}`)
  res.send(`Toggle counter: ${toggleCounter}`)
});

app.get('/', (req, res) => {
  res.send(secrets[toggleCounter % secrets.length] || 'not set')
});

app.listen(port, () => {
  console.log(`Server listening at http://localhost:${port}`)
})

process.on('SIGINT', () => {
    console.log('Received SIGINT. Exiting...')
    process.exit()
  })