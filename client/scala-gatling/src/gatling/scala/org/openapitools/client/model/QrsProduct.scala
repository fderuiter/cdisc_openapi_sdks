
package org.openapitools.client.model


case class QrsProduct (
    _name: Option[String],
    _label: Option[String],
    _description: Option[String],
    _effectiveDate: Option[String],
    _untilDate: Option[String],
    _registrationStatus: Option[String],
    _version: Option[String],
    _qrsType: Option[String],
    _links: Option[QrsProductLinks],
    _items: Option[List[QrsItem]]
)
object QrsProduct {
    def toStringBody(var_name: Object, var_label: Object, var_description: Object, var_effectiveDate: Object, var_untilDate: Object, var_registrationStatus: Object, var_version: Object, var_qrsType: Object, var_links: Object, var_items: Object) =
        s"""
        | {
        | "name":$var_name,"label":$var_label,"description":$var_description,"effectiveDate":$var_effectiveDate,"untilDate":$var_untilDate,"registrationStatus":$var_registrationStatus,"version":$var_version,"qrsType":$var_qrsType,"links":$var_links,"items":$var_items
        | }
        """.stripMargin
}
