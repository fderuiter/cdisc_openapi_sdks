/*
 * QrsItemLinks.h
 *
 * 
 */

#ifndef _QrsItemLinks_H_
#define _QrsItemLinks_H_


#include <string>
#include "QrsResponsegroup.h"
#include "RootCtTermRef.h"
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

class QrsItemLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	QrsItemLinks();
	QrsItemLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~QrsItemLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	RootCtTermRef getQrsItemTEST();

	/*! \brief Set 
	 */
	void setQrsItemTEST(RootCtTermRef  qrsItemTEST);
	/*! \brief Get 
	 */
	RootCtTermRef getQrsItemTESTCD();

	/*! \brief Set 
	 */
	void setQrsItemTESTCD(RootCtTermRef  qrsItemTESTCD);
	/*! \brief Get 
	 */
	RootCtTermRef getQrsItemEVAL();

	/*! \brief Set 
	 */
	void setQrsItemEVAL(RootCtTermRef  qrsItemEVAL);
	/*! \brief Get 
	 */
	RootCtTermRef getQrsItemSCAT();

	/*! \brief Set 
	 */
	void setQrsItemSCAT(RootCtTermRef  qrsItemSCAT);
	/*! \brief Get 
	 */
	QrsResponsegroup getResponsegroup();

	/*! \brief Set 
	 */
	void setResponsegroup(QrsResponsegroup  responsegroup);

private:
	RootCtTermRef qrsItemTEST;
	RootCtTermRef qrsItemTESTCD;
	RootCtTermRef qrsItemEVAL;
	RootCtTermRef qrsItemSCAT;
	QrsResponsegroup responsegroup;
	void __init();
	void __cleanup();

};
}
}

#endif /* _QrsItemLinks_H_ */
