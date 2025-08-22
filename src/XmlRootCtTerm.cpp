#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlRootCtTerm.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlRootCtTerm::XmlRootCtTerm()
{
	//__init();
}

XmlRootCtTerm::~XmlRootCtTerm()
{
	//__cleanup();
}

void
XmlRootCtTerm::__init()
{
	//self = new RootCtTerm();
}

void
XmlRootCtTerm::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlRootCtTerm::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCtTerm")) {
			jsonToValue(&self, node, "RootCtTerm", "RootCtTerm");
		} else {
			
			RootCtTerm* obj = static_cast<RootCtTerm*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlRootCtTerm::XmlRootCtTerm(char* json)
{
	this->fromJson(json);
}

char*
XmlRootCtTerm::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootCtTerm")) {
		RootCtTerm obj = getSelf();
		node = converttoJson(&obj, "RootCtTerm", "");
	}
	else {
		
		RootCtTerm obj = static_cast<RootCtTerm> (getSelf());
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

RootCtTerm
XmlRootCtTerm::getSelf()
{
	return self;
}

void
XmlRootCtTerm::setSelf(RootCtTerm  self)
{
	this->self = self;
}


