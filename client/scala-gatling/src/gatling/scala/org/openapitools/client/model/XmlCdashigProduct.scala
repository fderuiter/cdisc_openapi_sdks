
package org.openapitools.client.model


case class XmlCdashigProduct (
    _self: Option[CdashigProduct]
)
object XmlCdashigProduct {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
