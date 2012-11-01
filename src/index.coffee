csso = require 'csso'
sysPath = require 'path'

class CSSOMinifier
  brunchPlugin: true
  type: 'stylesheet'
  extension: 'css'

  constructor: (@config) ->
    null

  minify: (data, path, callback) ->
    try
      minified = csso.justDoIt data
    catch err
      error = "CSS minify failed on #{path}: #{error}"
    process.nextTick ->
      callback error, (minified or data)

 module.exports = CSSOMinifier
