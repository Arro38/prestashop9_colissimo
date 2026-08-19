# Colissimo Module - PrestaShop 9 Compatible (Unofficial Fork)

![PrestaShop 9](https://img.shields.io/badge/PrestaShop-9.x-blue)
![Version](https://img.shields.io/badge/version-2.2.2--ps9-green)
![PHP](https://img.shields.io/badge/PHP-8.4+-purple)

## 📦 About

**Unofficial version** of the Colissimo 2.2.2 module, patched for compatibility with **PrestaShop 9.0+**.

- **Based on**: Colissimo Official 2.2.2
- **Patch author**: [coding974](https://coding974.com)
- **Version**: 2.2.2-ps9
- **Date**: November 2025

## ⚠️ Disclaimer

This version is an unofficial adaptation.

**Use this module at your own risk.** It is provided "as is", without warranty of any kind.

## 🚀 Installation

### 📥 Download & Installation

1. Download the module (full ZIP with vendor included)
2. **PrestaShop Back Office** → **Modules** → **Module Manager**
3. Click **"Upload a module"**
4. Select the ZIP file
5. Click **"Install"**

The module is **turnkey**: all dependencies (vendor) are included in the ZIP.

### ✅ Compatibility

| PrestaShop | PHP | Status |
|-----------|-----|--------|
| 1.7.x | 7.1+ | ✅ Compatible (official version) |
| 8.0.x - 8.2.x | 7.4+ | ✅ Compatible (official version) |
| **9.0.x**  | 8.4 | ✅ **Compatible (patched version)** |


## 🔧 Changes made for PrestaShop 9

### ✅ Done

#### 1. Fix `$this->l()` method (Translations)
**Problem**: The `$this->l()` method no longer exists in `ModuleAdminController` in PrestaShop 9
**Solution**: Use `$this->module->l()` with the controller context

**Modified files**:
- [x] **AdminColissimoOrdersController.php** (line 57)
  - `$this->l('Delete Labels')` → `$this->module->l('Delete Labels', 'AdminColissimoOrdersController')`

- [x] **AdminColissimoAssignOrdersController.php** (lines 56, 60)
  - `$this->l('Assign to Colissimo with signature')` → `$this->module->l('Assign to Colissimo with signature', 'AdminColissimoAssignOrdersController')`
  - `$this->l('Assign Colissimo without Signature')` → `$this->module->l('Assign Colissimo without Signature', 'AdminColissimoAssignOrdersController')`

#### 2. Fix `Tools::getBrightness()` method (Brightness calculation)
**Problem**: The static method `Tools::getBrightness()` was removed in PrestaShop 9
**Solution**: Added a static `Colissimo::getBrightness()` method in the main module

**Modified files**:
- [x] **colissimo.php** (lines 3970-3983)
  - Added the `public static function getBrightness($hexColor)` method
  - Brightness computed with the formula: `(R*299 + G*587 + B*114) / 1000`

- [x] **AdminColissimoDepositSlipController.php** (line 106)
  - `Tools::getBrightness($orderState->color)` → `Colissimo::getBrightness($orderState->color)`

- [x] **controllers/front/return.php** (line 232)
  - `Tools::getBrightness($orderState->color)` → `Colissimo::getBrightness($orderState->color)`

#### 3. Fix `$context->controller->modals` property (Modal handling)
**Problem**: The controller's `modals` property is not always accessible in the PrestaShop 9 context
**Solution**: Changed `setModal()` to return an array instead of assigning directly

**Modified files**:
- [x] **colissimo.php** (lines 982-1004)
  - `setModal()` now returns an array of modals instead of assigning to `$this->context->controller->modals[]`
  - Added an `isset()` check in `getContent()` (line 1013)

- [x] **All admin controllers** (7 files)
  - AdminColissimoOrdersController.php (line 81)
  - AdminColissimoAssignOrdersController.php (line 84)
  - AdminColissimoDashboardController.php (line 76)
  - AdminColissimoAffranchissementController.php (line 84)
  - AdminColissimoColishipController.php (line 68)
  - AdminColissimoDepositSlipController.php (line 79)
  - AdminColissimoCustomsDocumentsController.php (line 61)
  - Using `array_merge()`: `$this->modals = array_merge($this->modals, $this->module->setModal())`

#### 4. Fix PHP 8.4 - DateTime with NULL/empty value
**Problem**: PHP 8.4 is stricter and refuses to build a `DateTime` object from a NULL or empty value, raising a `DateMalformedStringException`
**Solution**: Check the value before creating the DateTime object + proper initialization

**Modified files**:
- [x] **AdminColissimoAffranchissementController.php** (lines 314-329)
  - Added an `empty($date1)` check before `new DateTime($date1)`
  - Avoids the "Failed to parse time string (NULL)" error

- [x] **colissimo.php** (line 744)
  - `COLISSIMO_LAST_DISPLAY_SIGNATURE_MODAL` initialized with a valid date
  - `date('Y-m-d H:i:s', strtotime('-1 day'))` instead of an empty string `''`

#### 5. Fix `ajaxDie()` method (AJAX controllers)
**Problem**: The `$this->ajaxDie()` method no longer exists in PrestaShop 9, causing 500 errors on AJAX calls
**Solution**: Replaced every `$this->ajaxDie()` call with a direct `die()`

**Modified files** (57 replacements in total):
- [x] **AdminColissimoAffranchissementController.php** (19 occurrences)
- [x] **AdminColissimoCustomsDocumentsController.php** (1 occurrence)
- [x] **AdminColissimoDashboardController.php** (7 occurrences)
- [x] **AdminColissimoDepositSlipController.php** (3 occurrences)
- [x] **AdminColissimoLabelController.php** (16 occurrences)
- [x] **AdminColissimoMigrationController.php** (2 occurrences)
- [x] **AdminColissimoOrdersController.php** (3 occurrences)
- [x] **AdminColissimoTestCredentialsController.php** (6 occurrences)

#### 6. Tests & validation
- [x] **Tests passing on PrestaShop 9.0.1 + PHP 8.4**
- [x] **Colissimo admin controllers validated**
- [x] **Order status display with colours verified**
- [x] **Label generation validated (DateTime fix)**

### 🔜 Pending / to be validated

- [ ] **Full validation of all Colissimo features**
  - [ ] Label generation
  - [ ] Pickup point widget
  - [ ] Deposit slip
  - [ ] Parcel tracking
  - [ ] Colissimo returns
  - [ ] Customs documents (CN23)
  - [ ] Multi-parcel
  - [ ] Thermal printing

## 📋 Module features

The Colissimo module provides the following features (based on the official 2.2.2 release):

### ✅ Order management
- Colissimo label generation
- Label printing (A4 and thermal)
- Multi-parcel handling
- Deposit slips
- Real-time parcel tracking

### ✅ Pickup points (PUDO)
- Pickup point selection widget
- OpenStreetMap integration
- Search by postcode / city

### ✅ Returns
- Return labels
- Customer return management

### ✅ International
- Customs documents (CN23)
- Delivery Duty Paid (DDP)

### ✅ Advanced configuration
- Per-carrier settings
- Colissimo service management
- Shipping address configuration

## 🐛 Known issues

No major issue identified with PrestaShop 9.0.1 so far.

If you run into a bug, please open an issue on the GitHub repository.

## 📖 Documentation

- **PDF**: see the `readme.pdf` file included in the module
- **Official Colissimo documentation**: [colissimo.entreprise.laposte.fr](https://www.colissimo.entreprise.laposte.fr/)

## 🤝 Contributing

Contributions are welcome!

1. Fork the project
2. Create a branch for your feature (`git checkout -b feature/my-feature`)
3. Commit your changes (`git commit -m 'feat: add my feature'`)
4. Push the branch (`git push origin feature/my-feature`)
5. Open a Pull Request

## 📝 Changelog

### [2.2.2-ps9] - 2025-11-12

#### ✅ Added
- PrestaShop 9.0.1 + PHP 8.4 compatibility
- `Colissimo::getBrightness()` method replacing `Tools::getBrightness()`
- Full tests on the admin controllers
- Complete validation of label generation

#### 🔧 Fixed
- **Translations**: `$this->l()` → `$this->module->l()` (2 controllers)
  - AdminColissimoOrdersController.php (line 57)
  - AdminColissimoAssignOrdersController.php (lines 56, 60)

- **Colour brightness**: `Tools::getBrightness()` → `Colissimo::getBrightness()` (3 files)
  - colissimo.php (method added)
  - AdminColissimoDepositSlipController.php (line 106)
  - controllers/front/return.php (line 232)

- **Modals**: handling of the `$context->controller->modals` property (9 files)
  - colissimo.php: `setModal()` returns an array
  - 7 admin controllers: using `array_merge()`
  - Added `isset()` check in `getContent()`

- **PHP 8.4 DateTime**: fixed `DateMalformedStringException` (2 files)
  - AdminColissimoAffranchissementController.php: check before `new DateTime()`
  - colissimo.php: initialized with a valid date instead of an empty string

- **AJAX controllers**: `$this->ajaxDie()` → `die()` (57 replacements across 8 controllers)
  - Fixes 500 errors on AJAX calls (label generation, deposit slips, etc.)
  - AdminColissimoAffranchissementController, AdminColissimoOrdersController, etc.

#### 📝 Changed
- Module author: coding974 (coding974.com)
- Full README documenting every change

---

### [2.2.2] - Official version

Stable official Colissimo release for PrestaShop 1.7 - 8.2

See the `CHANGELOG.md` file for the full history of official versions.

## 🔗 Links

- **PS9 patch author**: [coding974.com](https://coding974.com)
- **Official Colissimo module**: [colissimo.entreprise.laposte.fr](https://www.colissimo.entreprise.laposte.fr/)
- **PrestaShop**: [prestashop.com](https://www.prestashop.com/)

## 📄 License

See the license file of the official Colissimo module.

---

**⚠️ Important**: This version will become obsolete once the official PrestaShop 9 compatible release is published by the Colissimo developers.

**Built with ❤️ by [coding974](https://coding974.com)**
