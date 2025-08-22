package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ProductgroupDataCollection._

case class ProductgroupDataCollection (
  links: Option[ProductgroupDataCollectionLinks])

object ProductgroupDataCollection {
  import DateTimeCodecs._

  implicit val ProductgroupDataCollectionCodecJson: CodecJson[ProductgroupDataCollection] = CodecJson.derive[ProductgroupDataCollection]
  implicit val ProductgroupDataCollectionDecoder: EntityDecoder[ProductgroupDataCollection] = jsonOf[ProductgroupDataCollection]
  implicit val ProductgroupDataCollectionEncoder: EntityEncoder[ProductgroupDataCollection] = jsonEncoderOf[ProductgroupDataCollection]
}
