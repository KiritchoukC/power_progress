const pkg = require('../package.json');
const yaml = require('js-yaml');
const fs = require('fs');

const pubspecFile = './pubspec.yaml';

let doc = yaml.safeLoad(fs.readFileSync(pubspecFile, 'utf8'));

doc.version = pkg.version;

fs.writeFile(pubspecFile, yaml.safeDump(doc), (err) => {
  if (err) {
    console.error(err);
  }
});

console.log("pubspec version updated to " + doc.version);