/*
 * PMW.c
 *
 *  Created on: Aug 8, 2024
 *      Author: Никита
 */
#include "PWM.h"
void CALC_FREQ(PWM *pwm) {

	if (pwm->end_per > pwm->start) // Все три точки были в одном периоде таймера
			{
		pwm->period = pwm->end_per - pwm->start;
		pwm->long_imp = pwm->end_imp - pwm->start;
		if (pwm->period > 0) {
			pwm->freq = 1000000 / pwm->period;
			pwm->fill_factor = (pwm->long_imp * 100) / pwm->period;
		}
	}
}


