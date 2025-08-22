
package org.openapitools.client.model


case class SdtmigDatasetVariable (
    _ordinal: Option[String],
    _name: Option[String],
    _label: Option[String],
    _description: Option[String],
    _role: Option[String],
    _simpleDatatype: Option[String],
    _core: Option[String],
    _describedValueDomain: Option[String],
    _valueList: Option[List[String]],
    _links: Option[SdtmigDatasetVariableLinks]
)
object SdtmigDatasetVariable {
    def toStringBody(var_ordinal: Object, var_name: Object, var_label: Object, var_description: Object, var_role: Object, var_simpleDatatype: Object, var_core: Object, var_describedValueDomain: Object, var_valueList: Object, var_links: Object) =
        s"""
        | {
        | "ordinal":$var_ordinal,"name":$var_name,"label":$var_label,"description":$var_description,"role":$var_role,"simpleDatatype":$var_simpleDatatype,"core":$var_core,"describedValueDomain":$var_describedValueDomain,"valueList":$var_valueList,"links":$var_links
        | }
        """.stripMargin
}
