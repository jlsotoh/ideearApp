//
//  ViewController.swift
//  TestFrameworkApp
//
//  Created by Hugo Reza on 28/12/20.
//

import UIKit
import Ideear
import UserNotifications

//implementar el Delegate ´IdeearDelegate´
class ViewController: UIViewController, IdeearDelegate {
    
    // funcion para adoptar el protocolo y recibir los mensajes del componente
    func messageHost(message: String) {
        
        //para fines de prueba se muestra el mensaje recibido del componente por medio de notificaciones locales
        print("message to host \(message)")
        let content = UNMutableNotificationContent()
        content.title = "SDK message to Host"
        content.body = message
        content.sound = UNNotificationSound.default
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 0.1, repeats: false)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        /* Se solicita permisos para las notificaciones, solo es para probar el envio de mensajes desde el componente a la app */
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
            if success {
                print("Se concedio permiso")
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
    }

    @IBAction func loadIdeear(_ sender: Any) {
        let data = "{\"data\":[{\"businessType\":\"MP\",\"scenes\":[{\"id\":\"z/Vh5o1c\",\"businessSubtype\":\"MP\",\"name\":\"MP_CASCADA_DE_PAGOS\",\"description\":\"Cascada de pagos sobre un extracto\",\"relations\":[{\"id\":\"OBJ0000000001\",\"contentType\":\"OBJECT\",\"order\":1}]}],\"objects\":[{\"id\":\"OBJ0000000001\",\"name\":\"zapOBJ0000000001\",\"description\":\"Objeto de Negocio de MP\",\"businessSubtype\":\"MP\",\"contents\":[{\"id\":\"general_info\",\"contentDetails\":[{\"id\":\"start_date\",\"value\":\"05-jul-20\"},{\"id\":\"payment_to_avoid_interest\",\"value\":\"1,417.63\"},{\"id\":\"minimum_payment\",\"value\":\"250.00\"},{\"id\":\"pay_day_limit\",\"value\":\"24-jul-20\"},{\"id\":\"purchase_interest_rate\",\"value\":\"5.44\"},{\"id\":\"average_purchase_balance\",\"value\":\"0.00\"},{\"id\":\"disposal_interest_rate\",\"value\":\"5.44\"},{\"id\":\"average_with_drawal_balance\",\"value\":\"165.21\"},{\"id\":\"sum_balance_average\",\"value\":\"165.21\"},{\"id\":\"ppngi_after_payments\",\"value\":\"0.00\"},{\"id\":\"number_of_payments_before_flp\",\"value\":\"6\"},{\"id\":\"num_payments_before_after_flp\",\"value\":\"7\"},{\"id\":\"num_returns_before_after_flp\",\"value\":\"0\"},{\"id\":\"return_number_before_flp\",\"value\":\"0\"},{\"id\":\"sum_of_payments_before_flp\",\"value\":\"1,490.68\"},{\"id\":\"sum_of_returns_before_flp\",\"value\":\"0.00\"},{\"id\":\"sum_payments_subs_before_flp\",\"value\":\"1,490.68\"},{\"id\":\"minimum_payment_after_payments\",\"value\":\"0.00\"},{\"id\":\"sum_of_payments_after_flp\",\"value\":\"600.00\"},{\"id\":\"number_of_payments_after_flp\",\"value\":\"1\"},{\"id\":\"interest_of_the_period\",\"value\":\"8.98\"},{\"id\":\"iva\",\"value\":\"2.91\"},{\"id\":\"sum_of_interest_and_iva\",\"value\":\"11.89\"},{\"id\":\"new_ppngi\",\"value\":\"1,343.58\"},{\"id\":\"new_minimum_payment\",\"value\":\"250.00\"},{\"id\":\"new_payment_dead_line\",\"value\":\"24-ago-20\"},{\"id\":\"month_end_date\",\"value\":\"agosto\"},{\"id\":\"year_end_date\",\"value\":\"2020\"},{\"id\":\"end_date\",\"value\":\"04-ago-20\"},{\"id\":\"month_start_date\",\"value\":\"agosto\"},{\"id\":\"year_start_date\",\"value\":\"2020\"},{\"id\":\"day_cut_date\",\"value\":\"04\"},{\"id\":\"extract_number\",\"value\":\"5\"},{\"id\":\"available_balance\",\"value\":\"561.42\"},{\"id\":\"final_balance\",\"value\":\"5,038.58\"},{\"id\":\"total_balance\",\"value\":\"5,600.00\"},{\"id\":\"number_of_the_flp_days\",\"value\":\"20\"},{\"id\":\"day_indicator\",\"value\":\"siguiente\"},{\"id\":\"sum_of_returns_after_flp\",\"value\":\"0.00\"},{\"id\":\"sum_returns_before_after_flp\",\"value\":\"0.00\"},{\"id\":\"sum_payments_before_after_flp\",\"value\":\"2,090.68\"},{\"id\":\"number_of_returns_after_flp\",\"value\":\"0\"}]},{\"id\":\"detail_of_the_ppngi\",\"contentDetails\":[{\"id\":\"CAP.ACLARACION\",\"value\":\"0.0\"},{\"id\":\"INT.DISPO.vencido\",\"value\":\"0.0\"},{\"id\":\"CUOTAS/COMIS.vigente\",\"value\":\"0.0\"},{\"id\":\"CUOTA.ANUALvigente\",\"value\":\"0.0\"},{\"id\":\"INT.ORD.vencido\",\"value\":\"0.0\"},{\"id\":\"CAP.REVOLV.vencido\",\"value\":\"0.0\"},{\"id\":\"INT.REEST.vencido\",\"value\":\"0.0\"},{\"id\":\"CAP.REES/PPI.vigente\",\"value\":\"0.0\"},{\"id\":\"COMIS.PAGO.TARDIOvencido\",\"value\":\"0.0\"},{\"id\":\"INT.MORAT.vigente\",\"value\":\"0.0\"},{\"id\":\"IVAvigente\",\"value\":\"2.91\"},{\"id\":\"INT.DISPO.vigente\",\"value\":\"8.98\"},{\"id\":\"INT.ORD.vigente\",\"value\":\"0.0\"},{\"id\":\"CAP.REVOLV.vigente\",\"value\":\"1405.74\"},{\"id\":\"INT.REEST.vigente\",\"value\":\"0.0\"},{\"id\":\"INT.MORAT.vencido\",\"value\":\"0.0\"},{\"id\":\"CUOTA.ANUALvencido\",\"value\":\"0.0\"},{\"id\":\"COMIS.PAGO.TARDIOvigente\",\"value\":\"0.0\"},{\"id\":\"CUOTAS/COMIS.vencido\",\"value\":\"0.0\"},{\"id\":\"CAP.REES/PPI.vencido\",\"value\":\"0.0\"},{\"id\":\"IVAvencido\",\"value\":\"0.0\"}]},{\"id\":\"summary_of_the_ppngi\",\"contentDetails\":[{\"id\":\"capital\",\"value\":\"1,304.81\"},{\"id\":\"iva\",\"value\":\"10.83\"},{\"id\":\"commissions\",\"value\":\"0.00\"},{\"id\":\"interests\",\"value\":\"27.94\"}]},{\"id\":\"detail_of_the_new_ppngi\",\"contentDetails\":[{\"id\":\"CAP.ACLARACION\",\"value\":\"0.0\"},{\"id\":\"INT.DISPO.vencido\",\"value\":\"0.0\"},{\"id\":\"CUOTAS/COMIS.vigente\",\"value\":\"0.0\"},{\"id\":\"CUOTA.ANUALvigente\",\"value\":\"0.0\"},{\"id\":\"INT.ORD.vencido\",\"value\":\"0.0\"},{\"id\":\"CAP.REVOLV.vencido\",\"value\":\"0.0\"},{\"id\":\"INT.REEST.vencido\",\"value\":\"0.0\"},{\"id\":\"CAP.REES/PPI.vigente\",\"value\":\"0.0\"},{\"id\":\"COMIS.PAGO.TARDIOvencido\",\"value\":\"0.0\"},{\"id\":\"INT.MORAT.vigente\",\"value\":\"0.0\"},{\"id\":\"IVAvigente\",\"value\":\"10.83\"},{\"id\":\"INT.DISPO.vigente\",\"value\":\"27.94\"},{\"id\":\"INT.ORD.vigente\",\"value\":\"0.0\"},{\"id\":\"CAP.REVOLV.vigente\",\"value\":\"1304.81\"},{\"id\":\"INT.REEST.vigente\",\"value\":\"0.0\"},{\"id\":\"INT.MORAT.vencido\",\"value\":\"0.0\"},{\"id\":\"CUOTA.ANUALvencido\",\"value\":\"0.0\"},{\"id\":\"COMIS.PAGO.TARDIOvigente\",\"value\":\"0.0\"},{\"id\":\"CUOTAS/COMIS.vencido\",\"value\":\"0.0\"},{\"id\":\"CAP.REES/PPI.vencido\",\"value\":\"0.0\"},{\"id\":\"IVAvencido\",\"value\":\"0.0\"}]},{\"id\":\"break_down_payments_before_flp_1\",\"contentDetails\":[{\"id\":\"amount\",\"value\":\"4.68\"},{\"id\":\"description\",\"value\":\" \"},{\"id\":\"operation_date\",\"value\":\"17-jul-20\"},{\"id\":\"indicator_PM\",\"value\":\"SI\"},{\"id\":\"indicator_SP\",\"value\":\"SI\"},{\"id\":\"indicator_PPNGI\",\"value\":\"SI\"}]},{\"id\":\"break_down_payments_before_flp_2\",\"contentDetails\":[{\"id\":\"amount\",\"value\":\"8.00\"},{\"id\":\"description\",\"value\":\" \"},{\"id\":\"operation_date\",\"value\":\"09-jul-20\"},{\"id\":\"indicator_PM\",\"value\":\"SI\"},{\"id\":\"indicator_SP\",\"value\":\"SI\"},{\"id\":\"indicator_PPNGI\",\"value\":\"SI\"}]},{\"id\":\"break_down_payments_before_flp_3\",\"contentDetails\":[{\"id\":\"amount\",\"value\":\"500.00\"},{\"id\":\"description\",\"value\":\" \"},{\"id\":\"operation_date\",\"value\":\"14-jul-20\"},{\"id\":\"indicator_PM\",\"value\":\"SI\"},{\"id\":\"indicator_SP\",\"value\":\"SI\"},{\"id\":\"indicator_PPNGI\",\"value\":\"SI\"}]},{\"id\":\"break_down_payments_before_flp_4\",\"contentDetails\":[{\"id\":\"amount\",\"value\":\"870.00\"},{\"id\":\"description\",\"value\":\"SU PAGO EN PRACTICAJA \"},{\"id\":\"operation_date\",\"value\":\"20-jul-20\"},{\"id\":\"indicator_PM\",\"value\":\"SI\"},{\"id\":\"indicator_SP\",\"value\":\"SI\"},{\"id\":\"indicator_PPNGI\",\"value\":\"SI\"}]},{\"id\":\"break_down_payments_before_flp_5\",\"contentDetails\":[{\"id\":\"amount\",\"value\":\"10.00\"},{\"id\":\"description\",\"value\":\" \"},{\"id\":\"operation_date\",\"value\":\"21-jul-20\"},{\"id\":\"indicator_PM\",\"value\":\"SI\"},{\"id\":\"indicator_SP\",\"value\":\"SI\"},{\"id\":\"indicator_PPNGI\",\"value\":\"SI\"}]},{\"id\":\"break_down_payments_before_flp_6\",\"contentDetails\":[{\"id\":\"amount\",\"value\":\"98.00\"},{\"id\":\"description\",\"value\":\" \"},{\"id\":\"operation_date\",\"value\":\"20-jul-20\"},{\"id\":\"indicator_PM\",\"value\":\"SI\"},{\"id\":\"indicator_SP\",\"value\":\"SI\"},{\"id\":\"indicator_PPNGI\",\"value\":\"SI\"}]},{\"id\":\"break_down_of_payments_after_flp_1\",\"contentDetails\":[{\"id\":\"amount\",\"value\":\"600.00\"},{\"id\":\"description\",\"value\":\"SU PAGO EN EFECTIVO \"},{\"id\":\"operation_date\",\"value\":\"04-ago-20\"}]}]}],\"actions\":[{\"id\":\"customer_name\",\"name\":\"\",\"description\":\"\",\"actionType\":\"\",\"configurationData\":[{\"id\":\"nnn\",\"dataSet\":[{\"id\":\"customer_name\",\"value\":\"Hugo\",\"name\":\"\",\"description\":\"\",\"dataType\":\"\"},{\"id\":\"zid_analytics\",\"value\":\"D0222864\",\"name\":\"\",\"description\":\"\",\"dataType\":\"\"}]}]}]}]}"

        //se inicializa la clase ´Settings´ para poder generar la instancia del componente
        let ideear = Settings()
        //se le asigna la referencia del ´Delegate´ y se pasa el link con los datos a cargar
        let vc = ideear.viewController(delegate: self, link: "z/YYel1c?data=\(data)")
        //para que cubra toda la pantalla completa
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
}


