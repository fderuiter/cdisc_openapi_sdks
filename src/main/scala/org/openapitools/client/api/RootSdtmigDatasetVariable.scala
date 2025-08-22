package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootSdtmigDatasetVariable._

case class RootSdtmigDatasetVariable (
  links: Option[RootSdtmigDatasetVariableLinks])

object RootSdtmigDatasetVariable {
  import DateTimeCodecs._

  implicit val RootSdtmigDatasetVariableCodecJson: CodecJson[RootSdtmigDatasetVariable] = CodecJson.derive[RootSdtmigDatasetVariable]
  implicit val RootSdtmigDatasetVariableDecoder: EntityDecoder[RootSdtmigDatasetVariable] = jsonOf[RootSdtmigDatasetVariable]
  implicit val RootSdtmigDatasetVariableEncoder: EntityEncoder[RootSdtmigDatasetVariable] = jsonEncoderOf[RootSdtmigDatasetVariable]
}
