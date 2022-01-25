# MyBook
 A simple solution for writing a book with markdown.


 # Getting Started

 ## Set-up development environment

 - Install [pandoc](https://pandoc.org/)

 - Install [wkhtmltopdf](https://wkhtmltopdf.org/). _(Used by pandoc as pdf engine)_

### Issues with wkhtmltopdf
In Windows, If pandoc still says wkhtmltopdf is not installed, add following `wkhtmltopdf.bat` file to path: `C:\Program Files\wkhtmltopdf\bin\` 

```bat
wkhtmltopdf.exe
```

Then if the path (`C:\Program Files\wkhtmltopdf\bin`) doesn't exist in **Environment Variables** add it to **Path** variable.

---

# Building the Book
Multiple sections in markdown files will be merged into single pdf file.

- Execute the `build.ps1`
- Output will be generated under `built/` folder by default.


## Changing output folder
Edit the `build.ps1` file and change `$OutputFolder` variable.