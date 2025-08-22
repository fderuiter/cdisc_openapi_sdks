package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootSdtmClassVariableLinks._

case class RootSdtmClassVariableLinks (
  self: Option[RootSdtmClassVariableRef],
versions: Option[List[SdtmClassVariableRefVersion]])

object RootSdtmClassVariableLinks {
  import DateTimeCodecs._

  implicit val RootSdtmClassVariableLinksCodecJson: CodecJson[RootSdtmClassVariableLinks] = CodecJson.derive[RootSdtmClassVariableLinks]
  implicit val RootSdtmClassVariableLinksDecoder: EntityDecoder[RootSdtmClassVariableLinks] = jsonOf[RootSdtmClassVariableLinks]
  implicit val RootSdtmClassVariableLinksEncoder: EntityEncoder[RootSdtmClassVariableLinks] = jsonEncoderOf[RootSdtmClassVariableLinks]
}
