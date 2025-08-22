package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigProduct._

case class SendigProduct (
  name: Option[String],
label: Option[String],
description: Option[String],
source: Option[String],
effectiveDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
links: Option[SendigProductLinks],
classes: Option[List[SendigClass]])

object SendigProduct {
  import DateTimeCodecs._

  implicit val SendigProductCodecJson: CodecJson[SendigProduct] = CodecJson.derive[SendigProduct]
  implicit val SendigProductDecoder: EntityDecoder[SendigProduct] = jsonOf[SendigProduct]
  implicit val SendigProductEncoder: EntityEncoder[SendigProduct] = jsonEncoderOf[SendigProduct]
}
