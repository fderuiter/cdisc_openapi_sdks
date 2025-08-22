package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSdtmigDatasetVariable._

case class XmlSdtmigDatasetVariable (
  self: Option[SdtmigDatasetVariable])

object XmlSdtmigDatasetVariable {
  import DateTimeCodecs._

  implicit val XmlSdtmigDatasetVariableCodecJson: CodecJson[XmlSdtmigDatasetVariable] = CodecJson.derive[XmlSdtmigDatasetVariable]
  implicit val XmlSdtmigDatasetVariableDecoder: EntityDecoder[XmlSdtmigDatasetVariable] = jsonOf[XmlSdtmigDatasetVariable]
  implicit val XmlSdtmigDatasetVariableEncoder: EntityEncoder[XmlSdtmigDatasetVariable] = jsonEncoderOf[XmlSdtmigDatasetVariable]
}
