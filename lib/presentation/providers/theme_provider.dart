import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';

final isDarkmodeProvider = StateProvider<bool>((ref) => false);

final colorListProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider<int>((ref) => 0);

//objeto de tipo AppTheme(customizado)

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier(),);

class ThemeNotifier extends StateNotifier<AppTheme> {
  //STATE = ESTado = new AppTheme();
  ThemeNotifier() : super(AppTheme());

    void toggleDarkMode() {
      state = state.copywith(
        isDarkmode: !state.isDarkmode,
      );
    }
    void changeColor(int index) {
      state = state.copywith(
        selectedColor: index,
      );
    }
        
    }

  


