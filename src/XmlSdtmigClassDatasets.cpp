#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSdtmigClassDatasets.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSdtmigClassDatasets::XmlSdtmigClassDatasets()
{
	//__init();
}

XmlSdtmigClassDatasets::~XmlSdtmigClassDatasets()
{
	//__cleanup();
}

void
XmlSdtmigClassDatasets::__init()
{
	//self = new SdtmigClassDatasets();
}

void
XmlSdtmigClassDatasets::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSdtmigClassDatasets::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigClassDatasets")) {
			jsonToValue(&self, node, "SdtmigClassDatasets", "SdtmigClassDatasets");
		} else {
			
			SdtmigClassDatasets* obj = static_cast<SdtmigClassDatasets*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSdtmigClassDatasets::XmlSdtmigClassDatasets(char* json)
{
	this->fromJson(json);
}

char*
XmlSdtmigClassDatasets::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmigClassDatasets")) {
		SdtmigClassDatasets obj = getSelf();
		node = converttoJson(&obj, "SdtmigClassDatasets", "");
	}
	else {
		
		SdtmigClassDatasets obj = static_cast<SdtmigClassDatasets> (getSelf());
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

SdtmigClassDatasets
XmlSdtmigClassDatasets::getSelf()
{
	return self;
}

void
XmlSdtmigClassDatasets::setSelf(SdtmigClassDatasets  self)
{
	this->self = self;
}


