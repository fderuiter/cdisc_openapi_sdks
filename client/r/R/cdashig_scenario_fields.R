#' Create a new CdashigScenarioFields
#'
#' @description
#' CdashigScenarioFields Class
#'
#' @docType class
#' @title CdashigScenarioFields
#' @description CdashigScenarioFields Class
#' @format An \code{R6Class} generator object
#' @field ordinal  character [optional]
#' @field domain  character [optional]
#' @field scenario  character [optional]
#' @field _links  \link{CdashigScenarioFieldsLinks} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CdashigScenarioFields <- R6::R6Class(
  "CdashigScenarioFields",
  public = list(
    `ordinal` = NULL,
    `domain` = NULL,
    `scenario` = NULL,
    `_links` = NULL,

    #' @description
    #' Initialize a new CdashigScenarioFields class.
    #'
    #' @param ordinal ordinal
    #' @param domain domain
    #' @param scenario scenario
    #' @param _links _links
    #' @param ... Other optional arguments.
    initialize = function(`ordinal` = NULL, `domain` = NULL, `scenario` = NULL, `_links` = NULL, ...) {
      if (!is.null(`ordinal`)) {
        if (!(is.character(`ordinal`) && length(`ordinal`) == 1)) {
          stop(paste("Error! Invalid data for `ordinal`. Must be a string:", `ordinal`))
        }
        self$`ordinal` <- `ordinal`
      }
      if (!is.null(`domain`)) {
        if (!(is.character(`domain`) && length(`domain`) == 1)) {
          stop(paste("Error! Invalid data for `domain`. Must be a string:", `domain`))
        }
        self$`domain` <- `domain`
      }
      if (!is.null(`scenario`)) {
        if (!(is.character(`scenario`) && length(`scenario`) == 1)) {
          stop(paste("Error! Invalid data for `scenario`. Must be a string:", `scenario`))
        }
        self$`scenario` <- `scenario`
      }
      if (!is.null(`_links`)) {
        stopifnot(R6::is.R6(`_links`))
        self$`_links` <- `_links`
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
    #' @return CdashigScenarioFields as a base R list.
    #' @examples
    #' # convert array of CdashigScenarioFields (x) to a data frame
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
    #' Convert CdashigScenarioFields to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CdashigScenarioFieldsObject <- list()
      if (!is.null(self$`ordinal`)) {
        CdashigScenarioFieldsObject[["ordinal"]] <-
          self$`ordinal`
      }
      if (!is.null(self$`domain`)) {
        CdashigScenarioFieldsObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`scenario`)) {
        CdashigScenarioFieldsObject[["scenario"]] <-
          self$`scenario`
      }
      if (!is.null(self$`_links`)) {
        CdashigScenarioFieldsObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      return(CdashigScenarioFieldsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashigScenarioFields
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashigScenarioFields
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ordinal`)) {
        self$`ordinal` <- this_object$`ordinal`
      }
      if (!is.null(this_object$`domain`)) {
        self$`domain` <- this_object$`domain`
      }
      if (!is.null(this_object$`scenario`)) {
        self$`scenario` <- this_object$`scenario`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- CdashigScenarioFieldsLinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CdashigScenarioFields in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashigScenarioFields
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashigScenarioFields
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ordinal` <- this_object$`ordinal`
      self$`domain` <- this_object$`domain`
      self$`scenario` <- this_object$`scenario`
      self$`_links` <- CdashigScenarioFieldsLinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to CdashigScenarioFields and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CdashigScenarioFields
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
# CdashigScenarioFields$unlock()
#
## Below is an example to define the print function
# CdashigScenarioFields$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CdashigScenarioFields$lock()

