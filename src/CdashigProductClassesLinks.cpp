#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashigProductClassesLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashigProductClassesLinks::CdashigProductClassesLinks()
{
	//__init();
}

CdashigProductClassesLinks::~CdashigProductClassesLinks()
{
	//__cleanup();
}

void
CdashigProductClassesLinks::__init()
{
	//self = new CdashigProductClassesRef();
	//parentProduct = new CdashigProductRef();
	//new std::list()std::list> classes;
}

void
CdashigProductClassesLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(parentProduct != NULL) {
	//
	//delete parentProduct;
	//parentProduct = NULL;
	//}
	//if(classes != NULL) {
	//classes.RemoveAll(true);
	//delete classes;
	//classes = NULL;
	//}
	//
}

void
CdashigProductClassesLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigProductClassesRef")) {
			jsonToValue(&self, node, "CdashigProductClassesRef", "CdashigProductClassesRef");
		} else {
			
			CdashigProductClassesRef* obj = static_cast<CdashigProductClassesRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentProductKey = "parentProduct";
	node = json_object_get_member(pJsonObject, parentProductKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigProductRef")) {
			jsonToValue(&parentProduct, node, "CdashigProductRef", "CdashigProductRef");
		} else {
			
			CdashigProductRef* obj = static_cast<CdashigProductRef*> (&parentProduct);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *classesKey = "classes";
	node = json_object_get_member(pJsonObject, classesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashigClassRefElement> new_list;
			CdashigClassRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashigClassRefElement")) {
					jsonToValue(&inst, temp_json, "CdashigClassRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			classes = new_list;
		}
		
	}
}

CdashigProductClassesLinks::CdashigProductClassesLinks(char* json)
{
	this->fromJson(json);
}

char*
CdashigProductClassesLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigProductClassesRef")) {
		CdashigProductClassesRef obj = getSelf();
		node = converttoJson(&obj, "CdashigProductClassesRef", "");
	}
	else {
		
		CdashigProductClassesRef obj = static_cast<CdashigProductClassesRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("CdashigProductRef")) {
		CdashigProductRef obj = getParentProduct();
		node = converttoJson(&obj, "CdashigProductRef", "");
	}
	else {
		
		CdashigProductRef obj = static_cast<CdashigProductRef> (getParentProduct());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentProductKey = "parentProduct";
	json_object_set_member(pJsonObject, parentProductKey, node);
	if (isprimitive("CdashigClassRefElement")) {
		list<CdashigClassRefElement> new_list = static_cast<list <CdashigClassRefElement> > (getClasses());
		node = converttoJson(&new_list, "CdashigClassRefElement", "array");
	} else {
		node = json_node_alloc();
		list<CdashigClassRefElement> new_list = static_cast<list <CdashigClassRefElement> > (getClasses());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashigClassRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashigClassRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *classesKey = "classes";
	json_object_set_member(pJsonObject, classesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

CdashigProductClassesRef
CdashigProductClassesLinks::getSelf()
{
	return self;
}

void
CdashigProductClassesLinks::setSelf(CdashigProductClassesRef  self)
{
	this->self = self;
}

CdashigProductRef
CdashigProductClassesLinks::getParentProduct()
{
	return parentProduct;
}

void
CdashigProductClassesLinks::setParentProduct(CdashigProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

std::list<CdashigClassRefElement>
CdashigProductClassesLinks::getClasses()
{
	return classes;
}

void
CdashigProductClassesLinks::setClasses(std::list <CdashigClassRefElement> classes)
{
	this->classes = classes;
}


