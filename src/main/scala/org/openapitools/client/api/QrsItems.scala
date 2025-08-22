package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QrsItems._

case class QrsItems (
  name: Option[String],
label: Option[String],
description: Option[String],
effectiveDate: Option[String],
untilDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
qrsType: Option[String],
links: Option[QrsItemsLinks])

object QrsItems {
  import DateTimeCodecs._

  implicit val QrsItemsCodecJson: CodecJson[QrsItems] = CodecJson.derive[QrsItems]
  implicit val QrsItemsDecoder: EntityDecoder[QrsItems] = jsonOf[QrsItems]
  implicit val QrsItemsEncoder: EntityEncoder[QrsItems] = jsonEncoderOf[QrsItems]
}
