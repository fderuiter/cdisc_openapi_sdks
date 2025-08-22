/*
 * SdtmProductLinks.h
 *
 * 
 */

#ifndef _SdtmProductLinks_H_
#define _SdtmProductLinks_H_


#include <string>
#include "SdtmProductRef.h"
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

class SdtmProductLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmProductLinks();
	SdtmProductLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmProductLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmProductRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmProductRef  self);
	/*! \brief Get 
	 */
	SdtmProductRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SdtmProductRef  priorVersion);

private:
	SdtmProductRef self;
	SdtmProductRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmProductLinks_H_ */
