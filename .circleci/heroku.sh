  #!/bin/bash
  wget https://cli-assets.heroku.com/branches/stable/heroku-linux-amd64.tar.gz
  sudo mkdir -p /usr/local/lib /usr/local/bin
  sudo tar -xvzf heroku-linux-amd64.tar.gz -C /usr/local/lib
  sudo ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku

  cat > ~/.netrc	<<-EOF
  machine api.heroku.com
    login cormac.o.riordan91@gmail.com
    password a0cf929f-05ec-4ab6-9620-6ef898fdd53d
	EOF
  
  echo -e "VerifyHostKeyDNS yes" >> ~/.ssh/config
  echo -e "StrictHostKeyChecking no" >> ~/.ssh/config
  cat ~/.ssh/config
