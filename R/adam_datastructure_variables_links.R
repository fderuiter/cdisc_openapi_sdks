#' Create a new AdamDatastructureVariablesLinks
#'
#' @description
#' AdamDatastructureVariablesLinks Class
#'
#' @docType class
#' @title AdamDatastructureVariablesLinks
#' @description AdamDatastructureVariablesLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{AdamDatastructureVariablesRef} [optional]
#' @field parentProduct  \link{AdamProductRef} [optional]
#' @field priorVersion  \link{AdamDatastructureVariablesRef} [optional]
#' @field analysisVariables  list(\link{AdamVariableRefElement}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdamDatastructureVariablesLinks <- R6::R6Class(
  "AdamDatastructureVariablesLinks",
  public = list(
    `item_self` = NULL,
    `parentProduct` = NULL,
    `priorVersion` = NULL,
    `analysisVariables` = NULL,

    #' @description
    #' Initialize a new AdamDatastructureVariablesLinks class.
    #'
    #' @param item_self item_self
    #' @param parentProduct parentProduct
    #' @param priorVersion priorVersion
    #' @param analysisVariables analysisVariables
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `parentProduct` = NULL, `priorVersion` = NULL, `analysisVariables` = NULL, ...) {
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
      if (!is.null(`analysisVariables`)) {
        stopifnot(is.vector(`analysisVariables`), length(`analysisVariables`) != 0)
        sapply(`analysisVariables`, function(x) stopifnot(R6::is.R6(x)))
        self$`analysisVariables` <- `analysisVariables`
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
    #' @return AdamDatastructureVariablesLinks as a base R list.
    #' @examples
    #' # convert array of AdamDatastructureVariablesLinks (x) to a data frame
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
    #' Convert AdamDatastructureVariablesLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdamDatastructureVariablesLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        AdamDatastructureVariablesLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`parentProduct`)) {
        AdamDatastructureVariablesLinksObject[["parentProduct"]] <-
          self$`parentProduct`$toSimpleType()
      }
      if (!is.null(self$`priorVersion`)) {
        AdamDatastructureVariablesLinksObject[["priorVersion"]] <-
          self$`priorVersion`$toSimpleType()
      }
      if (!is.null(self$`analysisVariables`)) {
        AdamDatastructureVariablesLinksObject[["analysisVariables"]] <-
          lapply(self$`analysisVariables`, function(x) x$toSimpleType())
      }
      return(AdamDatastructureVariablesLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdamDatastructureVariablesLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdamDatastructureVariablesLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- AdamDatastructureVariablesRef$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`parentProduct`)) {
        `parentproduct_object` <- AdamProductRef$new()
        `parentproduct_object`$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
        self$`parentProduct` <- `parentproduct_object`
      }
      if (!is.null(this_object$`priorVersion`)) {
        `priorversion_object` <- AdamDatastructureVariablesRef$new()
        `priorversion_object`$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
        self$`priorVersion` <- `priorversion_object`
      }
      if (!is.null(this_object$`analysisVariables`)) {
        self$`analysisVariables` <- ApiClient$new()$deserializeObj(this_object$`analysisVariables`, "array[AdamVariableRefElement]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdamDatastructureVariablesLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdamDatastructureVariablesLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdamDatastructureVariablesLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- AdamDatastructureVariablesRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`parentProduct` <- AdamProductRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
      self$`priorVersion` <- AdamDatastructureVariablesRef$new()$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
      self$`analysisVariables` <- ApiClient$new()$deserializeObj(this_object$`analysisVariables`, "array[AdamVariableRefElement]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AdamDatastructureVariablesLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdamDatastructureVariablesLinks
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
# AdamDatastructureVariablesLinks$unlock()
#
## Below is an example to define the print function
# AdamDatastructureVariablesLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdamDatastructureVariablesLinks$lock()

