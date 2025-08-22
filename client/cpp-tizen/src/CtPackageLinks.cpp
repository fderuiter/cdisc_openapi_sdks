#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CtPackageLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CtPackageLinks::CtPackageLinks()
{
	//__init();
}

CtPackageLinks::~CtPackageLinks()
{
	//__cleanup();
}

void
CtPackageLinks::__init()
{
	//self = new CtPackageRef();
	//priorVersion = new CtPackageRef();
}

void
CtPackageLinks::__cleanup()
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
CtPackageLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CtPackageRef")) {
			jsonToValue(&self, node, "CtPackageRef", "CtPackageRef");
		} else {
			
			CtPackageRef* obj = static_cast<CtPackageRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("CtPackageRef")) {
			jsonToValue(&priorVersion, node, "CtPackageRef", "CtPackageRef");
		} else {
			
			CtPackageRef* obj = static_cast<CtPackageRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

CtPackageLinks::CtPackageLinks(char* json)
{
	this->fromJson(json);
}

char*
CtPackageLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CtPackageRef")) {
		CtPackageRef obj = getSelf();
		node = converttoJson(&obj, "CtPackageRef", "");
	}
	else {
		
		CtPackageRef obj = static_cast<CtPackageRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("CtPackageRef")) {
		CtPackageRef obj = getPriorVersion();
		node = converttoJson(&obj, "CtPackageRef", "");
	}
	else {
		
		CtPackageRef obj = static_cast<CtPackageRef> (getPriorVersion());
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

CtPackageRef
CtPackageLinks::getSelf()
{
	return self;
}

void
CtPackageLinks::setSelf(CtPackageRef  self)
{
	this->self = self;
}

CtPackageRef
CtPackageLinks::getPriorVersion()
{
	return priorVersion;
}

void
CtPackageLinks::setPriorVersion(CtPackageRef  priorVersion)
{
	this->priorVersion = priorVersion;
}


