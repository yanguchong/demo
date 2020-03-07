const AWS = require('aws-sdk');
const S3 = new AWS.S3();

const handler = async (event, context) => {
  return {
    "msg":"hello world",
    "event": "EVENT: \n" + JSON.stringify(event, null, 2)
  };
}

module.exports = {
  handler
}
