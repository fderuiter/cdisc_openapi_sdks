#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Health.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Health::Health()
{
	//__init();
}

Health::~Health()
{
	//__cleanup();
}

void
Health::__init()
{
	//healthy = bool(false);
	//ldapAuthenticationHealthy = bool(false);
	//ldapAuthorizationHealthy = bool(false);
	//databaseHealthy = bool(false);
	//esHealthy = bool(false);
}

void
Health::__cleanup()
{
	//if(healthy != NULL) {
	//
	//delete healthy;
	//healthy = NULL;
	//}
	//if(ldapAuthenticationHealthy != NULL) {
	//
	//delete ldapAuthenticationHealthy;
	//ldapAuthenticationHealthy = NULL;
	//}
	//if(ldapAuthorizationHealthy != NULL) {
	//
	//delete ldapAuthorizationHealthy;
	//ldapAuthorizationHealthy = NULL;
	//}
	//if(databaseHealthy != NULL) {
	//
	//delete databaseHealthy;
	//databaseHealthy = NULL;
	//}
	//if(esHealthy != NULL) {
	//
	//delete esHealthy;
	//esHealthy = NULL;
	//}
	//
}

void
Health::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *healthyKey = "healthy";
	node = json_object_get_member(pJsonObject, healthyKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&healthy, node, "bool", "");
		} else {
			
		}
	}
	const gchar *ldapAuthenticationHealthyKey = "ldapAuthenticationHealthy";
	node = json_object_get_member(pJsonObject, ldapAuthenticationHealthyKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&ldapAuthenticationHealthy, node, "bool", "");
		} else {
			
		}
	}
	const gchar *ldapAuthorizationHealthyKey = "ldapAuthorizationHealthy";
	node = json_object_get_member(pJsonObject, ldapAuthorizationHealthyKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&ldapAuthorizationHealthy, node, "bool", "");
		} else {
			
		}
	}
	const gchar *databaseHealthyKey = "databaseHealthy";
	node = json_object_get_member(pJsonObject, databaseHealthyKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&databaseHealthy, node, "bool", "");
		} else {
			
		}
	}
	const gchar *esHealthyKey = "esHealthy";
	node = json_object_get_member(pJsonObject, esHealthyKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&esHealthy, node, "bool", "");
		} else {
			
		}
	}
}

Health::Health(char* json)
{
	this->fromJson(json);
}

char*
Health::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("bool")) {
		bool obj = getHealthy();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *healthyKey = "healthy";
	json_object_set_member(pJsonObject, healthyKey, node);
	if (isprimitive("bool")) {
		bool obj = getLdapAuthenticationHealthy();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *ldapAuthenticationHealthyKey = "ldapAuthenticationHealthy";
	json_object_set_member(pJsonObject, ldapAuthenticationHealthyKey, node);
	if (isprimitive("bool")) {
		bool obj = getLdapAuthorizationHealthy();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *ldapAuthorizationHealthyKey = "ldapAuthorizationHealthy";
	json_object_set_member(pJsonObject, ldapAuthorizationHealthyKey, node);
	if (isprimitive("bool")) {
		bool obj = getDatabaseHealthy();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *databaseHealthyKey = "databaseHealthy";
	json_object_set_member(pJsonObject, databaseHealthyKey, node);
	if (isprimitive("bool")) {
		bool obj = getEsHealthy();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *esHealthyKey = "esHealthy";
	json_object_set_member(pJsonObject, esHealthyKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

bool
Health::getHealthy()
{
	return healthy;
}

void
Health::setHealthy(bool  healthy)
{
	this->healthy = healthy;
}

bool
Health::getLdapAuthenticationHealthy()
{
	return ldapAuthenticationHealthy;
}

void
Health::setLdapAuthenticationHealthy(bool  ldapAuthenticationHealthy)
{
	this->ldapAuthenticationHealthy = ldapAuthenticationHealthy;
}

bool
Health::getLdapAuthorizationHealthy()
{
	return ldapAuthorizationHealthy;
}

void
Health::setLdapAuthorizationHealthy(bool  ldapAuthorizationHealthy)
{
	this->ldapAuthorizationHealthy = ldapAuthorizationHealthy;
}

bool
Health::getDatabaseHealthy()
{
	return databaseHealthy;
}

void
Health::setDatabaseHealthy(bool  databaseHealthy)
{
	this->databaseHealthy = databaseHealthy;
}

bool
Health::getEsHealthy()
{
	return esHealthy;
}

void
Health::setEsHealthy(bool  esHealthy)
{
	this->esHealthy = esHealthy;
}


