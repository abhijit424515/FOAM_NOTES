# Deploy

### Heroku
- Setup
  - Install heroku
  - `heroku login`
  
- For port, use `process.env.PORT || 3000` to use on both local and heroku servers.
- Define a `Procfile` with content `web: node server.js
- `heroku create`
- Commit latest changes in git
- `git push heroku main`