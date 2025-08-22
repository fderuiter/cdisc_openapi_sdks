#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashDomainFieldsLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashDomainFieldsLinks::CdashDomainFieldsLinks()
{
	//__init();
}

CdashDomainFieldsLinks::~CdashDomainFieldsLinks()
{
	//__cleanup();
}

void
CdashDomainFieldsLinks::__init()
{
	//self = new CdashDomainFieldsRef();
	//parentProduct = new CdashProductRef();
	//parentClass = new CdashClassRef();
	//new std::list()std::list> fields;
}

void
CdashDomainFieldsLinks::__cleanup()
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
	//if(parentClass != NULL) {
	//
	//delete parentClass;
	//parentClass = NULL;
	//}
	//if(fields != NULL) {
	//fields.RemoveAll(true);
	//delete fields;
	//fields = NULL;
	//}
	//
}

void
CdashDomainFieldsLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashDomainFieldsRef")) {
			jsonToValue(&self, node, "CdashDomainFieldsRef", "CdashDomainFieldsRef");
		} else {
			
			CdashDomainFieldsRef* obj = static_cast<CdashDomainFieldsRef*> (&self);
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
	const gchar *parentClassKey = "parentClass";
	node = json_object_get_member(pJsonObject, parentClassKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashClassRef")) {
			jsonToValue(&parentClass, node, "CdashClassRef", "CdashClassRef");
		} else {
			
			CdashClassRef* obj = static_cast<CdashClassRef*> (&parentClass);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *fieldsKey = "fields";
	node = json_object_get_member(pJsonObject, fieldsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashDomainFieldRefElement> new_list;
			CdashDomainFieldRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashDomainFieldRefElement")) {
					jsonToValue(&inst, temp_json, "CdashDomainFieldRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			fields = new_list;
		}
		
	}
}

CdashDomainFieldsLinks::CdashDomainFieldsLinks(char* json)
{
	this->fromJson(json);
}

char*
CdashDomainFieldsLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashDomainFieldsRef")) {
		CdashDomainFieldsRef obj = getSelf();
		node = converttoJson(&obj, "CdashDomainFieldsRef", "");
	}
	else {
		
		CdashDomainFieldsRef obj = static_cast<CdashDomainFieldsRef> (getSelf());
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
	if (isprimitive("CdashClassRef")) {
		CdashClassRef obj = getParentClass();
		node = converttoJson(&obj, "CdashClassRef", "");
	}
	else {
		
		CdashClassRef obj = static_cast<CdashClassRef> (getParentClass());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentClassKey = "parentClass";
	json_object_set_member(pJsonObject, parentClassKey, node);
	if (isprimitive("CdashDomainFieldRefElement")) {
		list<CdashDomainFieldRefElement> new_list = static_cast<list <CdashDomainFieldRefElement> > (getFields());
		node = converttoJson(&new_list, "CdashDomainFieldRefElement", "array");
	} else {
		node = json_node_alloc();
		list<CdashDomainFieldRefElement> new_list = static_cast<list <CdashDomainFieldRefElement> > (getFields());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashDomainFieldRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashDomainFieldRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *fieldsKey = "fields";
	json_object_set_member(pJsonObject, fieldsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

CdashDomainFieldsRef
CdashDomainFieldsLinks::getSelf()
{
	return self;
}

void
CdashDomainFieldsLinks::setSelf(CdashDomainFieldsRef  self)
{
	this->self = self;
}

CdashProductRef
CdashDomainFieldsLinks::getParentProduct()
{
	return parentProduct;
}

void
CdashDomainFieldsLinks::setParentProduct(CdashProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

CdashClassRef
CdashDomainFieldsLinks::getParentClass()
{
	return parentClass;
}

void
CdashDomainFieldsLinks::setParentClass(CdashClassRef  parentClass)
{
	this->parentClass = parentClass;
}

std::list<CdashDomainFieldRefElement>
CdashDomainFieldsLinks::getFields()
{
	return fields;
}

void
CdashDomainFieldsLinks::setFields(std::list <CdashDomainFieldRefElement> fields)
{
	this->fields = fields;
}


