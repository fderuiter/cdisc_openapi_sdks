/*
 * QrsResponses.h
 *
 * 
 */

#ifndef _QrsResponses_H_
#define _QrsResponses_H_


#include <string>
#include "QrsResponseLinks.h"
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

class QrsResponses : public Object {
public:
	/*! \brief Constructor.
	 */
	QrsResponses();
	QrsResponses(char* str);

	/*! \brief Destructor.
	 */
	virtual ~QrsResponses();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getOrdinal();

	/*! \brief Set 
	 */
	void setOrdinal(std::string  ordinal);
	/*! \brief Get 
	 */
	QrsResponseLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(QrsResponseLinks  _links);

private:
	std::string ordinal;
	QrsResponseLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _QrsResponses_H_ */
