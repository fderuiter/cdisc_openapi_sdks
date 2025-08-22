#' Create a new About
#'
#' @description
#' About Class
#'
#' @docType class
#' @title About
#' @description About Class
#' @format An \code{R6Class} generator object
#' @field _links  \link{AboutLinks} [optional]
#' @field release-notes  character [optional]
#' @field api-documentation  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
About <- R6::R6Class(
  "About",
  public = list(
    `_links` = NULL,
    `release-notes` = NULL,
    `api-documentation` = NULL,

    #' @description
    #' Initialize a new About class.
    #'
    #' @param _links _links
    #' @param release-notes release-notes
    #' @param api-documentation api-documentation
    #' @param ... Other optional arguments.
    initialize = function(`_links` = NULL, `release-notes` = NULL, `api-documentation` = NULL, ...) {
      if (!is.null(`_links`)) {
        stopifnot(R6::is.R6(`_links`))
        self$`_links` <- `_links`
      }
      if (!is.null(`release-notes`)) {
        if (!(is.character(`release-notes`) && length(`release-notes`) == 1)) {
          stop(paste("Error! Invalid data for `release-notes`. Must be a string:", `release-notes`))
        }
        self$`release-notes` <- `release-notes`
      }
      if (!is.null(`api-documentation`)) {
        if (!(is.character(`api-documentation`) && length(`api-documentation`) == 1)) {
          stop(paste("Error! Invalid data for `api-documentation`. Must be a string:", `api-documentation`))
        }
        self$`api-documentation` <- `api-documentation`
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
    #' @return About as a base R list.
    #' @examples
    #' # convert array of About (x) to a data frame
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
    #' Convert About to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AboutObject <- list()
      if (!is.null(self$`_links`)) {
        AboutObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      if (!is.null(self$`release-notes`)) {
        AboutObject[["release-notes"]] <-
          self$`release-notes`
      }
      if (!is.null(self$`api-documentation`)) {
        AboutObject[["api-documentation"]] <-
          self$`api-documentation`
      }
      return(AboutObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of About
    #'
    #' @param input_json the JSON input
    #' @return the instance of About
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- AboutLinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`release-notes`)) {
        self$`release-notes` <- this_object$`release-notes`
      }
      if (!is.null(this_object$`api-documentation`)) {
        self$`api-documentation` <- this_object$`api-documentation`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return About in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of About
    #'
    #' @param input_json the JSON input
    #' @return the instance of About
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_links` <- AboutLinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`release-notes` <- this_object$`release-notes`
      self$`api-documentation` <- this_object$`api-documentation`
      self
    },

    #' @description
    #' Validate JSON input with respect to About and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of About
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
# About$unlock()
#
## Below is an example to define the print function
# About$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# About$lock()

