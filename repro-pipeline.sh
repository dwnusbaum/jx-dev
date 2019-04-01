# Shows that modifications to the Pipeline are seen by in-progress Pipelines.

# Start first build and wait a bit
jx step create task --no-release-prepare --pack=none
sleep 5
# Change Pipeline and start second build
mv jenkins-x.yml jenkins-x.3.yml
mv jenkins-x.2.yml jenkins-x.yml
jx step create task --no-release-prepare --pack=none
# Reset Pipeline
mv jenkins-x.yml jenkins-x.2.yml
mv jenkins-x.3.yml jenkins-x.yml
