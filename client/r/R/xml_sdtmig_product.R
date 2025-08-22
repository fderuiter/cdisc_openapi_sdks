#' Create a new XmlSdtmigProduct
#'
#' @description
#' XmlSdtmigProduct Class
#'
#' @docType class
#' @title XmlSdtmigProduct
#' @description XmlSdtmigProduct Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{SdtmigProduct} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
XmlSdtmigProduct <- R6::R6Class(
  "XmlSdtmigProduct",
  public = list(
    `item_self` = NULL,

    #' @description
    #' Initialize a new XmlSdtmigProduct class.
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
    #' @return XmlSdtmigProduct as a base R list.
    #' @examples
    #' # convert array of XmlSdtmigProduct (x) to a data frame
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
    #' Convert XmlSdtmigProduct to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      XmlSdtmigProductObject <- list()
      if (!is.null(self$`item_self`)) {
        XmlSdtmigProductObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      return(XmlSdtmigProductObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of XmlSdtmigProduct
    #'
    #' @param input_json the JSON input
    #' @return the instance of XmlSdtmigProduct
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- SdtmigProduct$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return XmlSdtmigProduct in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of XmlSdtmigProduct
    #'
    #' @param input_json the JSON input
    #' @return the instance of XmlSdtmigProduct
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- SdtmigProduct$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to XmlSdtmigProduct and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of XmlSdtmigProduct
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
# XmlSdtmigProduct$unlock()
#
## Below is an example to define the print function
# XmlSdtmigProduct$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# XmlSdtmigProduct$lock()

