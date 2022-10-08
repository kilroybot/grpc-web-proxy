#!/bin/sh

envsub() {
  eval "cat <<EOF
$(cat "$1")
EOF
" 2>/dev/null
}

find ./conf -type f | while IFS= read -r file; do
  # shellcheck disable=SC2005
  echo "$(envsub "$file")" >"$file"
done

envoy -c ./conf/config.yaml
