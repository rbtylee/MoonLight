#!/bin/sh
edje_cc $@ -fastdecomp -id ./img -id ./emo -fd . MokshaMoonlight.edc -o MokshaMoonlight.edj
chmod 644 ../MokshaMoonlight.edj
