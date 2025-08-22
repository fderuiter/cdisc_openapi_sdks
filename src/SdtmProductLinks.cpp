#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmProductLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmProductLinks::SdtmProductLinks()
{
	//__init();
}

SdtmProductLinks::~SdtmProductLinks()
{
	//__cleanup();
}

void
SdtmProductLinks::__init()
{
	//self = new SdtmProductRef();
	//priorVersion = new SdtmProductRef();
}

void
SdtmProductLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(priorVersion != NULL) {
	//
	//delete priorVersion;
	//priorVersion = NULL;
	//}
	//
}

void
SdtmProductLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmProductRef")) {
			jsonToValue(&self, node, "SdtmProductRef", "SdtmProductRef");
		} else {
			
			SdtmProductRef* obj = static_cast<SdtmProductRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmProductRef")) {
			jsonToValue(&priorVersion, node, "SdtmProductRef", "SdtmProductRef");
		} else {
			
			SdtmProductRef* obj = static_cast<SdtmProductRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

SdtmProductLinks::SdtmProductLinks(char* json)
{
	this->fromJson(json);
}

char*
SdtmProductLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmProductRef")) {
		SdtmProductRef obj = getSelf();
		node = converttoJson(&obj, "SdtmProductRef", "");
	}
	else {
		
		SdtmProductRef obj = static_cast<SdtmProductRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("SdtmProductRef")) {
		SdtmProductRef obj = getPriorVersion();
		node = converttoJson(&obj, "SdtmProductRef", "");
	}
	else {
		
		SdtmProductRef obj = static_cast<SdtmProductRef> (getPriorVersion());
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

SdtmProductRef
SdtmProductLinks::getSelf()
{
	return self;
}

void
SdtmProductLinks::setSelf(SdtmProductRef  self)
{
	this->self = self;
}

SdtmProductRef
SdtmProductLinks::getPriorVersion()
{
	return priorVersion;
}

void
SdtmProductLinks::setPriorVersion(SdtmProductRef  priorVersion)
{
	this->priorVersion = priorVersion;
}


