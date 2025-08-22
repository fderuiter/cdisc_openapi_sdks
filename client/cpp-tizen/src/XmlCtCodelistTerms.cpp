#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "XmlCtCodelistTerms.h"

using namespace std;
using namespace Tizen::ArtikCloud;

XmlCtCodelistTerms::XmlCtCodelistTerms()
{
	//__init();
}

XmlCtCodelistTerms::~XmlCtCodelistTerms()
{
	//__cleanup();
}

void
XmlCtCodelistTerms::__init()
{
	//self = new CtCodelistTerms();
}

void
XmlCtCodelistTerms::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//
}

void
XmlCtCodelistTerms::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CtCodelistTerms")) {
			jsonToValue(&self, node, "CtCodelistTerms", "CtCodelistTerms");
		} else {
			
			CtCodelistTerms* obj = static_cast<CtCodelistTerms*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

XmlCtCodelistTerms::XmlCtCodelistTerms(char* json)
{
	this->fromJson(json);
}

char*
XmlCtCodelistTerms::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CtCodelistTerms")) {
		CtCodelistTerms obj = getSelf();
		node = converttoJson(&obj, "CtCodelistTerms", "");
	}
	else {
		
		CtCodelistTerms obj = static_cast<CtCodelistTerms> (getSelf());
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

CtCodelistTerms
XmlCtCodelistTerms::getSelf()
{
	return self;
}

void
XmlCtCodelistTerms::setSelf(CtCodelistTerms  self)
{
	this->self = self;
}


