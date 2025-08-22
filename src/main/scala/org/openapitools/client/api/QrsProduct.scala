package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QrsProduct._

case class QrsProduct (
  name: Option[String],
label: Option[String],
description: Option[String],
effectiveDate: Option[String],
untilDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
qrsType: Option[String],
links: Option[QrsProductLinks],
items: Option[List[QrsItem]])

object QrsProduct {
  import DateTimeCodecs._

  implicit val QrsProductCodecJson: CodecJson[QrsProduct] = CodecJson.derive[QrsProduct]
  implicit val QrsProductDecoder: EntityDecoder[QrsProduct] = jsonOf[QrsProduct]
  implicit val QrsProductEncoder: EntityEncoder[QrsProduct] = jsonEncoderOf[QrsProduct]
}
