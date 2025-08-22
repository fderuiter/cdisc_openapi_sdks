package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Lastupdated._

case class Lastupdated (
  links: Option[LastupdatedLinks],
overall: Option[String],
dataAnalysis: Option[String],
dataCollection: Option[String],
dataTabulation: Option[String],
measure: Option[String],
terminology: Option[String])

object Lastupdated {
  import DateTimeCodecs._

  implicit val LastupdatedCodecJson: CodecJson[Lastupdated] = CodecJson.derive[Lastupdated]
  implicit val LastupdatedDecoder: EntityDecoder[Lastupdated] = jsonOf[Lastupdated]
  implicit val LastupdatedEncoder: EntityEncoder[Lastupdated] = jsonEncoderOf[Lastupdated]
}
