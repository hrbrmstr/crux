`%es%` <- function(a, b) {
  if (is.jnull(a)) return(b)
  if (trimws(a) == "") return(b)
  return(a)
}

#' Summarise the contents at a URL to essential bits
#'
#' Fetches the HTML from `x` and returns the essential components
#' including:
#' - `url`
#' - `original_url`
#' - `title`
#' - `description`
#' - `site_name`
#' - `theme_color`
#' - `amp_url`
#' - `canonical_url`
#' - `image_url`
#' - `video_url`
#' - `feed_url`
#' - `favicon_url`
#' - `reading_time`
#' - `text` (the reducted, plain text)
#' If any compontents cannot be derived from the contents of the URL they will be `NA`.
#'
#' @md
#' @param x URL
#' @export
#' @examples
#' ex_url <- "https://techcrunch.com/2019/02/28/thailand-passes-controversial-cybersecurity-law/"
#' str(summarise_url(ex_url), 1)
summarise_url <- function(x) {

  soup <- J("org.jsoup.Jsoup")
  con <- soup$connect(x)
  doc <- con$get()

  ae <- J("com.chimbori.crux.articles.ArticleExtractor")

  article <- ae$with(x, doc)

  content <- article$extractContent()
  content <- content$extractMetadata()
  content <- content$estimateReadingTime()

  rec <- content$article()

  txt <- rec$document$text()

  list(
    url = rec$url %es% NA_character_,
    original_url = rec$originalUrl %es% NA_character_,
    title = rec$title %es% NA_character_,
    description = rec$description %es% NA_character_,
    site_name = rec$siteName %es% NA_character_,
    theme_color = rec$themeColor %es% NA_character_,
    amp_url = rec$ampUrl %es% NA_character_,
    canonical_url = rec$canonicalUrl %es% NA_character_,
    image_url = rec$imageUrl %es% NA_character_,
    video_url = rec$videoUrl %es% NA_character_,
    feed_url = rec$feedUrl %es% NA_character_,
    favicon_url = rec$faviconUrl %es% NA_character_,
    reading_time = rec$estimatedReadingTimeMinutes %es% NA_integer_,
    text = txt %es% NA_character_
  ) -> content

  return(content)

}

