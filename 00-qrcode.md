
```{r configqr,include=FALSE}
library(qrcode)

# The repository name

message(Sys.getenv("GITHUB_REPOSITORY"))

# Process the repository name to generate the URL
# - split the two components
# - combine them into a URL with 'github.io' in the middle

GITHUB_REPOSITORY <- Sys.getenv("GITHUB_REPOSITORY")
GITHUB_REPOSITORY_PARTS <- strsplit(GITHUB_REPOSITORY, "/")[[1]]
REPOSITORY_URL <- paste0("https://github.com/", GITHUB_REPOSITORY)
WEBSITE_URL <- paste0("https://", GITHUB_REPOSITORY_PARTS[1], ".github.io/", GITHUB_REPOSITORY_PARTS[2])

```


```{r qrcode}
#| echo: false

code <- qr_code(WEBSITE_URL)
png(filename="qrcode.png")
plot(code)
invisible(dev.off())

```

