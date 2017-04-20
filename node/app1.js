// const http = require("http");

// http.globalAgent.keepAlive = true

// http.createServer(function (req, res) {
//     res.writeHead(200, {'Content-Type': 'text/plain'});

//     res.end("You requested " + req.url);
// }).listen(5011);




// const cluster = require('cluster');
// const http = require('http');
// const numCPUs = require('os').cpus().length;

// if (cluster.isMaster) {
//     // Fork workers.
//     for (let i = 0; i < numCPUs; i++) {
//         cluster.fork();
//     }
// } else {
//     // Workers can share any TCP connection
//     // In this case it is an HTTP server
//     http.createServer((req, res) => {
//         res.writeHead(200);
//         res.end('You requested " + req.url');
//     }).listen(5011);
// }



var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('Hello World');
});

app.listen(5011);
