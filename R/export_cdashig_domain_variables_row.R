#' Create a new ExportCdashigDomainVariablesRow
#'
#' @description
#' ExportCdashigDomainVariablesRow Class
#'
#' @docType class
#' @title ExportCdashigDomainVariablesRow
#' @description ExportCdashigDomainVariablesRow Class
#' @format An \code{R6Class} generator object
#' @field Version  character [optional]
#' @field Class  character [optional]
#' @field Domain  character [optional]
#' @field Data Collection Scenario  character [optional]
#' @field Variable Order  character [optional]
#' @field CDASHIG Variable  character [optional]
#' @field CDASHIG Variable Label  character [optional]
#' @field DRAFT CDASHIG Definition  character [optional]
#' @field Question Text  character [optional]
#' @field Prompt  character [optional]
#' @field Type  character [optional]
#' @field CDASHIG Core  character [optional]
#' @field Case Report Form Completion Instructions  character [optional]
#' @field SDTMIG Target  list(character) [optional]
#' @field Mapping Instructions  character [optional]
#' @field Controlled Terminology Codelist Name  character [optional]
#' @field Implementation Notes  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExportCdashigDomainVariablesRow <- R6::R6Class(
  "ExportCdashigDomainVariablesRow",
  public = list(
    `Version` = NULL,
    `Class` = NULL,
    `Domain` = NULL,
    `Data Collection Scenario` = NULL,
    `Variable Order` = NULL,
    `CDASHIG Variable` = NULL,
    `CDASHIG Variable Label` = NULL,
    `DRAFT CDASHIG Definition` = NULL,
    `Question Text` = NULL,
    `Prompt` = NULL,
    `Type` = NULL,
    `CDASHIG Core` = NULL,
    `Case Report Form Completion Instructions` = NULL,
    `SDTMIG Target` = NULL,
    `Mapping Instructions` = NULL,
    `Controlled Terminology Codelist Name` = NULL,
    `Implementation Notes` = NULL,

    #' @description
    #' Initialize a new ExportCdashigDomainVariablesRow class.
    #'
    #' @param Version Version
    #' @param Class Class
    #' @param Domain Domain
    #' @param Data Collection Scenario Data Collection Scenario
    #' @param Variable Order Variable Order
    #' @param CDASHIG Variable CDASHIG Variable
    #' @param CDASHIG Variable Label CDASHIG Variable Label
    #' @param DRAFT CDASHIG Definition DRAFT CDASHIG Definition
    #' @param Question Text Question Text
    #' @param Prompt Prompt
    #' @param Type Type
    #' @param CDASHIG Core CDASHIG Core
    #' @param Case Report Form Completion Instructions Case Report Form Completion Instructions
    #' @param SDTMIG Target SDTMIG Target
    #' @param Mapping Instructions Mapping Instructions
    #' @param Controlled Terminology Codelist Name Controlled Terminology Codelist Name
    #' @param Implementation Notes Implementation Notes
    #' @param ... Other optional arguments.
    initialize = function(`Version` = NULL, `Class` = NULL, `Domain` = NULL, `Data Collection Scenario` = NULL, `Variable Order` = NULL, `CDASHIG Variable` = NULL, `CDASHIG Variable Label` = NULL, `DRAFT CDASHIG Definition` = NULL, `Question Text` = NULL, `Prompt` = NULL, `Type` = NULL, `CDASHIG Core` = NULL, `Case Report Form Completion Instructions` = NULL, `SDTMIG Target` = NULL, `Mapping Instructions` = NULL, `Controlled Terminology Codelist Name` = NULL, `Implementation Notes` = NULL, ...) {
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
      if (!is.null(`Data Collection Scenario`)) {
        if (!(is.character(`Data Collection Scenario`) && length(`Data Collection Scenario`) == 1)) {
          stop(paste("Error! Invalid data for `Data Collection Scenario`. Must be a string:", `Data Collection Scenario`))
        }
        self$`Data Collection Scenario` <- `Data Collection Scenario`
      }
      if (!is.null(`Variable Order`)) {
        if (!(is.character(`Variable Order`) && length(`Variable Order`) == 1)) {
          stop(paste("Error! Invalid data for `Variable Order`. Must be a string:", `Variable Order`))
        }
        self$`Variable Order` <- `Variable Order`
      }
      if (!is.null(`CDASHIG Variable`)) {
        if (!(is.character(`CDASHIG Variable`) && length(`CDASHIG Variable`) == 1)) {
          stop(paste("Error! Invalid data for `CDASHIG Variable`. Must be a string:", `CDASHIG Variable`))
        }
        self$`CDASHIG Variable` <- `CDASHIG Variable`
      }
      if (!is.null(`CDASHIG Variable Label`)) {
        if (!(is.character(`CDASHIG Variable Label`) && length(`CDASHIG Variable Label`) == 1)) {
          stop(paste("Error! Invalid data for `CDASHIG Variable Label`. Must be a string:", `CDASHIG Variable Label`))
        }
        self$`CDASHIG Variable Label` <- `CDASHIG Variable Label`
      }
      if (!is.null(`DRAFT CDASHIG Definition`)) {
        if (!(is.character(`DRAFT CDASHIG Definition`) && length(`DRAFT CDASHIG Definition`) == 1)) {
          stop(paste("Error! Invalid data for `DRAFT CDASHIG Definition`. Must be a string:", `DRAFT CDASHIG Definition`))
        }
        self$`DRAFT CDASHIG Definition` <- `DRAFT CDASHIG Definition`
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
      if (!is.null(`CDASHIG Core`)) {
        if (!(is.character(`CDASHIG Core`) && length(`CDASHIG Core`) == 1)) {
          stop(paste("Error! Invalid data for `CDASHIG Core`. Must be a string:", `CDASHIG Core`))
        }
        self$`CDASHIG Core` <- `CDASHIG Core`
      }
      if (!is.null(`Case Report Form Completion Instructions`)) {
        if (!(is.character(`Case Report Form Completion Instructions`) && length(`Case Report Form Completion Instructions`) == 1)) {
          stop(paste("Error! Invalid data for `Case Report Form Completion Instructions`. Must be a string:", `Case Report Form Completion Instructions`))
        }
        self$`Case Report Form Completion Instructions` <- `Case Report Form Completion Instructions`
      }
      if (!is.null(`SDTMIG Target`)) {
        stopifnot(is.vector(`SDTMIG Target`), length(`SDTMIG Target`) != 0)
        sapply(`SDTMIG Target`, function(x) stopifnot(is.character(x)))
        self$`SDTMIG Target` <- `SDTMIG Target`
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
    #' @return ExportCdashigDomainVariablesRow as a base R list.
    #' @examples
    #' # convert array of ExportCdashigDomainVariablesRow (x) to a data frame
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
    #' Convert ExportCdashigDomainVariablesRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ExportCdashigDomainVariablesRowObject <- list()
      if (!is.null(self$`Version`)) {
        ExportCdashigDomainVariablesRowObject[["Version"]] <-
          self$`Version`
      }
      if (!is.null(self$`Class`)) {
        ExportCdashigDomainVariablesRowObject[["Class"]] <-
          self$`Class`
      }
      if (!is.null(self$`Domain`)) {
        ExportCdashigDomainVariablesRowObject[["Domain"]] <-
          self$`Domain`
      }
      if (!is.null(self$`Data Collection Scenario`)) {
        ExportCdashigDomainVariablesRowObject[["Data Collection Scenario"]] <-
          self$`Data Collection Scenario`
      }
      if (!is.null(self$`Variable Order`)) {
        ExportCdashigDomainVariablesRowObject[["Variable Order"]] <-
          self$`Variable Order`
      }
      if (!is.null(self$`CDASHIG Variable`)) {
        ExportCdashigDomainVariablesRowObject[["CDASHIG Variable"]] <-
          self$`CDASHIG Variable`
      }
      if (!is.null(self$`CDASHIG Variable Label`)) {
        ExportCdashigDomainVariablesRowObject[["CDASHIG Variable Label"]] <-
          self$`CDASHIG Variable Label`
      }
      if (!is.null(self$`DRAFT CDASHIG Definition`)) {
        ExportCdashigDomainVariablesRowObject[["DRAFT CDASHIG Definition"]] <-
          self$`DRAFT CDASHIG Definition`
      }
      if (!is.null(self$`Question Text`)) {
        ExportCdashigDomainVariablesRowObject[["Question Text"]] <-
          self$`Question Text`
      }
      if (!is.null(self$`Prompt`)) {
        ExportCdashigDomainVariablesRowObject[["Prompt"]] <-
          self$`Prompt`
      }
      if (!is.null(self$`Type`)) {
        ExportCdashigDomainVariablesRowObject[["Type"]] <-
          self$`Type`
      }
      if (!is.null(self$`CDASHIG Core`)) {
        ExportCdashigDomainVariablesRowObject[["CDASHIG Core"]] <-
          self$`CDASHIG Core`
      }
      if (!is.null(self$`Case Report Form Completion Instructions`)) {
        ExportCdashigDomainVariablesRowObject[["Case Report Form Completion Instructions"]] <-
          self$`Case Report Form Completion Instructions`
      }
      if (!is.null(self$`SDTMIG Target`)) {
        ExportCdashigDomainVariablesRowObject[["SDTMIG Target"]] <-
          self$`SDTMIG Target`
      }
      if (!is.null(self$`Mapping Instructions`)) {
        ExportCdashigDomainVariablesRowObject[["Mapping Instructions"]] <-
          self$`Mapping Instructions`
      }
      if (!is.null(self$`Controlled Terminology Codelist Name`)) {
        ExportCdashigDomainVariablesRowObject[["Controlled Terminology Codelist Name"]] <-
          self$`Controlled Terminology Codelist Name`
      }
      if (!is.null(self$`Implementation Notes`)) {
        ExportCdashigDomainVariablesRowObject[["Implementation Notes"]] <-
          self$`Implementation Notes`
      }
      return(ExportCdashigDomainVariablesRowObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportCdashigDomainVariablesRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportCdashigDomainVariablesRow
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
      if (!is.null(this_object$`Data Collection Scenario`)) {
        self$`Data Collection Scenario` <- this_object$`Data Collection Scenario`
      }
      if (!is.null(this_object$`Variable Order`)) {
        self$`Variable Order` <- this_object$`Variable Order`
      }
      if (!is.null(this_object$`CDASHIG Variable`)) {
        self$`CDASHIG Variable` <- this_object$`CDASHIG Variable`
      }
      if (!is.null(this_object$`CDASHIG Variable Label`)) {
        self$`CDASHIG Variable Label` <- this_object$`CDASHIG Variable Label`
      }
      if (!is.null(this_object$`DRAFT CDASHIG Definition`)) {
        self$`DRAFT CDASHIG Definition` <- this_object$`DRAFT CDASHIG Definition`
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
      if (!is.null(this_object$`CDASHIG Core`)) {
        self$`CDASHIG Core` <- this_object$`CDASHIG Core`
      }
      if (!is.null(this_object$`Case Report Form Completion Instructions`)) {
        self$`Case Report Form Completion Instructions` <- this_object$`Case Report Form Completion Instructions`
      }
      if (!is.null(this_object$`SDTMIG Target`)) {
        self$`SDTMIG Target` <- ApiClient$new()$deserializeObj(this_object$`SDTMIG Target`, "array[character]", loadNamespace("openapi"))
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
    #' @return ExportCdashigDomainVariablesRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ExportCdashigDomainVariablesRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of ExportCdashigDomainVariablesRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`Version` <- this_object$`Version`
      self$`Class` <- this_object$`Class`
      self$`Domain` <- this_object$`Domain`
      self$`Data Collection Scenario` <- this_object$`Data Collection Scenario`
      self$`Variable Order` <- this_object$`Variable Order`
      self$`CDASHIG Variable` <- this_object$`CDASHIG Variable`
      self$`CDASHIG Variable Label` <- this_object$`CDASHIG Variable Label`
      self$`DRAFT CDASHIG Definition` <- this_object$`DRAFT CDASHIG Definition`
      self$`Question Text` <- this_object$`Question Text`
      self$`Prompt` <- this_object$`Prompt`
      self$`Type` <- this_object$`Type`
      self$`CDASHIG Core` <- this_object$`CDASHIG Core`
      self$`Case Report Form Completion Instructions` <- this_object$`Case Report Form Completion Instructions`
      self$`SDTMIG Target` <- ApiClient$new()$deserializeObj(this_object$`SDTMIG Target`, "array[character]", loadNamespace("openapi"))
      self$`Mapping Instructions` <- this_object$`Mapping Instructions`
      self$`Controlled Terminology Codelist Name` <- this_object$`Controlled Terminology Codelist Name`
      self$`Implementation Notes` <- this_object$`Implementation Notes`
      self
    },

    #' @description
    #' Validate JSON input with respect to ExportCdashigDomainVariablesRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ExportCdashigDomainVariablesRow
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
# ExportCdashigDomainVariablesRow$unlock()
#
## Below is an example to define the print function
# ExportCdashigDomainVariablesRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ExportCdashigDomainVariablesRow$lock()

