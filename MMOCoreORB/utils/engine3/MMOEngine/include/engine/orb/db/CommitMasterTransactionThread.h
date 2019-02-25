/*
 * CommitMasterTransactionThread.h
 *
 *  Created on: 18/02/2012
 *      Author: victor
 */

#ifndef COMMITMASTERTRANSACTIONTHREAD_H_
#define COMMITMASTERTRANSACTIONTHREAD_H_

#include "engine/engine.h"
#include "system/thread/atomic/AtomicBoolean.h"

#include "UpdateModifiedObjectsThread.h"

namespace engine {
	namespace ORB {

	class CommitMasterTransactionThread : public Thread, public Singleton<CommitMasterTransactionThread>, public Object {
		Mutex blockMutex;
		Condition waitCondition;

		engine::db::berkley::Transaction* transaction;
		Vector<UpdateModifiedObjectsThread*>* threads;
		Vector<DistributedObject* >* objectsToDeleteFromRam;
		int numberOfThreads;

		AtomicBoolean doRun;

	public:
		CommitMasterTransactionThread();
		~CommitMasterTransactionThread();

		void run();

		void shutdown();

		void startWatch(engine::db::berkley::Transaction* trans, Vector<UpdateModifiedObjectsThread*>* workers, int number, Vector<DistributedObject* >* objectsToCollect);

		void commitData() NO_THREAD_SAFETY_ANALYSIS;

		int garbageCollect(DOBObjectManager* objectManager);
	};

  } // namespace ORB
} // namespace engine

#endif /* COMMITMASTERTRANSACTIONTHREAD_H_ */
