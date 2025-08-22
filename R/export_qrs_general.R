#' Create a new ExportQrsGeneral
#'
#' @description
#' ExportQrsGeneral Class
#'
#' @docType class
#' @title ExportQrsGeneral
#' @description ExportQrsGeneral Class
#' @format An \code{R6Class} generator object
#' @field Name  character [optional]
#' @field Label  character [optional]
#' @field Effective Date  character [optional]
#' @field Description  character [optional]
#' @field Type  character [optional]
#' @field Category&#39;s Codelist C-Code  character [optional]
#' @field Category&#39;s Term C-Code  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExportQrsGeneral <- R6::R6Class(
  "ExportQrsGeneral",
  public = list(
    `Name` = NULL,
    `Label` = NULL,
    `Effective Date` = NULL,
    `Description` = NULL,
    `Type` = NULL,
    `Category's Codelist C-Code` = NULL,
    `Category's Term C-Code` = NULL,

    #' @description
    #' Initialize a new ExportQrsGeneral class.
    #'
    #' @param Name Name
    #' @param Label Label
    #' @param Effective Date Effective Date
    #' @param Description Description
    #' @param Type Type
    #' @param Category&#39;s Codelist C-Code Category's Codelist C-Code
    #' @param Category&#39;s Term C-Code Category's Term C-Code
    #' @param ... Other optional arguments.
    initialize = function(`Name` = NULL, `Label` = NULL, `Effective Date` = NULL, `Description` = NULL, `Type` = NULL, `Category&#39;s Codelist C-Code` = NULL, `Category&#39;s Term C-Code` = NULL, ...) {
      if (!is.null(`Name`)) {
        if (!(is.character(`Name`) && length(`Name`) == 1)) {
          stop(paste("Error! Invalid data for `Name`. Must be a string:", `Name`))
        }
        self$`Name` <- `Name`
      }
      if (!is.null(`Label`)) {
        if (!(is.character(`Label`) && length(`Label`) == 1)) {
          stop(paste("Error! Invalid data for `Label`. Must be a string:", `Label`))
        }
        self$`Label` <- `Label`
      }
      if (!is.null(`Effective Date`)) {
        if (!(is.character(`Effective Date`) && length(`Effective Date`) == 1)) {
          stop(paste("Error! Invalid data for `Effective Date`. Must be a string:", `Effective Date`))
        }
        self$`Effective Date` <- `Effective Date`
      }
      if (!is.null(`Description`)) {
        if (!(is.character(`Description`) && length(`Description`) == 1)) {
          stop(paste("Error! Invalid data for `Description`. Must be a string:", `Description`))
        }
        self$`Description` <- `Description`
      }
      if (!is.null(`Type`)) {
        if (!(is.character(`Type`) && length(`Type`) == 1)) {
          stop(paste("Error! Invalid data for `Type`. Must be a string:", `Type`))
        }
        self$`Type` <- `Type`
      }
      if (!is.null(`Category&#39;s Codelist C-Code`)) {
        if (!(is.character(`Category&#39;s Codelist C-Code`) && length(`Category&#39;s Codelist C-Code`) == 1)) {
          stop(paste("Error! Invalid data for `Category&#39;s Codelist C-Code`. Must be a string:", `Category&#39;s Codelist C-Code`))
        }
        self$`Category&#39;s Codelist C-Code` <- `Category&#39;s Codelist C-Code`
      }
      if (!is.null(`Category&#39;s Term C-Code`)) {
        if (!(is.character(`Category&#39;s Term C-Code`) && length(`Category&#39;s Term C-Code`) == 1)) {
          stop(paste("Error! Invalid data for `Category&#39;s Term C-Code`. Must be a string:", `Category&#39;s Term C-Code`))
        }
        self$`Category&#39;s Term C-Code` <- `Category&#39;s Term C-Code`
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
    #' @return ExportQrsGeneral as a base R list.
    #' @examples
    #' # convert array of ExportQrsGeneral (x) to a data frame
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
    #' Convert ExportQrsGeneral to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ExportQrsGeneralObject <- list()
      if (!is.null(self$`Name`)) {
        ExportQrsGeneralObject[["Name"]] <-
          self$`Name`
      }
      if (!is.null(self$`Label`)) {
        ExportQrsGeneralObject[["Label"]] <-
          self$`Label`
      }
      if (!is.null(self$`Effective Date`)) {
        ExportQrsGeneralObject[["Effective Date"]] <-
          self$`Effective Date`
      }
      if (!is.null(self$`Description`)) {
        ExportQrsGeneralObject[["Description"]] <-
          self$`Description`
      }
      if (!is.null(self$`Type`)) {
        ExportQrsGeneralObject[["Type"]] <-
          self$`Type`
      }
      if (!is.null(self$`Category&#39;s Codelist C-Code`)) {
        ExportQrsGeneralObject[["Category&#39;s Codelist C-Code"]] <-
          self$`Category&#39;s Codelist C-Code`
      }
      if (!is.null(self$`Category&#39;s Term C-Code`)) {
        ExportQrsGeneralObject[["Category&#39;s Term C-Code"]] <-
          self$`Category&#39;s Term C-Code`
      }
      return(ExportQrsGeneralObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportQrsGeneral
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportQrsGeneral
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`Name`)) {
        self$`Name` <- this_object$`Name`
      }
      if (!is.null(this_object$`Label`)) {
        self$`Label` <- this_object$`Label`
      }
      if (!is.null(this_object$`Effective Date`)) {
        self$`Effective Date` <- this_object$`Effective Date`
      }
      if (!is.null(this_object$`Description`)) {
        self$`Description` <- this_object$`Description`
      }
      if (!is.null(this_object$`Type`)) {
        self$`Type` <- this_object$`Type`
      }
      if (!is.null(this_object$`Category&#39;s Codelist C-Code`)) {
        self$`Category&#39;s Codelist C-Code` <- this_object$`Category&#39;s Codelist C-Code`
      }
      if (!is.null(this_object$`Category&#39;s Term C-Code`)) {
        self$`Category&#39;s Term C-Code` <- this_object$`Category&#39;s Term C-Code`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ExportQrsGeneral in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportQrsGeneral
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportQrsGeneral
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`Name` <- this_object$`Name`
      self$`Label` <- this_object$`Label`
      self$`Effective Date` <- this_object$`Effective Date`
      self$`Description` <- this_object$`Description`
      self$`Type` <- this_object$`Type`
      self$`Category&#39;s Codelist C-Code` <- this_object$`Category&#39;s Codelist C-Code`
      self$`Category&#39;s Term C-Code` <- this_object$`Category&#39;s Term C-Code`
      self
    },

    #' @description
    #' Validate JSON input with respect to ExportQrsGeneral and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ExportQrsGeneral
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
# ExportQrsGeneral$unlock()
#
## Below is an example to define the print function
# ExportQrsGeneral$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExportQrsGeneral$lock()

