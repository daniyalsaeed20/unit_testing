import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:test_demo_question/Controllers/brewery_controller.dart';
import 'package:test_demo_question/Model/dummy_data_model.dart';

class DbController extends GetxController {
  /* -------------------------------------------------------------------------- */
  /*                                  Variables                                 */
  /* -------------------------------------------------------------------------- */

  String uri = "https://api.openbrewerydb.org/breweries";

  /* -------------------------------------------------------------------------- */
  /*                                    Lists                                   */
  /* -------------------------------------------------------------------------- */

  /* -------------------------------------------------------------------------- */
  /*                                  Functions                                 */
  /* -------------------------------------------------------------------------- */

  getBreweryData() async {
    /* ---------------------------- connecto json here --------------------------- */

    BreweryController breweryController = Get.put(
      BreweryController(),
    );

    http.Response response;

    try {
      response = await http.get(
        Uri.parse(uri),
      );
      if (response.statusCode == 200) {
        breweryController.breweryModelList =
            breweryModelFromJson(response.body);
        breweryController.update();
      }
    } catch (error) {
      print(
          "-------------------------------- $error --------------------------------");
    }
  }
}
