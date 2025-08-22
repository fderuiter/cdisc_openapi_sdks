#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ProductgroupDataTabulation.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ProductgroupDataTabulation::ProductgroupDataTabulation()
{
	//__init();
}

ProductgroupDataTabulation::~ProductgroupDataTabulation()
{
	//__cleanup();
}

void
ProductgroupDataTabulation::__init()
{
	//_links = new ProductgroupDataTabulationLinks();
}

void
ProductgroupDataTabulation::__cleanup()
{
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
ProductgroupDataTabulation::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("ProductgroupDataTabulationLinks")) {
			jsonToValue(&_links, node, "ProductgroupDataTabulationLinks", "ProductgroupDataTabulationLinks");
		} else {
			
			ProductgroupDataTabulationLinks* obj = static_cast<ProductgroupDataTabulationLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

ProductgroupDataTabulation::ProductgroupDataTabulation(char* json)
{
	this->fromJson(json);
}

char*
ProductgroupDataTabulation::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ProductgroupDataTabulationLinks")) {
		ProductgroupDataTabulationLinks obj = getLinks();
		node = converttoJson(&obj, "ProductgroupDataTabulationLinks", "");
	}
	else {
		
		ProductgroupDataTabulationLinks obj = static_cast<ProductgroupDataTabulationLinks> (getLinks());
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

ProductgroupDataTabulationLinks
ProductgroupDataTabulation::getLinks()
{
	return _links;
}

void
ProductgroupDataTabulation::setLinks(ProductgroupDataTabulationLinks  _links)
{
	this->_links = _links;
}


