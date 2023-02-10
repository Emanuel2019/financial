import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // o corpo da pagina mobile
      body: Stack(
        children: [
          Container(
            // espaçamemto inteiro do container
            padding: EdgeInsets.only(left: 20, right: 20, top: 50),
            // definição da cor do container
            color: Color(0XFF00B686),
            // conponente filho colun do container
            child: Column(
              // filhos do conponente coluna do container
              children: [
                // conponente linha filho do conponente coluna do container
                Row(
                  // função para espaçamente entre itens dentro da row
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // filhos do conponente row
                  children: [
                    // Icons menus
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    Text(
                      "Transfer",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                    )
                  ],
                ),
                // uma caixa simple que define espaço entre dois conponente neste estão separado em uma altura de 10
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // container conponente filho da row
                    buildExpenseBottom(Icons.phone, "Telefone", true),
                    buildExpenseBottom(Icons.camera, "Código Qr", false),
                    buildExpenseBottom(Icons.card_membership, "Cartão", false),
                    buildExpenseBottom(Icons.ev_station, "Utilidade", false),
                  ],
                ) //
              ],
            ),
          ),
          Positioned(
              top: 180,
              height: MediaQuery.of(context).size.height -170,
              child: Column(
                children: [
                  Container(
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Recentes',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            
                            children: [
                              buildRecentContact('Neusa','assets/images/neusa.jpeg'),
                              buildRecentContact('Emanuel','assets/images/emanuel1.jpeg'),
                              buildRecentContact('Ngola','assets/images/emanuel2.jpeg'),
                              buildRecentContact('Casal','assets/images/casal1.jpeg'),
                              buildRecentContact('Escritorio','assets/images/2.jpg'),
                              buildRecentContact('Patrão','assets/images/user_masculin.png'),
                              buildRecentContact('Cliente','assets/images/female.webp'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      width: MediaQuery.of(context).size.width,
                      decoration:  BoxDecoration(color: Colors.white),
                      child: ListView(
                        children: [
                          Text('Contacto',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                          ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 0),
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search,
                                size:30,color: Colors.grey,)
                              ),
                            ),
                          ),
                          SizedBox(height:10),
                          Container(
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage('assets/images/emanuel1.jpeg'),
                                      radius: 30,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    Text('Manuel Marcos',
                                    style: TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.bold
                                    ),
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Icon(Icons.phone,
                                        color: Colors.grey,
                                        size: 16,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('+244 923-435-741',
                                        style: (TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey
                                        )),
                                        
                                        ),
                                         Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Colors.greenAccent.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 20,
                                        color: Colors.green,
                                      ),
                                    )
                                      ],
                                    ),
                                   
                                  ],
                                )
                              ],
                            ),
                            
                            
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }

  Container buildRecentContact( String name, String url) {
    return Container(
      margin: EdgeInsets.only(right: 30),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.green),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: CircleAvatar(
                  backgroundImage: AssetImage(url)),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.bold, color: Colors.grey),
          )
        ],
      ),
    );
  }

  Container buildExpenseBottom(IconData icon, String title, bool isActive) {
    return Container(
      // definição da dimensão altura de 70 e largura 70
      height: 70,
      width: 70,
      // decoração do container com uma caixa decorada
      decoration: BoxDecoration(
          // cor de fundo da caixa decorada
          color: isActive ? Colors.white : Colors.black.withOpacity(0.1),
          // borda circular de 10 curva
          borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isActive ? Color(0XFF00B686) : Colors.white,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: isActive ? Color(0XFF00B686) : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
