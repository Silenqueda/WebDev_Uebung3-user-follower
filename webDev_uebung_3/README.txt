

Ruby on Rails on Windows 10

rails: 4.1.8
ruby: 2.1.5p273


Setup rails Projekt:

in console:
run 'rails new <Projektname>'
-> Rails erstellt automatisch alle Dateien
-> Grundgerüst zum Arbeiten ist erstellt

Anwendung starten:
  run 'cd <Pfad/zum/Rails/Projektname>'
  run 'ls'
  -> jetzt sollten "app" "view" "model" etc zu sehen sein.
Server starten:
  run 'rails server' oder 'rails s'
Anwendung ansehen/testen:
  WebBrowser öffnen -> eingeben: "http://localhost:3000/"




Issues:
Nach Installation von railsinstaller.exe startet der server nicht
Error: ssl certificate nicht erkannt

1. run 'bundle install'

wenn failed:
2.    run 'gem source --add http://rubygems.org/ --remove https://rubygems.org/'
      -> sollte ssl Problem umgehen, ACHTUNG: löst jegliche Sicherheiten auf die https bietet!
2.1.  run 'gem update --system'
      run 'bundle install'
      run 'cd <Projektname>'
      run 'rails server' oder  'rails s'

      (https://stackoverflow.com/questions/20126316/could-not-verify-the-ssl-certificate-for-https-rubygems-org)
