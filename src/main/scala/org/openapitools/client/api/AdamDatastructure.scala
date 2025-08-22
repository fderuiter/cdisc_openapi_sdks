package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamDatastructure._

case class AdamDatastructure (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
`class`: Option[String],
links: Option[AdamDatastructureLinks],
analysisVariableSets: Option[List[AdamVarset]])

object AdamDatastructure {
  import DateTimeCodecs._

  implicit val AdamDatastructureCodecJson: CodecJson[AdamDatastructure] = CodecJson.derive[AdamDatastructure]
  implicit val AdamDatastructureDecoder: EntityDecoder[AdamDatastructure] = jsonOf[AdamDatastructure]
  implicit val AdamDatastructureEncoder: EntityEncoder[AdamDatastructure] = jsonEncoderOf[AdamDatastructure]
}
