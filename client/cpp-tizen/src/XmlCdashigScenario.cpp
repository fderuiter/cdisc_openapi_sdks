#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCdashigScenario.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCdashigScenario::XmlCdashigScenario()
{
	//__init();
}

XmlCdashigScenario::~XmlCdashigScenario()
{
	//__cleanup();
}

void
XmlCdashigScenario::__init()
{
	//self = new CdashigScenario();
}

void
XmlCdashigScenario::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCdashigScenario::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigScenario")) {
			jsonToValue(&self, node, "CdashigScenario", "CdashigScenario");
		} else {
			
			CdashigScenario* obj = static_cast<CdashigScenario*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCdashigScenario::XmlCdashigScenario(char* json)
{
	this->fromJson(json);
}

char*
XmlCdashigScenario::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigScenario")) {
		CdashigScenario obj = getSelf();
		node = converttoJson(&obj, "CdashigScenario", "");
	}
	else {
		
		CdashigScenario obj = static_cast<CdashigScenario> (getSelf());
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

CdashigScenario
XmlCdashigScenario::getSelf()
{
	return self;
}

void
XmlCdashigScenario::setSelf(CdashigScenario  self)
{
	this->self = self;
}


