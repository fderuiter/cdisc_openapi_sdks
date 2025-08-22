#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSdtmDatasets.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSdtmDatasets::XmlSdtmDatasets()
{
	//__init();
}

XmlSdtmDatasets::~XmlSdtmDatasets()
{
	//__cleanup();
}

void
XmlSdtmDatasets::__init()
{
	//self = new SdtmDatasets();
}

void
XmlSdtmDatasets::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSdtmDatasets::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmDatasets")) {
			jsonToValue(&self, node, "SdtmDatasets", "SdtmDatasets");
		} else {
			
			SdtmDatasets* obj = static_cast<SdtmDatasets*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSdtmDatasets::XmlSdtmDatasets(char* json)
{
	this->fromJson(json);
}

char*
XmlSdtmDatasets::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmDatasets")) {
		SdtmDatasets obj = getSelf();
		node = converttoJson(&obj, "SdtmDatasets", "");
	}
	else {
		
		SdtmDatasets obj = static_cast<SdtmDatasets> (getSelf());
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

SdtmDatasets
XmlSdtmDatasets::getSelf()
{
	return self;
}

void
XmlSdtmDatasets::setSelf(SdtmDatasets  self)
{
	this->self = self;
}


