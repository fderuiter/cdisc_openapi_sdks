/*
 * ExportQrsItemsTable.h
 *
 * 
 */

#ifndef _ExportQrsItemsTable_H_
#define _ExportQrsItemsTable_H_


#include <string>
#include "ExportQrsCsvItemsRow.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class ExportQrsItemsTable : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportQrsItemsTable();
	ExportQrsItemsTable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportQrsItemsTable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ExportQrsCsvItemsRow> getItems();

	/*! \brief Set 
	 */
	void setItems(std::list <ExportQrsCsvItemsRow> items);

private:
	std::list <ExportQrsCsvItemsRow>items;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportQrsItemsTable_H_ */
