#' Create a new ExportQrsCsvItemsRow
#'
#' @description
#' ExportQrsCsvItemsRow Class
#'
#' @docType class
#' @title ExportQrsCsvItemsRow
#' @description ExportQrsCsvItemsRow Class
#' @format An \code{R6Class} generator object
#' @field QRS Measure Name  character [optional]
#' @field QRS Measure Label  character [optional]
#' @field QRS Measure Type  character [optional]
#' @field Item Sequence  character [optional]
#' @field Test Name  character [optional]
#' @field Item Text  character [optional]
#' @field Test&#39;s Codelist C-Code  character [optional]
#' @field Test&#39;s Term C-Code  character [optional]
#' @field Test Code&#39;s Codelist C-Code  character [optional]
#' @field Test Code&#39;s Term C-Code  character [optional]
#' @field Subcategory&#39;s Codelist C-Code  character [optional]
#' @field Subcategory&#39;s Term C-Code  character [optional]
#' @field Evaluator&#39;s Codelist C-Code  character [optional]
#' @field Evaluator&#39;s Term C-Code  character [optional]
#' @field Free-form Response&#39;s Datatype  character [optional]
#' @field Response Group  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExportQrsCsvItemsRow <- R6::R6Class(
  "ExportQrsCsvItemsRow",
  public = list(
    `QRS Measure Name` = NULL,
    `QRS Measure Label` = NULL,
    `QRS Measure Type` = NULL,
    `Item Sequence` = NULL,
    `Test Name` = NULL,
    `Item Text` = NULL,
    `Test's Codelist C-Code` = NULL,
    `Test's Term C-Code` = NULL,
    `Test Code's Codelist C-Code` = NULL,
    `Test Code's Term C-Code` = NULL,
    `Subcategory's Codelist C-Code` = NULL,
    `Subcategory's Term C-Code` = NULL,
    `Evaluator's Codelist C-Code` = NULL,
    `Evaluator's Term C-Code` = NULL,
    `Free-form Response's Datatype` = NULL,
    `Response Group` = NULL,

    #' @description
    #' Initialize a new ExportQrsCsvItemsRow class.
    #'
    #' @param QRS Measure Name QRS Measure Name
    #' @param QRS Measure Label QRS Measure Label
    #' @param QRS Measure Type QRS Measure Type
    #' @param Item Sequence Item Sequence
    #' @param Test Name Test Name
    #' @param Item Text Item Text
    #' @param Test&#39;s Codelist C-Code Test's Codelist C-Code
    #' @param Test&#39;s Term C-Code Test's Term C-Code
    #' @param Test Code&#39;s Codelist C-Code Test Code's Codelist C-Code
    #' @param Test Code&#39;s Term C-Code Test Code's Term C-Code
    #' @param Subcategory&#39;s Codelist C-Code Subcategory's Codelist C-Code
    #' @param Subcategory&#39;s Term C-Code Subcategory's Term C-Code
    #' @param Evaluator&#39;s Codelist C-Code Evaluator's Codelist C-Code
    #' @param Evaluator&#39;s Term C-Code Evaluator's Term C-Code
    #' @param Free-form Response&#39;s Datatype Free-form Response's Datatype
    #' @param Response Group Response Group
    #' @param ... Other optional arguments.
    initialize = function(`QRS Measure Name` = NULL, `QRS Measure Label` = NULL, `QRS Measure Type` = NULL, `Item Sequence` = NULL, `Test Name` = NULL, `Item Text` = NULL, `Test&#39;s Codelist C-Code` = NULL, `Test&#39;s Term C-Code` = NULL, `Test Code&#39;s Codelist C-Code` = NULL, `Test Code&#39;s Term C-Code` = NULL, `Subcategory&#39;s Codelist C-Code` = NULL, `Subcategory&#39;s Term C-Code` = NULL, `Evaluator&#39;s Codelist C-Code` = NULL, `Evaluator&#39;s Term C-Code` = NULL, `Free-form Response&#39;s Datatype` = NULL, `Response Group` = NULL, ...) {
      if (!is.null(`QRS Measure Name`)) {
        if (!(is.character(`QRS Measure Name`) && length(`QRS Measure Name`) == 1)) {
          stop(paste("Error! Invalid data for `QRS Measure Name`. Must be a string:", `QRS Measure Name`))
        }
        self$`QRS Measure Name` <- `QRS Measure Name`
      }
      if (!is.null(`QRS Measure Label`)) {
        if (!(is.character(`QRS Measure Label`) && length(`QRS Measure Label`) == 1)) {
          stop(paste("Error! Invalid data for `QRS Measure Label`. Must be a string:", `QRS Measure Label`))
        }
        self$`QRS Measure Label` <- `QRS Measure Label`
      }
      if (!is.null(`QRS Measure Type`)) {
        if (!(is.character(`QRS Measure Type`) && length(`QRS Measure Type`) == 1)) {
          stop(paste("Error! Invalid data for `QRS Measure Type`. Must be a string:", `QRS Measure Type`))
        }
        self$`QRS Measure Type` <- `QRS Measure Type`
      }
      if (!is.null(`Item Sequence`)) {
        if (!(is.character(`Item Sequence`) && length(`Item Sequence`) == 1)) {
          stop(paste("Error! Invalid data for `Item Sequence`. Must be a string:", `Item Sequence`))
        }
        self$`Item Sequence` <- `Item Sequence`
      }
      if (!is.null(`Test Name`)) {
        if (!(is.character(`Test Name`) && length(`Test Name`) == 1)) {
          stop(paste("Error! Invalid data for `Test Name`. Must be a string:", `Test Name`))
        }
        self$`Test Name` <- `Test Name`
      }
      if (!is.null(`Item Text`)) {
        if (!(is.character(`Item Text`) && length(`Item Text`) == 1)) {
          stop(paste("Error! Invalid data for `Item Text`. Must be a string:", `Item Text`))
        }
        self$`Item Text` <- `Item Text`
      }
      if (!is.null(`Test&#39;s Codelist C-Code`)) {
        if (!(is.character(`Test&#39;s Codelist C-Code`) && length(`Test&#39;s Codelist C-Code`) == 1)) {
          stop(paste("Error! Invalid data for `Test&#39;s Codelist C-Code`. Must be a string:", `Test&#39;s Codelist C-Code`))
        }
        self$`Test&#39;s Codelist C-Code` <- `Test&#39;s Codelist C-Code`
      }
      if (!is.null(`Test&#39;s Term C-Code`)) {
        if (!(is.character(`Test&#39;s Term C-Code`) && length(`Test&#39;s Term C-Code`) == 1)) {
          stop(paste("Error! Invalid data for `Test&#39;s Term C-Code`. Must be a string:", `Test&#39;s Term C-Code`))
        }
        self$`Test&#39;s Term C-Code` <- `Test&#39;s Term C-Code`
      }
      if (!is.null(`Test Code&#39;s Codelist C-Code`)) {
        if (!(is.character(`Test Code&#39;s Codelist C-Code`) && length(`Test Code&#39;s Codelist C-Code`) == 1)) {
          stop(paste("Error! Invalid data for `Test Code&#39;s Codelist C-Code`. Must be a string:", `Test Code&#39;s Codelist C-Code`))
        }
        self$`Test Code&#39;s Codelist C-Code` <- `Test Code&#39;s Codelist C-Code`
      }
      if (!is.null(`Test Code&#39;s Term C-Code`)) {
        if (!(is.character(`Test Code&#39;s Term C-Code`) && length(`Test Code&#39;s Term C-Code`) == 1)) {
          stop(paste("Error! Invalid data for `Test Code&#39;s Term C-Code`. Must be a string:", `Test Code&#39;s Term C-Code`))
        }
        self$`Test Code&#39;s Term C-Code` <- `Test Code&#39;s Term C-Code`
      }
      if (!is.null(`Subcategory&#39;s Codelist C-Code`)) {
        if (!(is.character(`Subcategory&#39;s Codelist C-Code`) && length(`Subcategory&#39;s Codelist C-Code`) == 1)) {
          stop(paste("Error! Invalid data for `Subcategory&#39;s Codelist C-Code`. Must be a string:", `Subcategory&#39;s Codelist C-Code`))
        }
        self$`Subcategory&#39;s Codelist C-Code` <- `Subcategory&#39;s Codelist C-Code`
      }
      if (!is.null(`Subcategory&#39;s Term C-Code`)) {
        if (!(is.character(`Subcategory&#39;s Term C-Code`) && length(`Subcategory&#39;s Term C-Code`) == 1)) {
          stop(paste("Error! Invalid data for `Subcategory&#39;s Term C-Code`. Must be a string:", `Subcategory&#39;s Term C-Code`))
        }
        self$`Subcategory&#39;s Term C-Code` <- `Subcategory&#39;s Term C-Code`
      }
      if (!is.null(`Evaluator&#39;s Codelist C-Code`)) {
        if (!(is.character(`Evaluator&#39;s Codelist C-Code`) && length(`Evaluator&#39;s Codelist C-Code`) == 1)) {
          stop(paste("Error! Invalid data for `Evaluator&#39;s Codelist C-Code`. Must be a string:", `Evaluator&#39;s Codelist C-Code`))
        }
        self$`Evaluator&#39;s Codelist C-Code` <- `Evaluator&#39;s Codelist C-Code`
      }
      if (!is.null(`Evaluator&#39;s Term C-Code`)) {
        if (!(is.character(`Evaluator&#39;s Term C-Code`) && length(`Evaluator&#39;s Term C-Code`) == 1)) {
          stop(paste("Error! Invalid data for `Evaluator&#39;s Term C-Code`. Must be a string:", `Evaluator&#39;s Term C-Code`))
        }
        self$`Evaluator&#39;s Term C-Code` <- `Evaluator&#39;s Term C-Code`
      }
      if (!is.null(`Free-form Response&#39;s Datatype`)) {
        if (!(is.character(`Free-form Response&#39;s Datatype`) && length(`Free-form Response&#39;s Datatype`) == 1)) {
          stop(paste("Error! Invalid data for `Free-form Response&#39;s Datatype`. Must be a string:", `Free-form Response&#39;s Datatype`))
        }
        self$`Free-form Response&#39;s Datatype` <- `Free-form Response&#39;s Datatype`
      }
      if (!is.null(`Response Group`)) {
        if (!(is.character(`Response Group`) && length(`Response Group`) == 1)) {
          stop(paste("Error! Invalid data for `Response Group`. Must be a string:", `Response Group`))
        }
        self$`Response Group` <- `Response Group`
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
    #' @return ExportQrsCsvItemsRow as a base R list.
    #' @examples
    #' # convert array of ExportQrsCsvItemsRow (x) to a data frame
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
    #' Convert ExportQrsCsvItemsRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ExportQrsCsvItemsRowObject <- list()
      if (!is.null(self$`QRS Measure Name`)) {
        ExportQrsCsvItemsRowObject[["QRS Measure Name"]] <-
          self$`QRS Measure Name`
      }
      if (!is.null(self$`QRS Measure Label`)) {
        ExportQrsCsvItemsRowObject[["QRS Measure Label"]] <-
          self$`QRS Measure Label`
      }
      if (!is.null(self$`QRS Measure Type`)) {
        ExportQrsCsvItemsRowObject[["QRS Measure Type"]] <-
          self$`QRS Measure Type`
      }
      if (!is.null(self$`Item Sequence`)) {
        ExportQrsCsvItemsRowObject[["Item Sequence"]] <-
          self$`Item Sequence`
      }
      if (!is.null(self$`Test Name`)) {
        ExportQrsCsvItemsRowObject[["Test Name"]] <-
          self$`Test Name`
      }
      if (!is.null(self$`Item Text`)) {
        ExportQrsCsvItemsRowObject[["Item Text"]] <-
          self$`Item Text`
      }
      if (!is.null(self$`Test&#39;s Codelist C-Code`)) {
        ExportQrsCsvItemsRowObject[["Test&#39;s Codelist C-Code"]] <-
          self$`Test&#39;s Codelist C-Code`
      }
      if (!is.null(self$`Test&#39;s Term C-Code`)) {
        ExportQrsCsvItemsRowObject[["Test&#39;s Term C-Code"]] <-
          self$`Test&#39;s Term C-Code`
      }
      if (!is.null(self$`Test Code&#39;s Codelist C-Code`)) {
        ExportQrsCsvItemsRowObject[["Test Code&#39;s Codelist C-Code"]] <-
          self$`Test Code&#39;s Codelist C-Code`
      }
      if (!is.null(self$`Test Code&#39;s Term C-Code`)) {
        ExportQrsCsvItemsRowObject[["Test Code&#39;s Term C-Code"]] <-
          self$`Test Code&#39;s Term C-Code`
      }
      if (!is.null(self$`Subcategory&#39;s Codelist C-Code`)) {
        ExportQrsCsvItemsRowObject[["Subcategory&#39;s Codelist C-Code"]] <-
          self$`Subcategory&#39;s Codelist C-Code`
      }
      if (!is.null(self$`Subcategory&#39;s Term C-Code`)) {
        ExportQrsCsvItemsRowObject[["Subcategory&#39;s Term C-Code"]] <-
          self$`Subcategory&#39;s Term C-Code`
      }
      if (!is.null(self$`Evaluator&#39;s Codelist C-Code`)) {
        ExportQrsCsvItemsRowObject[["Evaluator&#39;s Codelist C-Code"]] <-
          self$`Evaluator&#39;s Codelist C-Code`
      }
      if (!is.null(self$`Evaluator&#39;s Term C-Code`)) {
        ExportQrsCsvItemsRowObject[["Evaluator&#39;s Term C-Code"]] <-
          self$`Evaluator&#39;s Term C-Code`
      }
      if (!is.null(self$`Free-form Response&#39;s Datatype`)) {
        ExportQrsCsvItemsRowObject[["Free-form Response&#39;s Datatype"]] <-
          self$`Free-form Response&#39;s Datatype`
      }
      if (!is.null(self$`Response Group`)) {
        ExportQrsCsvItemsRowObject[["Response Group"]] <-
          self$`Response Group`
      }
      return(ExportQrsCsvItemsRowObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportQrsCsvItemsRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportQrsCsvItemsRow
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`QRS Measure Name`)) {
        self$`QRS Measure Name` <- this_object$`QRS Measure Name`
      }
      if (!is.null(this_object$`QRS Measure Label`)) {
        self$`QRS Measure Label` <- this_object$`QRS Measure Label`
      }
      if (!is.null(this_object$`QRS Measure Type`)) {
        self$`QRS Measure Type` <- this_object$`QRS Measure Type`
      }
      if (!is.null(this_object$`Item Sequence`)) {
        self$`Item Sequence` <- this_object$`Item Sequence`
      }
      if (!is.null(this_object$`Test Name`)) {
        self$`Test Name` <- this_object$`Test Name`
      }
      if (!is.null(this_object$`Item Text`)) {
        self$`Item Text` <- this_object$`Item Text`
      }
      if (!is.null(this_object$`Test&#39;s Codelist C-Code`)) {
        self$`Test&#39;s Codelist C-Code` <- this_object$`Test&#39;s Codelist C-Code`
      }
      if (!is.null(this_object$`Test&#39;s Term C-Code`)) {
        self$`Test&#39;s Term C-Code` <- this_object$`Test&#39;s Term C-Code`
      }
      if (!is.null(this_object$`Test Code&#39;s Codelist C-Code`)) {
        self$`Test Code&#39;s Codelist C-Code` <- this_object$`Test Code&#39;s Codelist C-Code`
      }
      if (!is.null(this_object$`Test Code&#39;s Term C-Code`)) {
        self$`Test Code&#39;s Term C-Code` <- this_object$`Test Code&#39;s Term C-Code`
      }
      if (!is.null(this_object$`Subcategory&#39;s Codelist C-Code`)) {
        self$`Subcategory&#39;s Codelist C-Code` <- this_object$`Subcategory&#39;s Codelist C-Code`
      }
      if (!is.null(this_object$`Subcategory&#39;s Term C-Code`)) {
        self$`Subcategory&#39;s Term C-Code` <- this_object$`Subcategory&#39;s Term C-Code`
      }
      if (!is.null(this_object$`Evaluator&#39;s Codelist C-Code`)) {
        self$`Evaluator&#39;s Codelist C-Code` <- this_object$`Evaluator&#39;s Codelist C-Code`
      }
      if (!is.null(this_object$`Evaluator&#39;s Term C-Code`)) {
        self$`Evaluator&#39;s Term C-Code` <- this_object$`Evaluator&#39;s Term C-Code`
      }
      if (!is.null(this_object$`Free-form Response&#39;s Datatype`)) {
        self$`Free-form Response&#39;s Datatype` <- this_object$`Free-form Response&#39;s Datatype`
      }
      if (!is.null(this_object$`Response Group`)) {
        self$`Response Group` <- this_object$`Response Group`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ExportQrsCsvItemsRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportQrsCsvItemsRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportQrsCsvItemsRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`QRS Measure Name` <- this_object$`QRS Measure Name`
      self$`QRS Measure Label` <- this_object$`QRS Measure Label`
      self$`QRS Measure Type` <- this_object$`QRS Measure Type`
      self$`Item Sequence` <- this_object$`Item Sequence`
      self$`Test Name` <- this_object$`Test Name`
      self$`Item Text` <- this_object$`Item Text`
      self$`Test&#39;s Codelist C-Code` <- this_object$`Test&#39;s Codelist C-Code`
      self$`Test&#39;s Term C-Code` <- this_object$`Test&#39;s Term C-Code`
      self$`Test Code&#39;s Codelist C-Code` <- this_object$`Test Code&#39;s Codelist C-Code`
      self$`Test Code&#39;s Term C-Code` <- this_object$`Test Code&#39;s Term C-Code`
      self$`Subcategory&#39;s Codelist C-Code` <- this_object$`Subcategory&#39;s Codelist C-Code`
      self$`Subcategory&#39;s Term C-Code` <- this_object$`Subcategory&#39;s Term C-Code`
      self$`Evaluator&#39;s Codelist C-Code` <- this_object$`Evaluator&#39;s Codelist C-Code`
      self$`Evaluator&#39;s Term C-Code` <- this_object$`Evaluator&#39;s Term C-Code`
      self$`Free-form Response&#39;s Datatype` <- this_object$`Free-form Response&#39;s Datatype`
      self$`Response Group` <- this_object$`Response Group`
      self
    },

    #' @description
    #' Validate JSON input with respect to ExportQrsCsvItemsRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ExportQrsCsvItemsRow
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
# ExportQrsCsvItemsRow$unlock()
#
## Below is an example to define the print function
# ExportQrsCsvItemsRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExportQrsCsvItemsRow$lock()

