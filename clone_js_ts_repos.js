const { execSync } = require('child_process');
const fs = require('fs');
const path = require('path');
const readline = require('readline');

// Directory to store cloned repositories
const CLONE_DIR = path.resolve(__dirname, 'multiversx_repos');
const REPO_LIST_FILE = path.resolve(__dirname, 'multiversx.txt');

// Create the clone directory if it doesn't exist
if (!fs.existsSync(CLONE_DIR)) {
  fs.mkdirSync(CLONE_DIR);
}

// Function to extract repo name from URL
function getRepoName(url) {
  return url.split('/').pop().replace('.git', '');
}

// Clone function
function cloneRepo(url) {
  const repoName = getRepoName(url);
  const targetPath = path.join(CLONE_DIR, repoName);

  if (fs.existsSync(targetPath)) {
    console.log(`✅ Skipping ${repoName}: already exists.`);
    return;
  }

  try {
    console.log(`🚀 Cloning ${repoName}...`);
    execSync(`git clone --depth 1 ${url}`, { cwd: CLONE_DIR, stdio: 'inherit' });
  } catch (err) {
    console.error(`❌ Failed to clone ${repoName}:`, err.message);
  }
}
async function main() {
    const fileStream = fs.createReadStream(REPO_LIST_FILE);
    const rl = readline.createInterface({
      input: fileStream,
      crlfDelay: Infinity
    });
  
    for await (let line of rl) {
      const url = line.trim().replace(/^"+|"+$/g, ''); // trim and remove extra quotes
  
      if (url && url.startsWith('https://github.com/multiversx/')) {
        cloneRepo(url);
      } else {
        console.warn(`⚠️ Skipping invalid or empty line: ${line}`);
      }
    }
  }
  
main();
