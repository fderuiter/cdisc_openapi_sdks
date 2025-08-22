#' Create a new XmlAdamDatastructureVarsets
#'
#' @description
#' XmlAdamDatastructureVarsets Class
#'
#' @docType class
#' @title XmlAdamDatastructureVarsets
#' @description XmlAdamDatastructureVarsets Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{AdamDatastructureVarsets} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
XmlAdamDatastructureVarsets <- R6::R6Class(
  "XmlAdamDatastructureVarsets",
  public = list(
    `item_self` = NULL,

    #' @description
    #' Initialize a new XmlAdamDatastructureVarsets class.
    #'
    #' @param item_self item_self
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
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
    #' @return XmlAdamDatastructureVarsets as a base R list.
    #' @examples
    #' # convert array of XmlAdamDatastructureVarsets (x) to a data frame
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
    #' Convert XmlAdamDatastructureVarsets to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      XmlAdamDatastructureVarsetsObject <- list()
      if (!is.null(self$`item_self`)) {
        XmlAdamDatastructureVarsetsObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      return(XmlAdamDatastructureVarsetsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of XmlAdamDatastructureVarsets
    #'
    #' @param input_json the JSON input
    #' @return the instance of XmlAdamDatastructureVarsets
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- AdamDatastructureVarsets$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return XmlAdamDatastructureVarsets in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of XmlAdamDatastructureVarsets
    #'
    #' @param input_json the JSON input
    #' @return the instance of XmlAdamDatastructureVarsets
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- AdamDatastructureVarsets$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to XmlAdamDatastructureVarsets and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of XmlAdamDatastructureVarsets
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
# XmlAdamDatastructureVarsets$unlock()
#
## Below is an example to define the print function
# XmlAdamDatastructureVarsets$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# XmlAdamDatastructureVarsets$lock()

