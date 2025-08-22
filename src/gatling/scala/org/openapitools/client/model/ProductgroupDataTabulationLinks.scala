
package org.openapitools.client.model


case class ProductgroupDataTabulationLinks (
    _self: Option[ProductgroupRef],
    _sdtm: Option[List[SdtmProductRefElement]],
    _sdtmig: Option[List[SdtmigProductRefElement]],
    _sendig: Option[List[SendigProductRefElement]]
)
object ProductgroupDataTabulationLinks {
    def toStringBody(var_self: Object, var_sdtm: Object, var_sdtmig: Object, var_sendig: Object) =
        s"""
        | {
        | "self":$var_self,"sdtm":$var_sdtm,"sdtmig":$var_sdtmig,"sendig":$var_sendig
        | }
        """.stripMargin
}
