#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashProductLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashProductLinks::CdashProductLinks()
{
	//__init();
}

CdashProductLinks::~CdashProductLinks()
{
	//__cleanup();
}

void
CdashProductLinks::__init()
{
	//self = new CdashProductRef();
	//priorVersion = new CdashProductRef();
}

void
CdashProductLinks::__cleanup()
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
CdashProductLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashProductRef")) {
			jsonToValue(&self, node, "CdashProductRef", "CdashProductRef");
		} else {
			
			CdashProductRef* obj = static_cast<CdashProductRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashProductRef")) {
			jsonToValue(&priorVersion, node, "CdashProductRef", "CdashProductRef");
		} else {
			
			CdashProductRef* obj = static_cast<CdashProductRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

CdashProductLinks::CdashProductLinks(char* json)
{
	this->fromJson(json);
}

char*
CdashProductLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashProductRef")) {
		CdashProductRef obj = getSelf();
		node = converttoJson(&obj, "CdashProductRef", "");
	}
	else {
		
		CdashProductRef obj = static_cast<CdashProductRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("CdashProductRef")) {
		CdashProductRef obj = getPriorVersion();
		node = converttoJson(&obj, "CdashProductRef", "");
	}
	else {
		
		CdashProductRef obj = static_cast<CdashProductRef> (getPriorVersion());
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

CdashProductRef
CdashProductLinks::getSelf()
{
	return self;
}

void
CdashProductLinks::setSelf(CdashProductRef  self)
{
	this->self = self;
}

CdashProductRef
CdashProductLinks::getPriorVersion()
{
	return priorVersion;
}

void
CdashProductLinks::setPriorVersion(CdashProductRef  priorVersion)
{
	this->priorVersion = priorVersion;
}


