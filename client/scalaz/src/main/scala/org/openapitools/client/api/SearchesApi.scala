package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import java.io.File
import java.net.URLEncoder
import java.util.UUID

import org.http4s._
import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.http4s.client._
import org.http4s.client.blaze.PooledHttp1Client
import org.http4s.headers._

import org.joda.time.DateTime

import scalaz.concurrent.Task

import HelperCodecs._

import org.openapitools.client.api.BigDecimal
import org.openapitools.client.api.DefaultErrorResponse
import org.openapitools.client.api.DefaultSearchResponse
import org.openapitools.client.api.DefaultSearchScopes
import org.openapitools.client.api.MdrSearchScopesGet200Response
import org.openapitools.client.api.ScopeValues

object SearchesApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def mdrSearchGet(host: String, q: String, highlight: String, start: BigDecimal = 0, pageSize: BigDecimal = 100, `class`: String, codelist: String, conceptId: String, core: String, dataStructure: String, datasetStructure: String, definition: String, description: String, domain: String, effectiveDate: String, extensible: String, href: String, label: String, measureType: String, name: String, preferredTerm: String, product: String, productGroup: String, registrationStatus: String, roleDescription: String, sdtmTarget: String, simpleDatatype: String, submissionValue: String, synonyms: String, `type`: String, uiHref: String, valueDomain: String, variableSet: String, version: String)(implicit qQuery: QueryParam[String], highlightQuery: QueryParam[String], startQuery: QueryParam[BigDecimal], pageSizeQuery: QueryParam[BigDecimal], `class`Query: QueryParam[String], codelistQuery: QueryParam[String], conceptIdQuery: QueryParam[String], coreQuery: QueryParam[String], dataStructureQuery: QueryParam[String], datasetStructureQuery: QueryParam[String], definitionQuery: QueryParam[String], descriptionQuery: QueryParam[String], domainQuery: QueryParam[String], effectiveDateQuery: QueryParam[String], extensibleQuery: QueryParam[String], hrefQuery: QueryParam[String], labelQuery: QueryParam[String], measureTypeQuery: QueryParam[String], nameQuery: QueryParam[String], preferredTermQuery: QueryParam[String], productQuery: QueryParam[String], productGroupQuery: QueryParam[String], registrationStatusQuery: QueryParam[String], roleDescriptionQuery: QueryParam[String], sdtmTargetQuery: QueryParam[String], simpleDatatypeQuery: QueryParam[String], submissionValueQuery: QueryParam[String], synonymsQuery: QueryParam[String], `type`Query: QueryParam[String], uiHrefQuery: QueryParam[String], valueDomainQuery: QueryParam[String], variableSetQuery: QueryParam[String], versionQuery: QueryParam[String]): Task[DefaultSearchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[DefaultSearchResponse] = jsonOf[DefaultSearchResponse]

    val path = "/mdr/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("q", Some(qQuery.toParamString(q))), ("highlight", Some(highlightQuery.toParamString(highlight))), ("start", Some(startQuery.toParamString(start))), ("pageSize", Some(pageSizeQuery.toParamString(pageSize))), ("`class`", Some(classQuery.toParamString(class))), ("codelist", Some(codelistQuery.toParamString(codelist))), ("conceptId", Some(conceptIdQuery.toParamString(conceptId))), ("core", Some(coreQuery.toParamString(core))), ("dataStructure", Some(dataStructureQuery.toParamString(dataStructure))), ("datasetStructure", Some(datasetStructureQuery.toParamString(datasetStructure))), ("definition", Some(definitionQuery.toParamString(definition))), ("description", Some(descriptionQuery.toParamString(description))), ("domain", Some(domainQuery.toParamString(domain))), ("effectiveDate", Some(effectiveDateQuery.toParamString(effectiveDate))), ("extensible", Some(extensibleQuery.toParamString(extensible))), ("href", Some(hrefQuery.toParamString(href))), ("label", Some(labelQuery.toParamString(label))), ("measureType", Some(measureTypeQuery.toParamString(measureType))), ("name", Some(nameQuery.toParamString(name))), ("preferredTerm", Some(preferredTermQuery.toParamString(preferredTerm))), ("product", Some(productQuery.toParamString(product))), ("productGroup", Some(productGroupQuery.toParamString(productGroup))), ("registrationStatus", Some(registrationStatusQuery.toParamString(registrationStatus))), ("roleDescription", Some(roleDescriptionQuery.toParamString(roleDescription))), ("sdtmTarget", Some(sdtmTargetQuery.toParamString(sdtmTarget))), ("simpleDatatype", Some(simpleDatatypeQuery.toParamString(simpleDatatype))), ("submissionValue", Some(submissionValueQuery.toParamString(submissionValue))), ("synonyms", Some(synonymsQuery.toParamString(synonyms))), ("`type`", Some(typeQuery.toParamString(type))), ("uiHref", Some(uiHrefQuery.toParamString(uiHref))), ("valueDomain", Some(valueDomainQuery.toParamString(valueDomain))), ("variableSet", Some(variableSetQuery.toParamString(variableSet))), ("version", Some(versionQuery.toParamString(version))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[DefaultSearchResponse](req)

    } yield resp
  }

  def mdrSearchScopesGet(host: String): Task[MdrSearchScopesGet200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[MdrSearchScopesGet200Response] = jsonOf[MdrSearchScopesGet200Response]

    val path = "/mdr/search/scopes"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MdrSearchScopesGet200Response](req)

    } yield resp
  }

  def mdrSearchScopesScopeGet(host: String, scope: DefaultSearchScopes): Task[ScopeValues] = {
    implicit val returnTypeDecoder: EntityDecoder[ScopeValues] = jsonOf[ScopeValues]

    val path = "/mdr/search/scopes/{scope}".replaceAll("\\{" + "scope" + "\\}",escape(scope.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ScopeValues](req)

    } yield resp
  }

}

class HttpServiceSearchesApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def mdrSearchGet(q: String, highlight: String, start: BigDecimal = 0, pageSize: BigDecimal = 100, `class`: String, codelist: String, conceptId: String, core: String, dataStructure: String, datasetStructure: String, definition: String, description: String, domain: String, effectiveDate: String, extensible: String, href: String, label: String, measureType: String, name: String, preferredTerm: String, product: String, productGroup: String, registrationStatus: String, roleDescription: String, sdtmTarget: String, simpleDatatype: String, submissionValue: String, synonyms: String, `type`: String, uiHref: String, valueDomain: String, variableSet: String, version: String)(implicit qQuery: QueryParam[String], highlightQuery: QueryParam[String], startQuery: QueryParam[BigDecimal], pageSizeQuery: QueryParam[BigDecimal], `class`Query: QueryParam[String], codelistQuery: QueryParam[String], conceptIdQuery: QueryParam[String], coreQuery: QueryParam[String], dataStructureQuery: QueryParam[String], datasetStructureQuery: QueryParam[String], definitionQuery: QueryParam[String], descriptionQuery: QueryParam[String], domainQuery: QueryParam[String], effectiveDateQuery: QueryParam[String], extensibleQuery: QueryParam[String], hrefQuery: QueryParam[String], labelQuery: QueryParam[String], measureTypeQuery: QueryParam[String], nameQuery: QueryParam[String], preferredTermQuery: QueryParam[String], productQuery: QueryParam[String], productGroupQuery: QueryParam[String], registrationStatusQuery: QueryParam[String], roleDescriptionQuery: QueryParam[String], sdtmTargetQuery: QueryParam[String], simpleDatatypeQuery: QueryParam[String], submissionValueQuery: QueryParam[String], synonymsQuery: QueryParam[String], `type`Query: QueryParam[String], uiHrefQuery: QueryParam[String], valueDomainQuery: QueryParam[String], variableSetQuery: QueryParam[String], versionQuery: QueryParam[String]): Task[DefaultSearchResponse] = {
    implicit val returnTypeDecoder: EntityDecoder[DefaultSearchResponse] = jsonOf[DefaultSearchResponse]

    val path = "/mdr/search"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("q", Some(qQuery.toParamString(q))), ("highlight", Some(highlightQuery.toParamString(highlight))), ("start", Some(startQuery.toParamString(start))), ("pageSize", Some(pageSizeQuery.toParamString(pageSize))), ("`class`", Some(classQuery.toParamString(class))), ("codelist", Some(codelistQuery.toParamString(codelist))), ("conceptId", Some(conceptIdQuery.toParamString(conceptId))), ("core", Some(coreQuery.toParamString(core))), ("dataStructure", Some(dataStructureQuery.toParamString(dataStructure))), ("datasetStructure", Some(datasetStructureQuery.toParamString(datasetStructure))), ("definition", Some(definitionQuery.toParamString(definition))), ("description", Some(descriptionQuery.toParamString(description))), ("domain", Some(domainQuery.toParamString(domain))), ("effectiveDate", Some(effectiveDateQuery.toParamString(effectiveDate))), ("extensible", Some(extensibleQuery.toParamString(extensible))), ("href", Some(hrefQuery.toParamString(href))), ("label", Some(labelQuery.toParamString(label))), ("measureType", Some(measureTypeQuery.toParamString(measureType))), ("name", Some(nameQuery.toParamString(name))), ("preferredTerm", Some(preferredTermQuery.toParamString(preferredTerm))), ("product", Some(productQuery.toParamString(product))), ("productGroup", Some(productGroupQuery.toParamString(productGroup))), ("registrationStatus", Some(registrationStatusQuery.toParamString(registrationStatus))), ("roleDescription", Some(roleDescriptionQuery.toParamString(roleDescription))), ("sdtmTarget", Some(sdtmTargetQuery.toParamString(sdtmTarget))), ("simpleDatatype", Some(simpleDatatypeQuery.toParamString(simpleDatatype))), ("submissionValue", Some(submissionValueQuery.toParamString(submissionValue))), ("synonyms", Some(synonymsQuery.toParamString(synonyms))), ("`type`", Some(typeQuery.toParamString(type))), ("uiHref", Some(uiHrefQuery.toParamString(uiHref))), ("valueDomain", Some(valueDomainQuery.toParamString(valueDomain))), ("variableSet", Some(variableSetQuery.toParamString(variableSet))), ("version", Some(versionQuery.toParamString(version))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[DefaultSearchResponse](req)

    } yield resp
  }

  def mdrSearchScopesGet(): Task[MdrSearchScopesGet200Response] = {
    implicit val returnTypeDecoder: EntityDecoder[MdrSearchScopesGet200Response] = jsonOf[MdrSearchScopesGet200Response]

    val path = "/mdr/search/scopes"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[MdrSearchScopesGet200Response](req)

    } yield resp
  }

  def mdrSearchScopesScopeGet(scope: DefaultSearchScopes): Task[ScopeValues] = {
    implicit val returnTypeDecoder: EntityDecoder[ScopeValues] = jsonOf[ScopeValues]

    val path = "/mdr/search/scopes/{scope}".replaceAll("\\{" + "scope" + "\\}",escape(scope.toString))

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[ScopeValues](req)

    } yield resp
  }

}
