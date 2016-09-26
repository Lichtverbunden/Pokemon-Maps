//
//  PokedexViewController.swift
//  Pokemon Maps
//
//  Created by Ken Krippeler on 25.09.16.
//  Copyright © 2016 Lichtverbunden. All rights reserved.
//

import UIKit

class PokedexViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var tableView: UITableView!
    
    var caughtPokemons: [Pokemon] = []
    var uncaughtPokemons: [Pokemon] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        caughtPokemons = getAllCaughtPokemons()
        uncaughtPokemons = getAllUncaughtPokemons()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        if section == 0
        {
            return "CAUGHT"
        }
        else
        {
            return "UNCAUGHT"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if section == 0
        {
            return caughtPokemons.count
        }
        else
        {
            return uncaughtPokemons.count
        }

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let pokemon: Pokemon
        
        if indexPath.section == 0
        {
            pokemon = caughtPokemons[indexPath.row]
        }
        else
        {
            pokemon = uncaughtPokemons[indexPath.row]
        }
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = pokemon.name
        cell.imageView?.image = UIImage(named: pokemon.imageName!)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
    }
    
    @IBAction func mapTapped(_ sender: AnyObject)
    {
        dismiss(animated: true, completion: nil)
    }
}
