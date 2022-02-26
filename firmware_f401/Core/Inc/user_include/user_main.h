#ifndef USER_MAIN_H
#define USER_MAIN_H

#include "main.h"
#include "tim.h"
#include "adc.h"
#include "i2c.h"

void user_setup(void);
void user_loop(void);

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim);

#endif
