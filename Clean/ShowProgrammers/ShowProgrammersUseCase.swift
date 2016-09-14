import Foundation

class ShowProgrammersUseCase {
    
    let entityGateway: EntityGatewayProtocol
    let presenter: ProgrammersListPresenterProtocol
    
    init(entityGateway: EntityGatewayProtocol, presenter: ProgrammersListPresenterProtocol) {
        self.entityGateway = entityGateway
        self.presenter = presenter
    }
    
    func showProgrammers() {
        //  Grab data from the entity gateway
        let programmers = entityGateway.fetchProgrammers()
        
        //  Transform data
        let programmerDisplayDatas = programmers.map {
            return ProgrammerDisplayData.init(programmer: $0)
        }
        
        //  Pass data to presenter
        presenter.presentProgrammers(programmerDisplayDatas)
    }
}