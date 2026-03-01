@main
struct overseer_proto {
    static func main() {
        let device = ConsoleGameDevice()
        let game = GameCore(device: device)
        
//        game.gameLoop()
    }
}
