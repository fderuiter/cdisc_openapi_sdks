
package org.openapitools.client.model


case class CdashigDomain (
    _ordinal: Option[String],
    _name: Option[String],
    _label: Option[String],
    _links: Option[CdashigDomainLinks],
    _fields: Option[List[CdashigDomainField]]
)
object CdashigDomain {
    def toStringBody(var_ordinal: Object, var_name: Object, var_label: Object, var_links: Object, var_fields: Object) =
        s"""
        | {
        | "ordinal":$var_ordinal,"name":$var_name,"label":$var_label,"links":$var_links,"fields":$var_fields
        | }
        """.stripMargin
}
