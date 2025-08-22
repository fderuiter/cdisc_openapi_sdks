
package org.openapitools.client.model


case class XmlCdashClassDomains (
    _self: Option[CdashClassDomains]
)
object XmlCdashClassDomains {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
