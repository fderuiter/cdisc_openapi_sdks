#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportQrsWorkbook.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportQrsWorkbook::ExportQrsWorkbook()
{
	//__init();
}

ExportQrsWorkbook::~ExportQrsWorkbook()
{
	//__cleanup();
}

void
ExportQrsWorkbook::__init()
{
	//self = new ExportQrsGeneral();
	//new std::list()std::list> items;
	//new std::list()std::list> responses;
}

void
ExportQrsWorkbook::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(items != NULL) {
	//items.RemoveAll(true);
	//delete items;
	//items = NULL;
	//}
	//if(responses != NULL) {
	//responses.RemoveAll(true);
	//delete responses;
	//responses = NULL;
	//}
	//
}

void
ExportQrsWorkbook::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("ExportQrsGeneral")) {
			jsonToValue(&self, node, "ExportQrsGeneral", "ExportQrsGeneral");
		} else {
			
			ExportQrsGeneral* obj = static_cast<ExportQrsGeneral*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *itemsKey = "items";
	node = json_object_get_member(pJsonObject, itemsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ExportQrsWorkbookItemsRow> new_list;
			ExportQrsWorkbookItemsRow inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ExportQrsWorkbookItemsRow")) {
					jsonToValue(&inst, temp_json, "ExportQrsWorkbookItemsRow", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			items = new_list;
		}
		
	}
	const gchar *responsesKey = "responses";
	node = json_object_get_member(pJsonObject, responsesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ExportQrsResponses> new_list;
			ExportQrsResponses inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ExportQrsResponses")) {
					jsonToValue(&inst, temp_json, "ExportQrsResponses", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			responses = new_list;
		}
		
	}
}

ExportQrsWorkbook::ExportQrsWorkbook(char* json)
{
	this->fromJson(json);
}

char*
ExportQrsWorkbook::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ExportQrsGeneral")) {
		ExportQrsGeneral obj = getSelf();
		node = converttoJson(&obj, "ExportQrsGeneral", "");
	}
	else {
		
		ExportQrsGeneral obj = static_cast<ExportQrsGeneral> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("ExportQrsWorkbookItemsRow")) {
		list<ExportQrsWorkbookItemsRow> new_list = static_cast<list <ExportQrsWorkbookItemsRow> > (getItems());
		node = converttoJson(&new_list, "ExportQrsWorkbookItemsRow", "array");
	} else {
		node = json_node_alloc();
		list<ExportQrsWorkbookItemsRow> new_list = static_cast<list <ExportQrsWorkbookItemsRow> > (getItems());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ExportQrsWorkbookItemsRow>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ExportQrsWorkbookItemsRow obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *itemsKey = "items";
	json_object_set_member(pJsonObject, itemsKey, node);
	if (isprimitive("ExportQrsResponses")) {
		list<ExportQrsResponses> new_list = static_cast<list <ExportQrsResponses> > (getResponses());
		node = converttoJson(&new_list, "ExportQrsResponses", "array");
	} else {
		node = json_node_alloc();
		list<ExportQrsResponses> new_list = static_cast<list <ExportQrsResponses> > (getResponses());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ExportQrsResponses>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ExportQrsResponses obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *responsesKey = "responses";
	json_object_set_member(pJsonObject, responsesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

ExportQrsGeneral
ExportQrsWorkbook::getSelf()
{
	return self;
}

void
ExportQrsWorkbook::setSelf(ExportQrsGeneral  self)
{
	this->self = self;
}

std::list<ExportQrsWorkbookItemsRow>
ExportQrsWorkbook::getItems()
{
	return items;
}

void
ExportQrsWorkbook::setItems(std::list <ExportQrsWorkbookItemsRow> items)
{
	this->items = items;
}

std::list<ExportQrsResponses>
ExportQrsWorkbook::getResponses()
{
	return responses;
}

void
ExportQrsWorkbook::setResponses(std::list <ExportQrsResponses> responses)
{
	this->responses = responses;
}


