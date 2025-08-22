#' Create a new SendigDatasetVariable
#'
#' @description
#' SendigDatasetVariable Class
#'
#' @docType class
#' @title SendigDatasetVariable
#' @description SendigDatasetVariable Class
#' @format An \code{R6Class} generator object
#' @field ordinal  character [optional]
#' @field name  character [optional]
#' @field label  character [optional]
#' @field description  character [optional]
#' @field role  character [optional]
#' @field simpleDatatype  character [optional]
#' @field core  character [optional]
#' @field describedValueDomain  character [optional]
#' @field valueList  list(character) [optional]
#' @field _links  \link{SendigDatasetVariableLinks} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SendigDatasetVariable <- R6::R6Class(
  "SendigDatasetVariable",
  public = list(
    `ordinal` = NULL,
    `name` = NULL,
    `label` = NULL,
    `description` = NULL,
    `role` = NULL,
    `simpleDatatype` = NULL,
    `core` = NULL,
    `describedValueDomain` = NULL,
    `valueList` = NULL,
    `_links` = NULL,

    #' @description
    #' Initialize a new SendigDatasetVariable class.
    #'
    #' @param ordinal ordinal
    #' @param name name
    #' @param label label
    #' @param description description
    #' @param role role
    #' @param simpleDatatype simpleDatatype
    #' @param core core
    #' @param describedValueDomain describedValueDomain
    #' @param valueList valueList
    #' @param _links _links
    #' @param ... Other optional arguments.
    initialize = function(`ordinal` = NULL, `name` = NULL, `label` = NULL, `description` = NULL, `role` = NULL, `simpleDatatype` = NULL, `core` = NULL, `describedValueDomain` = NULL, `valueList` = NULL, `_links` = NULL, ...) {
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
      if (!is.null(`role`)) {
        if (!(is.character(`role`) && length(`role`) == 1)) {
          stop(paste("Error! Invalid data for `role`. Must be a string:", `role`))
        }
        self$`role` <- `role`
      }
      if (!is.null(`simpleDatatype`)) {
        if (!(is.character(`simpleDatatype`) && length(`simpleDatatype`) == 1)) {
          stop(paste("Error! Invalid data for `simpleDatatype`. Must be a string:", `simpleDatatype`))
        }
        self$`simpleDatatype` <- `simpleDatatype`
      }
      if (!is.null(`core`)) {
        if (!(is.character(`core`) && length(`core`) == 1)) {
          stop(paste("Error! Invalid data for `core`. Must be a string:", `core`))
        }
        self$`core` <- `core`
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
    #' @return SendigDatasetVariable as a base R list.
    #' @examples
    #' # convert array of SendigDatasetVariable (x) to a data frame
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
    #' Convert SendigDatasetVariable to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SendigDatasetVariableObject <- list()
      if (!is.null(self$`ordinal`)) {
        SendigDatasetVariableObject[["ordinal"]] <-
          self$`ordinal`
      }
      if (!is.null(self$`name`)) {
        SendigDatasetVariableObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`label`)) {
        SendigDatasetVariableObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`description`)) {
        SendigDatasetVariableObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`role`)) {
        SendigDatasetVariableObject[["role"]] <-
          self$`role`
      }
      if (!is.null(self$`simpleDatatype`)) {
        SendigDatasetVariableObject[["simpleDatatype"]] <-
          self$`simpleDatatype`
      }
      if (!is.null(self$`core`)) {
        SendigDatasetVariableObject[["core"]] <-
          self$`core`
      }
      if (!is.null(self$`describedValueDomain`)) {
        SendigDatasetVariableObject[["describedValueDomain"]] <-
          self$`describedValueDomain`
      }
      if (!is.null(self$`valueList`)) {
        SendigDatasetVariableObject[["valueList"]] <-
          self$`valueList`
      }
      if (!is.null(self$`_links`)) {
        SendigDatasetVariableObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      return(SendigDatasetVariableObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SendigDatasetVariable
    #'
    #' @param input_json the JSON input
    #' @return the instance of SendigDatasetVariable
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
      if (!is.null(this_object$`role`)) {
        self$`role` <- this_object$`role`
      }
      if (!is.null(this_object$`simpleDatatype`)) {
        self$`simpleDatatype` <- this_object$`simpleDatatype`
      }
      if (!is.null(this_object$`core`)) {
        self$`core` <- this_object$`core`
      }
      if (!is.null(this_object$`describedValueDomain`)) {
        self$`describedValueDomain` <- this_object$`describedValueDomain`
      }
      if (!is.null(this_object$`valueList`)) {
        self$`valueList` <- ApiClient$new()$deserializeObj(this_object$`valueList`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- SendigDatasetVariableLinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SendigDatasetVariable in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SendigDatasetVariable
    #'
    #' @param input_json the JSON input
    #' @return the instance of SendigDatasetVariable
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ordinal` <- this_object$`ordinal`
      self$`name` <- this_object$`name`
      self$`label` <- this_object$`label`
      self$`description` <- this_object$`description`
      self$`role` <- this_object$`role`
      self$`simpleDatatype` <- this_object$`simpleDatatype`
      self$`core` <- this_object$`core`
      self$`describedValueDomain` <- this_object$`describedValueDomain`
      self$`valueList` <- ApiClient$new()$deserializeObj(this_object$`valueList`, "array[character]", loadNamespace("openapi"))
      self$`_links` <- SendigDatasetVariableLinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to SendigDatasetVariable and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SendigDatasetVariable
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
# SendigDatasetVariable$unlock()
#
## Below is an example to define the print function
# SendigDatasetVariable$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SendigDatasetVariable$lock()

