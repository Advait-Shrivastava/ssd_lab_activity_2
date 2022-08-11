#!/bin/bash

awk -F '/' '
{
	if($2== "usr") print $NF
}' /etc/shells 