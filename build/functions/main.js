exports.handler = (event, context, callback) => {
  callback(null, {
    statusCode: 200,
    body: printHtml(
      `This was a ${event.httpMethod} HTTP request to ${event.path}`
    )
  });
};

function printHtml(message) {
  return `<html>
  <body>
    <h1>
          ${message}
    </h1>
  </body>
</html>
`;
}
