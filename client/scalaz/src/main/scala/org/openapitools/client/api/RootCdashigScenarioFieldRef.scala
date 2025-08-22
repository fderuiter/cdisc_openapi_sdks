package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootCdashigScenarioFieldRef._

case class RootCdashigScenarioFieldRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object RootCdashigScenarioFieldRef {
  import DateTimeCodecs._

  implicit val RootCdashigScenarioFieldRefCodecJson: CodecJson[RootCdashigScenarioFieldRef] = CodecJson.derive[RootCdashigScenarioFieldRef]
  implicit val RootCdashigScenarioFieldRefDecoder: EntityDecoder[RootCdashigScenarioFieldRef] = jsonOf[RootCdashigScenarioFieldRef]
  implicit val RootCdashigScenarioFieldRefEncoder: EntityEncoder[RootCdashigScenarioFieldRef] = jsonEncoderOf[RootCdashigScenarioFieldRef]
}
