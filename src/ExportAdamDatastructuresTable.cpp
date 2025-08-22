#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportAdamDatastructuresTable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportAdamDatastructuresTable::ExportAdamDatastructuresTable()
{
	//__init();
}

ExportAdamDatastructuresTable::~ExportAdamDatastructuresTable()
{
	//__cleanup();
}

void
ExportAdamDatastructuresTable::__init()
{
	//new std::list()std::list> datastructures;
}

void
ExportAdamDatastructuresTable::__cleanup()
{
	//if(datastructures != NULL) {
	//datastructures.RemoveAll(true);
	//delete datastructures;
	//datastructures = NULL;
	//}
	//
}

void
ExportAdamDatastructuresTable::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *datastructuresKey = "datastructures";
	node = json_object_get_member(pJsonObject, datastructuresKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ExportAdamDatastructuresRow> new_list;
			ExportAdamDatastructuresRow inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ExportAdamDatastructuresRow")) {
					jsonToValue(&inst, temp_json, "ExportAdamDatastructuresRow", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			datastructures = new_list;
		}
		
	}
}

ExportAdamDatastructuresTable::ExportAdamDatastructuresTable(char* json)
{
	this->fromJson(json);
}

char*
ExportAdamDatastructuresTable::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ExportAdamDatastructuresRow")) {
		list<ExportAdamDatastructuresRow> new_list = static_cast<list <ExportAdamDatastructuresRow> > (getDatastructures());
		node = converttoJson(&new_list, "ExportAdamDatastructuresRow", "array");
	} else {
		node = json_node_alloc();
		list<ExportAdamDatastructuresRow> new_list = static_cast<list <ExportAdamDatastructuresRow> > (getDatastructures());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ExportAdamDatastructuresRow>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ExportAdamDatastructuresRow obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *datastructuresKey = "datastructures";
	json_object_set_member(pJsonObject, datastructuresKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::list<ExportAdamDatastructuresRow>
ExportAdamDatastructuresTable::getDatastructures()
{
	return datastructures;
}

void
ExportAdamDatastructuresTable::setDatastructures(std::list <ExportAdamDatastructuresRow> datastructures)
{
	this->datastructures = datastructures;
}


