/*
 * ExportQrsWorkbook.h
 *
 * 
 */

#ifndef _ExportQrsWorkbook_H_
#define _ExportQrsWorkbook_H_


#include <string>
#include "ExportQrsGeneral.h"
#include "ExportQrsResponses.h"
#include "ExportQrsWorkbookItemsRow.h"
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

class ExportQrsWorkbook : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportQrsWorkbook();
	ExportQrsWorkbook(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportQrsWorkbook();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	ExportQrsGeneral getSelf();

	/*! \brief Set 
	 */
	void setSelf(ExportQrsGeneral  self);
	/*! \brief Get 
	 */
	std::list<ExportQrsWorkbookItemsRow> getItems();

	/*! \brief Set 
	 */
	void setItems(std::list <ExportQrsWorkbookItemsRow> items);
	/*! \brief Get 
	 */
	std::list<ExportQrsResponses> getResponses();

	/*! \brief Set 
	 */
	void setResponses(std::list <ExportQrsResponses> responses);

private:
	ExportQrsGeneral self;
	std::list <ExportQrsWorkbookItemsRow>items;
	std::list <ExportQrsResponses>responses;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportQrsWorkbook_H_ */
