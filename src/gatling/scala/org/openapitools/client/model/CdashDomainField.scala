
package org.openapitools.client.model


case class CdashDomainField (
    _ordinal: Option[String],
    _name: Option[String],
    _label: Option[String],
    _definition: Option[String],
    _domainSpecific: Option[String],
    _questionText: Option[String],
    _prompt: Option[String],
    _simpleDatatype: Option[String],
    _implementationNotes: Option[String],
    _mappingInstructions: Option[String],
    _links: Option[CdashDomainFieldLinks]
)
object CdashDomainField {
    def toStringBody(var_ordinal: Object, var_name: Object, var_label: Object, var_definition: Object, var_domainSpecific: Object, var_questionText: Object, var_prompt: Object, var_simpleDatatype: Object, var_implementationNotes: Object, var_mappingInstructions: Object, var_links: Object) =
        s"""
        | {
        | "ordinal":$var_ordinal,"name":$var_name,"label":$var_label,"definition":$var_definition,"domainSpecific":$var_domainSpecific,"questionText":$var_questionText,"prompt":$var_prompt,"simpleDatatype":$var_simpleDatatype,"implementationNotes":$var_implementationNotes,"mappingInstructions":$var_mappingInstructions,"links":$var_links
        | }
        """.stripMargin
}
