#' Create a new ExportCdashigTable
#'
#' @description
#' ExportCdashigTable Class
#'
#' @docType class
#' @title ExportCdashigTable
#' @description ExportCdashigTable Class
#' @format An \code{R6Class} generator object
#' @field domain-variables  list(\link{ExportCdashigDomainVariablesRow}) [optional]
#' @field scenario-variables  list(\link{ExportCdashigScenarioVariablesRow}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExportCdashigTable <- R6::R6Class(
  "ExportCdashigTable",
  public = list(
    `domain-variables` = NULL,
    `scenario-variables` = NULL,

    #' @description
    #' Initialize a new ExportCdashigTable class.
    #'
    #' @param domain-variables domain-variables
    #' @param scenario-variables scenario-variables
    #' @param ... Other optional arguments.
    initialize = function(`domain-variables` = NULL, `scenario-variables` = NULL, ...) {
      if (!is.null(`domain-variables`)) {
        stopifnot(is.vector(`domain-variables`), length(`domain-variables`) != 0)
        sapply(`domain-variables`, function(x) stopifnot(R6::is.R6(x)))
        self$`domain-variables` <- `domain-variables`
      }
      if (!is.null(`scenario-variables`)) {
        stopifnot(is.vector(`scenario-variables`), length(`scenario-variables`) != 0)
        sapply(`scenario-variables`, function(x) stopifnot(R6::is.R6(x)))
        self$`scenario-variables` <- `scenario-variables`
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
    #' @return ExportCdashigTable as a base R list.
    #' @examples
    #' # convert array of ExportCdashigTable (x) to a data frame
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
    #' Convert ExportCdashigTable to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ExportCdashigTableObject <- list()
      if (!is.null(self$`domain-variables`)) {
        ExportCdashigTableObject[["domain-variables"]] <-
          lapply(self$`domain-variables`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`scenario-variables`)) {
        ExportCdashigTableObject[["scenario-variables"]] <-
          lapply(self$`scenario-variables`, function(x) x$toSimpleType())
      }
      return(ExportCdashigTableObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportCdashigTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportCdashigTable
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`domain-variables`)) {
        self$`domain-variables` <- ApiClient$new()$deserializeObj(this_object$`domain-variables`, "array[ExportCdashigDomainVariablesRow]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`scenario-variables`)) {
        self$`scenario-variables` <- ApiClient$new()$deserializeObj(this_object$`scenario-variables`, "array[ExportCdashigScenarioVariablesRow]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ExportCdashigTable in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportCdashigTable
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportCdashigTable
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`domain-variables` <- ApiClient$new()$deserializeObj(this_object$`domain-variables`, "array[ExportCdashigDomainVariablesRow]", loadNamespace("openapi"))
      self$`scenario-variables` <- ApiClient$new()$deserializeObj(this_object$`scenario-variables`, "array[ExportCdashigScenarioVariablesRow]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ExportCdashigTable and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ExportCdashigTable
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
# ExportCdashigTable$unlock()
#
## Below is an example to define the print function
# ExportCdashigTable$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExportCdashigTable$lock()

