class Ui{
  static Color parseColor(String hexCode, {double opacity}) {
    try {
      return Color(int.tryParse(hexCode.replaceAll("#", "0xFF"))).withOpacity(opacity ?? 1);
    } catch (e) {
      return Color(0xFFCCCCCC).withOpacity(opacity ?? 1);
    }
  }

}