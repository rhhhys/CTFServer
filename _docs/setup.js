const fs = require('fs');
const path = require('path');

// 0. Ensure package.json exists to prevent NPM directory lookup warnings
if (!fs.existsSync('package.json')) {
    const defaultPackage = {
        name: "ctf-docs",
        version: "1.0.0",
        private: true,
        description: "CTF Documentation Site"
    };
    fs.writeFileSync('package.json', JSON.stringify(defaultPackage, null, 2));
}

const docsDir = './';
const files = fs.readdirSync(docsDir)
    .filter(f => f.endsWith('.md') && !f.startsWith('_') && f !== 'README.md');

// Create links for the navigation
const links = files.sort().map(f => {
    const name = f.replace('.md', '').replace(/-/g, ' ');
    return `* [${name.toUpperCase()}](${f})`;
}).join('\n');

const navContent = `* [HOME](README.md)\n${links}`;

// Write the dynamic navigation files
fs.writeFileSync('_navbar.md', navContent);
fs.writeFileSync('_sidebar.md', navContent);

// Generate index.html if it doesn't exist
if (!fs.existsSync('index.html')) {
    const html = `<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/docsify/lib/themes/vue.css">
</head>
<body>
  <div id="app"></div>
  <script>
    window.$docsify = {
      name: 'My Knowledge Base',
      loadNavbar: true,
      loadSidebar: true,
      subMaxLevel: 2,
      auto2top: true
    }
  </script>
  <script src="//cdn.jsdelivr.net/npm/docsify/lib/docsify.min.js"></script>
</body>
</html>`;
    fs.writeFileSync('index.html', html);
}