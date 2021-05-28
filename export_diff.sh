#!/bin/sh
git checkout-index -f --prefix=archive/ $1 `git diff --name-only $1 $2`