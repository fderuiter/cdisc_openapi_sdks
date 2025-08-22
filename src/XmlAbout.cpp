#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlAbout.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlAbout::XmlAbout()
{
	//__init();
}

XmlAbout::~XmlAbout()
{
	//__cleanup();
}

void
XmlAbout::__init()
{
	//self = new About();
}

void
XmlAbout::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlAbout::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("About")) {
			jsonToValue(&self, node, "About", "About");
		} else {
			
			About* obj = static_cast<About*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlAbout::XmlAbout(char* json)
{
	this->fromJson(json);
}

char*
XmlAbout::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("About")) {
		About obj = getSelf();
		node = converttoJson(&obj, "About", "");
	}
	else {
		
		About obj = static_cast<About> (getSelf());
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

About
XmlAbout::getSelf()
{
	return self;
}

void
XmlAbout::setSelf(About  self)
{
	this->self = self;
}


