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
#include "TMOUT1.h"
#include "TmDt1.h"


void TMR_OnInterrupt(void) {
  static unsigned int cntr = 0;
  /* this one gets called from an interrupt!!!! */
  /*! \todo Add code for a blinking LED here */
  cntr++;
  if(cntr==(1000/TMR_TICK_MS)) {
	  EVNT_SetEvent(EVNT_LED_HEARTBEAT);
	  cntr = 0; // reset
  }
  TRG_AddTick();
  //TACHO_Sample();
}

void TMR_Init(void) {
}

void TMR_Deinit(void) {
}

#endif /* PL_CONFIG_HAS_TIMER*/
