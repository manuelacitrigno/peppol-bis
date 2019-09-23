get-process chrome -ErrorAction SilentlyContinue | stop-process; start-process chrome --allow-file-access-from-files
