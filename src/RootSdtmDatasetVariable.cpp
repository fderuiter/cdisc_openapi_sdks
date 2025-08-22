#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RootSdtmDatasetVariable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RootSdtmDatasetVariable::RootSdtmDatasetVariable()
{
	//__init();
}

RootSdtmDatasetVariable::~RootSdtmDatasetVariable()
{
	//__cleanup();
}

void
RootSdtmDatasetVariable::__init()
{
	//_links = new RootSdtmDatasetVariableLinks();
}

void
RootSdtmDatasetVariable::__cleanup()
{
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
RootSdtmDatasetVariable::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("RootSdtmDatasetVariableLinks")) {
			jsonToValue(&_links, node, "RootSdtmDatasetVariableLinks", "RootSdtmDatasetVariableLinks");
		} else {
			
			RootSdtmDatasetVariableLinks* obj = static_cast<RootSdtmDatasetVariableLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

RootSdtmDatasetVariable::RootSdtmDatasetVariable(char* json)
{
	this->fromJson(json);
}

char*
RootSdtmDatasetVariable::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootSdtmDatasetVariableLinks")) {
		RootSdtmDatasetVariableLinks obj = getLinks();
		node = converttoJson(&obj, "RootSdtmDatasetVariableLinks", "");
	}
	else {
		
		RootSdtmDatasetVariableLinks obj = static_cast<RootSdtmDatasetVariableLinks> (getLinks());
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

RootSdtmDatasetVariableLinks
RootSdtmDatasetVariable::getLinks()
{
	return _links;
}

void
RootSdtmDatasetVariable::setLinks(RootSdtmDatasetVariableLinks  _links)
{
	this->_links = _links;
}


