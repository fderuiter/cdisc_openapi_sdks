package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ProductgroupDataCollectionLinks._

case class ProductgroupDataCollectionLinks (
  self: Option[ProductgroupRef],
cdash: Option[List[CdashProductRefElement]],
cdashig: Option[List[CdashigProductRefElement]])

object ProductgroupDataCollectionLinks {
  import DateTimeCodecs._

  implicit val ProductgroupDataCollectionLinksCodecJson: CodecJson[ProductgroupDataCollectionLinks] = CodecJson.derive[ProductgroupDataCollectionLinks]
  implicit val ProductgroupDataCollectionLinksDecoder: EntityDecoder[ProductgroupDataCollectionLinks] = jsonOf[ProductgroupDataCollectionLinks]
  implicit val ProductgroupDataCollectionLinksEncoder: EntityEncoder[ProductgroupDataCollectionLinks] = jsonEncoderOf[ProductgroupDataCollectionLinks]
}
