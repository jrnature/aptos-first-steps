module introduccion::practica_aptos {
    use std::debug::print;
    use std::string::utf8;

    fun practica() {
        print(&utf8(b"\n\rMMMMMMMMMMMMMMMMWKkdc;'..          ..';cdkKWMMMMMMMMMMMMMMMM\n\rMMMMMMMMMMMMWXkl,.                        .,lkXWMMMMMMMMMMMM\n\rMMMMMMMMMMXk:.                                .ckXMMMMMMMMMM\n\rMMMMMMMWKo'                               ...    'oKWMMMMMMM\n\rMMMMMMXo.                               .:OX0l.    .oXMMMMMM\n\rMMMMMNd;;;,;;,,,,,,,,,,,,,,,,,,,;;;,,,;lOWMMMW0l;,;;:dXMMMMM\n\rMMMMMWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWMMMMMMMMMWWWWWWWMMMMM\n\rMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNKXWMMMMMMMMMMMMMMMMMMMMM\n\rMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNx,.'oXMMMMMMMMMMMMMMMMMMMM\n\rN0kkkkkkkkkkkkkkkkkkkkkkkkkkkkkko,     'okkkkkkkkkkkkkkkkk0N\n\rx.                                                        .x\n\r;                              .;;.                        ;\n\r.                           .cx0WW0c.                      .\n\rolllllllllllllllllllllllllld0WMMMMMW0olllllllllllllllllllllo\n\rMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\n\rMMMMMMMMMMMMMMMMMMMMMMMXkkXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\n\rMMMMMMMMMMMMMMMMMMMMMXd'  'xXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\n\rkoollloolllllllllollc'      'clllllllllllllllllllllllllllllx\n\rl                                                          c\n\r0'                 .cl;                                   '0\n\rWx.              .oKWMNk,                                .xW\n\rMW0xxxxxxxxxxxxxkXWMMMMMNOkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk0WM\n\rMMMMMMMMMMMMWWWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\n\rMMMMMMMMMMXd;,l0WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\n\rMMMMMMMWKd,    .lOKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKXWMMMMMMM\n\rMMMMMMMNx'        ................................;kNMMMMMMM\n\rMMMMMMMMWKd,.                                  .,dKWMMMMMMMM\n\rMMMMMMMMMMMN0o,.                            .,o0NMMMMMMMMMMM\n\rMMMMMMMMMMMMMMWKxl;..                  ..;lxKWMMMMMMMMMMMMMM\n\rMMMMMMMMMMMMMMMMMMWKko:'.          .';okKWMMMMMMMMMMMMMMMMMM\n\r"));
    }

    #[test]
    fun prueba() {
        practica();
    }
}