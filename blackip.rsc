/ip firewall raw
add action=drop chain=prerouting in-interface-list=WAN src-address-list=blk place-before=0;
/system scheduler
add interval=1d name="blackip update" on-event="system script run blackip;" \
    policy=ftp,read,write,policy,test,sensitive start-time=startup
/system script
add dont-require-permissions=no name=blackip owner="github.com/trskrbz" policy=\
    ftp,read,write,policy,test,sensitive source="system logging set numbers=0 \
    topics=info,!system;\r\
    \nip firewall address-list remove [find where list=blk dynamic=no];\r\
    \n:delay 1s;\r\
    \ntool fetch url=\"https://raw.githubusercontent.com/trskrbz/BlackIPforFirewall/main/list.rsc\" mode=https;\r\
    \nimport list.rsc;\r\
    \nsystem logging set numbers=0 topics=info;"
/system script
run blackip;
/file
remove blackip.rsc;