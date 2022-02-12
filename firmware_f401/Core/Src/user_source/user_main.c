//define
#include "user_include/user_main.h"
#define PWM_LIMIT 1000
#define NUM_ANGLE_SPLIT 360

//global variable
static uint16_t adc_values[5];
uint16_t dbg_arr[6];
//uint16_t sin_arr[NUM_ANGLE_SPLIT];
uint16_t sin_arr[] = {128, 132, 136, 140, 143, 147, 151, 155, 159, 162, 166, 170, 174, 178, 181, 185, 189, 192, 196, 200, 203, 207, 211, 214, 218, 221, 225, 228, 232, 235, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 248, 249, 250, 250, 251, 252, 252, 253, 253, 253, 254, 254, 254, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 254, 254, 254, 253, 253, 253, 252, 252, 251, 250, 250, 249, 248, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 248, 249, 250, 250, 251, 252, 252, 253, 253, 253, 254, 254, 254, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 254, 254, 254, 253, 253, 253, 252, 252, 251, 250, 250, 249, 248, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 235, 232, 228, 225, 221, 218, 214, 211, 207, 203, 200, 196, 192, 189, 185, 181, 178, 174, 170, 166, 162, 159, 155, 151, 147, 143, 140, 136, 132, 128, 124, 120, 116, 113, 109, 105, 101, 97, 94, 90, 86, 82, 78, 75, 71, 67, 64, 60, 56, 53, 49, 45, 42, 38, 35, 31, 28, 24, 21, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 8, 7, 6, 6, 5, 4, 4, 3, 3, 3, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 5, 6, 6, 7, 8, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 8, 7, 6, 6, 5, 4, 4, 3, 3, 3, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 5, 6, 6, 7, 8, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 21, 24, 28, 31, 35, 38, 42, 45, 49, 53, 56, 60, 64, 67, 71, 75, 78, 82, 86, 90, 94, 97, 101, 105, 109, 113, 116, 120, 124};

uint16_t counter_U=0;
uint16_t counter_V=0;
uint16_t counter_W=0;
uint16_t power=100;
uint16_t delay=0;
uint16_t duty_U,duty_V,duty_W;

void user_setup(){
	//timer start ()
	HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_1);
	HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_2);
	HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_3);
	HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_1);
	HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_2);
	HAL_TIM_PWM_Start(&htim2, TIM_CHANNEL_3);
	HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_1);
	HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_2);
	HAL_TIM_Base_Start_IT(&htim3);
	HAL_TIM_Base_Start_IT(&htim11);

	//others start
	HAL_ADC_Start_DMA(&hadc1,(uint32_t *)adc_values, 5);

	//driver enable
	HAL_GPIO_WritePin (EN_GATE_GPIO_Port, EN_GATE_Pin, SET);

	//PWM init
	__HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_1, 0);//U_H
	__HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_2, 0);//U_L
	__HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_1, 0);//V_H
	__HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_2, 0);//V_L
	__HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_1, 0);//W_H
	__HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_2, 0);//W_L
	//pre-calc sin wave

//	for(int i=0;i<NUM_ANGLE_SPLIT;i++)sin_arr[i]=sin(2*M_PI*i/NUM_ANGLE_SPLIT)*power;
	uint16_t phase_shift = NUM_ANGLE_SPLIT/ 3;
	counter_V=counter_U+phase_shift;
	counter_W=counter_V+phase_shift;
}

void user_loop(){
	duty_U=sin_arr[counter_U];
	duty_V=sin_arr[counter_V];
	duty_W=sin_arr[counter_W];
	dbg_arr[0]=duty_U;
	dbg_arr[1]=duty_V;
	dbg_arr[2]=duty_W;
	__HAL_TIM_SET_COMPARE(&htim1, TIM_CHANNEL_1, duty_U);
	__HAL_TIM_SET_COMPARE(&htim2, TIM_CHANNEL_1, duty_V);
	__HAL_TIM_SET_COMPARE(&htim4, TIM_CHANNEL_1, duty_W);
	HAL_Delay(delay);
	counter_U++;
	if (counter_U>NUM_ANGLE_SPLIT-1)counter_U=0;
	counter_V++;
	if (counter_V>NUM_ANGLE_SPLIT-1)counter_V=0;
	counter_W++;
	if (counter_W>NUM_ANGLE_SPLIT-1)counter_W=0;
}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
    if (htim == &htim3){//5kHzTimer
//        HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_5);
    }
    if (htim == &htim11){//500HzTimer
//        HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_5);
    }
}
