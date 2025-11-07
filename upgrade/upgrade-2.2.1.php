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
 * Upgrade to 2.2.1
 *
 * @param $module Colissimo
 * @return bool
 */
function upgrade_module_2_2_1($module)
{
    Configuration::updateValue('COLISSIMO_DISPLAY_DELIVERY_DATE', '');
    $deliveryDateOptions = [
        'cutoff_hours' => [
            'monday'    => '15:00',
            'tuesday'   => '15:00',
            'wednesday' => '15:00',
            'thursday'  => '15:00',
            'friday'    => '15:00',
            'saturday'  => '11:00',
        ],
        'regate_code'  => '',
        'text'         => '',
        'text_color'   => '#000000',
        'text_police'  => 'Arial',
    ];
    Configuration::updateValue('COLISSIMO_DELIVERY_DATE_OPTIONS', json_encode($deliveryDateOptions));
    $module->registerHook('actionGetOrderShipments');
    renameColissimoOrdersTab();
    hideVisibleTabs();

    return true;
}

function hideVisibleTabs()
{
    $tabsToHide = [
        'AdminColissimoDashboard',
        'AdminColissimoAffranchissement',
        'AdminColissimoDepositSlip',
        'AdminColissimoColiship',
        'AdminColissimoCustomsDocuments',
    ];

    foreach ($tabsToHide as $className) {
        $idTab = Tab::getIdFromClassName($className);
        if ($idTab) {
            $tab = new Tab($idTab);
            $tab->active = false;
            $tab->save();
        }
    }
}

function renameColissimoOrdersTab()
{
    $tabClassName = 'AdminColissimoOrders';
    $idTab = Tab::getIdFromClassName($tabClassName);
    if ($idTab) {
        $tab = new Tab($idTab);
        $languages = Language::getLanguages(false);
        foreach ($languages as $lang) {
            $tab->name[$lang['id_lang']] = 'Colissimo';
        }
        $tab->save();
    }
}


