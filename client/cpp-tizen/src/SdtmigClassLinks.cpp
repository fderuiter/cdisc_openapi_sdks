#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmigClassLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmigClassLinks::SdtmigClassLinks()
{
	//__init();
}

SdtmigClassLinks::~SdtmigClassLinks()
{
	//__cleanup();
}

void
SdtmigClassLinks::__init()
{
	//self = new SdtmigClassRef();
	//modelClass = new SdtmClassRef();
	//parentProduct = new SdtmigProductRef();
	//parentClass = new SdtmigClassRef();
	//new std::list()std::list> subclasses;
	//priorVersion = new SdtmigClassRef();
}

void
SdtmigClassLinks::__cleanup()
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
SdtmigClassLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigClassRef")) {
			jsonToValue(&self, node, "SdtmigClassRef", "SdtmigClassRef");
		} else {
			
			SdtmigClassRef* obj = static_cast<SdtmigClassRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *modelClassKey = "modelClass";
	node = json_object_get_member(pJsonObject, modelClassKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmClassRef")) {
			jsonToValue(&modelClass, node, "SdtmClassRef", "SdtmClassRef");
		} else {
			
			SdtmClassRef* obj = static_cast<SdtmClassRef*> (&modelClass);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentProductKey = "parentProduct";
	node = json_object_get_member(pJsonObject, parentProductKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigProductRef")) {
			jsonToValue(&parentProduct, node, "SdtmigProductRef", "SdtmigProductRef");
		} else {
			
			SdtmigProductRef* obj = static_cast<SdtmigProductRef*> (&parentProduct);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentClassKey = "parentClass";
	node = json_object_get_member(pJsonObject, parentClassKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmigClassRef")) {
			jsonToValue(&parentClass, node, "SdtmigClassRef", "SdtmigClassRef");
		} else {
			
			SdtmigClassRef* obj = static_cast<SdtmigClassRef*> (&parentClass);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *subclassesKey = "subclasses";
	node = json_object_get_member(pJsonObject, subclassesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmigClassRefSubclass> new_list;
			SdtmigClassRefSubclass inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmigClassRefSubclass")) {
					jsonToValue(&inst, temp_json, "SdtmigClassRefSubclass", "");
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
	

		if (isprimitive("SdtmigClassRef")) {
			jsonToValue(&priorVersion, node, "SdtmigClassRef", "SdtmigClassRef");
		} else {
			
			SdtmigClassRef* obj = static_cast<SdtmigClassRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

SdtmigClassLinks::SdtmigClassLinks(char* json)
{
	this->fromJson(json);
}

char*
SdtmigClassLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmigClassRef")) {
		SdtmigClassRef obj = getSelf();
		node = converttoJson(&obj, "SdtmigClassRef", "");
	}
	else {
		
		SdtmigClassRef obj = static_cast<SdtmigClassRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("SdtmClassRef")) {
		SdtmClassRef obj = getModelClass();
		node = converttoJson(&obj, "SdtmClassRef", "");
	}
	else {
		
		SdtmClassRef obj = static_cast<SdtmClassRef> (getModelClass());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *modelClassKey = "modelClass";
	json_object_set_member(pJsonObject, modelClassKey, node);
	if (isprimitive("SdtmigProductRef")) {
		SdtmigProductRef obj = getParentProduct();
		node = converttoJson(&obj, "SdtmigProductRef", "");
	}
	else {
		
		SdtmigProductRef obj = static_cast<SdtmigProductRef> (getParentProduct());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentProductKey = "parentProduct";
	json_object_set_member(pJsonObject, parentProductKey, node);
	if (isprimitive("SdtmigClassRef")) {
		SdtmigClassRef obj = getParentClass();
		node = converttoJson(&obj, "SdtmigClassRef", "");
	}
	else {
		
		SdtmigClassRef obj = static_cast<SdtmigClassRef> (getParentClass());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentClassKey = "parentClass";
	json_object_set_member(pJsonObject, parentClassKey, node);
	if (isprimitive("SdtmigClassRefSubclass")) {
		list<SdtmigClassRefSubclass> new_list = static_cast<list <SdtmigClassRefSubclass> > (getSubclasses());
		node = converttoJson(&new_list, "SdtmigClassRefSubclass", "array");
	} else {
		node = json_node_alloc();
		list<SdtmigClassRefSubclass> new_list = static_cast<list <SdtmigClassRefSubclass> > (getSubclasses());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmigClassRefSubclass>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmigClassRefSubclass obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *subclassesKey = "subclasses";
	json_object_set_member(pJsonObject, subclassesKey, node);
	if (isprimitive("SdtmigClassRef")) {
		SdtmigClassRef obj = getPriorVersion();
		node = converttoJson(&obj, "SdtmigClassRef", "");
	}
	else {
		
		SdtmigClassRef obj = static_cast<SdtmigClassRef> (getPriorVersion());
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

SdtmigClassRef
SdtmigClassLinks::getSelf()
{
	return self;
}

void
SdtmigClassLinks::setSelf(SdtmigClassRef  self)
{
	this->self = self;
}

SdtmClassRef
SdtmigClassLinks::getModelClass()
{
	return modelClass;
}

void
SdtmigClassLinks::setModelClass(SdtmClassRef  modelClass)
{
	this->modelClass = modelClass;
}

SdtmigProductRef
SdtmigClassLinks::getParentProduct()
{
	return parentProduct;
}

void
SdtmigClassLinks::setParentProduct(SdtmigProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

SdtmigClassRef
SdtmigClassLinks::getParentClass()
{
	return parentClass;
}

void
SdtmigClassLinks::setParentClass(SdtmigClassRef  parentClass)
{
	this->parentClass = parentClass;
}

std::list<SdtmigClassRefSubclass>
SdtmigClassLinks::getSubclasses()
{
	return subclasses;
}

void
SdtmigClassLinks::setSubclasses(std::list <SdtmigClassRefSubclass> subclasses)
{
	this->subclasses = subclasses;
}

SdtmigClassRef
SdtmigClassLinks::getPriorVersion()
{
	return priorVersion;
}

void
SdtmigClassLinks::setPriorVersion(SdtmigClassRef  priorVersion)
{
	this->priorVersion = priorVersion;
}


