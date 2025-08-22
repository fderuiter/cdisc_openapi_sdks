#' Create a new AdamVariable
#'
#' @description
#' AdamVariable Class
#'
#' @docType class
#' @title AdamVariable
#' @description AdamVariable Class
#' @format An \code{R6Class} generator object
#' @field ordinal  character [optional]
#' @field name  character [optional]
#' @field label  character [optional]
#' @field description  character [optional]
#' @field core  character [optional]
#' @field simpleDatatype  character [optional]
#' @field describedValueDomain  character [optional]
#' @field valueList  list(character) [optional]
#' @field _links  \link{AdamVariableLinks} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdamVariable <- R6::R6Class(
  "AdamVariable",
  public = list(
    `ordinal` = NULL,
    `name` = NULL,
    `label` = NULL,
    `description` = NULL,
    `core` = NULL,
    `simpleDatatype` = NULL,
    `describedValueDomain` = NULL,
    `valueList` = NULL,
    `_links` = NULL,

    #' @description
    #' Initialize a new AdamVariable class.
    #'
    #' @param ordinal ordinal
    #' @param name name
    #' @param label label
    #' @param description description
    #' @param core core
    #' @param simpleDatatype simpleDatatype
    #' @param describedValueDomain describedValueDomain
    #' @param valueList valueList
    #' @param _links _links
    #' @param ... Other optional arguments.
    initialize = function(`ordinal` = NULL, `name` = NULL, `label` = NULL, `description` = NULL, `core` = NULL, `simpleDatatype` = NULL, `describedValueDomain` = NULL, `valueList` = NULL, `_links` = NULL, ...) {
      if (!is.null(`ordinal`)) {
        if (!(is.character(`ordinal`) && length(`ordinal`) == 1)) {
          stop(paste("Error! Invalid data for `ordinal`. Must be a string:", `ordinal`))
        }
        self$`ordinal` <- `ordinal`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`core`)) {
        if (!(is.character(`core`) && length(`core`) == 1)) {
          stop(paste("Error! Invalid data for `core`. Must be a string:", `core`))
        }
        self$`core` <- `core`
      }
      if (!is.null(`simpleDatatype`)) {
        if (!(is.character(`simpleDatatype`) && length(`simpleDatatype`) == 1)) {
          stop(paste("Error! Invalid data for `simpleDatatype`. Must be a string:", `simpleDatatype`))
        }
        self$`simpleDatatype` <- `simpleDatatype`
      }
      if (!is.null(`describedValueDomain`)) {
        if (!(is.character(`describedValueDomain`) && length(`describedValueDomain`) == 1)) {
          stop(paste("Error! Invalid data for `describedValueDomain`. Must be a string:", `describedValueDomain`))
        }
        self$`describedValueDomain` <- `describedValueDomain`
      }
      if (!is.null(`valueList`)) {
        stopifnot(is.vector(`valueList`), length(`valueList`) != 0)
        sapply(`valueList`, function(x) stopifnot(is.character(x)))
        self$`valueList` <- `valueList`
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
    #' @return AdamVariable as a base R list.
    #' @examples
    #' # convert array of AdamVariable (x) to a data frame
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
    #' Convert AdamVariable to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdamVariableObject <- list()
      if (!is.null(self$`ordinal`)) {
        AdamVariableObject[["ordinal"]] <-
          self$`ordinal`
      }
      if (!is.null(self$`name`)) {
        AdamVariableObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`label`)) {
        AdamVariableObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`description`)) {
        AdamVariableObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`core`)) {
        AdamVariableObject[["core"]] <-
          self$`core`
      }
      if (!is.null(self$`simpleDatatype`)) {
        AdamVariableObject[["simpleDatatype"]] <-
          self$`simpleDatatype`
      }
      if (!is.null(self$`describedValueDomain`)) {
        AdamVariableObject[["describedValueDomain"]] <-
          self$`describedValueDomain`
      }
      if (!is.null(self$`valueList`)) {
        AdamVariableObject[["valueList"]] <-
          self$`valueList`
      }
      if (!is.null(self$`_links`)) {
        AdamVariableObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      return(AdamVariableObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdamVariable
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdamVariable
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ordinal`)) {
        self$`ordinal` <- this_object$`ordinal`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`core`)) {
        self$`core` <- this_object$`core`
      }
      if (!is.null(this_object$`simpleDatatype`)) {
        self$`simpleDatatype` <- this_object$`simpleDatatype`
      }
      if (!is.null(this_object$`describedValueDomain`)) {
        self$`describedValueDomain` <- this_object$`describedValueDomain`
      }
      if (!is.null(this_object$`valueList`)) {
        self$`valueList` <- ApiClient$new()$deserializeObj(this_object$`valueList`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- AdamVariableLinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdamVariable in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdamVariable
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdamVariable
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ordinal` <- this_object$`ordinal`
      self$`name` <- this_object$`name`
      self$`label` <- this_object$`label`
      self$`description` <- this_object$`description`
      self$`core` <- this_object$`core`
      self$`simpleDatatype` <- this_object$`simpleDatatype`
      self$`describedValueDomain` <- this_object$`describedValueDomain`
      self$`valueList` <- ApiClient$new()$deserializeObj(this_object$`valueList`, "array[character]", loadNamespace("openapi"))
      self$`_links` <- AdamVariableLinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to AdamVariable and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdamVariable
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
# AdamVariable$unlock()
#
## Below is an example to define the print function
# AdamVariable$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdamVariable$lock()

