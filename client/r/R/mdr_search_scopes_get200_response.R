#' Create a new MdrSearchScopesGet200Response
#'
#' @description
#' MdrSearchScopesGet200Response Class
#'
#' @docType class
#' @title MdrSearchScopesGet200Response
#' @description MdrSearchScopesGet200Response Class
#' @format An \code{R6Class} generator object
#' @field scopes  list(\link{DefaultSearchScopes}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MdrSearchScopesGet200Response <- R6::R6Class(
  "MdrSearchScopesGet200Response",
  public = list(
    `scopes` = NULL,

    #' @description
    #' Initialize a new MdrSearchScopesGet200Response class.
    #'
    #' @param scopes scopes
    #' @param ... Other optional arguments.
    initialize = function(`scopes` = NULL, ...) {
      if (!is.null(`scopes`)) {
        stopifnot(is.vector(`scopes`), length(`scopes`) != 0)
        sapply(`scopes`, function(x) stopifnot(R6::is.R6(x)))
        self$`scopes` <- `scopes`
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
    #' @return MdrSearchScopesGet200Response as a base R list.
    #' @examples
    #' # convert array of MdrSearchScopesGet200Response (x) to a data frame
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
    #' Convert MdrSearchScopesGet200Response to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MdrSearchScopesGet200ResponseObject <- list()
      if (!is.null(self$`scopes`)) {
        MdrSearchScopesGet200ResponseObject[["scopes"]] <-
          lapply(self$`scopes`, function(x) x$toSimpleType())
      }
      return(MdrSearchScopesGet200ResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MdrSearchScopesGet200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of MdrSearchScopesGet200Response
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`scopes`)) {
        self$`scopes` <- ApiClient$new()$deserializeObj(this_object$`scopes`, "array[DefaultSearchScopes]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MdrSearchScopesGet200Response in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MdrSearchScopesGet200Response
    #'
    #' @param input_json the JSON input
    #' @return the instance of MdrSearchScopesGet200Response
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`scopes` <- ApiClient$new()$deserializeObj(this_object$`scopes`, "array[DefaultSearchScopes]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to MdrSearchScopesGet200Response and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MdrSearchScopesGet200Response
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
# MdrSearchScopesGet200Response$unlock()
#
## Below is an example to define the print function
# MdrSearchScopesGet200Response$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MdrSearchScopesGet200Response$lock()

