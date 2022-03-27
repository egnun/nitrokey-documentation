��    9      �              �  8   �  E   �  6   ,  :   c  <   �  S   �  /   /  B   _  	   �     �  ]   �  �     `   �     Z  Q   j  m   �    *  F   B	  �   �	  *   ,
  �   W
  i   '     �  -  �  �   �     g  a   �  a   I    �  #  �  ;  �  
   '  
   2     =     M  j   \  [   �  �   #  �   �     �  Y   �     �  H     �   X  �   �  �   �  %  x  T   �  ?  �  '  3  Q   [  )   �  �   �  �   l  T   6  z   �       :   ""  R   ]"  4   �"  :   �"  C    #  d   d#  <   �#  \   $  	   c$     m$  _   y$  �   �$  c   �%     6&  R   M&  q   �&  *  '  T   =(  �   �(  :   E)    �)  q   �*     �*  d  +  �   v,  �   2-  d   �-  d   .    �.  �  �/  ^  :2     �3  
   �3     �3     �3  m   �3  ]   B4  �   �4  �   ^5  %   36  _   Y6     �6  [   �6  �   (7  �   �7  �   �8  �  �9  a   S<  _  �<  B  >  Y   X?  +   �?  �   �?  �   {@  ^   QA  �   �A   **Q:** Does the Nitrophone work with my carrier network? **Q:** How can I check, if my NitroPhone has been hacked/compromised? **Q:** What is a *Kill Switch* and how to activate it? **Q:** What is and how to activate *PIN Layout Scrambling* **Q:** Where can I get further information about GrapheneOS? **Q:** Why do I get "Warning: Your device is loading a different operating system"? **Q:** Why is OEM unlocking enabled by default? *Long press on the respective app icon -> app info -> permissions* App Store Background Images Backup: The integrated backup (Seedvault) and Nextcloud. Choose Settings -> System -> Backup. Browser: The pre-installed browser Vanadium is hardened and therefore recommended for high security. For better ad blocking, `Bromite <https://github.com/bromite/bromite/releases/latest>`_ browser is recommended instead. By default you have a secure smartphone, already pre-installed with all the most necessary apps. Compatible Apps Contacts and calendar synchronization: DAVx5 supports CalDAV, CardDAV and WebCAL. Download all 5 files from `com.android.vending <https://apps.grapheneos.org/packages/com.android.vending/>`_. Earlier there was a list, but as the Play Service implementation progresses, most of the apps should work, although there are still some not working, a list will be available `here <https://github.com/Peter-Easton/GrapheneOS-Knowledge/tree/master/App%20Incompatibility%20List>`_. Email: K9-mail and OpenKeyChain (for OpenPGP encryption) or FairEmail. For extra hardening (optional): Go to Settings -> System -> Developer Options and disable the "OEM unlocking" setting. Afterwards disable the "Developer Options". For more details, see the following pages: For very high security requirements, you should use as few apps as possible to provide a small attack surface. If instead you want to use the NitroPhone as an everyday smartphone with more apps we recommend: From the home screen, select: *Settings -> Apps -> Google Play services and disable battery optimization* Getting Started Google claims `all major carriers`_ should work with the Pixel phones. Nevertheless there might be exceptions, obviously we cannot check `all` carriers around the world. Best practice, is to check if you find some tests/experience stories about the Pixel 4a together with your planned carrier network. If the apps in F-Droid are not enough for you, open F-Droid and install Aurora Store. In Aurora Store, you can install all apps from Google Play Store. If you want to check the integrity of the operating system, you can use `remote verification <https://attestation.app/about>`_. Install `com.google.android.gms <https://apps.grapheneos.org/packages/com.google.android.gms/>`_. Install `com.google.android.gsf <https://apps.grapheneos.org/packages/com.google.android.gsf/>`_. Install the `F-Droid <https://f-droid.org/F-Droid.apk>`_ App Store. This has exclusively open source apps that do without drastic tracking and without advertising. Here you will find thousands of apps from a wide variety of fields. If you are looking for an app, check F-Droid first. Kill Switches, which erase all the phone's data when triggered, are very risky in practice as they could be triggered unintentionally. Therefore, the NitroPhone instead has the feature to automatically shut down and restart when inactive for a set period of time. This puts the phone in a secure state where all data is encrypted, no data is in RAM, and the phone can only be unlocked with the legitimate PIN or password. To enable, select: *Settings -> Security -> Auto reboot -> select the idle time duration after which the phone should reboot* Many apps work without Google Play Services. However, if you want to use apps that require Google Play Services, you can install `Google Play Services in a sandbox <https://grapheneos.org/usage#sandboxed-play-services>`_ as follows. In the future, an installer will be provided to simplify the installation process. Messenger: NitroPhone NitroPhone Apps NitroPhone FAQ One-time password generator (2FA, OTP): `Aegis Authenticator <https://github.com/beemdevelopment/Aegis>`_. Open F-Droid and install Split APKs Installer (SAI). (Also available from the Aurora Store) Open Split APKs Installer and install all five files you downloaded in step 3. **Note:** The correct base file has probably been renamed to ``base (2).apk``. Open the Google Play Store once and press "Sign in" to start the initialization. You don't have to finish the sign in and a real login is not necessary. This is solely to initialize the software. Permissions of Individual Apps Please familiarize yourself with `using your GrapheneOS <https://grapheneos.org/usage>`_. Recommended Apps Regarding camera app, see `here <https://grapheneos.org/usage#camera>`_. Set up a six-digit PIN to protect the phone. In cooperation with the security chip, this will ensure high security while maintaining good usability. Shortly after the phone is turned on, the warning "Your device is loading a different operating system" is displayed. This warning indicates that no ordinary Google Android is running and can be ignored. The Google Play Store cannot install and update apps due to the sandbox. Instead, always use F-Droid (for open source apps) or Aurora Store (for apps from Google Play Store) to install apps. The only real purpose of the OEM Unlocking setting is `anti-theft protection <https://grapheneos.org/faq#anti-theft>`_ which is not implemented by GrapheneOS. OEM unlocking controls whether the device can be unlocked via boot loader. In the later case all user data is wiped. If OEM Unlocking is disabled, someone can still boot up in recovery mode, enter the menu, wipe data, then boot the OS and enable OEM unlocking. Therefore it doesn't really increase the security but `disabling it <index.html>`_ reduces the potential physical attack surface. To check or change the permissions on network access and sensors for a specific app: To make it difficult for strangers to read the PIN when typing it in, you can display the PIN layout in a random order. Additionally, we recommend a `privacy screen <https://shop.nitrokey.com/shop/product/privacyscreen-for-nitrophone-1-194>`_. To enable, select: *Settings -> Security -> PIN scrambling -> Scramble PIN* To prevent some apps from accessing Google Play Services, install Google Play Services in a separate profile. To do this, create a new dedicated user profile and install the Google Play Services there. Using a work profile together with *Shelter* is also possible, but without as much isolation. VPN: Orbot uses the free TOR network. Mullvad VPN and IVPN are paid VPN services. You can use these nice background images: `Briar <https://briarproject.org/>`_ is a peer-to-peer messenger without any server at all, which can be used without internet with contacts nearby. `Element <https://element.io/>`_ does not require a central infrastructure and allows the use of own servers. An own account can be registered for free at `NitroChat <https://nitro.chat>`_ for example. `Here <https://grapheneos.org/faq>`_ you can find further information on GrapheneOS. `Signal <https://signal.org/android/apk/>`_ is secure and now widely used. It can also be downloaded without an app store. Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-02-14 13:22+0100
PO-Revision-Date: 2022-03-12 11:38+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: pl
Language-Team: Polish <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-nitrophone/pl/>
Plural-Forms: nplurals=3; plural=n==1 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 **Q:** Czy Nitrophone działa z moją siecią operatorów? **Q:** Jak mogę sprawdzić, czy mój NitroPhone został zhakowany/kompromitowany? **Q:** Co to jest *Kill Switch* i jak go aktywować? **Q:** Czym jest i jak aktywować *PIN Layout Scrambling*? **Q:** Gdzie mogę uzyskać więcej informacji na temat GrapheneOS? **Q:** Dlaczego wyświetla mi się "Ostrzeżenie: Twoje urządzenie ładuje inny system operacyjny"? **Q:** Dlaczego odblokowanie OEM jest domyślnie włączone? *Długie naciśnięcie na odpowiednią ikonę aplikacji -> info o aplikacji -> uprawnienia*. App Store Obrazy tła Backup: Zintegrowany backup (Seedvault) oraz Nextcloud. Wybierz Ustawienia -> System -> Backup. Przeglądarka: Preinstalowana przeglądarka Vanadium jest wzmocniona i dlatego jest zalecana dla wysokiego bezpieczeństwa. Dla lepszego blokowania reklam, zalecana jest przeglądarka `Bromite <https://github.com/bromite/bromite/releases/latest>`_. Domyślnie masz bezpieczny smartfon, z preinstalowanymi wszystkimi najpotrzebniejszymi aplikacjami. Kompatybilne aplikacje Synchronizacja kontaktów i kalendarza: DAVx5 obsługuje CalDAV, CardDAV i WebCAL. Pobierz wszystkie 5 plików z `com.android.vending <https://apps.grapheneos.org/packages/com.android.vending/>`_. Wcześniej była lista, ale w miarę postępu wdrażania usługi Play, większość aplikacji powinna działać, choć są jeszcze takie, które nie działają, lista będzie dostępna `tutaj <https://github.com/Peter-Easton/GrapheneOS-Knowledge/tree/master/App%20Incompatibility%20List>%20List>`_. Poczta elektroniczna: K9-mail i OpenKeyChain (do szyfrowania OpenPGP) lub FairEmail. Dla dodatkowego hartowania (opcjonalnie): Przejdź do Ustawienia -> System -> Opcje programisty i wyłącz ustawienie "Odblokowanie OEM". Następnie wyłącz "Opcje programisty". Więcej szczegółów znajduje się na kolejnych stronach: W przypadku bardzo wysokich wymagań bezpieczeństwa należy używać jak najmniejszej liczby aplikacji, aby zapewnić niewielką powierzchnię ataku. Jeśli zamiast tego chcesz używać NitroPhone jako codziennego smartfona z większą ilością aplikacji, zalecamy: Na ekranie głównym wybierz: *Ustawienia -> Aplikacje -> Usługi Google Play i wyłącz optymalizację baterii*. Rozpoczęcie pracy Google twierdzi, że ` wszystkie główne przewoźnicy`_ powinny działać z telefonów Pixel. Niemniej jednak mogą być wyjątki, oczywiście nie możemy sprawdzić `wszystkich` przewoźników na całym świecie. Najlepszą praktyką jest sprawdzenie, czy znajdziesz jakieś testy / historie doświadczeń o Pixel 4a wraz z planowanej sieci przewoźnika. Jeśli aplikacje w F-Droid nie są wystarczające dla Ciebie, otworzyć F-Droid i zainstalować Aurora Store. W Aurora Store, można zainstalować wszystkie aplikacje z Google Play Store. Jeśli chcesz sprawdzić integralność systemu operacyjnego, możesz użyć ` weryfikacji zdalnej <https://attestation.app/about>`_. Zainstaluj `com.google.android.gms <https://apps.grapheneos.org/packages/com.google.android.gms/>`_. Zainstaluj `com.google.android.gsf <https://apps.grapheneos.org/packages/com.google.android.gsf/>`_. Zainstaluj `F-Droid <https://f-droid.org/F-Droid.apk>`_ App Store. To ma wyłącznie aplikacje open source, które robią bez drastycznego śledzenia i bez reklamy. Tutaj znajdziesz tysiące aplikacji z różnych dziedzin. Jeśli szukasz aplikacji, sprawdź F-Droid pierwszy. Wyłączniki, które po uruchomieniu kasują wszystkie dane telefonu, są w praktyce bardzo ryzykowne, ponieważ mogą zostać przypadkowo uruchomione. Dlatego NitroPhone posiada funkcję automatycznego wyłączania i ponownego uruchamiania, gdy nie jest aktywny przez określony czas. Dzięki temu telefon przechodzi w bezpieczny stan, w którym wszystkie dane są zaszyfrowane, żadne dane nie znajdują się w pamięci RAM, a telefon można odblokować tylko za pomocą odpowiedniego kodu PIN lub hasła. Aby włączyć, wybierz: *Ustawienia -> Bezpieczeństwo -> Automatyczny restart -> wybierz czas trwania bezczynności, po którym telefon powinien się zrestartować*. Wiele aplikacji działa bez Usług Google Play. Jeśli jednak chcesz używać aplikacji, które wymagają Usług Google Play, możesz zainstalować `Usługi Google Play w piaskownicy <https://grapheneos.org/usage#sandboxed-play-services>`_ w następujący sposób. W przyszłości zostanie udostępniony instalator, który uprości proces instalacji. Posłaniec: NitroPhone Aplikacje NitroPhone NitroPhone FAQ Generator haseł jednorazowych (2FA, OTP): `Aegis Authenticator <https://github.com/beemdevelopment/Aegis>`_. Otwórz F-Droid i zainstaluj Split APKs Installer (SAI). (Dostępne również z Aurora Store) Otwórz Split APKs Installer i zainstaluj wszystkie pięć plików, które pobrałeś w kroku 3. **Uwaga:** Prawidłowy plik bazowy został prawdopodobnie przemianowany na ``base (2).apk``. Otwórz Google Play Store raz i naciśnij "Sign in", aby rozpocząć inicjalizację. Nie musisz dokończyć logowania i prawdziwe logowanie nie jest konieczne. To jest wyłącznie do inicjalizacji oprogramowania. Uprawnienia poszczególnych aplikacji Prosimy o zapoznanie się z `użytkowaniem systemu GrapheneOS <https://grapheneos.org/usage>`_. Polecane aplikacje Jeśli chodzi o aplikację aparatu, zobacz ` tutaj <https://grapheneos.org/usage#camera>`_. Ustaw sześciocyfrowy kod PIN, aby chronić telefon. We współpracy z chipem zabezpieczającym zapewni to wysokie bezpieczeństwo przy jednoczesnym zachowaniu dobrej użyteczności. Wkrótce po włączeniu telefonu wyświetlane jest ostrzeżenie "Twoje urządzenie ładuje inny system operacyjny". To ostrzeżenie wskazuje, że nie jest uruchomiony zwykły Google Android i może być zignorowane. Sklep Google Play nie może instalować i aktualizować aplikacji z powodu piaskownicy. Zamiast tego, zawsze używaj F-Droid (dla aplikacji open source) lub Aurora Store (dla aplikacji z Google Play Store) do instalowania aplikacji. Jedynym prawdziwym celem ustawienia Odblokowanie OEM jest ` ochrona antykradzieżowa <https://grapheneos.org/faq#anti-theft>`_, która nie jest zaimplementowana przez GrapheneOS. Odblokowanie OEM kontroluje, czy urządzenie może być odblokowane poprzez bootloader. W tym drugim przypadku wszystkie dane użytkownika są wymazywane. Jeśli odblokowanie OEM jest wyłączone, ktoś nadal może uruchomić urządzenie w trybie odzyskiwania, wejść do menu, wymazać dane, a następnie uruchomić system operacyjny i włączyć odblokowanie OEM. Dlatego tak naprawdę nie zwiększa to bezpieczeństwa, ale `wyłączenie go <index.html>`_zmniejsza potencjalną powierzchnię ataku fizycznego. Aby sprawdzić lub zmienić uprawnienia dostępu do sieci i czujników dla określonej aplikacji: Aby utrudnić osobom postronnym odczytanie kodu PIN podczas jego wpisywania, można wyświetlić układ kodu PIN w losowej kolejności. Dodatkowo zalecamy zastosowanie ekranu prywatności ` <https://shop.nitrokey.com/shop/product/privacyscreen-for-nitrophone-1-194>`_. Aby włączyć, wybierz: *Settings -> Security -> PIN scrambling -> Scramble PIN*. Aby uniemożliwić niektórym aplikacjom dostęp do Usług Google Play, zainstaluj Usługi Google Play w osobnym profilu. W tym celu należy utworzyć nowy dedykowany profil użytkownika i zainstalować w nim Usługi Google Play. Użycie profilu roboczego wraz z *Shelter* jest również możliwe, ale bez takiej izolacji. VPN: Orbot korzysta z darmowej sieci TOR. Mullvad VPN i IVPN są płatnymi usługami VPN. Możesz użyć tych ładnych obrazów tła: `Briar <https://briarproject.org/>`_ jest komunikatorem peer-to-peer bez żadnego serwera, który może być używany bez internetu z kontaktami w pobliżu. `Element <https://element.io/>`_ nie wymaga centralnej infrastruktury i pozwala na korzystanie z własnych serwerów. Własne konto można zarejestrować za darmo na przykład na `NitroChat <https://nitro.chat>`_. `Tutaj <https://grapheneos.org/faq>`_ można znaleźć więcej informacji na temat GrapheneOS. `Signal <https://signal.org/android/apk/>`_ jest bezpieczny i obecnie szeroko stosowany. Można go również pobrać bez sklepu z aplikacjami. 