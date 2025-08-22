package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class DefaultApiSimulation extends Simulation {

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
    val mdrAboutGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrAboutGet") * rateMultiplier * instanceMultiplier
    val mdrLastupdatedGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrLastupdatedGet") * rateMultiplier * instanceMultiplier
    val mdrProductsDataAnalysisGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrProductsDataAnalysisGet") * rateMultiplier * instanceMultiplier
    val mdrProductsDataCollectionGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrProductsDataCollectionGet") * rateMultiplier * instanceMultiplier
    val mdrProductsDataTabulationGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrProductsDataTabulationGet") * rateMultiplier * instanceMultiplier
    val mdrProductsGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrProductsGet") * rateMultiplier * instanceMultiplier
    val mdrProductsMeasuresGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrProductsMeasuresGet") * rateMultiplier * instanceMultiplier
    val mdrProductsTerminologyGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrProductsTerminologyGet") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders

    // Setup all scenarios

    
    val scnmdrAboutGet = scenario("mdrAboutGetSimulation")
        .exec(http("mdrAboutGet")
        .httpRequest("GET","/mdr/about")
)

    // Run scnmdrAboutGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrAboutGet.inject(
        rampUsersPerSec(1) to(mdrAboutGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrAboutGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrAboutGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrLastupdatedGet = scenario("mdrLastupdatedGetSimulation")
        .exec(http("mdrLastupdatedGet")
        .httpRequest("GET","/mdr/lastupdated")
)

    // Run scnmdrLastupdatedGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrLastupdatedGet.inject(
        rampUsersPerSec(1) to(mdrLastupdatedGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrLastupdatedGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrLastupdatedGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrProductsDataAnalysisGet = scenario("mdrProductsDataAnalysisGetSimulation")
        .exec(http("mdrProductsDataAnalysisGet")
        .httpRequest("GET","/mdr/products/DataAnalysis")
)

    // Run scnmdrProductsDataAnalysisGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrProductsDataAnalysisGet.inject(
        rampUsersPerSec(1) to(mdrProductsDataAnalysisGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrProductsDataAnalysisGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrProductsDataAnalysisGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrProductsDataCollectionGet = scenario("mdrProductsDataCollectionGetSimulation")
        .exec(http("mdrProductsDataCollectionGet")
        .httpRequest("GET","/mdr/products/DataCollection")
)

    // Run scnmdrProductsDataCollectionGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrProductsDataCollectionGet.inject(
        rampUsersPerSec(1) to(mdrProductsDataCollectionGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrProductsDataCollectionGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrProductsDataCollectionGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrProductsDataTabulationGet = scenario("mdrProductsDataTabulationGetSimulation")
        .exec(http("mdrProductsDataTabulationGet")
        .httpRequest("GET","/mdr/products/DataTabulation")
)

    // Run scnmdrProductsDataTabulationGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrProductsDataTabulationGet.inject(
        rampUsersPerSec(1) to(mdrProductsDataTabulationGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrProductsDataTabulationGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrProductsDataTabulationGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrProductsGet = scenario("mdrProductsGetSimulation")
        .exec(http("mdrProductsGet")
        .httpRequest("GET","/mdr/products")
)

    // Run scnmdrProductsGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrProductsGet.inject(
        rampUsersPerSec(1) to(mdrProductsGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrProductsGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrProductsGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrProductsMeasuresGet = scenario("mdrProductsMeasuresGetSimulation")
        .exec(http("mdrProductsMeasuresGet")
        .httpRequest("GET","/mdr/products/Measures")
)

    // Run scnmdrProductsMeasuresGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrProductsMeasuresGet.inject(
        rampUsersPerSec(1) to(mdrProductsMeasuresGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrProductsMeasuresGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrProductsMeasuresGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrProductsTerminologyGet = scenario("mdrProductsTerminologyGetSimulation")
        .exec(http("mdrProductsTerminologyGet")
        .httpRequest("GET","/mdr/products/Terminology")
)

    // Run scnmdrProductsTerminologyGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrProductsTerminologyGet.inject(
        rampUsersPerSec(1) to(mdrProductsTerminologyGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrProductsTerminologyGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrProductsTerminologyGetPerSecond) to(1) during(rampDownSeconds)
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
