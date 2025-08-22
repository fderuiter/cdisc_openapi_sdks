
package org.openapitools.client.model


case class XmlCdashClass (
    _self: Option[CdashClass]
)
object XmlCdashClass {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
