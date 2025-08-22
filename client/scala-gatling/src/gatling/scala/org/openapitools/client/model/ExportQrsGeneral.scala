
package org.openapitools.client.model


case class ExportQrsGeneral (
    _name: Option[String],
    _label: Option[String],
    _effectiveDate: Option[String],
    _description: Option[String],
    _type: Option[String],
    _categorysCodelistCCode: Option[String],
    _categorysTermCCode: Option[String]
)
object ExportQrsGeneral {
    def toStringBody(var_name: Object, var_label: Object, var_effectiveDate: Object, var_description: Object, var_type: Object, var_categorysCodelistCCode: Object, var_categorysTermCCode: Object) =
        s"""
        | {
        | "name":$var_name,"label":$var_label,"effectiveDate":$var_effectiveDate,"description":$var_description,"type":$var_type,"categorysCodelistCCode":$var_categorysCodelistCCode,"categorysTermCCode":$var_categorysTermCCode
        | }
        """.stripMargin
}
