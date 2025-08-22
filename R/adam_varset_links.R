#' Create a new AdamVarsetLinks
#'
#' @description
#' AdamVarsetLinks Class
#'
#' @docType class
#' @title AdamVarsetLinks
#' @description AdamVarsetLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{AdamVarsetRef} [optional]
#' @field parentProduct  \link{AdamProductRef} [optional]
#' @field parentDatastructure  \link{AdamDatastructureRef} [optional]
#' @field priorVersion  \link{AdamVarsetRef} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdamVarsetLinks <- R6::R6Class(
  "AdamVarsetLinks",
  public = list(
    `item_self` = NULL,
    `parentProduct` = NULL,
    `parentDatastructure` = NULL,
    `priorVersion` = NULL,

    #' @description
    #' Initialize a new AdamVarsetLinks class.
    #'
    #' @param item_self item_self
    #' @param parentProduct parentProduct
    #' @param parentDatastructure parentDatastructure
    #' @param priorVersion priorVersion
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `parentProduct` = NULL, `parentDatastructure` = NULL, `priorVersion` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
      }
      if (!is.null(`parentProduct`)) {
        stopifnot(R6::is.R6(`parentProduct`))
        self$`parentProduct` <- `parentProduct`
      }
      if (!is.null(`parentDatastructure`)) {
        stopifnot(R6::is.R6(`parentDatastructure`))
        self$`parentDatastructure` <- `parentDatastructure`
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
    #' @return AdamVarsetLinks as a base R list.
    #' @examples
    #' # convert array of AdamVarsetLinks (x) to a data frame
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
    #' Convert AdamVarsetLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdamVarsetLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        AdamVarsetLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`parentProduct`)) {
        AdamVarsetLinksObject[["parentProduct"]] <-
          self$`parentProduct`$toSimpleType()
      }
      if (!is.null(self$`parentDatastructure`)) {
        AdamVarsetLinksObject[["parentDatastructure"]] <-
          self$`parentDatastructure`$toSimpleType()
      }
      if (!is.null(self$`priorVersion`)) {
        AdamVarsetLinksObject[["priorVersion"]] <-
          self$`priorVersion`$toSimpleType()
      }
      return(AdamVarsetLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdamVarsetLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdamVarsetLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- AdamVarsetRef$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`parentProduct`)) {
        `parentproduct_object` <- AdamProductRef$new()
        `parentproduct_object`$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
        self$`parentProduct` <- `parentproduct_object`
      }
      if (!is.null(this_object$`parentDatastructure`)) {
        `parentdatastructure_object` <- AdamDatastructureRef$new()
        `parentdatastructure_object`$fromJSON(jsonlite::toJSON(this_object$`parentDatastructure`, auto_unbox = TRUE, digits = NA))
        self$`parentDatastructure` <- `parentdatastructure_object`
      }
      if (!is.null(this_object$`priorVersion`)) {
        `priorversion_object` <- AdamVarsetRef$new()
        `priorversion_object`$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
        self$`priorVersion` <- `priorversion_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdamVarsetLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdamVarsetLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdamVarsetLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- AdamVarsetRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`parentProduct` <- AdamProductRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
      self$`parentDatastructure` <- AdamDatastructureRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentDatastructure`, auto_unbox = TRUE, digits = NA))
      self$`priorVersion` <- AdamVarsetRef$new()$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to AdamVarsetLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdamVarsetLinks
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
# AdamVarsetLinks$unlock()
#
## Below is an example to define the print function
# AdamVarsetLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdamVarsetLinks$lock()

