package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigScenarioFieldsRef._

case class CdashigScenarioFieldsRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashigScenarioFieldsRef {
  import DateTimeCodecs._

  implicit val CdashigScenarioFieldsRefCodecJson: CodecJson[CdashigScenarioFieldsRef] = CodecJson.derive[CdashigScenarioFieldsRef]
  implicit val CdashigScenarioFieldsRefDecoder: EntityDecoder[CdashigScenarioFieldsRef] = jsonOf[CdashigScenarioFieldsRef]
  implicit val CdashigScenarioFieldsRefEncoder: EntityEncoder[CdashigScenarioFieldsRef] = jsonEncoderOf[CdashigScenarioFieldsRef]
}
