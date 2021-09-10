/*! @file : led.h
 * @author  Ana Alarcon Pasos
 * @version 1.0.0
 * @date    10 sep 2021
 * @brief   Driver para controlar leds de tarjeta FRDM-K32L2B3
 * @details
 *
 */
#ifndef IOT_SDK_PERIPHERALS_LED_H_
#define IOT_SDK_PERIPHERALS_LED_H_
/*******************************************************************************
 * Includes
 ******************************************************************************/


/*!
 * @addtogroup X PERIPHERALS
 * @{
 */
/*!
 * @addtogroup X LEDS
 * @{
 */
/*******************************************************************************
 * Public Definitions
 ******************************************************************************/

/*******************************************************************************
 * External vars
 ******************************************************************************/

/*******************************************************************************
 * Public vars
 ******************************************************************************/

/*******************************************************************************
 * Public Prototypes
 ******************************************************************************/
/*!
 * @brief enciende led verde de tarjeta FRDM-K32L2B3
 *
 */
void encender_led_verde();

/*!
 * @brief apaga led verde de tarjeta FRDM-K32L2B3
 *
 */
void apagar_led_verde();



/** @} */ // end of X LEDS
/** @} */ // end of X PERIPHERALS

#endif /* IOT_SDK_PERIPHERALS_LED_H_ */
