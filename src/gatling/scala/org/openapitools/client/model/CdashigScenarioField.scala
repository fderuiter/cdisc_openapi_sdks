
package org.openapitools.client.model


case class CdashigScenarioField (
    _ordinal: Option[String],
    _name: Option[String],
    _label: Option[String],
    _definition: Option[String],
    _questionText: Option[String],
    _prompt: Option[String],
    _completionInstructions: Option[String],
    _implementationNotes: Option[String],
    _simpleDatatype: Option[String],
    _mappingInstructions: Option[String],
    _core: Option[String],
    _links: Option[CdashigScenarioFieldLinks]
)
object CdashigScenarioField {
    def toStringBody(var_ordinal: Object, var_name: Object, var_label: Object, var_definition: Object, var_questionText: Object, var_prompt: Object, var_completionInstructions: Object, var_implementationNotes: Object, var_simpleDatatype: Object, var_mappingInstructions: Object, var_core: Object, var_links: Object) =
        s"""
        | {
        | "ordinal":$var_ordinal,"name":$var_name,"label":$var_label,"definition":$var_definition,"questionText":$var_questionText,"prompt":$var_prompt,"completionInstructions":$var_completionInstructions,"implementationNotes":$var_implementationNotes,"simpleDatatype":$var_simpleDatatype,"mappingInstructions":$var_mappingInstructions,"core":$var_core,"links":$var_links
        | }
        """.stripMargin
}
