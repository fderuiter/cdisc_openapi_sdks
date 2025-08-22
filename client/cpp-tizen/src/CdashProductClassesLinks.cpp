#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashProductClassesLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashProductClassesLinks::CdashProductClassesLinks()
{
	//__init();
}

CdashProductClassesLinks::~CdashProductClassesLinks()
{
	//__cleanup();
}

void
CdashProductClassesLinks::__init()
{
	//self = new CdashProductClassesRef();
	//parentProduct = new CdashProductRef();
	//new std::list()std::list> classes;
}

void
CdashProductClassesLinks::__cleanup()
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
CdashProductClassesLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashProductClassesRef")) {
			jsonToValue(&self, node, "CdashProductClassesRef", "CdashProductClassesRef");
		} else {
			
			CdashProductClassesRef* obj = static_cast<CdashProductClassesRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentProductKey = "parentProduct";
	node = json_object_get_member(pJsonObject, parentProductKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashProductRef")) {
			jsonToValue(&parentProduct, node, "CdashProductRef", "CdashProductRef");
		} else {
			
			CdashProductRef* obj = static_cast<CdashProductRef*> (&parentProduct);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *classesKey = "classes";
	node = json_object_get_member(pJsonObject, classesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashClassRefElement> new_list;
			CdashClassRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashClassRefElement")) {
					jsonToValue(&inst, temp_json, "CdashClassRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			classes = new_list;
		}
		
	}
}

CdashProductClassesLinks::CdashProductClassesLinks(char* json)
{
	this->fromJson(json);
}

char*
CdashProductClassesLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashProductClassesRef")) {
		CdashProductClassesRef obj = getSelf();
		node = converttoJson(&obj, "CdashProductClassesRef", "");
	}
	else {
		
		CdashProductClassesRef obj = static_cast<CdashProductClassesRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("CdashProductRef")) {
		CdashProductRef obj = getParentProduct();
		node = converttoJson(&obj, "CdashProductRef", "");
	}
	else {
		
		CdashProductRef obj = static_cast<CdashProductRef> (getParentProduct());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentProductKey = "parentProduct";
	json_object_set_member(pJsonObject, parentProductKey, node);
	if (isprimitive("CdashClassRefElement")) {
		list<CdashClassRefElement> new_list = static_cast<list <CdashClassRefElement> > (getClasses());
		node = converttoJson(&new_list, "CdashClassRefElement", "array");
	} else {
		node = json_node_alloc();
		list<CdashClassRefElement> new_list = static_cast<list <CdashClassRefElement> > (getClasses());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashClassRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashClassRefElement obj = *it;
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

CdashProductClassesRef
CdashProductClassesLinks::getSelf()
{
	return self;
}

void
CdashProductClassesLinks::setSelf(CdashProductClassesRef  self)
{
	this->self = self;
}

CdashProductRef
CdashProductClassesLinks::getParentProduct()
{
	return parentProduct;
}

void
CdashProductClassesLinks::setParentProduct(CdashProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

std::list<CdashClassRefElement>
CdashProductClassesLinks::getClasses()
{
	return classes;
}

void
CdashProductClassesLinks::setClasses(std::list <CdashClassRefElement> classes)
{
	this->classes = classes;
}


