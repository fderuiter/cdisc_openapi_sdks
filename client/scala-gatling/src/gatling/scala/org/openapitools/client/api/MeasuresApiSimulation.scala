package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class MeasuresApiSimulation extends Simulation {

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
    val mdrQrsMeasureVersionGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrQrsMeasureVersionGet") * rateMultiplier * instanceMultiplier
    val mdrQrsMeasureVersionItemsGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrQrsMeasureVersionItemsGet") * rateMultiplier * instanceMultiplier
    val mdrQrsMeasureVersionItemsItemGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrQrsMeasureVersionItemsItemGet") * rateMultiplier * instanceMultiplier
    val mdrQrsMeasureVersionResponsegroupsGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrQrsMeasureVersionResponsegroupsGet") * rateMultiplier * instanceMultiplier
    val mdrQrsMeasureVersionResponsegroupsResponsegroupGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrQrsMeasureVersionResponsegroupsResponsegroupGet") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrQrsMeasureVersionGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrQrsMeasureVersionItemsGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrQrsMeasureVersionItemsItemGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrQrsMeasureVersionResponsegroupsGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrQrsMeasureVersionResponsegroupsResponsegroupGet-pathParams.csv").random

    // Setup all scenarios

    
    val scnmdrQrsMeasureVersionGet = scenario("mdrQrsMeasureVersionGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrQrsMeasureVersionGet")
        .httpRequest("GET","/mdr/qrs/${measure}/${version}")
)

    // Run scnmdrQrsMeasureVersionGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrQrsMeasureVersionGet.inject(
        rampUsersPerSec(1) to(mdrQrsMeasureVersionGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrQrsMeasureVersionGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrQrsMeasureVersionGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrQrsMeasureVersionItemsGet = scenario("mdrQrsMeasureVersionItemsGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrQrsMeasureVersionItemsGet")
        .httpRequest("GET","/mdr/qrs/${measure}/${version}/items")
)

    // Run scnmdrQrsMeasureVersionItemsGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrQrsMeasureVersionItemsGet.inject(
        rampUsersPerSec(1) to(mdrQrsMeasureVersionItemsGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrQrsMeasureVersionItemsGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrQrsMeasureVersionItemsGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrQrsMeasureVersionItemsItemGet = scenario("mdrQrsMeasureVersionItemsItemGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrQrsMeasureVersionItemsItemGet")
        .httpRequest("GET","/mdr/qrs/${measure}/${version}/items/${item}")
)

    // Run scnmdrQrsMeasureVersionItemsItemGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrQrsMeasureVersionItemsItemGet.inject(
        rampUsersPerSec(1) to(mdrQrsMeasureVersionItemsItemGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrQrsMeasureVersionItemsItemGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrQrsMeasureVersionItemsItemGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrQrsMeasureVersionResponsegroupsGet = scenario("mdrQrsMeasureVersionResponsegroupsGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrQrsMeasureVersionResponsegroupsGet")
        .httpRequest("GET","/mdr/qrs/${measure}/${version}/responsegroups")
)

    // Run scnmdrQrsMeasureVersionResponsegroupsGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrQrsMeasureVersionResponsegroupsGet.inject(
        rampUsersPerSec(1) to(mdrQrsMeasureVersionResponsegroupsGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrQrsMeasureVersionResponsegroupsGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrQrsMeasureVersionResponsegroupsGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrQrsMeasureVersionResponsegroupsResponsegroupGet = scenario("mdrQrsMeasureVersionResponsegroupsResponsegroupGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrQrsMeasureVersionResponsegroupsResponsegroupGet")
        .httpRequest("GET","/mdr/qrs/${measure}/${version}/responsegroups/${responsegroup}")
)

    // Run scnmdrQrsMeasureVersionResponsegroupsResponsegroupGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrQrsMeasureVersionResponsegroupsResponsegroupGet.inject(
        rampUsersPerSec(1) to(mdrQrsMeasureVersionResponsegroupsResponsegroupGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrQrsMeasureVersionResponsegroupsResponsegroupGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrQrsMeasureVersionResponsegroupsResponsegroupGetPerSecond) to(1) during(rampDownSeconds)
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
