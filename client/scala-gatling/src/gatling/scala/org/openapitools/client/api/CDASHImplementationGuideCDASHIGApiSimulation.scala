package org.openapitools.client.api

import org.openapitools.client.model._
import com.typesafe.config.ConfigFactory

import io.gatling.core.Predef._
import io.gatling.http.Predef._
import io.gatling.core.structure.PopulationBuilder

import java.io.File

import scala.collection.mutable

class CDASHImplementationGuideCDASHIGApiSimulation extends Simulation {

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
    val mdrCdashigVersionClassesClassDomainsGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashigVersionClassesClassDomainsGet") * rateMultiplier * instanceMultiplier
    val mdrCdashigVersionClassesClassGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashigVersionClassesClassGet") * rateMultiplier * instanceMultiplier
    val mdrCdashigVersionClassesClassScenariosGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashigVersionClassesClassScenariosGet") * rateMultiplier * instanceMultiplier
    val mdrCdashigVersionClassesGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashigVersionClassesGet") * rateMultiplier * instanceMultiplier
    val mdrCdashigVersionDomainsDomainFieldsFieldGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashigVersionDomainsDomainFieldsFieldGet") * rateMultiplier * instanceMultiplier
    val mdrCdashigVersionDomainsDomainFieldsGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashigVersionDomainsDomainFieldsGet") * rateMultiplier * instanceMultiplier
    val mdrCdashigVersionDomainsDomainGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashigVersionDomainsDomainGet") * rateMultiplier * instanceMultiplier
    val mdrCdashigVersionDomainsGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashigVersionDomainsGet") * rateMultiplier * instanceMultiplier
    val mdrCdashigVersionGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashigVersionGet") * rateMultiplier * instanceMultiplier
    val mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet") * rateMultiplier * instanceMultiplier
    val mdrCdashigVersionScenariosDomainScenarioFieldsGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashigVersionScenariosDomainScenarioFieldsGet") * rateMultiplier * instanceMultiplier
    val mdrCdashigVersionScenariosDomainScenarioGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashigVersionScenariosDomainScenarioGet") * rateMultiplier * instanceMultiplier
    val mdrCdashigVersionScenariosGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrCdashigVersionScenariosGet") * rateMultiplier * instanceMultiplier
    val mdrRootCdashigDomainsDomainFieldsFieldGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrRootCdashigDomainsDomainFieldsFieldGet") * rateMultiplier * instanceMultiplier
    val mdrRootCdashigScenariosDomainScenarioFieldsFieldGetPerSecond = config.getDouble("performance.operationsPerSecond.mdrRootCdashigScenariosDomainScenarioFieldsFieldGet") * rateMultiplier * instanceMultiplier

    val scenarioBuilders: mutable.MutableList[PopulationBuilder] = new mutable.MutableList[PopulationBuilder]()

    // Set up CSV feeders
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashigVersionClassesClassDomainsGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashigVersionClassesClassGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashigVersionClassesClassScenariosGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashigVersionClassesGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashigVersionDomainsDomainFieldsFieldGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashigVersionDomainsDomainFieldsGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashigVersionDomainsDomainGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashigVersionDomainsGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashigVersionGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashigVersionScenariosDomainScenarioFieldsGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashigVersionScenariosDomainScenarioGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrCdashigVersionScenariosGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrRootCdashigDomainsDomainFieldsFieldGet-pathParams.csv").random
    val nullPATHFeeder = csv(userDataDirectory + File.separator + "mdrRootCdashigScenariosDomainScenarioFieldsFieldGet-pathParams.csv").random

    // Setup all scenarios

    
    val scnmdrCdashigVersionClassesClassDomainsGet = scenario("mdrCdashigVersionClassesClassDomainsGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashigVersionClassesClassDomainsGet")
        .httpRequest("GET","/mdr/cdashig/${version}/classes/${class}/domains")
)

    // Run scnmdrCdashigVersionClassesClassDomainsGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashigVersionClassesClassDomainsGet.inject(
        rampUsersPerSec(1) to(mdrCdashigVersionClassesClassDomainsGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashigVersionClassesClassDomainsGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashigVersionClassesClassDomainsGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCdashigVersionClassesClassGet = scenario("mdrCdashigVersionClassesClassGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashigVersionClassesClassGet")
        .httpRequest("GET","/mdr/cdashig/${version}/classes/${class}")
)

    // Run scnmdrCdashigVersionClassesClassGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashigVersionClassesClassGet.inject(
        rampUsersPerSec(1) to(mdrCdashigVersionClassesClassGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashigVersionClassesClassGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashigVersionClassesClassGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCdashigVersionClassesClassScenariosGet = scenario("mdrCdashigVersionClassesClassScenariosGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashigVersionClassesClassScenariosGet")
        .httpRequest("GET","/mdr/cdashig/${version}/classes/${class}/scenarios")
)

    // Run scnmdrCdashigVersionClassesClassScenariosGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashigVersionClassesClassScenariosGet.inject(
        rampUsersPerSec(1) to(mdrCdashigVersionClassesClassScenariosGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashigVersionClassesClassScenariosGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashigVersionClassesClassScenariosGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCdashigVersionClassesGet = scenario("mdrCdashigVersionClassesGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashigVersionClassesGet")
        .httpRequest("GET","/mdr/cdashig/${version}/classes")
)

    // Run scnmdrCdashigVersionClassesGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashigVersionClassesGet.inject(
        rampUsersPerSec(1) to(mdrCdashigVersionClassesGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashigVersionClassesGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashigVersionClassesGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCdashigVersionDomainsDomainFieldsFieldGet = scenario("mdrCdashigVersionDomainsDomainFieldsFieldGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashigVersionDomainsDomainFieldsFieldGet")
        .httpRequest("GET","/mdr/cdashig/${version}/domains/${domain}/fields/${field}")
)

    // Run scnmdrCdashigVersionDomainsDomainFieldsFieldGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashigVersionDomainsDomainFieldsFieldGet.inject(
        rampUsersPerSec(1) to(mdrCdashigVersionDomainsDomainFieldsFieldGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashigVersionDomainsDomainFieldsFieldGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashigVersionDomainsDomainFieldsFieldGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCdashigVersionDomainsDomainFieldsGet = scenario("mdrCdashigVersionDomainsDomainFieldsGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashigVersionDomainsDomainFieldsGet")
        .httpRequest("GET","/mdr/cdashig/${version}/domains/${domain}/fields")
)

    // Run scnmdrCdashigVersionDomainsDomainFieldsGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashigVersionDomainsDomainFieldsGet.inject(
        rampUsersPerSec(1) to(mdrCdashigVersionDomainsDomainFieldsGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashigVersionDomainsDomainFieldsGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashigVersionDomainsDomainFieldsGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCdashigVersionDomainsDomainGet = scenario("mdrCdashigVersionDomainsDomainGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashigVersionDomainsDomainGet")
        .httpRequest("GET","/mdr/cdashig/${version}/domains/${domain}")
)

    // Run scnmdrCdashigVersionDomainsDomainGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashigVersionDomainsDomainGet.inject(
        rampUsersPerSec(1) to(mdrCdashigVersionDomainsDomainGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashigVersionDomainsDomainGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashigVersionDomainsDomainGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCdashigVersionDomainsGet = scenario("mdrCdashigVersionDomainsGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashigVersionDomainsGet")
        .httpRequest("GET","/mdr/cdashig/${version}/domains")
)

    // Run scnmdrCdashigVersionDomainsGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashigVersionDomainsGet.inject(
        rampUsersPerSec(1) to(mdrCdashigVersionDomainsGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashigVersionDomainsGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashigVersionDomainsGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCdashigVersionGet = scenario("mdrCdashigVersionGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashigVersionGet")
        .httpRequest("GET","/mdr/cdashig/${version}")
)

    // Run scnmdrCdashigVersionGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashigVersionGet.inject(
        rampUsersPerSec(1) to(mdrCdashigVersionGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashigVersionGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashigVersionGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCdashigVersionScenariosDomainScenarioFieldsFieldGet = scenario("mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashigVersionScenariosDomainScenarioFieldsFieldGet")
        .httpRequest("GET","/mdr/cdashig/${version}/scenarios/${domain}.${scenario}/fields/${field}")
)

    // Run scnmdrCdashigVersionScenariosDomainScenarioFieldsFieldGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashigVersionScenariosDomainScenarioFieldsFieldGet.inject(
        rampUsersPerSec(1) to(mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashigVersionScenariosDomainScenarioFieldsFieldGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCdashigVersionScenariosDomainScenarioFieldsGet = scenario("mdrCdashigVersionScenariosDomainScenarioFieldsGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashigVersionScenariosDomainScenarioFieldsGet")
        .httpRequest("GET","/mdr/cdashig/${version}/scenarios/${domain}.${scenario}/fields")
)

    // Run scnmdrCdashigVersionScenariosDomainScenarioFieldsGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashigVersionScenariosDomainScenarioFieldsGet.inject(
        rampUsersPerSec(1) to(mdrCdashigVersionScenariosDomainScenarioFieldsGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashigVersionScenariosDomainScenarioFieldsGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashigVersionScenariosDomainScenarioFieldsGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCdashigVersionScenariosDomainScenarioGet = scenario("mdrCdashigVersionScenariosDomainScenarioGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashigVersionScenariosDomainScenarioGet")
        .httpRequest("GET","/mdr/cdashig/${version}/scenarios/${domain}.${scenario}")
)

    // Run scnmdrCdashigVersionScenariosDomainScenarioGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashigVersionScenariosDomainScenarioGet.inject(
        rampUsersPerSec(1) to(mdrCdashigVersionScenariosDomainScenarioGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashigVersionScenariosDomainScenarioGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashigVersionScenariosDomainScenarioGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrCdashigVersionScenariosGet = scenario("mdrCdashigVersionScenariosGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrCdashigVersionScenariosGet")
        .httpRequest("GET","/mdr/cdashig/${version}/scenarios")
)

    // Run scnmdrCdashigVersionScenariosGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrCdashigVersionScenariosGet.inject(
        rampUsersPerSec(1) to(mdrCdashigVersionScenariosGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrCdashigVersionScenariosGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrCdashigVersionScenariosGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrRootCdashigDomainsDomainFieldsFieldGet = scenario("mdrRootCdashigDomainsDomainFieldsFieldGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrRootCdashigDomainsDomainFieldsFieldGet")
        .httpRequest("GET","/mdr/root/cdashig/domains/${domain}/fields/${field}")
)

    // Run scnmdrRootCdashigDomainsDomainFieldsFieldGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrRootCdashigDomainsDomainFieldsFieldGet.inject(
        rampUsersPerSec(1) to(mdrRootCdashigDomainsDomainFieldsFieldGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrRootCdashigDomainsDomainFieldsFieldGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrRootCdashigDomainsDomainFieldsFieldGetPerSecond) to(1) during(rampDownSeconds)
    )

    
    val scnmdrRootCdashigScenariosDomainScenarioFieldsFieldGet = scenario("mdrRootCdashigScenariosDomainScenarioFieldsFieldGetSimulation")
        .feed(nullPATHFeeder)
        .exec(http("mdrRootCdashigScenariosDomainScenarioFieldsFieldGet")
        .httpRequest("GET","/mdr/root/cdashig/scenarios/${domain}.${scenario}/fields/${field}")
)

    // Run scnmdrRootCdashigScenariosDomainScenarioFieldsFieldGet with warm up and reach a constant rate for entire duration
    scenarioBuilders += scnmdrRootCdashigScenariosDomainScenarioFieldsFieldGet.inject(
        rampUsersPerSec(1) to(mdrRootCdashigScenariosDomainScenarioFieldsFieldGetPerSecond) during(rampUpSeconds),
        constantUsersPerSec(mdrRootCdashigScenariosDomainScenarioFieldsFieldGetPerSecond) during(durationSeconds),
        rampUsersPerSec(mdrRootCdashigScenariosDomainScenarioFieldsFieldGetPerSecond) to(1) during(rampDownSeconds)
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
