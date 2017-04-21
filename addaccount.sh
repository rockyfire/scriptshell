#!/bin/bash
groupadd mygroup
for username in rockyfire1 rockyfire2
do
	useradd -g mygroup $username
	echo "$username:abc" | chpasswd -m
done

