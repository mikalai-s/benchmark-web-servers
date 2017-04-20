# Let's output to a jpeg file
set terminal jpeg size 1000,700
# This sets the aspect ratio of the graph
set size 1, 1
# The file we'll write to
set output "results/plot.jpg"
# The graph title
set title "Benchmark testing"
# Where to place the legend/key
set key left top
# Draw gridlines oriented on the y axis
set grid y
# Label the x-axis
set xlabel 'requests'
# Label the y-axis
set ylabel "response time (ms)"
# Tell gnuplot to use tabs as the delimiter instead of spaces (default)
set datafile separator '\t'

#set yrange [0:200]
#set style data smooth csplines
# Plot the data
plot "results/node1.dem" every ::2 using 5 title 'node' smooth csplines, \
"results/go1.dem" every ::2 using 5 title 'go' smooth csplines, \
"results/erlang1.dem" every ::2 using 5 title 'erlang' smooth csplines
exit
