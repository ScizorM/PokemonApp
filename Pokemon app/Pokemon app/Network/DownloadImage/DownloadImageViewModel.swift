//
//  DownloadImage.swift
//  Pokemon app
//
//  Created by Matheus Martins on 09/09/20.
//  Copyright © 2020 Matheus Martins. All rights reserved.
//

import UIKit

final class DownloadImageViewModel {
    //MARK: - Static properties
    static var shared = DownloadImageViewModel()
    
    //MARK: - Private properties
    private let service: DownloadImageService
    
    //MARK: - Initialization
    init(service: DownloadImageService = DownloadImageServiceImpl()) {
        self.service = service
    }
    
    //MARK: - Public methods
    func getPokemonImage(id: String, completion: @escaping (UIImage?, Error?) -> Void) {
        service.getPokemon(pokemonId: "\(id).png") { data, error in
            guard let imageData = data else {
                if let error = error {
                    completion(nil, error)
                }
                return
            }
            
            let image = UIImage(data: imageData)
            completion(image, nil)
        }
    }
    
    func getPokemonImage(url: URL, completion: @escaping (UIImage?, Error?) -> Void) {
        service.getPokemon(url: url) { data, error in
            guard let imageData = data else {
                if let error = error {
                    completion(nil, error)
                }
                return
            }
            
            let image = UIImage(data: imageData)
            completion(image, nil)
        }
    }
}

