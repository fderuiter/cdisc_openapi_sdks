#' Create a new AdamProductDatastructuresLinks
#'
#' @description
#' AdamProductDatastructuresLinks Class
#'
#' @docType class
#' @title AdamProductDatastructuresLinks
#' @description AdamProductDatastructuresLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{AdamProductDatastructuresRef} [optional]
#' @field priorVersion  \link{AdamProductDatastructuresRef} [optional]
#' @field dataStructures  list(\link{AdamDatastructureRefElement}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdamProductDatastructuresLinks <- R6::R6Class(
  "AdamProductDatastructuresLinks",
  public = list(
    `item_self` = NULL,
    `priorVersion` = NULL,
    `dataStructures` = NULL,

    #' @description
    #' Initialize a new AdamProductDatastructuresLinks class.
    #'
    #' @param item_self item_self
    #' @param priorVersion priorVersion
    #' @param dataStructures dataStructures
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `priorVersion` = NULL, `dataStructures` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
      }
      if (!is.null(`priorVersion`)) {
        stopifnot(R6::is.R6(`priorVersion`))
        self$`priorVersion` <- `priorVersion`
      }
      if (!is.null(`dataStructures`)) {
        stopifnot(is.vector(`dataStructures`), length(`dataStructures`) != 0)
        sapply(`dataStructures`, function(x) stopifnot(R6::is.R6(x)))
        self$`dataStructures` <- `dataStructures`
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
    #' @return AdamProductDatastructuresLinks as a base R list.
    #' @examples
    #' # convert array of AdamProductDatastructuresLinks (x) to a data frame
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
    #' Convert AdamProductDatastructuresLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdamProductDatastructuresLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        AdamProductDatastructuresLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`priorVersion`)) {
        AdamProductDatastructuresLinksObject[["priorVersion"]] <-
          self$`priorVersion`$toSimpleType()
      }
      if (!is.null(self$`dataStructures`)) {
        AdamProductDatastructuresLinksObject[["dataStructures"]] <-
          lapply(self$`dataStructures`, function(x) x$toSimpleType())
      }
      return(AdamProductDatastructuresLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdamProductDatastructuresLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdamProductDatastructuresLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- AdamProductDatastructuresRef$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`priorVersion`)) {
        `priorversion_object` <- AdamProductDatastructuresRef$new()
        `priorversion_object`$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
        self$`priorVersion` <- `priorversion_object`
      }
      if (!is.null(this_object$`dataStructures`)) {
        self$`dataStructures` <- ApiClient$new()$deserializeObj(this_object$`dataStructures`, "array[AdamDatastructureRefElement]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdamProductDatastructuresLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdamProductDatastructuresLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdamProductDatastructuresLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- AdamProductDatastructuresRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`priorVersion` <- AdamProductDatastructuresRef$new()$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
      self$`dataStructures` <- ApiClient$new()$deserializeObj(this_object$`dataStructures`, "array[AdamDatastructureRefElement]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AdamProductDatastructuresLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdamProductDatastructuresLinks
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
# AdamProductDatastructuresLinks$unlock()
#
## Below is an example to define the print function
# AdamProductDatastructuresLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdamProductDatastructuresLinks$lock()

