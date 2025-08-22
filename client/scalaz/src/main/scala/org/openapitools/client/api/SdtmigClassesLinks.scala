package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmigClassesLinks._

case class SdtmigClassesLinks (
  self: Option[SdtmigClassesRef],
priorVersion: Option[SdtmigClassesRef],
classes: Option[List[SdtmigClassRefElement]])

object SdtmigClassesLinks {
  import DateTimeCodecs._

  implicit val SdtmigClassesLinksCodecJson: CodecJson[SdtmigClassesLinks] = CodecJson.derive[SdtmigClassesLinks]
  implicit val SdtmigClassesLinksDecoder: EntityDecoder[SdtmigClassesLinks] = jsonOf[SdtmigClassesLinks]
  implicit val SdtmigClassesLinksEncoder: EntityEncoder[SdtmigClassesLinks] = jsonEncoderOf[SdtmigClassesLinks]
}
