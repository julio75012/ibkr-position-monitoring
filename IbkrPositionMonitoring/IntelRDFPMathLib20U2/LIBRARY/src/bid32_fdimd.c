/******************************************************************************
  Copyright (c) 2007-2024, Intel Corp.
  All rights reserved.

  Redistribution and use in source and binary forms, with or without 
  modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice, 
      this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright 
      notice, this list of conditions and the following disclaimer in the 
      documentation and/or other materials provided with the distribution.
    * Neither the name of Intel Corporation nor the names of its contributors 
      may be used to endorse or promote products derived from this software 
      without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
  THE POSSIBILITY OF SUCH DAMAGE.
******************************************************************************/

#include "bid_internal.h"

/*****************************************************************************
 *  BID32 fdim
 ****************************************************************************/

/*
 fdim returns x - y if x > y, and +0 is x <= y
 Exceptions: P, O, I (U could only be unmasked, which is not supported)
 */

BID_TYPE_FUNCTION_ARG2(BID_UINT32, bid32_fdim, x, y)
  BID_UINT32 res;
  int cmpres;
  BID_FPSC tmp_fpsf = 0; // dummy fpsf for calls to comparison functions

  tmp_fpsf = *pfpsf;    // save fpsf
#if DECIMAL_CALL_BY_REFERENCE
  bid32_quiet_greater (&cmpres, &x, &y 
      _EXC_FLAGS_ARG _EXC_MASKS_ARG _EXC_INFO_ARG);
#else    
  cmpres = bid32_quiet_greater (x, y 
      _EXC_FLAGS_ARG _EXC_MASKS_ARG _EXC_INFO_ARG);
#endif 
  *pfpsf = tmp_fpsf;    // restore fpsf
  if (((x & MASK_NAN32) != MASK_NAN32) && ((y & MASK_NAN32) != MASK_NAN32) &&
      !cmpres) { // if x != NaN and y != NaN and x <= y return +0
    res = 0x32800000;
    BID_RETURN (res);
  }

  // else if x = NaN or y = NaN or x > y return x - y

#if DECIMAL_CALL_BY_REFERENCE
  bid32_sub (&res, &x, &y 
      _RND_MODE_ARG _EXC_FLAGS_ARG _EXC_MASKS_ARG _EXC_INFO_ARG);
#else
  res = bid32_sub (x, y 
      _RND_MODE_ARG _EXC_FLAGS_ARG _EXC_MASKS_ARG _EXC_INFO_ARG);
#endif
  BID_RETURN (res);
}
