# Colissimo Module - PrestaShop 9 Compatible (Unofficial Fork)

![PrestaShop 9](https://img.shields.io/badge/PrestaShop-9.x-blue)
![Version](https://img.shields.io/badge/version-2.2.2--ps9-green)
![PHP](https://img.shields.io/badge/PHP-8.4+-purple)

## 📦 À propos

**Version non officielle** du module Colissimo 2.2.2, patché pour être compatible avec **PrestaShop 9.0+**.

- **Basé sur** : Colissimo Official 2.2.2
- **Auteur du patch** : [coding974](https://coding974.com)
- **Version** : 2.2.2-ps9
- **Date** : Novembre 2025

## ⚠️ Disclaimer

Cette version est une adaptation non officielle. 

**Utilisez ce module à vos propres risques.** Il est fourni "tel quel", sans garantie d'aucune sorte.

## 🚀 Installation

### 📥 Téléchargement & Installation

1. Téléchargez le module (ZIP complet avec vendor inclus)
2. **PrestaShop Back-Office** → **Modules** → **Module Manager**
3. Cliquez sur **"Uploader un module"**
4. Sélectionnez le fichier ZIP
5. Cliquez sur **"Installer"**

Le module est **clé en main** : toutes les dépendances (vendor) sont incluses dans le ZIP.

### ✅ Compatibilité

| PrestaShop | PHP | Statut |
|-----------|-----|--------|
| 1.7.x | 7.1+ | ✅ Compatible (version officielle) |
| 8.0.x - 8.2.x | 7.4+ | ✅ Compatible (version officielle) |
| **9.0.x**  | 8.4 | ✅ **Compatible (version patchée)** |


## 🔧 Modifications apportées pour PrestaShop 9

### ✅ Réalisées

#### 1. Fix méthode `$this->l()` (Traductions)
**Problème** : La méthode `$this->l()` n'existe plus dans `ModuleAdminController` de PrestaShop 9
**Solution** : Utilisation de `$this->module->l()` avec le contexte du contrôleur

**Fichiers modifiés** :
- [x] **AdminColissimoOrdersController.php** (ligne 57)
  - `$this->l('Delete Labels')` → `$this->module->l('Delete Labels', 'AdminColissimoOrdersController')`

- [x] **AdminColissimoAssignOrdersController.php** (lignes 56, 60)
  - `$this->l('Assign to Colissimo with signature')` → `$this->module->l('Assign to Colissimo with signature', 'AdminColissimoAssignOrdersController')`
  - `$this->l('Assign Colissimo without Signature')` → `$this->module->l('Assign Colissimo without Signature', 'AdminColissimoAssignOrdersController')`

#### 2. Fix méthode `Tools::getBrightness()` (Calcul de luminosité)
**Problème** : La méthode statique `Tools::getBrightness()` a été supprimée dans PrestaShop 9
**Solution** : Création d'une méthode statique `Colissimo::getBrightness()` dans le module principal

**Fichiers modifiés** :
- [x] **colissimo.php** (lignes 3970-3983)
  - Ajout de la méthode `public static function getBrightness($hexColor)`
  - Implémentation du calcul de luminosité selon la formule : `(R*299 + G*587 + B*114) / 1000`

- [x] **AdminColissimoDepositSlipController.php** (ligne 106)
  - `Tools::getBrightness($orderState->color)` → `Colissimo::getBrightness($orderState->color)`

- [x] **controllers/front/return.php** (ligne 232)
  - `Tools::getBrightness($orderState->color)` → `Colissimo::getBrightness($orderState->color)`

#### 3. Fix propriété `$context->controller->modals` (Gestion des modales)
**Problème** : La propriété `modals` du contrôleur n'est pas toujours accessible dans le contexte de PrestaShop 9
**Solution** : Modification de `setModal()` pour retourner un tableau au lieu d'assigner directement

**Fichiers modifiés** :
- [x] **colissimo.php** (lignes 982-1004)
  - `setModal()` retourne maintenant un tableau de modales au lieu d'assigner à `$this->context->controller->modals[]`
  - Ajout d'un check `isset()` dans `getContent()` (ligne 1013)

- [x] **Tous les contrôleurs admin** (7 fichiers)
  - AdminColissimoOrdersController.php (ligne 81)
  - AdminColissimoAssignOrdersController.php (ligne 84)
  - AdminColissimoDashboardController.php (ligne 76)
  - AdminColissimoAffranchissementController.php (ligne 84)
  - AdminColissimoColishipController.php (ligne 68)
  - AdminColissimoDepositSlipController.php (ligne 79)
  - AdminColissimoCustomsDocumentsController.php (ligne 61)
  - Utilisation de `array_merge()` : `$this->modals = array_merge($this->modals, $this->module->setModal())`

#### 4. Tests & Validation
- [x] **Tests réussis sur PrestaShop 9.0.1 + PHP 8.4**
- [x] **Validation des contrôleurs admin Colissimo**
- [x] **Vérification de l'affichage des états de commande avec couleurs**

### 🔜 En attente / À valider

- [ ] **Tests complets sur PrestaShop 9.1+**
- [ ] **Tests avec PHP 8.4**
- [ ] **Validation complète de toutes les fonctionnalités Colissimo**
  - [ ] Génération d'étiquettes
  - [ ] Widget points relais
  - [ ] Bordereau de dépôt
  - [ ] Suivi des colis
  - [ ] Retours Colissimo
  - [ ] Documents douaniers (CN23)
  - [ ] Multi-colis
  - [ ] Impression thermique

## 📋 Fonctionnalités du module

Le module Colissimo offre les fonctionnalités suivantes (basées sur la version officielle 2.2.2) :

### ✅ Gestion des commandes
- Génération d'étiquettes Colissimo
- Impression d'étiquettes (A4 et thermique)
- Gestion multi-colis
- Bordereaux de dépôt
- Suivi des colis en temps réel

### ✅ Points de retrait (PUDO)
- Widget de sélection de points relais
- Intégration carte OpenStreetMap
- Recherche par code postal / ville

### ✅ Retours
- Étiquettes de retour
- Gestion des retours clients

### ✅ International
- Documents douaniers (CN23)
- Delivery Duty Paid (DDP)

### ✅ Configuration avancée
- Paramètres par transporteur
- Gestion des services Colissimo
- Configuration des adresses d'expédition

## 🐛 Problèmes connus

Aucun problème majeur identifié avec PrestaShop 9.0.1 à ce jour.

Si vous rencontrez des bugs, merci de créer une issue sur le dépôt GitHub.

## 📖 Documentation

- **PDF** : Consultez le fichier `readme.pdf` inclus dans le module
- **Documentation officielle Colissimo** : [colissimo.entreprise.laposte.fr](https://www.colissimo.entreprise.laposte.fr/)

## 🤝 Contribution

Les contributions sont les bienvenues !

1. Forkez le projet
2. Créez une branche pour votre fonctionnalité (`git checkout -b feature/ma-fonctionnalite`)
3. Committez vos changements (`git commit -m 'feat: Ajout de ma fonctionnalité'`)
4. Pushez vers la branche (`git push origin feature/ma-fonctionnalite`)
5. Ouvrez une Pull Request

## 📝 Changelog

### [2.2.2-ps9] - 2025-11-07

#### ✅ Ajouté
- Compatibilité PrestaShop 9.0.1 + PHP 8.4
- Méthode `Colissimo::getBrightness()` pour remplacer `Tools::getBrightness()`
- Tests complets sur les contrôleurs admin

#### 🔧 Corrigé
- **Traductions** : Méthode `$this->l()` → `$this->module->l()` (2 contrôleurs)
  - AdminColissimoOrdersController.php (ligne 57)
  - AdminColissimoAssignOrdersController.php (lignes 56, 60)

- **Luminosité couleurs** : Méthode `Tools::getBrightness()` → `Colissimo::getBrightness()` (3 fichiers)
  - colissimo.php (ajout de la méthode)
  - AdminColissimoDepositSlipController.php (ligne 106)
  - controllers/front/return.php (ligne 232)

- **Modales** : Gestion de la propriété `$context->controller->modals` (9 fichiers)
  - colissimo.php : `setModal()` retourne un tableau
  - 7 contrôleurs admin : utilisation de `array_merge()`
  - Ajout de check `isset()` dans `getContent()`

#### 📝 Modifié
- Auteur du module : coding974 (coding974.com)
- README complet avec toutes les modifications détaillées

---

### [2.2.2] - Version officielle

Version stable Colissimo officielle pour PrestaShop 1.7 - 8.2

Consultez le fichier `CHANGELOG.md` pour l'historique complet des versions officielles.

## 🔗 Liens

- **Auteur du patch PS9** : [coding974.com](https://coding974.com)
- **Module officiel Colissimo** : [colissimo.entreprise.laposte.fr](https://www.colissimo.entreprise.laposte.fr/)
- **PrestaShop** : [prestashop.com](https://www.prestashop.com/)

## 📄 Licence

Voir le fichier de licence du module officiel Colissimo.

---

**⚠️ Important** : Cette version sera obsolète lorsque la version officielle compatible PrestaShop 9 sera publiée par les développeurs de Colissimo.

**Créé avec ❤️ par [coding974](https://coding974.com)**
