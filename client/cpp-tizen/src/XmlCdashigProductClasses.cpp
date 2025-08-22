#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCdashigProductClasses.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCdashigProductClasses::XmlCdashigProductClasses()
{
	//__init();
}

XmlCdashigProductClasses::~XmlCdashigProductClasses()
{
	//__cleanup();
}

void
XmlCdashigProductClasses::__init()
{
	//self = new CdashigProductClasses();
}

void
XmlCdashigProductClasses::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCdashigProductClasses::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigProductClasses")) {
			jsonToValue(&self, node, "CdashigProductClasses", "CdashigProductClasses");
		} else {
			
			CdashigProductClasses* obj = static_cast<CdashigProductClasses*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCdashigProductClasses::XmlCdashigProductClasses(char* json)
{
	this->fromJson(json);
}

char*
XmlCdashigProductClasses::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigProductClasses")) {
		CdashigProductClasses obj = getSelf();
		node = converttoJson(&obj, "CdashigProductClasses", "");
	}
	else {
		
		CdashigProductClasses obj = static_cast<CdashigProductClasses> (getSelf());
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

CdashigProductClasses
XmlCdashigProductClasses::getSelf()
{
	return self;
}

void
XmlCdashigProductClasses::setSelf(CdashigProductClasses  self)
{
	this->self = self;
}


