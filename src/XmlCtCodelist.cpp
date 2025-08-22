#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCtCodelist.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCtCodelist::XmlCtCodelist()
{
	//__init();
}

XmlCtCodelist::~XmlCtCodelist()
{
	//__cleanup();
}

void
XmlCtCodelist::__init()
{
	//self = new CtCodelist();
}

void
XmlCtCodelist::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCtCodelist::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CtCodelist")) {
			jsonToValue(&self, node, "CtCodelist", "CtCodelist");
		} else {
			
			CtCodelist* obj = static_cast<CtCodelist*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCtCodelist::XmlCtCodelist(char* json)
{
	this->fromJson(json);
}

char*
XmlCtCodelist::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CtCodelist")) {
		CtCodelist obj = getSelf();
		node = converttoJson(&obj, "CtCodelist", "");
	}
	else {
		
		CtCodelist obj = static_cast<CtCodelist> (getSelf());
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

CtCodelist
XmlCtCodelist::getSelf()
{
	return self;
}

void
XmlCtCodelist::setSelf(CtCodelist  self)
{
	this->self = self;
}


