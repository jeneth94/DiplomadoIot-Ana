/*! @file : sensor_de_luz.c
 * @author  Ana Alarcon Pasos
 * @version 1.0.0
 * @date    10 sep 2021
 * @brief   Driver para 
 * @details
 *
*/
/*******************************************************************************
 * Includes
 ******************************************************************************/
#include "sensor_de_luz.h"
/*******************************************************************************
 * Definitions
 ******************************************************************************/
#define SENSOR_DE_LUZ_ADC16_BASE          ADC0
#define SENSOR_DE_LUZ_ADC16_CHANNEL_GROUP 0U
#define SENSOR_DE_LUZ_ADC16_USER_CHANNEL  3U /* PTE22, ADC0_SE3 */

/*******************************************************************************
 * Private Prototypes
 ******************************************************************************/
/*!
 * @brief Inicia captura por ADC de Voltaje generado por sensor de luz
 *
 */
void SensorDeLuzIniciarCaptura(void);
/*!
 * @brief Espera a que finalice el trabajo del ADC
 *
 */
void SensorDeLuzEsperarResultado(void);

/*******************************************************************************
 * External vars
 ******************************************************************************/


/*******************************************************************************
 * Local vars
 ******************************************************************************/


/*******************************************************************************
 * Private Source Code
 ******************************************************************************/
void SensorDeLuzIniciarCaptura(void){
	 ADC16_SetChannelConfig(SENSOR_DE_LUZ_ADC16_BASE, SENSOR_DE_LUZ_ADC16_CHANNEL_GROUP, &ADC0_channelsConfig[0]);

}

/*----------------------------------------------------------------------------*/
void SensorDeLuzEsperarResultado(void){
	  while (0U == (kADC16_ChannelConversionDoneFlag & ADC16_GetChannelStatusFlags(SENSOR_DE_LUZ_ADC16_BASE, SENSOR_DE_LUZ_ADC16_CHANNEL_GROUP)))
	        {
	        }

}


/*******************************************************************************
 * Public Source Code
 ******************************************************************************/


float  SensorDeLuzObtenerDatoADC(void){

	float resultadoADC;
	SensorDeLuzIniciarCaptura();
	SensorDeLuzEsperarResultado();
	resultadoADC=ADC16_GetChannelConversionValue(SENSOR_DE_LUZ_ADC16_BASE, SENSOR_DE_LUZ_ADC16_CHANNEL_GROUP);
	resultadoADC = (2*(3.3-(3.3/resultadoADC)))*100;


	return (resultadoADC);

}
