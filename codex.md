我现在有个需求：
1. 现在我的有qemu这个软件可以使用，我现在的目标就是说使用qemu进行验证我的指令对不对
2. 你可以参考driver_1.c，case_1.S, driver_2.c和case_2.S来看之前的为了验证ISA是怎么写的
3. powerpc-linux-gnu-gcc -O0 -static -fno-pic -no-pie -o ppc_case_1.elf driver_1.c case_1.S   qemu-ppc ./ppc_case_1.elf  这两个命令是qemu的运行命令，最终会输出寄存器的值
4. 现在我需要你去把ISA/powerisa里面的chunk3-chunk50进行实现出来，每个chunk文件夹里面包括了随即的ISA，运行ISA之前的寄存器结果以及运行ISA之后的寄存器结果。
5. 你的任务就是参考driver_1.c，case_1.S, driver_2.c和case_2.S 来写一个对应的driver_x.c和case_x.S,来保证qemu运行之后，结果跟每个chunk里面最后输出的结果值是一样的。chunk3-50,每个都需要去验证，要保证一样。
6. 如果完成了step5,那么可以尝试一下抽取一个通用的driver.c，来看看能不能让chunk3-50都成立
需求2：
1. 现在我想把PPC_VERIFY/ 这个文件夹传到一个github的目录，我已经建好仓库了，下载这个仓库的内容其实可以使用git clone https://github.com/ErosSph/ISA.git
2. 我想把PPC_VERIFY/ 里面除了 clash-for-linux-install-master/这个文件夹以外的内容都上传上去，并且把之前的都替换掉
3. 我现在还没有给环境变量配置git内容，你可以先跟我说怎么配置，我配置好了之后你再上传