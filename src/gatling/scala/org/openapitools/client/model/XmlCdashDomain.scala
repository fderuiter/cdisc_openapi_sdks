
package org.openapitools.client.model


case class XmlCdashDomain (
    _self: Option[CdashDomain]
)
object XmlCdashDomain {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
