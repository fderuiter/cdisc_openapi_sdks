#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSendigClassDatasets.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSendigClassDatasets::XmlSendigClassDatasets()
{
	//__init();
}

XmlSendigClassDatasets::~XmlSendigClassDatasets()
{
	//__cleanup();
}

void
XmlSendigClassDatasets::__init()
{
	//self = new SendigClassDatasets();
}

void
XmlSendigClassDatasets::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSendigClassDatasets::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigClassDatasets")) {
			jsonToValue(&self, node, "SendigClassDatasets", "SendigClassDatasets");
		} else {
			
			SendigClassDatasets* obj = static_cast<SendigClassDatasets*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSendigClassDatasets::XmlSendigClassDatasets(char* json)
{
	this->fromJson(json);
}

char*
XmlSendigClassDatasets::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SendigClassDatasets")) {
		SendigClassDatasets obj = getSelf();
		node = converttoJson(&obj, "SendigClassDatasets", "");
	}
	else {
		
		SendigClassDatasets obj = static_cast<SendigClassDatasets> (getSelf());
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

SendigClassDatasets
XmlSendigClassDatasets::getSelf()
{
	return self;
}

void
XmlSendigClassDatasets::setSelf(SendigClassDatasets  self)
{
	this->self = self;
}


