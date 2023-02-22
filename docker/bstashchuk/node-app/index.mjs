import fs from "fs";

fs.appendFile(
  "my-file.txt",
  `File created Node.js ${new Date().toISOString()}\n`,
  (err) => {
    if (err) {
      throw err;
    }
    console.log("File was saved!");
  }
);
setTimeout(() => console.log("End!"), 30000);
