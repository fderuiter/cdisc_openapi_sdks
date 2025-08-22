package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlRootSdtmigDatasetVariable._

case class XmlRootSdtmigDatasetVariable (
  self: Option[RootSdtmigDatasetVariable])

object XmlRootSdtmigDatasetVariable {
  import DateTimeCodecs._

  implicit val XmlRootSdtmigDatasetVariableCodecJson: CodecJson[XmlRootSdtmigDatasetVariable] = CodecJson.derive[XmlRootSdtmigDatasetVariable]
  implicit val XmlRootSdtmigDatasetVariableDecoder: EntityDecoder[XmlRootSdtmigDatasetVariable] = jsonOf[XmlRootSdtmigDatasetVariable]
  implicit val XmlRootSdtmigDatasetVariableEncoder: EntityEncoder[XmlRootSdtmigDatasetVariable] = jsonEncoderOf[XmlRootSdtmigDatasetVariable]
}
