#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "DefaultErrorResponse.h"

using namespace std;
using namespace Tizen::ArtikCloud;

DefaultErrorResponse::DefaultErrorResponse()
{
	//__init();
}

DefaultErrorResponse::~DefaultErrorResponse()
{
	//__cleanup();
}

void
DefaultErrorResponse::__init()
{
	//statusCode = std::string();
	//reasonPhrase = std::string();
	//userMessage = std::string();
	//adminMessage = std::string();
}

void
DefaultErrorResponse::__cleanup()
{
	//if(statusCode != NULL) {
	//
	//delete statusCode;
	//statusCode = NULL;
	//}
	//if(reasonPhrase != NULL) {
	//
	//delete reasonPhrase;
	//reasonPhrase = NULL;
	//}
	//if(userMessage != NULL) {
	//
	//delete userMessage;
	//userMessage = NULL;
	//}
	//if(adminMessage != NULL) {
	//
	//delete adminMessage;
	//adminMessage = NULL;
	//}
	//
}

void
DefaultErrorResponse::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *statusCodeKey = "statusCode";
	node = json_object_get_member(pJsonObject, statusCodeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&statusCode, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *reasonPhraseKey = "reasonPhrase";
	node = json_object_get_member(pJsonObject, reasonPhraseKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&reasonPhrase, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *userMessageKey = "userMessage";
	node = json_object_get_member(pJsonObject, userMessageKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&userMessage, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *adminMessageKey = "adminMessage";
	node = json_object_get_member(pJsonObject, adminMessageKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&adminMessage, node, "std::string", "");
		} else {
			
		}
	}
}

DefaultErrorResponse::DefaultErrorResponse(char* json)
{
	this->fromJson(json);
}

char*
DefaultErrorResponse::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getStatusCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *statusCodeKey = "statusCode";
	json_object_set_member(pJsonObject, statusCodeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getReasonPhrase();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *reasonPhraseKey = "reasonPhrase";
	json_object_set_member(pJsonObject, reasonPhraseKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUserMessage();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *userMessageKey = "userMessage";
	json_object_set_member(pJsonObject, userMessageKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAdminMessage();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *adminMessageKey = "adminMessage";
	json_object_set_member(pJsonObject, adminMessageKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
DefaultErrorResponse::getStatusCode()
{
	return statusCode;
}

void
DefaultErrorResponse::setStatusCode(std::string  statusCode)
{
	this->statusCode = statusCode;
}

std::string
DefaultErrorResponse::getReasonPhrase()
{
	return reasonPhrase;
}

void
DefaultErrorResponse::setReasonPhrase(std::string  reasonPhrase)
{
	this->reasonPhrase = reasonPhrase;
}

std::string
DefaultErrorResponse::getUserMessage()
{
	return userMessage;
}

void
DefaultErrorResponse::setUserMessage(std::string  userMessage)
{
	this->userMessage = userMessage;
}

std::string
DefaultErrorResponse::getAdminMessage()
{
	return adminMessage;
}

void
DefaultErrorResponse::setAdminMessage(std::string  adminMessage)
{
	this->adminMessage = adminMessage;
}


