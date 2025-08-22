#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ProductgroupTerminologyLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ProductgroupTerminologyLinks::ProductgroupTerminologyLinks()
{
	//__init();
}

ProductgroupTerminologyLinks::~ProductgroupTerminologyLinks()
{
	//__cleanup();
}

void
ProductgroupTerminologyLinks::__init()
{
	//self = new ProductgroupRef();
	//new std::list()std::list> packages;
}

void
ProductgroupTerminologyLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(packages != NULL) {
	//packages.RemoveAll(true);
	//delete packages;
	//packages = NULL;
	//}
	//
}

void
ProductgroupTerminologyLinks::fromJson(char* jsonStr)
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
	const gchar *packagesKey = "packages";
	node = json_object_get_member(pJsonObject, packagesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CtPackageRefElement> new_list;
			CtPackageRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CtPackageRefElement")) {
					jsonToValue(&inst, temp_json, "CtPackageRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			packages = new_list;
		}
		
	}
}

ProductgroupTerminologyLinks::ProductgroupTerminologyLinks(char* json)
{
	this->fromJson(json);
}

char*
ProductgroupTerminologyLinks::toJson()
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
	if (isprimitive("CtPackageRefElement")) {
		list<CtPackageRefElement> new_list = static_cast<list <CtPackageRefElement> > (getPackages());
		node = converttoJson(&new_list, "CtPackageRefElement", "array");
	} else {
		node = json_node_alloc();
		list<CtPackageRefElement> new_list = static_cast<list <CtPackageRefElement> > (getPackages());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CtPackageRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CtPackageRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *packagesKey = "packages";
	json_object_set_member(pJsonObject, packagesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

ProductgroupRef
ProductgroupTerminologyLinks::getSelf()
{
	return self;
}

void
ProductgroupTerminologyLinks::setSelf(ProductgroupRef  self)
{
	this->self = self;
}

std::list<CtPackageRefElement>
ProductgroupTerminologyLinks::getPackages()
{
	return packages;
}

void
ProductgroupTerminologyLinks::setPackages(std::list <CtPackageRefElement> packages)
{
	this->packages = packages;
}


