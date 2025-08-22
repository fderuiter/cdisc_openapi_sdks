package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigClass._

case class SdtmigClass (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
links: Option[SdtmigClassLinks],
datasets: Option[List[SdtmigDataset]])

object SdtmigClass {
  import DateTimeCodecs._

  implicit val SdtmigClassCodecJson: CodecJson[SdtmigClass] = CodecJson.derive[SdtmigClass]
  implicit val SdtmigClassDecoder: EntityDecoder[SdtmigClass] = jsonOf[SdtmigClass]
  implicit val SdtmigClassEncoder: EntityEncoder[SdtmigClass] = jsonEncoderOf[SdtmigClass]
}
