package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigClass._

case class CdashigClass (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
links: Option[CdashigClassLinks],
domains: Option[List[CdashigDomain]],
scenarios: Option[List[CdashigScenario]])

object CdashigClass {
  import DateTimeCodecs._

  implicit val CdashigClassCodecJson: CodecJson[CdashigClass] = CodecJson.derive[CdashigClass]
  implicit val CdashigClassDecoder: EntityDecoder[CdashigClass] = jsonOf[CdashigClass]
  implicit val CdashigClassEncoder: EntityEncoder[CdashigClass] = jsonEncoderOf[CdashigClass]
}
