#!/bin/bash
# 如果method是app-store,则修改environment为production
if [ "$1" == 'app-store' ]; then
  echo "environment=production" >> $GITHUB_ENV
fi
if [ "$2" == 'production' ] || [ "$1" == 'app-store' ]; then
  echo "description=正式站" >> $GITHUB_ENV
else
  echo "description=测试站" >> $GITHUB_ENV
fi
#machine api.mapbox.com
#login mapbox
#password <INSERT API TOKEN>
echo "machine api.mapbox.com" >> ~/.netrc
echo "login mapbox" >> ~/.netrc
echo "password $MAPBOX_ACCESS_TOKEN" >> ~/.netrc
chmod 600 ~/.netrc
cat ~/.netrc

