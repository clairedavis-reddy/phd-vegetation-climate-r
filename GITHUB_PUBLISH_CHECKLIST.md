# GitHub publish checklist

## 1. Create an empty repository on GitHub

Recommended name: `phd-vegetation-climate-r`

Suggested description:
Public R notebooks demonstrating climate trend analysis, vegetation phenology, and spatial vegetation change workflows from my PhD research.

Suggested topics:
- r
- remote-sensing
- climate
- phenology
- ndvi
- geospatial
- environmental-data-science
- time-series
- ecology

## 2. Push this local folder to GitHub

```bash
git init
git branch -M main
git add .
git commit -m "Initial public PhD portfolio release"
git remote add origin https://github.com/YOUR-USERNAME/phd-vegetation-climate-r.git
git push -u origin main
```

## 3. After pushing

- pin the repository to your GitHub profile
- add a short About description
- add the topics listed above
- render the notebooks locally and commit the output if desired
- replace `YOUR-USERNAME` in `CITATION.cff`
