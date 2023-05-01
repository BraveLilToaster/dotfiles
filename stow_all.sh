#! /bin/sh
if command -v stow >/dev/null; then
  for f in */; do
    stow $f -t ~
  done
else {
  echo >&2 "I require stow but it's not installed. Aborting.";
  exit 1;
}
fi
