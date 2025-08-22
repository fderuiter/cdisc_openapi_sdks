#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSendigDatasets.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSendigDatasets::XmlSendigDatasets()
{
	//__init();
}

XmlSendigDatasets::~XmlSendigDatasets()
{
	//__cleanup();
}

void
XmlSendigDatasets::__init()
{
	//self = new SendigDatasets();
}

void
XmlSendigDatasets::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSendigDatasets::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigDatasets")) {
			jsonToValue(&self, node, "SendigDatasets", "SendigDatasets");
		} else {
			
			SendigDatasets* obj = static_cast<SendigDatasets*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSendigDatasets::XmlSendigDatasets(char* json)
{
	this->fromJson(json);
}

char*
XmlSendigDatasets::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SendigDatasets")) {
		SendigDatasets obj = getSelf();
		node = converttoJson(&obj, "SendigDatasets", "");
	}
	else {
		
		SendigDatasets obj = static_cast<SendigDatasets> (getSelf());
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

SendigDatasets
XmlSendigDatasets::getSelf()
{
	return self;
}

void
XmlSendigDatasets::setSelf(SendigDatasets  self)
{
	this->self = self;
}


