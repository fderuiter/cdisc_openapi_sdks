#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ProductgroupDataCollectionLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ProductgroupDataCollectionLinks::ProductgroupDataCollectionLinks()
{
	//__init();
}

ProductgroupDataCollectionLinks::~ProductgroupDataCollectionLinks()
{
	//__cleanup();
}

void
ProductgroupDataCollectionLinks::__init()
{
	//self = new ProductgroupRef();
	//new std::list()std::list> cdash;
	//new std::list()std::list> cdashig;
}

void
ProductgroupDataCollectionLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(cdash != NULL) {
	//cdash.RemoveAll(true);
	//delete cdash;
	//cdash = NULL;
	//}
	//if(cdashig != NULL) {
	//cdashig.RemoveAll(true);
	//delete cdashig;
	//cdashig = NULL;
	//}
	//
}

void
ProductgroupDataCollectionLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("ProductgroupRef")) {
			jsonToValue(&self, node, "ProductgroupRef", "ProductgroupRef");
		} else {
			
			ProductgroupRef* obj = static_cast<ProductgroupRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *cdashKey = "cdash";
	node = json_object_get_member(pJsonObject, cdashKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashProductRefElement> new_list;
			CdashProductRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashProductRefElement")) {
					jsonToValue(&inst, temp_json, "CdashProductRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			cdash = new_list;
		}
		
	}
	const gchar *cdashigKey = "cdashig";
	node = json_object_get_member(pJsonObject, cdashigKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashigProductRefElement> new_list;
			CdashigProductRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashigProductRefElement")) {
					jsonToValue(&inst, temp_json, "CdashigProductRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			cdashig = new_list;
		}
		
	}
}

ProductgroupDataCollectionLinks::ProductgroupDataCollectionLinks(char* json)
{
	this->fromJson(json);
}

char*
ProductgroupDataCollectionLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ProductgroupRef")) {
		ProductgroupRef obj = getSelf();
		node = converttoJson(&obj, "ProductgroupRef", "");
	}
	else {
		
		ProductgroupRef obj = static_cast<ProductgroupRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("CdashProductRefElement")) {
		list<CdashProductRefElement> new_list = static_cast<list <CdashProductRefElement> > (getCdash());
		node = converttoJson(&new_list, "CdashProductRefElement", "array");
	} else {
		node = json_node_alloc();
		list<CdashProductRefElement> new_list = static_cast<list <CdashProductRefElement> > (getCdash());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashProductRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashProductRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *cdashKey = "cdash";
	json_object_set_member(pJsonObject, cdashKey, node);
	if (isprimitive("CdashigProductRefElement")) {
		list<CdashigProductRefElement> new_list = static_cast<list <CdashigProductRefElement> > (getCdashig());
		node = converttoJson(&new_list, "CdashigProductRefElement", "array");
	} else {
		node = json_node_alloc();
		list<CdashigProductRefElement> new_list = static_cast<list <CdashigProductRefElement> > (getCdashig());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashigProductRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashigProductRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *cdashigKey = "cdashig";
	json_object_set_member(pJsonObject, cdashigKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

ProductgroupRef
ProductgroupDataCollectionLinks::getSelf()
{
	return self;
}

void
ProductgroupDataCollectionLinks::setSelf(ProductgroupRef  self)
{
	this->self = self;
}

std::list<CdashProductRefElement>
ProductgroupDataCollectionLinks::getCdash()
{
	return cdash;
}

void
ProductgroupDataCollectionLinks::setCdash(std::list <CdashProductRefElement> cdash)
{
	this->cdash = cdash;
}

std::list<CdashigProductRefElement>
ProductgroupDataCollectionLinks::getCdashig()
{
	return cdashig;
}

void
ProductgroupDataCollectionLinks::setCdashig(std::list <CdashigProductRefElement> cdashig)
{
	this->cdashig = cdashig;
}


