const parser = require("gherkin-parse");
const glob = require("glob")
let path = require('path')

var express = require('express');
var cors = require('cors')
var app = express()
app.use(cors())

app.get('/:part', function (req, res) {
    let features;
    glob(`features/${req.params.part}/**/*.feature`, function (er, files) {
        features = files.map(file => {
            let object = parser.convertFeatureFileToJSON(file)
            object = object.feature
            let section = path.dirname(file).split(path.sep).pop()
            // map tags from object to simple array
            object.children.forEach(child => {
                child.tags = child.tags.map(tag => { return tag.name })
            })
            object.section = section
            return object
        })
        res.send(features);
    })
});

// app.get('/stats/:part', function (req, res) {
//     let features;
//     let totalScenarios;
//     glob(`features/${req.params.part}/**/*.feature`, function (er, files) {
//         features = files.map(file => {
//             let object = parser.convertFeatureFileToJSON(file)
//             object = object.feature
//             // map tags from object to simple array
//             totalScenarios = totalCases + object.children.length
//             object.children.forEach(child => {
//                 child.tags = child.tags.map(tag => { return tag.name })
//             })
//             return object
//         })
//         res.send(totalScenarios);
//     })
// })

app.listen(8082);