��    S      �              L  �   M  q     [   y  �   �    �  k   �  +   	  %   B	  5   h	  _   �	  _   �	  4  ^
  )   �  1   �     �  ^  �  o   V     �  
   �  
   �     �  V     %   Y  �               �   *  �   �  M   �     	  �     �   �  w  �     +  e   :  !   �  �   �  V   �      �          %     4  	   C  �   M     "  F   )  �   p  �   N  .   �  7     '   V     ~     �  "   �  >  �            r     !   �  �   �  O   �  �  �  V   �  �   �  �   �  8   P   A   �   P   �   E   !  �   b!  |  "  �   �#  f   6$    �$  .   �%  �   �%     e&    m&     o'  ;   '  �   �'     _(  (  �(  �   +  �   �+  f   \,     �,    �-  v   �.  0   W/  (   �/  C   �/  Y   �/  Y   O0  ]  �0  %   2  /   -2     ]2  �  q2  ~   �3     r4     �4     �4     �4  `   �4  +   5  �   F5     �5     �5  �   �5  �   �6  @   �7     /8  �   >8  +  9  �  3:     �;  b   �;  &   -<    T<  R   c=  (   �=     �=     �=     	>     !>  �   1>     ?  C   ?  �   W?  �   '@  3   A  E   5A  ,   {A     �A  	   �A  ,   �A  a  �A     \C     |C  �   �C  2   
D    =D  P   EE  �  �E  T   >G  �   �G  �   ZH  B   �H  F   <I  B   �I  G   �I  �   J  p  �J  �   -L  s   �L  2  PM  4   �N  �   �N     WO  �   dO     WP  Q   jP  �   �P  �   eQ   *R-Administrator*: A user account with this Role has access to all operations provided by the REST API, with the exception of key usage operations, i.e. message signing and decryption. *R-Backup*: A user account with this Role has access to the operations required to initiate a system backup only. *R-Metrics*: A user account with this Role has access to read-only metrics operations only. *R-Operator*: A user account with this Role has access to all key usage operations, a read-only subset of key management operations and user management operations allowing changes to their own account only. A new NetHSM needs to be provisioned first with passphrases and the current time. The *Admin Passphrase* is the *Administrator*’s passphrase, which is the super user of the NetHSM. The *Unlock Passphrase* is used to encrypt NetHSM’s confidential data store. A public NetHSM demo instance is available at `nethsmdemo.nitrokey.com <https://nethsmdemo.nitrokey.com>`_. Accessing a NetHSM using the PKCS#11 driver Accessing a NetHSM using the REST API Accessing a NetHSM with the nitropy command line tool After creating a key (here: ID 23) with the according mechanism, you can use it for decryption: After creating a key (here: ID 42) with the according mechanism, you can use it for decryption: Alternatively you can run the `NetHSM Docker container <https://hub.docker.com/r/nitrokey/nethsm>`_ locally. The NetHSM container requires nested virtualization for strong separation with other containers. Thus, to start a NetHSM container you need a Linux host with /dev/kvm available. Execute this command: Alternatively, you can cancel the update: And then use ``openssl`` to verify the signature: Backups Before we start, we store the host name of the NetHSM instance in the ``NETHSM_HOST`` environment variable.  You can use the public NetHSM demo instance ``nethsmdemo.nitrokey.com`` or run a local demo instance using the NetHSM docker image, see the `Development and Testing </index.html#development-and-testing>`_ section of the NetHSM documentation. Connect the NetHSM's ETH3 port with the network. Don't use the ETH0 port because it allows wider system access. Create a User Decrypting Decryption Development and Testing Download the `PKCS#11 driver <https://github.com/Nitrokey/nethsm-pkcs11>`_ for NetHSM. First, let’s see what we have here: For a complete list of available key algorithms and key mechanisms, see the API documentation for the KeyAlgorithm_ and KeyMechanism_ types. Generate Keys Getting Started If you use a NetHSM demo instance with a self-signed certificate, for example using the Docker image, you will have to use the ``--insecure``/``-k`` option for ``curl`` to skip the certificate check. If you use a NetHSM demo instance with a self-signed certificate, for example using the Docker image, you will have to use the ``--no-verify-tls`` option for ``nitropy`` to skip the certificate check. If you want to continue with the installation, you can now commit the update: Import Keys In *Attended Boot* mode the *Unlock Passphrase* needs to be entered during each start which is used to encrypt the data store. For security reasons this mode is recommended. In *Unattended Boot* mode no Unlock Passphrase is required, therefore the NetHSM can start unattended and the data store is stored unencrypted. Use this mode if your availability requirements can’t be fulfilled with *Attended Boot* mode. In this guide, we want to use an RSA key to decrypt data using PKCS #1 and to sign data with PSS using SHA256.  So let’s generate a new key on the NetHSM. Make sure to use the ``RSA`` algorithm and to select the ``RSA_Signature_PSS_SHA256`` and ``RSA_Decryption_PKCS1`` key mechanisms.  If you don’t specify a key ID, the NetHSM will generate a random ID for the new key. Initialization Instead of generating a key on the NetHSM, you can also import existing private keys into the NetHSM: Integration to Custom Application It is possible to crate a backup of the NetHSM that captures both the configuration and the stored keys.  In order to create a backup, you first have to set a backup passphrase that is used to encrypt the backup file: It is possible to set and query certificates for the keys stored on a NetHSM instance: Key Certificate Signing Requests Key Certificates Key Management Key Operations List Keys Modify the configuration file ``p11nethsm.conf`` according to your setup (e.g. address, operator name) and store it in ``$HOME/.nitrokey``, ``/etc/nitrokey/``, or in the folder where your application is executed. NetHSM NetHSM can be used in *Attended Boot* mode and *Unattended Boot* mode. Note: In a future release another Role will be implemented which is allowed to /keys/ POST, /keys/generate POST, /keys/{KeyID} PUT & DELETE, /keys/{KeyID}/cert PUT & DELETE in addition to what R-Operator is allowed to do. Now create a new user with the operator role that can be used to sign and decrypt data.  Note that the NetHSM assigns a random user ID if we don’t specify it. Now we can use the NetHSM to decrypt the data: Now you have to create a user with the *R-Backup* role: Or switch back to *Attended Boot* mode: Retrieve the current mode: Roles See what the device’s status is: Separation of duties can be implemented by using the available Roles. Each user account configured on the NetHSM has one of the following Roles assigned to it. Following is a high-level description of the operations allowed by individual Roles, for endpoint-specific details please refer to the REST API documentation. Show Key Details Signing Similarily, we can sign data using the key on the NetHSM.  For RSA and ECDSA, we have to calculate a digest first: Switch to *Unattended Boot* mode: The NetHSM appliance is available at address 192.168.1.1. Access and initialize the NetHSM using `nitropy command line tool <cli.html>`_. Alternatively, the `REST API <api.html>`_ and `PKCS#11 driver <pkcs11.html>`_ can be used. The NetHSM demo instance at ``nethsmdemo.nitrokey.com`` is already provisioned. The NetHSM supports RSA, ED25519 and ECDSA keys.  When creating a key, you have to select both the key algorithm and the key mechanisms to use.  RSA keys can be used for decryption (with the modes raw, PKCS #1 and OAEP with MD5, SHA1, SHA224, SHA256, SHA384 or SHA512) and for signatures (with the modes PKCS #1 and PSS with MD5, SHA1, SHA224, SHA256, SHA384 or SHA512).  The other algorithms only support the signature mechanism. The NetHSM supports generating Certificate Signing Requests (CSR) for the stored keys: The ``-i``/``--include`` option causes ``curl`` to print the HTTP status code and the response headers.  The ``-w '\n'``/``--write-out '\n'`` option adds a newline after the response body. The generated client code, in this example JavaScript, will be created in the ``./out/`` directory. This folder also contains the necessary documentation how to use it. Then can you generate the backup and write it to a file: Then we can create a signature from this digest using the NetHSM: Then you can generate the NetHSM client for your programming language like this: This backup file can be restored on an unprovisioned NetHSM instance: This driver is still an early Proof of Concept implementation that only implements the functions that are necessary for operating TLS servers like for example an HTTPS server. This tutorial demonstrates how to access the NetHMS via REST API. The interface is `documented here <https://nethsmdemo.nitrokey.com/api_docs/index.html#docs/summary/summary>`_ and it's specification is available as `RAML <https://nethsmdemo.nitrokey.com/api_docs/nethsm-api.raml>`_ and as `OpenAPI (Swagger) <https://nethsmdemo.nitrokey.com/api_docs/gen_nethsm_api_oas20.json>`_. This tutorial demonstrates how to access the NetHMS via `nitropy <https://github.com/Nitrokey/pynitrokey>`_ command line tool, which you need to download and install. To be able to use the key with ``openssl``, we export it as a PEM file and store it as ``public.pem``: To integrate the NetHSM into own custom applications client libraries are available for almost all programming languages, including JavaScript, C++ and Python for example. Therefore we recommend using `OpenAPI Generator <https://github.com/OpenAPITools/openapi-generator>`_. To list all the available languages, you enter To make sure that the key has been created and has the correct algorithm and mechanism settings, we can query all keys on the NetHSM: Updates Updates for the NetHSM can be installed in a two-step process.  First you have to upload the update image to the NetHSM.  The image is then checked and validated.  If the validation is successful, the release notes for the update are returned by the NetHSM: User Management We can also query the public key of the generated key pair: We can encrypt data for the key stored on the NetHSM using ``openssl``. (``public.pem`` is the public key file that we created in the `Show Key Details`_ section.) We can inspect the key with ``openssl`` and use it for encryption or signature verification (as described in the next section): Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-01-05 12:32+0100
PO-Revision-Date: 2022-01-26 11:44+0000
Last-Translator: Ben (Weblate Admin) <ben@dotplex.com>
Language: lt
Language-Team: Lithuanian <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-nethsm/lt/>
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 *R-administratorius*: Vartotojo paskyra su šiuo vaidmeniu turi prieigą prie visų REST API teikiamų operacijų, išskyrus raktų naudojimo operacijas, t. y. pranešimų pasirašymą ir iššifravimą. *R-Backup*: Vartotojo paskyra su šiuo vaidmeniu turi prieigą tik prie operacijų, reikalingų sistemos atsarginei kopijai inicijuoti. *R-metrika*: Vartotojo paskyra su šiuo vaidmeniu turi prieigą tik prie skaitymo metrikos operacijų. *R-operatorius*: Vartotojo paskyra, turinti šį vaidmenį, turi prieigą prie visų raktų naudojimo operacijų, tik skaitymui skirto raktų valdymo operacijų pogrupio ir naudotojo valdymo operacijų, leidžiančių atlikti pakeitimus tik savo paskyroje. Pirmiausia naujam NetHSM reikia suteikti slaptažodžių frazes ir dabartinį laiką. *Admin slaptažodis* - tai *Administrator* slaptažodis, kuris yra vyriausiasis NetHSM naudotojas. Slaptažodis *Unlock Passphrase* naudojamas NetHSM konfidencialių duomenų Storagei užšifruoti. Vieša NetHSM demonstracinė instancija prieinama adresu `nethsmdemo.nitrokey.com <https://nethsmdemo.nitrokey.com>`_. Prieiga prie NetHSM naudojant PKCS#11 tvarkyklę Prieiga prie "NetHSM" naudojant REST API Prieiga prie NetHSM naudojant komandinės eilutės įrankį nitropy Sukūrę raktą (čia: ID 23) su atitinkamu mechanizmu, galite jį naudoti dešifravimui: Sukūrę raktą (čia: ID 42) su atitinkamu mechanizmu, galite jį naudoti dešifravimui: Arba galite paleisti `NetHSM "Docker" konteinerį <https://hub.docker.com/r/nitrokey/nethsm>`_ vietoje. NetHSM konteineriui reikia įterptinės virtualizacijos, kad būtų stipriai atskirtas nuo kitų konteinerių. Taigi, norint paleisti NetHSM konteinerį, reikia "Linux" kompiuterio, kuriame būtų prieinamas /dev/kvm. Įvykdykite šią komandą: Taip pat galite atšaukti naujinimą: Tada parašui patikrinti naudokite ``openssl``: Atsarginės kopijos Prieš pradėdami, išsaugome NetHSM egzemplioriaus prieglobsčio vardą aplinkos kintamajame ``NETHSM_HOST``.  Galite naudoti viešąją NetHSM demonstracinę instanciją ``nethsmdemo.nitrokey.com`` arba paleisti vietinę demonstracinę instanciją naudodami NetHSM "Docker" atvaizdą, žr. `Kūrimo ir testavimo </index.html#development-and-testing>`_ skyrių NetHSM dokumentacijoje. Prijunkite "NetHSM'" ETH3 prievadą prie tinklo. Nenaudokite ETH0 prievado, nes jis suteikia platesnę prieigą prie sistemos. Sukurti naudotoją iššifravimas Dešifravimas Kūrimas ir testavimas Atsisiųskite `PKCS#11 tvarkyklę <https://github.com/Nitrokey/nethsm-pkcs11>`_, skirtą NetHSM. Pirmiausia pažiūrėkime, ką čia turime: Išsamų galimų raktų algoritmų ir raktų mechanizmų sąrašą rasite API dokumentuose, skirtuose KeyAlgorithm_ ir KeyMechanism_ tipams. Generuoti raktus Darbo pradžia Jei naudojate "NetHSM" demonstracinę instanciją su savarankiškai pasirašytu sertifikatu, pvz., naudodami "Docker" atvaizdą, turėsite naudoti ``--insecure``/``</x id="144"></x>`` parinktį ``</x>`curl``, kad praleistumėte sertifikato patikrinimą. Jei naudojate "NetHSM" demonstracinę instanciją su savarankiškai pasirašytu sertifikatu, pavyzdžiui, naudodami "Docker" atvaizdą, turėsite naudoti ``--no-verify-tls`` parinktį ``</x id="160"></x>``, kad sertifikato tikrinimas būtų praleistas. Jei norite tęsti diegimą, dabar galite patvirtinti naujinimą: Importo raktai Naudojant *Attended Boot* režimą, kiekvieno paleidimo metu reikia įvesti *Unlock Passphrase*, kuri naudojama duomenų Storagei užšifruoti. Saugumo sumetimais rekomenduojama naudoti šį režimą. Naudojant *Neprižiūrimo paleidimo* režimą, atrakinimo slaptažodžio nereikia, todėl "NetHSM" gali būti paleidžiamas be priežiūros, o duomenų Storage saugoma neužšifruota. Šį režimą naudokite, jei jūsų prieinamumo reikalavimų negalima įvykdyti naudojant *Attended Boot* režimą. Šiame vadove norime naudoti RSA raktą duomenims iššifruoti, naudodami PKCS #1, ir duomenims pasirašyti su PSS, naudodami SHA256.  Taigi sukurkime naują raktą NetHSM. Įsitikinkite, kad naudojate ``RSA`` algoritmą ir pasirinkite ``RSA_Signature_PSS_SHA256`` ir ``RSA_Decryption_PKCS1`` raktų mechanizmus.  Jei rakto ID nenurodysite, "NetHSM" sugeneruos atsitiktinį naujojo rakto ID. Inicializacija Užuot generavę raktą "NetHSM", taip pat galite importuoti esamus privačius raktus į "NetHSM": Integracija į pasirinktinę programą Galima sukurti atsarginę "NetHSM" kopiją, kurioje būtų užfiksuota ir konfigūracija, ir išsaugoti raktai.  Norėdami sukurti atsarginę kopiją, pirmiausia turite nustatyti atsarginės kopijos slaptažodį, kuris naudojamas atsarginės kopijos failui užšifruoti: Galima nustatyti ir užklausti NetHSM egzemplioriuje saugomų raktų sertifikatus: Rakto sertifikato pasirašymo užklausos Pagrindiniai sertifikatai Raktų valdymas Pagrindinės operacijos Sąrašo raktai Pakeiskite konfigūracijos failą ``p11nethsm.conf`` pagal savo sąranką (pvz. adresą, operatoriaus vardą) ir laikykite jį ``</x id="121"></x>``, ``</x id="142"></x>`` arba aplanke, kuriame vykdoma jūsų programa. NetHSM NetHSM galima naudoti *Attended Boot* ir *Unattended Boot* režimu. Pastaba: Būsimoje versijoje bus įdiegta dar viena funkcija, kuri leis /keys/ POST, /keys/generate POST, /keys/{KeyID} PUT & DELETE, /keys/{KeyID}/cert PUT & DELETE, be to, ką leidžiama daryti R-Operator. Dabar sukurkite naują naudotoją su operatoriaus vaidmeniu, kuris gali būti naudojamas duomenims pasirašyti ir iššifruoti.  Atkreipkite dėmesį, kad NetHSM priskiria atsitiktinį naudotojo ID, jei jo nenurodome. Dabar galime naudoti NetHSM duomenims iššifruoti: Dabar turite sukurti naudotoją, kuriam suteiktas *R-Backup* vaidmuo: Arba grįžkite į *Attended Boot* režimą: Gauti dabartinį režimą: Vaidmenys Pažiūrėkite, kokia yra prietaiso būsena: Pareigų atskyrimą galima įgyvendinti naudojant turimus vaidmenis. Kiekvienai NetHSM sukonfigūruotai naudotojo paskyrai yra priskirtas vienas iš šių vaidmenų. Toliau pateikiamas aukšto lygio operacijų, kurias leidžia atlikti atskiri vaidmenys, aprašymas, o išsamios informacijos apie konkretų galutinį tašką rasite REST API dokumentuose. Rodyti informaciją apie raktą Pasirašymas Panašiai galime pasirašyti duomenis naudodami NetHSM raktą.  RSA ir ECDSA atveju pirmiausia turime apskaičiuoti viršenybę: Perjunkite į *Neprižiūrimo įkrovimo* režimą: NetHSM įrenginys pasiekiamas adresu 192.168.1.1.1. Prisijunkite prie "NetHSM" ir jį inicializuokite naudodami `nitropijos komandinės eilutės įrankį <cli.html>`_. Kaip alternatyvą galima naudoti `REST API <api.html>`_ ir `PKCS#11 tvarkyklę <pkcs11.html>`_. NetHSM demonstracinė instancija adresu ``nethsmdemo.nitrokey.com`` jau sukurta. NetHSM palaiko RSA, ED25519 ir ECDSA raktus.  Kurdami raktą, turite pasirinkti ir rakto algoritmą, ir naudojamus rakto mechanizmus.  RSA raktai gali būti naudojami dešifravimui (naudojant režimus raw, PKCS #1 ir OAEP su MD5, SHA1, SHA224, SHA256, SHA384 arba SHA512) ir pasirašymui (naudojant režimus PKCS #1 ir PSS su MD5, SHA1, SHA224, SHA256, SHA384 arba SHA512).  Kiti algoritmai palaiko tik parašo mechanizmą. NetHSM palaiko saugomų raktų sertifikatų pasirašymo prašymų (CSR) generavimą: Dėl ``-i``/``--include`` parinkties ``curl`` spausdinamas HTTP būsenos kodas ir atsakymo antraštės.  Dėl ``-w '\n'``/``--write-out '\n'`` parinkties po atsakymo kūno pridedama naujoji eilutė. Sukurtas kliento kodas, šiame pavyzdyje "JavaScript", bus sukurtas ``./out/`` kataloge. Šiame aplanke taip pat yra reikalingi dokumentai, kaip juo naudotis. Tada galite sukurti atsarginę kopiją ir įrašyti ją į failą: Tada iš šios suvestinės, naudodami NetHSM, galime sukurti parašą: Tada galite sukurti NetHSM klientą savo programavimo kalbai taip: Šį atsarginį failą galima atkurti neįdiegtoje NetHSM instancijoje: Ši tvarkyklė vis dar yra ankstyvoji koncepcijos įgyvendinimo versija, kurioje įdiegtos tik tos funkcijos, kurios būtinos TLS serveriams, pvz., HTTPS serveriui, valdyti. Šioje pamokoje parodoma, kaip pasiekti NetHMS per REST API. Sąsaja `dokumentuojama čia <https://nethsmdemo.nitrokey.com/api_docs/index.html#docs/summary/summary>`_ ir ji'specifikacija pateikiama kaip `RAML <https://nethsmdemo.nitrokey.com/api_docs/nethsm-api.raml>`_ ir kaip `OpenAPI (Swagger) <https://nethsmdemo.nitrokey.com/api_docs/gen_nethsm_api_oas20.json>`_. Šiame vadovėlyje parodyta, kaip pasiekti NetHMS per `nitropy <https://github.com/Nitrokey/pynitrokey>`_ komandinės eilutės įrankį, kurį reikia atsisiųsti ir įdiegti. Kad raktą galėtume naudoti su ``openssl``, eksportuojame jį kaip PEM failą ir saugome kaip ``</x>`public.pem``: Norint integruoti NetHSM į savo užsakomąsias taikomąsias programas, galima įsigyti kliento bibliotekų beveik visoms programavimo kalboms, įskaitant, pavyzdžiui, "JavaScript", C++ ir "Python". Todėl rekomenduojame naudoti `OpenAPI generatorių <https://github.com/OpenAPITools/openapi-generator>`_. Norėdami išvardyti visas galimas kalbas, įveskite Norėdami įsitikinti, ar raktas sukurtas ir ar jame nustatyti teisingi algoritmo ir mechanizmo nustatymai, galime pateikti užklausą visiems NetHSM raktams: Atnaujinimai NetHSM atnaujinimus galima įdiegti dviem etapais.  Pirmiausia reikia įkelti atnaujinimo atvaizdą į "NetHSM".  Tada atvaizdas patikrinamas ir patvirtinamas.  Jei patvirtinimas sėkmingas, "NetHSM" grąžina atnaujinimo išleidimo pastabas: Naudotojo valdymas Taip pat galime pateikti užklausą apie sukurtos raktų poros viešąjį raktą: NetHSM saugomo rakto duomenis galime užšifruoti naudodami ``openssl``. (``public.pem`` yra viešojo rakto failas, kurį sukūrėme `skiltyje `Rodyti rakto detales`_). Galime patikrinti raktą naudodami ``openssl`` ir naudoti jį šifravimui arba parašo tikrinimui (kaip aprašyta kitame skyriuje): 