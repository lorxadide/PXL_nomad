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

Opdracht 1:
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


Opdracht 2:
Voor de tweede opdracht hebben we er gezamenlijk voor gekozen om te werken met Ansible. Deze keuze hebben we gemaakt omdat Koen ook in het IT project Ansible nodig heeft dus er zo meer vertrouwd mee kan geraken.
Het was geen gemakkelijke opdracht waar we bovenop niet zo veel tijd voor hadden gekregen. We hebben veel tegenslagen gehad in de vorm van errors (SSH-fouten, fouten met vbguest, ...).
Aan deze opdracht hebben we meer ieder individueel gewerkt. In het begin hebben we allebei voorbeelden opgezocht en dit dan gekopieerd. Hier is Robin dan mee aan de slag gegaan en is hij begonnen met "filteren".
We hebben jammer genoeg de fout in verband met SSH er niet uitgekregen, maar we zijn ervan overtuigd dat dit niets te maken heeft met onze code, en dat onze code klopt. Deze conclusie hebben we getrokken aangezien de SSH-fout op heel willekeurige momenten voorkomt en iedere keer tijdens de uitvoering van een andere task. De hele omgeving is zelfs een paar keer volledig opgezet geraakt.
Ik ben er zeker van dat als we fysiek, op school, konden samenwerken we dit volledig hadden kunnen oplossen!

Bronvermelding:
https://github.com/geerlingguy/ansible-role-docker
https://ops.tips/blog/docker-ansible-role/
https://martincarstenbach.wordpress.com/2019/04/11/ansible-tipsntricks-provision-multiple-machines-in-parallel-with-vagrant-and-ansible/
https://computingforgeeks.com/run-ansible-playbook-with-vagrant-up/
https://github.com/idealista/consul_role
https://github.com/kbrebanov/ansible-nomad
https://stackoverflow.com/questions/42038633/ansible-yum-module-pending-transactions-error
https://stackoverflow.com/questions/31912748/how-to-run-a-particular-task-on-specific-host-in-ansible
https://docs.ansible.com/ansible/latest/user_guide/playbooks_strategies.html

Na het eerste evaluatiemoment hebben we van meneer Collijs nog een extra kans gekregen omdat onze opdracht niet goed was.
Voor deze tweede kans zijn we teruggegaan naar de basics. Robin heeft zijn documentatie van uit de les naar boven gehaald en we hebben die stappen gevolgd. Al de stappen met certificaten en keys en dergelijke hebben we achterwege gelaten.
We hebben het ook eerst zonder variabelen gedaan om te kunnen testen of onze oplossing werkte, dit werkte en uiteindelijk zijn we dan begonnen met het implementeren van variabelen.
We zijn heel blij dat we van meneer Collijs een tweede kans gekregen hebben! Dit gaat ongetwijfeld beter zijn voor onze punten, maar ook onze kennis van ansible.


Opdracht 3:
Voor deze derde opdracht waren we vastberaden om het beter te doen dan de afgelopen twee PE's, wat naar ons gevoel ook wel gelukt is.
Het provisionen heeft ons vaak voor problemen gezorgd, omdat het internet "opzoog" en daardoor vaak het hele internet wegviel. Wat dan voor een fout zorgde tijdens het provisionen.
We hebben eigenlijk samengewerkt via het delen van een scherm en dan zo op één scherm werken, wij vonden dat we op deze manier toch nog het meeste konden samenwerken.
Naar ons buikgevoel is deze PE goed verlopen. De nodige tegenslagen zijn er ook geweest waar we meneer Collijs zijn inbox vol hebben gestuurd met berichten, maar hij heeft ons altijd even hard geholpen waarvoor dank.

Bronvermelding:
https://github.com/visibilityspots/nomad-consul-prometheus
https://github.com/google/cadvisor
https://grafana.com/docs/grafana/latest/installation/
https://grafana.com/grafana/dashboards
https://prometheus.io/docs/alerting/latest/alertmanager/
https://github.com/prometheus/node_exporter
