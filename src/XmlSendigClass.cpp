#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSendigClass.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSendigClass::XmlSendigClass()
{
	//__init();
}

XmlSendigClass::~XmlSendigClass()
{
	//__cleanup();
}

void
XmlSendigClass::__init()
{
	//self = new SendigClass();
}

void
XmlSendigClass::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSendigClass::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigClass")) {
			jsonToValue(&self, node, "SendigClass", "SendigClass");
		} else {
			
			SendigClass* obj = static_cast<SendigClass*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSendigClass::XmlSendigClass(char* json)
{
	this->fromJson(json);
}

char*
XmlSendigClass::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SendigClass")) {
		SendigClass obj = getSelf();
		node = converttoJson(&obj, "SendigClass", "");
	}
	else {
		
		SendigClass obj = static_cast<SendigClass> (getSelf());
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

SendigClass
XmlSendigClass::getSelf()
{
	return self;
}

void
XmlSendigClass::setSelf(SendigClass  self)
{
	this->self = self;
}


