/*
 * QrsResponsegroup.h
 *
 * 
 */

#ifndef _QrsResponsegroup_H_
#define _QrsResponsegroup_H_


#include <string>
#include "QrsResponsegroupLinks.h"
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

class QrsResponsegroup : public Object {
public:
	/*! \brief Constructor.
	 */
	QrsResponsegroup();
	QrsResponsegroup(char* str);

	/*! \brief Destructor.
	 */
	virtual ~QrsResponsegroup();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getLabel();

	/*! \brief Set 
	 */
	void setLabel(std::string  label);
	/*! \brief Get 
	 */
	QrsResponsegroupLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(QrsResponsegroupLinks  _links);

private:
	std::string label;
	QrsResponsegroupLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _QrsResponsegroup_H_ */
