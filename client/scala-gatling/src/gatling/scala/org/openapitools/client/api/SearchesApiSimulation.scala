package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class SearchesApiSimulation extends Simulation {

    def getCurrentDirectory = new File("").getAbsolutePath
    def userDataDirectory = getCurrentDirectory + "/src/gatling/resources/data"

    // basic test setup
    val configName = System.getProperty("testConfig", "baseline")
    val config = ConfigFactory.load(configName).withFallback(ConfigFactory.load("default"))
    val durationSeconds = config.getInt("performance.durationSeconds")
    val rampUpSeconds = config.getInt("performance.rampUpSeconds")
    val rampDownSeconds = config.getInt("performance.rampDownSeconds")
    val authentication = config.getString("performance.authorizationHeader")
    val acceptHeader = config.getString("performance.acceptType")
    val contentTypeHeader = config.getString("performance.contentType")
    val rateMultiplier = config.getDouble("performance.rateMultiplier")
    val instanceMultiplier = config.getDouble("performance.instanceMultiplier")

    // global assertion data
    val globalResponseTimeMinLTE = config.getInt("performance.global.assertions.responseTime.min.lte")
    val globalResponseTimeMinGTE = config.getInt("performance.global.assertions.responseTime.min.gte")
    val globalResponseTimeMaxLTE = config.getInt("performance.global.assertions.responseTime.max.lte")
    val globalResponseTimeMaxGTE = config.getInt("performance.global.assertions.responseTime.max.gte")
    val globalResponseTimeMeanLTE = config.getInt("performance.global.assertions.responseTime.mean.lte")
    val globalResponseTimeMeanGTE = config.getInt("performance.global.assertions.responseTime.mean.gte")
    val globalResponseTimeFailedRequestsPercentLTE = config.getDouble("performance.global.assertions.failedRequests.percent.lte")
    val globalResponseTimeFailedRequestsPercentGTE = config.getDouble("performance.global.assertions.failedRequests.percent.gte")
    val globalResponseTimeSuccessfulRequestsPercentLTE = config.getDouble("performance.global.assertions.successfulRequests.percent.lte")
    val globalResponseTimeSuccessfulRequestsPercentGTE = config.getDouble("performance.global.assertions.successfulRequests.percent.gte")

// Setup http protocol configuration
    val httpConf = http
        .baseURL("https://library.cdisc.org/api")
        .doNotTrackHeader("1")
        .acceptLanguageHeader("en-US,en;q=0.5")
        .acceptEncodingHeader("gzip, deflate")
        .userAgentHeader("Mozilla/5.0 (Windows NT 5.1; rv:31.0) Gecko/20100101 Firefox/31.0")
        .acceptHeader(acceptHeader)
        .contentTypeHeader(contentTypeHeader)

    // set authorization header if it has been modified from config
    if(!authentication.equals("~MANUAL_ENTRY")){
        httpConf.authorizationHeader(authentication)
    }

    // Setup all the operations per second for the test to ultimately be generated from configs
    val mdrSearchGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSearchGet") * rateMultiplier * instanceMultiplier
    val mdrSearchScopesGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSearchScopesGet") * rateMultiplier * instanceMultiplier
    val mdrSearchScopesScopeGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSearchScopesScopeGet") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val nullQUERYFeeder = csv(userDataDirectory + File.separator + "mdrSearchGet-queryParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSearchScopesScopeGet-pathParams.csv").random

    // Setup all scenarios

    
    val scnmdrSearchGet = scenario("mdrSearchGetSimulation")
        .feed(nullQUERYFeeder)
        .exec(http("mdrSearchGet")
        .httpRequest("GET","/mdr/search")
        .queryParam("type","${type}")
        .queryParam("dataStructure","${dataStructure}")
        .queryParam("sdtmTarget","${sdtmTarget}")
        .queryParam("conceptId","${conceptId}")
        .queryParam("name","${name}")
        .queryParam("start","${start}")
        .queryParam("synonyms","${synonyms}")
        .queryParam("measureType","${measureType}")
        .queryParam("highlight","${highlight}")
        .queryParam("simpleDatatype","${simpleDatatype}")
        .queryParam("roleDescription","${roleDescription}")
        .queryParam("core","${core}")
        .queryParam("preferredTerm","${preferredTerm}")
        .queryParam("pageSize","${pageSize}")
        .queryParam("version","${version}")
        .queryParam("label","${label}")
        .queryParam("submissionValue","${submissionValue}")
        .queryParam("product","${product}")
        .queryParam("class","${class}")
        .queryParam("variableSet","${variableSet}")
        .queryParam("href","${href}")
        .queryParam("datasetStructure","${datasetStructure}")
        .queryParam("definition","${definition}")
        .queryParam("codelist","${codelist}")
        .queryParam("registrationStatus","${registrationStatus}")
        .queryParam("uiHref","${uiHref}")
        .queryParam("extensible","${extensible}")
        .queryParam("description","${description}")
        .queryParam("domain","${domain}")
        .queryParam("q","${q}")
        .queryParam("valueDomain","${valueDomain}")
        .queryParam("effectiveDate","${effectiveDate}")
        .queryParam("productGroup","${productGroup}")
)

    // Run scnmdrSearchGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSearchGet.inject(
        rampUsersPerSec(1) to(mdrSearchGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSearchGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSearchGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSearchScopesGet = scenario("mdrSearchScopesGetSimulation")
        .exec(http("mdrSearchScopesGet")
        .httpRequest("GET","/mdr/search/scopes")
)

    // Run scnmdrSearchScopesGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSearchScopesGet.inject(
        rampUsersPerSec(1) to(mdrSearchScopesGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSearchScopesGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSearchScopesGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSearchScopesScopeGet = scenario("mdrSearchScopesScopeGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSearchScopesScopeGet")
        .httpRequest("GET","/mdr/search/scopes/${scope}")
)

    // Run scnmdrSearchScopesScopeGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSearchScopesScopeGet.inject(
        rampUsersPerSec(1) to(mdrSearchScopesScopeGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSearchScopesScopeGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSearchScopesScopeGetPerSecond) to(1) during(rampDownSeconds)
    )

    setUp(
        scenarioBuilders.toList
    ).protocols(httpConf).assertions(
        global.responseTime.min.lte(globalResponseTimeMinLTE),
        global.responseTime.min.gte(globalResponseTimeMinGTE),
        global.responseTime.max.lte(globalResponseTimeMaxLTE),
        global.responseTime.max.gte(globalResponseTimeMaxGTE),
        global.responseTime.mean.lte(globalResponseTimeMeanLTE),
        global.responseTime.mean.gte(globalResponseTimeMeanGTE),
        global.failedRequests.percent.lte(globalResponseTimeFailedRequestsPercentLTE),
        global.failedRequests.percent.gte(globalResponseTimeFailedRequestsPercentGTE),
        global.successfulRequests.percent.lte(globalResponseTimeSuccessfulRequestsPercentLTE),
        global.successfulRequests.percent.gte(globalResponseTimeSuccessfulRequestsPercentGTE)
    )
}
