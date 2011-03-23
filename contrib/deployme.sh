#!/bin/bash
SANEBUNTOP="https://github.com/andis/chef-sanebuntop.git"
COOKBOOK_DIR=`mktemp -d -t chef-sanebuntop.XXXXXX` || exit 1
cd ${COOKBOOK_DIR}
git clone ${SANEBUNTOP} sanebuntop
sudo EDITOR="${EDITOR}" chef-solo -c sanebuntop/contrib/soloconf.rb
