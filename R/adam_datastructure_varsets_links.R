#' Create a new AdamDatastructureVarsetsLinks
#'
#' @description
#' AdamDatastructureVarsetsLinks Class
#'
#' @docType class
#' @title AdamDatastructureVarsetsLinks
#' @description AdamDatastructureVarsetsLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{AdamDatastructureVarsetsRef} [optional]
#' @field parentProduct  \link{AdamProductRef} [optional]
#' @field priorVersion  \link{AdamDatastructureVarsetsRef} [optional]
#' @field analysisVariableSets  list(\link{AdamVarsetRefElement}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdamDatastructureVarsetsLinks <- R6::R6Class(
  "AdamDatastructureVarsetsLinks",
  public = list(
    `item_self` = NULL,
    `parentProduct` = NULL,
    `priorVersion` = NULL,
    `analysisVariableSets` = NULL,

    #' @description
    #' Initialize a new AdamDatastructureVarsetsLinks class.
    #'
    #' @param item_self item_self
    #' @param parentProduct parentProduct
    #' @param priorVersion priorVersion
    #' @param analysisVariableSets analysisVariableSets
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `parentProduct` = NULL, `priorVersion` = NULL, `analysisVariableSets` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
      }
      if (!is.null(`parentProduct`)) {
        stopifnot(R6::is.R6(`parentProduct`))
        self$`parentProduct` <- `parentProduct`
      }
      if (!is.null(`priorVersion`)) {
        stopifnot(R6::is.R6(`priorVersion`))
        self$`priorVersion` <- `priorVersion`
      }
      if (!is.null(`analysisVariableSets`)) {
        stopifnot(is.vector(`analysisVariableSets`), length(`analysisVariableSets`) != 0)
        sapply(`analysisVariableSets`, function(x) stopifnot(R6::is.R6(x)))
        self$`analysisVariableSets` <- `analysisVariableSets`
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
    #' @return AdamDatastructureVarsetsLinks as a base R list.
    #' @examples
    #' # convert array of AdamDatastructureVarsetsLinks (x) to a data frame
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
    #' Convert AdamDatastructureVarsetsLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdamDatastructureVarsetsLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        AdamDatastructureVarsetsLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`parentProduct`)) {
        AdamDatastructureVarsetsLinksObject[["parentProduct"]] <-
          self$`parentProduct`$toSimpleType()
      }
      if (!is.null(self$`priorVersion`)) {
        AdamDatastructureVarsetsLinksObject[["priorVersion"]] <-
          self$`priorVersion`$toSimpleType()
      }
      if (!is.null(self$`analysisVariableSets`)) {
        AdamDatastructureVarsetsLinksObject[["analysisVariableSets"]] <-
          lapply(self$`analysisVariableSets`, function(x) x$toSimpleType())
      }
      return(AdamDatastructureVarsetsLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdamDatastructureVarsetsLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdamDatastructureVarsetsLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- AdamDatastructureVarsetsRef$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`parentProduct`)) {
        `parentproduct_object` <- AdamProductRef$new()
        `parentproduct_object`$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
        self$`parentProduct` <- `parentproduct_object`
      }
      if (!is.null(this_object$`priorVersion`)) {
        `priorversion_object` <- AdamDatastructureVarsetsRef$new()
        `priorversion_object`$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
        self$`priorVersion` <- `priorversion_object`
      }
      if (!is.null(this_object$`analysisVariableSets`)) {
        self$`analysisVariableSets` <- ApiClient$new()$deserializeObj(this_object$`analysisVariableSets`, "array[AdamVarsetRefElement]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdamDatastructureVarsetsLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdamDatastructureVarsetsLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdamDatastructureVarsetsLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- AdamDatastructureVarsetsRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`parentProduct` <- AdamProductRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
      self$`priorVersion` <- AdamDatastructureVarsetsRef$new()$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
      self$`analysisVariableSets` <- ApiClient$new()$deserializeObj(this_object$`analysisVariableSets`, "array[AdamVarsetRefElement]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AdamDatastructureVarsetsLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdamDatastructureVarsetsLinks
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
# AdamDatastructureVarsetsLinks$unlock()
#
## Below is an example to define the print function
# AdamDatastructureVarsetsLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdamDatastructureVarsetsLinks$lock()

