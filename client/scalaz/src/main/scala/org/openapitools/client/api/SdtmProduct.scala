package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmProduct._

case class SdtmProduct (
  name: Option[String],
label: Option[String],
description: Option[String],
source: Option[String],
effectiveDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
links: Option[SdtmProductLinks],
classes: Option[List[SdtmClass]],
datasets: Option[List[SdtmDataset]])

object SdtmProduct {
  import DateTimeCodecs._

  implicit val SdtmProductCodecJson: CodecJson[SdtmProduct] = CodecJson.derive[SdtmProduct]
  implicit val SdtmProductDecoder: EntityDecoder[SdtmProduct] = jsonOf[SdtmProduct]
  implicit val SdtmProductEncoder: EntityEncoder[SdtmProduct] = jsonEncoderOf[SdtmProduct]
}
