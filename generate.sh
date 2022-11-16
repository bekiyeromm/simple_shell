#!/usr/bin/env bash
set -e
{
    cat <<-'EOF'
# This file lists all individuals having contributed content to the repository.
EOF
echo
git log --format='%aN <%aE>' | LC_ALL=C.UTF-8 sort -uf
} > AUTHORS
