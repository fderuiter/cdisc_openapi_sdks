#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashigClassLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashigClassLinks::CdashigClassLinks()
{
	//__init();
}

CdashigClassLinks::~CdashigClassLinks()
{
	//__cleanup();
}

void
CdashigClassLinks::__init()
{
	//self = new CdashigClassRef();
	//modelClass = new CdashClassRef();
	//parentProduct = new CdashigProductRef();
	//parentClass = new CdashigClassRef();
	//new std::list()std::list> subclasses;
	//priorVersion = new CdashigClassRef();
}

void
CdashigClassLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(modelClass != NULL) {
	//
	//delete modelClass;
	//modelClass = NULL;
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
	//if(subclasses != NULL) {
	//subclasses.RemoveAll(true);
	//delete subclasses;
	//subclasses = NULL;
	//}
	//if(priorVersion != NULL) {
	//
	//delete priorVersion;
	//priorVersion = NULL;
	//}
	//
}

void
CdashigClassLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigClassRef")) {
			jsonToValue(&self, node, "CdashigClassRef", "CdashigClassRef");
		} else {
			
			CdashigClassRef* obj = static_cast<CdashigClassRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *modelClassKey = "modelClass";
	node = json_object_get_member(pJsonObject, modelClassKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashClassRef")) {
			jsonToValue(&modelClass, node, "CdashClassRef", "CdashClassRef");
		} else {
			
			CdashClassRef* obj = static_cast<CdashClassRef*> (&modelClass);
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
	const gchar *subclassesKey = "subclasses";
	node = json_object_get_member(pJsonObject, subclassesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashigClassRefSubclass> new_list;
			CdashigClassRefSubclass inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashigClassRefSubclass")) {
					jsonToValue(&inst, temp_json, "CdashigClassRefSubclass", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			subclasses = new_list;
		}
		
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigClassRef")) {
			jsonToValue(&priorVersion, node, "CdashigClassRef", "CdashigClassRef");
		} else {
			
			CdashigClassRef* obj = static_cast<CdashigClassRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

CdashigClassLinks::CdashigClassLinks(char* json)
{
	this->fromJson(json);
}

char*
CdashigClassLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigClassRef")) {
		CdashigClassRef obj = getSelf();
		node = converttoJson(&obj, "CdashigClassRef", "");
	}
	else {
		
		CdashigClassRef obj = static_cast<CdashigClassRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("CdashClassRef")) {
		CdashClassRef obj = getModelClass();
		node = converttoJson(&obj, "CdashClassRef", "");
	}
	else {
		
		CdashClassRef obj = static_cast<CdashClassRef> (getModelClass());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *modelClassKey = "modelClass";
	json_object_set_member(pJsonObject, modelClassKey, node);
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
	if (isprimitive("CdashigClassRefSubclass")) {
		list<CdashigClassRefSubclass> new_list = static_cast<list <CdashigClassRefSubclass> > (getSubclasses());
		node = converttoJson(&new_list, "CdashigClassRefSubclass", "array");
	} else {
		node = json_node_alloc();
		list<CdashigClassRefSubclass> new_list = static_cast<list <CdashigClassRefSubclass> > (getSubclasses());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashigClassRefSubclass>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashigClassRefSubclass obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *subclassesKey = "subclasses";
	json_object_set_member(pJsonObject, subclassesKey, node);
	if (isprimitive("CdashigClassRef")) {
		CdashigClassRef obj = getPriorVersion();
		node = converttoJson(&obj, "CdashigClassRef", "");
	}
	else {
		
		CdashigClassRef obj = static_cast<CdashigClassRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

CdashigClassRef
CdashigClassLinks::getSelf()
{
	return self;
}

void
CdashigClassLinks::setSelf(CdashigClassRef  self)
{
	this->self = self;
}

CdashClassRef
CdashigClassLinks::getModelClass()
{
	return modelClass;
}

void
CdashigClassLinks::setModelClass(CdashClassRef  modelClass)
{
	this->modelClass = modelClass;
}

CdashigProductRef
CdashigClassLinks::getParentProduct()
{
	return parentProduct;
}

void
CdashigClassLinks::setParentProduct(CdashigProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

CdashigClassRef
CdashigClassLinks::getParentClass()
{
	return parentClass;
}

void
CdashigClassLinks::setParentClass(CdashigClassRef  parentClass)
{
	this->parentClass = parentClass;
}

std::list<CdashigClassRefSubclass>
CdashigClassLinks::getSubclasses()
{
	return subclasses;
}

void
CdashigClassLinks::setSubclasses(std::list <CdashigClassRefSubclass> subclasses)
{
	this->subclasses = subclasses;
}

CdashigClassRef
CdashigClassLinks::getPriorVersion()
{
	return priorVersion;
}

void
CdashigClassLinks::setPriorVersion(CdashigClassRef  priorVersion)
{
	this->priorVersion = priorVersion;
}


