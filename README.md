##### Informações :  

ruby 2.6.2 | rails 5.2.8.1 | postgresql 14.5

##### Execução :

$ bundle install | $ rails db:create | $ rails db:migrate | $ rails db:seed |
$ bundle exec rails s

##### Executar testes:

$ rspec  spec/models/user_spec.rb
$ rspec  spec/models/user_information_spec.rb
$ rails -c

###### Considerações

Havia muita coisa que eu queria implementar,principalmente relacionado à autenticação de usuário e ao CEP, mas pela falta de tempo por causa das demandas dos serviços, não pude implementar.

Vocẽ pode ver as informações de Usuários cadastrados clicando em Registered Contacts e sair da sua conta clicando em Logout.
Há 2 Usuários já cadastrados por meio do seed para você ser autenticado. Utilize-os como exemplo.

Você pode ver que no repositório tem + porcentagem pro JS, mas isso é por causa do arquivo "node_modules" , que é bem grande.



