#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSdtmDataset.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSdtmDataset::XmlSdtmDataset()
{
	//__init();
}

XmlSdtmDataset::~XmlSdtmDataset()
{
	//__cleanup();
}

void
XmlSdtmDataset::__init()
{
	//self = new SdtmDataset();
}

void
XmlSdtmDataset::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSdtmDataset::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmDataset")) {
			jsonToValue(&self, node, "SdtmDataset", "SdtmDataset");
		} else {
			
			SdtmDataset* obj = static_cast<SdtmDataset*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSdtmDataset::XmlSdtmDataset(char* json)
{
	this->fromJson(json);
}

char*
XmlSdtmDataset::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmDataset")) {
		SdtmDataset obj = getSelf();
		node = converttoJson(&obj, "SdtmDataset", "");
	}
	else {
		
		SdtmDataset obj = static_cast<SdtmDataset> (getSelf());
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

SdtmDataset
XmlSdtmDataset::getSelf()
{
	return self;
}

void
XmlSdtmDataset::setSelf(SdtmDataset  self)
{
	this->self = self;
}


