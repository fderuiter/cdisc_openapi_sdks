#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCdashigScenarioField.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCdashigScenarioField::XmlCdashigScenarioField()
{
	//__init();
}

XmlCdashigScenarioField::~XmlCdashigScenarioField()
{
	//__cleanup();
}

void
XmlCdashigScenarioField::__init()
{
	//self = new CdashigScenarioField();
}

void
XmlCdashigScenarioField::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCdashigScenarioField::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigScenarioField")) {
			jsonToValue(&self, node, "CdashigScenarioField", "CdashigScenarioField");
		} else {
			
			CdashigScenarioField* obj = static_cast<CdashigScenarioField*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCdashigScenarioField::XmlCdashigScenarioField(char* json)
{
	this->fromJson(json);
}

char*
XmlCdashigScenarioField::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigScenarioField")) {
		CdashigScenarioField obj = getSelf();
		node = converttoJson(&obj, "CdashigScenarioField", "");
	}
	else {
		
		CdashigScenarioField obj = static_cast<CdashigScenarioField> (getSelf());
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

CdashigScenarioField
XmlCdashigScenarioField::getSelf()
{
	return self;
}

void
XmlCdashigScenarioField::setSelf(CdashigScenarioField  self)
{
	this->self = self;
}


