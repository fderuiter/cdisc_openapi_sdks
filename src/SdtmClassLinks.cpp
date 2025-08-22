#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SdtmClassLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SdtmClassLinks::SdtmClassLinks()
{
	//__init();
}

SdtmClassLinks::~SdtmClassLinks()
{
	//__cleanup();
}

void
SdtmClassLinks::__init()
{
	//self = new SdtmClassRef();
	//parentProduct = new SdtmProductRef();
	//parentClass = new SdtmClassRef();
	//new std::list()std::list> subclasses;
	//priorVersion = new SdtmClassRef();
}

void
SdtmClassLinks::__cleanup()
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
SdtmClassLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmClassRef")) {
			jsonToValue(&self, node, "SdtmClassRef", "SdtmClassRef");
		} else {
			
			SdtmClassRef* obj = static_cast<SdtmClassRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentProductKey = "parentProduct";
	node = json_object_get_member(pJsonObject, parentProductKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmProductRef")) {
			jsonToValue(&parentProduct, node, "SdtmProductRef", "SdtmProductRef");
		} else {
			
			SdtmProductRef* obj = static_cast<SdtmProductRef*> (&parentProduct);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentClassKey = "parentClass";
	node = json_object_get_member(pJsonObject, parentClassKey);
	if (node !=NULL) {
	

		if (isprimitive("SdtmClassRef")) {
			jsonToValue(&parentClass, node, "SdtmClassRef", "SdtmClassRef");
		} else {
			
			SdtmClassRef* obj = static_cast<SdtmClassRef*> (&parentClass);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *subclassesKey = "subclasses";
	node = json_object_get_member(pJsonObject, subclassesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmClassRefSubclass> new_list;
			SdtmClassRefSubclass inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmClassRefSubclass")) {
					jsonToValue(&inst, temp_json, "SdtmClassRefSubclass", "");
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
	

		if (isprimitive("SdtmClassRef")) {
			jsonToValue(&priorVersion, node, "SdtmClassRef", "SdtmClassRef");
		} else {
			
			SdtmClassRef* obj = static_cast<SdtmClassRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

SdtmClassLinks::SdtmClassLinks(char* json)
{
	this->fromJson(json);
}

char*
SdtmClassLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SdtmClassRef")) {
		SdtmClassRef obj = getSelf();
		node = converttoJson(&obj, "SdtmClassRef", "");
	}
	else {
		
		SdtmClassRef obj = static_cast<SdtmClassRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("SdtmProductRef")) {
		SdtmProductRef obj = getParentProduct();
		node = converttoJson(&obj, "SdtmProductRef", "");
	}
	else {
		
		SdtmProductRef obj = static_cast<SdtmProductRef> (getParentProduct());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentProductKey = "parentProduct";
	json_object_set_member(pJsonObject, parentProductKey, node);
	if (isprimitive("SdtmClassRef")) {
		SdtmClassRef obj = getParentClass();
		node = converttoJson(&obj, "SdtmClassRef", "");
	}
	else {
		
		SdtmClassRef obj = static_cast<SdtmClassRef> (getParentClass());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentClassKey = "parentClass";
	json_object_set_member(pJsonObject, parentClassKey, node);
	if (isprimitive("SdtmClassRefSubclass")) {
		list<SdtmClassRefSubclass> new_list = static_cast<list <SdtmClassRefSubclass> > (getSubclasses());
		node = converttoJson(&new_list, "SdtmClassRefSubclass", "array");
	} else {
		node = json_node_alloc();
		list<SdtmClassRefSubclass> new_list = static_cast<list <SdtmClassRefSubclass> > (getSubclasses());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmClassRefSubclass>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmClassRefSubclass obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *subclassesKey = "subclasses";
	json_object_set_member(pJsonObject, subclassesKey, node);
	if (isprimitive("SdtmClassRef")) {
		SdtmClassRef obj = getPriorVersion();
		node = converttoJson(&obj, "SdtmClassRef", "");
	}
	else {
		
		SdtmClassRef obj = static_cast<SdtmClassRef> (getPriorVersion());
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

SdtmClassRef
SdtmClassLinks::getSelf()
{
	return self;
}

void
SdtmClassLinks::setSelf(SdtmClassRef  self)
{
	this->self = self;
}

SdtmProductRef
SdtmClassLinks::getParentProduct()
{
	return parentProduct;
}

void
SdtmClassLinks::setParentProduct(SdtmProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

SdtmClassRef
SdtmClassLinks::getParentClass()
{
	return parentClass;
}

void
SdtmClassLinks::setParentClass(SdtmClassRef  parentClass)
{
	this->parentClass = parentClass;
}

std::list<SdtmClassRefSubclass>
SdtmClassLinks::getSubclasses()
{
	return subclasses;
}

void
SdtmClassLinks::setSubclasses(std::list <SdtmClassRefSubclass> subclasses)
{
	this->subclasses = subclasses;
}

SdtmClassRef
SdtmClassLinks::getPriorVersion()
{
	return priorVersion;
}

void
SdtmClassLinks::setPriorVersion(SdtmClassRef  priorVersion)
{
	this->priorVersion = priorVersion;
}


