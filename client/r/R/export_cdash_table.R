#' Create a new ExportCdashTable
#'
#' @description
#' ExportCdashTable Class
#'
#' @docType class
#' @title ExportCdashTable
#' @description ExportCdashTable Class
#' @format An \code{R6Class} generator object
#' @field class-variables  list(\link{ExportCdashClassVariablesRow}) [optional]
#' @field domain-variables  list(\link{ExportCdashDomainVariablesRow}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExportCdashTable <- R6::R6Class(
  "ExportCdashTable",
  public = list(
    `class-variables` = NULL,
    `domain-variables` = NULL,

    #' @description
    #' Initialize a new ExportCdashTable class.
    #'
    #' @param class-variables class-variables
    #' @param domain-variables domain-variables
    #' @param ... Other optional arguments.
    initialize = function(`class-variables` = NULL, `domain-variables` = NULL, ...) {
      if (!is.null(`class-variables`)) {
        stopifnot(is.vector(`class-variables`), length(`class-variables`) != 0)
        sapply(`class-variables`, function(x) stopifnot(R6::is.R6(x)))
        self$`class-variables` <- `class-variables`
      }
      if (!is.null(`domain-variables`)) {
        stopifnot(is.vector(`domain-variables`), length(`domain-variables`) != 0)
        sapply(`domain-variables`, function(x) stopifnot(R6::is.R6(x)))
        self$`domain-variables` <- `domain-variables`
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
    #' @return ExportCdashTable as a base R list.
    #' @examples
    #' # convert array of ExportCdashTable (x) to a data frame
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
    #' Convert ExportCdashTable to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ExportCdashTableObject <- list()
      if (!is.null(self$`class-variables`)) {
        ExportCdashTableObject[["class-variables"]] <-
          lapply(self$`class-variables`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`domain-variables`)) {
        ExportCdashTableObject[["domain-variables"]] <-
          lapply(self$`domain-variables`, function(x) x$toSimpleType())
      }
      return(ExportCdashTableObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportCdashTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportCdashTable
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`class-variables`)) {
        self$`class-variables` <- ApiClient$new()$deserializeObj(this_object$`class-variables`, "array[ExportCdashClassVariablesRow]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`domain-variables`)) {
        self$`domain-variables` <- ApiClient$new()$deserializeObj(this_object$`domain-variables`, "array[ExportCdashDomainVariablesRow]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ExportCdashTable in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportCdashTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportCdashTable
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`class-variables` <- ApiClient$new()$deserializeObj(this_object$`class-variables`, "array[ExportCdashClassVariablesRow]", loadNamespace("openapi"))
      self$`domain-variables` <- ApiClient$new()$deserializeObj(this_object$`domain-variables`, "array[ExportCdashDomainVariablesRow]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ExportCdashTable and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ExportCdashTable
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
# ExportCdashTable$unlock()
#
## Below is an example to define the print function
# ExportCdashTable$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExportCdashTable$lock()

