
package org.openapitools.client.model


case class XmlProductgroupDataAnalysis (
    _self: Option[ProductgroupDataAnalysis]
)
object XmlProductgroupDataAnalysis {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
