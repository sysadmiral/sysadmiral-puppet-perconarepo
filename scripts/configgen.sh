#!/bin/bash

repos='percona-release-$basearch percona-release-noarch percona-release-source percona-testing-$basearch percona-testing-noarch perc'

for repo in $repos; do
	tidyrepo=$(echo $repo | sed -e 's/\-//g' -e 's/\$//')
	echo "yumrepo { '${repo}':
	baseurl => \$${tidyrepo}_baseurl
	proxy => \$${tidyrepo}_proxy
	enabled => \$${tidyrepo}_enabled
	gpgcheck => \$${tidyrepo}_gpgcheck
	gpgkey => \$${tidyrepo}_gpgkey
	descr => \$${tidyrepo}_descr
}"
done
