#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCtTerm.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCtTerm::XmlCtTerm()
{
	//__init();
}

XmlCtTerm::~XmlCtTerm()
{
	//__cleanup();
}

void
XmlCtTerm::__init()
{
	//self = new CtTerm();
}

void
XmlCtTerm::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCtTerm::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CtTerm")) {
			jsonToValue(&self, node, "CtTerm", "CtTerm");
		} else {
			
			CtTerm* obj = static_cast<CtTerm*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCtTerm::XmlCtTerm(char* json)
{
	this->fromJson(json);
}

char*
XmlCtTerm::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CtTerm")) {
		CtTerm obj = getSelf();
		node = converttoJson(&obj, "CtTerm", "");
	}
	else {
		
		CtTerm obj = static_cast<CtTerm> (getSelf());
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

CtTerm
XmlCtTerm::getSelf()
{
	return self;
}

void
XmlCtTerm::setSelf(CtTerm  self)
{
	this->self = self;
}


