��    /      �                B     j   P  8   �  	   �     �  ]     �   n  `   L     �  Q   �  n     F   ~  �   �  i   �     �  �     �   �  b   (	  b   �	     �	  �  �	  >  �  
   �  
   �  k     9   t  �   �  �   F     
  Z   )     �  I   �     �  �   �  �   �  �   T  T       h  Q   p  =   �  )      �   *  �   �  �   �  {   (    �  �  �  i   �  �     F   �  	   �     �  q   �    p     t     �  `     t   n  K   �  #  /  �   S      �   �   �   �   �!  d   :"  d   �"     #  {  #  �  �%  
   4(  
   ?(  }   J(  <   �(  �   )  �   �)  *   �*  e   �*     >+  U   Y+     �+  �   �+  �   �,    �-  s   �.  L  �.  ^   K0  ]   �0  /   1  �   81  �   �1  �   �2  �   o3  -  4   *Long press on the respective app icon -> app info -> permissions* *Settings -> Security -> Auto reboot -> select the idle time duration after which the phone should reboot* *Settings -> Security -> PIN scrambling -> Scramble PIN* App Store Background Images Backup: The integrated backup (Seedvault) and Nextcloud. Choose Settings -> System -> Backup. Browser: The pre-installed browser Vanadium is hardened and therefore recommended for high security. For better ad blocking, `Bromite <https://github.com/bromite/bromite/releases/latest>`__ browser is recommended instead. By default you have a secure smartphone, already pre-installed with all the most necessary apps. Compatible Apps Contacts and calendar synchronization: DAVx5 supports CalDAV, CardDAV and WebCAL. Download all 5 files from `com.android.vending <https://apps.grapheneos.org/packages/com.android.vending/>`__. Email: K9-mail and OpenKeyChain (for OpenPGP encryption) or FairEmail. For very high security requirements, you should use as few apps as possible to provide a small attack surface. If instead you want to use the NitroPhone as an everyday smartphone with more apps we recommend: From the home screen, select: *Settings -> Apps -> Google Play services and disable battery optimization* Getting Started If the apps in F-Droid are not enough for you, open F-Droid and install Aurora Store. In Aurora Store, you can install all apps from Google Play Store. If you want to check the integrity of the operating system, you can use `remote verification <https://attestation.app/about>`__. Install `com.google.android.gms <https://apps.grapheneos.org/packages/com.google.android.gms/>`__. Install `com.google.android.gsf <https://apps.grapheneos.org/packages/com.google.android.gsf/>`__. Kill Switch Kill Switches, which erase all the phone's data when triggered, are very risky in practice as they could be triggered unintentionally. Therefore, the NitroPhone instead has the feature to automatically shut down and restart when inactive for a set period of time. This puts the phone in a secure state where all data is encrypted, no data is in RAM, and the phone can only be unlocked with the legitimate PIN or password. To enable, select: Many apps work without Google Play Services. However, if you want to use apps that require Google Play Services, you can install `Google Play Services in a sandbox <https://grapheneos.org/usage#sandboxed-play-services>`__ as follows. In the future, an installer will be provided to simplify the installation process. **Optional**: To prevent some apps from accessing Google Play Services, install Google Play Services in a separate profile. To do this, install Shelter from the F-Droid store beforehand. Then, perform the following installation steps in the working profile. Messenger: NitroPhone One-time password generator (2FA, OTP): `Aegis Authenticator <https://github.com/beemdevelopment/Aegis>`__. Open Aurora Store and install Split APKs Installer (SAI). Open Split APKs Installer and install all five files you downloaded in step 3. Note: The correct base file has probably been renamed to *base (2).apk*. Open the Google Play Store once and press "Sign in" to start the initialization. You don't have to finish the sign in and a real login is not necessary. This is solely to initialize the software. Permissions of Individual Apps Please familiarize yourself with `using your GrapheneOS <https://grapheneos.org/usage>`__. Recommended Apps Regarding camera app, see `here <https://grapheneos.org/usage#camera>`__. Scramble PIN Layout Set up a six-digit PIN to protect the phone. In cooperation with the security chip, this will ensure high security while maintaining good usability. Shortly after the phone is turned on, the warning "Your device is loading a different operating system" is displayed. This warning indicates that no ordinary Google Android is running and can be ignored. The Google Play Store cannot install and update apps due to the sandbox. Instead, always use F-Droid (for open source apps) or Aurora Store (for apps from Google Play Store) to install apps. To check or change the permissions on network access and sensors for a specific app: To make it difficult for strangers to read the PIN when typing it in, you can display the PIN layout in a random order. Additionally, we recommend a `privacy screen <https://shop.nitrokey.com/shop/product/privacyscreen-for-nitrophone-1-194>`__. To enable, select: VPN: Orbot uses the free TOR network. Mullvad VPN and IVPN are paid VPN services. Warning "Your device is loading a different operating system" You can use these nice background images. `Briar <https://briarproject.org/>`__ is a peer-to-peer messenger without any server at all, which can be used without internet with contacts nearby. `Element <https://element.io/>`__ does not require a central infrastructure and allows the use of own servers. An own account can be registered for free at `NitroChat <https://nitro.chat>`__ for example. `Here <https://github.com/Peter-Easton/GrapheneOS-Knowledge/tree/master/App%20Compatibilty%20List>`__ you can check the compatibility of some popular apps. `Signal <https://signal.org/android/apk/>`__ is secure and now widely used. It can also be downloaded without an app store. install the App Store `F-Droid <https://f-droid.org/F-Droid.apk>`__. This has exclusively open source apps that do without drastic tracking and without advertising. Here you will find thousands of apps from a wide variety of fields. If you are looking for an app, check F-Droid first. Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-09-20 20:48+0200
PO-Revision-Date: 2021-09-20 20:41+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: fr
Language-Team: French <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-nitrophone/fr/>
Plural-Forms: nplurals=2; plural=n > 1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 *Appuyez longuement sur l'icône de l'application concernée -> info sur l'application -> autorisations*. *Paramètres -> Sécurité -> Redémarrage automatique -> sélectionnez la durée d'inactivité après laquelle le téléphone doit redémarrer*. *Paramètres -> Sécurité -> brouillage du PIN -> brouillage du PIN*. App Store Images de fond Sauvegarde : La sauvegarde intégrée (Seedvault) et Nextcloud. Choisissez Paramètres -> Système -> Sauvegarde. Navigateur : Le navigateur préinstallé Vanadium est durci et donc recommandé pour une sécurité élevée. Pour un meilleur blocage des publicités, le navigateur `Bromite <https://github.com/bromite/bromite/releases/latest>`__ est recommandé à la place. Par défaut, vous disposez d'un smartphone sécurisé, déjà préinstallé avec toutes les applications les plus nécessaires. Applications compatibles Synchronisation des contacts et du calendrier : DAVx5 prend en charge CalDAV, CardDAV et WebCAL. Téléchargez les 5 fichiers de `com.android.vending <https://apps.grapheneos.org/packages/com.android.vending/>`__. Courriel : K9-mail et OpenKeyChain (pour le cryptage OpenPGP) ou FairEmail. Pour des exigences de sécurité très élevées, vous devez utiliser aussi peu d'applications que possible afin de fournir une petite surface d'attaque. Si vous souhaitez plutôt utiliser le NitroPhone comme un smartphone de tous les jours avec plus d'applications, nous vous recommandons : Depuis l'écran d'accueil, sélectionnez : *Paramètres -> Apps -> Services Google Play et désactivez l'optimisation de la batterie*. Pour commencer Si les applications de F-Droid ne vous suffisent pas, ouvrez F-Droid et installez Aurora Store. Dans Aurora Store, vous pouvez installer toutes les applications de Google Play Store. Si vous voulez vérifier l'intégrité du système d'exploitation, vous pouvez utiliser la `vérification à distance <https://attestation.app/about>`__. Installer `com.google.android.gms <https://apps.grapheneos.org/packages/com.google.android.gms/>`__. Installer `com.google.android.gsf <https://apps.grapheneos.org/packages/com.google.android.gsf/>`__. Interrupteur d'arrêt Les interrupteurs d'arrêt, qui effacent toutes les données du téléphone lorsqu'ils sont déclenchés, sont très risqués dans la pratique car ils peuvent être déclenchés involontairement. C'est pourquoi le NitroPhone est doté d'une fonction qui lui permet de s'éteindre et de redémarrer automatiquement lorsqu'il est inactif pendant une période donnée. Cela place le téléphone dans un état sécurisé où toutes les données sont cryptées, aucune donnée ne se trouve dans la mémoire vive et le téléphone ne peut être déverrouillé qu'avec le code PIN ou le mot de passe légitime. Pour l'activer, sélectionnez : De nombreuses apps fonctionnent sans Google Play Services. Toutefois, si vous souhaitez utiliser des applications qui nécessitent Google Play Services, vous pouvez installer `Google Play Services dans un bac à sable <https://grapheneos.org/usage#sandboxed-play-services>`__ comme suit. À l'avenir, un installateur sera fourni pour simplifier le processus d'installation. **Optionnel** : Pour empêcher certaines apps d'accéder à Google Play Services, installez Google Play Services dans un profil distinct. Pour ce faire, installez au préalable Shelter depuis la boutique F-Droid. Ensuite, effectuez les étapes d'installation suivantes dans le profil de travail. Messager : NitroPhone Générateur de mot de passe à usage unique (2FA, OTP) : `Aegis Authenticator <https://github.com/beemdevelopment/Aegis>`__. Ouvrez Aurora Store et installez Split APKs Installer (SAI). Ouvrez Split APKs Installer et installez les cinq fichiers que vous avez téléchargés à l'étape 3. Remarque : Le fichier de base correct a probablement été renommé en *base (2).apk*. Ouvrez une fois le Google Play Store et appuyez sur "Sign in" pour lancer l'initialisation. Vous n'avez pas besoin de terminer la connexion et un véritable login n'est pas nécessaire. Il s'agit uniquement d'initialiser le logiciel. Permissions des applications individuelles Veuillez vous familiariser avec `l'utilisation de votre GrapheneOS <https://grapheneos.org/usage>`__. Applications recommandées Concernant l'application caméra, voir `ici <https://grapheneos.org/usage#camera>`__. Scramble PIN Layout Configurez un code PIN à six chiffres pour protéger le téléphone. En coopération avec la puce de sécurité, cela garantira une sécurité élevée tout en maintenant une bonne convivialité. Peu après l'allumage du téléphone, l'avertissement "Votre appareil est en train de charger un système d'exploitation différent" s'affiche. Cet avertissement indique qu'aucun Google Android ordinaire n'est en cours d'exécution et peut être ignoré. Le Google Play Store ne peut pas installer et mettre à jour les applications en raison de la sandbox. Utilisez toujours F-Droid (pour les applications open source) ou Aurora Store (pour les applications de Google Play Store) pour installer des applications. Pour vérifier ou modifier les autorisations d'accès au réseau et aux capteurs pour une application spécifique : Pour qu'il soit difficile pour les étrangers de lire le code PIN lorsqu'ils le tapent, vous pouvez afficher la disposition du code PIN dans un ordre aléatoire. En outre, nous recommandons un `écran de confidentialité <https://shop.nitrokey.com/shop/product/privacyscreen-for-nitrophone-1-194>`__. Pour l'activer, sélectionnez : VPN : Orbot utilise le réseau gratuit TOR. Mullvad VPN et IVPN sont des services VPN payants. Avertissement "Votre appareil est en train de charger un système d'exploitation différent". Vous pouvez utiliser ces belles images de fond. `Briar <https://briarproject.org/>`__ est un messager peer-to-peer sans aucun serveur, qui peut être utilisé sans internet avec des contacts à proximité. `Element <https://element.io/>`__ ne nécessite pas d'infrastructure centrale et permet l'utilisation de serveurs propres. Un compte propre peut être enregistré gratuitement sur `NitroChat <https://nitro.chat>`__ par exemple. `Vous pouvez ici <https://github.com/Peter-Easton/GrapheneOS-Knowledge/tree/master/App%20Compatibilité%20List>`__ vérifier la compatibilité de certaines applications populaires. `Signal <https://signal.org/android/apk/>`__ est sécurisé et maintenant largement utilisé. Il peut également être téléchargé sans magasin d'applications. installer l'App Store `F-Droid <https://f-droid.org/F-Droid.apk>`__. Celui-ci dispose exclusivement d'apps open source qui se passent de suivi drastique et de publicité. Vous y trouverez des milliers d'apps dans des domaines très variés. Si vous cherchez une application, consultez d'abord F-Droid. 