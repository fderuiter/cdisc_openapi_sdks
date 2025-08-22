
package org.openapitools.client.model


case class XmlCdashProductDomains (
    _self: Option[CdashProductDomains]
)
object XmlCdashProductDomains {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
