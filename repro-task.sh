# Shows that modifications to Tasks are seen by in-progress Pipelines.

# Start first build and wait a bit
jx step create task --no-release-prepare --pack=none
sleep 5
# Change version and start second build
sed -i .bak 's/BEFORE-UPDATE/AFTER-UPDATE/g' jenkins-x.yml
jx step create task --no-release-prepare --pack=none
# Reset version
mv jenkins-x.yml.bak jenkins-x.yml
