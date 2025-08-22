
package org.openapitools.client.model


case class CdashClass (
    _ordinal: Option[String],
    _name: Option[String],
    _label: Option[String],
    _description: Option[String],
    _links: Option[CdashClassLinks],
    _cdashModelFields: Option[List[CdashClassField]]
)
object CdashClass {
    def toStringBody(var_ordinal: Object, var_name: Object, var_label: Object, var_description: Object, var_links: Object, var_cdashModelFields: Object) =
        s"""
        | {
        | "ordinal":$var_ordinal,"name":$var_name,"label":$var_label,"description":$var_description,"links":$var_links,"cdashModelFields":$var_cdashModelFields
        | }
        """.stripMargin
}
