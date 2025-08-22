package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmClass._

case class SdtmClass (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
links: Option[SdtmClassLinks],
classVariables: Option[List[SdtmClassVariable]],
datasets: Option[List[SdtmDataset]])

object SdtmClass {
  import DateTimeCodecs._

  implicit val SdtmClassCodecJson: CodecJson[SdtmClass] = CodecJson.derive[SdtmClass]
  implicit val SdtmClassDecoder: EntityDecoder[SdtmClass] = jsonOf[SdtmClass]
  implicit val SdtmClassEncoder: EntityEncoder[SdtmClass] = jsonEncoderOf[SdtmClass]
}
