
package org.openapitools.client.model


case class ProductgroupDataCollectionLinks (
    _self: Option[ProductgroupRef],
    _cdash: Option[List[CdashProductRefElement]],
    _cdashig: Option[List[CdashigProductRefElement]]
)
object ProductgroupDataCollectionLinks {
    def toStringBody(var_self: Object, var_cdash: Object, var_cdashig: Object) =
        s"""
        | {
        | "self":$var_self,"cdash":$var_cdash,"cdashig":$var_cdashig
        | }
        """.stripMargin
}
