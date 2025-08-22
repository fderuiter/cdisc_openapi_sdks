package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootSdtmDatasetVariableLinks._

case class RootSdtmDatasetVariableLinks (
  self: Option[RootSdtmDatasetVariableRef],
versions: Option[List[SdtmDatasetVariableRefVersion]])

object RootSdtmDatasetVariableLinks {
  import DateTimeCodecs._

  implicit val RootSdtmDatasetVariableLinksCodecJson: CodecJson[RootSdtmDatasetVariableLinks] = CodecJson.derive[RootSdtmDatasetVariableLinks]
  implicit val RootSdtmDatasetVariableLinksDecoder: EntityDecoder[RootSdtmDatasetVariableLinks] = jsonOf[RootSdtmDatasetVariableLinks]
  implicit val RootSdtmDatasetVariableLinksEncoder: EntityEncoder[RootSdtmDatasetVariableLinks] = jsonEncoderOf[RootSdtmDatasetVariableLinks]
}
