#' Create a new SdtmClassVariableLinks
#'
#' @description
#' SdtmClassVariableLinks Class
#'
#' @docType class
#' @title SdtmClassVariableLinks
#' @description SdtmClassVariableLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{SdtmClassVariableRef} [optional]
#' @field parentProduct  \link{SdtmProductRef} [optional]
#' @field parentClass  \link{SdtmClassRef} [optional]
#' @field qualifiesVariables  list(\link{SdtmClassVariableRefQualifies}) [optional]
#' @field rootItem  \link{RootSdtmClassVariableRef} [optional]
#' @field priorVersion  \link{SdtmClassVariableRef} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SdtmClassVariableLinks <- R6::R6Class(
  "SdtmClassVariableLinks",
  public = list(
    `item_self` = NULL,
    `parentProduct` = NULL,
    `parentClass` = NULL,
    `qualifiesVariables` = NULL,
    `rootItem` = NULL,
    `priorVersion` = NULL,

    #' @description
    #' Initialize a new SdtmClassVariableLinks class.
    #'
    #' @param item_self item_self
    #' @param parentProduct parentProduct
    #' @param parentClass parentClass
    #' @param qualifiesVariables qualifiesVariables
    #' @param rootItem rootItem
    #' @param priorVersion priorVersion
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `parentProduct` = NULL, `parentClass` = NULL, `qualifiesVariables` = NULL, `rootItem` = NULL, `priorVersion` = NULL, ...) {
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
      if (!is.null(`qualifiesVariables`)) {
        stopifnot(is.vector(`qualifiesVariables`), length(`qualifiesVariables`) != 0)
        sapply(`qualifiesVariables`, function(x) stopifnot(R6::is.R6(x)))
        self$`qualifiesVariables` <- `qualifiesVariables`
      }
      if (!is.null(`rootItem`)) {
        stopifnot(R6::is.R6(`rootItem`))
        self$`rootItem` <- `rootItem`
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
    #' @return SdtmClassVariableLinks as a base R list.
    #' @examples
    #' # convert array of SdtmClassVariableLinks (x) to a data frame
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
    #' Convert SdtmClassVariableLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SdtmClassVariableLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        SdtmClassVariableLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`parentProduct`)) {
        SdtmClassVariableLinksObject[["parentProduct"]] <-
          self$`parentProduct`$toSimpleType()
      }
      if (!is.null(self$`parentClass`)) {
        SdtmClassVariableLinksObject[["parentClass"]] <-
          self$`parentClass`$toSimpleType()
      }
      if (!is.null(self$`qualifiesVariables`)) {
        SdtmClassVariableLinksObject[["qualifiesVariables"]] <-
          lapply(self$`qualifiesVariables`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`rootItem`)) {
        SdtmClassVariableLinksObject[["rootItem"]] <-
          self$`rootItem`$toSimpleType()
      }
      if (!is.null(self$`priorVersion`)) {
        SdtmClassVariableLinksObject[["priorVersion"]] <-
          self$`priorVersion`$toSimpleType()
      }
      return(SdtmClassVariableLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SdtmClassVariableLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of SdtmClassVariableLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- SdtmClassVariableRef$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`parentProduct`)) {
        `parentproduct_object` <- SdtmProductRef$new()
        `parentproduct_object`$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
        self$`parentProduct` <- `parentproduct_object`
      }
      if (!is.null(this_object$`parentClass`)) {
        `parentclass_object` <- SdtmClassRef$new()
        `parentclass_object`$fromJSON(jsonlite::toJSON(this_object$`parentClass`, auto_unbox = TRUE, digits = NA))
        self$`parentClass` <- `parentclass_object`
      }
      if (!is.null(this_object$`qualifiesVariables`)) {
        self$`qualifiesVariables` <- ApiClient$new()$deserializeObj(this_object$`qualifiesVariables`, "array[SdtmClassVariableRefQualifies]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`rootItem`)) {
        `rootitem_object` <- RootSdtmClassVariableRef$new()
        `rootitem_object`$fromJSON(jsonlite::toJSON(this_object$`rootItem`, auto_unbox = TRUE, digits = NA))
        self$`rootItem` <- `rootitem_object`
      }
      if (!is.null(this_object$`priorVersion`)) {
        `priorversion_object` <- SdtmClassVariableRef$new()
        `priorversion_object`$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
        self$`priorVersion` <- `priorversion_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SdtmClassVariableLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SdtmClassVariableLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of SdtmClassVariableLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- SdtmClassVariableRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`parentProduct` <- SdtmProductRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
      self$`parentClass` <- SdtmClassRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentClass`, auto_unbox = TRUE, digits = NA))
      self$`qualifiesVariables` <- ApiClient$new()$deserializeObj(this_object$`qualifiesVariables`, "array[SdtmClassVariableRefQualifies]", loadNamespace("openapi"))
      self$`rootItem` <- RootSdtmClassVariableRef$new()$fromJSON(jsonlite::toJSON(this_object$`rootItem`, auto_unbox = TRUE, digits = NA))
      self$`priorVersion` <- SdtmClassVariableRef$new()$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to SdtmClassVariableLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SdtmClassVariableLinks
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
# SdtmClassVariableLinks$unlock()
#
## Below is an example to define the print function
# SdtmClassVariableLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SdtmClassVariableLinks$lock()

