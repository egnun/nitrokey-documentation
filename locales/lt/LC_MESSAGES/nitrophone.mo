��    9      �              �  8   �  E   �  6   ,  :   c  <   �  S   �  /   /  B   _  	   �     �  ]   �  �     `   �     Z  Q   j  m   �    *  F   B	  �   �	  *   ,
  �   W
  i   '     �  -  �  �   �     g  a   �  a   I    �  #  �  ;  �  
   '  
   2     =     M  j   \  [   �  �   #  �   �     �  Y   �     �  H     �   X  �   �  �   �  %  x  T   �  ?  �  '  3  Q   [  )   �  �   �  �   l  T   6  z   �  &     7   -"  x   e"  8   �"  7   #  C   O#  V   �#  G   �#  c   2$  
   �$     �$  �   �$    0%     5&     �&  T   �&  t    '  $  �'  J   �(  �   )  0   �)  	  �)  �   �*     v+  V  �+  �   �,  �   �-  c   .  c   �.    �.  �  �/  F  �2     �3     �3     �3     4  y   4  u   �4  �   5  �   �5     �6  N   �6     #7  K   =7  �   �7  �   <8  �   9  ^  �9  e   Z<  i  �<  A  *>  \   l?  ,   �?  �   �?  �   �@  S   lA  �   �A   **Q:** Does the Nitrophone work with my carrier network? **Q:** How can I check, if my NitroPhone has been hacked/compromised? **Q:** What is a *Kill Switch* and how to activate it? **Q:** What is and how to activate *PIN Layout Scrambling* **Q:** Where can I get further information about GrapheneOS? **Q:** Why do I get "Warning: Your device is loading a different operating system"? **Q:** Why is OEM unlocking enabled by default? *Long press on the respective app icon -> app info -> permissions* App Store Background Images Backup: The integrated backup (Seedvault) and Nextcloud. Choose Settings -> System -> Backup. Browser: The pre-installed browser Vanadium is hardened and therefore recommended for high security. For better ad blocking, `Bromite <https://github.com/bromite/bromite/releases/latest>`_ browser is recommended instead. By default you have a secure smartphone, already pre-installed with all the most necessary apps. Compatible Apps Contacts and calendar synchronization: DAVx5 supports CalDAV, CardDAV and WebCAL. Download all 5 files from `com.android.vending <https://apps.grapheneos.org/packages/com.android.vending/>`_. Earlier there was a list, but as the Play Service implementation progresses, most of the apps should work, although there are still some not working, a list will be available `here <https://github.com/Peter-Easton/GrapheneOS-Knowledge/tree/master/App%20Incompatibility%20List>`_. Email: K9-mail and OpenKeyChain (for OpenPGP encryption) or FairEmail. For extra hardening (optional): Go to Settings -> System -> Developer Options and disable the "OEM unlocking" setting. Afterwards disable the "Developer Options". For more details, see the following pages: For very high security requirements, you should use as few apps as possible to provide a small attack surface. If instead you want to use the NitroPhone as an everyday smartphone with more apps we recommend: From the home screen, select: *Settings -> Apps -> Google Play services and disable battery optimization* Getting Started Google claims `all major carriers`_ should work with the Pixel phones. Nevertheless there might be exceptions, obviously we cannot check `all` carriers around the world. Best practice, is to check if you find some tests/experience stories about the Pixel 4a together with your planned carrier network. If the apps in F-Droid are not enough for you, open F-Droid and install Aurora Store. In Aurora Store, you can install all apps from Google Play Store. If you want to check the integrity of the operating system, you can use `remote verification <https://attestation.app/about>`_. Install `com.google.android.gms <https://apps.grapheneos.org/packages/com.google.android.gms/>`_. Install `com.google.android.gsf <https://apps.grapheneos.org/packages/com.google.android.gsf/>`_. Install the `F-Droid <https://f-droid.org/F-Droid.apk>`_ App Store. This has exclusively open source apps that do without drastic tracking and without advertising. Here you will find thousands of apps from a wide variety of fields. If you are looking for an app, check F-Droid first. Kill Switches, which erase all the phone's data when triggered, are very risky in practice as they could be triggered unintentionally. Therefore, the NitroPhone instead has the feature to automatically shut down and restart when inactive for a set period of time. This puts the phone in a secure state where all data is encrypted, no data is in RAM, and the phone can only be unlocked with the legitimate PIN or password. To enable, select: *Settings -> Security -> Auto reboot -> select the idle time duration after which the phone should reboot* Many apps work without Google Play Services. However, if you want to use apps that require Google Play Services, you can install `Google Play Services in a sandbox <https://grapheneos.org/usage#sandboxed-play-services>`_ as follows. In the future, an installer will be provided to simplify the installation process. Messenger: NitroPhone NitroPhone Apps NitroPhone FAQ One-time password generator (2FA, OTP): `Aegis Authenticator <https://github.com/beemdevelopment/Aegis>`_. Open F-Droid and install Split APKs Installer (SAI). (Also available from the Aurora Store) Open Split APKs Installer and install all five files you downloaded in step 3. **Note:** The correct base file has probably been renamed to ``base (2).apk``. Open the Google Play Store once and press "Sign in" to start the initialization. You don't have to finish the sign in and a real login is not necessary. This is solely to initialize the software. Permissions of Individual Apps Please familiarize yourself with `using your GrapheneOS <https://grapheneos.org/usage>`_. Recommended Apps Regarding camera app, see `here <https://grapheneos.org/usage#camera>`_. Set up a six-digit PIN to protect the phone. In cooperation with the security chip, this will ensure high security while maintaining good usability. Shortly after the phone is turned on, the warning "Your device is loading a different operating system" is displayed. This warning indicates that no ordinary Google Android is running and can be ignored. The Google Play Store cannot install and update apps due to the sandbox. Instead, always use F-Droid (for open source apps) or Aurora Store (for apps from Google Play Store) to install apps. The only real purpose of the OEM Unlocking setting is `anti-theft protection <https://grapheneos.org/faq#anti-theft>`_ which is not implemented by GrapheneOS. OEM unlocking controls whether the device can be unlocked via boot loader. In the later case all user data is wiped. If OEM Unlocking is disabled, someone can still boot up in recovery mode, enter the menu, wipe data, then boot the OS and enable OEM unlocking. Therefore it doesn't really increase the security but `disabling it <index.html>`_ reduces the potential physical attack surface. To check or change the permissions on network access and sensors for a specific app: To make it difficult for strangers to read the PIN when typing it in, you can display the PIN layout in a random order. Additionally, we recommend a `privacy screen <https://shop.nitrokey.com/shop/product/privacyscreen-for-nitrophone-1-194>`_. To enable, select: *Settings -> Security -> PIN scrambling -> Scramble PIN* To prevent some apps from accessing Google Play Services, install Google Play Services in a separate profile. To do this, create a new dedicated user profile and install the Google Play Services there. Using a work profile together with *Shelter* is also possible, but without as much isolation. VPN: Orbot uses the free TOR network. Mullvad VPN and IVPN are paid VPN services. You can use these nice background images: `Briar <https://briarproject.org/>`_ is a peer-to-peer messenger without any server at all, which can be used without internet with contacts nearby. `Element <https://element.io/>`_ does not require a central infrastructure and allows the use of own servers. An own account can be registered for free at `NitroChat <https://nitro.chat>`_ for example. `Here <https://grapheneos.org/faq>`_ you can find further information on GrapheneOS. `Signal <https://signal.org/android/apk/>`_ is secure and now widely used. It can also be downloaded without an app store. Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-02-14 13:22+0100
PO-Revision-Date: 2022-03-12 11:38+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: lt
Language-Team: Lithuanian <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-nitrophone/lt/>
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 **Q:** Ar "Nitrophone" veikia mano operatoriaus tinkle? **Q:** Kaip galiu patikrinti, ar į mano "NitroPhone" telefoną buvo įsilaužta ir (arba) pažeistas jo funkcionalumas? **Q:** Kas yra *žudymo jungiklis* ir kaip jį įjungti? **Q:** Kas yra ir kaip įjungti *PIN Layout Scrambling* **Q:** Kur galėčiau gauti daugiau informacijos apie "GrapheneOS"? **Q:** Kodėl gaunu "Įspėjimas: Jūsų įrenginys krauna kitą operacinę sistemą"? **Q:** Kodėl OEM atrakinimas įjungtas pagal numatytuosius nustatymus? *Dilgai paspauskite atitinkamos programėlės piktogramą -> programėlės informacija -> leidimai* "App Store Fono vaizdai Atsarginė kopija: Integruota atsarginė kopija (Seedvault) ir Nextcloud. Pasirinkite Nustatymai -> Sistema -> Atsarginė kopija. Naršyklė: Iš anksto įdiegta naršyklė "Vanadium" yra apsaugota, todėl rekomenduojama užtikrinti aukštą saugumą. Jei norite geriau blokuoti skelbimus, rekomenduojama naudoti `"Bromite" <https://github.com/bromite/bromite/releases/latest>`_ naršyklę. Pagal numatytuosius nustatymus turite saugų išmanųjį telefoną, kuriame iš anksto įdiegtos visos būtiniausios programos. Suderinamos programos Kontaktų ir kalendoriaus sinchronizavimas: DAVx5 palaiko CalDAV, CardDAV ir WebCAL. Atsisiųskite visus 5 failus iš `com.android.vending <https://apps.grapheneos.org/packages/com.android.vending/>`_. Anksčiau buvo pateiktas sąrašas, tačiau, kai "Play Service" įgyvendinimas vyksta, dauguma programų turėtų veikti, nors kai kurios vis dar neveikia, sąrašas bus pateiktas `čia <https://github.com/Peter-Easton/GrapheneOS-Knowledge/tree/master/App%20Incompatibility%20List>%20List>`_. El. paštas: K9-mail ir OpenKeyChain (OpenPGP šifravimui) arba FairEmail. Papildomam sukietėjimui (neprivaloma): Eikite į Nustatymai -> Sistema -> Kūrėjo parinktys ir išjunkite "OEM atrakinimo" nustatymą. Po to išjunkite "Programuotojo parinktys". Daugiau informacijos rasite šiuose puslapiuose: Jei keliami labai aukšti saugumo reikalavimai, turėtumėte naudoti kuo mažiau programų, kad būtų užtikrintas nedidelis atakos paviršius. Jei vietoj to norite naudoti "NitroPhone" kaip kasdienį išmanųjį telefoną su daugiau programėlių, rekomenduojame: Pradiniame ekrane pasirinkite: *Nustatymai -> Programos -> "Google Play" paslaugos ir išjunkite akumuliatoriaus optimizavimą*. Darbo pradžia "Google" teigia, kad `su "Pixel" telefonais turėtų veikti visi pagrindiniai operatoriai. Nepaisant to, gali būti išimčių, nes akivaizdu, kad negalime patikrinti `visų` operatorių visame pasaulyje. Geriausia praktika - patikrinti, ar rasite kokių nors "Pixel 4a" bandymų / patirties istorijų kartu su planuojamu operatoriaus tinklu. Jei "F-Droid" esančių programų jums nepakanka, atidarykite "F-Droid" ir įdiekite "Aurora Store". "Aurora Store" galite įdiegti visas "Google Play" parduotuvėje esančias programėles. Jei norite patikrinti operacinės sistemos vientisumą, galite naudoti `nuotolinį patikrinimą <https://attestation.app/about>`_. Įdiekite `com.google.android.gms <https://apps.grapheneos.org/packages/com.google.android.gms/>`_. Įdiekite `com.google.android.gsf <https://apps.grapheneos.org/packages/com.google.android.gsf/>`_. Įdiekite `"F-Droid" <https://f-droid.org/F-Droid.apk>`_ "App Store". Joje yra tik atvirojo kodo programų, kurios apsieina be drastiško sekimo ir be reklamos. Čia rasite tūkstančius įvairių sričių programėlių. Jei ieškote programos, pirmiausia patikrinkite "F-Droid". Išjungimo jungikliai, kurie suveikus ištrina visus telefono duomenis, praktiškai yra labai rizikingi, nes gali būti įjungti netyčia. Todėl vietoj to "NitroPhone" turi funkciją automatiškai išsijungti ir iš naujo įsijungti, kai neveikia nustatytą laiką. Taip telefonas pereina į saugią būseną, kurioje visi duomenys yra užšifruoti, operatyviojoje atmintyje nėra jokių duomenų, o telefoną galima atrakinti tik naudojant teisėtą PIN kodą arba slaptažodį. Norėdami įjungti, pasirinkite: Pasirinkite: *Nustatymai -> Saugumas -> Automatinis perkrovimas -> pasirinkite neveikimo trukmę, po kurios telefonas turėtų būti perkraunamas*. Daugelis programų veikia be "Google Play Services". Tačiau jei norite naudoti programas, kurioms reikia "Google Play Services", galite įdiegti `"Google Play Services" smėlio dėžėje <https://grapheneos.org/usage#sandboxed-play-services>`_ taip. Ateityje bus pateikta diegimo programa, kuri supaprastins diegimo procesą. Pasiuntinys: "NitroPhone" "NitroPhone" programos "NitroPhone" DUK Vienkartinių slaptažodžių generatorius (2FA, OTP): `Aegis Authenticator <https://github.com/beemdevelopment/Aegis>`_. Atidarykite "F-Droid" ir įdiekite "Split APKs Installer" (SAI). (Taip pat galima įsigyti iš "Aurora" parduotuvės) Atidarykite "Split APKs Installer" ir įdiekite visus penkis failus, kuriuos atsisiuntėte 3 žingsnyje. **Pastaba:** Teisingas bazinis failas tikriausiai buvo pervadintas į ``base (2).apk``. Vieną kartą atidarykite "Google Play" parduotuvę ir paspauskite "Prisijungti", kad pradėtumėte inicializaciją. Prisijungimo nereikia baigti ir tikrasis prisijungimas nebūtinas. Tai skirta tik programinei įrangai inicializuoti. Atskirų programų leidimai Susipažinkite su `naudodami savo GrapheneOS <https://grapheneos.org/usage>`_. Rekomenduojamos programos Dėl kameros programos žr. ` čia <https://grapheneos.org/usage#camera>`_. Nustatykite šešių skaitmenų PIN kodą telefonui apsaugoti. Kartu su apsaugos lustu tai užtikrins aukštą saugumą ir tuo pat metu leis išlaikyti gerą naudojimo patogumą. Netrukus įjungus telefoną rodomas įspėjimas "Jūsų prietaise kraunama kita operacinė sistema". Šis įspėjimas rodo, kad neveikia įprastinė "Google Android" sistema, ir į jį galima nekreipti dėmesio. Dėl smėlio dėžės "Google Play" parduotuvėje negalima įdiegti ir atnaujinti programų. Vietoj to programoms įdiegti visada naudokite "F-Droid" (atvirojo kodo programoms) arba "Aurora Store" (programoms iš "Google Play Store"). Vienintelė tikroji OEM atrakinimo nustatymo paskirtis yra ` apsauga nuo vagystės <https://grapheneos.org/faq#anti-theft>`_, kurios "GrapheneOS" neįgyvendina. OEM atrakinimo funkcija kontroliuoja, ar įrenginį galima atrakinti per įkrovos krautuvą. Vėlesniu atveju ištrinami visi naudotojo duomenys. Jei OEM atrakinimas išjungtas, kas nors vis tiek gali įkrauti kompiuterį atkūrimo režimu, įeiti į meniu, ištrinti duomenis, tada įkrauti OS ir įjungti OEM atrakinimą. Todėl tai iš tikrųjų nepadidina saugumo, bet `išjungus <index.html>`_ sumažėja galimas fizinės atakos paviršius. Jei norite patikrinti arba pakeisti konkrečios programos prieigos prie tinklo ir jutiklių leidimus: Kad įvesdami PIN kodą nepažįstamiems asmenims būtų sunku jį perskaityti, PIN kodo išdėstymą galite rodyti atsitiktine tvarka. Be to, rekomenduojame `privatų ekraną <https://shop.nitrokey.com/shop/product/privacyscreen-for-nitrophone-1-194>`_. Norėdami įjungti, pasirinkite: *PIN kodų užkodavimas -> užkoduoti PIN kodą -> užkoduoti PIN kodą*. Jei norite, kad kai kurios programos negalėtų pasiekti "Google Play Services", "Google Play Services" įdiekite atskirame profilyje. Šiuo tikslu sukurkite naują specialų naudotojo profilį ir jame įdiekite "Google Play Services". Naudoti darbo profilį kartu su *Shelter* taip pat galima, bet be tokios izoliacijos. VPN: "Orbot" naudoja nemokamą TOR tinklą. "Mullvad VPN" ir IVPN yra mokamos VPN paslaugos. Galite naudoti šiuos gražius fono vaizdus: `Briar <https://briarproject.org/>`_ - tai bendrakeleivių žinučių programa be jokio serverio, kurią galima naudoti be interneto, kai kontaktai yra netoliese. `Elementas <https://element.io/>`_ nereikalauja centrinės infrastruktūros ir leidžia naudoti nuosavus serverius. Savo paskyrą galima nemokamai užregistruoti, pavyzdžiui, `NitroChat <https://nitro.chat>`_. `Toliau <https://grapheneos.org/faq>`_ rasite daugiau informacijos apie GrapheneOS. `Signalas <https://signal.org/android/apk/>`_ yra saugus ir dabar plačiai naudojamas. Jį taip pat galima atsisiųsti be programėlių parduotuvės. 