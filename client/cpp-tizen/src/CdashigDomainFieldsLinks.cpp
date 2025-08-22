#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashigDomainFieldsLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashigDomainFieldsLinks::CdashigDomainFieldsLinks()
{
	//__init();
}

CdashigDomainFieldsLinks::~CdashigDomainFieldsLinks()
{
	//__cleanup();
}

void
CdashigDomainFieldsLinks::__init()
{
	//self = new CdashigDomainFieldsRef();
	//parentProduct = new CdashigProductRef();
	//parentClass = new CdashigClassRef();
	//new std::list()std::list> fields;
}

void
CdashigDomainFieldsLinks::__cleanup()
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
CdashigDomainFieldsLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigDomainFieldsRef")) {
			jsonToValue(&self, node, "CdashigDomainFieldsRef", "CdashigDomainFieldsRef");
		} else {
			
			CdashigDomainFieldsRef* obj = static_cast<CdashigDomainFieldsRef*> (&self);
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
	const gchar *parentClassKey = "parentClass";
	node = json_object_get_member(pJsonObject, parentClassKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigClassRef")) {
			jsonToValue(&parentClass, node, "CdashigClassRef", "CdashigClassRef");
		} else {
			
			CdashigClassRef* obj = static_cast<CdashigClassRef*> (&parentClass);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *fieldsKey = "fields";
	node = json_object_get_member(pJsonObject, fieldsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashigDomainFieldRefElement> new_list;
			CdashigDomainFieldRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashigDomainFieldRefElement")) {
					jsonToValue(&inst, temp_json, "CdashigDomainFieldRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			fields = new_list;
		}
		
	}
}

CdashigDomainFieldsLinks::CdashigDomainFieldsLinks(char* json)
{
	this->fromJson(json);
}

char*
CdashigDomainFieldsLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigDomainFieldsRef")) {
		CdashigDomainFieldsRef obj = getSelf();
		node = converttoJson(&obj, "CdashigDomainFieldsRef", "");
	}
	else {
		
		CdashigDomainFieldsRef obj = static_cast<CdashigDomainFieldsRef> (getSelf());
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
	if (isprimitive("CdashigClassRef")) {
		CdashigClassRef obj = getParentClass();
		node = converttoJson(&obj, "CdashigClassRef", "");
	}
	else {
		
		CdashigClassRef obj = static_cast<CdashigClassRef> (getParentClass());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentClassKey = "parentClass";
	json_object_set_member(pJsonObject, parentClassKey, node);
	if (isprimitive("CdashigDomainFieldRefElement")) {
		list<CdashigDomainFieldRefElement> new_list = static_cast<list <CdashigDomainFieldRefElement> > (getFields());
		node = converttoJson(&new_list, "CdashigDomainFieldRefElement", "array");
	} else {
		node = json_node_alloc();
		list<CdashigDomainFieldRefElement> new_list = static_cast<list <CdashigDomainFieldRefElement> > (getFields());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashigDomainFieldRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashigDomainFieldRefElement obj = *it;
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

CdashigDomainFieldsRef
CdashigDomainFieldsLinks::getSelf()
{
	return self;
}

void
CdashigDomainFieldsLinks::setSelf(CdashigDomainFieldsRef  self)
{
	this->self = self;
}

CdashigProductRef
CdashigDomainFieldsLinks::getParentProduct()
{
	return parentProduct;
}

void
CdashigDomainFieldsLinks::setParentProduct(CdashigProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

CdashigClassRef
CdashigDomainFieldsLinks::getParentClass()
{
	return parentClass;
}

void
CdashigDomainFieldsLinks::setParentClass(CdashigClassRef  parentClass)
{
	this->parentClass = parentClass;
}

std::list<CdashigDomainFieldRefElement>
CdashigDomainFieldsLinks::getFields()
{
	return fields;
}

void
CdashigDomainFieldsLinks::setFields(std::list <CdashigDomainFieldRefElement> fields)
{
	this->fields = fields;
}


