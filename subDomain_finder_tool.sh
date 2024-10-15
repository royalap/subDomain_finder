#!/bin/bash
runme(){
    while read sub;do
        if host -t A "$sub.$domain" &> /dev/null;then
            echo "$sub.$domain"
        fi
    done < $wordlist
}
help(){
       echo " TOOL: To identify subdomians

-d DOMAIN : Provide the target domain
-h/--help : Print help/usage

e.g:
$ bash script.sh -d domain.tld"
}
for i in {1..2};do
case $1 in
        "-d")
                domain=$2
                ;;
        "-w")
                wordlist=$2
                if [[ ! -f $wordlist ]];then
                        echo "Error: wordlist must be a file"
                        exit 12
                fi
                ;;
        "-h"|"--help")
                help
                ;;
        *)
                echo "Error: $1 invalid argument, use -h/--help"
                exit 128
                ;;
esac
    if [[ $2 == "-d" || $2 == "-w" ]] && [[ -z $domain || -z $wordlist ]];then
            echo "Error: expected an arg after $1,use -h/--help"
            exit 9
    fi
shift 2
done
runme
