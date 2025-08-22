package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlProductgroupDataCollection._

case class XmlProductgroupDataCollection (
  self: Option[ProductgroupDataCollection])

object XmlProductgroupDataCollection {
  import DateTimeCodecs._

  implicit val XmlProductgroupDataCollectionCodecJson: CodecJson[XmlProductgroupDataCollection] = CodecJson.derive[XmlProductgroupDataCollection]
  implicit val XmlProductgroupDataCollectionDecoder: EntityDecoder[XmlProductgroupDataCollection] = jsonOf[XmlProductgroupDataCollection]
  implicit val XmlProductgroupDataCollectionEncoder: EntityEncoder[XmlProductgroupDataCollection] = jsonEncoderOf[XmlProductgroupDataCollection]
}
