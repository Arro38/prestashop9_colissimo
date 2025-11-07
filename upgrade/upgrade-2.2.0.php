<?php
/**
 * 2007-2024 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author     PrestaShop SA <contact@prestashop.com>
 * @copyright  2007-2024 PrestaShop SA
 * @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 *  International Registered Trademark & Property of PrestaShop SA
 */
if (!defined('_PS_VERSION_')) {
    exit;
}

/**
 * Upgrade to 2.2.0
 *
 * @param $module Colissimo
 * @return bool
 */
function upgrade_module_2_2_0($module)
{
    Configuration::updateValue('COLISSIMO_WIDGET_RELAY_FILTER', '1');
    Configuration::updateValue('COLISSIMO_OSM_RELAY_FILTER', '1');
    Configuration::updateValue('COLISSIMO_WIDGET_RELAY_FILTER_MOBILE', '1');
    Configuration::updateValue('COLISSIMO_OSM_RELAY_FILTER_MOBILE', '1');

    Configuration::deleteByName('COLISSIMO_WIDGET_OSM_TYPE_POINT');
    Configuration::deleteByName('COLISSIMO_WIDGET_OSM_TYPE_POINT_MOBILE');
    Configuration::deleteByName('COLISSIMO_WIDGET_OSM_BPR');
    Configuration::deleteByName('COLISSIMO_WIDGET_OSM_BPR_MOBILE');
    Configuration::deleteByName('COLISSIMO_WIDGET_OSM_A2P');
    Configuration::deleteByName('COLISSIMO_WIDGET_OSM_A2P_MOBILE');
    Configuration::deleteByName('COLISSIMO_WIDGET_OSM_CMT');
    Configuration::deleteByName('COLISSIMO_WIDGET_OSM_CMT_MOBILE');
    Configuration::deleteByName('COLISSIMO_WIDGET_OSM_PCS');
    Configuration::deleteByName('COLISSIMO_WIDGET_OSM_PCS_MOBILE');
    Configuration::deleteByName('COLISSIMO_WIDGET_OSM_BDP');
    Configuration::deleteByName('COLISSIMO_WIDGET_OSM_BDP_MOBILE');

    return true;
}
