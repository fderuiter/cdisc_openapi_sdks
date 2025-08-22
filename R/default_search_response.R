#' Create a new DefaultSearchResponse
#'
#' @description
#' DefaultSearchResponse Class
#'
#' @docType class
#' @title DefaultSearchResponse
#' @description DefaultSearchResponse Class
#' @format An \code{R6Class} generator object
#' @field hits  list(\link{DefaultSearchResponseHitsInner}) [optional]
#' @field totalHits  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DefaultSearchResponse <- R6::R6Class(
  "DefaultSearchResponse",
  public = list(
    `hits` = NULL,
    `totalHits` = NULL,

    #' @description
    #' Initialize a new DefaultSearchResponse class.
    #'
    #' @param hits hits
    #' @param totalHits totalHits
    #' @param ... Other optional arguments.
    initialize = function(`hits` = NULL, `totalHits` = NULL, ...) {
      if (!is.null(`hits`)) {
        stopifnot(is.vector(`hits`), length(`hits`) != 0)
        sapply(`hits`, function(x) stopifnot(R6::is.R6(x)))
        self$`hits` <- `hits`
      }
      if (!is.null(`totalHits`)) {
        self$`totalHits` <- `totalHits`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return DefaultSearchResponse as a base R list.
    #' @examples
    #' # convert array of DefaultSearchResponse (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert DefaultSearchResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DefaultSearchResponseObject <- list()
      if (!is.null(self$`hits`)) {
        DefaultSearchResponseObject[["hits"]] <-
          lapply(self$`hits`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`totalHits`)) {
        DefaultSearchResponseObject[["totalHits"]] <-
          self$`totalHits`
      }
      return(DefaultSearchResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DefaultSearchResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of DefaultSearchResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`hits`)) {
        self$`hits` <- ApiClient$new()$deserializeObj(this_object$`hits`, "array[DefaultSearchResponseHitsInner]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`totalHits`)) {
        self$`totalHits` <- this_object$`totalHits`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DefaultSearchResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DefaultSearchResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of DefaultSearchResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`hits` <- ApiClient$new()$deserializeObj(this_object$`hits`, "array[DefaultSearchResponseHitsInner]", loadNamespace("openapi"))
      self$`totalHits` <- this_object$`totalHits`
      self
    },

    #' @description
    #' Validate JSON input with respect to DefaultSearchResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DefaultSearchResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# DefaultSearchResponse$unlock()
#
## Below is an example to define the print function
# DefaultSearchResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DefaultSearchResponse$lock()

