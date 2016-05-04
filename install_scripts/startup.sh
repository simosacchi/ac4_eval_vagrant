#!/bin/bash

solr_wrapper -d solr/config/ --collection_name hydra-development &

fcrepo_wrapper -p 8984 &

wait

rails server -b 0.0.0.0



