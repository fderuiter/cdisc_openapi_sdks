#' Create a new XmlProductgroupDataCollection
#'
#' @description
#' XmlProductgroupDataCollection Class
#'
#' @docType class
#' @title XmlProductgroupDataCollection
#' @description XmlProductgroupDataCollection Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{ProductgroupDataCollection} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
XmlProductgroupDataCollection <- R6::R6Class(
  "XmlProductgroupDataCollection",
  public = list(
    `item_self` = NULL,

    #' @description
    #' Initialize a new XmlProductgroupDataCollection class.
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
    #' @return XmlProductgroupDataCollection as a base R list.
    #' @examples
    #' # convert array of XmlProductgroupDataCollection (x) to a data frame
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
    #' Convert XmlProductgroupDataCollection to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      XmlProductgroupDataCollectionObject <- list()
      if (!is.null(self$`item_self`)) {
        XmlProductgroupDataCollectionObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      return(XmlProductgroupDataCollectionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of XmlProductgroupDataCollection
    #'
    #' @param input_json the JSON input
    #' @return the instance of XmlProductgroupDataCollection
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- ProductgroupDataCollection$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return XmlProductgroupDataCollection in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of XmlProductgroupDataCollection
    #'
    #' @param input_json the JSON input
    #' @return the instance of XmlProductgroupDataCollection
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- ProductgroupDataCollection$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to XmlProductgroupDataCollection and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of XmlProductgroupDataCollection
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
# XmlProductgroupDataCollection$unlock()
#
## Below is an example to define the print function
# XmlProductgroupDataCollection$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# XmlProductgroupDataCollection$lock()

