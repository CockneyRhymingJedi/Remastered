/*
Copyright (C) 2007 <SWGEmu>. All rights reserved.
Distribution of this file for usage outside of Core3 is prohibited.
*/

#ifndef UPDATEMODIFIEDOBJECTSTHREAD_H_
#define UPDATEMODIFIEDOBJECTSTHREAD_H_

#include "engine/engine.h"

#include "system/thread/atomic/AtomicBoolean.h"
#include "DOBObjectManager.h"

namespace engine {
	namespace ORB {

	class UpdateModifiedObjectsThread : public Thread {
		DOBObjectManager* objectManager;

		Vector<DistributedObject*>* objectsToUpdate;
		Vector<DistributedObject*>* objectsToDelete;
		int startOffset;
		int endOffset;
		int threadId;

		Mutex blockMutex;
		Condition waitCondition;
		Condition finishedWorkContition;
		Condition waitMasterTransaction;

		AtomicBoolean doRun;
		AtomicBoolean working;
		AtomicBoolean finishedCommiting;
		AtomicBoolean waitingToCommit;
		AtomicBoolean waitingToStart;

		engine::db::berkley::Transaction* transaction;

		int cpu;

	public:
		UpdateModifiedObjectsThread(int id, DOBObjectManager* manager, int cpu);

		void run() NO_THREAD_SAFETY_ANALYSIS ;

		void commitObjectsToDatabase();
		void commitTransaction() NO_THREAD_SAFETY_ANALYSIS;

		inline void setObjectsToUpdateVector(Vector<DistributedObject*>* objectsToUpdate) {
			this->objectsToUpdate = objectsToUpdate;
		}

		inline void setObjectsToDeleteVector(Vector<DistributedObject*>* objectsToDelete) {
			this->objectsToDelete = objectsToDelete;
		}

		inline void setTransaction(engine::db::berkley::Transaction* trans) {
			transaction = trans;
		}

		inline void setStartOffset(int offset) {
			startOffset = offset;
		}

		inline void setEndOffset(int offset) {
			endOffset = offset;
		}

		inline void stopWork() {
			doRun = false;

			signalActivity();

			join();
		}

		inline bool hasFinishedCommiting() {
			return finishedCommiting;
		}

		inline void signalMasterTransactionFinish() {
			blockMutex.lock();

			waitMasterTransaction.broadcast(&blockMutex);

			blockMutex.unlock();
		}

		inline void signalActivity() {
			blockMutex.lock();

			working = true;

			waitCondition.broadcast(&blockMutex);

			blockMutex.unlock();
		}

		inline void waitFinishedWork() {
			blockMutex.lock();

			while (waitingToStart && objectsToUpdate != nullptr) {
				waitCondition.broadcast(&blockMutex);
				blockMutex.unlock();
				blockMutex.lock();
			}

			if (working)
				finishedWorkContition.wait(&blockMutex);

			blockMutex.unlock();
		}
	};

  } // namespace ORB
} // namespace engine

#endif /* UPDATEMODIFIEDOBJECTSTHREAD_H_ */
