/*
 * PWM.h
 *
 *  Created on: Aug 8, 2024
 *      Author: Никита
 */

#ifndef INC_PWM_H_
#define INC_PWM_H_
#include "main.h"
typedef struct {
   	 uint16_t start;
   	 uint16_t end_imp;
   	 uint16_t end_per;
	 uint16_t period;
	 uint16_t fill_factor;
	 uint8_t long_imp;
	 uint16_t freq;

} PWM;

void CALC_FREQ (PWM *pmw);

#endif /* INC_PWM_H_ */
