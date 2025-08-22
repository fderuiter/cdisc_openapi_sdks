
package org.openapitools.client.model


case class XmlCdashigScenario (
    _self: Option[CdashigScenario]
)
object XmlCdashigScenario {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
