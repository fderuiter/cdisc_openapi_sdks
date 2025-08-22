#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSendigDatasetVariables.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSendigDatasetVariables::XmlSendigDatasetVariables()
{
	//__init();
}

XmlSendigDatasetVariables::~XmlSendigDatasetVariables()
{
	//__cleanup();
}

void
XmlSendigDatasetVariables::__init()
{
	//self = new SendigDatasetVariables();
}

void
XmlSendigDatasetVariables::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSendigDatasetVariables::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigDatasetVariables")) {
			jsonToValue(&self, node, "SendigDatasetVariables", "SendigDatasetVariables");
		} else {
			
			SendigDatasetVariables* obj = static_cast<SendigDatasetVariables*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSendigDatasetVariables::XmlSendigDatasetVariables(char* json)
{
	this->fromJson(json);
}

char*
XmlSendigDatasetVariables::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SendigDatasetVariables")) {
		SendigDatasetVariables obj = getSelf();
		node = converttoJson(&obj, "SendigDatasetVariables", "");
	}
	else {
		
		SendigDatasetVariables obj = static_cast<SendigDatasetVariables> (getSelf());
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

SendigDatasetVariables
XmlSendigDatasetVariables::getSelf()
{
	return self;
}

void
XmlSendigDatasetVariables::setSelf(SendigDatasetVariables  self)
{
	this->self = self;
}


