package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlSdtmDatasetVariables._

case class XmlSdtmDatasetVariables (
  self: Option[SdtmDatasetVariables])

object XmlSdtmDatasetVariables {
  import DateTimeCodecs._

  implicit val XmlSdtmDatasetVariablesCodecJson: CodecJson[XmlSdtmDatasetVariables] = CodecJson.derive[XmlSdtmDatasetVariables]
  implicit val XmlSdtmDatasetVariablesDecoder: EntityDecoder[XmlSdtmDatasetVariables] = jsonOf[XmlSdtmDatasetVariables]
  implicit val XmlSdtmDatasetVariablesEncoder: EntityEncoder[XmlSdtmDatasetVariables] = jsonEncoderOf[XmlSdtmDatasetVariables]
}
