@pushd nginx
start "Restarting nginx" /B nginx -s reload
@popd