package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSdtmDatasetVariable._

case class XmlSdtmDatasetVariable (
  self: Option[SdtmDatasetVariable])

object XmlSdtmDatasetVariable {
  import DateTimeCodecs._

  implicit val XmlSdtmDatasetVariableCodecJson: CodecJson[XmlSdtmDatasetVariable] = CodecJson.derive[XmlSdtmDatasetVariable]
  implicit val XmlSdtmDatasetVariableDecoder: EntityDecoder[XmlSdtmDatasetVariable] = jsonOf[XmlSdtmDatasetVariable]
  implicit val XmlSdtmDatasetVariableEncoder: EntityEncoder[XmlSdtmDatasetVariable] = jsonEncoderOf[XmlSdtmDatasetVariable]
}
