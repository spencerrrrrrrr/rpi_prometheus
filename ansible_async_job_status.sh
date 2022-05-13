#!/bin/bash

ansible multi -b -m async_status -a "jid=$1"
