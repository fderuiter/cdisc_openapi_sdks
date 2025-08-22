#' Create a new CdashDomainLinks
#'
#' @description
#' CdashDomainLinks Class
#'
#' @docType class
#' @title CdashDomainLinks
#' @description CdashDomainLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{CdashDomainRef} [optional]
#' @field parentProduct  \link{CdashProductRef} [optional]
#' @field parentClass  \link{CdashClassRef} [optional]
#' @field priorVersion  \link{CdashDomainRef} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CdashDomainLinks <- R6::R6Class(
  "CdashDomainLinks",
  public = list(
    `item_self` = NULL,
    `parentProduct` = NULL,
    `parentClass` = NULL,
    `priorVersion` = NULL,

    #' @description
    #' Initialize a new CdashDomainLinks class.
    #'
    #' @param item_self item_self
    #' @param parentProduct parentProduct
    #' @param parentClass parentClass
    #' @param priorVersion priorVersion
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `parentProduct` = NULL, `parentClass` = NULL, `priorVersion` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
      }
      if (!is.null(`parentProduct`)) {
        stopifnot(R6::is.R6(`parentProduct`))
        self$`parentProduct` <- `parentProduct`
      }
      if (!is.null(`parentClass`)) {
        stopifnot(R6::is.R6(`parentClass`))
        self$`parentClass` <- `parentClass`
      }
      if (!is.null(`priorVersion`)) {
        stopifnot(R6::is.R6(`priorVersion`))
        self$`priorVersion` <- `priorVersion`
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
    #' @return CdashDomainLinks as a base R list.
    #' @examples
    #' # convert array of CdashDomainLinks (x) to a data frame
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
    #' Convert CdashDomainLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CdashDomainLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        CdashDomainLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`parentProduct`)) {
        CdashDomainLinksObject[["parentProduct"]] <-
          self$`parentProduct`$toSimpleType()
      }
      if (!is.null(self$`parentClass`)) {
        CdashDomainLinksObject[["parentClass"]] <-
          self$`parentClass`$toSimpleType()
      }
      if (!is.null(self$`priorVersion`)) {
        CdashDomainLinksObject[["priorVersion"]] <-
          self$`priorVersion`$toSimpleType()
      }
      return(CdashDomainLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashDomainLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashDomainLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- CdashDomainRef$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`parentProduct`)) {
        `parentproduct_object` <- CdashProductRef$new()
        `parentproduct_object`$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
        self$`parentProduct` <- `parentproduct_object`
      }
      if (!is.null(this_object$`parentClass`)) {
        `parentclass_object` <- CdashClassRef$new()
        `parentclass_object`$fromJSON(jsonlite::toJSON(this_object$`parentClass`, auto_unbox = TRUE, digits = NA))
        self$`parentClass` <- `parentclass_object`
      }
      if (!is.null(this_object$`priorVersion`)) {
        `priorversion_object` <- CdashDomainRef$new()
        `priorversion_object`$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
        self$`priorVersion` <- `priorversion_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CdashDomainLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashDomainLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashDomainLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- CdashDomainRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`parentProduct` <- CdashProductRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
      self$`parentClass` <- CdashClassRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentClass`, auto_unbox = TRUE, digits = NA))
      self$`priorVersion` <- CdashDomainRef$new()$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to CdashDomainLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CdashDomainLinks
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
# CdashDomainLinks$unlock()
#
## Below is an example to define the print function
# CdashDomainLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CdashDomainLinks$lock()

