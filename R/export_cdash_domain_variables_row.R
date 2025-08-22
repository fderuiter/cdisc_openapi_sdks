#' Create a new ExportCdashDomainVariablesRow
#'
#' @description
#' ExportCdashDomainVariablesRow Class
#'
#' @docType class
#' @title ExportCdashDomainVariablesRow
#' @description ExportCdashDomainVariablesRow Class
#' @format An \code{R6Class} generator object
#' @field Version  character [optional]
#' @field Class  character [optional]
#' @field Domain  character [optional]
#' @field Variable Order  character [optional]
#' @field CDASH Variable  character [optional]
#' @field CDASH Variable Label  character [optional]
#' @field DRAFT CDASH Definition  character [optional]
#' @field Domain Specific  character [optional]
#' @field Question Text  character [optional]
#' @field Prompt  character [optional]
#' @field Type  character [optional]
#' @field SDTM Target  list(character) [optional]
#' @field Mapping Instructions  character [optional]
#' @field Controlled Terminology Codelist Name  character [optional]
#' @field Implementation Notes  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExportCdashDomainVariablesRow <- R6::R6Class(
  "ExportCdashDomainVariablesRow",
  public = list(
    `Version` = NULL,
    `Class` = NULL,
    `Domain` = NULL,
    `Variable Order` = NULL,
    `CDASH Variable` = NULL,
    `CDASH Variable Label` = NULL,
    `DRAFT CDASH Definition` = NULL,
    `Domain Specific` = NULL,
    `Question Text` = NULL,
    `Prompt` = NULL,
    `Type` = NULL,
    `SDTM Target` = NULL,
    `Mapping Instructions` = NULL,
    `Controlled Terminology Codelist Name` = NULL,
    `Implementation Notes` = NULL,

    #' @description
    #' Initialize a new ExportCdashDomainVariablesRow class.
    #'
    #' @param Version Version
    #' @param Class Class
    #' @param Domain Domain
    #' @param Variable Order Variable Order
    #' @param CDASH Variable CDASH Variable
    #' @param CDASH Variable Label CDASH Variable Label
    #' @param DRAFT CDASH Definition DRAFT CDASH Definition
    #' @param Domain Specific Domain Specific
    #' @param Question Text Question Text
    #' @param Prompt Prompt
    #' @param Type Type
    #' @param SDTM Target SDTM Target
    #' @param Mapping Instructions Mapping Instructions
    #' @param Controlled Terminology Codelist Name Controlled Terminology Codelist Name
    #' @param Implementation Notes Implementation Notes
    #' @param ... Other optional arguments.
    initialize = function(`Version` = NULL, `Class` = NULL, `Domain` = NULL, `Variable Order` = NULL, `CDASH Variable` = NULL, `CDASH Variable Label` = NULL, `DRAFT CDASH Definition` = NULL, `Domain Specific` = NULL, `Question Text` = NULL, `Prompt` = NULL, `Type` = NULL, `SDTM Target` = NULL, `Mapping Instructions` = NULL, `Controlled Terminology Codelist Name` = NULL, `Implementation Notes` = NULL, ...) {
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
      if (!is.null(`Domain`)) {
        if (!(is.character(`Domain`) && length(`Domain`) == 1)) {
          stop(paste("Error! Invalid data for `Domain`. Must be a string:", `Domain`))
        }
        self$`Domain` <- `Domain`
      }
      if (!is.null(`Variable Order`)) {
        if (!(is.character(`Variable Order`) && length(`Variable Order`) == 1)) {
          stop(paste("Error! Invalid data for `Variable Order`. Must be a string:", `Variable Order`))
        }
        self$`Variable Order` <- `Variable Order`
      }
      if (!is.null(`CDASH Variable`)) {
        if (!(is.character(`CDASH Variable`) && length(`CDASH Variable`) == 1)) {
          stop(paste("Error! Invalid data for `CDASH Variable`. Must be a string:", `CDASH Variable`))
        }
        self$`CDASH Variable` <- `CDASH Variable`
      }
      if (!is.null(`CDASH Variable Label`)) {
        if (!(is.character(`CDASH Variable Label`) && length(`CDASH Variable Label`) == 1)) {
          stop(paste("Error! Invalid data for `CDASH Variable Label`. Must be a string:", `CDASH Variable Label`))
        }
        self$`CDASH Variable Label` <- `CDASH Variable Label`
      }
      if (!is.null(`DRAFT CDASH Definition`)) {
        if (!(is.character(`DRAFT CDASH Definition`) && length(`DRAFT CDASH Definition`) == 1)) {
          stop(paste("Error! Invalid data for `DRAFT CDASH Definition`. Must be a string:", `DRAFT CDASH Definition`))
        }
        self$`DRAFT CDASH Definition` <- `DRAFT CDASH Definition`
      }
      if (!is.null(`Domain Specific`)) {
        if (!(is.character(`Domain Specific`) && length(`Domain Specific`) == 1)) {
          stop(paste("Error! Invalid data for `Domain Specific`. Must be a string:", `Domain Specific`))
        }
        self$`Domain Specific` <- `Domain Specific`
      }
      if (!is.null(`Question Text`)) {
        if (!(is.character(`Question Text`) && length(`Question Text`) == 1)) {
          stop(paste("Error! Invalid data for `Question Text`. Must be a string:", `Question Text`))
        }
        self$`Question Text` <- `Question Text`
      }
      if (!is.null(`Prompt`)) {
        if (!(is.character(`Prompt`) && length(`Prompt`) == 1)) {
          stop(paste("Error! Invalid data for `Prompt`. Must be a string:", `Prompt`))
        }
        self$`Prompt` <- `Prompt`
      }
      if (!is.null(`Type`)) {
        if (!(is.character(`Type`) && length(`Type`) == 1)) {
          stop(paste("Error! Invalid data for `Type`. Must be a string:", `Type`))
        }
        self$`Type` <- `Type`
      }
      if (!is.null(`SDTM Target`)) {
        stopifnot(is.vector(`SDTM Target`), length(`SDTM Target`) != 0)
        sapply(`SDTM Target`, function(x) stopifnot(is.character(x)))
        self$`SDTM Target` <- `SDTM Target`
      }
      if (!is.null(`Mapping Instructions`)) {
        if (!(is.character(`Mapping Instructions`) && length(`Mapping Instructions`) == 1)) {
          stop(paste("Error! Invalid data for `Mapping Instructions`. Must be a string:", `Mapping Instructions`))
        }
        self$`Mapping Instructions` <- `Mapping Instructions`
      }
      if (!is.null(`Controlled Terminology Codelist Name`)) {
        if (!(is.character(`Controlled Terminology Codelist Name`) && length(`Controlled Terminology Codelist Name`) == 1)) {
          stop(paste("Error! Invalid data for `Controlled Terminology Codelist Name`. Must be a string:", `Controlled Terminology Codelist Name`))
        }
        self$`Controlled Terminology Codelist Name` <- `Controlled Terminology Codelist Name`
      }
      if (!is.null(`Implementation Notes`)) {
        if (!(is.character(`Implementation Notes`) && length(`Implementation Notes`) == 1)) {
          stop(paste("Error! Invalid data for `Implementation Notes`. Must be a string:", `Implementation Notes`))
        }
        self$`Implementation Notes` <- `Implementation Notes`
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
    #' @return ExportCdashDomainVariablesRow as a base R list.
    #' @examples
    #' # convert array of ExportCdashDomainVariablesRow (x) to a data frame
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
    #' Convert ExportCdashDomainVariablesRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ExportCdashDomainVariablesRowObject <- list()
      if (!is.null(self$`Version`)) {
        ExportCdashDomainVariablesRowObject[["Version"]] <-
          self$`Version`
      }
      if (!is.null(self$`Class`)) {
        ExportCdashDomainVariablesRowObject[["Class"]] <-
          self$`Class`
      }
      if (!is.null(self$`Domain`)) {
        ExportCdashDomainVariablesRowObject[["Domain"]] <-
          self$`Domain`
      }
      if (!is.null(self$`Variable Order`)) {
        ExportCdashDomainVariablesRowObject[["Variable Order"]] <-
          self$`Variable Order`
      }
      if (!is.null(self$`CDASH Variable`)) {
        ExportCdashDomainVariablesRowObject[["CDASH Variable"]] <-
          self$`CDASH Variable`
      }
      if (!is.null(self$`CDASH Variable Label`)) {
        ExportCdashDomainVariablesRowObject[["CDASH Variable Label"]] <-
          self$`CDASH Variable Label`
      }
      if (!is.null(self$`DRAFT CDASH Definition`)) {
        ExportCdashDomainVariablesRowObject[["DRAFT CDASH Definition"]] <-
          self$`DRAFT CDASH Definition`
      }
      if (!is.null(self$`Domain Specific`)) {
        ExportCdashDomainVariablesRowObject[["Domain Specific"]] <-
          self$`Domain Specific`
      }
      if (!is.null(self$`Question Text`)) {
        ExportCdashDomainVariablesRowObject[["Question Text"]] <-
          self$`Question Text`
      }
      if (!is.null(self$`Prompt`)) {
        ExportCdashDomainVariablesRowObject[["Prompt"]] <-
          self$`Prompt`
      }
      if (!is.null(self$`Type`)) {
        ExportCdashDomainVariablesRowObject[["Type"]] <-
          self$`Type`
      }
      if (!is.null(self$`SDTM Target`)) {
        ExportCdashDomainVariablesRowObject[["SDTM Target"]] <-
          self$`SDTM Target`
      }
      if (!is.null(self$`Mapping Instructions`)) {
        ExportCdashDomainVariablesRowObject[["Mapping Instructions"]] <-
          self$`Mapping Instructions`
      }
      if (!is.null(self$`Controlled Terminology Codelist Name`)) {
        ExportCdashDomainVariablesRowObject[["Controlled Terminology Codelist Name"]] <-
          self$`Controlled Terminology Codelist Name`
      }
      if (!is.null(self$`Implementation Notes`)) {
        ExportCdashDomainVariablesRowObject[["Implementation Notes"]] <-
          self$`Implementation Notes`
      }
      return(ExportCdashDomainVariablesRowObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportCdashDomainVariablesRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportCdashDomainVariablesRow
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`Version`)) {
        self$`Version` <- this_object$`Version`
      }
      if (!is.null(this_object$`Class`)) {
        self$`Class` <- this_object$`Class`
      }
      if (!is.null(this_object$`Domain`)) {
        self$`Domain` <- this_object$`Domain`
      }
      if (!is.null(this_object$`Variable Order`)) {
        self$`Variable Order` <- this_object$`Variable Order`
      }
      if (!is.null(this_object$`CDASH Variable`)) {
        self$`CDASH Variable` <- this_object$`CDASH Variable`
      }
      if (!is.null(this_object$`CDASH Variable Label`)) {
        self$`CDASH Variable Label` <- this_object$`CDASH Variable Label`
      }
      if (!is.null(this_object$`DRAFT CDASH Definition`)) {
        self$`DRAFT CDASH Definition` <- this_object$`DRAFT CDASH Definition`
      }
      if (!is.null(this_object$`Domain Specific`)) {
        self$`Domain Specific` <- this_object$`Domain Specific`
      }
      if (!is.null(this_object$`Question Text`)) {
        self$`Question Text` <- this_object$`Question Text`
      }
      if (!is.null(this_object$`Prompt`)) {
        self$`Prompt` <- this_object$`Prompt`
      }
      if (!is.null(this_object$`Type`)) {
        self$`Type` <- this_object$`Type`
      }
      if (!is.null(this_object$`SDTM Target`)) {
        self$`SDTM Target` <- ApiClient$new()$deserializeObj(this_object$`SDTM Target`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`Mapping Instructions`)) {
        self$`Mapping Instructions` <- this_object$`Mapping Instructions`
      }
      if (!is.null(this_object$`Controlled Terminology Codelist Name`)) {
        self$`Controlled Terminology Codelist Name` <- this_object$`Controlled Terminology Codelist Name`
      }
      if (!is.null(this_object$`Implementation Notes`)) {
        self$`Implementation Notes` <- this_object$`Implementation Notes`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ExportCdashDomainVariablesRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportCdashDomainVariablesRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportCdashDomainVariablesRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`Version` <- this_object$`Version`
      self$`Class` <- this_object$`Class`
      self$`Domain` <- this_object$`Domain`
      self$`Variable Order` <- this_object$`Variable Order`
      self$`CDASH Variable` <- this_object$`CDASH Variable`
      self$`CDASH Variable Label` <- this_object$`CDASH Variable Label`
      self$`DRAFT CDASH Definition` <- this_object$`DRAFT CDASH Definition`
      self$`Domain Specific` <- this_object$`Domain Specific`
      self$`Question Text` <- this_object$`Question Text`
      self$`Prompt` <- this_object$`Prompt`
      self$`Type` <- this_object$`Type`
      self$`SDTM Target` <- ApiClient$new()$deserializeObj(this_object$`SDTM Target`, "array[character]", loadNamespace("openapi"))
      self$`Mapping Instructions` <- this_object$`Mapping Instructions`
      self$`Controlled Terminology Codelist Name` <- this_object$`Controlled Terminology Codelist Name`
      self$`Implementation Notes` <- this_object$`Implementation Notes`
      self
    },

    #' @description
    #' Validate JSON input with respect to ExportCdashDomainVariablesRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ExportCdashDomainVariablesRow
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
# ExportCdashDomainVariablesRow$unlock()
#
## Below is an example to define the print function
# ExportCdashDomainVariablesRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExportCdashDomainVariablesRow$lock()

