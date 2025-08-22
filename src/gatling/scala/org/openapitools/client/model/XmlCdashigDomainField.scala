
package org.openapitools.client.model


case class XmlCdashigDomainField (
    _self: Option[CdashigDomainField]
)
object XmlCdashigDomainField {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
