import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//En este archivo constants.dart se crearon clases cuyos atributos o
//declaraciones son utilizados en otros archivos, como principal el main.dart

//Clase creada para el color del indicador de los botones de la barra de
//navegación superior de la app, en este caso azul
class AppColors {
  AppColors._();

  static const primaryColor = Color(0xFF006BF3);
}

//Clase creada para crear estilos de texto personalizados que utilizan
//la función TextStyle()
class AppTextStyles {
  AppTextStyles._();

  static const labelStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontSize: 40,
  );

  static const unselectedLabelStyle = TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.w600,
    fontSize: 24,
  );

  static const movieNameTextStyle = TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.bold,
  );

  static const movieDetails = TextStyle(
    height: 1.5,
    fontSize: 20,
  );

  static const bookButtonTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.1,
  );

  static const movieDescriptionStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w300,
  );

  static const infoTitleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static const infoContentStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );
}

//Clase creada para personalizar la barra de navegación superior y el fondo
//de la app en general [Se utiliza la clase AppTextStyles() creada previamente]
class AppTheme {
  AppTheme._();

  static ThemeData light = ThemeData(
    appBarTheme: const AppBarTheme(
      elevation: 0,
      foregroundColor: Colors.black,
      centerTitle: true,
      color: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
      ),
      titleTextStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.black87,
      //Utilizamos los atributos de la clase AppTextStyle() creada anteriormente
      labelStyle: AppTextStyles.labelStyle,
      unselectedLabelStyle: AppTextStyles.unselectedLabelStyle,
    ),
  );
}
