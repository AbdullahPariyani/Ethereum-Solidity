var express = require('express');
var solc = require('solc');
var cors = require('cors');
var fs = require('fs');
var path = require('path');

var app = express();
app.use(cors());

app.listen(3000);
app.get('/',function(req,res){
    const contractPath = path.resolve(__dirname,'contracts','HelloWorld.sol');
    var contractSourcePath = fs.readFileSync(contractPath, 'utf-8');
    var input = {
        language: "Solidity",
        sources: {
          "tHelloWorld.sol": {
            content: contractSourcePath,
          },
        },
        settings: {
          outputSelection: {
            "*": {
              "*": ["*"],
            },
          },
        },
      };
      
    const ret = solc.compile(JSON.stringify(input));
    res.status(200);
    res.json(JSON.parse(ret));
});