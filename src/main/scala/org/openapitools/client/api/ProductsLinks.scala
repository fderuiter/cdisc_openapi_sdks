package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ProductsLinks._

case class ProductsLinks (
  self: Option[ProductsRef],
dataCollection: Option[ProductgroupDataCollection],
dataTabulation: Option[ProductgroupDataTabulation],
dataAnalysis: Option[ProductgroupDataAnalysis],
terminology: Option[ProductgroupTerminology],
measure: Option[ProductgroupQrs])

object ProductsLinks {
  import DateTimeCodecs._

  implicit val ProductsLinksCodecJson: CodecJson[ProductsLinks] = CodecJson.derive[ProductsLinks]
  implicit val ProductsLinksDecoder: EntityDecoder[ProductsLinks] = jsonOf[ProductsLinks]
  implicit val ProductsLinksEncoder: EntityEncoder[ProductsLinks] = jsonEncoderOf[ProductsLinks]
}
