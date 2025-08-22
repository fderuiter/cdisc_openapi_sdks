#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SendigClassLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SendigClassLinks::SendigClassLinks()
{
	//__init();
}

SendigClassLinks::~SendigClassLinks()
{
	//__cleanup();
}

void
SendigClassLinks::__init()
{
	//self = new SendigClassRef();
	//modelClass = new SdtmClassRef();
	//parentProduct = new SendigProductRef();
	//parentClass = new SendigClassRef();
	//new std::list()std::list> subclasses;
	//priorVersion = new SendigClassRef();
}

void
SendigClassLinks::__cleanup()
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
SendigClassLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigClassRef")) {
			jsonToValue(&self, node, "SendigClassRef", "SendigClassRef");
		} else {
			
			SendigClassRef* obj = static_cast<SendigClassRef*> (&self);
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
	

		if (isprimitive("SendigProductRef")) {
			jsonToValue(&parentProduct, node, "SendigProductRef", "SendigProductRef");
		} else {
			
			SendigProductRef* obj = static_cast<SendigProductRef*> (&parentProduct);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentClassKey = "parentClass";
	node = json_object_get_member(pJsonObject, parentClassKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigClassRef")) {
			jsonToValue(&parentClass, node, "SendigClassRef", "SendigClassRef");
		} else {
			
			SendigClassRef* obj = static_cast<SendigClassRef*> (&parentClass);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *subclassesKey = "subclasses";
	node = json_object_get_member(pJsonObject, subclassesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SendigClassRefSubclass> new_list;
			SendigClassRefSubclass inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SendigClassRefSubclass")) {
					jsonToValue(&inst, temp_json, "SendigClassRefSubclass", "");
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
	

		if (isprimitive("SendigClassRef")) {
			jsonToValue(&priorVersion, node, "SendigClassRef", "SendigClassRef");
		} else {
			
			SendigClassRef* obj = static_cast<SendigClassRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

SendigClassLinks::SendigClassLinks(char* json)
{
	this->fromJson(json);
}

char*
SendigClassLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SendigClassRef")) {
		SendigClassRef obj = getSelf();
		node = converttoJson(&obj, "SendigClassRef", "");
	}
	else {
		
		SendigClassRef obj = static_cast<SendigClassRef> (getSelf());
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
	if (isprimitive("SendigProductRef")) {
		SendigProductRef obj = getParentProduct();
		node = converttoJson(&obj, "SendigProductRef", "");
	}
	else {
		
		SendigProductRef obj = static_cast<SendigProductRef> (getParentProduct());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentProductKey = "parentProduct";
	json_object_set_member(pJsonObject, parentProductKey, node);
	if (isprimitive("SendigClassRef")) {
		SendigClassRef obj = getParentClass();
		node = converttoJson(&obj, "SendigClassRef", "");
	}
	else {
		
		SendigClassRef obj = static_cast<SendigClassRef> (getParentClass());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentClassKey = "parentClass";
	json_object_set_member(pJsonObject, parentClassKey, node);
	if (isprimitive("SendigClassRefSubclass")) {
		list<SendigClassRefSubclass> new_list = static_cast<list <SendigClassRefSubclass> > (getSubclasses());
		node = converttoJson(&new_list, "SendigClassRefSubclass", "array");
	} else {
		node = json_node_alloc();
		list<SendigClassRefSubclass> new_list = static_cast<list <SendigClassRefSubclass> > (getSubclasses());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SendigClassRefSubclass>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SendigClassRefSubclass obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *subclassesKey = "subclasses";
	json_object_set_member(pJsonObject, subclassesKey, node);
	if (isprimitive("SendigClassRef")) {
		SendigClassRef obj = getPriorVersion();
		node = converttoJson(&obj, "SendigClassRef", "");
	}
	else {
		
		SendigClassRef obj = static_cast<SendigClassRef> (getPriorVersion());
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

SendigClassRef
SendigClassLinks::getSelf()
{
	return self;
}

void
SendigClassLinks::setSelf(SendigClassRef  self)
{
	this->self = self;
}

SdtmClassRef
SendigClassLinks::getModelClass()
{
	return modelClass;
}

void
SendigClassLinks::setModelClass(SdtmClassRef  modelClass)
{
	this->modelClass = modelClass;
}

SendigProductRef
SendigClassLinks::getParentProduct()
{
	return parentProduct;
}

void
SendigClassLinks::setParentProduct(SendigProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

SendigClassRef
SendigClassLinks::getParentClass()
{
	return parentClass;
}

void
SendigClassLinks::setParentClass(SendigClassRef  parentClass)
{
	this->parentClass = parentClass;
}

std::list<SendigClassRefSubclass>
SendigClassLinks::getSubclasses()
{
	return subclasses;
}

void
SendigClassLinks::setSubclasses(std::list <SendigClassRefSubclass> subclasses)
{
	this->subclasses = subclasses;
}

SendigClassRef
SendigClassLinks::getPriorVersion()
{
	return priorVersion;
}

void
SendigClassLinks::setPriorVersion(SendigClassRef  priorVersion)
{
	this->priorVersion = priorVersion;
}


