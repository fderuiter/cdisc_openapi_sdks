#' Create a new ExportAdamDatastructuresRow
#'
#' @description
#' ExportAdamDatastructuresRow Class
#'
#' @docType class
#' @title ExportAdamDatastructuresRow
#' @description ExportAdamDatastructuresRow Class
#' @format An \code{R6Class} generator object
#' @field Version  character [optional]
#' @field Data Structure Name  character [optional]
#' @field Dataset Name  character [optional]
#' @field Dataset Label  character [optional]
#' @field Dataset Description  character [optional]
#' @field Class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExportAdamDatastructuresRow <- R6::R6Class(
  "ExportAdamDatastructuresRow",
  public = list(
    `Version` = NULL,
    `Data Structure Name` = NULL,
    `Dataset Name` = NULL,
    `Dataset Label` = NULL,
    `Dataset Description` = NULL,
    `Class` = NULL,

    #' @description
    #' Initialize a new ExportAdamDatastructuresRow class.
    #'
    #' @param Version Version
    #' @param Data Structure Name Data Structure Name
    #' @param Dataset Name Dataset Name
    #' @param Dataset Label Dataset Label
    #' @param Dataset Description Dataset Description
    #' @param Class Class
    #' @param ... Other optional arguments.
    initialize = function(`Version` = NULL, `Data Structure Name` = NULL, `Dataset Name` = NULL, `Dataset Label` = NULL, `Dataset Description` = NULL, `Class` = NULL, ...) {
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
      if (!is.null(`Dataset Label`)) {
        if (!(is.character(`Dataset Label`) && length(`Dataset Label`) == 1)) {
          stop(paste("Error! Invalid data for `Dataset Label`. Must be a string:", `Dataset Label`))
        }
        self$`Dataset Label` <- `Dataset Label`
      }
      if (!is.null(`Dataset Description`)) {
        if (!(is.character(`Dataset Description`) && length(`Dataset Description`) == 1)) {
          stop(paste("Error! Invalid data for `Dataset Description`. Must be a string:", `Dataset Description`))
        }
        self$`Dataset Description` <- `Dataset Description`
      }
      if (!is.null(`Class`)) {
        if (!(is.character(`Class`) && length(`Class`) == 1)) {
          stop(paste("Error! Invalid data for `Class`. Must be a string:", `Class`))
        }
        self$`Class` <- `Class`
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
    #' @return ExportAdamDatastructuresRow as a base R list.
    #' @examples
    #' # convert array of ExportAdamDatastructuresRow (x) to a data frame
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
    #' Convert ExportAdamDatastructuresRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ExportAdamDatastructuresRowObject <- list()
      if (!is.null(self$`Version`)) {
        ExportAdamDatastructuresRowObject[["Version"]] <-
          self$`Version`
      }
      if (!is.null(self$`Data Structure Name`)) {
        ExportAdamDatastructuresRowObject[["Data Structure Name"]] <-
          self$`Data Structure Name`
      }
      if (!is.null(self$`Dataset Name`)) {
        ExportAdamDatastructuresRowObject[["Dataset Name"]] <-
          self$`Dataset Name`
      }
      if (!is.null(self$`Dataset Label`)) {
        ExportAdamDatastructuresRowObject[["Dataset Label"]] <-
          self$`Dataset Label`
      }
      if (!is.null(self$`Dataset Description`)) {
        ExportAdamDatastructuresRowObject[["Dataset Description"]] <-
          self$`Dataset Description`
      }
      if (!is.null(self$`Class`)) {
        ExportAdamDatastructuresRowObject[["Class"]] <-
          self$`Class`
      }
      return(ExportAdamDatastructuresRowObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportAdamDatastructuresRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportAdamDatastructuresRow
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
      if (!is.null(this_object$`Dataset Label`)) {
        self$`Dataset Label` <- this_object$`Dataset Label`
      }
      if (!is.null(this_object$`Dataset Description`)) {
        self$`Dataset Description` <- this_object$`Dataset Description`
      }
      if (!is.null(this_object$`Class`)) {
        self$`Class` <- this_object$`Class`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ExportAdamDatastructuresRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportAdamDatastructuresRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportAdamDatastructuresRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`Version` <- this_object$`Version`
      self$`Data Structure Name` <- this_object$`Data Structure Name`
      self$`Dataset Name` <- this_object$`Dataset Name`
      self$`Dataset Label` <- this_object$`Dataset Label`
      self$`Dataset Description` <- this_object$`Dataset Description`
      self$`Class` <- this_object$`Class`
      self
    },

    #' @description
    #' Validate JSON input with respect to ExportAdamDatastructuresRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ExportAdamDatastructuresRow
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
# ExportAdamDatastructuresRow$unlock()
#
## Below is an example to define the print function
# ExportAdamDatastructuresRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExportAdamDatastructuresRow$lock()

