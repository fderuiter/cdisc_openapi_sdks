package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AdamDatastructureVariables._

case class AdamDatastructureVariables (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
`class`: Option[String],
links: Option[AdamDatastructureVariablesLinks])

object AdamDatastructureVariables {
  import DateTimeCodecs._

  implicit val AdamDatastructureVariablesCodecJson: CodecJson[AdamDatastructureVariables] = CodecJson.derive[AdamDatastructureVariables]
  implicit val AdamDatastructureVariablesDecoder: EntityDecoder[AdamDatastructureVariables] = jsonOf[AdamDatastructureVariables]
  implicit val AdamDatastructureVariablesEncoder: EntityEncoder[AdamDatastructureVariables] = jsonEncoderOf[AdamDatastructureVariables]
}
