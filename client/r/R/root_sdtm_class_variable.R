#' Create a new RootSdtmClassVariable
#'
#' @description
#' RootSdtmClassVariable Class
#'
#' @docType class
#' @title RootSdtmClassVariable
#' @description RootSdtmClassVariable Class
#' @format An \code{R6Class} generator object
#' @field _links  \link{RootSdtmClassVariableLinks} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RootSdtmClassVariable <- R6::R6Class(
  "RootSdtmClassVariable",
  public = list(
    `_links` = NULL,

    #' @description
    #' Initialize a new RootSdtmClassVariable class.
    #'
    #' @param _links _links
    #' @param ... Other optional arguments.
    initialize = function(`_links` = NULL, ...) {
      if (!is.null(`_links`)) {
        stopifnot(R6::is.R6(`_links`))
        self$`_links` <- `_links`
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
    #' @return RootSdtmClassVariable as a base R list.
    #' @examples
    #' # convert array of RootSdtmClassVariable (x) to a data frame
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
    #' Convert RootSdtmClassVariable to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RootSdtmClassVariableObject <- list()
      if (!is.null(self$`_links`)) {
        RootSdtmClassVariableObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      return(RootSdtmClassVariableObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of RootSdtmClassVariable
    #'
    #' @param input_json the JSON input
    #' @return the instance of RootSdtmClassVariable
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- RootSdtmClassVariableLinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RootSdtmClassVariable in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RootSdtmClassVariable
    #'
    #' @param input_json the JSON input
    #' @return the instance of RootSdtmClassVariable
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`_links` <- RootSdtmClassVariableLinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to RootSdtmClassVariable and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RootSdtmClassVariable
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
# RootSdtmClassVariable$unlock()
#
## Below is an example to define the print function
# RootSdtmClassVariable$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RootSdtmClassVariable$lock()

