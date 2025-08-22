#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCdashProductClasses.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCdashProductClasses::XmlCdashProductClasses()
{
	//__init();
}

XmlCdashProductClasses::~XmlCdashProductClasses()
{
	//__cleanup();
}

void
XmlCdashProductClasses::__init()
{
	//self = new CdashProductClasses();
}

void
XmlCdashProductClasses::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCdashProductClasses::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashProductClasses")) {
			jsonToValue(&self, node, "CdashProductClasses", "CdashProductClasses");
		} else {
			
			CdashProductClasses* obj = static_cast<CdashProductClasses*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCdashProductClasses::XmlCdashProductClasses(char* json)
{
	this->fromJson(json);
}

char*
XmlCdashProductClasses::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashProductClasses")) {
		CdashProductClasses obj = getSelf();
		node = converttoJson(&obj, "CdashProductClasses", "");
	}
	else {
		
		CdashProductClasses obj = static_cast<CdashProductClasses> (getSelf());
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

CdashProductClasses
XmlCdashProductClasses::getSelf()
{
	return self;
}

void
XmlCdashProductClasses::setSelf(CdashProductClasses  self)
{
	this->self = self;
}


