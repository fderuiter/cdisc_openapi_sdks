#' Create a new ExportCtCodelist
#'
#' @description
#' ExportCtCodelist Class
#'
#' @docType class
#' @title ExportCtCodelist
#' @description ExportCtCodelist Class
#' @format An \code{R6Class} generator object
#' @field Code  character [optional]
#' @field Codelist Code  character [optional]
#' @field Codelist Extensible (Yes/No)  character [optional]
#' @field Codelist Name  character [optional]
#' @field CDISC Submission Value  character [optional]
#' @field CDISC Synonym(s)  list(character) [optional]
#' @field CDISC Definition  character [optional]
#' @field NCI Preferred Term  character [optional]
#' @field Standard and Date  character [optional]
#' @field empty_string  list(\link{ExportCtTerm}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExportCtCodelist <- R6::R6Class(
  "ExportCtCodelist",
  public = list(
    `Code` = NULL,
    `Codelist Code` = NULL,
    `Codelist Extensible (Yes/No)` = NULL,
    `Codelist Name` = NULL,
    `CDISC Submission Value` = NULL,
    `CDISC Synonym(s)` = NULL,
    `CDISC Definition` = NULL,
    `NCI Preferred Term` = NULL,
    `Standard and Date` = NULL,
    `empty_string` = NULL,

    #' @description
    #' Initialize a new ExportCtCodelist class.
    #'
    #' @param Code Code
    #' @param Codelist Code Codelist Code
    #' @param Codelist Extensible (Yes/No) Codelist Extensible (Yes/No)
    #' @param Codelist Name Codelist Name
    #' @param CDISC Submission Value CDISC Submission Value
    #' @param CDISC Synonym(s) CDISC Synonym(s)
    #' @param CDISC Definition CDISC Definition
    #' @param NCI Preferred Term NCI Preferred Term
    #' @param Standard and Date Standard and Date
    #' @param empty_string empty_string
    #' @param ... Other optional arguments.
    initialize = function(`Code` = NULL, `Codelist Code` = NULL, `Codelist Extensible (Yes/No)` = NULL, `Codelist Name` = NULL, `CDISC Submission Value` = NULL, `CDISC Synonym(s)` = NULL, `CDISC Definition` = NULL, `NCI Preferred Term` = NULL, `Standard and Date` = NULL, `empty_string` = NULL, ...) {
      if (!is.null(`Code`)) {
        if (!(is.character(`Code`) && length(`Code`) == 1)) {
          stop(paste("Error! Invalid data for `Code`. Must be a string:", `Code`))
        }
        self$`Code` <- `Code`
      }
      if (!is.null(`Codelist Code`)) {
        if (!(is.character(`Codelist Code`) && length(`Codelist Code`) == 1)) {
          stop(paste("Error! Invalid data for `Codelist Code`. Must be a string:", `Codelist Code`))
        }
        self$`Codelist Code` <- `Codelist Code`
      }
      if (!is.null(`Codelist Extensible (Yes/No)`)) {
        if (!(is.character(`Codelist Extensible (Yes/No)`) && length(`Codelist Extensible (Yes/No)`) == 1)) {
          stop(paste("Error! Invalid data for `Codelist Extensible (Yes/No)`. Must be a string:", `Codelist Extensible (Yes/No)`))
        }
        self$`Codelist Extensible (Yes/No)` <- `Codelist Extensible (Yes/No)`
      }
      if (!is.null(`Codelist Name`)) {
        if (!(is.character(`Codelist Name`) && length(`Codelist Name`) == 1)) {
          stop(paste("Error! Invalid data for `Codelist Name`. Must be a string:", `Codelist Name`))
        }
        self$`Codelist Name` <- `Codelist Name`
      }
      if (!is.null(`CDISC Submission Value`)) {
        if (!(is.character(`CDISC Submission Value`) && length(`CDISC Submission Value`) == 1)) {
          stop(paste("Error! Invalid data for `CDISC Submission Value`. Must be a string:", `CDISC Submission Value`))
        }
        self$`CDISC Submission Value` <- `CDISC Submission Value`
      }
      if (!is.null(`CDISC Synonym(s)`)) {
        stopifnot(is.vector(`CDISC Synonym(s)`), length(`CDISC Synonym(s)`) != 0)
        sapply(`CDISC Synonym(s)`, function(x) stopifnot(is.character(x)))
        self$`CDISC Synonym(s)` <- `CDISC Synonym(s)`
      }
      if (!is.null(`CDISC Definition`)) {
        if (!(is.character(`CDISC Definition`) && length(`CDISC Definition`) == 1)) {
          stop(paste("Error! Invalid data for `CDISC Definition`. Must be a string:", `CDISC Definition`))
        }
        self$`CDISC Definition` <- `CDISC Definition`
      }
      if (!is.null(`NCI Preferred Term`)) {
        if (!(is.character(`NCI Preferred Term`) && length(`NCI Preferred Term`) == 1)) {
          stop(paste("Error! Invalid data for `NCI Preferred Term`. Must be a string:", `NCI Preferred Term`))
        }
        self$`NCI Preferred Term` <- `NCI Preferred Term`
      }
      if (!is.null(`Standard and Date`)) {
        if (!(is.character(`Standard and Date`) && length(`Standard and Date`) == 1)) {
          stop(paste("Error! Invalid data for `Standard and Date`. Must be a string:", `Standard and Date`))
        }
        self$`Standard and Date` <- `Standard and Date`
      }
      if (!is.null(`empty_string`)) {
        stopifnot(is.vector(`empty_string`), length(`empty_string`) != 0)
        sapply(`empty_string`, function(x) stopifnot(R6::is.R6(x)))
        self$`empty_string` <- `empty_string`
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
    #' @return ExportCtCodelist as a base R list.
    #' @examples
    #' # convert array of ExportCtCodelist (x) to a data frame
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
    #' Convert ExportCtCodelist to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ExportCtCodelistObject <- list()
      if (!is.null(self$`Code`)) {
        ExportCtCodelistObject[["Code"]] <-
          self$`Code`
      }
      if (!is.null(self$`Codelist Code`)) {
        ExportCtCodelistObject[["Codelist Code"]] <-
          self$`Codelist Code`
      }
      if (!is.null(self$`Codelist Extensible (Yes/No)`)) {
        ExportCtCodelistObject[["Codelist Extensible (Yes/No)"]] <-
          self$`Codelist Extensible (Yes/No)`
      }
      if (!is.null(self$`Codelist Name`)) {
        ExportCtCodelistObject[["Codelist Name"]] <-
          self$`Codelist Name`
      }
      if (!is.null(self$`CDISC Submission Value`)) {
        ExportCtCodelistObject[["CDISC Submission Value"]] <-
          self$`CDISC Submission Value`
      }
      if (!is.null(self$`CDISC Synonym(s)`)) {
        ExportCtCodelistObject[["CDISC Synonym(s)"]] <-
          self$`CDISC Synonym(s)`
      }
      if (!is.null(self$`CDISC Definition`)) {
        ExportCtCodelistObject[["CDISC Definition"]] <-
          self$`CDISC Definition`
      }
      if (!is.null(self$`NCI Preferred Term`)) {
        ExportCtCodelistObject[["NCI Preferred Term"]] <-
          self$`NCI Preferred Term`
      }
      if (!is.null(self$`Standard and Date`)) {
        ExportCtCodelistObject[["Standard and Date"]] <-
          self$`Standard and Date`
      }
      if (!is.null(self$`empty_string`)) {
        ExportCtCodelistObject[["empty_string"]] <-
          lapply(self$`empty_string`, function(x) x$toSimpleType())
      }
      return(ExportCtCodelistObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportCtCodelist
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportCtCodelist
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`Code`)) {
        self$`Code` <- this_object$`Code`
      }
      if (!is.null(this_object$`Codelist Code`)) {
        self$`Codelist Code` <- this_object$`Codelist Code`
      }
      if (!is.null(this_object$`Codelist Extensible (Yes/No)`)) {
        self$`Codelist Extensible (Yes/No)` <- this_object$`Codelist Extensible (Yes/No)`
      }
      if (!is.null(this_object$`Codelist Name`)) {
        self$`Codelist Name` <- this_object$`Codelist Name`
      }
      if (!is.null(this_object$`CDISC Submission Value`)) {
        self$`CDISC Submission Value` <- this_object$`CDISC Submission Value`
      }
      if (!is.null(this_object$`CDISC Synonym(s)`)) {
        self$`CDISC Synonym(s)` <- ApiClient$new()$deserializeObj(this_object$`CDISC Synonym(s)`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`CDISC Definition`)) {
        self$`CDISC Definition` <- this_object$`CDISC Definition`
      }
      if (!is.null(this_object$`NCI Preferred Term`)) {
        self$`NCI Preferred Term` <- this_object$`NCI Preferred Term`
      }
      if (!is.null(this_object$`Standard and Date`)) {
        self$`Standard and Date` <- this_object$`Standard and Date`
      }
      if (!is.null(this_object$`empty_string`)) {
        self$`empty_string` <- ApiClient$new()$deserializeObj(this_object$`empty_string`, "array[ExportCtTerm]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ExportCtCodelist in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportCtCodelist
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportCtCodelist
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`Code` <- this_object$`Code`
      self$`Codelist Code` <- this_object$`Codelist Code`
      self$`Codelist Extensible (Yes/No)` <- this_object$`Codelist Extensible (Yes/No)`
      self$`Codelist Name` <- this_object$`Codelist Name`
      self$`CDISC Submission Value` <- this_object$`CDISC Submission Value`
      self$`CDISC Synonym(s)` <- ApiClient$new()$deserializeObj(this_object$`CDISC Synonym(s)`, "array[character]", loadNamespace("openapi"))
      self$`CDISC Definition` <- this_object$`CDISC Definition`
      self$`NCI Preferred Term` <- this_object$`NCI Preferred Term`
      self$`Standard and Date` <- this_object$`Standard and Date`
      self$`empty_string` <- ApiClient$new()$deserializeObj(this_object$`empty_string`, "array[ExportCtTerm]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ExportCtCodelist and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ExportCtCodelist
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
# ExportCtCodelist$unlock()
#
## Below is an example to define the print function
# ExportCtCodelist$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExportCtCodelist$lock()

