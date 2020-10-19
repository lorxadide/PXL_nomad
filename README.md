# Nomad consul

The aim of this project is to provide a development environment based on [consul](https://www.consul.io) and [nomad](https://www.nomadproject.io) to manage container based microservices.

The following steps should make that clear;

bring up the environment by using [vagrant](https://www.vagrantup.com) which will create centos 7 virtualbox machine or lxc container.

The proved working vagrant providers used on an [ArchLinux](https://www.archlinux.org/) system are
* [vagrant-lxc](https://github.com/fgrehm/vagrant-lxc)
* [vagrant-libvirt](https://github.com/vagrant-libvirt/)
* [virtualbox](https://www.virtualbox.org/)

```bash
    $ vagrant up --provider lxc
    OR
    $ vagrant up --provider libvirt
    OR
    $ vagrant up --provider virtualbox
```

Once it is finished, you should be able to connect to the vagrant environment through SSH and interact with Nomad:

```bash
    $ vagrant ssh
    [vagrant@nomad ~]$
```

Wij (Koen en Robin, team 6) hebben samen op 1 pc gewerkt aan deze opdracht, namelijk Koen zijn pc. Wij zijn begonnen met Robin zijn documentatie te raadplegen die hij gemaakt heeft tijdens de lessen, maar dit bleek achteraf voor de manuele installatie te zijn. Na hulp van de leerkracht hebben we op nomad.io en consul.io de juiste handleiding gevonden, deze hebben we gevolgd en uiteindelijk werkte dit ook.
Wij zijn een aantal fouten tegengekomen, maar dit waren meestal kleine syntax-foutjes zoals quotes vergeten of een spatie te veel of dergelijke.
Na de eerste dag kwamen wij een fout tegen die we maar niet opgelost kregen, namelijk "connection refused" en "address already in use". Deze twee fouten hebben ons veel werk bezorgd en hiervoor hebben we ook vaak de hulp van meneer Collijs nodig gehad. Uiteindelijk hebben we dit, zeer kort samengevat, met het aanpassen van de bind adressen en de poorten kunnen oplossen.
Grotendeels hebben wij ook de slides gevolgd uit de les.

Wij hebben samen op 1 PC gewerkt om zo beter samen te kunnen werken. Op deze manier waren er twee mensen aan hetzelfde aan het denken en kon de ene persoon de code van de andere persoon controleren op fouten terwijl deze aan het typen was. Zo kunnen veel fouten vermeden worden. Het is namelijk ook een groepswerk, en als we ieder op onze eigen PC zouden werken wordt het meer een individueel werk.
Wij hebben de slides uit de les gebruikt omdat wij meer vertrouwd zijn hiermee. Dit waren commando's die we al eens hebben uitgevoerd, dus dit voelde meer vertrouwd dan een willekeurige tutorial op het internet.
De tweede dag tijdens de online les was het wat moeilijker om samen te werken, vanzelfsprekend. Wij hebben via Microsoft Teams gewerkt, hier heeft Koen zijn scherm gedeeld zodat er toch nog samengewerkt kon worden in de mate die mogelijk was.

Bronvermelding:
https://learn.hashicorp.com/collections/nomad/get-started
https://learn.hashicorp.com/collections/consul/getting-started

