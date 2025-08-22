#' Create a new ExportSdtmVariablesTable
#'
#' @description
#' ExportSdtmVariablesTable Class
#'
#' @docType class
#' @title ExportSdtmVariablesTable
#' @description ExportSdtmVariablesTable Class
#' @format An \code{R6Class} generator object
#' @field class-variables  list(\link{ExportSdtmClassVariablesRow}) [optional]
#' @field dataset-variables  list(\link{ExportSdtmDatasetVariablesRow}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExportSdtmVariablesTable <- R6::R6Class(
  "ExportSdtmVariablesTable",
  public = list(
    `class-variables` = NULL,
    `dataset-variables` = NULL,

    #' @description
    #' Initialize a new ExportSdtmVariablesTable class.
    #'
    #' @param class-variables class-variables
    #' @param dataset-variables dataset-variables
    #' @param ... Other optional arguments.
    initialize = function(`class-variables` = NULL, `dataset-variables` = NULL, ...) {
      if (!is.null(`class-variables`)) {
        stopifnot(is.vector(`class-variables`), length(`class-variables`) != 0)
        sapply(`class-variables`, function(x) stopifnot(R6::is.R6(x)))
        self$`class-variables` <- `class-variables`
      }
      if (!is.null(`dataset-variables`)) {
        stopifnot(is.vector(`dataset-variables`), length(`dataset-variables`) != 0)
        sapply(`dataset-variables`, function(x) stopifnot(R6::is.R6(x)))
        self$`dataset-variables` <- `dataset-variables`
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
    #' @return ExportSdtmVariablesTable as a base R list.
    #' @examples
    #' # convert array of ExportSdtmVariablesTable (x) to a data frame
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
    #' Convert ExportSdtmVariablesTable to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ExportSdtmVariablesTableObject <- list()
      if (!is.null(self$`class-variables`)) {
        ExportSdtmVariablesTableObject[["class-variables"]] <-
          lapply(self$`class-variables`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`dataset-variables`)) {
        ExportSdtmVariablesTableObject[["dataset-variables"]] <-
          lapply(self$`dataset-variables`, function(x) x$toSimpleType())
      }
      return(ExportSdtmVariablesTableObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportSdtmVariablesTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportSdtmVariablesTable
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`class-variables`)) {
        self$`class-variables` <- ApiClient$new()$deserializeObj(this_object$`class-variables`, "array[ExportSdtmClassVariablesRow]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`dataset-variables`)) {
        self$`dataset-variables` <- ApiClient$new()$deserializeObj(this_object$`dataset-variables`, "array[ExportSdtmDatasetVariablesRow]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ExportSdtmVariablesTable in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportSdtmVariablesTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportSdtmVariablesTable
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`class-variables` <- ApiClient$new()$deserializeObj(this_object$`class-variables`, "array[ExportSdtmClassVariablesRow]", loadNamespace("openapi"))
      self$`dataset-variables` <- ApiClient$new()$deserializeObj(this_object$`dataset-variables`, "array[ExportSdtmDatasetVariablesRow]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ExportSdtmVariablesTable and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ExportSdtmVariablesTable
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
# ExportSdtmVariablesTable$unlock()
#
## Below is an example to define the print function
# ExportSdtmVariablesTable$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExportSdtmVariablesTable$lock()

