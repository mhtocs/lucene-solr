#!/bin/bash

# https://svn.apache.org/repos/asf/lucene/dev/tags/lucene_solr_3_6_2/dev-tools/maven/README.maven

# GENERATE THE ARTIFACTS
ant generate-maven-artifacts

# GENERATE POM
ant get-maven-poms

echo "SWITCHING TO maven-build dir"
cd maven-build

# INSTALL TO LOCAL REPO (make sure m2 is present)
mvn install
