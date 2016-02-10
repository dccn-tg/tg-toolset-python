#!/bin/bash

ceph_rel=$1
distro=$2

cat > /etc/yum.repos.d/ceph.repo << EOF
[ceph-noarch]
name=Ceph noarch packages
baseurl=http://ceph.com/rpm-$ceph_rel/$distro/noarch
enabled=1
gpgcheck=1
type=rpm-md
gpgkey=https://ceph.com/git/?p=ceph.git;a=blob_plain;f=keys/release.asc
EOF
