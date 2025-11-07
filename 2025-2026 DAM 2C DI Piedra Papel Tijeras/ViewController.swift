//
//  ViewController.swift
//  2025-2026 DAM 2C DI Piedra Papel Tijeras
//
//  Created by Ricardo on 6/11/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblUsuario: UILabel!
    @IBOutlet weak var lblMac: UILabel!
    @IBOutlet weak var imgMac: UIImageView!
    
    var victoriasUsuario: Int!
    var victoriasMac: Int!
    var listaImagenes: [UIImage]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        victoriasUsuario = 0
        victoriasMac = 0
        
        listaImagenes = [UIImage(named: "piedra")!, UIImage(named: "papel")!, UIImage(named: "tijeras")!]
    }
    
    @IBAction func btnPiedra(_ sender: Any) {
        let tiradaMac = generarTirada()
        comprobarGanador(usuario: 0, mac: tiradaMac)
    }
    
    @IBAction func btnPapel(_ sender: Any) {
        let tiradaMac = generarTirada()
        comprobarGanador(usuario: 1, mac: tiradaMac)
    }
    
    @IBAction func btnTijeras(_ sender: Any) {
        let tiradaMac = generarTirada()
        comprobarGanador(usuario: 2, mac: tiradaMac)
    }
    
    func generarTirada() -> Int {
        let aleatorio = Int.random(in: 0...2)
        imgMac.image = listaImagenes[aleatorio]
        return aleatorio
    }
    
    func comprobarGanador(usuario: Int, mac: Int){
        switch usuario {
        case 0:
            switch mac {
            case 1:
                victoriasMac += 1
                break
            case 2:
                victoriasUsuario += 1
                break
            default:
                break
            }
            break
        case 1:
            switch mac {
            case 0:
                victoriasUsuario += 1
                break
            case 2:
                victoriasMac += 1
                break
            default:
                break
            }
            break
        case 2:
            switch mac {
            case 0:
                victoriasMac += 1
                break
            case 1:
                victoriasUsuario += 1
                break
            default:
                break
            }
            break
        default:
            break
        }
        
        lblUsuario.text = "\(victoriasUsuario!)"
        lblMac.text = "\(victoriasMac!)"
    }
}
