
package org.openapitools.client.model


case class XmlProductgroupTerminology (
    _self: Option[ProductgroupTerminology]
)
object XmlProductgroupTerminology {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
