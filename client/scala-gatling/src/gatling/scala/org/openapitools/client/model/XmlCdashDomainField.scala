
package org.openapitools.client.model


case class XmlCdashDomainField (
    _self: Option[CdashDomainField]
)
object XmlCdashDomainField {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
