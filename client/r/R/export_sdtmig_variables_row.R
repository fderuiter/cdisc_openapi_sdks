#' Create a new ExportSdtmigVariablesRow
#'
#' @description
#' ExportSdtmigVariablesRow Class
#'
#' @docType class
#' @title ExportSdtmigVariablesRow
#' @description ExportSdtmigVariablesRow Class
#' @format An \code{R6Class} generator object
#' @field Version  character [optional]
#' @field Variable Order  character [optional]
#' @field Class  character [optional]
#' @field Dataset Name  character [optional]
#' @field Variable Name  character [optional]
#' @field Variable Label  character [optional]
#' @field Type  character [optional]
#' @field Controlled Terms, Codelist or Format  character [optional]
#' @field Role  character [optional]
#' @field CDISC Notes  character [optional]
#' @field Core  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExportSdtmigVariablesRow <- R6::R6Class(
  "ExportSdtmigVariablesRow",
  public = list(
    `Version` = NULL,
    `Variable Order` = NULL,
    `Class` = NULL,
    `Dataset Name` = NULL,
    `Variable Name` = NULL,
    `Variable Label` = NULL,
    `Type` = NULL,
    `Controlled Terms, Codelist or Format` = NULL,
    `Role` = NULL,
    `CDISC Notes` = NULL,
    `Core` = NULL,

    #' @description
    #' Initialize a new ExportSdtmigVariablesRow class.
    #'
    #' @param Version Version
    #' @param Variable Order Variable Order
    #' @param Class Class
    #' @param Dataset Name Dataset Name
    #' @param Variable Name Variable Name
    #' @param Variable Label Variable Label
    #' @param Type Type
    #' @param Controlled Terms, Codelist or Format Controlled Terms, Codelist or Format
    #' @param Role Role
    #' @param CDISC Notes CDISC Notes
    #' @param Core Core
    #' @param ... Other optional arguments.
    initialize = function(`Version` = NULL, `Variable Order` = NULL, `Class` = NULL, `Dataset Name` = NULL, `Variable Name` = NULL, `Variable Label` = NULL, `Type` = NULL, `Controlled Terms, Codelist or Format` = NULL, `Role` = NULL, `CDISC Notes` = NULL, `Core` = NULL, ...) {
      if (!is.null(`Version`)) {
        if (!(is.character(`Version`) && length(`Version`) == 1)) {
          stop(paste("Error! Invalid data for `Version`. Must be a string:", `Version`))
        }
        self$`Version` <- `Version`
      }
      if (!is.null(`Variable Order`)) {
        if (!(is.character(`Variable Order`) && length(`Variable Order`) == 1)) {
          stop(paste("Error! Invalid data for `Variable Order`. Must be a string:", `Variable Order`))
        }
        self$`Variable Order` <- `Variable Order`
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
      if (!is.null(`Controlled Terms, Codelist or Format`)) {
        if (!(is.character(`Controlled Terms, Codelist or Format`) && length(`Controlled Terms, Codelist or Format`) == 1)) {
          stop(paste("Error! Invalid data for `Controlled Terms, Codelist or Format`. Must be a string:", `Controlled Terms, Codelist or Format`))
        }
        self$`Controlled Terms, Codelist or Format` <- `Controlled Terms, Codelist or Format`
      }
      if (!is.null(`Role`)) {
        if (!(is.character(`Role`) && length(`Role`) == 1)) {
          stop(paste("Error! Invalid data for `Role`. Must be a string:", `Role`))
        }
        self$`Role` <- `Role`
      }
      if (!is.null(`CDISC Notes`)) {
        if (!(is.character(`CDISC Notes`) && length(`CDISC Notes`) == 1)) {
          stop(paste("Error! Invalid data for `CDISC Notes`. Must be a string:", `CDISC Notes`))
        }
        self$`CDISC Notes` <- `CDISC Notes`
      }
      if (!is.null(`Core`)) {
        if (!(is.character(`Core`) && length(`Core`) == 1)) {
          stop(paste("Error! Invalid data for `Core`. Must be a string:", `Core`))
        }
        self$`Core` <- `Core`
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
    #' @return ExportSdtmigVariablesRow as a base R list.
    #' @examples
    #' # convert array of ExportSdtmigVariablesRow (x) to a data frame
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
    #' Convert ExportSdtmigVariablesRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ExportSdtmigVariablesRowObject <- list()
      if (!is.null(self$`Version`)) {
        ExportSdtmigVariablesRowObject[["Version"]] <-
          self$`Version`
      }
      if (!is.null(self$`Variable Order`)) {
        ExportSdtmigVariablesRowObject[["Variable Order"]] <-
          self$`Variable Order`
      }
      if (!is.null(self$`Class`)) {
        ExportSdtmigVariablesRowObject[["Class"]] <-
          self$`Class`
      }
      if (!is.null(self$`Dataset Name`)) {
        ExportSdtmigVariablesRowObject[["Dataset Name"]] <-
          self$`Dataset Name`
      }
      if (!is.null(self$`Variable Name`)) {
        ExportSdtmigVariablesRowObject[["Variable Name"]] <-
          self$`Variable Name`
      }
      if (!is.null(self$`Variable Label`)) {
        ExportSdtmigVariablesRowObject[["Variable Label"]] <-
          self$`Variable Label`
      }
      if (!is.null(self$`Type`)) {
        ExportSdtmigVariablesRowObject[["Type"]] <-
          self$`Type`
      }
      if (!is.null(self$`Controlled Terms, Codelist or Format`)) {
        ExportSdtmigVariablesRowObject[["Controlled Terms, Codelist or Format"]] <-
          self$`Controlled Terms, Codelist or Format`
      }
      if (!is.null(self$`Role`)) {
        ExportSdtmigVariablesRowObject[["Role"]] <-
          self$`Role`
      }
      if (!is.null(self$`CDISC Notes`)) {
        ExportSdtmigVariablesRowObject[["CDISC Notes"]] <-
          self$`CDISC Notes`
      }
      if (!is.null(self$`Core`)) {
        ExportSdtmigVariablesRowObject[["Core"]] <-
          self$`Core`
      }
      return(ExportSdtmigVariablesRowObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportSdtmigVariablesRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportSdtmigVariablesRow
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`Version`)) {
        self$`Version` <- this_object$`Version`
      }
      if (!is.null(this_object$`Variable Order`)) {
        self$`Variable Order` <- this_object$`Variable Order`
      }
      if (!is.null(this_object$`Class`)) {
        self$`Class` <- this_object$`Class`
      }
      if (!is.null(this_object$`Dataset Name`)) {
        self$`Dataset Name` <- this_object$`Dataset Name`
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
      if (!is.null(this_object$`Controlled Terms, Codelist or Format`)) {
        self$`Controlled Terms, Codelist or Format` <- this_object$`Controlled Terms, Codelist or Format`
      }
      if (!is.null(this_object$`Role`)) {
        self$`Role` <- this_object$`Role`
      }
      if (!is.null(this_object$`CDISC Notes`)) {
        self$`CDISC Notes` <- this_object$`CDISC Notes`
      }
      if (!is.null(this_object$`Core`)) {
        self$`Core` <- this_object$`Core`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ExportSdtmigVariablesRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportSdtmigVariablesRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportSdtmigVariablesRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`Version` <- this_object$`Version`
      self$`Variable Order` <- this_object$`Variable Order`
      self$`Class` <- this_object$`Class`
      self$`Dataset Name` <- this_object$`Dataset Name`
      self$`Variable Name` <- this_object$`Variable Name`
      self$`Variable Label` <- this_object$`Variable Label`
      self$`Type` <- this_object$`Type`
      self$`Controlled Terms, Codelist or Format` <- this_object$`Controlled Terms, Codelist or Format`
      self$`Role` <- this_object$`Role`
      self$`CDISC Notes` <- this_object$`CDISC Notes`
      self$`Core` <- this_object$`Core`
      self
    },

    #' @description
    #' Validate JSON input with respect to ExportSdtmigVariablesRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ExportSdtmigVariablesRow
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
# ExportSdtmigVariablesRow$unlock()
#
## Below is an example to define the print function
# ExportSdtmigVariablesRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExportSdtmigVariablesRow$lock()

