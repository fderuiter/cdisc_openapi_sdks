#' Create a new ExportSdtmDatasetVariablesRow
#'
#' @description
#' ExportSdtmDatasetVariablesRow Class
#'
#' @docType class
#' @title ExportSdtmDatasetVariablesRow
#' @description ExportSdtmDatasetVariablesRow Class
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
#' @field Role Description  character [optional]
#' @field Description  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExportSdtmDatasetVariablesRow <- R6::R6Class(
  "ExportSdtmDatasetVariablesRow",
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
    `Role Description` = NULL,
    `Description` = NULL,

    #' @description
    #' Initialize a new ExportSdtmDatasetVariablesRow class.
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
    #' @param Role Description Role Description
    #' @param Description Description
    #' @param ... Other optional arguments.
    initialize = function(`Version` = NULL, `Variable Order` = NULL, `Class` = NULL, `Dataset Name` = NULL, `Variable Name` = NULL, `Variable Label` = NULL, `Type` = NULL, `Controlled Terms, Codelist or Format` = NULL, `Role` = NULL, `Role Description` = NULL, `Description` = NULL, ...) {
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
      if (!is.null(`Role Description`)) {
        if (!(is.character(`Role Description`) && length(`Role Description`) == 1)) {
          stop(paste("Error! Invalid data for `Role Description`. Must be a string:", `Role Description`))
        }
        self$`Role Description` <- `Role Description`
      }
      if (!is.null(`Description`)) {
        if (!(is.character(`Description`) && length(`Description`) == 1)) {
          stop(paste("Error! Invalid data for `Description`. Must be a string:", `Description`))
        }
        self$`Description` <- `Description`
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
    #' @return ExportSdtmDatasetVariablesRow as a base R list.
    #' @examples
    #' # convert array of ExportSdtmDatasetVariablesRow (x) to a data frame
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
    #' Convert ExportSdtmDatasetVariablesRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ExportSdtmDatasetVariablesRowObject <- list()
      if (!is.null(self$`Version`)) {
        ExportSdtmDatasetVariablesRowObject[["Version"]] <-
          self$`Version`
      }
      if (!is.null(self$`Variable Order`)) {
        ExportSdtmDatasetVariablesRowObject[["Variable Order"]] <-
          self$`Variable Order`
      }
      if (!is.null(self$`Class`)) {
        ExportSdtmDatasetVariablesRowObject[["Class"]] <-
          self$`Class`
      }
      if (!is.null(self$`Dataset Name`)) {
        ExportSdtmDatasetVariablesRowObject[["Dataset Name"]] <-
          self$`Dataset Name`
      }
      if (!is.null(self$`Variable Name`)) {
        ExportSdtmDatasetVariablesRowObject[["Variable Name"]] <-
          self$`Variable Name`
      }
      if (!is.null(self$`Variable Label`)) {
        ExportSdtmDatasetVariablesRowObject[["Variable Label"]] <-
          self$`Variable Label`
      }
      if (!is.null(self$`Type`)) {
        ExportSdtmDatasetVariablesRowObject[["Type"]] <-
          self$`Type`
      }
      if (!is.null(self$`Controlled Terms, Codelist or Format`)) {
        ExportSdtmDatasetVariablesRowObject[["Controlled Terms, Codelist or Format"]] <-
          self$`Controlled Terms, Codelist or Format`
      }
      if (!is.null(self$`Role`)) {
        ExportSdtmDatasetVariablesRowObject[["Role"]] <-
          self$`Role`
      }
      if (!is.null(self$`Role Description`)) {
        ExportSdtmDatasetVariablesRowObject[["Role Description"]] <-
          self$`Role Description`
      }
      if (!is.null(self$`Description`)) {
        ExportSdtmDatasetVariablesRowObject[["Description"]] <-
          self$`Description`
      }
      return(ExportSdtmDatasetVariablesRowObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportSdtmDatasetVariablesRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportSdtmDatasetVariablesRow
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
      if (!is.null(this_object$`Role Description`)) {
        self$`Role Description` <- this_object$`Role Description`
      }
      if (!is.null(this_object$`Description`)) {
        self$`Description` <- this_object$`Description`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ExportSdtmDatasetVariablesRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportSdtmDatasetVariablesRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportSdtmDatasetVariablesRow
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
      self$`Role Description` <- this_object$`Role Description`
      self$`Description` <- this_object$`Description`
      self
    },

    #' @description
    #' Validate JSON input with respect to ExportSdtmDatasetVariablesRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ExportSdtmDatasetVariablesRow
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
# ExportSdtmDatasetVariablesRow$unlock()
#
## Below is an example to define the print function
# ExportSdtmDatasetVariablesRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExportSdtmDatasetVariablesRow$lock()

