
package org.openapitools.client.model


case class SdtmDatasetVariable (
    _ordinal: Option[String],
    _name: Option[String],
    _label: Option[String],
    _description: Option[String],
    _role: Option[String],
    _roleDescription: Option[String],
    _simpleDatatype: Option[String],
    _describedValueDomain: Option[String],
    _links: Option[SdtmDatasetVariableLinks]
)
object SdtmDatasetVariable {
    def toStringBody(var_ordinal: Object, var_name: Object, var_label: Object, var_description: Object, var_role: Object, var_roleDescription: Object, var_simpleDatatype: Object, var_describedValueDomain: Object, var_links: Object) =
        s"""
        | {
        | "ordinal":$var_ordinal,"name":$var_name,"label":$var_label,"description":$var_description,"role":$var_role,"roleDescription":$var_roleDescription,"simpleDatatype":$var_simpleDatatype,"describedValueDomain":$var_describedValueDomain,"links":$var_links
        | }
        """.stripMargin
}
