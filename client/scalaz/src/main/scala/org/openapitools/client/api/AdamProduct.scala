package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamProduct._

case class AdamProduct (
  name: Option[String],
label: Option[String],
description: Option[String],
source: Option[String],
effectiveDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
links: Option[AdamProductLinks],
dataStructures: Option[List[AdamDatastructure]])

object AdamProduct {
  import DateTimeCodecs._

  implicit val AdamProductCodecJson: CodecJson[AdamProduct] = CodecJson.derive[AdamProduct]
  implicit val AdamProductDecoder: EntityDecoder[AdamProduct] = jsonOf[AdamProduct]
  implicit val AdamProductEncoder: EntityEncoder[AdamProduct] = jsonEncoderOf[AdamProduct]
}
