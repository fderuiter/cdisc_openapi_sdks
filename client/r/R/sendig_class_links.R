#' Create a new SendigClassLinks
#'
#' @description
#' SendigClassLinks Class
#'
#' @docType class
#' @title SendigClassLinks
#' @description SendigClassLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{SendigClassRef} [optional]
#' @field modelClass  \link{SdtmClassRef} [optional]
#' @field parentProduct  \link{SendigProductRef} [optional]
#' @field parentClass  \link{SendigClassRef} [optional]
#' @field subclasses  list(\link{SendigClassRefSubclass}) [optional]
#' @field priorVersion  \link{SendigClassRef} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SendigClassLinks <- R6::R6Class(
  "SendigClassLinks",
  public = list(
    `item_self` = NULL,
    `modelClass` = NULL,
    `parentProduct` = NULL,
    `parentClass` = NULL,
    `subclasses` = NULL,
    `priorVersion` = NULL,

    #' @description
    #' Initialize a new SendigClassLinks class.
    #'
    #' @param item_self item_self
    #' @param modelClass modelClass
    #' @param parentProduct parentProduct
    #' @param parentClass parentClass
    #' @param subclasses subclasses
    #' @param priorVersion priorVersion
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `modelClass` = NULL, `parentProduct` = NULL, `parentClass` = NULL, `subclasses` = NULL, `priorVersion` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
      }
      if (!is.null(`modelClass`)) {
        stopifnot(R6::is.R6(`modelClass`))
        self$`modelClass` <- `modelClass`
      }
      if (!is.null(`parentProduct`)) {
        stopifnot(R6::is.R6(`parentProduct`))
        self$`parentProduct` <- `parentProduct`
      }
      if (!is.null(`parentClass`)) {
        stopifnot(R6::is.R6(`parentClass`))
        self$`parentClass` <- `parentClass`
      }
      if (!is.null(`subclasses`)) {
        stopifnot(is.vector(`subclasses`), length(`subclasses`) != 0)
        sapply(`subclasses`, function(x) stopifnot(R6::is.R6(x)))
        self$`subclasses` <- `subclasses`
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
    #' @return SendigClassLinks as a base R list.
    #' @examples
    #' # convert array of SendigClassLinks (x) to a data frame
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
    #' Convert SendigClassLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SendigClassLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        SendigClassLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`modelClass`)) {
        SendigClassLinksObject[["modelClass"]] <-
          self$`modelClass`$toSimpleType()
      }
      if (!is.null(self$`parentProduct`)) {
        SendigClassLinksObject[["parentProduct"]] <-
          self$`parentProduct`$toSimpleType()
      }
      if (!is.null(self$`parentClass`)) {
        SendigClassLinksObject[["parentClass"]] <-
          self$`parentClass`$toSimpleType()
      }
      if (!is.null(self$`subclasses`)) {
        SendigClassLinksObject[["subclasses"]] <-
          lapply(self$`subclasses`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`priorVersion`)) {
        SendigClassLinksObject[["priorVersion"]] <-
          self$`priorVersion`$toSimpleType()
      }
      return(SendigClassLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SendigClassLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of SendigClassLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- SendigClassRef$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`modelClass`)) {
        `modelclass_object` <- SdtmClassRef$new()
        `modelclass_object`$fromJSON(jsonlite::toJSON(this_object$`modelClass`, auto_unbox = TRUE, digits = NA))
        self$`modelClass` <- `modelclass_object`
      }
      if (!is.null(this_object$`parentProduct`)) {
        `parentproduct_object` <- SendigProductRef$new()
        `parentproduct_object`$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
        self$`parentProduct` <- `parentproduct_object`
      }
      if (!is.null(this_object$`parentClass`)) {
        `parentclass_object` <- SendigClassRef$new()
        `parentclass_object`$fromJSON(jsonlite::toJSON(this_object$`parentClass`, auto_unbox = TRUE, digits = NA))
        self$`parentClass` <- `parentclass_object`
      }
      if (!is.null(this_object$`subclasses`)) {
        self$`subclasses` <- ApiClient$new()$deserializeObj(this_object$`subclasses`, "array[SendigClassRefSubclass]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`priorVersion`)) {
        `priorversion_object` <- SendigClassRef$new()
        `priorversion_object`$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
        self$`priorVersion` <- `priorversion_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SendigClassLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SendigClassLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of SendigClassLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- SendigClassRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`modelClass` <- SdtmClassRef$new()$fromJSON(jsonlite::toJSON(this_object$`modelClass`, auto_unbox = TRUE, digits = NA))
      self$`parentProduct` <- SendigProductRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
      self$`parentClass` <- SendigClassRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentClass`, auto_unbox = TRUE, digits = NA))
      self$`subclasses` <- ApiClient$new()$deserializeObj(this_object$`subclasses`, "array[SendigClassRefSubclass]", loadNamespace("openapi"))
      self$`priorVersion` <- SendigClassRef$new()$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to SendigClassLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SendigClassLinks
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
# SendigClassLinks$unlock()
#
## Below is an example to define the print function
# SendigClassLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SendigClassLinks$lock()

