package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SdtmClassVariableLinks._

case class SdtmClassVariableLinks (
  self: Option[SdtmClassVariableRef],
parentProduct: Option[SdtmProductRef],
parentClass: Option[SdtmClassRef],
qualifiesVariables: Option[List[SdtmClassVariableRefQualifies]],
rootItem: Option[RootSdtmClassVariableRef],
priorVersion: Option[SdtmClassVariableRef])

object SdtmClassVariableLinks {
  import DateTimeCodecs._

  implicit val SdtmClassVariableLinksCodecJson: CodecJson[SdtmClassVariableLinks] = CodecJson.derive[SdtmClassVariableLinks]
  implicit val SdtmClassVariableLinksDecoder: EntityDecoder[SdtmClassVariableLinks] = jsonOf[SdtmClassVariableLinks]
  implicit val SdtmClassVariableLinksEncoder: EntityEncoder[SdtmClassVariableLinks] = jsonEncoderOf[SdtmClassVariableLinks]
}
