
#!/bin/bash
#
# (c) Copyright 2015 Cloudera, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -x -e

# REPLACE_ME - Replace user name from centos to ec2-user if using RHEL base AMI
sudo -u hdfs hadoop fs -mkdir /user/REPLACE_ME_CLUSTER_OS_USER
sudo -u hdfs hadoop fs -chown REPLACE_ME_CLUSTER_OS_USER:REPLACE_ME_CLUSTER_OS_USER /user/REPLACE_ME_CLUSTER_OS_USER
hive -f query.sql

exit 0
