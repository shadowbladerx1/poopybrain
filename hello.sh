#!/bin/bash
vendor=$(lscpu | grep Vendor)
STR="Hello world from $(hostname)! $vendor"
echo $STR
