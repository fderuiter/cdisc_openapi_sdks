
package org.openapitools.client.model


case class XmlCdashigDomain (
    _self: Option[CdashigDomain]
)
object XmlCdashigDomain {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
