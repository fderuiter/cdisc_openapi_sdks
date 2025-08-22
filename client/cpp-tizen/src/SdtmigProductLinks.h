/*
 * SdtmigProductLinks.h
 *
 * 
 */

#ifndef _SdtmigProductLinks_H_
#define _SdtmigProductLinks_H_


#include <string>
#include "SdtmProductRef.h"
#include "SdtmigProductRef.h"
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

class SdtmigProductLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmigProductLinks();
	SdtmigProductLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmigProductLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmigProductRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmigProductRef  self);
	/*! \brief Get 
	 */
	SdtmProductRef getModel();

	/*! \brief Set 
	 */
	void setModel(SdtmProductRef  model);
	/*! \brief Get 
	 */
	SdtmigProductRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SdtmigProductRef  priorVersion);

private:
	SdtmigProductRef self;
	SdtmProductRef model;
	SdtmigProductRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmigProductLinks_H_ */
