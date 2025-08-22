#' Create a new ExportQrsResponses
#'
#' @description
#' ExportQrsResponses Class
#'
#' @docType class
#' @title ExportQrsResponses
#' @description ExportQrsResponses Class
#' @format An \code{R6Class} generator object
#' @field Response Group  character [optional]
#' @field Sequence  character [optional]
#' @field Response&#39;s Original Result Codelist C-Code  character [optional]
#' @field Response&#39;s Original Result Term C-Code  character [optional]
#' @field Response&#39;s Original Result Unit Codelist C-Code  character [optional]
#' @field Response&#39;s Original Result Unit Term C-Code  character [optional]
#' @field Response&#39;s Standardized Result Codelist C-Code  character [optional]
#' @field Response&#39;s Standardized Result Term C-Code  character [optional]
#' @field Response&#39;s Standardized Result Unit Codelist C-Code  character [optional]
#' @field Response&#39;s Standardized Result Unit Term C-Code  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExportQrsResponses <- R6::R6Class(
  "ExportQrsResponses",
  public = list(
    `Response Group` = NULL,
    `Sequence` = NULL,
    `Response's Original Result Codelist C-Code` = NULL,
    `Response's Original Result Term C-Code` = NULL,
    `Response's Original Result Unit Codelist C-Code` = NULL,
    `Response's Original Result Unit Term C-Code` = NULL,
    `Response's Standardized Result Codelist C-Code` = NULL,
    `Response's Standardized Result Term C-Code` = NULL,
    `Response's Standardized Result Unit Codelist C-Code` = NULL,
    `Response's Standardized Result Unit Term C-Code` = NULL,

    #' @description
    #' Initialize a new ExportQrsResponses class.
    #'
    #' @param Response Group Response Group
    #' @param Sequence Sequence
    #' @param Response&#39;s Original Result Codelist C-Code Response's Original Result Codelist C-Code
    #' @param Response&#39;s Original Result Term C-Code Response's Original Result Term C-Code
    #' @param Response&#39;s Original Result Unit Codelist C-Code Response's Original Result Unit Codelist C-Code
    #' @param Response&#39;s Original Result Unit Term C-Code Response's Original Result Unit Term C-Code
    #' @param Response&#39;s Standardized Result Codelist C-Code Response's Standardized Result Codelist C-Code
    #' @param Response&#39;s Standardized Result Term C-Code Response's Standardized Result Term C-Code
    #' @param Response&#39;s Standardized Result Unit Codelist C-Code Response's Standardized Result Unit Codelist C-Code
    #' @param Response&#39;s Standardized Result Unit Term C-Code Response's Standardized Result Unit Term C-Code
    #' @param ... Other optional arguments.
    initialize = function(`Response Group` = NULL, `Sequence` = NULL, `Response&#39;s Original Result Codelist C-Code` = NULL, `Response&#39;s Original Result Term C-Code` = NULL, `Response&#39;s Original Result Unit Codelist C-Code` = NULL, `Response&#39;s Original Result Unit Term C-Code` = NULL, `Response&#39;s Standardized Result Codelist C-Code` = NULL, `Response&#39;s Standardized Result Term C-Code` = NULL, `Response&#39;s Standardized Result Unit Codelist C-Code` = NULL, `Response&#39;s Standardized Result Unit Term C-Code` = NULL, ...) {
      if (!is.null(`Response Group`)) {
        if (!(is.character(`Response Group`) && length(`Response Group`) == 1)) {
          stop(paste("Error! Invalid data for `Response Group`. Must be a string:", `Response Group`))
        }
        self$`Response Group` <- `Response Group`
      }
      if (!is.null(`Sequence`)) {
        if (!(is.character(`Sequence`) && length(`Sequence`) == 1)) {
          stop(paste("Error! Invalid data for `Sequence`. Must be a string:", `Sequence`))
        }
        self$`Sequence` <- `Sequence`
      }
      if (!is.null(`Response&#39;s Original Result Codelist C-Code`)) {
        if (!(is.character(`Response&#39;s Original Result Codelist C-Code`) && length(`Response&#39;s Original Result Codelist C-Code`) == 1)) {
          stop(paste("Error! Invalid data for `Response&#39;s Original Result Codelist C-Code`. Must be a string:", `Response&#39;s Original Result Codelist C-Code`))
        }
        self$`Response&#39;s Original Result Codelist C-Code` <- `Response&#39;s Original Result Codelist C-Code`
      }
      if (!is.null(`Response&#39;s Original Result Term C-Code`)) {
        if (!(is.character(`Response&#39;s Original Result Term C-Code`) && length(`Response&#39;s Original Result Term C-Code`) == 1)) {
          stop(paste("Error! Invalid data for `Response&#39;s Original Result Term C-Code`. Must be a string:", `Response&#39;s Original Result Term C-Code`))
        }
        self$`Response&#39;s Original Result Term C-Code` <- `Response&#39;s Original Result Term C-Code`
      }
      if (!is.null(`Response&#39;s Original Result Unit Codelist C-Code`)) {
        if (!(is.character(`Response&#39;s Original Result Unit Codelist C-Code`) && length(`Response&#39;s Original Result Unit Codelist C-Code`) == 1)) {
          stop(paste("Error! Invalid data for `Response&#39;s Original Result Unit Codelist C-Code`. Must be a string:", `Response&#39;s Original Result Unit Codelist C-Code`))
        }
        self$`Response&#39;s Original Result Unit Codelist C-Code` <- `Response&#39;s Original Result Unit Codelist C-Code`
      }
      if (!is.null(`Response&#39;s Original Result Unit Term C-Code`)) {
        if (!(is.character(`Response&#39;s Original Result Unit Term C-Code`) && length(`Response&#39;s Original Result Unit Term C-Code`) == 1)) {
          stop(paste("Error! Invalid data for `Response&#39;s Original Result Unit Term C-Code`. Must be a string:", `Response&#39;s Original Result Unit Term C-Code`))
        }
        self$`Response&#39;s Original Result Unit Term C-Code` <- `Response&#39;s Original Result Unit Term C-Code`
      }
      if (!is.null(`Response&#39;s Standardized Result Codelist C-Code`)) {
        if (!(is.character(`Response&#39;s Standardized Result Codelist C-Code`) && length(`Response&#39;s Standardized Result Codelist C-Code`) == 1)) {
          stop(paste("Error! Invalid data for `Response&#39;s Standardized Result Codelist C-Code`. Must be a string:", `Response&#39;s Standardized Result Codelist C-Code`))
        }
        self$`Response&#39;s Standardized Result Codelist C-Code` <- `Response&#39;s Standardized Result Codelist C-Code`
      }
      if (!is.null(`Response&#39;s Standardized Result Term C-Code`)) {
        if (!(is.character(`Response&#39;s Standardized Result Term C-Code`) && length(`Response&#39;s Standardized Result Term C-Code`) == 1)) {
          stop(paste("Error! Invalid data for `Response&#39;s Standardized Result Term C-Code`. Must be a string:", `Response&#39;s Standardized Result Term C-Code`))
        }
        self$`Response&#39;s Standardized Result Term C-Code` <- `Response&#39;s Standardized Result Term C-Code`
      }
      if (!is.null(`Response&#39;s Standardized Result Unit Codelist C-Code`)) {
        if (!(is.character(`Response&#39;s Standardized Result Unit Codelist C-Code`) && length(`Response&#39;s Standardized Result Unit Codelist C-Code`) == 1)) {
          stop(paste("Error! Invalid data for `Response&#39;s Standardized Result Unit Codelist C-Code`. Must be a string:", `Response&#39;s Standardized Result Unit Codelist C-Code`))
        }
        self$`Response&#39;s Standardized Result Unit Codelist C-Code` <- `Response&#39;s Standardized Result Unit Codelist C-Code`
      }
      if (!is.null(`Response&#39;s Standardized Result Unit Term C-Code`)) {
        if (!(is.character(`Response&#39;s Standardized Result Unit Term C-Code`) && length(`Response&#39;s Standardized Result Unit Term C-Code`) == 1)) {
          stop(paste("Error! Invalid data for `Response&#39;s Standardized Result Unit Term C-Code`. Must be a string:", `Response&#39;s Standardized Result Unit Term C-Code`))
        }
        self$`Response&#39;s Standardized Result Unit Term C-Code` <- `Response&#39;s Standardized Result Unit Term C-Code`
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
    #' @return ExportQrsResponses as a base R list.
    #' @examples
    #' # convert array of ExportQrsResponses (x) to a data frame
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
    #' Convert ExportQrsResponses to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ExportQrsResponsesObject <- list()
      if (!is.null(self$`Response Group`)) {
        ExportQrsResponsesObject[["Response Group"]] <-
          self$`Response Group`
      }
      if (!is.null(self$`Sequence`)) {
        ExportQrsResponsesObject[["Sequence"]] <-
          self$`Sequence`
      }
      if (!is.null(self$`Response&#39;s Original Result Codelist C-Code`)) {
        ExportQrsResponsesObject[["Response&#39;s Original Result Codelist C-Code"]] <-
          self$`Response&#39;s Original Result Codelist C-Code`
      }
      if (!is.null(self$`Response&#39;s Original Result Term C-Code`)) {
        ExportQrsResponsesObject[["Response&#39;s Original Result Term C-Code"]] <-
          self$`Response&#39;s Original Result Term C-Code`
      }
      if (!is.null(self$`Response&#39;s Original Result Unit Codelist C-Code`)) {
        ExportQrsResponsesObject[["Response&#39;s Original Result Unit Codelist C-Code"]] <-
          self$`Response&#39;s Original Result Unit Codelist C-Code`
      }
      if (!is.null(self$`Response&#39;s Original Result Unit Term C-Code`)) {
        ExportQrsResponsesObject[["Response&#39;s Original Result Unit Term C-Code"]] <-
          self$`Response&#39;s Original Result Unit Term C-Code`
      }
      if (!is.null(self$`Response&#39;s Standardized Result Codelist C-Code`)) {
        ExportQrsResponsesObject[["Response&#39;s Standardized Result Codelist C-Code"]] <-
          self$`Response&#39;s Standardized Result Codelist C-Code`
      }
      if (!is.null(self$`Response&#39;s Standardized Result Term C-Code`)) {
        ExportQrsResponsesObject[["Response&#39;s Standardized Result Term C-Code"]] <-
          self$`Response&#39;s Standardized Result Term C-Code`
      }
      if (!is.null(self$`Response&#39;s Standardized Result Unit Codelist C-Code`)) {
        ExportQrsResponsesObject[["Response&#39;s Standardized Result Unit Codelist C-Code"]] <-
          self$`Response&#39;s Standardized Result Unit Codelist C-Code`
      }
      if (!is.null(self$`Response&#39;s Standardized Result Unit Term C-Code`)) {
        ExportQrsResponsesObject[["Response&#39;s Standardized Result Unit Term C-Code"]] <-
          self$`Response&#39;s Standardized Result Unit Term C-Code`
      }
      return(ExportQrsResponsesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportQrsResponses
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportQrsResponses
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`Response Group`)) {
        self$`Response Group` <- this_object$`Response Group`
      }
      if (!is.null(this_object$`Sequence`)) {
        self$`Sequence` <- this_object$`Sequence`
      }
      if (!is.null(this_object$`Response&#39;s Original Result Codelist C-Code`)) {
        self$`Response&#39;s Original Result Codelist C-Code` <- this_object$`Response&#39;s Original Result Codelist C-Code`
      }
      if (!is.null(this_object$`Response&#39;s Original Result Term C-Code`)) {
        self$`Response&#39;s Original Result Term C-Code` <- this_object$`Response&#39;s Original Result Term C-Code`
      }
      if (!is.null(this_object$`Response&#39;s Original Result Unit Codelist C-Code`)) {
        self$`Response&#39;s Original Result Unit Codelist C-Code` <- this_object$`Response&#39;s Original Result Unit Codelist C-Code`
      }
      if (!is.null(this_object$`Response&#39;s Original Result Unit Term C-Code`)) {
        self$`Response&#39;s Original Result Unit Term C-Code` <- this_object$`Response&#39;s Original Result Unit Term C-Code`
      }
      if (!is.null(this_object$`Response&#39;s Standardized Result Codelist C-Code`)) {
        self$`Response&#39;s Standardized Result Codelist C-Code` <- this_object$`Response&#39;s Standardized Result Codelist C-Code`
      }
      if (!is.null(this_object$`Response&#39;s Standardized Result Term C-Code`)) {
        self$`Response&#39;s Standardized Result Term C-Code` <- this_object$`Response&#39;s Standardized Result Term C-Code`
      }
      if (!is.null(this_object$`Response&#39;s Standardized Result Unit Codelist C-Code`)) {
        self$`Response&#39;s Standardized Result Unit Codelist C-Code` <- this_object$`Response&#39;s Standardized Result Unit Codelist C-Code`
      }
      if (!is.null(this_object$`Response&#39;s Standardized Result Unit Term C-Code`)) {
        self$`Response&#39;s Standardized Result Unit Term C-Code` <- this_object$`Response&#39;s Standardized Result Unit Term C-Code`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ExportQrsResponses in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportQrsResponses
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportQrsResponses
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`Response Group` <- this_object$`Response Group`
      self$`Sequence` <- this_object$`Sequence`
      self$`Response&#39;s Original Result Codelist C-Code` <- this_object$`Response&#39;s Original Result Codelist C-Code`
      self$`Response&#39;s Original Result Term C-Code` <- this_object$`Response&#39;s Original Result Term C-Code`
      self$`Response&#39;s Original Result Unit Codelist C-Code` <- this_object$`Response&#39;s Original Result Unit Codelist C-Code`
      self$`Response&#39;s Original Result Unit Term C-Code` <- this_object$`Response&#39;s Original Result Unit Term C-Code`
      self$`Response&#39;s Standardized Result Codelist C-Code` <- this_object$`Response&#39;s Standardized Result Codelist C-Code`
      self$`Response&#39;s Standardized Result Term C-Code` <- this_object$`Response&#39;s Standardized Result Term C-Code`
      self$`Response&#39;s Standardized Result Unit Codelist C-Code` <- this_object$`Response&#39;s Standardized Result Unit Codelist C-Code`
      self$`Response&#39;s Standardized Result Unit Term C-Code` <- this_object$`Response&#39;s Standardized Result Unit Term C-Code`
      self
    },

    #' @description
    #' Validate JSON input with respect to ExportQrsResponses and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ExportQrsResponses
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
# ExportQrsResponses$unlock()
#
## Below is an example to define the print function
# ExportQrsResponses$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExportQrsResponses$lock()

