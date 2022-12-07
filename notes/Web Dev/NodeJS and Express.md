# NodeJS and Express

### Node
- Newer Versions of Node Troubleshooting
  - `sudo npm install -g npm-check-updates`
  - `ncu -u`
  - `npm i`

### Express
- Use `app.use(express.static("public"))` to use static CSS files.
- Use `res.sendFile(__dirname + "/signup.html")` to serve a login page at the server URL.