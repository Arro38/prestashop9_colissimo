{*
* 2007-2024 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
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
*  @author     PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2024 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<form class="form-horizontal"
      action="#"
      name="colissimo_widget_config_form"
      id="colissimo-widget-config-form"
      method="post"
      enctype="multipart/form-data">
    <div class="alert alert-info">
        {l s='While installing the module, 4 carriers have been created.' mod='colissimo'}<br/>
        <a href="{$link->getAdminLink('AdminCarriers')|escape:'htmlall':'UTF-8'}"
           target="_blank">{l s='Click here to configure their zones, ranges and prices.' mod='colissimo'}</a><br/><br/>
        <b><i class="icon icon-warning"></i> {l s='In order for the module to work properly, please do not delete these carriers' mod='colissimo'}
        </b>
    </div>
    <div class="panel">
        <div class="panel-heading">
            <i class="icon-cogs"></i>
            {l s='Settings' mod='colissimo'}
        </div>
        <div class="form-group">
            <label class="control-label col-lg-3 ">
          <span class="label-tooltip"
                data-toggle="tooltip"
                data-html="true"
                data-original-title="{l s='Add customs fees to delivery' mod='colissimo'}">
            {l s='Active delivery duty paid' mod='colissimo'}
          </span>
            </label>
            <div class="col-lg-9 colissimo-active-ddp">
          <span class="switch prestashop-switch fixed-width-lg">
            <input type="radio"
                   value="1"
                   name="COLISSIMO_ENABLE_DDP"
                   id="COLISSIMO_ENABLE_DDP_on"
                   {if $form_data['COLISSIMO_ENABLE_DDP']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_ENABLE_DDP_on">{l s='Yes' mod='colissimo'}</label>
            <input type="radio"
                   value="0"
                   name="COLISSIMO_ENABLE_DDP"
                   id="COLISSIMO_ENABLE_DDP_off"
                   {if !$form_data['COLISSIMO_ENABLE_DDP']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_ENABLE_DDP_off">{l s='No' mod='colissimo'}</label>
            <a class="slide-button btn"></a>
          </span>
            </div>
            <div class="col-lg-9 col-lg-offset-3"></div>
        </div>
        <div class="colissimo-ddp-costs">
            <div class="alert alert-info">
                {l s='Since 29/08, the United States requires customs duties to be paid by the exporter (and no longer by the recipient), which means that shipments must be sent exclusively with ' mod='colissimo'}<br/>
                <a href="https://www.colissimo.entreprise.laposte.fr/offres-et-services/options-et-services"
                   target="_blank">{l s='the DDP (Delivered Duty Paid) ' mod='colissimo'}</a>
                {l s=' option: customs duties on items must be paid to US Customs before these items enter the United States' mod='colissimo'}<br/>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-3 ">
                    <span> {l s='Default DDP cost' mod='colissimo'}</span>
                </label>
                <div class="col-lg-9">
                    <div class="input-group input fixed-width-xs">
                        <input type="text"
                               name="COLISSIMO_DDP_COST"
                               value="{$form_data['COLISSIMO_DDP_COST']|escape:'htmlall':'UTF-8'}"
                               class="input fixed-width-xl"
                               onchange="this.value = this.value.replace(/,/g, '.')">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-3 ">
                    <span> {l s='GB DDP cost' mod='colissimo'}</span>
                </label>
                <div class="col-lg-9">
                    <div class="input-group input fixed-width-xs">
                        <input type="text"
                               name="COLISSIMO_DDP_GB_COST"
                               value="{$form_data['COLISSIMO_DDP_GB_COST']|escape:'htmlall':'UTF-8'}"
                               class="input fixed-width-xl"
                               onchange="this.value = this.value.replace(/,/g, '.')">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-3 ">
                    <span> {l s='USA DDP cost' mod='colissimo'}</span>
                </label>
                <div class="col-lg-9">
                    <div class="input-group input fixed-width-xs">
                        <input type="text"
                               name="COLISSIMO_DDP_US_COST"
                               value="{$form_data['COLISSIMO_DDP_US_COST']|escape:'htmlall':'UTF-8'}"
                               class="input fixed-width-xl"
                               onchange="this.value = this.value.replace(/,/g, '.')">
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-lg-3 ">
          <span class="label-tooltip"
                data-toggle="tooltip"
                data-html="true"
                data-original-title="{l s='Display door codes on the front' mod='colissimo'}">
            {l s='Activate door codes' mod='colissimo'}
          </span>
            </label>
            <div class="col-lg-9 colissimo-active-door-codes">
          <span class="switch prestashop-switch fixed-width-lg">
            <input type="radio"
                   value="1"
                   name="COLISSIMO_ENABLE_DOOR_CODES"
                   id="COLISSIMO_ENABLE_DOOR_CODES_on"
                   {if $form_data['COLISSIMO_ENABLE_DOOR_CODES']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_ENABLE_DOOR_CODES_on">{l s='Yes' mod='colissimo'}</label>
            <input type="radio"
                   value="0"
                   name="COLISSIMO_ENABLE_DOOR_CODES"
                   id="COLISSIMO_ENABLE_DOOR_CODES_off"
                   {if !$form_data['COLISSIMO_ENABLE_DOOR_CODES']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_ENABLE_DOOR_CODES_off">{l s='No' mod='colissimo'}</label>
            <a class="slide-button btn"></a>
          </span>
            </div>
            <div class="col-lg-9 col-lg-offset-3"></div>
        </div>
        <div class="form-group">
            <label class="control-label col-lg-3 ">
          <span class="label-tooltip"
                data-toggle="tooltip"
                data-html="true">
            {l s='Weight Colissimo prices' mod='colissimo'}
          </span>
            </label>
            <div class="col-lg-9 colissimo-weighting-prices">
          <span class="switch prestashop-switch fixed-width-lg">
            <input type="radio"
                   value="1"
                   name="COLISSIMO_WEIGHTING_PRICES"
                   id="COLISSIMO_WEIGHTING_PRICES_on"
                   {if $form_data['COLISSIMO_WEIGHTING_PRICES']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_WEIGHTING_PRICES_on">{l s='Yes' mod='colissimo'}</label>
            <input type="radio"
                   value="0"
                   name="COLISSIMO_WEIGHTING_PRICES"
                   id="COLISSIMO_WEIGHTING_PRICES_off"
                   {if !$form_data['COLISSIMO_WEIGHTING_PRICES']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_WEIGHTING_PRICES_off">{l s='No' mod='colissimo'}</label>
            <a class="slide-button btn"></a>
          </span>
            </div>
            <div class="col-lg-9 col-lg-offset-3"></div>
        </div>
        <div class="form-group colissimo-weighting-type">
            <label class="control-label col-lg-3">{l s='Weighting type' mod='colissimo'}</label>
            <div class="col-lg-9">
                <div class="radio ">
                    <label><input type="radio" name="COLISSIMO_WEIGHTING_TYPE" id="type-percent" value="percent"
                                  {if $form_data['COLISSIMO_WEIGHTING_TYPE'] == 'percent'}checked="checked"{/if}>{l s='Percentage' mod='colissimo'}
                    </label>
                </div>
                <div class="radio ">
                    <label><input type="radio" name="COLISSIMO_WEIGHTING_TYPE" id="type-amount" value="amount"
                                  {if $form_data['COLISSIMO_WEIGHTING_TYPE'] == 'amount'}checked="checked"{/if}>{l s='Amount' mod='colissimo'}
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group colissimo-weighting-value-percent">
            <label class="control-label col-lg-3">{l s='Percent' mod='colissimo'}</label>
            <div class="col-lg-9">
                <div class="input-group fixed-width-xs">
                    <span class="input-group-addon">%</span>
                    <input type="text" name="COLISSIMO_WEIGHTING_VALUE_PERCENT"
                           value="{$form_data['COLISSIMO_WEIGHTING_VALUE_PERCENT']|floatval}" class="fixed-width-xs">
                </div>
            </div>
        </div>
        <div class="form-group colissimo-weighting-value-amount">
            <label class="control-label col-lg-3">{l s='Amount' mod='colissimo'}</label>
            <div class="col-lg-9">
                <div class="input-group fixed-width-sm">
                    <span class="input-group-addon">{$defaultCurrency->iso_code|escape:'htmlall':'UTF-8'}</span>
                    <input type="text" name="COLISSIMO_WEIGHTING_VALUE_AMOUNT"
                           value="{$form_data['COLISSIMO_WEIGHTING_VALUE_AMOUNT']|floatval}" class="fixed-width-sm">
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <button type="submit" class="btn btn-default pull-right" name="submitColissimoFrontConfiguration">
                <i class="process-icon-save"></i> {l s='Save' mod='colissimo'}
            </button>
        </div>
    </div>
    <div class="panel">
        <div class="panel-heading">
            {l s='Estimated delivery date' mod='colissimo'}
        </div>
        <div class="row">
            <div class="form-group">
                <label class="control-label col-lg-3 ">
                       <span>{l s='Display the date in the checkout process' mod='colissimo'}</span>
                </label>
                <div class="col-lg-9 display-delivery-date">
          <span class="switch prestashop-switch fixed-width-lg">
            <input type="radio"
                   value="1"
                   name="COLISSIMO_DISPLAY_DELIVERY_DATE"
                   id="COLISSIMO_DISPLAY_DELIVERY_DATE_on"
                   {if $form_data['COLISSIMO_DISPLAY_DELIVERY_DATE']|intval}checked="checked"{/if} disabled>
            <label for="COLISSIMO_DISPLAY_DELIVERY_DATE_on">{l s='Yes' mod='colissimo'}</label>
            <input type="radio"
                   value="0"
                   name="COLISSIMO_DISPLAY_DELIVERY_DATE"
                   id="COLISSIMO_DISPLAY_DELIVERY_DATE_off"
                   {if !$form_data['COLISSIMO_DISPLAY_DELIVERY_DATE']|intval}checked="checked"{/if} disabled>
            <label for="COLISSIMO_DISPLAY_DELIVERY_DATE_off">{l s='No' mod='colissimo'}</label>
            <a class="slide-button btn"></a>
          </span>
                </div>
                <div class="col-lg-9 col-lg-offset-3">
                    <div x-ms-format-detection="none" class="help-block">
                        {l s='Please contact your Colissimo sales representative to activate the option' mod='colissimo'}
                        <span></span>
                    </div>
                </div>
            </div>
            <div class="colissimo-delivery-date-config">
                <div class="form-group">
                    <label class="control-label col-lg-3">
                        <span class="label-tooltip"
                              data-toggle="tooltip"
                              data-html="true"
                              data-original-title="{l s='Select your Colissimo drop-off location' mod='colissimo'}">{l s='Drop-off location' mod='colissimo'}
                        </span>
                    </label>
                    <div class="col-lg-9">
                        <select name="COLISSIMO_REGATE_CODE" class=" fixed-width-xl">
                            {if $form_data.COLISSIMO_SITE_DEPOT_LIST}
                                {foreach $form_data['COLISSIMO_SITE_DEPOT_LIST'] as  $item}
                                    <option value="{$item.codeRegate|escape:'htmlall':'UTF-8'}"
                                            {if $form_data['COLISSIMO_DELIVERY_DATE_OPTIONS']['regate_code'] == $item.codeRegate}selected{/if}>
                                        {$item.libellepfc|escape:'htmlall':'UTF-8'}
                                    </option>
                                {/foreach}
                            {/if}
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-3 ">
                        <span class="label-tooltip"
                              data-toggle="tooltip"
                              data-html="true"
                              data-original-title="{l s='Cut-off times represent the deadlines for sending parcels to Colissimo. After this time, you confirm that orders will not be sent the same day.' mod='colissimo'}<br>{l s='Example:' mod='colissimo'}<br>{l s='If you set a cut-off time of 5 p.m. on Thursday, this means that the delivery date calculation for all orders placed after this time will be based on the following day.' mod='colissimo'}<br>{l s='The cut-off time must take into account your preparation time and the drop-off times configured in your Colissimo account to calculate the delivery date.' mod='colissimo'}">{l s='Cut-off time' mod='colissimo'}
                        </span>
                    </label>
                    <div class="col-lg-9"></div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-3">
                        <span>{l s='Monday' mod='colissimo'}</span>
                    </label>
                    <div class="col-lg-9">
                        <select name="COLISSIMO_CUTOFF_MONDAY" class="fixed-width-xl">
                            {section name=h start=0 loop=24}
                                {assign var=hour value=sprintf("%02d:00", $smarty.section.h.index)}
                                <option value="{$hour}"
                                        {if $form_data['COLISSIMO_DELIVERY_DATE_OPTIONS']['cutoff_hours']['monday'] == $hour}selected{/if}>
                                    {$hour}
                                </option>
                            {/section}
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-3">
                        <span>{l s='Tuesday' mod='colissimo'}</span>
                    </label>
                    <div class="col-lg-9">
                        <select name="COLISSIMO_CUTOFF_TUESDAY" class="fixed-width-xl">
                            {section name=h start=0 loop=24}
                                {assign var=hour value=sprintf("%02d:00", $smarty.section.h.index)}
                                <option value="{$hour}"
                                        {if $form_data['COLISSIMO_DELIVERY_DATE_OPTIONS']['cutoff_hours']['tuesday'] == $hour}selected{/if}>
                                    {$hour}
                                </option>
                            {/section}
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-3">
                        <span>{l s='Wednesday' mod='colissimo'}</span>
                    </label>
                    <div class="col-lg-9">
                        <select name="COLISSIMO_CUTOFF_WEDNESDAY" class="fixed-width-xl">
                            {section name=h start=0 loop=24}
                                {assign var=hour value=sprintf("%02d:00", $smarty.section.h.index)}
                                <option value="{$hour}"
                                        {if $form_data['COLISSIMO_DELIVERY_DATE_OPTIONS']['cutoff_hours']['wednesday'] == $hour}selected{/if}>
                                    {$hour}
                                </option>
                            {/section}
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-3">
                        <span>{l s='Thursday' mod='colissimo'}</span>
                    </label>
                    <div class="col-lg-9">
                        <select name="COLISSIMO_CUTOFF_THURSDAY" class="fixed-width-xl">
                            {section name=h start=0 loop=24}
                                {assign var=hour value=sprintf("%02d:00", $smarty.section.h.index)}
                                <option value="{$hour}"
                                        {if $form_data['COLISSIMO_DELIVERY_DATE_OPTIONS']['cutoff_hours']['thursday'] == $hour}selected{/if}>
                                    {$hour}
                                </option>
                            {/section}
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-3">
                        <span>{l s='Friday' mod='colissimo'}</span>
                    </label>
                    <div class="col-lg-9">
                        <select name="COLISSIMO_CUTOFF_FRIDAY" class="fixed-width-xl">
                            {section name=h start=0 loop=24}
                                {assign var=hour value=sprintf("%02d:00", $smarty.section.h.index)}
                                <option value="{$hour}"
                                        {if $form_data['COLISSIMO_DELIVERY_DATE_OPTIONS']['cutoff_hours']['friday'] == $hour}selected{/if}>
                                    {$hour}
                                </option>
                            {/section}
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-3">
                        <span>{l s='Saturday' mod='colissimo'}</span>
                    </label>
                    <div class="col-lg-9">
                        <select name="COLISSIMO_CUTOFF_SATURDAY" class="fixed-width-xl">
                            {section name=h start=0 loop=24}
                                {assign var=hour value=sprintf("%02d:00", $smarty.section.h.index)}
                                <option value="{$hour}"
                                        {if $form_data['COLISSIMO_DELIVERY_DATE_OPTIONS']['cutoff_hours']['saturday'] == $hour}selected{/if}>
                                    {$hour}
                                </option>
                            {/section}
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-3 ">
                        <span> {l s='Message to display' mod='colissimo'}</span>
                    </label>
                    <div class="col-lg-9">
                        <div class="input-group input fixed-width-xxl">
                            <input type="text"
                                   name="COLISSIMO_DELIVERY_DATE_MESSAGE"
                                   value="{if isset($form_data['COLISSIMO_DELIVERY_DATE_OPTIONS']['text'])}{$form_data['COLISSIMO_DELIVERY_DATE_OPTIONS']['text']}{/if}"
                                   class="input">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-3 ">
                        <span> {l s='Text color' mod='colissimo'}</span>
                    </label>
                    <div class="col-lg-9">
                        <div class="input-group fixed-width-lg">
                            <input type="color"
                                   data-hex="true"
                                   class="color mColorPickerInput"
                                   name="COLISSIMO_DELIVERY_DATE_COLOR"
                                   value="{if isset($form_data['COLISSIMO_DELIVERY_DATE_OPTIONS']['text_color'])}{$form_data['COLISSIMO_DELIVERY_DATE_OPTIONS']['text_color']}{/if}">

                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-3 ">
                        <span>{l s='Text font' mod='colissimo'}</span>
                    </label>
                    <div class="col-lg-9">
                        <select name="COLISSIMO_DELIVERY_DATE_FONT" class="fixed-width-xxl">
                            {foreach $widget_fonts as $font}
                                <option value="{$font|escape:'htmlall':'UTF-8'}"
                                        {if $font == $form_data['COLISSIMO_DELIVERY_DATE_OPTIONS']['text_police']|escape:'htmlall':'UTF-8'}selected="selected"{/if}>
                                    {$font|escape:'htmlall':'UTF-8'}
                                </option>
                            {/foreach}
                        </select>
                    </div>
                    <div class="col-lg-9 col-lg-offset-3"></div>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <button type="submit" class="btn btn-default pull-right" name="submitColissimoDeliveryDateConfig">
                <i class="process-icon-save"></i> {l s='Save' mod='colissimo'}
            </button>
        </div>
    </div>
    <div class="panel">
        <div class="panel-heading">
            {l s='Phone field for pick-up points' mod='colissimo'}
        </div>
        <div class="row">
            <div class="form-group">
                <label class="control-label col-lg-3 ">
          <span class="label-tooltip"
                data-toggle="tooltip"
                data-html="true"
                data-original-title="{l s='Make the field optional' mod='colissimo'}">
            {l s='Make the field optional' mod='colissimo'}
          </span>
                </label>
                <div class="col-lg-9">
          <span class="switch prestashop-switch fixed-width-lg ">
            <input type="radio"
                   value="1"
                   name="COLISSIMO_WIDGET_PHONE"
                   id="COLISSIMO_WIDGET_PHONE_on"
                   {if $form_data['COLISSIMO_WIDGET_PHONE']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_WIDGET_PHONE_on">{l s='Yes' mod='colissimo'}</label>
            <input type="radio"
                   value="0"
                   name="COLISSIMO_WIDGET_PHONE"
                   id="COLISSIMO_WIDGET_PHONE_off"
                   {if !$form_data['COLISSIMO_WIDGET_PHONE']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_WIDGET_PHONE_off">{l s='No' mod='colissimo'}</label>
            <a class="slide-button btn"></a>
          </span>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <button type="submit" class="btn btn-default pull-right" name="submitColissimoWidgetPhone">
                <i class="process-icon-save"></i> {l s='Save' mod='colissimo'}
            </button>
        </div>
    </div>
    <div class="panel">
        <div class="panel-heading">
            {l s='Pick-up service - Desktop display' mod='colissimo'}
        </div>
        <div class="row">
            <div class="form-group">
                <label class="control-label col-lg-3 ">
          <span class="label-tooltip"
                data-toggle="tooltip"
                data-html="true"
                data-original-title="{l s='Choosing "Yes" (default option) the widget will be on the native one made by Colissimo.' mod='colissimo'}<br />{l s='Choose "No" and you will use the OpenStreetMap widget' mod='colissimo'}">
            {l s='Use native Colissimo widget' mod='colissimo'}
          </span>
                </label>
                <div class="col-lg-9 colissimo-native-desktop-toggle">
          <span class="switch prestashop-switch fixed-width-lg ">
            <input type="radio"
                   value="1"
                   name="COLISSIMO_WIDGET_NATIVE"
                   id="COLISSIMO_WIDGET_NATIVE_on"
                   {if $form_data['COLISSIMO_WIDGET_NATIVE']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_WIDGET_NATIVE_on">{l s='Yes' mod='colissimo'}</label>
            <input type="radio"
                   value="0"
                   name="COLISSIMO_WIDGET_NATIVE"
                   id="COLISSIMO_WIDGET_NATIVE_off"
                   {if !$form_data['COLISSIMO_WIDGET_NATIVE']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_WIDGET_NATIVE_off">{l s='No' mod='colissimo'}</label>
            <a class="slide-button btn"></a>
          </span>
                </div>
                <div class="col-lg-9 col-lg-offset-3">
                    <div x-ms-format-detection="none" class="help-block">
                        {l s='Do not forget to empty PrestaShop cache if you change this option' mod='colissimo'}
                        <span></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="row colissimo-osm-desktop">
            <div class="form-group">
                <label class="control-label col-lg-3 ">
          <span class="label-tooltip"
                data-toggle="tooltip"
                data-html="true"
                data-original-title="{l s='Otherwise it will be displayed directly in the page' mod='colissimo'}">
            {l s='Display widget in a modal' mod='colissimo'}
          </span>
                </label>
                <div class="col-lg-9">
          <span class="switch prestashop-switch fixed-width-lg">
            <input type="radio"
                   value="1"
                   name="COLISSIMO_WIDGET_OSM_MAP_MODAL"
                   id="COLISSIMO_WIDGET_OSM_MAP_MODAL_on"
                   {if $form_data['COLISSIMO_WIDGET_OSM_MAP_MODAL']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_WIDGET_OSM_MAP_MODAL_on">{l s='Yes' mod='colissimo'}</label>
            <input type="radio"
                   value="0"
                   name="COLISSIMO_WIDGET_OSM_MAP_MODAL"
                   id="COLISSIMO_WIDGET_OSM_MAP_MODAL_off"
                   {if !$form_data['COLISSIMO_WIDGET_OSM_MAP_MODAL']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_WIDGET_OSM_MAP_MODAL_off">{l s='No' mod='colissimo'}</label>
            <a class="slide-button btn"></a>
          </span>
                </div>
                <div class="col-lg-9 col-lg-offset-3"></div>
            </div>
            <hr/>
            <div class="col-lg-9 col-lg-offset-3">
                <p class="colissimo-subtitle">{l s='General pickup points customization' mod='colissimo'}</p>
            </div>
            <div class="row colissimo-filter-osm-desktop">
                <div class="form-group">
                    <label class="control-label col-lg-3">
                        <span>{l s='Filter Relay' mod='colissimo'}</span>
                    </label>
                    <div class="col-lg-9">
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_OSM_RELAY_FILTER" value="0"
                                       {if $form_data['COLISSIMO_OSM_RELAY_FILTER'] == '0'}checked="checked"{/if}>
                                {l s='Post offices only' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_OSM_RELAY_FILTER" value="1"
                                       {if $form_data['COLISSIMO_OSM_RELAY_FILTER'] == '1'}checked="checked"{/if}>
                                {l s='All pickup points' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_OSM_RELAY_FILTER" value="2"
                                       {if $form_data['COLISSIMO_OSM_RELAY_FILTER'] == '2'}checked="checked"{/if}>
                                {l s='Pickup points only' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_OSM_RELAY_FILTER" value="3"
                                       {if $form_data['COLISSIMO_OSM_RELAY_FILTER'] == '3'}checked="checked"{/if}>
                                {l s='Pickup partner shops only' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_OSM_RELAY_FILTER" value="5"
                                       {if $form_data['COLISSIMO_OSM_RELAY_FILTER'] == '5'}checked="checked"{/if}>
                                {l s='Post offices and pickup partner shops' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_OSM_RELAY_FILTER" value="10"
                                       {if $form_data['COLISSIMO_OSM_RELAY_FILTER'] == '10'}checked="checked"{/if}>
                                {l s='All points except Pickup lockers' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_OSM_RELAY_FILTER" value="11"
                                       {if $form_data['COLISSIMO_OSM_RELAY_FILTER'] == '11'}checked="checked"{/if}>
                                {l s='All points except Pickme neighbor points' mod='colissimo'}
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group"><label class="control-label col-lg-3 ">
                    <span>{l s='Number of pickup points to be displayed' mod='colissimo'}</span>
                </label>
                <div class="col-lg-9">
                    <select name="COLISSIMO_WIDGET_OSM_NUMBER_POINT" class=" fixed-width-xxl">
                        {foreach $osm_number_pdr as $id => $number}
                            <option {if $number == $form_data['COLISSIMO_WIDGET_OSM_NUMBER_POINT']|escape:'htmlall':'UTF-8'}selected="selected"{/if}
                                    value="{$number|intval}">
                                {$number|escape:'htmlall':'UTF-8'}
                            </option>
                        {/foreach}
                    </select>
                </div>
                <div class="col-lg-9 col-lg-offset-3"></div>
            </div>
        </div>
        <div class="row colissimo-osm-native">
            <div class="form-group">
                <label class="control-label col-lg-3 ">
          <span class="label-tooltip"
                data-toggle="tooltip"
                data-html="true"
                data-original-title="{l s='Choosing "Yes" (default option) will give you access to the latest features of the Widget.' mod='colissimo'}<br />{l s='Choose "No" if you experience any problems with the display of the Widget (conflict with other modules or theme). The module will use local files that you will be able to override if needed.' mod='colissimo'}">
            {l s='Use default Colissimo widget' mod='colissimo'}
          </span>
                </label>
                <div class="col-lg-9">
          <span class="switch prestashop-switch fixed-width-lg ">
            <input type="radio"
                   value="1"
                   name="COLISSIMO_WIDGET_REMOTE"
                   id="COLISSIMO_WIDGET_REMOTE_on"
                   {if $form_data['COLISSIMO_WIDGET_REMOTE']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_WIDGET_REMOTE_on">{l s='Yes' mod='colissimo'}</label>
            <input type="radio"
                   value="0"
                   name="COLISSIMO_WIDGET_REMOTE"
                   id="COLISSIMO_WIDGET_REMOTE_off"
                   {if !$form_data['COLISSIMO_WIDGET_REMOTE']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_WIDGET_REMOTE_off">{l s='No' mod='colissimo'}</label>
            <a class="slide-button btn"></a>
          </span>
                </div>
                <div class="col-lg-9 col-lg-offset-3">
                    <div x-ms-format-detection="none" class="help-block">
                        {l s='Do not forget to empty PrestaShop cache if you change this option' mod='colissimo'}
                        <span></span>
                    </div>
                </div>
            </div>
            <div class="row colissimo-filter-widget-desktop">
                <div class="form-group">
                    <label class="control-label col-lg-3">
                        <span>{l s='Filter Relay' mod='colissimo'}</span>
                    </label>
                    <div class="col-lg-9">
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_WIDGET_RELAY_FILTER" value="0"
                                       {if $form_data['COLISSIMO_WIDGET_RELAY_FILTER'] == '0'}checked="checked"{/if}>
                                {l s='Post offices only' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_WIDGET_RELAY_FILTER" value="1"
                                       {if $form_data['COLISSIMO_WIDGET_RELAY_FILTER'] == '1'}checked="checked"{/if}>
                                {l s='All pickup points' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_WIDGET_RELAY_FILTER" value="2"
                                       {if $form_data['COLISSIMO_WIDGET_RELAY_FILTER'] == '2'}checked="checked"{/if}>
                                {l s='Pickup points only' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_WIDGET_RELAY_FILTER" value="3"
                                       {if $form_data['COLISSIMO_WIDGET_RELAY_FILTER'] == '3'}checked="checked"{/if}>
                                {l s='Pickup partner shops only' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_WIDGET_RELAY_FILTER" value="5"
                                       {if $form_data['COLISSIMO_WIDGET_RELAY_FILTER'] == '5'}checked="checked"{/if}>
                                {l s='Post offices and pickup partner shops' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_WIDGET_RELAY_FILTER" value="10"
                                       {if $form_data['COLISSIMO_WIDGET_RELAY_FILTER'] == '10'}checked="checked"{/if}>
                                {l s='All points except Pickup lockers' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_WIDGET_RELAY_FILTER" value="11"
                                       {if $form_data['COLISSIMO_WIDGET_RELAY_FILTER'] == '11'}checked="checked"{/if}>
                                {l s='All points except Pickme neighbor points' mod='colissimo'}
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <div class="form-group">
                <label class="control-label col-lg-3 required">
                    <span>{l s='Webservice URL' mod='colissimo'}</span>
                </label>
                <div class="col-lg-9">
                    <div class="fixed-width-xxl">
                        <input value="{$form_data['COLISSIMO_WIDGET_ENDPOINT']|escape:'htmlall':'UTF-8'}"
                               type="text"
                               readonly
                               name="COLISSIMO_WIDGET_ENDPOINT"
                               class="input fixed-width-xxl"
                               required="required">
                    </div>
                </div>
                <div class="col-lg-9 col-lg-offset-3"></div>
            </div>
            <a class="btn btn-primary col-lg-offset-3" id="colissimo-check-widget">
                <i class="icon icon-check"></i> {l s='Check availability' mod='colissimo'}
            </a>
            <hr/>
            <div class="row">
                <div class="col-lg-9 col-lg-offset-3">
                    <p class="colissimo-subtitle">{l s='Display preferences' mod='colissimo'}</p>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-3 required">
                    <span>{l s='Colors of information icons' mod='colissimo'}</span>
                </label>
                <div class="col-lg-9">
                    <div class="input-group fixed-width-lg">
                        <input type="color"
                               data-hex="true"
                               class="color mColorPickerInput"
                               name="COLISSIMO_WIDGET_COLOR_2"
                               value="{$form_data['COLISSIMO_WIDGET_COLOR_2']|escape:'htmlall':'UTF-8'}">
                    </div>
                </div>
                <div class="col-lg-9 col-lg-offset-3">
                    <div x-ms-format-detection="none" class="help-block">
                        {l s='Sections hightlighted in orange in the example below' mod='colissimo'}
                        <span></span>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-3 required">
                    <span>{l s='Color of the pick-up point selected in the list and on the map' mod='colissimo'}</span>
                </label>
                <div class="col-lg-9">
                    <div class="input-group fixed-width-lg">
                        <input type="color"
                               data-hex="true"
                               class="color mColorPickerInput"
                               name="COLISSIMO_WIDGET_COLOR_1"
                               value="{$form_data['COLISSIMO_WIDGET_COLOR_1']|escape:'htmlall':'UTF-8'}">
                    </div>
                </div>
                <div class="col-lg-9 col-lg-offset-3">
                    <div x-ms-format-detection="none" class="help-block">
                        {l s='Sections hightlighted in grey in the example below' mod='colissimo'}
                        <span></span>
                    </div>
                </div>
            </div>
            <div class="form-group"><label class="control-label col-lg-3 ">
                    <span>{l s='Text font' mod='colissimo'}</span>
                </label>
                <div class="col-lg-9">
                    <select name="COLISSIMO_WIDGET_FONT" class=" fixed-width-xxl">
                        {foreach $widget_fonts as $id => $font}
                            <option {if $id == $form_data['COLISSIMO_WIDGET_FONT']|escape:'htmlall':'UTF-8'}selected="selected"{/if}
                                    value="{$id|intval}">
                                {$font|escape:'htmlall':'UTF-8'}
                            </option>
                        {/foreach}
                    </select>
                </div>
                <div class="col-lg-9 col-lg-offset-3"></div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-3 ">
                    <span>{l s='Display example' mod='colissimo'}</span>
                </label>
                <div class="col-lg-9">
                    <img style="width: 690px" src="{$data['img_path']|escape:'htmlall':'UTF-8'}colissimo_widget.png"/>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <button type="submit" class="btn btn-default pull-right" name="submitColissimoWidgetConfigForm">
                <i class="process-icon-save"></i> {l s='Save' mod='colissimo'}
            </button>
        </div>
    </div>
    <div class="panel">
        <div class="panel-heading">
            {l s='Pick-up service - Mobile display' mod='colissimo'}
        </div>
        <div class="row">
            <div class="form-group">
                <label class="control-label col-lg-3 ">
          <span class="label-tooltip"
                data-toggle="tooltip"
                data-html="true"
                data-original-title="{l s='Choosing "Yes" (default option) the widget will be on the native one made by Colissimo.' mod='colissimo'}<br />{l s='Choose "No" and you will use the OpenStreetMap widget' mod='colissimo'}">
            {l s='Use native Colissimo widget' mod='colissimo'}
          </span>
                </label>
                <div class="col-lg-9 colissimo-native-mobile-toggle">
          <span class="switch prestashop-switch fixed-width-lg ">
            <input type="radio"
                   value="1"
                   name="COLISSIMO_WIDGET_NATIVE_MOBILE"
                   id="COLISSIMO_WIDGET_NATIVE_MOBILE_on"
                   {if $form_data['COLISSIMO_WIDGET_NATIVE_MOBILE']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_WIDGET_NATIVE_MOBILE_on">{l s='Yes' mod='colissimo'}</label>
            <input type="radio"
                   value="0"
                   name="COLISSIMO_WIDGET_NATIVE_MOBILE"
                   id="COLISSIMO_WIDGET_NATIVE_MOBILE_off"
                   {if !$form_data['COLISSIMO_WIDGET_NATIVE_MOBILE']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_WIDGET_NATIVE_MOBILE_off">{l s='No' mod='colissimo'}</label>
            <a class="slide-button btn"></a>
          </span>
                </div>
                <div class="col-lg-9 col-lg-offset-3">
                    <div x-ms-format-detection="none" class="help-block">
                        {l s='Do not forget to empty PrestaShop cache if you change this option' mod='colissimo'}
                        <span></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="row colissimo-osm-native-mobile">
            <div class="form-group">
                <label class="control-label col-lg-3 ">
          <span class="label-tooltip"
                data-toggle="tooltip"
                data-html="true"
                data-original-title="{l s='Choosing "Yes" (default option) will give you access to the latest features of the Widget.' mod='colissimo'}<br />{l s='Choose "No" if you experience any problems with the display of the Widget (conflict with other modules or theme). The module will use local files that you will be able to override if needed.' mod='colissimo'}">
            {l s='Use default Colissimo widget' mod='colissimo'}
          </span>
                </label>
                <div class="col-lg-9">
          <span class="switch prestashop-switch fixed-width-lg ">
            <input type="radio"
                   value="1"
                   name="COLISSIMO_WIDGET_REMOTE_MOBILE"
                   id="COLISSIMO_WIDGET_REMOTE_MOBILE_on"
                   {if $form_data['COLISSIMO_WIDGET_REMOTE_MOBILE']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_WIDGET_REMOTE_MOBILE_on">{l s='Yes' mod='colissimo'}</label>
            <input type="radio"
                   value="0"
                   name="COLISSIMO_WIDGET_REMOTE_MOBILE"
                   id="COLISSIMO_WIDGET_REMOTE_MOBILE_off"
                   {if !$form_data['COLISSIMO_WIDGET_REMOTE_MOBILE']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_WIDGET_REMOTE_MOBILE_off">{l s='No' mod='colissimo'}</label>
            <a class="slide-button btn"></a>
          </span>
                </div>
                <div class="col-lg-9 col-lg-offset-3">
                    <div x-ms-format-detection="none" class="help-block">
                        {l s='Do not forget to empty PrestaShop cache if you change this option' mod='colissimo'}
                        <span></span>
                    </div>
                </div>
            </div>
            <div class="row colissimo-filter-widget-mobile">
                <div class="form-group">
                    <label class="control-label col-lg-3">
                        <span>{l s='Filter Relay' mod='colissimo'}</span>
                    </label>
                    <div class="col-lg-9">
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_WIDGET_RELAY_FILTER_MOBILE" value="0"
                                       {if $form_data['COLISSIMO_WIDGET_RELAY_FILTER_MOBILE'] == '0'}checked="checked"{/if}>
                                {l s='Post offices only' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_WIDGET_RELAY_FILTER_MOBILE" value="1"
                                       {if $form_data['COLISSIMO_WIDGET_RELAY_FILTER_MOBILE'] == '1'}checked="checked"{/if}>
                                {l s='All pickup points' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_WIDGET_RELAY_FILTER_MOBILE" value="2"
                                       {if $form_data['COLISSIMO_WIDGET_RELAY_FILTER_MOBILE'] == '2'}checked="checked"{/if}>
                                {l s='Pickup points only' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_WIDGET_RELAY_FILTER_MOBILE" value="3"
                                       {if $form_data['COLISSIMO_WIDGET_RELAY_FILTER_MOBILE'] == '3'}checked="checked"{/if}>
                                {l s='Pickup partner shops only' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_WIDGET_RELAY_FILTER_MOBILE" value="5"
                                       {if $form_data['COLISSIMO_WIDGET_RELAY_FILTER_MOBILE'] == '5'}checked="checked"{/if}>
                                {l s='Post offices and pickup partner shops' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_WIDGET_RELAY_FILTER_MOBILE" value="10"
                                       {if $form_data['COLISSIMO_WIDGET_RELAY_FILTER_MOBILE'] == '10'}checked="checked"{/if}>
                                {l s='All points except Pickup lockers' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_WIDGET_RELAY_FILTER_MOBILE" value="11"
                                       {if $form_data['COLISSIMO_WIDGET_RELAY_FILTER_MOBILE'] == '11'}checked="checked"{/if}>
                                {l s='All points except Pickme neighbor points' mod='colissimo'}
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <div class="form-group">
                <label class="control-label col-lg-3 required">
                    <span>{l s='Webservice URL' mod='colissimo'}</span>
                </label>
                <div class="col-lg-9">
                    <div class="fixed-width-xxl">
                        <input value="{$form_data['COLISSIMO_WIDGET_ENDPOINT_MOBILE']|escape:'htmlall':'UTF-8'}"
                               type="text"
                               readonly
                               name="COLISSIMO_WIDGET_ENDPOINT_MOBILE"
                               class="input fixed-width-xxl"
                               required="required">
                    </div>
                </div>
                <div class="col-lg-9 col-lg-offset-3"></div>
            </div>
            <a class="btn btn-primary col-lg-offset-3" id="colissimo-check-widget">
                <i class="icon icon-check"></i> {l s='Check availability' mod='colissimo'}
            </a>
            <hr/>
            <div class="row">
                <div class="col-lg-9 col-lg-offset-3">
                    <p class="colissimo-subtitle">{l s='Display preferences' mod='colissimo'}</p>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-3 required">
                    <span>{l s='Colors of information icons' mod='colissimo'}</span>
                </label>
                <div class="col-lg-9">
                    <div class="input-group fixed-width-lg">
                        <input type="color"
                               data-hex="true"
                               class="color mColorPickerInput"
                               name="COLISSIMO_WIDGET_COLOR_2_MOBILE"
                               value="{$form_data['COLISSIMO_WIDGET_COLOR_2_MOBILE']|escape:'htmlall':'UTF-8'}">
                    </div>
                </div>
                <div class="col-lg-9 col-lg-offset-3">
                    <div x-ms-format-detection="none" class="help-block">
                        {l s='Sections hightlighted in orange in the example below' mod='colissimo'}
                        <span></span>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-3 required">
                    <span>{l s='Color of the pick-up point selected in the list and on the map' mod='colissimo'}</span>
                </label>
                <div class="col-lg-9">
                    <div class="input-group fixed-width-lg">
                        <input type="color"
                               data-hex="true"
                               class="color mColorPickerInput"
                               name="COLISSIMO_WIDGET_COLOR_1_MOBILE"
                               value="{$form_data['COLISSIMO_WIDGET_COLOR_1_MOBILE']|escape:'htmlall':'UTF-8'}">
                    </div>
                </div>
                <div class="col-lg-9 col-lg-offset-3">
                    <div x-ms-format-detection="none" class="help-block">
                        {l s='Sections hightlighted in grey in the example below' mod='colissimo'}
                        <span></span>
                    </div>
                </div>
            </div>
            <div class="form-group"><label class="control-label col-lg-3 ">
                    <span>{l s='Text font' mod='colissimo'}</span>
                </label>
                <div class="col-lg-9">
                    <select name="COLISSIMO_WIDGET_FONT_MOBILE" class=" fixed-width-xxl">
                        {foreach $widget_fonts as $id => $font}
                            <option {if $id == $form_data['COLISSIMO_WIDGET_FONT_MOBILE']|escape:'htmlall':'UTF-8'}selected="selected"{/if}
                                    value="{$id|intval}">
                                {$font|escape:'htmlall':'UTF-8'}
                            </option>
                        {/foreach}
                    </select>
                </div>
                <div class="col-lg-9 col-lg-offset-3"></div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-3 ">
                    <span>{l s='Display example' mod='colissimo'}</span>
                </label>
                <div class="col-lg-9">
                    <img src="{$data['img_path']|escape:'htmlall':'UTF-8'}colissimo_widget_mobile.png"/>
                </div>
            </div>
        </div>
        <div class="row colissimo-osm-mobile">
            <div class="form-group">
                <label class="control-label col-lg-3 ">
          <span class="label-tooltip"
                data-toggle="tooltip"
                data-html="true"
                data-original-title="{l s='Otherwise it will be displayed directly in the page' mod='colissimo'}">
            {l s='Display widget in a modal' mod='colissimo'}
          </span>
                </label>
                <div class="col-lg-9">
          <span class="switch prestashop-switch fixed-width-lg">
            <input type="radio"
                   value="1"
                   name="COLISSIMO_WIDGET_OSM_MAP_MODAL_MOBILE"
                   id="COLISSIMO_WIDGET_OSM_MAP_MODAL_MOBILE_on"
                   {if $form_data['COLISSIMO_WIDGET_OSM_MAP_MODAL_MOBILE']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_WIDGET_OSM_MAP_MODAL_MOBILE_on">{l s='Yes' mod='colissimo'}</label>
            <input type="radio"
                   value="0"
                   name="COLISSIMO_WIDGET_OSM_MAP_MODAL_MOBILE"
                   id="COLISSIMO_WIDGET_OSM_MAP_MODAL_MOBILE_off"
                   {if !$form_data['COLISSIMO_WIDGET_OSM_MAP_MODAL_MOBILE']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_WIDGET_OSM_MAP_MODAL_MOBILE_off">{l s='No' mod='colissimo'}</label>
            <a class="slide-button btn"></a>
          </span>
                </div>
                <div class="col-lg-9 col-lg-offset-3"></div>
            </div>
            <hr/>
            <div class="row colissimo-filter-osm-mobile">
                <div class="form-group">
                    <label class="control-label col-lg-3">
                        <span>{l s='Filter Relay' mod='colissimo'}</span>
                    </label>
                    <div class="col-lg-9">
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_OSM_RELAY_FILTER_MOBILE" value="0"
                                       {if $form_data['COLISSIMO_OSM_RELAY_FILTER_MOBILE'] == '0'}checked="checked"{/if}>
                                {l s='Post offices only' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_OSM_RELAY_FILTER_MOBILE" value="1"
                                       {if $form_data['COLISSIMO_OSM_RELAY_FILTER_MOBILE'] == '1'}checked="checked"{/if}>
                                {l s='All pickup points' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_OSM_RELAY_FILTER_MOBILE" value="2"
                                       {if $form_data['COLISSIMO_OSM_RELAY_FILTER_MOBILE'] == '2'}checked="checked"{/if}>
                                {l s='Pickup points only' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_OSM_RELAY_FILTER_MOBILE" value="3"
                                       {if $form_data['COLISSIMO_OSM_RELAY_FILTER_MOBILE'] == '3'}checked="checked"{/if}>
                                {l s='Pickup partner shops only' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_OSM_RELAY_FILTER_MOBILE" value="5"
                                       {if $form_data['COLISSIMO_OSM_RELAY_FILTER_MOBILE'] == '5'}checked="checked"{/if}>
                                {l s='Post offices and pickup partner shops' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_OSM_RELAY_FILTER_MOBILE" value="10"
                                       {if $form_data['COLISSIMO_OSM_RELAY_FILTER_MOBILE'] == '10'}checked="checked"{/if}>
                                {l s='All points except Pickup lockers' mod='colissimo'}
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="COLISSIMO_OSM_RELAY_FILTER_MOBILE" value="11"
                                       {if $form_data['COLISSIMO_OSM_RELAY_FILTER_MOBILE'] == '11'}checked="checked"{/if}>
                                {l s='All points except Pickme neighbor points' mod='colissimo'}
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-3 ">
                    <span>{l s='Number of pickup points to be displayed' mod='colissimo'}</span>
                </label>
                <div class="col-lg-9">
                    <select name="COLISSIMO_WIDGET_OSM_NUMBER_POINT_MOBILE" class=" fixed-width-xxl">
                        {foreach $osm_number_pdr as $id => $number}
                            <option {if $number == $form_data['COLISSIMO_WIDGET_OSM_NUMBER_POINT_MOBILE']|escape:'htmlall':'UTF-8'}selected="selected"{/if}
                                    value="{$number|intval}">
                                {$number|escape:'htmlall':'UTF-8'}
                            </option>
                        {/foreach}
                    </select>
                </div>
                <div class="col-lg-9 col-lg-offset-3"></div>
            </div>
            <hr/>
            <div class="col-lg-9 col-lg-offset-3">
                <p class="colissimo-subtitle">{l s='Mobile options' mod='colissimo'}</p>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-3 ">
          <span class="label-tooltip"
                data-toggle="tooltip"
                data-html="true"
                data-original-title="{l s='Do you want to display the map or just the list ?' mod='colissimo'}">
            {l s='Display map' mod='colissimo'}
          </span>
                </label>
                <div class="col-lg-9 colissimo-map-mobile-toggle">
          <span class="switch prestashop-switch fixed-width-lg">
            <input type="radio"
                   value="1"
                   name="COLISSIMO_WIDGET_OSM_DISPLAY_MAP_MOBILE"
                   id="COLISSIMO_WIDGET_OSM_DISPLAY_MAP_MOBILE_on"
                   {if $form_data['COLISSIMO_WIDGET_OSM_DISPLAY_MAP_MOBILE']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_WIDGET_OSM_DISPLAY_MAP_MOBILE_on">{l s='Yes' mod='colissimo'}</label>
            <input type="radio"
                   value="0"
                   name="COLISSIMO_WIDGET_OSM_DISPLAY_MAP_MOBILE"
                   id="COLISSIMO_WIDGET_OSM_DISPLAY_MAP_MOBILE_off"
                   {if !$form_data['COLISSIMO_WIDGET_OSM_DISPLAY_MAP_MOBILE']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_WIDGET_OSM_DISPLAY_MAP_MOBILE_off">{l s='No' mod='colissimo'}</label>
            <a class="slide-button btn"></a>
          </span>
                </div>
                <div class="col-lg-9 col-lg-offset-3"></div>
            </div>
            <div class="form-group colissimo-superposed-osm">
                <label class="control-label col-lg-3 ">
          <span class="label-tooltip"
                data-toggle="tooltip"
                data-html="true"
                data-original-title="{l s='Do you want to display the map and the list superposed and to be able to switch between them with a button ?' mod='colissimo'}">
            {l s='Display map and list superposed' mod='colissimo'}
          </span>
                </label>
                <div class="col-lg-9 colissimo-superposed-mobile-toggle">
          <span class="switch prestashop-switch fixed-width-lg">
            <input type="radio"
                   value="1"
                   name="COLISSIMO_WIDGET_OSM_DISPLAY_SUPERPOSED"
                   id="COLISSIMO_WIDGET_OSM_DISPLAY_SUPERPOSED_on"
                   {if $form_data['COLISSIMO_WIDGET_OSM_DISPLAY_SUPERPOSED']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_WIDGET_OSM_DISPLAY_SUPERPOSED_on">{l s='Yes' mod='colissimo'}</label>
            <input type="radio"
                   value="0"
                   name="COLISSIMO_WIDGET_OSM_DISPLAY_SUPERPOSED"
                   id="COLISSIMO_WIDGET_OSM_DISPLAY_SUPERPOSED_off"
                   {if !$form_data['COLISSIMO_WIDGET_OSM_DISPLAY_SUPERPOSED']|intval}checked="checked"{/if}>
            <label for="COLISSIMO_WIDGET_OSM_DISPLAY_SUPERPOSED_off">{l s='No' mod='colissimo'}</label>
            <a class="slide-button btn"></a>
          </span>
                </div>
                <div class="col-lg-9 col-lg-offset-3"></div>
            </div>
            <div class="form-group colissimo-order-osm">
                <label class="control-label col-lg-3 ">
                    <span>{l s='First element to display' mod='colissimo'}</span>
                </label>
                <div class="col-lg-9">
                    <select style="text-transform: capitalize" name="COLISSIMO_WIDGET_OSM_FIRST_DISPLAY"
                            class=" fixed-width-xxl">
                        {foreach [{l s='map' mod='colissimo'},{l s='list' mod='colissimo'}] as $id => $preference}
                            <option {if $id == $form_data['COLISSIMO_WIDGET_OSM_FIRST_DISPLAY']|escape:'htmlall':'UTF-8'}selected="selected"{/if}
                                    value="{$id|intval}">
                                {$preference|escape:'htmlall':'UTF-8'}
                            </option>
                        {/foreach}
                    </select>
                </div>
                <div class="col-lg-9 col-lg-offset-3"></div>
            </div>
        </div>
        <div class="panel-footer">
            <button type="submit" class="btn btn-default pull-right" name="submitColissimoWidgetConfigFormMobile">
                <i class="process-icon-save"></i> {l s='Save' mod='colissimo'}
            </button>
        </div>
    </div>
</form>
{literal}
<script type="text/javascript">
    var genericErrorMessage = "{/literal}{l s='Webservice connexion could not be checked' mod='colissimo'}{literal}";
    var colissimoCredentialsToken = '{/literal}{getAdminToken tab='AdminColissimoTestCredentials'}{literal}';

    $(document).ready(function () {
        $(document).on('click', '#colissimo-check-widget', function () {
            var checkWidget = $('#colissimo-check-widget');

            testWidgetCredentials(checkWidget);
        });
    });
</script>
{/literal}
