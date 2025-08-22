#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportSdtmDatasetsTable.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportSdtmDatasetsTable::ExportSdtmDatasetsTable()
{
	//__init();
}

ExportSdtmDatasetsTable::~ExportSdtmDatasetsTable()
{
	//__cleanup();
}

void
ExportSdtmDatasetsTable::__init()
{
	//new std::list()std::list> datasets;
}

void
ExportSdtmDatasetsTable::__cleanup()
{
	//if(datasets != NULL) {
	//datasets.RemoveAll(true);
	//delete datasets;
	//datasets = NULL;
	//}
	//
}

void
ExportSdtmDatasetsTable::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *datasetsKey = "datasets";
	node = json_object_get_member(pJsonObject, datasetsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<ExportSdtmDatasetsRow> new_list;
			ExportSdtmDatasetsRow inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("ExportSdtmDatasetsRow")) {
					jsonToValue(&inst, temp_json, "ExportSdtmDatasetsRow", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			datasets = new_list;
		}
		
	}
}

ExportSdtmDatasetsTable::ExportSdtmDatasetsTable(char* json)
{
	this->fromJson(json);
}

char*
ExportSdtmDatasetsTable::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("ExportSdtmDatasetsRow")) {
		list<ExportSdtmDatasetsRow> new_list = static_cast<list <ExportSdtmDatasetsRow> > (getDatasets());
		node = converttoJson(&new_list, "ExportSdtmDatasetsRow", "array");
	} else {
		node = json_node_alloc();
		list<ExportSdtmDatasetsRow> new_list = static_cast<list <ExportSdtmDatasetsRow> > (getDatasets());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<ExportSdtmDatasetsRow>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			ExportSdtmDatasetsRow obj = *it;
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

std::list<ExportSdtmDatasetsRow>
ExportSdtmDatasetsTable::getDatasets()
{
	return datasets;
}

void
ExportSdtmDatasetsTable::setDatasets(std::list <ExportSdtmDatasetsRow> datasets)
{
	this->datasets = datasets;
}


