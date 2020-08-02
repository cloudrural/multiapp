var http = require('http'); // Import Node.js core module

var server = http.createServer(function (req, res) {   //create web server
    if (req.url == '/') { //check the URL of the current request
        
        // set response header
        res.writeHead(200, { 'Content-Type': 'text/html' }); 
        
        // set response content    
        res.write('<html><body bgcolor="pink"><h1>Node App</h1></body></html>');
        res.end();
    
    }
    else if (req.url == "/mahi") {
        
        res.writeHead(200, { 'Content-Type': 'text/html' });
        res.write('<html><body bgcolor="blue"><h2>Node application test page</h2></body></html>');
        res.end();
    
    }
    else if (req.url == "/admin") {
        
        res.writeHead(200, { 'Content-Type': 'text/html' });
        res.write('<html><body><h2>Its working.</h2></body></html>');
        res.end();
    
    }
    else
        res.end('Invalid Request!');

});

server.listen(8080); //6 - listen for any incoming requests

console.log('Node.js web server at port 8080 is running..')
