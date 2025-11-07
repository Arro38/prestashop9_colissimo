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
| **9.0.x**  ✅ **Compatible (version patchée)** |


## 🔧 Modifications apportées pour PrestaShop 9

### ✅ Réalisées

- [x] **Fix méthode `l()` - AdminColissimoOrdersController.php**
  - Ligne 57 : `$this->l()` → `$this->module->l('Delete Labels', 'AdminColissimoOrdersController')`
  - **Problème** : La méthode `$this->l()` n'existe plus dans `ModuleAdminController` PS9
  - **Solution** : Utilisation de `$this->module->l()` avec contexte du contrôleur

- [x] **Fix méthode `l()` - AdminColissimoAssignOrdersController.php**
  - Ligne 56 : `$this->l()` → `$this->module->l('Assign to Colissimo with signature', 'AdminColissimoAssignOrdersController')`
  - Ligne 60 : `$this->l()` → `$this->module->l('Assign Colissimo without Signature', 'AdminColissimoAssignOrdersController')`

- [x] **Tests réussis sur PrestaShop 9.0.1 + PHP 8.4**

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
- Compatibilité PrestaShop 9.0+
- Tests sur PrestaShop 9.0.1 + PHP 8.4

#### 🔧 Corrigé
- Méthode `l()` dans AdminColissimoOrdersController (ligne 57)
- Méthode `l()` dans AdminColissimoAssignOrdersController (lignes 56, 60)

#### 📝 Modifié
- Auteur du module : coding974 (coding974.com)

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
