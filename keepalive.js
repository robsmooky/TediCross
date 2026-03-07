const http = require("http");

const port = process.env.PORT || 10000;

http.createServer((req, res) => {
  res.writeHead(200);
  res.end("Bot running");
}).listen(port, () => {
  console.log("Keepalive server running on port", port);
});
