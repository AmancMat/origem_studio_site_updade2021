import 'package:flutter/material.dart';

class SinalizaPackDialog extends StatefulWidget {
  @override
  _SinalizaPackDialogState createState() => _SinalizaPackDialogState();
}

class _SinalizaPackDialogState extends State<SinalizaPackDialog> {
  final _nameController = TextEditingController();
  final _fullnameController = TextEditingController();
  final _addressController = TextEditingController();
  final _numberHomeController = TextEditingController();
  final _neighborController = TextEditingController();
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.3),
      body: Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 600,
              width: 450,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    child: IconButton(
                      icon: Icon(
                        Icons.close,
                        color: Colors.purple,
                        size: 25,
                      ),
                      onPressed: () => Navigator.pop(context, false),
                    ),
                  ),
                  Container(
                    height: 160,
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Entre para nossa lista de anunciantes, preenchendo os campos abaixo. Entraremos em contato para o fechamento do pacote ideial para sua empresa.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                          fontSize: 18,),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: "Nome da Empresa",
                        labelStyle: TextStyle(color: Colors.purple),
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(28.0)),
                          borderSide:
                              BorderSide(color: Colors.purple, width: 2.0),
                        ),
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(28.0)),
                          borderSide:
                              BorderSide(color: Colors.purple, width: 4.0),
                        ),
                      ),
                      validator: (text) {
                        if (text!.isEmpty) {
                          return "O campo (Nome da Empresa) está vazio!";
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: "Gerente/Responsável",
                        labelStyle: TextStyle(color: Colors.purple),
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(28.0)),
                          borderSide:
                              BorderSide(color: Colors.purple, width: 2.0),
                        ),
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(28.0)),
                          borderSide:
                              BorderSide(color: Colors.purple, width: 4.0),
                        ),
                      ),
                      validator: (text) {
                        if (text!.isEmpty) {
                          return "O campo (Gerente/Responsável) está vazio!";
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 70,
                          child: Container(
                            padding: EdgeInsets.only(bottom: 10, right: 5),
                            child: TextFormField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                labelText: "Endereço",
                                labelStyle: TextStyle(color: Colors.purple),
                                enabled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      const Radius.circular(28.0)),
                                  borderSide: BorderSide(
                                      color: Colors.purple, width: 2.0),
                                ),
                                contentPadding: new EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      const Radius.circular(28.0)),
                                  borderSide: BorderSide(
                                      color: Colors.purple, width: 4.0),
                                ),
                              ),
                              validator: (text) {
                                if (text!.isEmpty) {
                                  return "O campo (Endereço) está vazio!";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 30,
                          child: Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: TextFormField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                labelText: "Nº",
                                labelStyle: TextStyle(color: Colors.purple),
                                enabled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      const Radius.circular(28.0)),
                                  borderSide: BorderSide(
                                      color: Colors.purple, width: 2.0),
                                ),
                                contentPadding: new EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      const Radius.circular(28.0)),
                                  borderSide: BorderSide(
                                      color: Colors.purple, width: 4.0),
                                ),
                              ),
                              validator: (text) {
                                if (text!.isEmpty) {
                                  return "O campo (Nº) está vazio!";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: "Cidade",
                        labelStyle: TextStyle(color: Colors.purple),
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(28.0)),
                          borderSide:
                              BorderSide(color: Colors.purple, width: 2.0),
                        ),
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(28.0)),
                          borderSide:
                              BorderSide(color: Colors.purple, width: 4.0),
                        ),
                      ),
                      validator: (text) {
                        if (text!.isEmpty) {
                          return "O campo (Cidade) está vazio!";
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 50,
                          child: Container(
                            padding: EdgeInsets.only(bottom: 10, right: 5),
                            child: TextFormField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                labelText: "Telefone Fixo",
                                labelStyle: TextStyle(color: Colors.purple),
                                enabled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      const Radius.circular(28.0)),
                                  borderSide: BorderSide(
                                      color: Colors.purple, width: 2.0),
                                ),
                                contentPadding: new EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      const Radius.circular(28.0)),
                                  borderSide: BorderSide(
                                      color: Colors.purple, width: 4.0),
                                ),
                              ),
                              validator: (text) {
                                if (text!.isEmpty) {
                                  return "O campo (Telefone Fixo) está vazio!";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 50,
                          child: Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: TextFormField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                labelText: "Celular",
                                labelStyle: TextStyle(color: Colors.purple),
                                enabled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      const Radius.circular(28.0)),
                                  borderSide: BorderSide(
                                      color: Colors.purple, width: 2.0),
                                ),
                                contentPadding: new EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      const Radius.circular(28.0)),
                                  borderSide: BorderSide(
                                      color: Colors.purple, width: 4.0),
                                ),
                              ),
                              validator: (text) {
                                if (text!.isEmpty) {
                                  return "O campo (Celular) está vazio!";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    margin: EdgeInsets.only(
                      top: 10
                    ),
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(28)),
                    child: FlatButton(onPressed: () {}, child: Text('Enviar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
