#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "AboutLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

AboutLinks::AboutLinks()
{
	//__init();
}

AboutLinks::~AboutLinks()
{
	//__cleanup();
}

void
AboutLinks::__init()
{
	//self = new AboutRef();
	//lastupdated = new LastupdatedRef();
}

void
AboutLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(lastupdated != NULL) {
	//
	//delete lastupdated;
	//lastupdated = NULL;
	//}
	//
}

void
AboutLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("AboutRef")) {
			jsonToValue(&self, node, "AboutRef", "AboutRef");
		} else {
			
			AboutRef* obj = static_cast<AboutRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *lastupdatedKey = "lastupdated";
	node = json_object_get_member(pJsonObject, lastupdatedKey);
	if (node !=NULL) {
	

		if (isprimitive("LastupdatedRef")) {
			jsonToValue(&lastupdated, node, "LastupdatedRef", "LastupdatedRef");
		} else {
			
			LastupdatedRef* obj = static_cast<LastupdatedRef*> (&lastupdated);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

AboutLinks::AboutLinks(char* json)
{
	this->fromJson(json);
}

char*
AboutLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("AboutRef")) {
		AboutRef obj = getSelf();
		node = converttoJson(&obj, "AboutRef", "");
	}
	else {
		
		AboutRef obj = static_cast<AboutRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("LastupdatedRef")) {
		LastupdatedRef obj = getLastupdated();
		node = converttoJson(&obj, "LastupdatedRef", "");
	}
	else {
		
		LastupdatedRef obj = static_cast<LastupdatedRef> (getLastupdated());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *lastupdatedKey = "lastupdated";
	json_object_set_member(pJsonObject, lastupdatedKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

AboutRef
AboutLinks::getSelf()
{
	return self;
}

void
AboutLinks::setSelf(AboutRef  self)
{
	this->self = self;
}

LastupdatedRef
AboutLinks::getLastupdated()
{
	return lastupdated;
}

void
AboutLinks::setLastupdated(LastupdatedRef  lastupdated)
{
	this->lastupdated = lastupdated;
}


