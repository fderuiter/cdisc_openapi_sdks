package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamProductDatastructures._

case class AdamProductDatastructures (
  name: Option[String],
label: Option[String],
description: Option[String],
source: Option[String],
effectiveDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
links: Option[AdamProductDatastructuresLinks])

object AdamProductDatastructures {
  import DateTimeCodecs._

  implicit val AdamProductDatastructuresCodecJson: CodecJson[AdamProductDatastructures] = CodecJson.derive[AdamProductDatastructures]
  implicit val AdamProductDatastructuresDecoder: EntityDecoder[AdamProductDatastructures] = jsonOf[AdamProductDatastructures]
  implicit val AdamProductDatastructuresEncoder: EntityEncoder[AdamProductDatastructures] = jsonEncoderOf[AdamProductDatastructures]
}
