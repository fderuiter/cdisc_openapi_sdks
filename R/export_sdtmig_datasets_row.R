#' Create a new ExportSdtmigDatasetsRow
#'
#' @description
#' ExportSdtmigDatasetsRow Class
#'
#' @docType class
#' @title ExportSdtmigDatasetsRow
#' @description ExportSdtmigDatasetsRow Class
#' @format An \code{R6Class} generator object
#' @field Version  character [optional]
#' @field Class  character [optional]
#' @field Dataset Name  character [optional]
#' @field Dataset Label  character [optional]
#' @field Structure  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExportSdtmigDatasetsRow <- R6::R6Class(
  "ExportSdtmigDatasetsRow",
  public = list(
    `Version` = NULL,
    `Class` = NULL,
    `Dataset Name` = NULL,
    `Dataset Label` = NULL,
    `Structure` = NULL,

    #' @description
    #' Initialize a new ExportSdtmigDatasetsRow class.
    #'
    #' @param Version Version
    #' @param Class Class
    #' @param Dataset Name Dataset Name
    #' @param Dataset Label Dataset Label
    #' @param Structure Structure
    #' @param ... Other optional arguments.
    initialize = function(`Version` = NULL, `Class` = NULL, `Dataset Name` = NULL, `Dataset Label` = NULL, `Structure` = NULL, ...) {
      if (!is.null(`Version`)) {
        if (!(is.character(`Version`) && length(`Version`) == 1)) {
          stop(paste("Error! Invalid data for `Version`. Must be a string:", `Version`))
        }
        self$`Version` <- `Version`
      }
      if (!is.null(`Class`)) {
        if (!(is.character(`Class`) && length(`Class`) == 1)) {
          stop(paste("Error! Invalid data for `Class`. Must be a string:", `Class`))
        }
        self$`Class` <- `Class`
      }
      if (!is.null(`Dataset Name`)) {
        if (!(is.character(`Dataset Name`) && length(`Dataset Name`) == 1)) {
          stop(paste("Error! Invalid data for `Dataset Name`. Must be a string:", `Dataset Name`))
        }
        self$`Dataset Name` <- `Dataset Name`
      }
      if (!is.null(`Dataset Label`)) {
        if (!(is.character(`Dataset Label`) && length(`Dataset Label`) == 1)) {
          stop(paste("Error! Invalid data for `Dataset Label`. Must be a string:", `Dataset Label`))
        }
        self$`Dataset Label` <- `Dataset Label`
      }
      if (!is.null(`Structure`)) {
        if (!(is.character(`Structure`) && length(`Structure`) == 1)) {
          stop(paste("Error! Invalid data for `Structure`. Must be a string:", `Structure`))
        }
        self$`Structure` <- `Structure`
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
    #' @return ExportSdtmigDatasetsRow as a base R list.
    #' @examples
    #' # convert array of ExportSdtmigDatasetsRow (x) to a data frame
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
    #' Convert ExportSdtmigDatasetsRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ExportSdtmigDatasetsRowObject <- list()
      if (!is.null(self$`Version`)) {
        ExportSdtmigDatasetsRowObject[["Version"]] <-
          self$`Version`
      }
      if (!is.null(self$`Class`)) {
        ExportSdtmigDatasetsRowObject[["Class"]] <-
          self$`Class`
      }
      if (!is.null(self$`Dataset Name`)) {
        ExportSdtmigDatasetsRowObject[["Dataset Name"]] <-
          self$`Dataset Name`
      }
      if (!is.null(self$`Dataset Label`)) {
        ExportSdtmigDatasetsRowObject[["Dataset Label"]] <-
          self$`Dataset Label`
      }
      if (!is.null(self$`Structure`)) {
        ExportSdtmigDatasetsRowObject[["Structure"]] <-
          self$`Structure`
      }
      return(ExportSdtmigDatasetsRowObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportSdtmigDatasetsRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportSdtmigDatasetsRow
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`Version`)) {
        self$`Version` <- this_object$`Version`
      }
      if (!is.null(this_object$`Class`)) {
        self$`Class` <- this_object$`Class`
      }
      if (!is.null(this_object$`Dataset Name`)) {
        self$`Dataset Name` <- this_object$`Dataset Name`
      }
      if (!is.null(this_object$`Dataset Label`)) {
        self$`Dataset Label` <- this_object$`Dataset Label`
      }
      if (!is.null(this_object$`Structure`)) {
        self$`Structure` <- this_object$`Structure`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ExportSdtmigDatasetsRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportSdtmigDatasetsRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportSdtmigDatasetsRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`Version` <- this_object$`Version`
      self$`Class` <- this_object$`Class`
      self$`Dataset Name` <- this_object$`Dataset Name`
      self$`Dataset Label` <- this_object$`Dataset Label`
      self$`Structure` <- this_object$`Structure`
      self
    },

    #' @description
    #' Validate JSON input with respect to ExportSdtmigDatasetsRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ExportSdtmigDatasetsRow
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
# ExportSdtmigDatasetsRow$unlock()
#
## Below is an example to define the print function
# ExportSdtmigDatasetsRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExportSdtmigDatasetsRow$lock()

