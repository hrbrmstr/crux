
[![Travis-CI Build
Status](https://travis-ci.org/hrbrmstr/crux.svg?branch=master)](https://travis-ci.org/hrbrmstr/crux)
[![Coverage
Status](https://codecov.io/gh/hrbrmstr/crux/branch/master/graph/badge.svg)](https://codecov.io/gh/hrbrmstr/crux)
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/crux)](https://cran.r-project.org/package=crux)

# crux

Identify the Crux of an Article

## Description

Methods are provided to retrieve HTML content and return extracted
metadata and summarised plain text. Further methods are provided to
classify URLs with or without making network calls. Based on
<https://github.com/chimbori/crux>.

## What’s Inside The Tin

The following functions are implemented:

  - `classify_url`: Classify a URL with or without making network calls
  - `is_ad_image`: Classify a URL with or without making network calls
  - `is_likely_archive`: Classify a URL with or without making network
    calls
  - `is_likely_article`: Classify a URL with or without making network
    calls
  - `is_likely_audio`: Classify a URL with or without making network
    calls
  - `is_likely_binary_doc`: Classify a URL with or without making
    network calls
  - `is_likely_executable`: Classify a URL with or without making
    network calls
  - `is_likely_image`: Classify a URL with or without making network
    calls
  - `is_likely_video`: Classify a URL with or without making network
    calls
  - `is_web_scheme`: Classify a URL with or without making network calls
  - `summarise_url`: Summarise the contents at a URL to essential bits

## Installation

``` r
install.packages(c("cruxjars", "crux"), repos = "https://cinc.rud.is/")
```

## Usage

``` r
library(crux)

# current version
packageVersion("crux")
## [1] '0.1.0'
```

``` r
str(
  summarise_url("http://time.com/5541738/joe-biden-backtracks-pence-praise-criticism/"), 1
)
## List of 14
##  $ url          : chr "http://time.com/5541738/joe-biden-backtracks-pence-praise-criticism/"
##  $ original_url : chr NA
##  $ title        : chr "Joe Biden Backtracks After Calling Pence 'a Decent Guy'"
##  $ description  : chr "The former Vice President took back his comment that Pence is \"a decent guy\" after fellow Democrats denounced his remarks"
##  $ site_name    : chr "Time"
##  $ theme_color  : chr NA
##  $ amp_url      : chr "http://amp.timeinc.net/time/5541738/joe-biden-backtracks-pence-praise-criticism"
##  $ canonical_url: chr "http://time.com/5541738/joe-biden-backtracks-pence-praise-criticism/"
##  $ image_url    : chr "http://timedotcom.files.wordpress.com/2019/03/ap19059832629402.jpg?quality=85&crop=0px%2C111px%2C6000px%2C3000p"| __truncated__
##  $ video_url    : chr NA
##  $ feed_url     : chr NA
##  $ favicon_url  : chr "http://time.com/img/favicons/favicon-192.png"
##  $ reading_time : int 2
##  $ text         : chr "(OMAHA, Neb.) — Former Vice President Joe Biden’s tendency to talk about his good relationships with Republican"| __truncated__
```

``` r
str(
  classify_url("https://www.washingtonpost.com/powerpost/house-democrats-explode-in-recriminations-as-liberals-lash-out-at-moderates/2019/02/28/c3d163fe-3b87-11e9-a06c-3ec8ed509d15_story.html")
)
## Classes 'tbl_df', 'tbl' and 'data.frame':    1 obs. of  10 variables:
##  $ url                 : chr "https://www.washingtonpost.com/powerpost/house-democrats-explode-in-recriminations-as-liberals-lash-out-at-mode"| __truncated__
##  $ is_ad_image         : logi FALSE
##  $ is_web_scheme       : logi TRUE
##  $ is_likely_article   : logi TRUE
##  $ is_likely_video     : logi FALSE
##  $ is_likely_audio     : logi FALSE
##  $ is_likely_binary_doc: logi FALSE
##  $ is_likely_archive   : logi FALSE
##  $ is_likely_executable: logi FALSE
##  $ is_likely_image     : logi FALSE
```

## crux Metrics

| Lang | \# Files |  (%) | LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
| :--- | -------: | ---: | --: | ---: | ----------: | ---: | -------: | ---: |
| R    |        5 | 0.71 | 104 | 0.76 |          28 | 0.49 |       71 | 0.61 |
| make |        1 | 0.14 |  20 | 0.15 |           9 | 0.16 |        0 | 0.00 |
| Rmd  |        1 | 0.14 |  12 | 0.09 |          20 | 0.35 |       46 | 0.39 |

## Code of Conduct

Please note that this project is released with a [Contributor Code of
Conduct](CONDUCT.md). By participating in this project you agree to
abide by its terms.
