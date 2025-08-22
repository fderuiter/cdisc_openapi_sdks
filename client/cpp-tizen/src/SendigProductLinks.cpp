#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SendigProductLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SendigProductLinks::SendigProductLinks()
{
	//__init();
}

SendigProductLinks::~SendigProductLinks()
{
	//__cleanup();
}

void
SendigProductLinks::__init()
{
	//self = new SendigProductRef();
	//model = new SdtmProductRef();
	//priorVersion = new SendigProductRef();
}

void
SendigProductLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(model != NULL) {
	//
	//delete model;
	//model = NULL;
	//}
	//if(priorVersion != NULL) {
	//
	//delete priorVersion;
	//priorVersion = NULL;
	//}
	//
}

void
SendigProductLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigProductRef")) {
			jsonToValue(&self, node, "SendigProductRef", "SendigProductRef");
		} else {
			
			SendigProductRef* obj = static_cast<SendigProductRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *modelKey = "model";
	node = json_object_get_member(pJsonObject, modelKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmProductRef")) {
			jsonToValue(&model, node, "SdtmProductRef", "SdtmProductRef");
		} else {
			
			SdtmProductRef* obj = static_cast<SdtmProductRef*> (&model);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigProductRef")) {
			jsonToValue(&priorVersion, node, "SendigProductRef", "SendigProductRef");
		} else {
			
			SendigProductRef* obj = static_cast<SendigProductRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

SendigProductLinks::SendigProductLinks(char* json)
{
	this->fromJson(json);
}

char*
SendigProductLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SendigProductRef")) {
		SendigProductRef obj = getSelf();
		node = converttoJson(&obj, "SendigProductRef", "");
	}
	else {
		
		SendigProductRef obj = static_cast<SendigProductRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("SdtmProductRef")) {
		SdtmProductRef obj = getModel();
		node = converttoJson(&obj, "SdtmProductRef", "");
	}
	else {
		
		SdtmProductRef obj = static_cast<SdtmProductRef> (getModel());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *modelKey = "model";
	json_object_set_member(pJsonObject, modelKey, node);
	if (isprimitive("SendigProductRef")) {
		SendigProductRef obj = getPriorVersion();
		node = converttoJson(&obj, "SendigProductRef", "");
	}
	else {
		
		SendigProductRef obj = static_cast<SendigProductRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

SendigProductRef
SendigProductLinks::getSelf()
{
	return self;
}

void
SendigProductLinks::setSelf(SendigProductRef  self)
{
	this->self = self;
}

SdtmProductRef
SendigProductLinks::getModel()
{
	return model;
}

void
SendigProductLinks::setModel(SdtmProductRef  model)
{
	this->model = model;
}

SendigProductRef
SendigProductLinks::getPriorVersion()
{
	return priorVersion;
}

void
SendigProductLinks::setPriorVersion(SendigProductRef  priorVersion)
{
	this->priorVersion = priorVersion;
}


