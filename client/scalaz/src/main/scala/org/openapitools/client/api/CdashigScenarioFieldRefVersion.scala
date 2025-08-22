package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigScenarioFieldRefVersion._

case class CdashigScenarioFieldRefVersion (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashigScenarioFieldRefVersion {
  import DateTimeCodecs._

  implicit val CdashigScenarioFieldRefVersionCodecJson: CodecJson[CdashigScenarioFieldRefVersion] = CodecJson.derive[CdashigScenarioFieldRefVersion]
  implicit val CdashigScenarioFieldRefVersionDecoder: EntityDecoder[CdashigScenarioFieldRefVersion] = jsonOf[CdashigScenarioFieldRefVersion]
  implicit val CdashigScenarioFieldRefVersionEncoder: EntityEncoder[CdashigScenarioFieldRefVersion] = jsonEncoderOf[CdashigScenarioFieldRefVersion]
}
