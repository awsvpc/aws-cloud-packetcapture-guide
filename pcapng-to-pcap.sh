#!/bin/bash
convert=`which tshark`
list_pcap=`ls -lh |grep -v .sh |awk '{ print $9 }'|awk -F.pcapng '{ print $1 }'`
for i in $list_pcap; do
    echo "Converting: "$i
    $convert -F pcap -r $i.pcapng -w $i.pcap
done
