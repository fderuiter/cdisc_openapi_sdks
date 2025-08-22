package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class ControlledTerminologyCTApiSimulation extends Simulation {

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
    val mdrCtPackagesGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCtPackagesGet") * rateMultiplier * instanceMultiplier
    val mdrCtPackagesPackageCodelistsCodelistGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCtPackagesPackageCodelistsCodelistGet") * rateMultiplier * instanceMultiplier
    val mdrCtPackagesPackageCodelistsCodelistTermsGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCtPackagesPackageCodelistsCodelistTermsGet") * rateMultiplier * instanceMultiplier
    val mdrCtPackagesPackageCodelistsCodelistTermsTermGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCtPackagesPackageCodelistsCodelistTermsTermGet") * rateMultiplier * instanceMultiplier
    val mdrCtPackagesPackageCodelistsGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCtPackagesPackageCodelistsGet") * rateMultiplier * instanceMultiplier
    val mdrCtPackagesProductGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCtPackagesProductGet") * rateMultiplier * instanceMultiplier
    val mdrRootCtProductGroupCodelistsCodelistGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrRootCtProductGroupCodelistsCodelistGet") * rateMultiplier * instanceMultiplier
    val mdrRootCtProductGroupCodelistsCodelistTermsTermGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrRootCtProductGroupCodelistsCodelistTermsTermGet") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCtPackagesPackageCodelistsCodelistGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCtPackagesPackageCodelistsCodelistTermsGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCtPackagesPackageCodelistsCodelistTermsTermGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCtPackagesPackageCodelistsGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCtPackagesProductGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrRootCtProductGroupCodelistsCodelistGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrRootCtProductGroupCodelistsCodelistTermsTermGet-pathParams.csv").random

    // Setup all scenarios

    
    val scnmdrCtPackagesGet = scenario("mdrCtPackagesGetSimulation")
        .exec(http("mdrCtPackagesGet")
        .httpRequest("GET","/mdr/ct/packages")
)

    // Run scnmdrCtPackagesGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCtPackagesGet.inject(
        rampUsersPerSec(1) to(mdrCtPackagesGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCtPackagesGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCtPackagesGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCtPackagesPackageCodelistsCodelistGet = scenario("mdrCtPackagesPackageCodelistsCodelistGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCtPackagesPackageCodelistsCodelistGet")
        .httpRequest("GET","/mdr/ct/packages/${package}/codelists/${codelist}")
)

    // Run scnmdrCtPackagesPackageCodelistsCodelistGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCtPackagesPackageCodelistsCodelistGet.inject(
        rampUsersPerSec(1) to(mdrCtPackagesPackageCodelistsCodelistGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCtPackagesPackageCodelistsCodelistGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCtPackagesPackageCodelistsCodelistGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCtPackagesPackageCodelistsCodelistTermsGet = scenario("mdrCtPackagesPackageCodelistsCodelistTermsGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCtPackagesPackageCodelistsCodelistTermsGet")
        .httpRequest("GET","/mdr/ct/packages/${package}/codelists/${codelist}/terms")
)

    // Run scnmdrCtPackagesPackageCodelistsCodelistTermsGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCtPackagesPackageCodelistsCodelistTermsGet.inject(
        rampUsersPerSec(1) to(mdrCtPackagesPackageCodelistsCodelistTermsGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCtPackagesPackageCodelistsCodelistTermsGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCtPackagesPackageCodelistsCodelistTermsGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCtPackagesPackageCodelistsCodelistTermsTermGet = scenario("mdrCtPackagesPackageCodelistsCodelistTermsTermGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCtPackagesPackageCodelistsCodelistTermsTermGet")
        .httpRequest("GET","/mdr/ct/packages/${package}/codelists/${codelist}/terms/${term}")
)

    // Run scnmdrCtPackagesPackageCodelistsCodelistTermsTermGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCtPackagesPackageCodelistsCodelistTermsTermGet.inject(
        rampUsersPerSec(1) to(mdrCtPackagesPackageCodelistsCodelistTermsTermGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCtPackagesPackageCodelistsCodelistTermsTermGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCtPackagesPackageCodelistsCodelistTermsTermGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCtPackagesPackageCodelistsGet = scenario("mdrCtPackagesPackageCodelistsGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCtPackagesPackageCodelistsGet")
        .httpRequest("GET","/mdr/ct/packages/${package}/codelists")
)

    // Run scnmdrCtPackagesPackageCodelistsGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCtPackagesPackageCodelistsGet.inject(
        rampUsersPerSec(1) to(mdrCtPackagesPackageCodelistsGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCtPackagesPackageCodelistsGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCtPackagesPackageCodelistsGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCtPackagesProductGet = scenario("mdrCtPackagesProductGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCtPackagesProductGet")
        .httpRequest("GET","/mdr/ct/packages/${product}")
)

    // Run scnmdrCtPackagesProductGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCtPackagesProductGet.inject(
        rampUsersPerSec(1) to(mdrCtPackagesProductGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCtPackagesProductGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCtPackagesProductGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrRootCtProductGroupCodelistsCodelistGet = scenario("mdrRootCtProductGroupCodelistsCodelistGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrRootCtProductGroupCodelistsCodelistGet")
        .httpRequest("GET","/mdr/root/ct/${productGroup}/codelists/${codelist}")
)

    // Run scnmdrRootCtProductGroupCodelistsCodelistGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrRootCtProductGroupCodelistsCodelistGet.inject(
        rampUsersPerSec(1) to(mdrRootCtProductGroupCodelistsCodelistGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrRootCtProductGroupCodelistsCodelistGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrRootCtProductGroupCodelistsCodelistGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrRootCtProductGroupCodelistsCodelistTermsTermGet = scenario("mdrRootCtProductGroupCodelistsCodelistTermsTermGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrRootCtProductGroupCodelistsCodelistTermsTermGet")
        .httpRequest("GET","/mdr/root/ct/${productGroup}/codelists/${codelist}/terms/${term}")
)

    // Run scnmdrRootCtProductGroupCodelistsCodelistTermsTermGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrRootCtProductGroupCodelistsCodelistTermsTermGet.inject(
        rampUsersPerSec(1) to(mdrRootCtProductGroupCodelistsCodelistTermsTermGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrRootCtProductGroupCodelistsCodelistTermsTermGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrRootCtProductGroupCodelistsCodelistTermsTermGetPerSecond) to(1) during(rampDownSeconds)
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
