#' Create a new ExportSdtmWorkbook
#'
#' @description
#' ExportSdtmWorkbook Class
#'
#' @docType class
#' @title ExportSdtmWorkbook
#' @description ExportSdtmWorkbook Class
#' @format An \code{R6Class} generator object
#' @field class-variables  list(\link{ExportSdtmClassVariablesRow}) [optional]
#' @field dataset-variables  list(\link{ExportSdtmDatasetVariablesRow}) [optional]
#' @field datasets  list(\link{ExportSdtmDatasetsRow}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExportSdtmWorkbook <- R6::R6Class(
  "ExportSdtmWorkbook",
  public = list(
    `class-variables` = NULL,
    `dataset-variables` = NULL,
    `datasets` = NULL,

    #' @description
    #' Initialize a new ExportSdtmWorkbook class.
    #'
    #' @param class-variables class-variables
    #' @param dataset-variables dataset-variables
    #' @param datasets datasets
    #' @param ... Other optional arguments.
    initialize = function(`class-variables` = NULL, `dataset-variables` = NULL, `datasets` = NULL, ...) {
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
      if (!is.null(`datasets`)) {
        stopifnot(is.vector(`datasets`), length(`datasets`) != 0)
        sapply(`datasets`, function(x) stopifnot(R6::is.R6(x)))
        self$`datasets` <- `datasets`
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
    #' @return ExportSdtmWorkbook as a base R list.
    #' @examples
    #' # convert array of ExportSdtmWorkbook (x) to a data frame
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
    #' Convert ExportSdtmWorkbook to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ExportSdtmWorkbookObject <- list()
      if (!is.null(self$`class-variables`)) {
        ExportSdtmWorkbookObject[["class-variables"]] <-
          lapply(self$`class-variables`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`dataset-variables`)) {
        ExportSdtmWorkbookObject[["dataset-variables"]] <-
          lapply(self$`dataset-variables`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`datasets`)) {
        ExportSdtmWorkbookObject[["datasets"]] <-
          lapply(self$`datasets`, function(x) x$toSimpleType())
      }
      return(ExportSdtmWorkbookObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportSdtmWorkbook
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportSdtmWorkbook
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`class-variables`)) {
        self$`class-variables` <- ApiClient$new()$deserializeObj(this_object$`class-variables`, "array[ExportSdtmClassVariablesRow]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`dataset-variables`)) {
        self$`dataset-variables` <- ApiClient$new()$deserializeObj(this_object$`dataset-variables`, "array[ExportSdtmDatasetVariablesRow]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`datasets`)) {
        self$`datasets` <- ApiClient$new()$deserializeObj(this_object$`datasets`, "array[ExportSdtmDatasetsRow]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ExportSdtmWorkbook in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportSdtmWorkbook
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportSdtmWorkbook
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`class-variables` <- ApiClient$new()$deserializeObj(this_object$`class-variables`, "array[ExportSdtmClassVariablesRow]", loadNamespace("openapi"))
      self$`dataset-variables` <- ApiClient$new()$deserializeObj(this_object$`dataset-variables`, "array[ExportSdtmDatasetVariablesRow]", loadNamespace("openapi"))
      self$`datasets` <- ApiClient$new()$deserializeObj(this_object$`datasets`, "array[ExportSdtmDatasetsRow]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ExportSdtmWorkbook and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ExportSdtmWorkbook
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
# ExportSdtmWorkbook$unlock()
#
## Below is an example to define the print function
# ExportSdtmWorkbook$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExportSdtmWorkbook$lock()

