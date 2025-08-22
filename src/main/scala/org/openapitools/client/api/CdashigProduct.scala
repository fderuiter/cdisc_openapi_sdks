package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigProduct._

case class CdashigProduct (
  name: Option[String],
label: Option[String],
description: Option[String],
source: Option[String],
effectiveDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
links: Option[CdashigProductLinks],
classes: Option[List[CdashigClass]])

object CdashigProduct {
  import DateTimeCodecs._

  implicit val CdashigProductCodecJson: CodecJson[CdashigProduct] = CodecJson.derive[CdashigProduct]
  implicit val CdashigProductDecoder: EntityDecoder[CdashigProduct] = jsonOf[CdashigProduct]
  implicit val CdashigProductEncoder: EntityEncoder[CdashigProduct] = jsonEncoderOf[CdashigProduct]
}
