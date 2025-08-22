/*
 * RootSdtmDatasetVariableLinks.h
 *
 * 
 */

#ifndef _RootSdtmDatasetVariableLinks_H_
#define _RootSdtmDatasetVariableLinks_H_


#include <string>
#include "RootSdtmDatasetVariableRef.h"
#include "SdtmDatasetVariableRefVersion.h"
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

class RootSdtmDatasetVariableLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	RootSdtmDatasetVariableLinks();
	RootSdtmDatasetVariableLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RootSdtmDatasetVariableLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootSdtmDatasetVariableRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(RootSdtmDatasetVariableRef  self);
	/*! \brief Get 
	 */
	std::list<SdtmDatasetVariableRefVersion> getVersions();

	/*! \brief Set 
	 */
	void setVersions(std::list <SdtmDatasetVariableRefVersion> versions);

private:
	RootSdtmDatasetVariableRef self;
	std::list <SdtmDatasetVariableRefVersion>versions;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RootSdtmDatasetVariableLinks_H_ */
