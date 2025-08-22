package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashClass._

case class CdashClass (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
links: Option[CdashClassLinks],
cdashModelFields: Option[List[CdashClassField]])

object CdashClass {
  import DateTimeCodecs._

  implicit val CdashClassCodecJson: CodecJson[CdashClass] = CodecJson.derive[CdashClass]
  implicit val CdashClassDecoder: EntityDecoder[CdashClass] = jsonOf[CdashClass]
  implicit val CdashClassEncoder: EntityEncoder[CdashClass] = jsonEncoderOf[CdashClass]
}
