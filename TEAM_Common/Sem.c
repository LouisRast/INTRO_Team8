/**
 * \file
 * \brief Semaphore usage
 * \author Erich Styger, erich.styger@hslu.ch
 *
 * Module using semaphores.
 */

/**
 * \file
 * \brief Semaphore usage
 * \author Erich Styger, erich.styger@hslu.ch
 *
 * Module using semaphores.
 */

#include "Platform.h" /* interface to the platform */
#if PL_CONFIG_HAS_SEMAPHORE
#include "FRTOS1.h"
#include "Sem.h"
#include "LED.h"

static xSemaphoreHandle sem = NULL;

static void vSlaveTask(void *pvParameters) {
  for(;;){
  /*! \todo Implement functionality */
	if(sem != NULL){
		//If semaphore is not in possession,
		//wait 10 ticks and then try to get the semaphore.
		if(xSemaphoreTake(sem,10) == pdTRUE){
			LED1_Neg();
		}
	}
  }
}

static void vMasterTask(void *pvParameters) {
 for(;;){
  /*! \todo send semaphore from master task to slave task */
	TickType_t last =xTaskGetTickCount();
	xSemaphoreGive(sem);
	vTaskDelayUntil(&last, pdMS_TO_TICKS(1000));
  }
 }

void SEM_Deinit(void) {
}

/*! \brief Initializes module */
void SEM_Init(void) {
	sem = xSemaphoreCreateBinary();

    if (xTaskCreate(vMasterTask, "SemMaster", 500/sizeof(StackType_t), NULL, tskIDLE_PRIORITY+2, NULL) != pdPASS) {
      for(;;){} /* error case only, stay here! */
    }
    if (xTaskCreate(vSlaveTask, "SemSlave", 500/sizeof(StackType_t), NULL, tskIDLE_PRIORITY+2, NULL) != pdPASS) {
      for(;;){} /* error case only, stay here! */
    }

}
#endif /* PL_CONFIG_HAS_SEMAPHORE */
