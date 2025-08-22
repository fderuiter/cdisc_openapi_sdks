#' Create a new CdashigScenario
#'
#' @description
#' CdashigScenario Class
#'
#' @docType class
#' @title CdashigScenario
#' @description CdashigScenario Class
#' @format An \code{R6Class} generator object
#' @field ordinal  character [optional]
#' @field domain  character [optional]
#' @field scenario  character [optional]
#' @field _links  \link{CdashigScenarioLinks} [optional]
#' @field fields  list(\link{CdashigScenarioField}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CdashigScenario <- R6::R6Class(
  "CdashigScenario",
  public = list(
    `ordinal` = NULL,
    `domain` = NULL,
    `scenario` = NULL,
    `_links` = NULL,
    `fields` = NULL,

    #' @description
    #' Initialize a new CdashigScenario class.
    #'
    #' @param ordinal ordinal
    #' @param domain domain
    #' @param scenario scenario
    #' @param _links _links
    #' @param fields fields
    #' @param ... Other optional arguments.
    initialize = function(`ordinal` = NULL, `domain` = NULL, `scenario` = NULL, `_links` = NULL, `fields` = NULL, ...) {
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
      if (!is.null(`fields`)) {
        stopifnot(is.vector(`fields`), length(`fields`) != 0)
        sapply(`fields`, function(x) stopifnot(R6::is.R6(x)))
        self$`fields` <- `fields`
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
    #' @return CdashigScenario as a base R list.
    #' @examples
    #' # convert array of CdashigScenario (x) to a data frame
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
    #' Convert CdashigScenario to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CdashigScenarioObject <- list()
      if (!is.null(self$`ordinal`)) {
        CdashigScenarioObject[["ordinal"]] <-
          self$`ordinal`
      }
      if (!is.null(self$`domain`)) {
        CdashigScenarioObject[["domain"]] <-
          self$`domain`
      }
      if (!is.null(self$`scenario`)) {
        CdashigScenarioObject[["scenario"]] <-
          self$`scenario`
      }
      if (!is.null(self$`_links`)) {
        CdashigScenarioObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      if (!is.null(self$`fields`)) {
        CdashigScenarioObject[["fields"]] <-
          lapply(self$`fields`, function(x) x$toSimpleType())
      }
      return(CdashigScenarioObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashigScenario
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashigScenario
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
        `_links_object` <- CdashigScenarioLinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      if (!is.null(this_object$`fields`)) {
        self$`fields` <- ApiClient$new()$deserializeObj(this_object$`fields`, "array[CdashigScenarioField]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CdashigScenario in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashigScenario
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashigScenario
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ordinal` <- this_object$`ordinal`
      self$`domain` <- this_object$`domain`
      self$`scenario` <- this_object$`scenario`
      self$`_links` <- CdashigScenarioLinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self$`fields` <- ApiClient$new()$deserializeObj(this_object$`fields`, "array[CdashigScenarioField]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CdashigScenario and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CdashigScenario
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
# CdashigScenario$unlock()
#
## Below is an example to define the print function
# CdashigScenario$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CdashigScenario$lock()

