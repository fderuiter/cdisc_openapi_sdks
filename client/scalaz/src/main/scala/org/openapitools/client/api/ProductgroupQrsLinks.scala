package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ProductgroupQrsLinks._

case class ProductgroupQrsLinks (
  self: Option[ProductgroupRef],
qrs: Option[List[QrsRefElement]])

object ProductgroupQrsLinks {
  import DateTimeCodecs._

  implicit val ProductgroupQrsLinksCodecJson: CodecJson[ProductgroupQrsLinks] = CodecJson.derive[ProductgroupQrsLinks]
  implicit val ProductgroupQrsLinksDecoder: EntityDecoder[ProductgroupQrsLinks] = jsonOf[ProductgroupQrsLinks]
  implicit val ProductgroupQrsLinksEncoder: EntityEncoder[ProductgroupQrsLinks] = jsonEncoderOf[ProductgroupQrsLinks]
}
