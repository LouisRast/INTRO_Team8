/**
 * \file
 * \brief Timer driver
 * \author Erich Styger, erich.styger@hslu.ch
 *
 * This module implements the driver for all our timers.
  */

#include "Platform.h"
#if PL_CONFIG_HAS_TIMER
#include "Timer.h"
#if PL_CONFIG_HAS_EVENTS
  #include "Event.h"
#endif
#if PL_CONFIG_HAS_TRIGGER
  #include "Trigger.h"
#endif
#if PL_CONFIG_HAS_MOTOR_TACHO
  #include "Tacho.h"
#endif
//#include "TMOUT1.h"
//#include "TmDt1.h"


void TMR_OnInterrupt(void) {
  static unsigned int cntr = 0;
  /* this one gets called from an interrupt!!!! */
  TRG_AddTick();		/*Increase ticks for trigger management*/
  TMOUT1_AddTick(); 	/*Increase ticks for timeout management*/
}

void TMR_Init(void) {
}

void TMR_Deinit(void) {
}

#endif /* PL_CONFIG_HAS_TIMER*/
