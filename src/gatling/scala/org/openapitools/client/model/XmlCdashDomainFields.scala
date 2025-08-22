
package org.openapitools.client.model


case class XmlCdashDomainFields (
    _self: Option[CdashDomainFields]
)
object XmlCdashDomainFields {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
