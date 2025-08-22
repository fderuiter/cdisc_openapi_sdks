#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCdashDomainFields.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCdashDomainFields::XmlCdashDomainFields()
{
	//__init();
}

XmlCdashDomainFields::~XmlCdashDomainFields()
{
	//__cleanup();
}

void
XmlCdashDomainFields::__init()
{
	//self = new CdashDomainFields();
}

void
XmlCdashDomainFields::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCdashDomainFields::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashDomainFields")) {
			jsonToValue(&self, node, "CdashDomainFields", "CdashDomainFields");
		} else {
			
			CdashDomainFields* obj = static_cast<CdashDomainFields*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCdashDomainFields::XmlCdashDomainFields(char* json)
{
	this->fromJson(json);
}

char*
XmlCdashDomainFields::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashDomainFields")) {
		CdashDomainFields obj = getSelf();
		node = converttoJson(&obj, "CdashDomainFields", "");
	}
	else {
		
		CdashDomainFields obj = static_cast<CdashDomainFields> (getSelf());
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

CdashDomainFields
XmlCdashDomainFields::getSelf()
{
	return self;
}

void
XmlCdashDomainFields::setSelf(CdashDomainFields  self)
{
	this->self = self;
}


