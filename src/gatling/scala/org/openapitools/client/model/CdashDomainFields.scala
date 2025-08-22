
package org.openapitools.client.model


case class CdashDomainFields (
    _ordinal: Option[String],
    _name: Option[String],
    _label: Option[String],
    _links: Option[CdashDomainFieldsLinks]
)
object CdashDomainFields {
    def toStringBody(var_ordinal: Object, var_name: Object, var_label: Object, var_links: Object) =
        s"""
        | {
        | "ordinal":$var_ordinal,"name":$var_name,"label":$var_label,"links":$var_links
        | }
        """.stripMargin
}
