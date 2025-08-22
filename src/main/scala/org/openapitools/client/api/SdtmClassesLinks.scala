package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmClassesLinks._

case class SdtmClassesLinks (
  self: Option[SdtmClassesRef],
priorVersion: Option[SdtmClassesRef],
classes: Option[List[SdtmClassRefElement]])

object SdtmClassesLinks {
  import DateTimeCodecs._

  implicit val SdtmClassesLinksCodecJson: CodecJson[SdtmClassesLinks] = CodecJson.derive[SdtmClassesLinks]
  implicit val SdtmClassesLinksDecoder: EntityDecoder[SdtmClassesLinks] = jsonOf[SdtmClassesLinks]
  implicit val SdtmClassesLinksEncoder: EntityEncoder[SdtmClassesLinks] = jsonEncoderOf[SdtmClassesLinks]
}
