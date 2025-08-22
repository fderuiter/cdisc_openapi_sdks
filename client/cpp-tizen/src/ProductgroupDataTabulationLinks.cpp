#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ProductgroupDataTabulationLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ProductgroupDataTabulationLinks::ProductgroupDataTabulationLinks()
{
	//__init();
}

ProductgroupDataTabulationLinks::~ProductgroupDataTabulationLinks()
{
	//__cleanup();
}

void
ProductgroupDataTabulationLinks::__init()
{
	//self = new ProductgroupRef();
	//new std::list()std::list> sdtm;
	//new std::list()std::list> sdtmig;
	//new std::list()std::list> sendig;
}

void
ProductgroupDataTabulationLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(sdtm != NULL) {
	//sdtm.RemoveAll(true);
	//delete sdtm;
	//sdtm = NULL;
	//}
	//if(sdtmig != NULL) {
	//sdtmig.RemoveAll(true);
	//delete sdtmig;
	//sdtmig = NULL;
	//}
	//if(sendig != NULL) {
	//sendig.RemoveAll(true);
	//delete sendig;
	//sendig = NULL;
	//}
	//
}

void
ProductgroupDataTabulationLinks::fromJson(char* jsonStr)
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
	const gchar *sdtmKey = "sdtm";
	node = json_object_get_member(pJsonObject, sdtmKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmProductRefElement> new_list;
			SdtmProductRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmProductRefElement")) {
					jsonToValue(&inst, temp_json, "SdtmProductRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			sdtm = new_list;
		}
		
	}
	const gchar *sdtmigKey = "sdtmig";
	node = json_object_get_member(pJsonObject, sdtmigKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmigProductRefElement> new_list;
			SdtmigProductRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmigProductRefElement")) {
					jsonToValue(&inst, temp_json, "SdtmigProductRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			sdtmig = new_list;
		}
		
	}
	const gchar *sendigKey = "sendig";
	node = json_object_get_member(pJsonObject, sendigKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SendigProductRefElement> new_list;
			SendigProductRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SendigProductRefElement")) {
					jsonToValue(&inst, temp_json, "SendigProductRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			sendig = new_list;
		}
		
	}
}

ProductgroupDataTabulationLinks::ProductgroupDataTabulationLinks(char* json)
{
	this->fromJson(json);
}

char*
ProductgroupDataTabulationLinks::toJson()
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
	if (isprimitive("SdtmProductRefElement")) {
		list<SdtmProductRefElement> new_list = static_cast<list <SdtmProductRefElement> > (getSdtm());
		node = converttoJson(&new_list, "SdtmProductRefElement", "array");
	} else {
		node = json_node_alloc();
		list<SdtmProductRefElement> new_list = static_cast<list <SdtmProductRefElement> > (getSdtm());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmProductRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmProductRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *sdtmKey = "sdtm";
	json_object_set_member(pJsonObject, sdtmKey, node);
	if (isprimitive("SdtmigProductRefElement")) {
		list<SdtmigProductRefElement> new_list = static_cast<list <SdtmigProductRefElement> > (getSdtmig());
		node = converttoJson(&new_list, "SdtmigProductRefElement", "array");
	} else {
		node = json_node_alloc();
		list<SdtmigProductRefElement> new_list = static_cast<list <SdtmigProductRefElement> > (getSdtmig());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmigProductRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmigProductRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *sdtmigKey = "sdtmig";
	json_object_set_member(pJsonObject, sdtmigKey, node);
	if (isprimitive("SendigProductRefElement")) {
		list<SendigProductRefElement> new_list = static_cast<list <SendigProductRefElement> > (getSendig());
		node = converttoJson(&new_list, "SendigProductRefElement", "array");
	} else {
		node = json_node_alloc();
		list<SendigProductRefElement> new_list = static_cast<list <SendigProductRefElement> > (getSendig());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SendigProductRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SendigProductRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *sendigKey = "sendig";
	json_object_set_member(pJsonObject, sendigKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

ProductgroupRef
ProductgroupDataTabulationLinks::getSelf()
{
	return self;
}

void
ProductgroupDataTabulationLinks::setSelf(ProductgroupRef  self)
{
	this->self = self;
}

std::list<SdtmProductRefElement>
ProductgroupDataTabulationLinks::getSdtm()
{
	return sdtm;
}

void
ProductgroupDataTabulationLinks::setSdtm(std::list <SdtmProductRefElement> sdtm)
{
	this->sdtm = sdtm;
}

std::list<SdtmigProductRefElement>
ProductgroupDataTabulationLinks::getSdtmig()
{
	return sdtmig;
}

void
ProductgroupDataTabulationLinks::setSdtmig(std::list <SdtmigProductRefElement> sdtmig)
{
	this->sdtmig = sdtmig;
}

std::list<SendigProductRefElement>
ProductgroupDataTabulationLinks::getSendig()
{
	return sendig;
}

void
ProductgroupDataTabulationLinks::setSendig(std::list <SendigProductRefElement> sendig)
{
	this->sendig = sendig;
}


