#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashigScenarioFieldsLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashigScenarioFieldsLinks::CdashigScenarioFieldsLinks()
{
	//__init();
}

CdashigScenarioFieldsLinks::~CdashigScenarioFieldsLinks()
{
	//__cleanup();
}

void
CdashigScenarioFieldsLinks::__init()
{
	//self = new CdashigScenarioFieldsRef();
	//parentProduct = new CdashigProductRef();
	//parentClass = new CdashigClassRef();
	//parentDomain = new CdashigDomainRef();
	//new std::list()std::list> fields;
}

void
CdashigScenarioFieldsLinks::__cleanup()
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
	//if(parentDomain != NULL) {
	//
	//delete parentDomain;
	//parentDomain = NULL;
	//}
	//if(fields != NULL) {
	//fields.RemoveAll(true);
	//delete fields;
	//fields = NULL;
	//}
	//
}

void
CdashigScenarioFieldsLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigScenarioFieldsRef")) {
			jsonToValue(&self, node, "CdashigScenarioFieldsRef", "CdashigScenarioFieldsRef");
		} else {
			
			CdashigScenarioFieldsRef* obj = static_cast<CdashigScenarioFieldsRef*> (&self);
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
	const gchar *parentDomainKey = "parentDomain";
	node = json_object_get_member(pJsonObject, parentDomainKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigDomainRef")) {
			jsonToValue(&parentDomain, node, "CdashigDomainRef", "CdashigDomainRef");
		} else {
			
			CdashigDomainRef* obj = static_cast<CdashigDomainRef*> (&parentDomain);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *fieldsKey = "fields";
	node = json_object_get_member(pJsonObject, fieldsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashigScenarioFieldRefElement> new_list;
			CdashigScenarioFieldRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashigScenarioFieldRefElement")) {
					jsonToValue(&inst, temp_json, "CdashigScenarioFieldRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			fields = new_list;
		}
		
	}
}

CdashigScenarioFieldsLinks::CdashigScenarioFieldsLinks(char* json)
{
	this->fromJson(json);
}

char*
CdashigScenarioFieldsLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigScenarioFieldsRef")) {
		CdashigScenarioFieldsRef obj = getSelf();
		node = converttoJson(&obj, "CdashigScenarioFieldsRef", "");
	}
	else {
		
		CdashigScenarioFieldsRef obj = static_cast<CdashigScenarioFieldsRef> (getSelf());
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
	if (isprimitive("CdashigDomainRef")) {
		CdashigDomainRef obj = getParentDomain();
		node = converttoJson(&obj, "CdashigDomainRef", "");
	}
	else {
		
		CdashigDomainRef obj = static_cast<CdashigDomainRef> (getParentDomain());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentDomainKey = "parentDomain";
	json_object_set_member(pJsonObject, parentDomainKey, node);
	if (isprimitive("CdashigScenarioFieldRefElement")) {
		list<CdashigScenarioFieldRefElement> new_list = static_cast<list <CdashigScenarioFieldRefElement> > (getFields());
		node = converttoJson(&new_list, "CdashigScenarioFieldRefElement", "array");
	} else {
		node = json_node_alloc();
		list<CdashigScenarioFieldRefElement> new_list = static_cast<list <CdashigScenarioFieldRefElement> > (getFields());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashigScenarioFieldRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashigScenarioFieldRefElement obj = *it;
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

CdashigScenarioFieldsRef
CdashigScenarioFieldsLinks::getSelf()
{
	return self;
}

void
CdashigScenarioFieldsLinks::setSelf(CdashigScenarioFieldsRef  self)
{
	this->self = self;
}

CdashigProductRef
CdashigScenarioFieldsLinks::getParentProduct()
{
	return parentProduct;
}

void
CdashigScenarioFieldsLinks::setParentProduct(CdashigProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

CdashigClassRef
CdashigScenarioFieldsLinks::getParentClass()
{
	return parentClass;
}

void
CdashigScenarioFieldsLinks::setParentClass(CdashigClassRef  parentClass)
{
	this->parentClass = parentClass;
}

CdashigDomainRef
CdashigScenarioFieldsLinks::getParentDomain()
{
	return parentDomain;
}

void
CdashigScenarioFieldsLinks::setParentDomain(CdashigDomainRef  parentDomain)
{
	this->parentDomain = parentDomain;
}

std::list<CdashigScenarioFieldRefElement>
CdashigScenarioFieldsLinks::getFields()
{
	return fields;
}

void
CdashigScenarioFieldsLinks::setFields(std::list <CdashigScenarioFieldRefElement> fields)
{
	this->fields = fields;
}


