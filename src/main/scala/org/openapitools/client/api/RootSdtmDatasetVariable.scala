package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootSdtmDatasetVariable._

case class RootSdtmDatasetVariable (
  links: Option[RootSdtmDatasetVariableLinks])

object RootSdtmDatasetVariable {
  import DateTimeCodecs._

  implicit val RootSdtmDatasetVariableCodecJson: CodecJson[RootSdtmDatasetVariable] = CodecJson.derive[RootSdtmDatasetVariable]
  implicit val RootSdtmDatasetVariableDecoder: EntityDecoder[RootSdtmDatasetVariable] = jsonOf[RootSdtmDatasetVariable]
  implicit val RootSdtmDatasetVariableEncoder: EntityEncoder[RootSdtmDatasetVariable] = jsonEncoderOf[RootSdtmDatasetVariable]
}
