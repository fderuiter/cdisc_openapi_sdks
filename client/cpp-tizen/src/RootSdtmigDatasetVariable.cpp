#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RootSdtmigDatasetVariable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RootSdtmigDatasetVariable::RootSdtmigDatasetVariable()
{
	//__init();
}

RootSdtmigDatasetVariable::~RootSdtmigDatasetVariable()
{
	//__cleanup();
}

void
RootSdtmigDatasetVariable::__init()
{
	//_links = new RootSdtmigDatasetVariableLinks();
}

void
RootSdtmigDatasetVariable::__cleanup()
{
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
RootSdtmigDatasetVariable::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("RootSdtmigDatasetVariableLinks")) {
			jsonToValue(&_links, node, "RootSdtmigDatasetVariableLinks", "RootSdtmigDatasetVariableLinks");
		} else {
			
			RootSdtmigDatasetVariableLinks* obj = static_cast<RootSdtmigDatasetVariableLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

RootSdtmigDatasetVariable::RootSdtmigDatasetVariable(char* json)
{
	this->fromJson(json);
}

char*
RootSdtmigDatasetVariable::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootSdtmigDatasetVariableLinks")) {
		RootSdtmigDatasetVariableLinks obj = getLinks();
		node = converttoJson(&obj, "RootSdtmigDatasetVariableLinks", "");
	}
	else {
		
		RootSdtmigDatasetVariableLinks obj = static_cast<RootSdtmigDatasetVariableLinks> (getLinks());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *_linksKey = "_links";
	json_object_set_member(pJsonObject, _linksKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

RootSdtmigDatasetVariableLinks
RootSdtmigDatasetVariable::getLinks()
{
	return _links;
}

void
RootSdtmigDatasetVariable::setLinks(RootSdtmigDatasetVariableLinks  _links)
{
	this->_links = _links;
}


