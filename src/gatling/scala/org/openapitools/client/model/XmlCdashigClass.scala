
package org.openapitools.client.model


case class XmlCdashigClass (
    _self: Option[CdashigClass]
)
object XmlCdashigClass {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
