/*
Copyright (C) 2007 <SWGEmu>. All rights reserved.
Distribution of this file for usage outside of Core3 is prohibited.
*/

#ifndef ATOMICBOOLEAN_H_
#define ATOMICBOOLEAN_H_

#include "system/platform.h"

#include "system/lang/Variable.h"

#include "system/io/ObjectInputStream.h"
#include "system/io/ObjectOutputStream.h"

#include <atomic>

namespace sys {
  namespace thread {
	namespace atomic {

	class AtomicBoolean : public Variable {
		std::atomic<bool> value{false};

	public:
		AtomicBoolean() {
		}

		AtomicBoolean(bool val) : value(val) {
		}

		static bool compareAndSet(volatile bool* address, bool oldval, bool newval) {
			return __sync_bool_compare_and_swap(address, oldval, newval);
		}

		bool compareAndSet(bool oldval, bool newval) {
			return value.compare_exchange_strong(oldval, newval);
		}

		bool get() const {
			return value.load(std::memory_order_relaxed);
		}

		void set(bool val) {
			value = val;
		}

		bool operator=(const bool val) {
			return (bool) (value = val);
		}

		bool operator== (const bool val) const {
			return val == value.load(std::memory_order_relaxed);
		}

		operator bool() const {
			return value.load(std::memory_order_relaxed);
		}

		bool toBinaryStream(sys::io::ObjectOutputStream* stream) NO_THREAD_SAFETY_ANALYSIS {
			stream->writeInt(value);

			return true;
		}

		bool parseFromBinaryStream(sys::io::ObjectInputStream* stream) NO_THREAD_SAFETY_ANALYSIS {
			*this = stream->readInt();

			return true;
		}
	};

	} // namespace atomic
  } // namespace thread
} //namespace sys

using namespace sys::thread::atomic;

#endif /* ATOMICBOOLEAN_H_ */
