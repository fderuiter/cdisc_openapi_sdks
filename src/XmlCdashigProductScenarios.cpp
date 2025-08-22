#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCdashigProductScenarios.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCdashigProductScenarios::XmlCdashigProductScenarios()
{
	//__init();
}

XmlCdashigProductScenarios::~XmlCdashigProductScenarios()
{
	//__cleanup();
}

void
XmlCdashigProductScenarios::__init()
{
	//self = new CdashigProductScenarios();
}

void
XmlCdashigProductScenarios::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCdashigProductScenarios::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigProductScenarios")) {
			jsonToValue(&self, node, "CdashigProductScenarios", "CdashigProductScenarios");
		} else {
			
			CdashigProductScenarios* obj = static_cast<CdashigProductScenarios*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCdashigProductScenarios::XmlCdashigProductScenarios(char* json)
{
	this->fromJson(json);
}

char*
XmlCdashigProductScenarios::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigProductScenarios")) {
		CdashigProductScenarios obj = getSelf();
		node = converttoJson(&obj, "CdashigProductScenarios", "");
	}
	else {
		
		CdashigProductScenarios obj = static_cast<CdashigProductScenarios> (getSelf());
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

CdashigProductScenarios
XmlCdashigProductScenarios::getSelf()
{
	return self;
}

void
XmlCdashigProductScenarios::setSelf(CdashigProductScenarios  self)
{
	this->self = self;
}


