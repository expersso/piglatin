
#' Apply function to all words in a sentence, maintaining proper capitalization
#'
#' @param text Character string
#' @param f Function taking and returning a character string
#' @param ... Arguments passed to f
#'
#' @return A character string
#' @importFrom magrittr %>%
word_apply <- function(text, f, ...) {
  is_capitalized <- function(x) stringr::str_detect(substr(x, 1, 1), "[[:upper:]]")

  words <- stringr::str_split(text, "\\b")[[1]]
  capitalized_words <- purrr::map_lgl(words, is_capitalized) %>% which()
  words %>%
    purrr::map_if(~stringr::str_detect(., "\\w"), f, ...) %>%
    purrr::map_at(capitalized_words, stringi::stri_trans_totitle) %>%
    paste(collapse = "")
}

#' Translate word to Pig Latin
#'
#' @param word A character string to be translated
#'
#' @return A character string
#' @importFrom magrittr %>%
pigify_word <- function(word) {
  vowels <- c("a", "e", "i", "o", "u")
  is_vowel <- function(l) l %in% c(vowels, toupper(vowels))
  split_at <- function(x, i) split(x, cumsum(seq_along(x) %in% i))

  ltrs <- stringr::str_split(word, "")[[1]]
  first_vowel <- purrr::detect_index(ltrs, is_vowel)
  split_at(ltrs, first_vowel) %>%
    rev() %>%
    purrr::flatten_chr() %>%
    c("a", "y") %>%
    paste(collapse = "")
}

#' Translate a text to Pig Latin
#'
#' @param text A character string to be translated
#'
#' @return A character string
#' @export
#'
#' @examples
#' pigify("This is a short sentence. And this (the second sentence) is another one.")
pigify <- function(text) {
  word_apply(text, pigify_word)
}
