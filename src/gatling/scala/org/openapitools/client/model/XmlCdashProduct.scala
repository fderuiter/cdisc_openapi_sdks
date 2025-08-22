
package org.openapitools.client.model


case class XmlCdashProduct (
    _self: Option[CdashProduct]
)
object XmlCdashProduct {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
