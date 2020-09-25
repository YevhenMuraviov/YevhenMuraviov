#!/bin/bash

:;while true; do { echo -e "HTTP/1.0 200 OK\r\nContent-Length: $(wc -c < index)\r\n\r\n"; cat index; } | nc -l -p 8080; done
