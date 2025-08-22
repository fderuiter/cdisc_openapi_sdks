/*
 * CdashProductLinks.h
 *
 * 
 */

#ifndef _CdashProductLinks_H_
#define _CdashProductLinks_H_


#include <string>
#include "CdashProductRef.h"
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

class CdashProductLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashProductLinks();
	CdashProductLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashProductLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashProductRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashProductRef  self);
	/*! \brief Get 
	 */
	CdashProductRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(CdashProductRef  priorVersion);

private:
	CdashProductRef self;
	CdashProductRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashProductLinks_H_ */
