#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SendigClassDatasetsLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SendigClassDatasetsLinks::SendigClassDatasetsLinks()
{
	//__init();
}

SendigClassDatasetsLinks::~SendigClassDatasetsLinks()
{
	//__cleanup();
}

void
SendigClassDatasetsLinks::__init()
{
	//self = new SendigClassDatasetsRef();
	//parentProduct = new SendigProductRef();
	//new std::list()std::list> datasets;
}

void
SendigClassDatasetsLinks::__cleanup()
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
	//if(datasets != NULL) {
	//datasets.RemoveAll(true);
	//delete datasets;
	//datasets = NULL;
	//}
	//
}

void
SendigClassDatasetsLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("SendigClassDatasetsRef")) {
			jsonToValue(&self, node, "SendigClassDatasetsRef", "SendigClassDatasetsRef");
		} else {
			
			SendigClassDatasetsRef* obj = static_cast<SendigClassDatasetsRef*> (&self);
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
	const gchar *datasetsKey = "datasets";
	node = json_object_get_member(pJsonObject, datasetsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SendigDatasetRefElement> new_list;
			SendigDatasetRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SendigDatasetRefElement")) {
					jsonToValue(&inst, temp_json, "SendigDatasetRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			datasets = new_list;
		}
		
	}
}

SendigClassDatasetsLinks::SendigClassDatasetsLinks(char* json)
{
	this->fromJson(json);
}

char*
SendigClassDatasetsLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SendigClassDatasetsRef")) {
		SendigClassDatasetsRef obj = getSelf();
		node = converttoJson(&obj, "SendigClassDatasetsRef", "");
	}
	else {
		
		SendigClassDatasetsRef obj = static_cast<SendigClassDatasetsRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
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
	if (isprimitive("SendigDatasetRefElement")) {
		list<SendigDatasetRefElement> new_list = static_cast<list <SendigDatasetRefElement> > (getDatasets());
		node = converttoJson(&new_list, "SendigDatasetRefElement", "array");
	} else {
		node = json_node_alloc();
		list<SendigDatasetRefElement> new_list = static_cast<list <SendigDatasetRefElement> > (getDatasets());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SendigDatasetRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SendigDatasetRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *datasetsKey = "datasets";
	json_object_set_member(pJsonObject, datasetsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

SendigClassDatasetsRef
SendigClassDatasetsLinks::getSelf()
{
	return self;
}

void
SendigClassDatasetsLinks::setSelf(SendigClassDatasetsRef  self)
{
	this->self = self;
}

SendigProductRef
SendigClassDatasetsLinks::getParentProduct()
{
	return parentProduct;
}

void
SendigClassDatasetsLinks::setParentProduct(SendigProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

std::list<SendigDatasetRefElement>
SendigClassDatasetsLinks::getDatasets()
{
	return datasets;
}

void
SendigClassDatasetsLinks::setDatasets(std::list <SendigDatasetRefElement> datasets)
{
	this->datasets = datasets;
}


