/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "dma.h"
#include "i2c.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "INA219.h"
#include "PWM.h"
#include "ARGB.h"
#include "ssd1306.h"
#include "fonts.h"
#include "stdio.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
INA219_t sensor_1;
INA219_t sensor_2;
INA219_t sensor_3;
INA219_t sensor_4;
PWM pwm_1;
PWM pwm_2;
PWM pwm_3;
PWM pwm_4;
uint8_t buffer[25];
char *c[10];

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_I2C1_Init();
  MX_USART1_UART_Init();
  MX_TIM1_Init();
  MX_TIM2_Init();
  MX_TIM3_Init();
  /* USER CODE BEGIN 2 */
    HAL_TIM_IC_Start_IT(&htim1, TIM_CHANNEL_1);
  	HAL_TIM_IC_Start_IT(&htim1, TIM_CHANNEL_2);
  	HAL_TIM_IC_Start_IT(&htim1, TIM_CHANNEL_3);
  	HAL_TIM_IC_Start_IT(&htim1, TIM_CHANNEL_4);
  	HAL_TIM_IC_Start_IT(&htim2, TIM_CHANNEL_1);
  	HAL_TIM_IC_Start_IT(&htim2, TIM_CHANNEL_2);
  	HAL_TIM_IC_Start_IT(&htim2, TIM_CHANNEL_3);
  	HAL_TIM_IC_Start_IT(&htim2, TIM_CHANNEL_4);
  	HAL_TIM_PWM_Start(&htim3, TIM_CHANNEL_3);
  	HAL_TIM_PWM_Start(&htim3, TIM_CHANNEL_4);
  	INA219_Init(&sensor_1, &hi2c1, 0x40);
  	INA219_Init(&sensor_2, &hi2c1, 0x41);
  	INA219_Init(&sensor_3, &hi2c1, 0x44);
  	INA219_Init(&sensor_4, &hi2c1, 0x45);
  	INA219_setCalibration_32V_2A(&sensor_1);
  	INA219_setCalibration_32V_2A(&sensor_2);
 	INA219_setCalibration_32V_2A(&sensor_3);
  	INA219_setCalibration_32V_2A(&sensor_4);
  	SSD1306_Init ();
  	//ARGB_Init();
    //ARGB_SetBrightness(255);

  	buffer[0] = 0xff;
  	buffer[1] = 0xfd;
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
	  HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_13);
	  HAL_Delay(500);
	  INA219GetAll(&sensor_1);
	  INA219GetAll(&sensor_2);
	  INA219GetAll(&sensor_3);
	  INA219GetAll(&sensor_4);
	  buffer[2] = (sensor_1.voltage >> 8) & 0xff;
	  buffer[3] = (sensor_1.voltage >> 0) & 0xff;
	  buffer[4] = (sensor_2.voltage >> 8) & 0xff;
	  buffer[5] = (sensor_3.voltage >> 0) & 0xff;
	  buffer[6] = (sensor_3.voltage >> 8) & 0xff;
	  buffer[7] = (sensor_3.voltage >> 0) & 0xff;
	  buffer[8] = (sensor_4.voltage >> 8) & 0xff;
	  buffer[9] = (sensor_4.voltage >> 0) & 0xff;
	  buffer[10] = (sensor_1.current >> 8) & 0xff;
	  buffer[11] = (sensor_1.current >> 0) & 0xff;
	  buffer[12] = (sensor_2.current >> 8) & 0xff;
	  buffer[13] = (sensor_3.current >> 0) & 0xff;
	  buffer[14] = (sensor_3.current >> 8) & 0xff;
	  buffer[15] = (sensor_3.current >> 0) & 0xff;
	  buffer[16] = (sensor_4.current >> 8) & 0xff;
	  buffer[17] = (sensor_4.current >> 0) & 0xff;
	  buffer[18] = pwm_1.long_imp;
	  buffer[19] = pwm_2.long_imp;
	  buffer[20] = pwm_3.long_imp;
	  buffer[21] = pwm_4.long_imp;
	  SSD1306_GotoXY (3,3); // goto 10, 10
	  sprintf(c, "Vb=%.1fV", sensor_1.voltage);
	  SSD1306_Puts (&c, &Font_7x10, 1); // print Hello
	  SSD1306_GotoXY (3, 19);
	  sprintf(c, "Ib=%.1fA", (double) sensor_1.current);
	  SSD1306_Puts (&c, &Font_7x10, 1);
	  SSD1306_GotoXY (3, 35);
	  sprintf(c, "I5V=%.1fA", (double) sensor_2.voltage);
	  SSD1306_Puts (&c, &Font_7x10, 1);
	  SSD1306_GotoXY (3, 50);
	  sprintf(c, "I12=%.1fA", (double) sensor_3.current);
	  SSD1306_Puts (&c, &Font_7x10, 1);
	  SSD1306_GotoXY (70, 3);
	  sprintf(c, "PWM1=%.0f", (double) pwm_1.long_imp);
	  SSD1306_Puts (&c, &Font_7x10, 1);
	  SSD1306_GotoXY (70, 19);
	  sprintf(c, "PWM2=%.0f", (double) pwm_2.long_imp);
	  SSD1306_Puts (&c, &Font_7x10, 1);
	  SSD1306_GotoXY (70, 35);
	  sprintf(c, "PWM3=%.0f", (double) pwm_3.long_imp);
	  SSD1306_Puts (&c, &Font_7x10, 1);
	  SSD1306_GotoXY (70, 50);
	  sprintf(c, "PWM4=%.0f", pwm_4.long_imp);
	  SSD1306_Puts (&c, &Font_7x10, 1);

	    SSD1306_UpdateScreen();
	 // if((sensor_1.current > 2000) || (sensor_2.current > 2000) || (sensor_3.current > 2000) || (sensor_4.current > 2000)){
		//  ARGB_FillRGB(255, 0, 0);
		  //установка начального положения
		 // SSD1306_Putc(sensor_1.voltage, &Font_11x18, 1);

//	  } else if ((sensor_1.voltage < 9) || (sensor_2.voltage < 9)) {
//		  ARGB_FillRGB(255, 0, 0);
//
//
//	  } else {
//		  ARGB_FillRGB(0, 255, 0);
//
//
//	  }
	  HAL_Delay(100);
	  HAL_UART_Transmit(&huart1, buffer, 25, 100);


    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
 }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI_DIV2;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL16;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
	/* User can add his own implementation to report the HAL error return state */
	__disable_irq();
	while (1)
	{
	}
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
	/* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
