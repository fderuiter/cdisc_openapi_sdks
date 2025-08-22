package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ProductgroupDataTabulation._

case class ProductgroupDataTabulation (
  links: Option[ProductgroupDataTabulationLinks])

object ProductgroupDataTabulation {
  import DateTimeCodecs._

  implicit val ProductgroupDataTabulationCodecJson: CodecJson[ProductgroupDataTabulation] = CodecJson.derive[ProductgroupDataTabulation]
  implicit val ProductgroupDataTabulationDecoder: EntityDecoder[ProductgroupDataTabulation] = jsonOf[ProductgroupDataTabulation]
  implicit val ProductgroupDataTabulationEncoder: EntityEncoder[ProductgroupDataTabulation] = jsonEncoderOf[ProductgroupDataTabulation]
}
