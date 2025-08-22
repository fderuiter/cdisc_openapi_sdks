package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ProductgroupQrs._

case class ProductgroupQrs (
  links: Option[ProductgroupQrsLinks])

object ProductgroupQrs {
  import DateTimeCodecs._

  implicit val ProductgroupQrsCodecJson: CodecJson[ProductgroupQrs] = CodecJson.derive[ProductgroupQrs]
  implicit val ProductgroupQrsDecoder: EntityDecoder[ProductgroupQrs] = jsonOf[ProductgroupQrs]
  implicit val ProductgroupQrsEncoder: EntityEncoder[ProductgroupQrs] = jsonEncoderOf[ProductgroupQrs]
}
