#' Create a new ExportSendigDatasetsTable
#'
#' @description
#' ExportSendigDatasetsTable Class
#'
#' @docType class
#' @title ExportSendigDatasetsTable
#' @description ExportSendigDatasetsTable Class
#' @format An \code{R6Class} generator object
#' @field datasets  list(\link{ExportSendigDatasetsRow}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExportSendigDatasetsTable <- R6::R6Class(
  "ExportSendigDatasetsTable",
  public = list(
    `datasets` = NULL,

    #' @description
    #' Initialize a new ExportSendigDatasetsTable class.
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
    #' @return ExportSendigDatasetsTable as a base R list.
    #' @examples
    #' # convert array of ExportSendigDatasetsTable (x) to a data frame
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
    #' Convert ExportSendigDatasetsTable to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ExportSendigDatasetsTableObject <- list()
      if (!is.null(self$`datasets`)) {
        ExportSendigDatasetsTableObject[["datasets"]] <-
          lapply(self$`datasets`, function(x) x$toSimpleType())
      }
      return(ExportSendigDatasetsTableObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportSendigDatasetsTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportSendigDatasetsTable
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`datasets`)) {
        self$`datasets` <- ApiClient$new()$deserializeObj(this_object$`datasets`, "array[ExportSendigDatasetsRow]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ExportSendigDatasetsTable in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportSendigDatasetsTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportSendigDatasetsTable
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`datasets` <- ApiClient$new()$deserializeObj(this_object$`datasets`, "array[ExportSendigDatasetsRow]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ExportSendigDatasetsTable and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ExportSendigDatasetsTable
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
# ExportSendigDatasetsTable$unlock()
#
## Below is an example to define the print function
# ExportSendigDatasetsTable$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExportSendigDatasetsTable$lock()

