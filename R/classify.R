#' Classify a URL with or without making network calls
#'
#' @md
#' @param x URL to classify
#' @param resolve_redirects if `TRUE` resolve redirects such as when Facebook or
#'        Google show an interstitial page instead of redirecting the user to
#'        the actual URL.
#' @export
classify_url <- function(x, resolve_redirects = FALSE) {

  crux_url <- J("com.chimbori.crux.urls.CruxURL")$parse(x)

  if (resolve_redirects) crux_url <- crux_url.resolveRedirects()

  data.frame(
    url = x,
    is_ad_image = crux_url$isAdImage(),
    is_web_scheme = crux_url$isWebScheme(),
    is_likely_article = crux_url$isLikelyArticle(),
    is_likely_video = crux_url$isLikelyVideo(),
    is_likely_audio = crux_url$isLikelyAudio(),
    is_likely_binary_doc = crux_url$isLikelyBinaryDocument(),
    is_likely_archive = crux_url$isLikelyArchive(),
    is_likely_executable = crux_url$isLikelyExecutable(),
    is_likely_image = crux_url$isLikelyImage(),
    stringsAsFactors = FALSE
  ) -> out

  class(out) <- c("tbl_df", "tbl", "data.frame")

  out

}

#' @rdname classify_url
#' @export
is_ad_image  <- function(x, resolve_redirects=FALSE) {
  crux_url <- J("com.chimbori.crux.urls.CruxURL")$parse(x)
  if (resolve_redirects) crux_url <- crux_url.resolveRedirects()
  crux_url$isAdImage()
}

#' @rdname classify_url
#' @export
is_web_scheme  <- function(x, resolve_redirects=FALSE) {
  crux_url <- J("com.chimbori.crux.urls.CruxURL")$parse(x)
  if (resolve_redirects) crux_url <- crux_url.resolveRedirects()
  crux_url$isWebScheme()
}

#' @rdname classify_url
#' @export
is_likely_article  <- function(x, resolve_redirects=FALSE) {
  crux_url <- J("com.chimbori.crux.urls.CruxURL")$parse(x)
  if (resolve_redirects) crux_url <- crux_url.resolveRedirects()
  crux_url$isLikelyArticle()
}

#' @rdname classify_url
#' @export
is_likely_video  <- function(x, resolve_redirects=FALSE) {
  crux_url <- J("com.chimbori.crux.urls.CruxURL")$parse(x)
  if (resolve_redirects) crux_url <- crux_url.resolveRedirects()
  crux_url$isLikelyVideo()
}

#' @rdname classify_url
#' @export
is_likely_audio  <- function(x, resolve_redirects=FALSE) {
  crux_url <- J("com.chimbori.crux.urls.CruxURL")$parse(x)
  if (resolve_redirects) crux_url <- crux_url.resolveRedirects()
  crux_url$isLikelyAudio()
}

#' @rdname classify_url
#' @export
is_likely_binary_doc  <- function(x, resolve_redirects=FALSE) {
  crux_url <- J("com.chimbori.crux.urls.CruxURL")$parse(x)
  if (resolve_redirects) crux_url <- crux_url.resolveRedirects()
  crux_url$isLikelyBinaryDocument()
}

#' @rdname classify_url
#' @export
is_likely_archive  <- function(x, resolve_redirects=FALSE) {
  crux_url <- J("com.chimbori.crux.urls.CruxURL")$parse(x)
  if (resolve_redirects) crux_url <- crux_url.resolveRedirects()
  crux_url$isLikelyArchive()
}

#' @rdname classify_url
#' @export
is_likely_executable  <- function(x, resolve_redirects=FALSE) {
  crux_url <- J("com.chimbori.crux.urls.CruxURL")$parse(x)
  if (resolve_redirects) crux_url <- crux_url.resolveRedirects()
  crux_url$isLikelyExecutable()
}

#' @rdname classify_url
#' @export
is_likely_image  <- function(x, resolve_redirects=FALSE) {
  crux_url <- J("com.chimbori.crux.urls.CruxURL")$parse(x)
  if (resolve_redirects) crux_url <- crux_url.resolveRedirects()
  crux_url$isLikelyImage()
}
