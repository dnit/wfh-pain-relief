memoffenders() { ps aux  | awk '{print $6/1024 " MB\t\t" $11}'  | sort -n | awk '{mem[$3]+=$1} END {for (p in mem) print mem[p], p}' | sort -rn | head -n 10; }
