#' Create a new CdashigScenarioField
#'
#' @description
#' CdashigScenarioField Class
#'
#' @docType class
#' @title CdashigScenarioField
#' @description CdashigScenarioField Class
#' @format An \code{R6Class} generator object
#' @field ordinal  character [optional]
#' @field name  character [optional]
#' @field label  character [optional]
#' @field definition  character [optional]
#' @field questionText  character [optional]
#' @field prompt  character [optional]
#' @field completionInstructions  character [optional]
#' @field implementationNotes  character [optional]
#' @field simpleDatatype  character [optional]
#' @field mappingInstructions  character [optional]
#' @field core  character [optional]
#' @field _links  \link{CdashigScenarioFieldLinks} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CdashigScenarioField <- R6::R6Class(
  "CdashigScenarioField",
  public = list(
    `ordinal` = NULL,
    `name` = NULL,
    `label` = NULL,
    `definition` = NULL,
    `questionText` = NULL,
    `prompt` = NULL,
    `completionInstructions` = NULL,
    `implementationNotes` = NULL,
    `simpleDatatype` = NULL,
    `mappingInstructions` = NULL,
    `core` = NULL,
    `_links` = NULL,

    #' @description
    #' Initialize a new CdashigScenarioField class.
    #'
    #' @param ordinal ordinal
    #' @param name name
    #' @param label label
    #' @param definition definition
    #' @param questionText questionText
    #' @param prompt prompt
    #' @param completionInstructions completionInstructions
    #' @param implementationNotes implementationNotes
    #' @param simpleDatatype simpleDatatype
    #' @param mappingInstructions mappingInstructions
    #' @param core core
    #' @param _links _links
    #' @param ... Other optional arguments.
    initialize = function(`ordinal` = NULL, `name` = NULL, `label` = NULL, `definition` = NULL, `questionText` = NULL, `prompt` = NULL, `completionInstructions` = NULL, `implementationNotes` = NULL, `simpleDatatype` = NULL, `mappingInstructions` = NULL, `core` = NULL, `_links` = NULL, ...) {
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
      if (!is.null(`definition`)) {
        if (!(is.character(`definition`) && length(`definition`) == 1)) {
          stop(paste("Error! Invalid data for `definition`. Must be a string:", `definition`))
        }
        self$`definition` <- `definition`
      }
      if (!is.null(`questionText`)) {
        if (!(is.character(`questionText`) && length(`questionText`) == 1)) {
          stop(paste("Error! Invalid data for `questionText`. Must be a string:", `questionText`))
        }
        self$`questionText` <- `questionText`
      }
      if (!is.null(`prompt`)) {
        if (!(is.character(`prompt`) && length(`prompt`) == 1)) {
          stop(paste("Error! Invalid data for `prompt`. Must be a string:", `prompt`))
        }
        self$`prompt` <- `prompt`
      }
      if (!is.null(`completionInstructions`)) {
        if (!(is.character(`completionInstructions`) && length(`completionInstructions`) == 1)) {
          stop(paste("Error! Invalid data for `completionInstructions`. Must be a string:", `completionInstructions`))
        }
        self$`completionInstructions` <- `completionInstructions`
      }
      if (!is.null(`implementationNotes`)) {
        if (!(is.character(`implementationNotes`) && length(`implementationNotes`) == 1)) {
          stop(paste("Error! Invalid data for `implementationNotes`. Must be a string:", `implementationNotes`))
        }
        self$`implementationNotes` <- `implementationNotes`
      }
      if (!is.null(`simpleDatatype`)) {
        if (!(is.character(`simpleDatatype`) && length(`simpleDatatype`) == 1)) {
          stop(paste("Error! Invalid data for `simpleDatatype`. Must be a string:", `simpleDatatype`))
        }
        self$`simpleDatatype` <- `simpleDatatype`
      }
      if (!is.null(`mappingInstructions`)) {
        if (!(is.character(`mappingInstructions`) && length(`mappingInstructions`) == 1)) {
          stop(paste("Error! Invalid data for `mappingInstructions`. Must be a string:", `mappingInstructions`))
        }
        self$`mappingInstructions` <- `mappingInstructions`
      }
      if (!is.null(`core`)) {
        if (!(is.character(`core`) && length(`core`) == 1)) {
          stop(paste("Error! Invalid data for `core`. Must be a string:", `core`))
        }
        self$`core` <- `core`
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
    #' @return CdashigScenarioField as a base R list.
    #' @examples
    #' # convert array of CdashigScenarioField (x) to a data frame
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
    #' Convert CdashigScenarioField to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CdashigScenarioFieldObject <- list()
      if (!is.null(self$`ordinal`)) {
        CdashigScenarioFieldObject[["ordinal"]] <-
          self$`ordinal`
      }
      if (!is.null(self$`name`)) {
        CdashigScenarioFieldObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`label`)) {
        CdashigScenarioFieldObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`definition`)) {
        CdashigScenarioFieldObject[["definition"]] <-
          self$`definition`
      }
      if (!is.null(self$`questionText`)) {
        CdashigScenarioFieldObject[["questionText"]] <-
          self$`questionText`
      }
      if (!is.null(self$`prompt`)) {
        CdashigScenarioFieldObject[["prompt"]] <-
          self$`prompt`
      }
      if (!is.null(self$`completionInstructions`)) {
        CdashigScenarioFieldObject[["completionInstructions"]] <-
          self$`completionInstructions`
      }
      if (!is.null(self$`implementationNotes`)) {
        CdashigScenarioFieldObject[["implementationNotes"]] <-
          self$`implementationNotes`
      }
      if (!is.null(self$`simpleDatatype`)) {
        CdashigScenarioFieldObject[["simpleDatatype"]] <-
          self$`simpleDatatype`
      }
      if (!is.null(self$`mappingInstructions`)) {
        CdashigScenarioFieldObject[["mappingInstructions"]] <-
          self$`mappingInstructions`
      }
      if (!is.null(self$`core`)) {
        CdashigScenarioFieldObject[["core"]] <-
          self$`core`
      }
      if (!is.null(self$`_links`)) {
        CdashigScenarioFieldObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      return(CdashigScenarioFieldObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashigScenarioField
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashigScenarioField
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
      if (!is.null(this_object$`definition`)) {
        self$`definition` <- this_object$`definition`
      }
      if (!is.null(this_object$`questionText`)) {
        self$`questionText` <- this_object$`questionText`
      }
      if (!is.null(this_object$`prompt`)) {
        self$`prompt` <- this_object$`prompt`
      }
      if (!is.null(this_object$`completionInstructions`)) {
        self$`completionInstructions` <- this_object$`completionInstructions`
      }
      if (!is.null(this_object$`implementationNotes`)) {
        self$`implementationNotes` <- this_object$`implementationNotes`
      }
      if (!is.null(this_object$`simpleDatatype`)) {
        self$`simpleDatatype` <- this_object$`simpleDatatype`
      }
      if (!is.null(this_object$`mappingInstructions`)) {
        self$`mappingInstructions` <- this_object$`mappingInstructions`
      }
      if (!is.null(this_object$`core`)) {
        self$`core` <- this_object$`core`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- CdashigScenarioFieldLinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CdashigScenarioField in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashigScenarioField
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashigScenarioField
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ordinal` <- this_object$`ordinal`
      self$`name` <- this_object$`name`
      self$`label` <- this_object$`label`
      self$`definition` <- this_object$`definition`
      self$`questionText` <- this_object$`questionText`
      self$`prompt` <- this_object$`prompt`
      self$`completionInstructions` <- this_object$`completionInstructions`
      self$`implementationNotes` <- this_object$`implementationNotes`
      self$`simpleDatatype` <- this_object$`simpleDatatype`
      self$`mappingInstructions` <- this_object$`mappingInstructions`
      self$`core` <- this_object$`core`
      self$`_links` <- CdashigScenarioFieldLinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to CdashigScenarioField and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CdashigScenarioField
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
# CdashigScenarioField$unlock()
#
## Below is an example to define the print function
# CdashigScenarioField$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CdashigScenarioField$lock()

