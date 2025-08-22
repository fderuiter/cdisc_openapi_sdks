/*
 * XmlProductgroupTerminology.h
 *
 * 
 */

#ifndef _XmlProductgroupTerminology_H_
#define _XmlProductgroupTerminology_H_


#include <string>
#include "ProductgroupTerminology.h"
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

class XmlProductgroupTerminology : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlProductgroupTerminology();
	XmlProductgroupTerminology(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlProductgroupTerminology();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	ProductgroupTerminology getSelf();

	/*! \brief Set 
	 */
	void setSelf(ProductgroupTerminology  self);

private:
	ProductgroupTerminology self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlProductgroupTerminology_H_ */
