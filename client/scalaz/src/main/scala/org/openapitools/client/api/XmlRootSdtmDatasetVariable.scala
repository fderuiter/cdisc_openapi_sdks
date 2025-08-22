package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlRootSdtmDatasetVariable._

case class XmlRootSdtmDatasetVariable (
  self: Option[RootSdtmDatasetVariable])

object XmlRootSdtmDatasetVariable {
  import DateTimeCodecs._

  implicit val XmlRootSdtmDatasetVariableCodecJson: CodecJson[XmlRootSdtmDatasetVariable] = CodecJson.derive[XmlRootSdtmDatasetVariable]
  implicit val XmlRootSdtmDatasetVariableDecoder: EntityDecoder[XmlRootSdtmDatasetVariable] = jsonOf[XmlRootSdtmDatasetVariable]
  implicit val XmlRootSdtmDatasetVariableEncoder: EntityEncoder[XmlRootSdtmDatasetVariable] = jsonEncoderOf[XmlRootSdtmDatasetVariable]
}
