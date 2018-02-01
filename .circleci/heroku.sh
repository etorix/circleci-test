  #!/bin/bash
  wget https://cli-assets.heroku.com/branches/stable/heroku-linux-amd64.tar.gz
  sudo mkdir -p /usr/local/lib /usr/local/bin
  sudo tar -xvzf heroku-linux-amd64.tar.gz -C /usr/local/lib
  sudo ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku

  cat "StrictHostKeyChecking no" >> ~/.ssh/config
  cat ~/.ssh/config
  cat > ~/.netrc << EOF
  machine api.heroku.com
    login $HEROKU_LOGIN
    password $HEROKU_API_KEY
  EOF
  
  echo "VerifyHostKeyDNS yes" >> ~/.ssh/config
  echo "StrictHostKeyChecking no" >> ~/.ssh/config
