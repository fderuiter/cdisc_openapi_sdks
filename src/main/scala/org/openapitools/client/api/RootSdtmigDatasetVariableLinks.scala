package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootSdtmigDatasetVariableLinks._

case class RootSdtmigDatasetVariableLinks (
  self: Option[RootSdtmigDatasetVariableRef],
versions: Option[List[SdtmigDatasetVariableRefVersion]])

object RootSdtmigDatasetVariableLinks {
  import DateTimeCodecs._

  implicit val RootSdtmigDatasetVariableLinksCodecJson: CodecJson[RootSdtmigDatasetVariableLinks] = CodecJson.derive[RootSdtmigDatasetVariableLinks]
  implicit val RootSdtmigDatasetVariableLinksDecoder: EntityDecoder[RootSdtmigDatasetVariableLinks] = jsonOf[RootSdtmigDatasetVariableLinks]
  implicit val RootSdtmigDatasetVariableLinksEncoder: EntityEncoder[RootSdtmigDatasetVariableLinks] = jsonEncoderOf[RootSdtmigDatasetVariableLinks]
}
