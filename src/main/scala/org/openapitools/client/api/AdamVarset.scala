package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamVarset._

case class AdamVarset (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
links: Option[AdamVarsetLinks],
analysisVariables: Option[List[AdamVariable]])

object AdamVarset {
  import DateTimeCodecs._

  implicit val AdamVarsetCodecJson: CodecJson[AdamVarset] = CodecJson.derive[AdamVarset]
  implicit val AdamVarsetDecoder: EntityDecoder[AdamVarset] = jsonOf[AdamVarset]
  implicit val AdamVarsetEncoder: EntityEncoder[AdamVarset] = jsonEncoderOf[AdamVarset]
}
