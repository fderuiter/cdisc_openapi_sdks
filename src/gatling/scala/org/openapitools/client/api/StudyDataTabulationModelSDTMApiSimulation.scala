package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class StudyDataTabulationModelSDTMApiSimulation extends Simulation {

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
    val mdrRootSdtmClassesClassVariablesVarGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrRootSdtmClassesClassVariablesVarGet") * rateMultiplier * instanceMultiplier
    val mdrRootSdtmDatasetsDatasetVariablesVarGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrRootSdtmDatasetsDatasetVariablesVarGet") * rateMultiplier * instanceMultiplier
    val mdrSdtmVersionClassesClassDatasetsGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSdtmVersionClassesClassDatasetsGet") * rateMultiplier * instanceMultiplier
    val mdrSdtmVersionClassesClassGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSdtmVersionClassesClassGet") * rateMultiplier * instanceMultiplier
    val mdrSdtmVersionClassesClassVariablesGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSdtmVersionClassesClassVariablesGet") * rateMultiplier * instanceMultiplier
    val mdrSdtmVersionClassesClassVariablesVarGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSdtmVersionClassesClassVariablesVarGet") * rateMultiplier * instanceMultiplier
    val mdrSdtmVersionClassesGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSdtmVersionClassesGet") * rateMultiplier * instanceMultiplier
    val mdrSdtmVersionDatasetsDatasetGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSdtmVersionDatasetsDatasetGet") * rateMultiplier * instanceMultiplier
    val mdrSdtmVersionDatasetsDatasetVariablesGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSdtmVersionDatasetsDatasetVariablesGet") * rateMultiplier * instanceMultiplier
    val mdrSdtmVersionDatasetsDatasetVariablesVarGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSdtmVersionDatasetsDatasetVariablesVarGet") * rateMultiplier * instanceMultiplier
    val mdrSdtmVersionDatasetsGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSdtmVersionDatasetsGet") * rateMultiplier * instanceMultiplier
    val mdrSdtmVersionGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrSdtmVersionGet") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrRootSdtmClassesClassVariablesVarGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrRootSdtmDatasetsDatasetVariablesVarGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSdtmVersionClassesClassDatasetsGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSdtmVersionClassesClassGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSdtmVersionClassesClassVariablesGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSdtmVersionClassesClassVariablesVarGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSdtmVersionClassesGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSdtmVersionDatasetsDatasetGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSdtmVersionDatasetsDatasetVariablesGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSdtmVersionDatasetsDatasetVariablesVarGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSdtmVersionDatasetsGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrSdtmVersionGet-pathParams.csv").random

    // Setup all scenarios

    
    val scnmdrRootSdtmClassesClassVariablesVarGet = scenario("mdrRootSdtmClassesClassVariablesVarGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrRootSdtmClassesClassVariablesVarGet")
        .httpRequest("GET","/mdr/root/sdtm/classes/${class}/variables/${var}")
)

    // Run scnmdrRootSdtmClassesClassVariablesVarGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrRootSdtmClassesClassVariablesVarGet.inject(
        rampUsersPerSec(1) to(mdrRootSdtmClassesClassVariablesVarGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrRootSdtmClassesClassVariablesVarGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrRootSdtmClassesClassVariablesVarGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrRootSdtmDatasetsDatasetVariablesVarGet = scenario("mdrRootSdtmDatasetsDatasetVariablesVarGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrRootSdtmDatasetsDatasetVariablesVarGet")
        .httpRequest("GET","/mdr/root/sdtm/datasets/${dataset}/variables/${var}")
)

    // Run scnmdrRootSdtmDatasetsDatasetVariablesVarGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrRootSdtmDatasetsDatasetVariablesVarGet.inject(
        rampUsersPerSec(1) to(mdrRootSdtmDatasetsDatasetVariablesVarGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrRootSdtmDatasetsDatasetVariablesVarGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrRootSdtmDatasetsDatasetVariablesVarGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSdtmVersionClassesClassDatasetsGet = scenario("mdrSdtmVersionClassesClassDatasetsGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSdtmVersionClassesClassDatasetsGet")
        .httpRequest("GET","/mdr/sdtm/${version}/classes/${class}/datasets")
)

    // Run scnmdrSdtmVersionClassesClassDatasetsGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSdtmVersionClassesClassDatasetsGet.inject(
        rampUsersPerSec(1) to(mdrSdtmVersionClassesClassDatasetsGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSdtmVersionClassesClassDatasetsGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSdtmVersionClassesClassDatasetsGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSdtmVersionClassesClassGet = scenario("mdrSdtmVersionClassesClassGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSdtmVersionClassesClassGet")
        .httpRequest("GET","/mdr/sdtm/${version}/classes/${class}")
)

    // Run scnmdrSdtmVersionClassesClassGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSdtmVersionClassesClassGet.inject(
        rampUsersPerSec(1) to(mdrSdtmVersionClassesClassGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSdtmVersionClassesClassGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSdtmVersionClassesClassGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSdtmVersionClassesClassVariablesGet = scenario("mdrSdtmVersionClassesClassVariablesGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSdtmVersionClassesClassVariablesGet")
        .httpRequest("GET","/mdr/sdtm/${version}/classes/${class}/variables")
)

    // Run scnmdrSdtmVersionClassesClassVariablesGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSdtmVersionClassesClassVariablesGet.inject(
        rampUsersPerSec(1) to(mdrSdtmVersionClassesClassVariablesGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSdtmVersionClassesClassVariablesGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSdtmVersionClassesClassVariablesGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSdtmVersionClassesClassVariablesVarGet = scenario("mdrSdtmVersionClassesClassVariablesVarGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSdtmVersionClassesClassVariablesVarGet")
        .httpRequest("GET","/mdr/sdtm/${version}/classes/${class}/variables/${var}")
)

    // Run scnmdrSdtmVersionClassesClassVariablesVarGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSdtmVersionClassesClassVariablesVarGet.inject(
        rampUsersPerSec(1) to(mdrSdtmVersionClassesClassVariablesVarGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSdtmVersionClassesClassVariablesVarGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSdtmVersionClassesClassVariablesVarGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSdtmVersionClassesGet = scenario("mdrSdtmVersionClassesGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSdtmVersionClassesGet")
        .httpRequest("GET","/mdr/sdtm/${version}/classes")
)

    // Run scnmdrSdtmVersionClassesGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSdtmVersionClassesGet.inject(
        rampUsersPerSec(1) to(mdrSdtmVersionClassesGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSdtmVersionClassesGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSdtmVersionClassesGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSdtmVersionDatasetsDatasetGet = scenario("mdrSdtmVersionDatasetsDatasetGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSdtmVersionDatasetsDatasetGet")
        .httpRequest("GET","/mdr/sdtm/${version}/datasets/${dataset}")
)

    // Run scnmdrSdtmVersionDatasetsDatasetGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSdtmVersionDatasetsDatasetGet.inject(
        rampUsersPerSec(1) to(mdrSdtmVersionDatasetsDatasetGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSdtmVersionDatasetsDatasetGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSdtmVersionDatasetsDatasetGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSdtmVersionDatasetsDatasetVariablesGet = scenario("mdrSdtmVersionDatasetsDatasetVariablesGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSdtmVersionDatasetsDatasetVariablesGet")
        .httpRequest("GET","/mdr/sdtm/${version}/datasets/${dataset}/variables")
)

    // Run scnmdrSdtmVersionDatasetsDatasetVariablesGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSdtmVersionDatasetsDatasetVariablesGet.inject(
        rampUsersPerSec(1) to(mdrSdtmVersionDatasetsDatasetVariablesGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSdtmVersionDatasetsDatasetVariablesGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSdtmVersionDatasetsDatasetVariablesGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSdtmVersionDatasetsDatasetVariablesVarGet = scenario("mdrSdtmVersionDatasetsDatasetVariablesVarGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSdtmVersionDatasetsDatasetVariablesVarGet")
        .httpRequest("GET","/mdr/sdtm/${version}/datasets/${dataset}/variables/${var}")
)

    // Run scnmdrSdtmVersionDatasetsDatasetVariablesVarGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSdtmVersionDatasetsDatasetVariablesVarGet.inject(
        rampUsersPerSec(1) to(mdrSdtmVersionDatasetsDatasetVariablesVarGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSdtmVersionDatasetsDatasetVariablesVarGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSdtmVersionDatasetsDatasetVariablesVarGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSdtmVersionDatasetsGet = scenario("mdrSdtmVersionDatasetsGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSdtmVersionDatasetsGet")
        .httpRequest("GET","/mdr/sdtm/${version}/datasets")
)

    // Run scnmdrSdtmVersionDatasetsGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSdtmVersionDatasetsGet.inject(
        rampUsersPerSec(1) to(mdrSdtmVersionDatasetsGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSdtmVersionDatasetsGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSdtmVersionDatasetsGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrSdtmVersionGet = scenario("mdrSdtmVersionGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrSdtmVersionGet")
        .httpRequest("GET","/mdr/sdtm/${version}")
)

    // Run scnmdrSdtmVersionGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrSdtmVersionGet.inject(
        rampUsersPerSec(1) to(mdrSdtmVersionGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrSdtmVersionGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrSdtmVersionGetPerSecond) to(1) during(rampDownSeconds)
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
