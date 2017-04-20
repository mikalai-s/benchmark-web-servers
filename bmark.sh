mkdir results

curl -i http://localhost:5011/
ab -l -r -n 10000 -c 10 -H "Accept-Encoding: gzip, deflate" -e results/node1.csv -g results/node1.dem -k http://localhost:5011/ > results/node1.txt

curl -i http://localhost:5012/
ab -l -r -n 10000 -c 10 -H "Accept-Encoding: gzip, deflate" -e results/go1.csv -g results/go1.dem -k http://localhost:5012/ > results/go1.txt

curl -i http://localhost:5013/
ab -l -r -n 10000 -c 10 -H "Accept-Encoding: gzip, deflate" -e results/erlang1.csv -g results/erlang1.dem -k http://localhost:5013/ > results/erlang1.txt

gnuplot -c plot.gnuplot