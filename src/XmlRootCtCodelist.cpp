#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlRootCtCodelist.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlRootCtCodelist::XmlRootCtCodelist()
{
	//__init();
}

XmlRootCtCodelist::~XmlRootCtCodelist()
{
	//__cleanup();
}

void
XmlRootCtCodelist::__init()
{
	//self = new RootCtCodelist();
}

void
XmlRootCtCodelist::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlRootCtCodelist::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCtCodelist")) {
			jsonToValue(&self, node, "RootCtCodelist", "RootCtCodelist");
		} else {
			
			RootCtCodelist* obj = static_cast<RootCtCodelist*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlRootCtCodelist::XmlRootCtCodelist(char* json)
{
	this->fromJson(json);
}

char*
XmlRootCtCodelist::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootCtCodelist")) {
		RootCtCodelist obj = getSelf();
		node = converttoJson(&obj, "RootCtCodelist", "");
	}
	else {
		
		RootCtCodelist obj = static_cast<RootCtCodelist> (getSelf());
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

RootCtCodelist
XmlRootCtCodelist::getSelf()
{
	return self;
}

void
XmlRootCtCodelist::setSelf(RootCtCodelist  self)
{
	this->self = self;
}


