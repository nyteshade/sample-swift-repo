let Express = require('express')
let app = Express()

app.get('/', (req, res, next) => {
  res.send('hello')
})

app.get('/min-specs', (req, res) => {
  res.json({
    version: [0,0,0],
    publicKey: 'yarpa'
  })
})

app.listen(3000, () => console.log('Server started'))