#' Create a new ExportSendigVariablesTable
#'
#' @description
#' ExportSendigVariablesTable Class
#'
#' @docType class
#' @title ExportSendigVariablesTable
#' @description ExportSendigVariablesTable Class
#' @format An \code{R6Class} generator object
#' @field variables  list(\link{ExportSendigVariablesRow}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExportSendigVariablesTable <- R6::R6Class(
  "ExportSendigVariablesTable",
  public = list(
    `variables` = NULL,

    #' @description
    #' Initialize a new ExportSendigVariablesTable class.
    #'
    #' @param variables variables
    #' @param ... Other optional arguments.
    initialize = function(`variables` = NULL, ...) {
      if (!is.null(`variables`)) {
        stopifnot(is.vector(`variables`), length(`variables`) != 0)
        sapply(`variables`, function(x) stopifnot(R6::is.R6(x)))
        self$`variables` <- `variables`
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
    #' @return ExportSendigVariablesTable as a base R list.
    #' @examples
    #' # convert array of ExportSendigVariablesTable (x) to a data frame
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
    #' Convert ExportSendigVariablesTable to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ExportSendigVariablesTableObject <- list()
      if (!is.null(self$`variables`)) {
        ExportSendigVariablesTableObject[["variables"]] <-
          lapply(self$`variables`, function(x) x$toSimpleType())
      }
      return(ExportSendigVariablesTableObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportSendigVariablesTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportSendigVariablesTable
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`variables`)) {
        self$`variables` <- ApiClient$new()$deserializeObj(this_object$`variables`, "array[ExportSendigVariablesRow]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ExportSendigVariablesTable in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportSendigVariablesTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportSendigVariablesTable
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`variables` <- ApiClient$new()$deserializeObj(this_object$`variables`, "array[ExportSendigVariablesRow]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ExportSendigVariablesTable and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ExportSendigVariablesTable
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
# ExportSendigVariablesTable$unlock()
#
## Below is an example to define the print function
# ExportSendigVariablesTable$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExportSendigVariablesTable$lock()

