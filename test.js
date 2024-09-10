const hello = require('../index');
const assert = require('assert');

assert.strictEqual(hello(), "Hello, world!");
console.log("All tests passed!");
