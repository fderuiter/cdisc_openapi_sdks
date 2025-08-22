#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "LastupdatedLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

LastupdatedLinks::LastupdatedLinks()
{
	//__init();
}

LastupdatedLinks::~LastupdatedLinks()
{
	//__cleanup();
}

void
LastupdatedLinks::__init()
{
	//self = new LastupdatedRef();
}

void
LastupdatedLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
LastupdatedLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("LastupdatedRef")) {
			jsonToValue(&self, node, "LastupdatedRef", "LastupdatedRef");
		} else {
			
			LastupdatedRef* obj = static_cast<LastupdatedRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

LastupdatedLinks::LastupdatedLinks(char* json)
{
	this->fromJson(json);
}

char*
LastupdatedLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("LastupdatedRef")) {
		LastupdatedRef obj = getSelf();
		node = converttoJson(&obj, "LastupdatedRef", "");
	}
	else {
		
		LastupdatedRef obj = static_cast<LastupdatedRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

LastupdatedRef
LastupdatedLinks::getSelf()
{
	return self;
}

void
LastupdatedLinks::setSelf(LastupdatedRef  self)
{
	this->self = self;
}


