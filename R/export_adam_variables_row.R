#' Create a new ExportAdamVariablesRow
#'
#' @description
#' ExportAdamVariablesRow Class
#'
#' @docType class
#' @title ExportAdamVariablesRow
#' @description ExportAdamVariablesRow Class
#' @format An \code{R6Class} generator object
#' @field Version  character [optional]
#' @field Data Structure Name  character [optional]
#' @field Dataset Name  character [optional]
#' @field Variable Group  character [optional]
#' @field Variable Name  character [optional]
#' @field Variable Label  character [optional]
#' @field Type  character [optional]
#' @field Codelist/Controlled Terms  character [optional]
#' @field Core  character [optional]
#' @field CDISC Notes  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExportAdamVariablesRow <- R6::R6Class(
  "ExportAdamVariablesRow",
  public = list(
    `Version` = NULL,
    `Data Structure Name` = NULL,
    `Dataset Name` = NULL,
    `Variable Group` = NULL,
    `Variable Name` = NULL,
    `Variable Label` = NULL,
    `Type` = NULL,
    `Codelist/Controlled Terms` = NULL,
    `Core` = NULL,
    `CDISC Notes` = NULL,

    #' @description
    #' Initialize a new ExportAdamVariablesRow class.
    #'
    #' @param Version Version
    #' @param Data Structure Name Data Structure Name
    #' @param Dataset Name Dataset Name
    #' @param Variable Group Variable Group
    #' @param Variable Name Variable Name
    #' @param Variable Label Variable Label
    #' @param Type Type
    #' @param Codelist/Controlled Terms Codelist/Controlled Terms
    #' @param Core Core
    #' @param CDISC Notes CDISC Notes
    #' @param ... Other optional arguments.
    initialize = function(`Version` = NULL, `Data Structure Name` = NULL, `Dataset Name` = NULL, `Variable Group` = NULL, `Variable Name` = NULL, `Variable Label` = NULL, `Type` = NULL, `Codelist/Controlled Terms` = NULL, `Core` = NULL, `CDISC Notes` = NULL, ...) {
      if (!is.null(`Version`)) {
        if (!(is.character(`Version`) && length(`Version`) == 1)) {
          stop(paste("Error! Invalid data for `Version`. Must be a string:", `Version`))
        }
        self$`Version` <- `Version`
      }
      if (!is.null(`Data Structure Name`)) {
        if (!(is.character(`Data Structure Name`) && length(`Data Structure Name`) == 1)) {
          stop(paste("Error! Invalid data for `Data Structure Name`. Must be a string:", `Data Structure Name`))
        }
        self$`Data Structure Name` <- `Data Structure Name`
      }
      if (!is.null(`Dataset Name`)) {
        if (!(is.character(`Dataset Name`) && length(`Dataset Name`) == 1)) {
          stop(paste("Error! Invalid data for `Dataset Name`. Must be a string:", `Dataset Name`))
        }
        self$`Dataset Name` <- `Dataset Name`
      }
      if (!is.null(`Variable Group`)) {
        if (!(is.character(`Variable Group`) && length(`Variable Group`) == 1)) {
          stop(paste("Error! Invalid data for `Variable Group`. Must be a string:", `Variable Group`))
        }
        self$`Variable Group` <- `Variable Group`
      }
      if (!is.null(`Variable Name`)) {
        if (!(is.character(`Variable Name`) && length(`Variable Name`) == 1)) {
          stop(paste("Error! Invalid data for `Variable Name`. Must be a string:", `Variable Name`))
        }
        self$`Variable Name` <- `Variable Name`
      }
      if (!is.null(`Variable Label`)) {
        if (!(is.character(`Variable Label`) && length(`Variable Label`) == 1)) {
          stop(paste("Error! Invalid data for `Variable Label`. Must be a string:", `Variable Label`))
        }
        self$`Variable Label` <- `Variable Label`
      }
      if (!is.null(`Type`)) {
        if (!(is.character(`Type`) && length(`Type`) == 1)) {
          stop(paste("Error! Invalid data for `Type`. Must be a string:", `Type`))
        }
        self$`Type` <- `Type`
      }
      if (!is.null(`Codelist/Controlled Terms`)) {
        if (!(is.character(`Codelist/Controlled Terms`) && length(`Codelist/Controlled Terms`) == 1)) {
          stop(paste("Error! Invalid data for `Codelist/Controlled Terms`. Must be a string:", `Codelist/Controlled Terms`))
        }
        self$`Codelist/Controlled Terms` <- `Codelist/Controlled Terms`
      }
      if (!is.null(`Core`)) {
        if (!(is.character(`Core`) && length(`Core`) == 1)) {
          stop(paste("Error! Invalid data for `Core`. Must be a string:", `Core`))
        }
        self$`Core` <- `Core`
      }
      if (!is.null(`CDISC Notes`)) {
        if (!(is.character(`CDISC Notes`) && length(`CDISC Notes`) == 1)) {
          stop(paste("Error! Invalid data for `CDISC Notes`. Must be a string:", `CDISC Notes`))
        }
        self$`CDISC Notes` <- `CDISC Notes`
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
    #' @return ExportAdamVariablesRow as a base R list.
    #' @examples
    #' # convert array of ExportAdamVariablesRow (x) to a data frame
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
    #' Convert ExportAdamVariablesRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ExportAdamVariablesRowObject <- list()
      if (!is.null(self$`Version`)) {
        ExportAdamVariablesRowObject[["Version"]] <-
          self$`Version`
      }
      if (!is.null(self$`Data Structure Name`)) {
        ExportAdamVariablesRowObject[["Data Structure Name"]] <-
          self$`Data Structure Name`
      }
      if (!is.null(self$`Dataset Name`)) {
        ExportAdamVariablesRowObject[["Dataset Name"]] <-
          self$`Dataset Name`
      }
      if (!is.null(self$`Variable Group`)) {
        ExportAdamVariablesRowObject[["Variable Group"]] <-
          self$`Variable Group`
      }
      if (!is.null(self$`Variable Name`)) {
        ExportAdamVariablesRowObject[["Variable Name"]] <-
          self$`Variable Name`
      }
      if (!is.null(self$`Variable Label`)) {
        ExportAdamVariablesRowObject[["Variable Label"]] <-
          self$`Variable Label`
      }
      if (!is.null(self$`Type`)) {
        ExportAdamVariablesRowObject[["Type"]] <-
          self$`Type`
      }
      if (!is.null(self$`Codelist/Controlled Terms`)) {
        ExportAdamVariablesRowObject[["Codelist/Controlled Terms"]] <-
          self$`Codelist/Controlled Terms`
      }
      if (!is.null(self$`Core`)) {
        ExportAdamVariablesRowObject[["Core"]] <-
          self$`Core`
      }
      if (!is.null(self$`CDISC Notes`)) {
        ExportAdamVariablesRowObject[["CDISC Notes"]] <-
          self$`CDISC Notes`
      }
      return(ExportAdamVariablesRowObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportAdamVariablesRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportAdamVariablesRow
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`Version`)) {
        self$`Version` <- this_object$`Version`
      }
      if (!is.null(this_object$`Data Structure Name`)) {
        self$`Data Structure Name` <- this_object$`Data Structure Name`
      }
      if (!is.null(this_object$`Dataset Name`)) {
        self$`Dataset Name` <- this_object$`Dataset Name`
      }
      if (!is.null(this_object$`Variable Group`)) {
        self$`Variable Group` <- this_object$`Variable Group`
      }
      if (!is.null(this_object$`Variable Name`)) {
        self$`Variable Name` <- this_object$`Variable Name`
      }
      if (!is.null(this_object$`Variable Label`)) {
        self$`Variable Label` <- this_object$`Variable Label`
      }
      if (!is.null(this_object$`Type`)) {
        self$`Type` <- this_object$`Type`
      }
      if (!is.null(this_object$`Codelist/Controlled Terms`)) {
        self$`Codelist/Controlled Terms` <- this_object$`Codelist/Controlled Terms`
      }
      if (!is.null(this_object$`Core`)) {
        self$`Core` <- this_object$`Core`
      }
      if (!is.null(this_object$`CDISC Notes`)) {
        self$`CDISC Notes` <- this_object$`CDISC Notes`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ExportAdamVariablesRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportAdamVariablesRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportAdamVariablesRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`Version` <- this_object$`Version`
      self$`Data Structure Name` <- this_object$`Data Structure Name`
      self$`Dataset Name` <- this_object$`Dataset Name`
      self$`Variable Group` <- this_object$`Variable Group`
      self$`Variable Name` <- this_object$`Variable Name`
      self$`Variable Label` <- this_object$`Variable Label`
      self$`Type` <- this_object$`Type`
      self$`Codelist/Controlled Terms` <- this_object$`Codelist/Controlled Terms`
      self$`Core` <- this_object$`Core`
      self$`CDISC Notes` <- this_object$`CDISC Notes`
      self
    },

    #' @description
    #' Validate JSON input with respect to ExportAdamVariablesRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ExportAdamVariablesRow
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
# ExportAdamVariablesRow$unlock()
#
## Below is an example to define the print function
# ExportAdamVariablesRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExportAdamVariablesRow$lock()

