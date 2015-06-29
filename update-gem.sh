#! /bin/sh

# clean old version
rm -rf assets
mkdir -p assets/javascripts/vendor assets/stylesheets

# update assets
bower install
cp bower_components/modernizr/modernizr.js assets/javascripts/vendor/.
cp bower_components/jquery/dist/jquery.js assets/javascripts/vendor/.
cp -R bower_components/foundation/js/foundation/ assets/javascripts/foundation/
cp -R bower_components/foundation/scss/* assets/stylesheets/

# update version
version=`bower info foundation version |tail -n 1`
echo "module Foundation
  VERSION = $version
end" > lib/foundation/version.rb

# Copy over foundation.js for compass projects
rm -rf templates/project/js
cp -R bower_components/foundation/js templates/project/js

# create vendor/assets/javascripts/foundation.js (rails inclusions //=require foundation, ...)
cd assets/javascripts
echo "if (typeof jQuery === 'undefined') throw new Error('Foundation requires jQuery');" > foundation.js
echo "//= require foundation" >> foundation.js
for f in foundation/foundation.*.js; do
  echo "//= require $f" | sed 's/.js//' >> foundation.js
done
