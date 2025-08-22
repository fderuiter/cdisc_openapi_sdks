#' Create a new ExportSdtmigDatasetsTable
#'
#' @description
#' ExportSdtmigDatasetsTable Class
#'
#' @docType class
#' @title ExportSdtmigDatasetsTable
#' @description ExportSdtmigDatasetsTable Class
#' @format An \code{R6Class} generator object
#' @field datasets  list(\link{ExportSdtmigDatasetsRow}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExportSdtmigDatasetsTable <- R6::R6Class(
  "ExportSdtmigDatasetsTable",
  public = list(
    `datasets` = NULL,

    #' @description
    #' Initialize a new ExportSdtmigDatasetsTable class.
    #'
    #' @param datasets datasets
    #' @param ... Other optional arguments.
    initialize = function(`datasets` = NULL, ...) {
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
    #' @return ExportSdtmigDatasetsTable as a base R list.
    #' @examples
    #' # convert array of ExportSdtmigDatasetsTable (x) to a data frame
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
    #' Convert ExportSdtmigDatasetsTable to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ExportSdtmigDatasetsTableObject <- list()
      if (!is.null(self$`datasets`)) {
        ExportSdtmigDatasetsTableObject[["datasets"]] <-
          lapply(self$`datasets`, function(x) x$toSimpleType())
      }
      return(ExportSdtmigDatasetsTableObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportSdtmigDatasetsTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportSdtmigDatasetsTable
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`datasets`)) {
        self$`datasets` <- ApiClient$new()$deserializeObj(this_object$`datasets`, "array[ExportSdtmigDatasetsRow]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ExportSdtmigDatasetsTable in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportSdtmigDatasetsTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportSdtmigDatasetsTable
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`datasets` <- ApiClient$new()$deserializeObj(this_object$`datasets`, "array[ExportSdtmigDatasetsRow]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ExportSdtmigDatasetsTable and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ExportSdtmigDatasetsTable
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
# ExportSdtmigDatasetsTable$unlock()
#
## Below is an example to define the print function
# ExportSdtmigDatasetsTable$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExportSdtmigDatasetsTable$lock()

