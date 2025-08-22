package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigProduct._

case class SdtmigProduct (
  name: Option[String],
label: Option[String],
description: Option[String],
source: Option[String],
effectiveDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
links: Option[SdtmigProductLinks],
classes: Option[List[SdtmigClass]])

object SdtmigProduct {
  import DateTimeCodecs._

  implicit val SdtmigProductCodecJson: CodecJson[SdtmigProduct] = CodecJson.derive[SdtmigProduct]
  implicit val SdtmigProductDecoder: EntityDecoder[SdtmigProduct] = jsonOf[SdtmigProduct]
  implicit val SdtmigProductEncoder: EntityEncoder[SdtmigProduct] = jsonEncoderOf[SdtmigProduct]
}
