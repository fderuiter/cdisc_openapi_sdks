#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlSdtmClassDatasets.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlSdtmClassDatasets::XmlSdtmClassDatasets()
{
	//__init();
}

XmlSdtmClassDatasets::~XmlSdtmClassDatasets()
{
	//__cleanup();
}

void
XmlSdtmClassDatasets::__init()
{
	//self = new SdtmClassDatasets();
}

void
XmlSdtmClassDatasets::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlSdtmClassDatasets::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmClassDatasets")) {
			jsonToValue(&self, node, "SdtmClassDatasets", "SdtmClassDatasets");
		} else {
			
			SdtmClassDatasets* obj = static_cast<SdtmClassDatasets*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlSdtmClassDatasets::XmlSdtmClassDatasets(char* json)
{
	this->fromJson(json);
}

char*
XmlSdtmClassDatasets::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmClassDatasets")) {
		SdtmClassDatasets obj = getSelf();
		node = converttoJson(&obj, "SdtmClassDatasets", "");
	}
	else {
		
		SdtmClassDatasets obj = static_cast<SdtmClassDatasets> (getSelf());
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

SdtmClassDatasets
XmlSdtmClassDatasets::getSelf()
{
	return self;
}

void
XmlSdtmClassDatasets::setSelf(SdtmClassDatasets  self)
{
	this->self = self;
}


