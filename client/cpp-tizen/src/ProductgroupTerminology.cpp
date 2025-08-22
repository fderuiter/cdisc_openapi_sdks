#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ProductgroupTerminology.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ProductgroupTerminology::ProductgroupTerminology()
{
	//__init();
}

ProductgroupTerminology::~ProductgroupTerminology()
{
	//__cleanup();
}

void
ProductgroupTerminology::__init()
{
	//_links = new ProductgroupTerminologyLinks();
}

void
ProductgroupTerminology::__cleanup()
{
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
ProductgroupTerminology::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("ProductgroupTerminologyLinks")) {
			jsonToValue(&_links, node, "ProductgroupTerminologyLinks", "ProductgroupTerminologyLinks");
		} else {
			
			ProductgroupTerminologyLinks* obj = static_cast<ProductgroupTerminologyLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

ProductgroupTerminology::ProductgroupTerminology(char* json)
{
	this->fromJson(json);
}

char*
ProductgroupTerminology::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ProductgroupTerminologyLinks")) {
		ProductgroupTerminologyLinks obj = getLinks();
		node = converttoJson(&obj, "ProductgroupTerminologyLinks", "");
	}
	else {
		
		ProductgroupTerminologyLinks obj = static_cast<ProductgroupTerminologyLinks> (getLinks());
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

ProductgroupTerminologyLinks
ProductgroupTerminology::getLinks()
{
	return _links;
}

void
ProductgroupTerminology::setLinks(ProductgroupTerminologyLinks  _links)
{
	this->_links = _links;
}


