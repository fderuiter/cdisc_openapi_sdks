/*
 * ExportCtTable.h
 *
 * 
 */

#ifndef _ExportCtTable_H_
#define _ExportCtTable_H_


#include <string>
#include "ExportCtCodelist.h"
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

class ExportCtTable : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportCtTable();
	ExportCtTable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportCtTable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ExportCtCodelist> getCt();

	/*! \brief Set 
	 */
	void setCt(std::list <ExportCtCodelist> ct);

private:
	std::list <ExportCtCodelist>ct;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportCtTable_H_ */
