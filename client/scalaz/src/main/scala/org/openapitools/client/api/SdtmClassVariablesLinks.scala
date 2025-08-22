package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmClassVariablesLinks._

case class SdtmClassVariablesLinks (
  self: Option[SdtmClassVariablesRef],
parentProduct: Option[SdtmProductRef],
priorVersion: Option[SdtmClassVariablesRef],
classVariables: Option[List[SdtmClassVariableRefElement]])

object SdtmClassVariablesLinks {
  import DateTimeCodecs._

  implicit val SdtmClassVariablesLinksCodecJson: CodecJson[SdtmClassVariablesLinks] = CodecJson.derive[SdtmClassVariablesLinks]
  implicit val SdtmClassVariablesLinksDecoder: EntityDecoder[SdtmClassVariablesLinks] = jsonOf[SdtmClassVariablesLinks]
  implicit val SdtmClassVariablesLinksEncoder: EntityEncoder[SdtmClassVariablesLinks] = jsonEncoderOf[SdtmClassVariablesLinks]
}
