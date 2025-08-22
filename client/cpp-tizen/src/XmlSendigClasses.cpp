#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSendigClasses.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSendigClasses::XmlSendigClasses()
{
	//__init();
}

XmlSendigClasses::~XmlSendigClasses()
{
	//__cleanup();
}

void
XmlSendigClasses::__init()
{
	//self = new SendigClasses();
}

void
XmlSendigClasses::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSendigClasses::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigClasses")) {
			jsonToValue(&self, node, "SendigClasses", "SendigClasses");
		} else {
			
			SendigClasses* obj = static_cast<SendigClasses*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSendigClasses::XmlSendigClasses(char* json)
{
	this->fromJson(json);
}

char*
XmlSendigClasses::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SendigClasses")) {
		SendigClasses obj = getSelf();
		node = converttoJson(&obj, "SendigClasses", "");
	}
	else {
		
		SendigClasses obj = static_cast<SendigClasses> (getSelf());
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

SendigClasses
XmlSendigClasses::getSelf()
{
	return self;
}

void
XmlSendigClasses::setSelf(SendigClasses  self)
{
	this->self = self;
}


