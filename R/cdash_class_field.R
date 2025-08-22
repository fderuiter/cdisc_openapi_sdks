#' Create a new CdashClassField
#'
#' @description
#' CdashClassField Class
#'
#' @docType class
#' @title CdashClassField
#' @description CdashClassField Class
#' @format An \code{R6Class} generator object
#' @field ordinal  character [optional]
#' @field name  character [optional]
#' @field label  character [optional]
#' @field definition  character [optional]
#' @field questionText  character [optional]
#' @field prompt  character [optional]
#' @field simpleDatatype  character [optional]
#' @field implementationNotes  character [optional]
#' @field mappingInstructions  character [optional]
#' @field _links  \link{CdashClassFieldLinks} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CdashClassField <- R6::R6Class(
  "CdashClassField",
  public = list(
    `ordinal` = NULL,
    `name` = NULL,
    `label` = NULL,
    `definition` = NULL,
    `questionText` = NULL,
    `prompt` = NULL,
    `simpleDatatype` = NULL,
    `implementationNotes` = NULL,
    `mappingInstructions` = NULL,
    `_links` = NULL,

    #' @description
    #' Initialize a new CdashClassField class.
    #'
    #' @param ordinal ordinal
    #' @param name name
    #' @param label label
    #' @param definition definition
    #' @param questionText questionText
    #' @param prompt prompt
    #' @param simpleDatatype simpleDatatype
    #' @param implementationNotes implementationNotes
    #' @param mappingInstructions mappingInstructions
    #' @param _links _links
    #' @param ... Other optional arguments.
    initialize = function(`ordinal` = NULL, `name` = NULL, `label` = NULL, `definition` = NULL, `questionText` = NULL, `prompt` = NULL, `simpleDatatype` = NULL, `implementationNotes` = NULL, `mappingInstructions` = NULL, `_links` = NULL, ...) {
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
      if (!is.null(`simpleDatatype`)) {
        if (!(is.character(`simpleDatatype`) && length(`simpleDatatype`) == 1)) {
          stop(paste("Error! Invalid data for `simpleDatatype`. Must be a string:", `simpleDatatype`))
        }
        self$`simpleDatatype` <- `simpleDatatype`
      }
      if (!is.null(`implementationNotes`)) {
        if (!(is.character(`implementationNotes`) && length(`implementationNotes`) == 1)) {
          stop(paste("Error! Invalid data for `implementationNotes`. Must be a string:", `implementationNotes`))
        }
        self$`implementationNotes` <- `implementationNotes`
      }
      if (!is.null(`mappingInstructions`)) {
        if (!(is.character(`mappingInstructions`) && length(`mappingInstructions`) == 1)) {
          stop(paste("Error! Invalid data for `mappingInstructions`. Must be a string:", `mappingInstructions`))
        }
        self$`mappingInstructions` <- `mappingInstructions`
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
    #' @return CdashClassField as a base R list.
    #' @examples
    #' # convert array of CdashClassField (x) to a data frame
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
    #' Convert CdashClassField to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CdashClassFieldObject <- list()
      if (!is.null(self$`ordinal`)) {
        CdashClassFieldObject[["ordinal"]] <-
          self$`ordinal`
      }
      if (!is.null(self$`name`)) {
        CdashClassFieldObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`label`)) {
        CdashClassFieldObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`definition`)) {
        CdashClassFieldObject[["definition"]] <-
          self$`definition`
      }
      if (!is.null(self$`questionText`)) {
        CdashClassFieldObject[["questionText"]] <-
          self$`questionText`
      }
      if (!is.null(self$`prompt`)) {
        CdashClassFieldObject[["prompt"]] <-
          self$`prompt`
      }
      if (!is.null(self$`simpleDatatype`)) {
        CdashClassFieldObject[["simpleDatatype"]] <-
          self$`simpleDatatype`
      }
      if (!is.null(self$`implementationNotes`)) {
        CdashClassFieldObject[["implementationNotes"]] <-
          self$`implementationNotes`
      }
      if (!is.null(self$`mappingInstructions`)) {
        CdashClassFieldObject[["mappingInstructions"]] <-
          self$`mappingInstructions`
      }
      if (!is.null(self$`_links`)) {
        CdashClassFieldObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      return(CdashClassFieldObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashClassField
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashClassField
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
      if (!is.null(this_object$`simpleDatatype`)) {
        self$`simpleDatatype` <- this_object$`simpleDatatype`
      }
      if (!is.null(this_object$`implementationNotes`)) {
        self$`implementationNotes` <- this_object$`implementationNotes`
      }
      if (!is.null(this_object$`mappingInstructions`)) {
        self$`mappingInstructions` <- this_object$`mappingInstructions`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- CdashClassFieldLinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CdashClassField in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashClassField
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashClassField
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ordinal` <- this_object$`ordinal`
      self$`name` <- this_object$`name`
      self$`label` <- this_object$`label`
      self$`definition` <- this_object$`definition`
      self$`questionText` <- this_object$`questionText`
      self$`prompt` <- this_object$`prompt`
      self$`simpleDatatype` <- this_object$`simpleDatatype`
      self$`implementationNotes` <- this_object$`implementationNotes`
      self$`mappingInstructions` <- this_object$`mappingInstructions`
      self$`_links` <- CdashClassFieldLinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to CdashClassField and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CdashClassField
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
# CdashClassField$unlock()
#
## Below is an example to define the print function
# CdashClassField$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CdashClassField$lock()

