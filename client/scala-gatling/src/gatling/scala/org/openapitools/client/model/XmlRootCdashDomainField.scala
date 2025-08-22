
package org.openapitools.client.model


case class XmlRootCdashDomainField (
    _self: Option[RootCdashDomainField]
)
object XmlRootCdashDomainField {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
