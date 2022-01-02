for /f "delims=" %%a in ('git subtree split --prefix dist') do @set token=%%a
git push origin %token%:gh-pages --force