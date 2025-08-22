
package org.openapitools.client.model


case class XmlCdashClassField (
    _self: Option[CdashClassField]
)
object XmlCdashClassField {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
