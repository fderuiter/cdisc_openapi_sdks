#' Create a new SdtmDatasetVariables
#'
#' @description
#' SdtmDatasetVariables Class
#'
#' @docType class
#' @title SdtmDatasetVariables
#' @description SdtmDatasetVariables Class
#' @format An \code{R6Class} generator object
#' @field ordinal  character [optional]
#' @field name  character [optional]
#' @field label  character [optional]
#' @field description  character [optional]
#' @field datasetStructure  character [optional]
#' @field _links  \link{SdtmDatasetVariablesLinks} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SdtmDatasetVariables <- R6::R6Class(
  "SdtmDatasetVariables",
  public = list(
    `ordinal` = NULL,
    `name` = NULL,
    `label` = NULL,
    `description` = NULL,
    `datasetStructure` = NULL,
    `_links` = NULL,

    #' @description
    #' Initialize a new SdtmDatasetVariables class.
    #'
    #' @param ordinal ordinal
    #' @param name name
    #' @param label label
    #' @param description description
    #' @param datasetStructure datasetStructure
    #' @param _links _links
    #' @param ... Other optional arguments.
    initialize = function(`ordinal` = NULL, `name` = NULL, `label` = NULL, `description` = NULL, `datasetStructure` = NULL, `_links` = NULL, ...) {
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
      if (!is.null(`datasetStructure`)) {
        if (!(is.character(`datasetStructure`) && length(`datasetStructure`) == 1)) {
          stop(paste("Error! Invalid data for `datasetStructure`. Must be a string:", `datasetStructure`))
        }
        self$`datasetStructure` <- `datasetStructure`
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
    #' @return SdtmDatasetVariables as a base R list.
    #' @examples
    #' # convert array of SdtmDatasetVariables (x) to a data frame
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
    #' Convert SdtmDatasetVariables to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SdtmDatasetVariablesObject <- list()
      if (!is.null(self$`ordinal`)) {
        SdtmDatasetVariablesObject[["ordinal"]] <-
          self$`ordinal`
      }
      if (!is.null(self$`name`)) {
        SdtmDatasetVariablesObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`label`)) {
        SdtmDatasetVariablesObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`description`)) {
        SdtmDatasetVariablesObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`datasetStructure`)) {
        SdtmDatasetVariablesObject[["datasetStructure"]] <-
          self$`datasetStructure`
      }
      if (!is.null(self$`_links`)) {
        SdtmDatasetVariablesObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      return(SdtmDatasetVariablesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SdtmDatasetVariables
    #'
    #' @param input_json the JSON input
    #' @return the instance of SdtmDatasetVariables
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
      if (!is.null(this_object$`datasetStructure`)) {
        self$`datasetStructure` <- this_object$`datasetStructure`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- SdtmDatasetVariablesLinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SdtmDatasetVariables in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SdtmDatasetVariables
    #'
    #' @param input_json the JSON input
    #' @return the instance of SdtmDatasetVariables
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ordinal` <- this_object$`ordinal`
      self$`name` <- this_object$`name`
      self$`label` <- this_object$`label`
      self$`description` <- this_object$`description`
      self$`datasetStructure` <- this_object$`datasetStructure`
      self$`_links` <- SdtmDatasetVariablesLinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to SdtmDatasetVariables and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SdtmDatasetVariables
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
# SdtmDatasetVariables$unlock()
#
## Below is an example to define the print function
# SdtmDatasetVariables$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SdtmDatasetVariables$lock()

