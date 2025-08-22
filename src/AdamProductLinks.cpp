#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "AdamProductLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

AdamProductLinks::AdamProductLinks()
{
	//__init();
}

AdamProductLinks::~AdamProductLinks()
{
	//__cleanup();
}

void
AdamProductLinks::__init()
{
	//self = new AdamProductRef();
	//model = new AdamProductRef();
	//priorVersion = new AdamProductRef();
}

void
AdamProductLinks::__cleanup()
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
AdamProductLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamProductRef")) {
			jsonToValue(&self, node, "AdamProductRef", "AdamProductRef");
		} else {
			
			AdamProductRef* obj = static_cast<AdamProductRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *modelKey = "model";
	node = json_object_get_member(pJsonObject, modelKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamProductRef")) {
			jsonToValue(&model, node, "AdamProductRef", "AdamProductRef");
		} else {
			
			AdamProductRef* obj = static_cast<AdamProductRef*> (&model);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("AdamProductRef")) {
			jsonToValue(&priorVersion, node, "AdamProductRef", "AdamProductRef");
		} else {
			
			AdamProductRef* obj = static_cast<AdamProductRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

AdamProductLinks::AdamProductLinks(char* json)
{
	this->fromJson(json);
}

char*
AdamProductLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("AdamProductRef")) {
		AdamProductRef obj = getSelf();
		node = converttoJson(&obj, "AdamProductRef", "");
	}
	else {
		
		AdamProductRef obj = static_cast<AdamProductRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("AdamProductRef")) {
		AdamProductRef obj = getModel();
		node = converttoJson(&obj, "AdamProductRef", "");
	}
	else {
		
		AdamProductRef obj = static_cast<AdamProductRef> (getModel());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *modelKey = "model";
	json_object_set_member(pJsonObject, modelKey, node);
	if (isprimitive("AdamProductRef")) {
		AdamProductRef obj = getPriorVersion();
		node = converttoJson(&obj, "AdamProductRef", "");
	}
	else {
		
		AdamProductRef obj = static_cast<AdamProductRef> (getPriorVersion());
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

AdamProductRef
AdamProductLinks::getSelf()
{
	return self;
}

void
AdamProductLinks::setSelf(AdamProductRef  self)
{
	this->self = self;
}

AdamProductRef
AdamProductLinks::getModel()
{
	return model;
}

void
AdamProductLinks::setModel(AdamProductRef  model)
{
	this->model = model;
}

AdamProductRef
AdamProductLinks::getPriorVersion()
{
	return priorVersion;
}

void
AdamProductLinks::setPriorVersion(AdamProductRef  priorVersion)
{
	this->priorVersion = priorVersion;
}


