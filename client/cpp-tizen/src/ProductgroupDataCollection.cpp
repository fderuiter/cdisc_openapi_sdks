#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ProductgroupDataCollection.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ProductgroupDataCollection::ProductgroupDataCollection()
{
	//__init();
}

ProductgroupDataCollection::~ProductgroupDataCollection()
{
	//__cleanup();
}

void
ProductgroupDataCollection::__init()
{
	//_links = new ProductgroupDataCollectionLinks();
}

void
ProductgroupDataCollection::__cleanup()
{
	//if(_links != NULL) {
	//
	//delete _links;
	//_links = NULL;
	//}
	//
}

void
ProductgroupDataCollection::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *_linksKey = "_links";
	node = json_object_get_member(pJsonObject, _linksKey);
	if (node !=NULL) {
	

		if (isprimitive("ProductgroupDataCollectionLinks")) {
			jsonToValue(&_links, node, "ProductgroupDataCollectionLinks", "ProductgroupDataCollectionLinks");
		} else {
			
			ProductgroupDataCollectionLinks* obj = static_cast<ProductgroupDataCollectionLinks*> (&_links);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

ProductgroupDataCollection::ProductgroupDataCollection(char* json)
{
	this->fromJson(json);
}

char*
ProductgroupDataCollection::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ProductgroupDataCollectionLinks")) {
		ProductgroupDataCollectionLinks obj = getLinks();
		node = converttoJson(&obj, "ProductgroupDataCollectionLinks", "");
	}
	else {
		
		ProductgroupDataCollectionLinks obj = static_cast<ProductgroupDataCollectionLinks> (getLinks());
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

ProductgroupDataCollectionLinks
ProductgroupDataCollection::getLinks()
{
	return _links;
}

void
ProductgroupDataCollection::setLinks(ProductgroupDataCollectionLinks  _links)
{
	this->_links = _links;
}


