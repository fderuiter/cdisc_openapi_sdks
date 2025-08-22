package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashProduct._

case class CdashProduct (
  name: Option[String],
label: Option[String],
description: Option[String],
source: Option[String],
effectiveDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
links: Option[CdashProductLinks],
classes: Option[List[CdashClass]],
domains: Option[List[CdashDomain]])

object CdashProduct {
  import DateTimeCodecs._

  implicit val CdashProductCodecJson: CodecJson[CdashProduct] = CodecJson.derive[CdashProduct]
  implicit val CdashProductDecoder: EntityDecoder[CdashProduct] = jsonOf[CdashProduct]
  implicit val CdashProductEncoder: EntityEncoder[CdashProduct] = jsonEncoderOf[CdashProduct]
}
