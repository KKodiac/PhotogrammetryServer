//
//  File.swift
//  
//
//  Created by Sean on 2/14/24.
//

import Foundation
import RealityKit
import Vapor

import os

public protocol PhotogrammetryControllerProvidable: RouteCollection {
	
}

struct PhotogrammetryController: PhotogrammetryControllerProvidable {
	private let logger = Logger(subsystem: subsystem, category: "PhotogrammetryController")
	
	func boot(routes: RoutesBuilder) throws {
		let photogrammetry = routes.grouped("photogrammetry")
		photogrammetry.post("upload", use: upload)
		photogrammetry.post("run", use: run)
	}
	
	private func run(req: Request) async throws -> Response {
		logger.log("Initiating RUN")
		return Response()
	}
	
	private func upload(req: Request) async throws -> Response {
		logger.log("Initiating UPLOAD")
		return Response()
	}
}
