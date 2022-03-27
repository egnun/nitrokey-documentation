��    9      �              �  8   �  E   �  6   ,  :   c  <   �  S   �  /   /  B   _  	   �     �  ]   �  �     `   �     Z  Q   j  m   �    *  F   B	  �   �	  *   ,
  �   W
  i   '     �  -  �  �   �     g  a   �  a   I    �  #  �  ;  �  
   '  
   2     =     M  j   \  [   �  �   #  �   �     �  Y   �     �  H     �   X  �   �  �   �  %  x  T   �  ?  �  '  3  Q   [  )   �  �   �  �   l  T   6  z   �  �     <   �!  R   %"  A   x"  =   �"  C   �"  X   <#  A   �#  I   �#  	   !$     +$  k   =$  �   �$  |   �%     &  \   ,&  y   �&  E  '  P   I(  �   �(  9   m)  �   �)  �   �*      +  u  /+  �   �,  �   _-  j   �-  j   \.  K  �.  �  0  z  �2  
   ?4  
   J4     U4     l4  h   {4  g   �4  �   L5     6  !   7  e   @7     �7  O   �7  �   8  �   �8  �   �9  �  y:  q   =  j  s=  j  �>  g   I@  7   �@  �   �@  �   �A  T   `B  �   �B   **Q:** Does the Nitrophone work with my carrier network? **Q:** How can I check, if my NitroPhone has been hacked/compromised? **Q:** What is a *Kill Switch* and how to activate it? **Q:** What is and how to activate *PIN Layout Scrambling* **Q:** Where can I get further information about GrapheneOS? **Q:** Why do I get "Warning: Your device is loading a different operating system"? **Q:** Why is OEM unlocking enabled by default? *Long press on the respective app icon -> app info -> permissions* App Store Background Images Backup: The integrated backup (Seedvault) and Nextcloud. Choose Settings -> System -> Backup. Browser: The pre-installed browser Vanadium is hardened and therefore recommended for high security. For better ad blocking, `Bromite <https://github.com/bromite/bromite/releases/latest>`_ browser is recommended instead. By default you have a secure smartphone, already pre-installed with all the most necessary apps. Compatible Apps Contacts and calendar synchronization: DAVx5 supports CalDAV, CardDAV and WebCAL. Download all 5 files from `com.android.vending <https://apps.grapheneos.org/packages/com.android.vending/>`_. Earlier there was a list, but as the Play Service implementation progresses, most of the apps should work, although there are still some not working, a list will be available `here <https://github.com/Peter-Easton/GrapheneOS-Knowledge/tree/master/App%20Incompatibility%20List>`_. Email: K9-mail and OpenKeyChain (for OpenPGP encryption) or FairEmail. For extra hardening (optional): Go to Settings -> System -> Developer Options and disable the "OEM unlocking" setting. Afterwards disable the "Developer Options". For more details, see the following pages: For very high security requirements, you should use as few apps as possible to provide a small attack surface. If instead you want to use the NitroPhone as an everyday smartphone with more apps we recommend: From the home screen, select: *Settings -> Apps -> Google Play services and disable battery optimization* Getting Started Google claims `all major carriers`_ should work with the Pixel phones. Nevertheless there might be exceptions, obviously we cannot check `all` carriers around the world. Best practice, is to check if you find some tests/experience stories about the Pixel 4a together with your planned carrier network. If the apps in F-Droid are not enough for you, open F-Droid and install Aurora Store. In Aurora Store, you can install all apps from Google Play Store. If you want to check the integrity of the operating system, you can use `remote verification <https://attestation.app/about>`_. Install `com.google.android.gms <https://apps.grapheneos.org/packages/com.google.android.gms/>`_. Install `com.google.android.gsf <https://apps.grapheneos.org/packages/com.google.android.gsf/>`_. Install the `F-Droid <https://f-droid.org/F-Droid.apk>`_ App Store. This has exclusively open source apps that do without drastic tracking and without advertising. Here you will find thousands of apps from a wide variety of fields. If you are looking for an app, check F-Droid first. Kill Switches, which erase all the phone's data when triggered, are very risky in practice as they could be triggered unintentionally. Therefore, the NitroPhone instead has the feature to automatically shut down and restart when inactive for a set period of time. This puts the phone in a secure state where all data is encrypted, no data is in RAM, and the phone can only be unlocked with the legitimate PIN or password. To enable, select: *Settings -> Security -> Auto reboot -> select the idle time duration after which the phone should reboot* Many apps work without Google Play Services. However, if you want to use apps that require Google Play Services, you can install `Google Play Services in a sandbox <https://grapheneos.org/usage#sandboxed-play-services>`_ as follows. In the future, an installer will be provided to simplify the installation process. Messenger: NitroPhone NitroPhone Apps NitroPhone FAQ One-time password generator (2FA, OTP): `Aegis Authenticator <https://github.com/beemdevelopment/Aegis>`_. Open F-Droid and install Split APKs Installer (SAI). (Also available from the Aurora Store) Open Split APKs Installer and install all five files you downloaded in step 3. **Note:** The correct base file has probably been renamed to ``base (2).apk``. Open the Google Play Store once and press "Sign in" to start the initialization. You don't have to finish the sign in and a real login is not necessary. This is solely to initialize the software. Permissions of Individual Apps Please familiarize yourself with `using your GrapheneOS <https://grapheneos.org/usage>`_. Recommended Apps Regarding camera app, see `here <https://grapheneos.org/usage#camera>`_. Set up a six-digit PIN to protect the phone. In cooperation with the security chip, this will ensure high security while maintaining good usability. Shortly after the phone is turned on, the warning "Your device is loading a different operating system" is displayed. This warning indicates that no ordinary Google Android is running and can be ignored. The Google Play Store cannot install and update apps due to the sandbox. Instead, always use F-Droid (for open source apps) or Aurora Store (for apps from Google Play Store) to install apps. The only real purpose of the OEM Unlocking setting is `anti-theft protection <https://grapheneos.org/faq#anti-theft>`_ which is not implemented by GrapheneOS. OEM unlocking controls whether the device can be unlocked via boot loader. In the later case all user data is wiped. If OEM Unlocking is disabled, someone can still boot up in recovery mode, enter the menu, wipe data, then boot the OS and enable OEM unlocking. Therefore it doesn't really increase the security but `disabling it <index.html>`_ reduces the potential physical attack surface. To check or change the permissions on network access and sensors for a specific app: To make it difficult for strangers to read the PIN when typing it in, you can display the PIN layout in a random order. Additionally, we recommend a `privacy screen <https://shop.nitrokey.com/shop/product/privacyscreen-for-nitrophone-1-194>`_. To enable, select: *Settings -> Security -> PIN scrambling -> Scramble PIN* To prevent some apps from accessing Google Play Services, install Google Play Services in a separate profile. To do this, create a new dedicated user profile and install the Google Play Services there. Using a work profile together with *Shelter* is also possible, but without as much isolation. VPN: Orbot uses the free TOR network. Mullvad VPN and IVPN are paid VPN services. You can use these nice background images: `Briar <https://briarproject.org/>`_ is a peer-to-peer messenger without any server at all, which can be used without internet with contacts nearby. `Element <https://element.io/>`_ does not require a central infrastructure and allows the use of own servers. An own account can be registered for free at `NitroChat <https://nitro.chat>`_ for example. `Here <https://grapheneos.org/faq>`_ you can find further information on GrapheneOS. `Signal <https://signal.org/android/apk/>`_ is secure and now widely used. It can also be downloaded without an app store. Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-02-14 13:22+0100
PO-Revision-Date: 2022-03-12 11:38+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: de
Language-Team: German <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-nitrophone/de/>
Plural-Forms: nplurals=2; plural=n != 1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 **Q:** Funktioniert das Nitrophone mit meinem Mobilfunknetz? **Q:** Wie kann ich überprüfen, ob mein NitroPhone gehackt/kompromittiert wurde? **Q:** Was ist ein *Kill Switch* und wie kann man ihn aktivieren? **Q:** Was ist und wie aktiviert man *PIN Layout Scrambling*? **Q:** Wo kann ich weitere Informationen über GrapheneOS erhalten? **Q:** Warum erhalte ich "Warnung: Your device is loading a different operating system"? **Q:** Warum ist die OEM-Freischaltung standardmäßig aktiviert? *Langer Druck auf das jeweilige App-Symbol -> App-Info -> Berechtigungen* App-Store Hintergrundbilder Sicherung: Das integrierte Backup (Seedvault) und Nextcloud. Wählen Sie Einstellungen -> System -> Backup. Browser: Der vorinstallierte Browser Vanadium ist gehärtet und wird daher für hohe Sicherheit empfohlen. Für eine bessere Werbeblockierung wird stattdessen der `Bromite <https://github.com/bromite/bromite/releases/latest>`_ Browser empfohlen. Standardmäßig verfügen Sie über ein sicheres Smartphone, auf dem alle wichtigen Anwendungen bereits vorinstalliert sind. Kompatible Apps Synchronisierung von Kontakten und Kalendern: DAVx5 unterstützt CalDAV, CardDAV und WebCAL. Laden Sie alle 5 Dateien von `com.android.vending <https://apps.grapheneos.org/packages/com.android.vending/>`_ herunter. Früher gab es eine Liste, aber mit dem Fortschreiten der Play Service-Implementierung sollten die meisten Apps funktionieren, auch wenn es immer noch einige gibt, die nicht funktionieren, eine Liste wird `hier <https://github.com/Peter-Easton/GrapheneOS-Knowledge/tree/master/App%20Incompatibility%20List>`_ verfügbar sein. E-Mail: K9-mail und OpenKeyChain (für OpenPGP-Verschlüsselung) oder FairEmail. Für zusätzliche Härtung (optional): Gehen Sie zu Einstellungen -> System -> Entwickleroptionen und deaktivieren Sie die "OEM-Entsperrung" Einstellung. Deaktivieren Sie anschließend die "Entwickleroptionen". Weitere Einzelheiten finden Sie auf den folgenden Seiten: Bei sehr hohen Sicherheitsanforderungen sollten Sie so wenige Apps wie möglich verwenden, um eine kleine Angriffsfläche zu bieten. Wenn Sie das NitroPhone stattdessen als alltägliches Smartphone mit mehr Apps verwenden möchten, empfehlen wir: Wählen Sie auf dem Startbildschirm: *Einstellungen -> Apps -> Google Play-Dienste und deaktivieren Sie die Batterieoptimierung*. Erste Schritte Google behauptet, dass die Pixel-Telefone mit "allen großen Netzbetreibern" funktionieren sollten. Trotzdem kann es Ausnahmen geben, denn wir können natürlich nicht "alle" Netzbetreiber auf der ganzen Welt überprüfen. Die beste Praxis ist, zu überprüfen, ob Sie einige Tests/Erfahrungsberichte über das Pixel 4a zusammen mit Ihrem geplanten Träger-Netzwerk finden. Wenn Ihnen die Apps in F-Droid nicht ausreichen, öffnen Sie F-Droid und installieren Sie den Aurora Store. Im Aurora Store können Sie alle Apps aus dem Google Play Store installieren. Wenn Sie die Integrität des Betriebssystems überprüfen wollen, können Sie die `Fernüberprüfung <https://attestation.app/about>`_ verwenden. Installieren Sie `com.google.android.gms <https://apps.grapheneos.org/packages/com.google.android.gms/>`_. Installieren Sie `com.google.android.gsf <https://apps.grapheneos.org/packages/com.google.android.gsf/>`_. Installieren Sie den `F-Droid <https://f-droid.org/F-Droid.apk>`_ App Store. Hier gibt es ausschließlich Open-Source-Apps, die ohne drastisches Tracking und ohne Werbung auskommen. Hier finden Sie Tausende von Apps aus den verschiedensten Bereichen. Wenn Sie auf der Suche nach einer App sind, schauen Sie zuerst bei F-Droid nach. Kill Switches, die bei Auslösung alle Daten des Telefons löschen, sind in der Praxis sehr riskant, da sie unbeabsichtigt ausgelöst werden können. Daher verfügt das NitroPhone stattdessen über die Funktion, sich automatisch abzuschalten und neu zu starten, wenn es eine bestimmte Zeit lang inaktiv ist. Dadurch wird das Telefon in einen sicheren Zustand versetzt, in dem alle Daten verschlüsselt sind, sich keine Daten im RAM befinden und das Telefon nur mit der legitimen PIN oder dem Passwort entsperrt werden kann. Zum Aktivieren wählen Sie: *Einstellungen -> Sicherheit -> Automatischer Neustart -> wählen Sie die Leerlaufzeit, nach der das Telefon neu gestartet werden soll*. Viele Apps funktionieren auch ohne Google Play Services. Wenn Sie jedoch Apps verwenden möchten, die Google Play Services benötigen, können Sie `Google Play Services in einer Sandbox <https://grapheneos.org/usage#sandboxed-play-services>`_ wie folgt installieren. In Zukunft wird ein Installationsprogramm zur Verfügung gestellt, um den Installationsprozess zu vereinfachen. Messenger: NitroPhone NitroPhone-Anwendungen NitroPhone FAQ Einmal-Passwort-Generator (2FA, OTP): `Aegis Authenticator <https://github.com/beemdevelopment/Aegis>`_. Öffnen Sie F-Droid und installieren Sie Split APKs Installer (SAI). (Auch erhältlich im Aurora Store) Öffnen Sie Split APKs Installer und installieren Sie alle fünf Dateien, die Sie in Schritt 3 heruntergeladen haben. **Anmerkung:** Die richtige Basisdatei wurde wahrscheinlich in ``base (2).apk`` umbenannt. Öffnen Sie einmal den Google Play Store und klicken Sie auf "Anmelden", um die Initialisierung zu starten. Sie müssen die Anmeldung nicht abschließen und eine echte Anmeldung ist nicht erforderlich. Dies dient lediglich der Initialisierung der Software. Berechtigungen für einzelne Apps Bitte machen Sie sich mit der `Verwendung Ihres GrapheneOS <https://grapheneos.org/usage>`_ vertraut. Empfohlene Apps Bezüglich der Kamera-App, siehe `hier <https://grapheneos.org/usage#camera>`_. Richten Sie eine sechsstellige PIN zum Schutz des Telefons ein. In Zusammenarbeit mit dem Sicherheitschip gewährleistet dies eine hohe Sicherheit bei gleichzeitig guter Bedienbarkeit. Kurz nach dem Einschalten des Telefons wird die Warnung "Ihr Gerät lädt ein anderes Betriebssystem" angezeigt. Diese Warnung zeigt an, dass kein normales Google Android läuft und kann ignoriert werden. Der Google Play Store kann aufgrund der Sandbox keine Apps installieren und aktualisieren. Verwenden Sie stattdessen immer F-Droid (für Open-Source-Apps) oder Aurora Store (für Apps aus dem Google Play Store), um Apps zu installieren. Der einzige wirkliche Zweck der OEM-Unlocking-Einstellung ist der `Diebstahlschutz <https://grapheneos.org/faq#anti-theft>`_, der von GrapheneOS nicht implementiert wird. OEM Unlocking steuert, ob das Gerät über den Bootloader entsperrt werden kann. Im letzteren Fall werden alle Benutzerdaten gelöscht. Wenn die OEM-Entsperrung deaktiviert ist, kann jemand trotzdem im Wiederherstellungsmodus booten, das Menü aufrufen, Daten löschen, dann das Betriebssystem booten und die OEM-Entsperrung aktivieren. Daher erhöht es nicht wirklich die Sicherheit, aber `die Deaktivierung <index.html>`_ reduziert die potentielle physische Angriffsfläche. So prüfen oder ändern Sie die Berechtigungen für den Netzwerkzugriff und die Sensoren für eine bestimmte App: Um es Fremden zu erschweren, die PIN bei der Eingabe zu lesen, können Sie das PIN-Layout in zufälliger Reihenfolge anzeigen. Zusätzlich empfehlen wir einen `Sicherheitsbildschirm <https://shop.nitrokey.com/shop/product/privacyscreen-for-nitrophone-1-194>`_. Zum Aktivieren, wählen Sie: *Einstellungen -> Sicherheit -> PIN-Verwürfelung -> PIN verschlüsseln* Um zu verhindern, dass einige Apps auf Google Play Services zugreifen, installieren Sie Google Play Services in einem separaten Profil. Erstellen Sie dazu ein neues dediziertes Benutzerprofil und installieren Sie die Google Play Services dort. Die Verwendung eines Arbeitsprofils zusammen mit *Shelter* ist ebenfalls möglich, allerdings ohne so viel Isolierung. VPN: Orbot benutzt das kostenlose TOR-Netzwerk. Mullvad VPN und IVPN sind kostenpflichtige VPN-Dienste. Sie können diese schönen Hintergrundbilder verwenden: `Briar <https://briarproject.org/>`_ ist ein Peer-to-Peer-Messenger ohne jeglichen Server, der ohne Internet mit Kontakten in der Nähe genutzt werden kann. `Element <https://element.io/>`_ benötigt keine zentrale Infrastruktur und erlaubt die Nutzung eigener Server. Ein eigener Account kann zum Beispiel bei `NitroChat <https://nitro.chat>`_ kostenlos registriert werden. `Hier <https://grapheneos.org/faq>`_ finden Sie weitere Informationen zu GrapheneOS. `Signal <https://signal.org/android/apk/>`_ ist sicher und inzwischen weit verbreitet. Es kann auch ohne einen App-Store heruntergeladen werden. 