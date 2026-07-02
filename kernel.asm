
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	d0013103          	ld	sp,-768(sp) # 8000bd00 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	525060ef          	jal	ra,80006d40 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <supervisorTrap>:
.align 4
.global supervisorTrap
.type supervisorTrap, @function

supervisorTrap:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256

    sd ra, 0(sp)
    80001004:	00113023          	sd	ra,0(sp)

    sd gp, 8(sp)
    80001008:	00313423          	sd	gp,8(sp)
    sd tp, 16(sp)
    8000100c:	00413823          	sd	tp,16(sp)

    sd t0, 24(sp)
    80001010:	00513c23          	sd	t0,24(sp)
    sd t1, 32(sp)
    80001014:	02613023          	sd	t1,32(sp)
    sd t2, 40(sp)
    80001018:	02713423          	sd	t2,40(sp)

    sd s0, 48(sp)
    8000101c:	02813823          	sd	s0,48(sp)
    sd s1, 56(sp)
    80001020:	02913c23          	sd	s1,56(sp)

    sd a0, 64(sp)
    80001024:	04a13023          	sd	a0,64(sp)
    sd a1, 72(sp)
    80001028:	04b13423          	sd	a1,72(sp)
    sd a2, 80(sp)
    8000102c:	04c13823          	sd	a2,80(sp)
    sd a3, 88(sp)
    80001030:	04d13c23          	sd	a3,88(sp)
    sd a4, 96(sp)
    80001034:	06e13023          	sd	a4,96(sp)
    sd a5, 104(sp)
    80001038:	06f13423          	sd	a5,104(sp)
    sd a6, 112(sp)
    8000103c:	07013823          	sd	a6,112(sp)
    sd a7, 120(sp)
    80001040:	07113c23          	sd	a7,120(sp)

    sd s2, 128(sp)
    80001044:	09213023          	sd	s2,128(sp)
    sd s3, 136(sp)
    80001048:	09313423          	sd	s3,136(sp)
    sd s4, 144(sp)
    8000104c:	09413823          	sd	s4,144(sp)
    sd s5, 152(sp)
    80001050:	09513c23          	sd	s5,152(sp)
    sd s6, 160(sp)
    80001054:	0b613023          	sd	s6,160(sp)
    sd s7, 168(sp)
    80001058:	0b713423          	sd	s7,168(sp)
    sd s8, 176(sp)
    8000105c:	0b813823          	sd	s8,176(sp)
    sd s9, 184(sp)
    80001060:	0b913c23          	sd	s9,184(sp)
    sd s10, 192(sp)
    80001064:	0da13023          	sd	s10,192(sp)
    sd s11, 200(sp)
    80001068:	0db13423          	sd	s11,200(sp)

    sd t3, 208(sp)
    8000106c:	0dc13823          	sd	t3,208(sp)
    sd t4, 216(sp)
    80001070:	0dd13c23          	sd	t4,216(sp)
    sd t5, 224(sp)
    80001074:	0fe13023          	sd	t5,224(sp)
    sd t6, 232(sp)
    80001078:	0ff13423          	sd	t6,232(sp)

    csrr t0, sepc
    8000107c:	141022f3          	csrr	t0,sepc
    sd t0, 240(sp)
    80001080:	0e513823          	sd	t0,240(sp)

    csrr t0, sstatus
    80001084:	100022f3          	csrr	t0,sstatus
    sd t0, 248(sp)
    80001088:	0e513c23          	sd	t0,248(sp)

    mv a0, sp
    8000108c:	00010513          	mv	a0,sp
    call handleSupervisorTrap
    80001090:	269000ef          	jal	ra,80001af8 <handleSupervisorTrap>

    ld t0, 240(sp)
    80001094:	0f013283          	ld	t0,240(sp)
    csrw sepc, t0
    80001098:	14129073          	csrw	sepc,t0

    ld t0, 248(sp)
    8000109c:	0f813283          	ld	t0,248(sp)
    csrw sstatus, t0
    800010a0:	10029073          	csrw	sstatus,t0

    ld ra, 0(sp)
    800010a4:	00013083          	ld	ra,0(sp)

    ld gp, 8(sp)
    800010a8:	00813183          	ld	gp,8(sp)
    ld tp, 16(sp)
    800010ac:	01013203          	ld	tp,16(sp)

    ld t0, 24(sp)
    800010b0:	01813283          	ld	t0,24(sp)
    ld t1, 32(sp)
    800010b4:	02013303          	ld	t1,32(sp)
    ld t2, 40(sp)
    800010b8:	02813383          	ld	t2,40(sp)

    ld s0, 48(sp)
    800010bc:	03013403          	ld	s0,48(sp)
    ld s1, 56(sp)
    800010c0:	03813483          	ld	s1,56(sp)

    ld a0, 64(sp)
    800010c4:	04013503          	ld	a0,64(sp)
    ld a1, 72(sp)
    800010c8:	04813583          	ld	a1,72(sp)
    ld a2, 80(sp)
    800010cc:	05013603          	ld	a2,80(sp)
    ld a3, 88(sp)
    800010d0:	05813683          	ld	a3,88(sp)
    ld a4, 96(sp)
    800010d4:	06013703          	ld	a4,96(sp)
    ld a5, 104(sp)
    800010d8:	06813783          	ld	a5,104(sp)
    ld a6, 112(sp)
    800010dc:	07013803          	ld	a6,112(sp)
    ld a7, 120(sp)
    800010e0:	07813883          	ld	a7,120(sp)

    ld s2, 128(sp)
    800010e4:	08013903          	ld	s2,128(sp)
    ld s3, 136(sp)
    800010e8:	08813983          	ld	s3,136(sp)
    ld s4, 144(sp)
    800010ec:	09013a03          	ld	s4,144(sp)
    ld s5, 152(sp)
    800010f0:	09813a83          	ld	s5,152(sp)
    ld s6, 160(sp)
    800010f4:	0a013b03          	ld	s6,160(sp)
    ld s7, 168(sp)
    800010f8:	0a813b83          	ld	s7,168(sp)
    ld s8, 176(sp)
    800010fc:	0b013c03          	ld	s8,176(sp)
    ld s9, 184(sp)
    80001100:	0b813c83          	ld	s9,184(sp)
    ld s10, 192(sp)
    80001104:	0c013d03          	ld	s10,192(sp)
    ld s11, 200(sp)
    80001108:	0c813d83          	ld	s11,200(sp)

    ld t3, 208(sp)
    8000110c:	0d013e03          	ld	t3,208(sp)
    ld t4, 216(sp)
    80001110:	0d813e83          	ld	t4,216(sp)
    ld t5, 224(sp)
    80001114:	0e013f03          	ld	t5,224(sp)
    ld t6, 232(sp)
    80001118:	0e813f83          	ld	t6,232(sp)

    addi sp, sp, 256
    8000111c:	10010113          	addi	sp,sp,256

    80001120:	10200073          	sret
	...

0000000080001130 <contextSwitch>:
.global contextSwitch
.type contextSwitch, @function

contextSwitch:
    sd ra, 0(a0)
    80001130:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 8(a0)
    80001134:	00253423          	sd	sp,8(a0)

    sd s0, 16(a0)
    80001138:	00853823          	sd	s0,16(a0)
    sd s1, 24(a0)
    8000113c:	00953c23          	sd	s1,24(a0)
    sd s2, 32(a0)
    80001140:	03253023          	sd	s2,32(a0)
    sd s3, 40(a0)
    80001144:	03353423          	sd	s3,40(a0)
    sd s4, 48(a0)
    80001148:	03453823          	sd	s4,48(a0)
    sd s5, 56(a0)
    8000114c:	03553c23          	sd	s5,56(a0)
    sd s6, 64(a0)
    80001150:	05653023          	sd	s6,64(a0)
    sd s7, 72(a0)
    80001154:	05753423          	sd	s7,72(a0)
    sd s8, 80(a0)
    80001158:	05853823          	sd	s8,80(a0)
    sd s9, 88(a0)
    8000115c:	05953c23          	sd	s9,88(a0)
    sd s10, 96(a0)
    80001160:	07a53023          	sd	s10,96(a0)
    sd s11, 104(a0)
    80001164:	07b53423          	sd	s11,104(a0)

    ld ra, 0(a1)
    80001168:	0005b083          	ld	ra,0(a1)
    ld sp, 8(a1)
    8000116c:	0085b103          	ld	sp,8(a1)

    ld s0, 16(a1)
    80001170:	0105b403          	ld	s0,16(a1)
    ld s1, 24(a1)
    80001174:	0185b483          	ld	s1,24(a1)
    ld s2, 32(a1)
    80001178:	0205b903          	ld	s2,32(a1)
    ld s3, 40(a1)
    8000117c:	0285b983          	ld	s3,40(a1)
    ld s4, 48(a1)
    80001180:	0305ba03          	ld	s4,48(a1)
    ld s5, 56(a1)
    80001184:	0385ba83          	ld	s5,56(a1)
    ld s6, 64(a1)
    80001188:	0405bb03          	ld	s6,64(a1)
    ld s7, 72(a1)
    8000118c:	0485bb83          	ld	s7,72(a1)
    ld s8, 80(a1)
    80001190:	0505bc03          	ld	s8,80(a1)
    ld s9, 88(a1)
    80001194:	0585bc83          	ld	s9,88(a1)
    ld s10, 96(a1)
    80001198:	0605bd03          	ld	s10,96(a1)
    ld s11, 104(a1)
    8000119c:	0685bd83          	ld	s11,104(a1)

    800011a0:	00008067          	ret

00000000800011a4 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    800011a4:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    800011a8:	00b29a63          	bne	t0,a1,800011bc <fail>
    sc.w t0, a2, (a0)      # Try to update.
    800011ac:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    800011b0:	fe029ae3          	bnez	t0,800011a4 <copy_and_swap>
    li a0, 0               # Set return to success.
    800011b4:	00000513          	li	a0,0
    jr ra                  # Return.
    800011b8:	00008067          	ret

00000000800011bc <fail>:
    fail:
    li a0, 1               # Set return to failure.
    800011bc:	00100513          	li	a0,1
    800011c0:	00008067          	ret

00000000800011c4 <_ZL9doSyscallmmmmm>:
#include "../h/syscall_c.hpp"

static uint64 doSyscall(uint64 code, uint64 arg1 = 0, uint64 arg2 = 0,
                        uint64 arg3 = 0, uint64 arg4 = 0) {
    800011c4:	ff010113          	addi	sp,sp,-16
    800011c8:	00813423          	sd	s0,8(sp)
    800011cc:	01010413          	addi	s0,sp,16
    uint64 ret;

    asm volatile("mv a4, %0" : : "r"(arg4));
    800011d0:	00070713          	mv	a4,a4
    asm volatile("mv a3, %0" : : "r"(arg3));
    800011d4:	00068693          	mv	a3,a3
    asm volatile("mv a2, %0" : : "r"(arg2));
    800011d8:	00060613          	mv	a2,a2
    asm volatile("mv a1, %0" : : "r"(arg1));
    800011dc:	00058593          	mv	a1,a1
    asm volatile("mv a0, %0" : : "r"(code));
    800011e0:	00050513          	mv	a0,a0

    asm volatile("ecall");
    800011e4:	00000073          	ecall

    asm volatile("mv %0, a0" : "=r"(ret));
    800011e8:	00050513          	mv	a0,a0

    return ret;
}
    800011ec:	00813403          	ld	s0,8(sp)
    800011f0:	01010113          	addi	sp,sp,16
    800011f4:	00008067          	ret

00000000800011f8 <_Z9mem_allocm>:

void* mem_alloc(size_t size) {
    if (size == 0) {
    800011f8:	04050263          	beqz	a0,8000123c <_Z9mem_allocm+0x44>
void* mem_alloc(size_t size) {
    800011fc:	ff010113          	addi	sp,sp,-16
    80001200:	00113423          	sd	ra,8(sp)
    80001204:	00813023          	sd	s0,0(sp)
    80001208:	01010413          	addi	s0,sp,16
        return nullptr;
    }

    size_t numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    8000120c:	03f50513          	addi	a0,a0,63

    return (void*)doSyscall(0x01, numBlocks);
    80001210:	00000713          	li	a4,0
    80001214:	00000693          	li	a3,0
    80001218:	00000613          	li	a2,0
    8000121c:	00655593          	srli	a1,a0,0x6
    80001220:	00100513          	li	a0,1
    80001224:	00000097          	auipc	ra,0x0
    80001228:	fa0080e7          	jalr	-96(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    8000122c:	00813083          	ld	ra,8(sp)
    80001230:	00013403          	ld	s0,0(sp)
    80001234:	01010113          	addi	sp,sp,16
    80001238:	00008067          	ret
        return nullptr;
    8000123c:	00000513          	li	a0,0
}
    80001240:	00008067          	ret

0000000080001244 <_Z8mem_freePv>:

int mem_free(void* ptr) {
    80001244:	ff010113          	addi	sp,sp,-16
    80001248:	00113423          	sd	ra,8(sp)
    8000124c:	00813023          	sd	s0,0(sp)
    80001250:	01010413          	addi	s0,sp,16
    80001254:	00050593          	mv	a1,a0
    return (int)doSyscall(0x02, (uint64)ptr);
    80001258:	00000713          	li	a4,0
    8000125c:	00000693          	li	a3,0
    80001260:	00000613          	li	a2,0
    80001264:	00200513          	li	a0,2
    80001268:	00000097          	auipc	ra,0x0
    8000126c:	f5c080e7          	jalr	-164(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001270:	0005051b          	sext.w	a0,a0
    80001274:	00813083          	ld	ra,8(sp)
    80001278:	00013403          	ld	s0,0(sp)
    8000127c:	01010113          	addi	sp,sp,16
    80001280:	00008067          	ret

0000000080001284 <_Z13thread_createPP7_threadPFvPvES2_>:


int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg){
    80001284:	fd010113          	addi	sp,sp,-48
    80001288:	02113423          	sd	ra,40(sp)
    8000128c:	02813023          	sd	s0,32(sp)
    80001290:	00913c23          	sd	s1,24(sp)
    80001294:	01213823          	sd	s2,16(sp)
    80001298:	01313423          	sd	s3,8(sp)
    8000129c:	01413023          	sd	s4,0(sp)
    800012a0:	03010413          	addi	s0,sp,48
    if (handle == nullptr || start_routine == nullptr){//handle je mesto gde kernel upisuje pokazivac na napravljenu nit
    800012a4:	08050663          	beqz	a0,80001330 <_Z13thread_createPP7_threadPFvPvES2_+0xac>
    800012a8:	00050913          	mv	s2,a0
    800012ac:	00058993          	mv	s3,a1
    800012b0:	00060a13          	mv	s4,a2
    800012b4:	08058263          	beqz	a1,80001338 <_Z13thread_createPP7_threadPFvPvES2_+0xb4>
        return -1;
    }
    void* stack = mem_alloc(DEFAULT_STACK_SIZE);//stack pokazuje na pocetak alociranog prostora
    800012b8:	00001537          	lui	a0,0x1
    800012bc:	00000097          	auipc	ra,0x0
    800012c0:	f3c080e7          	jalr	-196(ra) # 800011f8 <_Z9mem_allocm>
    800012c4:	00050493          	mv	s1,a0
    if (stack == nullptr){
    800012c8:	06050c63          	beqz	a0,80001340 <_Z13thread_createPP7_threadPFvPvES2_+0xbc>
        return -1;
    }
    uint64 stackTop = (uint64)stack + DEFAULT_STACK_SIZE;//stek raste na dole, pocetni sp na kraju alociranog prostora
    800012cc:	00001737          	lui	a4,0x1
    800012d0:	00e50733          	add	a4,a0,a4
    stackTop &= ~((uint64)0xF);//obrisemo poslednja 4 bita adrese jer deljivo sa 16

    int ret = (int)doSyscall(
    800012d4:	ff077713          	andi	a4,a4,-16
    800012d8:	000a0693          	mv	a3,s4
    800012dc:	00098613          	mv	a2,s3
    800012e0:	00090593          	mv	a1,s2
    800012e4:	01100513          	li	a0,17
    800012e8:	00000097          	auipc	ra,0x0
    800012ec:	edc080e7          	jalr	-292(ra) # 800011c4 <_ZL9doSyscallmmmmm>
            0x11,
            (uint64)handle,
            (uint64)start_routine,
            (uint64)arg,
            stackTop
    );
    800012f0:	0005091b          	sext.w	s2,a0

    if (ret < 0) {
    800012f4:	02051793          	slli	a5,a0,0x20
    800012f8:	0207c463          	bltz	a5,80001320 <_Z13thread_createPP7_threadPFvPvES2_+0x9c>
        mem_free(stack);
    }

    return ret;
}
    800012fc:	00090513          	mv	a0,s2
    80001300:	02813083          	ld	ra,40(sp)
    80001304:	02013403          	ld	s0,32(sp)
    80001308:	01813483          	ld	s1,24(sp)
    8000130c:	01013903          	ld	s2,16(sp)
    80001310:	00813983          	ld	s3,8(sp)
    80001314:	00013a03          	ld	s4,0(sp)
    80001318:	03010113          	addi	sp,sp,48
    8000131c:	00008067          	ret
        mem_free(stack);
    80001320:	00048513          	mv	a0,s1
    80001324:	00000097          	auipc	ra,0x0
    80001328:	f20080e7          	jalr	-224(ra) # 80001244 <_Z8mem_freePv>
    8000132c:	fd1ff06f          	j	800012fc <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;
    80001330:	fff00913          	li	s2,-1
    80001334:	fc9ff06f          	j	800012fc <_Z13thread_createPP7_threadPFvPvES2_+0x78>
    80001338:	fff00913          	li	s2,-1
    8000133c:	fc1ff06f          	j	800012fc <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;
    80001340:	fff00913          	li	s2,-1
    80001344:	fb9ff06f          	j	800012fc <_Z13thread_createPP7_threadPFvPvES2_+0x78>

0000000080001348 <_Z11thread_exitv>:
int thread_exit() {
    80001348:	ff010113          	addi	sp,sp,-16
    8000134c:	00113423          	sd	ra,8(sp)
    80001350:	00813023          	sd	s0,0(sp)
    80001354:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x12);
    80001358:	00000713          	li	a4,0
    8000135c:	00000693          	li	a3,0
    80001360:	00000613          	li	a2,0
    80001364:	00000593          	li	a1,0
    80001368:	01200513          	li	a0,18
    8000136c:	00000097          	auipc	ra,0x0
    80001370:	e58080e7          	jalr	-424(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001374:	0005051b          	sext.w	a0,a0
    80001378:	00813083          	ld	ra,8(sp)
    8000137c:	00013403          	ld	s0,0(sp)
    80001380:	01010113          	addi	sp,sp,16
    80001384:	00008067          	ret

0000000080001388 <_Z11getThreadIdv>:

int getThreadId() {
    80001388:	ff010113          	addi	sp,sp,-16
    8000138c:	00113423          	sd	ra,8(sp)
    80001390:	00813023          	sd	s0,0(sp)
    80001394:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x14);
    80001398:	00000713          	li	a4,0
    8000139c:	00000693          	li	a3,0
    800013a0:	00000613          	li	a2,0
    800013a4:	00000593          	li	a1,0
    800013a8:	01400513          	li	a0,20
    800013ac:	00000097          	auipc	ra,0x0
    800013b0:	e18080e7          	jalr	-488(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800013b4:	0005051b          	sext.w	a0,a0
    800013b8:	00813083          	ld	ra,8(sp)
    800013bc:	00013403          	ld	s0,0(sp)
    800013c0:	01010113          	addi	sp,sp,16
    800013c4:	00008067          	ret

00000000800013c8 <_Z17setMaximumThreadsi>:

void setMaximumThreads(int numOfThreads) {
    800013c8:	ff010113          	addi	sp,sp,-16
    800013cc:	00113423          	sd	ra,8(sp)
    800013d0:	00813023          	sd	s0,0(sp)
    800013d4:	01010413          	addi	s0,sp,16
    800013d8:	00050593          	mv	a1,a0
    doSyscall(0x15, (uint64)numOfThreads);
    800013dc:	00000713          	li	a4,0
    800013e0:	00000693          	li	a3,0
    800013e4:	00000613          	li	a2,0
    800013e8:	01500513          	li	a0,21
    800013ec:	00000097          	auipc	ra,0x0
    800013f0:	dd8080e7          	jalr	-552(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800013f4:	00813083          	ld	ra,8(sp)
    800013f8:	00013403          	ld	s0,0(sp)
    800013fc:	01010113          	addi	sp,sp,16
    80001400:	00008067          	ret

0000000080001404 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80001404:	ff010113          	addi	sp,sp,-16
    80001408:	00113423          	sd	ra,8(sp)
    8000140c:	00813023          	sd	s0,0(sp)
    80001410:	01010413          	addi	s0,sp,16
    doSyscall(0x13);
    80001414:	00000713          	li	a4,0
    80001418:	00000693          	li	a3,0
    8000141c:	00000613          	li	a2,0
    80001420:	00000593          	li	a1,0
    80001424:	01300513          	li	a0,19
    80001428:	00000097          	auipc	ra,0x0
    8000142c:	d9c080e7          	jalr	-612(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001430:	00813083          	ld	ra,8(sp)
    80001434:	00013403          	ld	s0,0(sp)
    80001438:	01010113          	addi	sp,sp,16
    8000143c:	00008067          	ret

0000000080001440 <_Z8sem_openPP4_semj>:
int sem_open(sem_t* handle, unsigned init) {
    80001440:	ff010113          	addi	sp,sp,-16
    80001444:	00113423          	sd	ra,8(sp)
    80001448:	00813023          	sd	s0,0(sp)
    8000144c:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x21, (uint64)handle, (uint64)init);
    80001450:	00000713          	li	a4,0
    80001454:	00000693          	li	a3,0
    80001458:	02059613          	slli	a2,a1,0x20
    8000145c:	02065613          	srli	a2,a2,0x20
    80001460:	00050593          	mv	a1,a0
    80001464:	02100513          	li	a0,33
    80001468:	00000097          	auipc	ra,0x0
    8000146c:	d5c080e7          	jalr	-676(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001470:	0005051b          	sext.w	a0,a0
    80001474:	00813083          	ld	ra,8(sp)
    80001478:	00013403          	ld	s0,0(sp)
    8000147c:	01010113          	addi	sp,sp,16
    80001480:	00008067          	ret

0000000080001484 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    80001484:	ff010113          	addi	sp,sp,-16
    80001488:	00113423          	sd	ra,8(sp)
    8000148c:	00813023          	sd	s0,0(sp)
    80001490:	01010413          	addi	s0,sp,16
    80001494:	00050593          	mv	a1,a0
    return (int)doSyscall(0x22, (uint64)handle);
    80001498:	00000713          	li	a4,0
    8000149c:	00000693          	li	a3,0
    800014a0:	00000613          	li	a2,0
    800014a4:	02200513          	li	a0,34
    800014a8:	00000097          	auipc	ra,0x0
    800014ac:	d1c080e7          	jalr	-740(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800014b0:	0005051b          	sext.w	a0,a0
    800014b4:	00813083          	ld	ra,8(sp)
    800014b8:	00013403          	ld	s0,0(sp)
    800014bc:	01010113          	addi	sp,sp,16
    800014c0:	00008067          	ret

00000000800014c4 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    800014c4:	ff010113          	addi	sp,sp,-16
    800014c8:	00113423          	sd	ra,8(sp)
    800014cc:	00813023          	sd	s0,0(sp)
    800014d0:	01010413          	addi	s0,sp,16
    800014d4:	00050593          	mv	a1,a0
    return (int)doSyscall(0x23, (uint64)id);
    800014d8:	00000713          	li	a4,0
    800014dc:	00000693          	li	a3,0
    800014e0:	00000613          	li	a2,0
    800014e4:	02300513          	li	a0,35
    800014e8:	00000097          	auipc	ra,0x0
    800014ec:	cdc080e7          	jalr	-804(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800014f0:	0005051b          	sext.w	a0,a0
    800014f4:	00813083          	ld	ra,8(sp)
    800014f8:	00013403          	ld	s0,0(sp)
    800014fc:	01010113          	addi	sp,sp,16
    80001500:	00008067          	ret

0000000080001504 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    80001504:	ff010113          	addi	sp,sp,-16
    80001508:	00113423          	sd	ra,8(sp)
    8000150c:	00813023          	sd	s0,0(sp)
    80001510:	01010413          	addi	s0,sp,16
    80001514:	00050593          	mv	a1,a0
    return (int)doSyscall(0x24, (uint64)id);
    80001518:	00000713          	li	a4,0
    8000151c:	00000693          	li	a3,0
    80001520:	00000613          	li	a2,0
    80001524:	02400513          	li	a0,36
    80001528:	00000097          	auipc	ra,0x0
    8000152c:	c9c080e7          	jalr	-868(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001530:	0005051b          	sext.w	a0,a0
    80001534:	00813083          	ld	ra,8(sp)
    80001538:	00013403          	ld	s0,0(sp)
    8000153c:	01010113          	addi	sp,sp,16
    80001540:	00008067          	ret

0000000080001544 <_Z10sem_wait_nP4_semj>:

int sem_wait_n(sem_t id, unsigned n) {
    80001544:	ff010113          	addi	sp,sp,-16
    80001548:	00113423          	sd	ra,8(sp)
    8000154c:	00813023          	sd	s0,0(sp)
    80001550:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x25, (uint64)id, (uint64)n);
    80001554:	00000713          	li	a4,0
    80001558:	00000693          	li	a3,0
    8000155c:	02059613          	slli	a2,a1,0x20
    80001560:	02065613          	srli	a2,a2,0x20
    80001564:	00050593          	mv	a1,a0
    80001568:	02500513          	li	a0,37
    8000156c:	00000097          	auipc	ra,0x0
    80001570:	c58080e7          	jalr	-936(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001574:	0005051b          	sext.w	a0,a0
    80001578:	00813083          	ld	ra,8(sp)
    8000157c:	00013403          	ld	s0,0(sp)
    80001580:	01010113          	addi	sp,sp,16
    80001584:	00008067          	ret

0000000080001588 <_Z12sem_signal_nP4_semj>:

int sem_signal_n(sem_t id, unsigned n) {
    80001588:	ff010113          	addi	sp,sp,-16
    8000158c:	00113423          	sd	ra,8(sp)
    80001590:	00813023          	sd	s0,0(sp)
    80001594:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x26, (uint64)id, (uint64)n);
    80001598:	00000713          	li	a4,0
    8000159c:	00000693          	li	a3,0
    800015a0:	02059613          	slli	a2,a1,0x20
    800015a4:	02065613          	srli	a2,a2,0x20
    800015a8:	00050593          	mv	a1,a0
    800015ac:	02600513          	li	a0,38
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	c14080e7          	jalr	-1004(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800015b8:	0005051b          	sext.w	a0,a0
    800015bc:	00813083          	ld	ra,8(sp)
    800015c0:	00013403          	ld	s0,0(sp)
    800015c4:	01010113          	addi	sp,sp,16
    800015c8:	00008067          	ret

00000000800015cc <_Z10time_sleepm>:
int time_sleep(time_t time) {
    800015cc:	ff010113          	addi	sp,sp,-16
    800015d0:	00113423          	sd	ra,8(sp)
    800015d4:	00813023          	sd	s0,0(sp)
    800015d8:	01010413          	addi	s0,sp,16
    800015dc:	00050593          	mv	a1,a0
    return (int)doSyscall(0x31, (uint64)time);
    800015e0:	00000713          	li	a4,0
    800015e4:	00000693          	li	a3,0
    800015e8:	00000613          	li	a2,0
    800015ec:	03100513          	li	a0,49
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	bd4080e7          	jalr	-1068(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800015f8:	0005051b          	sext.w	a0,a0
    800015fc:	00813083          	ld	ra,8(sp)
    80001600:	00013403          	ld	s0,0(sp)
    80001604:	01010113          	addi	sp,sp,16
    80001608:	00008067          	ret

000000008000160c <_Z4getcv>:

char getc() {
    8000160c:	ff010113          	addi	sp,sp,-16
    80001610:	00113423          	sd	ra,8(sp)
    80001614:	00813023          	sd	s0,0(sp)
    80001618:	01010413          	addi	s0,sp,16
    return (char)doSyscall(0x41);
    8000161c:	00000713          	li	a4,0
    80001620:	00000693          	li	a3,0
    80001624:	00000613          	li	a2,0
    80001628:	00000593          	li	a1,0
    8000162c:	04100513          	li	a0,65
    80001630:	00000097          	auipc	ra,0x0
    80001634:	b94080e7          	jalr	-1132(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001638:	0ff57513          	andi	a0,a0,255
    8000163c:	00813083          	ld	ra,8(sp)
    80001640:	00013403          	ld	s0,0(sp)
    80001644:	01010113          	addi	sp,sp,16
    80001648:	00008067          	ret

000000008000164c <_Z4putcc>:

void putc(char c) {
    8000164c:	ff010113          	addi	sp,sp,-16
    80001650:	00113423          	sd	ra,8(sp)
    80001654:	00813023          	sd	s0,0(sp)
    80001658:	01010413          	addi	s0,sp,16
    8000165c:	00050593          	mv	a1,a0
    doSyscall(0x42, (uint64)c);
    80001660:	00000713          	li	a4,0
    80001664:	00000693          	li	a3,0
    80001668:	00000613          	li	a2,0
    8000166c:	04200513          	li	a0,66
    80001670:	00000097          	auipc	ra,0x0
    80001674:	b54080e7          	jalr	-1196(ra) # 800011c4 <_ZL9doSyscallmmmmm>
    80001678:	00813083          	ld	ra,8(sp)
    8000167c:	00013403          	ld	s0,0(sp)
    80001680:	01010113          	addi	sp,sp,16
    80001684:	00008067          	ret

0000000080001688 <_ZL23blocksForBytesSemaphorem>:
#include "../h/Semaphore.hpp"
#include "../h/Thread.hpp"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"

static size_t blocksForBytesSemaphore(size_t bytes) {
    80001688:	ff010113          	addi	sp,sp,-16
    8000168c:	00813423          	sd	s0,8(sp)
    80001690:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001694:	03f50513          	addi	a0,a0,63 # 103f <_entry-0x7fffefc1>
}
    80001698:	00655513          	srli	a0,a0,0x6
    8000169c:	00813403          	ld	s0,8(sp)
    800016a0:	01010113          	addi	sp,sp,16
    800016a4:	00008067          	ret

00000000800016a8 <_ZN4_semnwEm>:

void* _sem::operator new(size_t size) {
    800016a8:	fe010113          	addi	sp,sp,-32
    800016ac:	00113c23          	sd	ra,24(sp)
    800016b0:	00813823          	sd	s0,16(sp)
    800016b4:	00913423          	sd	s1,8(sp)
    800016b8:	01213023          	sd	s2,0(sp)
    800016bc:	02010413          	addi	s0,sp,32
    800016c0:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytesSemaphore(size));
    800016c4:	00001097          	auipc	ra,0x1
    800016c8:	608080e7          	jalr	1544(ra) # 80002ccc <_ZN15MemoryAllocator11getInstanceEv>
    800016cc:	00050493          	mv	s1,a0
    800016d0:	00090513          	mv	a0,s2
    800016d4:	00000097          	auipc	ra,0x0
    800016d8:	fb4080e7          	jalr	-76(ra) # 80001688 <_ZL23blocksForBytesSemaphorem>
    800016dc:	00050593          	mv	a1,a0
    800016e0:	00048513          	mv	a0,s1
    800016e4:	00001097          	auipc	ra,0x1
    800016e8:	668080e7          	jalr	1640(ra) # 80002d4c <_ZN15MemoryAllocator6mallocEm>
}
    800016ec:	01813083          	ld	ra,24(sp)
    800016f0:	01013403          	ld	s0,16(sp)
    800016f4:	00813483          	ld	s1,8(sp)
    800016f8:	00013903          	ld	s2,0(sp)
    800016fc:	02010113          	addi	sp,sp,32
    80001700:	00008067          	ret

0000000080001704 <_ZN4_semdlEPv>:

void _sem::operator delete(void* ptr) {
    if (ptr == nullptr) {
    80001704:	04050263          	beqz	a0,80001748 <_ZN4_semdlEPv+0x44>
void _sem::operator delete(void* ptr) {
    80001708:	fe010113          	addi	sp,sp,-32
    8000170c:	00113c23          	sd	ra,24(sp)
    80001710:	00813823          	sd	s0,16(sp)
    80001714:	00913423          	sd	s1,8(sp)
    80001718:	02010413          	addi	s0,sp,32
    8000171c:	00050493          	mv	s1,a0
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
    80001720:	00001097          	auipc	ra,0x1
    80001724:	5ac080e7          	jalr	1452(ra) # 80002ccc <_ZN15MemoryAllocator11getInstanceEv>
    80001728:	00048593          	mv	a1,s1
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	77c080e7          	jalr	1916(ra) # 80002ea8 <_ZN15MemoryAllocator4freeEPv>
}
    80001734:	01813083          	ld	ra,24(sp)
    80001738:	01013403          	ld	s0,16(sp)
    8000173c:	00813483          	ld	s1,8(sp)
    80001740:	02010113          	addi	sp,sp,32
    80001744:	00008067          	ret
    80001748:	00008067          	ret

000000008000174c <_ZN4_semC1Ej>:

_sem::_sem(unsigned init) {
    8000174c:	ff010113          	addi	sp,sp,-16
    80001750:	00813423          	sd	s0,8(sp)
    80001754:	01010413          	addi	s0,sp,16
    val = (int)init;
    80001758:	00b52023          	sw	a1,0(a0)
    closed = false;
    8000175c:	00050223          	sb	zero,4(a0)
    head = nullptr;
    80001760:	00053423          	sd	zero,8(a0)
    tail = nullptr;
    80001764:	00053823          	sd	zero,16(a0)
}
    80001768:	00813403          	ld	s0,8(sp)
    8000176c:	01010113          	addi	sp,sp,16
    80001770:	00008067          	ret

0000000080001774 <_ZN4_sem15createSemaphoreEj>:

_sem* _sem::createSemaphore(unsigned init) {
    80001774:	fe010113          	addi	sp,sp,-32
    80001778:	00113c23          	sd	ra,24(sp)
    8000177c:	00813823          	sd	s0,16(sp)
    80001780:	00913423          	sd	s1,8(sp)
    80001784:	01213023          	sd	s2,0(sp)
    80001788:	02010413          	addi	s0,sp,32
    8000178c:	00050913          	mv	s2,a0
    return new _sem(init);
    80001790:	01800513          	li	a0,24
    80001794:	00000097          	auipc	ra,0x0
    80001798:	f14080e7          	jalr	-236(ra) # 800016a8 <_ZN4_semnwEm>
    8000179c:	00050493          	mv	s1,a0
    800017a0:	00090593          	mv	a1,s2
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	fa8080e7          	jalr	-88(ra) # 8000174c <_ZN4_semC1Ej>
}
    800017ac:	00048513          	mv	a0,s1
    800017b0:	01813083          	ld	ra,24(sp)
    800017b4:	01013403          	ld	s0,16(sp)
    800017b8:	00813483          	ld	s1,8(sp)
    800017bc:	00013903          	ld	s2,0(sp)
    800017c0:	02010113          	addi	sp,sp,32
    800017c4:	00008067          	ret

00000000800017c8 <_ZN4_sem16destroySemaphoreEPS_>:

int _sem::destroySemaphore(_sem* sem) {
    if (sem == nullptr) {
    800017c8:	02050863          	beqz	a0,800017f8 <_ZN4_sem16destroySemaphoreEPS_+0x30>
int _sem::destroySemaphore(_sem* sem) {
    800017cc:	ff010113          	addi	sp,sp,-16
    800017d0:	00113423          	sd	ra,8(sp)
    800017d4:	00813023          	sd	s0,0(sp)
    800017d8:	01010413          	addi	s0,sp,16
        return -1;
    }

    delete sem;
    800017dc:	00000097          	auipc	ra,0x0
    800017e0:	f28080e7          	jalr	-216(ra) # 80001704 <_ZN4_semdlEPv>
    return 0;
    800017e4:	00000513          	li	a0,0
}
    800017e8:	00813083          	ld	ra,8(sp)
    800017ec:	00013403          	ld	s0,0(sp)
    800017f0:	01010113          	addi	sp,sp,16
    800017f4:	00008067          	ret
        return -1;
    800017f8:	fff00513          	li	a0,-1
}
    800017fc:	00008067          	ret

0000000080001800 <_ZN4_sem5blockEPNS_11BlockedNodeE>:
    unblockReady();

    return 0;
}

void _sem::block(BlockedNode* node) {
    80001800:	ff010113          	addi	sp,sp,-16
    80001804:	00813423          	sd	s0,8(sp)
    80001808:	01010413          	addi	s0,sp,16
    if (node == nullptr) {
    8000180c:	00058e63          	beqz	a1,80001828 <_ZN4_sem5blockEPNS_11BlockedNodeE+0x28>
        return;
    }

    node->next = nullptr;
    80001810:	0005b823          	sd	zero,16(a1)

    if (head == nullptr) {
    80001814:	00853783          	ld	a5,8(a0)
    80001818:	00078e63          	beqz	a5,80001834 <_ZN4_sem5blockEPNS_11BlockedNodeE+0x34>
        head = node;
        tail = node;
    } else {
        tail->next = node;
    8000181c:	01053783          	ld	a5,16(a0)
    80001820:	00b7b823          	sd	a1,16(a5)
        tail = node;
    80001824:	00b53823          	sd	a1,16(a0)
    }
}
    80001828:	00813403          	ld	s0,8(sp)
    8000182c:	01010113          	addi	sp,sp,16
    80001830:	00008067          	ret
        head = node;
    80001834:	00b53423          	sd	a1,8(a0)
        tail = node;
    80001838:	00b53823          	sd	a1,16(a0)
    8000183c:	fedff06f          	j	80001828 <_ZN4_sem5blockEPNS_11BlockedNodeE+0x28>

0000000080001840 <_ZN4_sem5waitNEj>:
    if (_thread::running == nullptr) {
    80001840:	0000a797          	auipc	a5,0xa
    80001844:	4b07b783          	ld	a5,1200(a5) # 8000bcf0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001848:	0007b783          	ld	a5,0(a5)
    8000184c:	08078a63          	beqz	a5,800018e0 <_ZN4_sem5waitNEj+0xa0>
    if (closed) {
    80001850:	00454703          	lbu	a4,4(a0)
    80001854:	08071a63          	bnez	a4,800018e8 <_ZN4_sem5waitNEj+0xa8>
    if (n == 0) {
    80001858:	08058c63          	beqz	a1,800018f0 <_ZN4_sem5waitNEj+0xb0>
    if (head == nullptr && val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
    8000185c:	00853703          	ld	a4,8(a0)
    80001860:	06070263          	beqz	a4,800018c4 <_ZN4_sem5waitNEj+0x84>
int _sem::waitN(unsigned n) {
    80001864:	fd010113          	addi	sp,sp,-48
    80001868:	02113423          	sd	ra,40(sp)
    8000186c:	02813023          	sd	s0,32(sp)
    80001870:	03010413          	addi	s0,sp,48
    node.thread = _thread::running;
    80001874:	fcf43c23          	sd	a5,-40(s0)
    node.requested = n;
    80001878:	feb42023          	sw	a1,-32(s0)
    node.status = 0;
    8000187c:	fe042223          	sw	zero,-28(s0)
    node.next = nullptr;
    80001880:	fe043423          	sd	zero,-24(s0)
    block(&node);
    80001884:	fd840593          	addi	a1,s0,-40
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	f78080e7          	jalr	-136(ra) # 80001800 <_ZN4_sem5blockEPNS_11BlockedNodeE>
    _thread::running->setState(_thread::BLOCKED);
    80001890:	00300593          	li	a1,3
    80001894:	0000a797          	auipc	a5,0xa
    80001898:	45c7b783          	ld	a5,1116(a5) # 8000bcf0 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000189c:	0007b503          	ld	a0,0(a5)
    800018a0:	00001097          	auipc	ra,0x1
    800018a4:	b10080e7          	jalr	-1264(ra) # 800023b0 <_ZN7_thread8setStateENS_5StateE>
    _thread::dispatch();
    800018a8:	00001097          	auipc	ra,0x1
    800018ac:	964080e7          	jalr	-1692(ra) # 8000220c <_ZN7_thread8dispatchEv>
    return node.status;
    800018b0:	fe442503          	lw	a0,-28(s0)
}
    800018b4:	02813083          	ld	ra,40(sp)
    800018b8:	02013403          	ld	s0,32(sp)
    800018bc:	03010113          	addi	sp,sp,48
    800018c0:	00008067          	ret
    if (head == nullptr && val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
    800018c4:	00052703          	lw	a4,0(a0)
    800018c8:	0005869b          	sext.w	a3,a1
    800018cc:	f8d74ce3          	blt	a4,a3,80001864 <_ZN4_sem5waitNEj+0x24>
        val -= (int)n;
    800018d0:	40d7073b          	subw	a4,a4,a3
    800018d4:	00e52023          	sw	a4,0(a0)
        return 0;
    800018d8:	00000513          	li	a0,0
    800018dc:	00008067          	ret
        return -1;
    800018e0:	fff00513          	li	a0,-1
    800018e4:	00008067          	ret
        return -1;
    800018e8:	fff00513          	li	a0,-1
    800018ec:	00008067          	ret
        return 0;
    800018f0:	00000513          	li	a0,0
}
    800018f4:	00008067          	ret

00000000800018f8 <_ZN4_sem4waitEv>:
int _sem::wait() {
    800018f8:	ff010113          	addi	sp,sp,-16
    800018fc:	00113423          	sd	ra,8(sp)
    80001900:	00813023          	sd	s0,0(sp)
    80001904:	01010413          	addi	s0,sp,16
    return waitN(1);
    80001908:	00100593          	li	a1,1
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	f34080e7          	jalr	-204(ra) # 80001840 <_ZN4_sem5waitNEj>
}
    80001914:	00813083          	ld	ra,8(sp)
    80001918:	00013403          	ld	s0,0(sp)
    8000191c:	01010113          	addi	sp,sp,16
    80001920:	00008067          	ret

0000000080001924 <_ZN4_sem12unblockReadyEv>:

void _sem::unblockReady() {
    80001924:	fe010113          	addi	sp,sp,-32
    80001928:	00113c23          	sd	ra,24(sp)
    8000192c:	00813823          	sd	s0,16(sp)
    80001930:	00913423          	sd	s1,8(sp)
    80001934:	01213023          	sd	s2,0(sp)
    80001938:	02010413          	addi	s0,sp,32
    8000193c:	00050913          	mv	s2,a0
    80001940:	0240006f          	j	80001964 <_ZN4_sem12unblockReadyEv+0x40>
        BlockedNode* node = head;

        head = head->next;

        if (head == nullptr) {
            tail = nullptr;
    80001944:	00093823          	sd	zero,16(s2)
        }

        val -= (int)node->requested;
    80001948:	0084a703          	lw	a4,8(s1)
    8000194c:	40e787bb          	subw	a5,a5,a4
    80001950:	00f92023          	sw	a5,0(s2)

        node->status = 0;//znaci da ce waitN vratiti 0
    80001954:	0004a623          	sw	zero,12(s1)
        node->next = nullptr;
    80001958:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    8000195c:	0004b503          	ld	a0,0(s1)
    80001960:	02051463          	bnez	a0,80001988 <_ZN4_sem12unblockReadyEv+0x64>
    while (head != nullptr && val >= (int)head->requested) {
    80001964:	00893483          	ld	s1,8(s2)
    80001968:	02048e63          	beqz	s1,800019a4 <_ZN4_sem12unblockReadyEv+0x80>
    8000196c:	00092783          	lw	a5,0(s2)
    80001970:	0084a703          	lw	a4,8(s1)
    80001974:	02e7c863          	blt	a5,a4,800019a4 <_ZN4_sem12unblockReadyEv+0x80>
        head = head->next;
    80001978:	0104b703          	ld	a4,16(s1)
    8000197c:	00e93423          	sd	a4,8(s2)
        if (head == nullptr) {
    80001980:	fc0714e3          	bnez	a4,80001948 <_ZN4_sem12unblockReadyEv+0x24>
    80001984:	fc1ff06f          	j	80001944 <_ZN4_sem12unblockReadyEv+0x20>
            node->thread->setState(_thread::READY);
    80001988:	00100593          	li	a1,1
    8000198c:	00001097          	auipc	ra,0x1
    80001990:	a24080e7          	jalr	-1500(ra) # 800023b0 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001994:	0004b503          	ld	a0,0(s1)
    80001998:	00001097          	auipc	ra,0x1
    8000199c:	c28080e7          	jalr	-984(ra) # 800025c0 <_ZN9Scheduler3putEP7_thread>
    800019a0:	fc5ff06f          	j	80001964 <_ZN4_sem12unblockReadyEv+0x40>
        }
    }
}
    800019a4:	01813083          	ld	ra,24(sp)
    800019a8:	01013403          	ld	s0,16(sp)
    800019ac:	00813483          	ld	s1,8(sp)
    800019b0:	00013903          	ld	s2,0(sp)
    800019b4:	02010113          	addi	sp,sp,32
    800019b8:	00008067          	ret

00000000800019bc <_ZN4_sem7signalNEj>:
    if (closed) {
    800019bc:	00454783          	lbu	a5,4(a0)
    800019c0:	04079463          	bnez	a5,80001a08 <_ZN4_sem7signalNEj+0x4c>
    if (n == 0) {
    800019c4:	00059663          	bnez	a1,800019d0 <_ZN4_sem7signalNEj+0x14>
        return 0;
    800019c8:	00000513          	li	a0,0
}
    800019cc:	00008067          	ret
int _sem::signalN(unsigned n) {
    800019d0:	ff010113          	addi	sp,sp,-16
    800019d4:	00113423          	sd	ra,8(sp)
    800019d8:	00813023          	sd	s0,0(sp)
    800019dc:	01010413          	addi	s0,sp,16
    val += (int)n;
    800019e0:	00052783          	lw	a5,0(a0)
    800019e4:	00b785bb          	addw	a1,a5,a1
    800019e8:	00b52023          	sw	a1,0(a0)
    unblockReady();
    800019ec:	00000097          	auipc	ra,0x0
    800019f0:	f38080e7          	jalr	-200(ra) # 80001924 <_ZN4_sem12unblockReadyEv>
    return 0;
    800019f4:	00000513          	li	a0,0
}
    800019f8:	00813083          	ld	ra,8(sp)
    800019fc:	00013403          	ld	s0,0(sp)
    80001a00:	01010113          	addi	sp,sp,16
    80001a04:	00008067          	ret
        return -1;
    80001a08:	fff00513          	li	a0,-1
    80001a0c:	00008067          	ret

0000000080001a10 <_ZN4_sem6signalEv>:
int _sem::signal() {
    80001a10:	ff010113          	addi	sp,sp,-16
    80001a14:	00113423          	sd	ra,8(sp)
    80001a18:	00813023          	sd	s0,0(sp)
    80001a1c:	01010413          	addi	s0,sp,16
    return signalN(1);
    80001a20:	00100593          	li	a1,1
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	f98080e7          	jalr	-104(ra) # 800019bc <_ZN4_sem7signalNEj>
}
    80001a2c:	00813083          	ld	ra,8(sp)
    80001a30:	00013403          	ld	s0,0(sp)
    80001a34:	01010113          	addi	sp,sp,16
    80001a38:	00008067          	ret

0000000080001a3c <_ZN4_sem10unblockAllEv>:

void _sem::unblockAll() {
    80001a3c:	fe010113          	addi	sp,sp,-32
    80001a40:	00113c23          	sd	ra,24(sp)
    80001a44:	00813823          	sd	s0,16(sp)
    80001a48:	00913423          	sd	s1,8(sp)
    80001a4c:	01213023          	sd	s2,0(sp)
    80001a50:	02010413          	addi	s0,sp,32
    80001a54:	00050913          	mv	s2,a0
    while (head != nullptr) {
    80001a58:	00893483          	ld	s1,8(s2)
    80001a5c:	02048e63          	beqz	s1,80001a98 <_ZN4_sem10unblockAllEv+0x5c>
        BlockedNode* node = head;

        head = head->next;
    80001a60:	0104b783          	ld	a5,16(s1)
    80001a64:	00f93423          	sd	a5,8(s2)

        node->status = -1;
    80001a68:	fff00793          	li	a5,-1
    80001a6c:	00f4a623          	sw	a5,12(s1)
        node->next = nullptr;
    80001a70:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    80001a74:	0004b503          	ld	a0,0(s1)
    80001a78:	fe0500e3          	beqz	a0,80001a58 <_ZN4_sem10unblockAllEv+0x1c>
            node->thread->setState(_thread::READY);
    80001a7c:	00100593          	li	a1,1
    80001a80:	00001097          	auipc	ra,0x1
    80001a84:	930080e7          	jalr	-1744(ra) # 800023b0 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001a88:	0004b503          	ld	a0,0(s1)
    80001a8c:	00001097          	auipc	ra,0x1
    80001a90:	b34080e7          	jalr	-1228(ra) # 800025c0 <_ZN9Scheduler3putEP7_thread>
    80001a94:	fc5ff06f          	j	80001a58 <_ZN4_sem10unblockAllEv+0x1c>
        }
    }

    tail = nullptr;
    80001a98:	00093823          	sd	zero,16(s2)
    80001a9c:	01813083          	ld	ra,24(sp)
    80001aa0:	01013403          	ld	s0,16(sp)
    80001aa4:	00813483          	ld	s1,8(sp)
    80001aa8:	00013903          	ld	s2,0(sp)
    80001aac:	02010113          	addi	sp,sp,32
    80001ab0:	00008067          	ret

0000000080001ab4 <_ZN4_sem5closeEv>:
    if (closed) {
    80001ab4:	00454783          	lbu	a5,4(a0)
    80001ab8:	02079c63          	bnez	a5,80001af0 <_ZN4_sem5closeEv+0x3c>
int _sem::close() {
    80001abc:	ff010113          	addi	sp,sp,-16
    80001ac0:	00113423          	sd	ra,8(sp)
    80001ac4:	00813023          	sd	s0,0(sp)
    80001ac8:	01010413          	addi	s0,sp,16
    closed = true;
    80001acc:	00100793          	li	a5,1
    80001ad0:	00f50223          	sb	a5,4(a0)
    unblockAll();
    80001ad4:	00000097          	auipc	ra,0x0
    80001ad8:	f68080e7          	jalr	-152(ra) # 80001a3c <_ZN4_sem10unblockAllEv>
    return 0;
    80001adc:	00000513          	li	a0,0
}
    80001ae0:	00813083          	ld	ra,8(sp)
    80001ae4:	00013403          	ld	s0,0(sp)
    80001ae8:	01010113          	addi	sp,sp,16
    80001aec:	00008067          	ret
        return -1;
    80001af0:	fff00513          	li	a0,-1
}
    80001af4:	00008067          	ret

0000000080001af8 <handleSupervisorTrap>:
#include "../lib/console.h"
#include "../test/printing.hpp"

extern "C" void handleSupervisorTrap(TrapFrame* frame);

extern "C" void handleSupervisorTrap(TrapFrame* frame) {
    80001af8:	fd010113          	addi	sp,sp,-48
    80001afc:	02113423          	sd	ra,40(sp)
    80001b00:	02813023          	sd	s0,32(sp)
    80001b04:	00913c23          	sd	s1,24(sp)
    80001b08:	01213823          	sd	s2,16(sp)
    80001b0c:	01313423          	sd	s3,8(sp)
    80001b10:	03010413          	addi	s0,sp,48
    80001b14:	00050493          	mv	s1,a0
    static const uint64 SSTATUS_SPIE = (1UL << 5);
    static const uint64 SSTATUS_SPP = (1UL << 8);

    static uint64 r_scause() {
        uint64 x;
        asm volatile("csrr %0, scause" : "=r"(x));//upis vrednosti scause u x
    80001b18:	14202973          	csrr	s2,scause
    uint64 scause = Riscv::r_scause();

    if (scause == 8 || scause == 9) {
    80001b1c:	ff890713          	addi	a4,s2,-8
    80001b20:	00100793          	li	a5,1
    80001b24:	02e7f863          	bgeu	a5,a4,80001b54 <handleSupervisorTrap+0x5c>

        frame->sepc += 4;
        return;
    }

    if (scause == 0x8000000000000001UL) {
    80001b28:	fff00793          	li	a5,-1
    80001b2c:	03f79793          	slli	a5,a5,0x3f
    80001b30:	00178793          	addi	a5,a5,1
    80001b34:	2cf90063          	beq	s2,a5,80001df4 <handleSupervisorTrap+0x2fc>
        Riscv::mc_sip(Riscv::SIP_SSIP);//birsanje pending bita
        return;
    }

    if (scause == 0x8000000000000009UL) {//spoljasnji hardverski prekid 9
    80001b38:	fff00793          	li	a5,-1
    80001b3c:	03f79793          	slli	a5,a5,0x3f
    80001b40:	00978793          	addi	a5,a5,9
    80001b44:	2af90e63          	beq	s2,a5,80001e00 <handleSupervisorTrap+0x308>
        console_handler();
        return;
    }
    if (scause == 2) { // illegal instruction
    80001b48:	00200793          	li	a5,2
    80001b4c:	2cf90063          	beq	s2,a5,80001e0c <handleSupervisorTrap+0x314>
        frame->sepc += 4;
        Riscv::w_sepc(frame->sepc);
        return;
    }

    while (true) {}
    80001b50:	0000006f          	j	80001b50 <handleSupervisorTrap+0x58>
        uint64 syscallCode = frame->a0;
    80001b54:	04053783          	ld	a5,64(a0)
        uint64 arg1 = frame->a1;
    80001b58:	04853903          	ld	s2,72(a0)
        uint64 arg2 = frame->a2;
    80001b5c:	05053503          	ld	a0,80(a0)
        uint64 arg3 = frame->a3;
    80001b60:	0584b583          	ld	a1,88(s1)
        uint64 arg4 = frame->a4;
    80001b64:	0604b603          	ld	a2,96(s1)
        switch (syscallCode) {
    80001b68:	04200713          	li	a4,66
    80001b6c:	26f76e63          	bltu	a4,a5,80001de8 <handleSupervisorTrap+0x2f0>
    80001b70:	00279793          	slli	a5,a5,0x2
    80001b74:	00007717          	auipc	a4,0x7
    80001b78:	4c470713          	addi	a4,a4,1220 # 80009038 <CONSOLE_STATUS+0x28>
    80001b7c:	00e787b3          	add	a5,a5,a4
    80001b80:	0007a783          	lw	a5,0(a5)
    80001b84:	00e787b3          	add	a5,a5,a4
    80001b88:	00078067          	jr	a5
                frame->a0 = (uint64)MemoryAllocator::getInstance().malloc((size_t)arg1);
    80001b8c:	00001097          	auipc	ra,0x1
    80001b90:	140080e7          	jalr	320(ra) # 80002ccc <_ZN15MemoryAllocator11getInstanceEv>
    80001b94:	00090593          	mv	a1,s2
    80001b98:	00001097          	auipc	ra,0x1
    80001b9c:	1b4080e7          	jalr	436(ra) # 80002d4c <_ZN15MemoryAllocator6mallocEm>
    80001ba0:	04a4b023          	sd	a0,64(s1)
        frame->sepc += 4;
    80001ba4:	0f04b783          	ld	a5,240(s1)
    80001ba8:	00478793          	addi	a5,a5,4
    80001bac:	0ef4b823          	sd	a5,240(s1)
    80001bb0:	02813083          	ld	ra,40(sp)
    80001bb4:	02013403          	ld	s0,32(sp)
    80001bb8:	01813483          	ld	s1,24(sp)
    80001bbc:	01013903          	ld	s2,16(sp)
    80001bc0:	00813983          	ld	s3,8(sp)
    80001bc4:	03010113          	addi	sp,sp,48
    80001bc8:	00008067          	ret
                frame->a0 = (uint64)MemoryAllocator::getInstance().free((void*)arg1);
    80001bcc:	00001097          	auipc	ra,0x1
    80001bd0:	100080e7          	jalr	256(ra) # 80002ccc <_ZN15MemoryAllocator11getInstanceEv>
    80001bd4:	00090593          	mv	a1,s2
    80001bd8:	00001097          	auipc	ra,0x1
    80001bdc:	2d0080e7          	jalr	720(ra) # 80002ea8 <_ZN15MemoryAllocator4freeEPv>
    80001be0:	04a4b023          	sd	a0,64(s1)
                break;
    80001be4:	fc1ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                if (handle == nullptr || body == nullptr || stackSpace == nullptr) {
    80001be8:	00090663          	beqz	s2,80001bf4 <handleSupervisorTrap+0xfc>
    80001bec:	00050463          	beqz	a0,80001bf4 <handleSupervisorTrap+0xfc>
    80001bf0:	00061863          	bnez	a2,80001c00 <handleSupervisorTrap+0x108>
                    frame->a0 = (uint64)-1;
    80001bf4:	fff00793          	li	a5,-1
    80001bf8:	04f4b023          	sd	a5,64(s1)
                    break;
    80001bfc:	fa9ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                _thread* thread = _thread::createThread(body, arg, stackSpace);
    80001c00:	00000097          	auipc	ra,0x0
    80001c04:	510080e7          	jalr	1296(ra) # 80002110 <_ZN7_thread12createThreadEPFvPvES0_S0_>
                if (thread == nullptr) {
    80001c08:	00050c63          	beqz	a0,80001c20 <handleSupervisorTrap+0x128>
                *handle = thread;//korisnik dobija rucku nove niti
    80001c0c:	00a93023          	sd	a0,0(s2)
                Scheduler::put(thread);
    80001c10:	00001097          	auipc	ra,0x1
    80001c14:	9b0080e7          	jalr	-1616(ra) # 800025c0 <_ZN9Scheduler3putEP7_thread>
                frame->a0 = 0;
    80001c18:	0404b023          	sd	zero,64(s1)
                break;
    80001c1c:	f89ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                    frame->a0 = (uint64)-1;
    80001c20:	fff00793          	li	a5,-1
    80001c24:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c28:	f7dff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                frame->sepc += 4;
    80001c2c:	0f04b783          	ld	a5,240(s1)
    80001c30:	00478793          	addi	a5,a5,4
    80001c34:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)_thread::exit();
    80001c38:	00000097          	auipc	ra,0x0
    80001c3c:	67c080e7          	jalr	1660(ra) # 800022b4 <_ZN7_thread4exitEv>
    80001c40:	04a4b023          	sd	a0,64(s1)
                return;
    80001c44:	f6dff06f          	j	80001bb0 <handleSupervisorTrap+0xb8>
                frame->sepc += 4;
    80001c48:	0f04b783          	ld	a5,240(s1)
    80001c4c:	00478793          	addi	a5,a5,4
    80001c50:	0ef4b823          	sd	a5,240(s1)
                _thread::dispatch();//nismo frame->a0 jer dispatch nema povratnu value
    80001c54:	00000097          	auipc	ra,0x0
    80001c58:	5b8080e7          	jalr	1464(ra) # 8000220c <_ZN7_thread8dispatchEv>
                return;
    80001c5c:	f55ff06f          	j	80001bb0 <handleSupervisorTrap+0xb8>
                _thread::setMaximumThreads(num);
    80001c60:	0009051b          	sext.w	a0,s2
    80001c64:	00000097          	auipc	ra,0x0
    80001c68:	784080e7          	jalr	1924(ra) # 800023e8 <_ZN7_thread17setMaximumThreadsEi>
                break;
    80001c6c:	f39ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)_thread::getThreadId();
    80001c70:	00000097          	auipc	ra,0x0
    80001c74:	578080e7          	jalr	1400(ra) # 800021e8 <_ZN7_thread11getThreadIdEv>
    80001c78:	04a4b023          	sd	a0,64(s1)
                frame->sepc += 4;
    80001c7c:	0f04b783          	ld	a5,240(s1)
    80001c80:	00478793          	addi	a5,a5,4
    80001c84:	0ef4b823          	sd	a5,240(s1)
                _thread::dispatch();
    80001c88:	00000097          	auipc	ra,0x0
    80001c8c:	584080e7          	jalr	1412(ra) # 8000220c <_ZN7_thread8dispatchEv>
                return;
    80001c90:	f21ff06f          	j	80001bb0 <handleSupervisorTrap+0xb8>
                unsigned init = (unsigned)arg2;
    80001c94:	0005051b          	sext.w	a0,a0
                if (handle == nullptr) {
    80001c98:	00091863          	bnez	s2,80001ca8 <handleSupervisorTrap+0x1b0>
                    frame->a0 = (uint64)-1;
    80001c9c:	fff00793          	li	a5,-1
    80001ca0:	04f4b023          	sd	a5,64(s1)
                    break;
    80001ca4:	f01ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                _sem* sem = _sem::createSemaphore(init);
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	acc080e7          	jalr	-1332(ra) # 80001774 <_ZN4_sem15createSemaphoreEj>
                if (sem == nullptr) {
    80001cb0:	00050863          	beqz	a0,80001cc0 <handleSupervisorTrap+0x1c8>
                *handle = sem;
    80001cb4:	00a93023          	sd	a0,0(s2)
                frame->a0 = 0;
    80001cb8:	0404b023          	sd	zero,64(s1)
                break;
    80001cbc:	ee9ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                    frame->a0 = (uint64)-1;
    80001cc0:	fff00793          	li	a5,-1
    80001cc4:	04f4b023          	sd	a5,64(s1)
                    break;
    80001cc8:	eddff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                if (sem == nullptr) {
    80001ccc:	00091863          	bnez	s2,80001cdc <handleSupervisorTrap+0x1e4>
                    frame->a0 = (uint64)-1;
    80001cd0:	fff00793          	li	a5,-1
    80001cd4:	04f4b023          	sd	a5,64(s1)
                    break;
    80001cd8:	ecdff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                int ret = sem->close();
    80001cdc:	00090513          	mv	a0,s2
    80001ce0:	00000097          	auipc	ra,0x0
    80001ce4:	dd4080e7          	jalr	-556(ra) # 80001ab4 <_ZN4_sem5closeEv>
    80001ce8:	00050993          	mv	s3,a0
                if (ret == 0) {
    80001cec:	00050663          	beqz	a0,80001cf8 <handleSupervisorTrap+0x200>
                frame->a0 = (uint64)ret;
    80001cf0:	0534b023          	sd	s3,64(s1)
                break;
    80001cf4:	eb1ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                    _sem::destroySemaphore(sem);
    80001cf8:	00090513          	mv	a0,s2
    80001cfc:	00000097          	auipc	ra,0x0
    80001d00:	acc080e7          	jalr	-1332(ra) # 800017c8 <_ZN4_sem16destroySemaphoreEPS_>
    80001d04:	fedff06f          	j	80001cf0 <handleSupervisorTrap+0x1f8>
                if (sem == nullptr) {
    80001d08:	00091863          	bnez	s2,80001d18 <handleSupervisorTrap+0x220>
                    frame->a0 = (uint64)-1;
    80001d0c:	fff00793          	li	a5,-1
    80001d10:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d14:	e91ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                frame->sepc += 4;
    80001d18:	0f04b783          	ld	a5,240(s1)
    80001d1c:	00478793          	addi	a5,a5,4
    80001d20:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->wait();
    80001d24:	00090513          	mv	a0,s2
    80001d28:	00000097          	auipc	ra,0x0
    80001d2c:	bd0080e7          	jalr	-1072(ra) # 800018f8 <_ZN4_sem4waitEv>
    80001d30:	04a4b023          	sd	a0,64(s1)
                return;
    80001d34:	e7dff06f          	j	80001bb0 <handleSupervisorTrap+0xb8>
                if (sem == nullptr) {
    80001d38:	00091863          	bnez	s2,80001d48 <handleSupervisorTrap+0x250>
                    frame->a0 = (uint64)-1;
    80001d3c:	fff00793          	li	a5,-1
    80001d40:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d44:	e61ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)sem->signal();
    80001d48:	00090513          	mv	a0,s2
    80001d4c:	00000097          	auipc	ra,0x0
    80001d50:	cc4080e7          	jalr	-828(ra) # 80001a10 <_ZN4_sem6signalEv>
    80001d54:	04a4b023          	sd	a0,64(s1)
                break;
    80001d58:	e4dff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                unsigned n = (unsigned)arg2;
    80001d5c:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001d60:	00091863          	bnez	s2,80001d70 <handleSupervisorTrap+0x278>
                    frame->a0 = (uint64)-1;
    80001d64:	fff00793          	li	a5,-1
    80001d68:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d6c:	e39ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                frame->sepc += 4;
    80001d70:	0f04b783          	ld	a5,240(s1)
    80001d74:	00478793          	addi	a5,a5,4
    80001d78:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->waitN(n);
    80001d7c:	00090513          	mv	a0,s2
    80001d80:	00000097          	auipc	ra,0x0
    80001d84:	ac0080e7          	jalr	-1344(ra) # 80001840 <_ZN4_sem5waitNEj>
    80001d88:	04a4b023          	sd	a0,64(s1)
                return;
    80001d8c:	e25ff06f          	j	80001bb0 <handleSupervisorTrap+0xb8>
                unsigned n = (unsigned)arg2;
    80001d90:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001d94:	00091863          	bnez	s2,80001da4 <handleSupervisorTrap+0x2ac>
                    frame->a0 = (uint64)-1;
    80001d98:	fff00793          	li	a5,-1
    80001d9c:	04f4b023          	sd	a5,64(s1)
                    break;
    80001da0:	e05ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)sem->signalN(n);
    80001da4:	00090513          	mv	a0,s2
    80001da8:	00000097          	auipc	ra,0x0
    80001dac:	c14080e7          	jalr	-1004(ra) # 800019bc <_ZN4_sem7signalNEj>
    80001db0:	04a4b023          	sd	a0,64(s1)
                break;
    80001db4:	df1ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)-1;
    80001db8:	fff00793          	li	a5,-1
    80001dbc:	04f4b023          	sd	a5,64(s1)
                break;
    80001dc0:	de5ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)__getc();
    80001dc4:	00007097          	auipc	ra,0x7
    80001dc8:	074080e7          	jalr	116(ra) # 80008e38 <__getc>
    80001dcc:	04a4b023          	sd	a0,64(s1)
                break;
    80001dd0:	dd5ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                __putc((char)arg1);
    80001dd4:	0ff97513          	andi	a0,s2,255
    80001dd8:	00007097          	auipc	ra,0x7
    80001ddc:	024080e7          	jalr	36(ra) # 80008dfc <__putc>
                frame->a0 = 0;
    80001de0:	0404b023          	sd	zero,64(s1)
                break;
    80001de4:	dc1ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)-1;
    80001de8:	fff00793          	li	a5,-1
    80001dec:	04f4b023          	sd	a5,64(s1)
                break;
    80001df0:	db5ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>

    static void mc_sstatus(uint64 mask) {
        asm volatile("csrc sstatus, %0" : : "r"(mask));//vrati prekide
    }
    static void mc_sip(uint64 mask) {
        asm volatile("csrc sip, %0" : : "r"(mask));
    80001df4:	00200793          	li	a5,2
    80001df8:	1447b073          	csrc	sip,a5
        return;
    80001dfc:	db5ff06f          	j	80001bb0 <handleSupervisorTrap+0xb8>
        console_handler();
    80001e00:	00007097          	auipc	ra,0x7
    80001e04:	070080e7          	jalr	112(ra) # 80008e70 <console_handler>
        return;
    80001e08:	da9ff06f          	j	80001bb0 <handleSupervisorTrap+0xb8>
        printString("ERROR, scause: ");
    80001e0c:	00007517          	auipc	a0,0x7
    80001e10:	21450513          	addi	a0,a0,532 # 80009020 <CONSOLE_STATUS+0x10>
    80001e14:	00004097          	auipc	ra,0x4
    80001e18:	b2c080e7          	jalr	-1236(ra) # 80005940 <_Z11printStringPKc>
        printInt(scause);
    80001e1c:	00000613          	li	a2,0
    80001e20:	00a00593          	li	a1,10
    80001e24:	0009051b          	sext.w	a0,s2
    80001e28:	00004097          	auipc	ra,0x4
    80001e2c:	cc8080e7          	jalr	-824(ra) # 80005af0 <_Z8printIntiii>
        printString(",sepc ");
    80001e30:	00007517          	auipc	a0,0x7
    80001e34:	20050513          	addi	a0,a0,512 # 80009030 <CONSOLE_STATUS+0x20>
    80001e38:	00004097          	auipc	ra,0x4
    80001e3c:	b08080e7          	jalr	-1272(ra) # 80005940 <_Z11printStringPKc>
        printInt(frame->sepc);
    80001e40:	00000613          	li	a2,0
    80001e44:	00a00593          	li	a1,10
    80001e48:	0f04a503          	lw	a0,240(s1)
    80001e4c:	00004097          	auipc	ra,0x4
    80001e50:	ca4080e7          	jalr	-860(ra) # 80005af0 <_Z8printIntiii>
        printString("\n");
    80001e54:	00007517          	auipc	a0,0x7
    80001e58:	46450513          	addi	a0,a0,1124 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80001e5c:	00004097          	auipc	ra,0x4
    80001e60:	ae4080e7          	jalr	-1308(ra) # 80005940 <_Z11printStringPKc>
        frame->sepc += 4;
    80001e64:	0f04b783          	ld	a5,240(s1)
    80001e68:	00478793          	addi	a5,a5,4
    80001e6c:	0ef4b823          	sd	a5,240(s1)
        asm volatile("csrw sepc, %0" : : "r"(x));//upis u sepc
    80001e70:	14179073          	csrw	sepc,a5
        return;
    80001e74:	d3dff06f          	j	80001bb0 <handleSupervisorTrap+0xb8>

0000000080001e78 <_ZL14blocksForBytesm>:
_thread* _thread::running = nullptr;
_sem* _thread::limitSem = nullptr;
int _thread::nextId = 0;
int _thread::numOfThreads = 5;

static size_t blocksForBytes(size_t bytes) {
    80001e78:	ff010113          	addi	sp,sp,-16
    80001e7c:	00813423          	sd	s0,8(sp)
    80001e80:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001e84:	03f50513          	addi	a0,a0,63
}
    80001e88:	00655513          	srli	a0,a0,0x6
    80001e8c:	00813403          	ld	s0,8(sp)
    80001e90:	01010113          	addi	sp,sp,16
    80001e94:	00008067          	ret

0000000080001e98 <_ZN7_thread13threadWrapperEv>:

uint64 _thread::getTimeSlice() const {
    return timeSlice;
}

void _thread::threadWrapper() {
    80001e98:	ff010113          	addi	sp,sp,-16
    80001e9c:	00113423          	sd	ra,8(sp)
    80001ea0:	00813023          	sd	s0,0(sp)
    80001ea4:	01010413          	addi	s0,sp,16
    if (limitSem != nullptr) {
    80001ea8:	0000a517          	auipc	a0,0xa
    80001eac:	eb853503          	ld	a0,-328(a0) # 8000bd60 <_ZN7_thread8limitSemE>
    80001eb0:	00050e63          	beqz	a0,80001ecc <_ZN7_thread13threadWrapperEv+0x34>
        limitSem->wait();
    80001eb4:	00000097          	auipc	ra,0x0
    80001eb8:	a44080e7          	jalr	-1468(ra) # 800018f8 <_ZN4_sem4waitEv>
        running->hasLimitPermit = true;
    80001ebc:	0000a797          	auipc	a5,0xa
    80001ec0:	eac7b783          	ld	a5,-340(a5) # 8000bd68 <_ZN7_thread7runningE>
    80001ec4:	00100713          	li	a4,1
    80001ec8:	0ae78223          	sb	a4,164(a5)
    }
    static void popSppSpie() {
        uint64 target;

        asm volatile("la %0, 1f" : "=r"(target));//skoci na adresu odmah posle sret-a, labela 1
    80001ecc:	0000a797          	auipc	a5,0xa
    80001ed0:	e147b783          	ld	a5,-492(a5) # 8000bce0 <_GLOBAL_OFFSET_TABLE_+0x8>

        asm volatile("csrw sepc, %0" : : "r"(target));
    80001ed4:	14179073          	csrw	sepc,a5
        asm volatile("csrc sstatus, %0" : : "r"(SSTATUS_SPP));//vrati se u user mode
    80001ed8:	10000793          	li	a5,256
    80001edc:	1007b073          	csrc	sstatus,a5
        asm volatile("csrs sstatus, %0" : : "r"(SSTATUS_SPIE));//enable prekide posle sret-a
    80001ee0:	02000793          	li	a5,32
    80001ee4:	1007a073          	csrs	sstatus,a5

        asm volatile(
            "sret\n"//sret menja rezim
            "1:\n"//procesor posle sret skoci ovde, da bi se vratio u threadWrapper
        );
    80001ee8:	10200073          	sret
    }
    Riscv::popSppSpie();


    if (running != nullptr && running->body != nullptr) {
    80001eec:	0000a797          	auipc	a5,0xa
    80001ef0:	e7c7b783          	ld	a5,-388(a5) # 8000bd68 <_ZN7_thread7runningE>
    80001ef4:	00078a63          	beqz	a5,80001f08 <_ZN7_thread13threadWrapperEv+0x70>
    80001ef8:	0007b703          	ld	a4,0(a5)
    80001efc:	00070663          	beqz	a4,80001f08 <_ZN7_thread13threadWrapperEv+0x70>
        running->body(running->arg);
    80001f00:	0087b503          	ld	a0,8(a5)
    80001f04:	000700e7          	jalr	a4
    }

    thread_exit();
    80001f08:	fffff097          	auipc	ra,0xfffff
    80001f0c:	440080e7          	jalr	1088(ra) # 80001348 <_Z11thread_exitv>
}
    80001f10:	00813083          	ld	ra,8(sp)
    80001f14:	00013403          	ld	s0,0(sp)
    80001f18:	01010113          	addi	sp,sp,16
    80001f1c:	00008067          	ret

0000000080001f20 <_ZN7_threadnwEm>:
void* _thread::operator new(size_t size) {
    80001f20:	fe010113          	addi	sp,sp,-32
    80001f24:	00113c23          	sd	ra,24(sp)
    80001f28:	00813823          	sd	s0,16(sp)
    80001f2c:	00913423          	sd	s1,8(sp)
    80001f30:	01213023          	sd	s2,0(sp)
    80001f34:	02010413          	addi	s0,sp,32
    80001f38:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001f3c:	00001097          	auipc	ra,0x1
    80001f40:	d90080e7          	jalr	-624(ra) # 80002ccc <_ZN15MemoryAllocator11getInstanceEv>
    80001f44:	00050493          	mv	s1,a0
    80001f48:	00090513          	mv	a0,s2
    80001f4c:	00000097          	auipc	ra,0x0
    80001f50:	f2c080e7          	jalr	-212(ra) # 80001e78 <_ZL14blocksForBytesm>
    80001f54:	00050593          	mv	a1,a0
    80001f58:	00048513          	mv	a0,s1
    80001f5c:	00001097          	auipc	ra,0x1
    80001f60:	df0080e7          	jalr	-528(ra) # 80002d4c <_ZN15MemoryAllocator6mallocEm>
}
    80001f64:	01813083          	ld	ra,24(sp)
    80001f68:	01013403          	ld	s0,16(sp)
    80001f6c:	00813483          	ld	s1,8(sp)
    80001f70:	00013903          	ld	s2,0(sp)
    80001f74:	02010113          	addi	sp,sp,32
    80001f78:	00008067          	ret

0000000080001f7c <_ZN7_threadnaEm>:
void* _thread::operator new[](size_t size) {
    80001f7c:	fe010113          	addi	sp,sp,-32
    80001f80:	00113c23          	sd	ra,24(sp)
    80001f84:	00813823          	sd	s0,16(sp)
    80001f88:	00913423          	sd	s1,8(sp)
    80001f8c:	01213023          	sd	s2,0(sp)
    80001f90:	02010413          	addi	s0,sp,32
    80001f94:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001f98:	00001097          	auipc	ra,0x1
    80001f9c:	d34080e7          	jalr	-716(ra) # 80002ccc <_ZN15MemoryAllocator11getInstanceEv>
    80001fa0:	00050493          	mv	s1,a0
    80001fa4:	00090513          	mv	a0,s2
    80001fa8:	00000097          	auipc	ra,0x0
    80001fac:	ed0080e7          	jalr	-304(ra) # 80001e78 <_ZL14blocksForBytesm>
    80001fb0:	00050593          	mv	a1,a0
    80001fb4:	00048513          	mv	a0,s1
    80001fb8:	00001097          	auipc	ra,0x1
    80001fbc:	d94080e7          	jalr	-620(ra) # 80002d4c <_ZN15MemoryAllocator6mallocEm>
}
    80001fc0:	01813083          	ld	ra,24(sp)
    80001fc4:	01013403          	ld	s0,16(sp)
    80001fc8:	00813483          	ld	s1,8(sp)
    80001fcc:	00013903          	ld	s2,0(sp)
    80001fd0:	02010113          	addi	sp,sp,32
    80001fd4:	00008067          	ret

0000000080001fd8 <_ZN7_threaddlEPv>:
    if (ptr == nullptr) {
    80001fd8:	04050263          	beqz	a0,8000201c <_ZN7_threaddlEPv+0x44>
void _thread::operator delete(void* ptr) {
    80001fdc:	fe010113          	addi	sp,sp,-32
    80001fe0:	00113c23          	sd	ra,24(sp)
    80001fe4:	00813823          	sd	s0,16(sp)
    80001fe8:	00913423          	sd	s1,8(sp)
    80001fec:	02010413          	addi	s0,sp,32
    80001ff0:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance().free(ptr);
    80001ff4:	00001097          	auipc	ra,0x1
    80001ff8:	cd8080e7          	jalr	-808(ra) # 80002ccc <_ZN15MemoryAllocator11getInstanceEv>
    80001ffc:	00048593          	mv	a1,s1
    80002000:	00001097          	auipc	ra,0x1
    80002004:	ea8080e7          	jalr	-344(ra) # 80002ea8 <_ZN15MemoryAllocator4freeEPv>
}
    80002008:	01813083          	ld	ra,24(sp)
    8000200c:	01013403          	ld	s0,16(sp)
    80002010:	00813483          	ld	s1,8(sp)
    80002014:	02010113          	addi	sp,sp,32
    80002018:	00008067          	ret
    8000201c:	00008067          	ret

0000000080002020 <_ZN7_threaddaEPv>:
    if (ptr == nullptr) {
    80002020:	04050263          	beqz	a0,80002064 <_ZN7_threaddaEPv+0x44>
void _thread::operator delete[](void* ptr) {
    80002024:	fe010113          	addi	sp,sp,-32
    80002028:	00113c23          	sd	ra,24(sp)
    8000202c:	00813823          	sd	s0,16(sp)
    80002030:	00913423          	sd	s1,8(sp)
    80002034:	02010413          	addi	s0,sp,32
    80002038:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance().free(ptr);
    8000203c:	00001097          	auipc	ra,0x1
    80002040:	c90080e7          	jalr	-880(ra) # 80002ccc <_ZN15MemoryAllocator11getInstanceEv>
    80002044:	00048593          	mv	a1,s1
    80002048:	00001097          	auipc	ra,0x1
    8000204c:	e60080e7          	jalr	-416(ra) # 80002ea8 <_ZN15MemoryAllocator4freeEPv>
}
    80002050:	01813083          	ld	ra,24(sp)
    80002054:	01013403          	ld	s0,16(sp)
    80002058:	00813483          	ld	s1,8(sp)
    8000205c:	02010113          	addi	sp,sp,32
    80002060:	00008067          	ret
    80002064:	00008067          	ret

0000000080002068 <_ZN7_threadC1EPFvPvES0_S0_>:
_thread::_thread(Body body, void* arg, void* stackSpace) {
    80002068:	ff010113          	addi	sp,sp,-16
    8000206c:	00813423          	sd	s0,8(sp)
    80002070:	01010413          	addi	s0,sp,16
    this->body = body;
    80002074:	00b53023          	sd	a1,0(a0)
    this->arg = arg;
    80002078:	00c53423          	sd	a2,8(a0)
    if (stackSpace != nullptr) {
    8000207c:	08068463          	beqz	a3,80002104 <_ZN7_threadC1EPFvPvES0_S0_+0x9c>
        this->stack = (void*)((uint64)stackSpace - DEFAULT_STACK_SIZE);
    80002080:	fffff7b7          	lui	a5,0xfffff
    80002084:	00f687b3          	add	a5,a3,a5
    80002088:	00f53823          	sd	a5,16(a0)
        this->context.sp = (uint64)stackSpace;
    8000208c:	02d53023          	sd	a3,32(a0)
    this->context.s0 = 0;
    80002090:	02053423          	sd	zero,40(a0)
    this->context.s1 = 0;
    80002094:	02053823          	sd	zero,48(a0)
    this->context.s2 = 0;
    80002098:	02053c23          	sd	zero,56(a0)
    this->context.s3 = 0;
    8000209c:	04053023          	sd	zero,64(a0)
    this->context.s4 = 0;
    800020a0:	04053423          	sd	zero,72(a0)
    this->context.s5 = 0;
    800020a4:	04053823          	sd	zero,80(a0)
    this->context.s6 = 0;
    800020a8:	04053c23          	sd	zero,88(a0)
    this->context.s7 = 0;
    800020ac:	06053023          	sd	zero,96(a0)
    this->context.s8 = 0;
    800020b0:	06053423          	sd	zero,104(a0)
    this->context.s9 = 0;
    800020b4:	06053823          	sd	zero,112(a0)
    this->context.s10 = 0;
    800020b8:	06053c23          	sd	zero,120(a0)
    this->context.s11 = 0;
    800020bc:	08053023          	sd	zero,128(a0)
    this->context.ra = (uint64)&_thread::threadWrapper;//nit nigde nije radila pa upisujemo povratnu adresu
    800020c0:	00000797          	auipc	a5,0x0
    800020c4:	dd878793          	addi	a5,a5,-552 # 80001e98 <_ZN7_thread13threadWrapperEv>
    800020c8:	00f53c23          	sd	a5,24(a0)
    this->timeSlice = DEFAULT_TIME_SLICE;
    800020cc:	00200793          	li	a5,2
    800020d0:	08f53423          	sd	a5,136(a0)
    this->state = CREATED;//nakon ovoga u trap.cpp radimo ready
    800020d4:	08052823          	sw	zero,144(a0)
    this->next = nullptr;
    800020d8:	08053c23          	sd	zero,152(a0)
    this->id = nextId++;
    800020dc:	0000a717          	auipc	a4,0xa
    800020e0:	c8470713          	addi	a4,a4,-892 # 8000bd60 <_ZN7_thread8limitSemE>
    800020e4:	01072783          	lw	a5,16(a4)
    800020e8:	0017869b          	addiw	a3,a5,1
    800020ec:	00d72823          	sw	a3,16(a4)
    800020f0:	0af52023          	sw	a5,160(a0)
    this->hasLimitPermit = false;
    800020f4:	0a050223          	sb	zero,164(a0)
}
    800020f8:	00813403          	ld	s0,8(sp)
    800020fc:	01010113          	addi	sp,sp,16
    80002100:	00008067          	ret
        this->stack = nullptr;
    80002104:	00053823          	sd	zero,16(a0)
        this->context.sp = 0;
    80002108:	02053023          	sd	zero,32(a0)
    8000210c:	f85ff06f          	j	80002090 <_ZN7_threadC1EPFvPvES0_S0_+0x28>

0000000080002110 <_ZN7_thread12createThreadEPFvPvES0_S0_>:
_thread* _thread::createThread(Body body, void* arg, void* stackSpace) {
    80002110:	fd010113          	addi	sp,sp,-48
    80002114:	02113423          	sd	ra,40(sp)
    80002118:	02813023          	sd	s0,32(sp)
    8000211c:	00913c23          	sd	s1,24(sp)
    80002120:	01213823          	sd	s2,16(sp)
    80002124:	01313423          	sd	s3,8(sp)
    80002128:	01413023          	sd	s4,0(sp)
    8000212c:	03010413          	addi	s0,sp,48
    80002130:	00050913          	mv	s2,a0
    80002134:	00058993          	mv	s3,a1
    80002138:	00060a13          	mv	s4,a2
    return new _thread(body, arg, stackSpace);
    8000213c:	0a800513          	li	a0,168
    80002140:	00000097          	auipc	ra,0x0
    80002144:	de0080e7          	jalr	-544(ra) # 80001f20 <_ZN7_threadnwEm>
    80002148:	00050493          	mv	s1,a0
    8000214c:	000a0693          	mv	a3,s4
    80002150:	00098613          	mv	a2,s3
    80002154:	00090593          	mv	a1,s2
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	f10080e7          	jalr	-240(ra) # 80002068 <_ZN7_threadC1EPFvPvES0_S0_>
}
    80002160:	00048513          	mv	a0,s1
    80002164:	02813083          	ld	ra,40(sp)
    80002168:	02013403          	ld	s0,32(sp)
    8000216c:	01813483          	ld	s1,24(sp)
    80002170:	01013903          	ld	s2,16(sp)
    80002174:	00813983          	ld	s3,8(sp)
    80002178:	00013a03          	ld	s4,0(sp)
    8000217c:	03010113          	addi	sp,sp,48
    80002180:	00008067          	ret

0000000080002184 <_ZN7_thread13destroyThreadEPS_>:
    if (thread == nullptr) {
    80002184:	04050e63          	beqz	a0,800021e0 <_ZN7_thread13destroyThreadEPS_+0x5c>
int _thread::destroyThread(_thread* thread) {
    80002188:	fe010113          	addi	sp,sp,-32
    8000218c:	00113c23          	sd	ra,24(sp)
    80002190:	00813823          	sd	s0,16(sp)
    80002194:	00913423          	sd	s1,8(sp)
    80002198:	02010413          	addi	s0,sp,32
    8000219c:	00050493          	mv	s1,a0
    if (thread->stack != nullptr) {
    800021a0:	01053783          	ld	a5,16(a0)
    800021a4:	00078c63          	beqz	a5,800021bc <_ZN7_thread13destroyThreadEPS_+0x38>
        MemoryAllocator::getInstance().free(thread->stack);
    800021a8:	00001097          	auipc	ra,0x1
    800021ac:	b24080e7          	jalr	-1244(ra) # 80002ccc <_ZN15MemoryAllocator11getInstanceEv>
    800021b0:	0104b583          	ld	a1,16(s1)
    800021b4:	00001097          	auipc	ra,0x1
    800021b8:	cf4080e7          	jalr	-780(ra) # 80002ea8 <_ZN15MemoryAllocator4freeEPv>
    delete thread;
    800021bc:	00048513          	mv	a0,s1
    800021c0:	00000097          	auipc	ra,0x0
    800021c4:	e18080e7          	jalr	-488(ra) # 80001fd8 <_ZN7_threaddlEPv>
    return 0;
    800021c8:	00000513          	li	a0,0
}
    800021cc:	01813083          	ld	ra,24(sp)
    800021d0:	01013403          	ld	s0,16(sp)
    800021d4:	00813483          	ld	s1,8(sp)
    800021d8:	02010113          	addi	sp,sp,32
    800021dc:	00008067          	ret
        return -1;
    800021e0:	fff00513          	li	a0,-1
}
    800021e4:	00008067          	ret

00000000800021e8 <_ZN7_thread11getThreadIdEv>:
int _thread::getThreadId() {
    800021e8:	ff010113          	addi	sp,sp,-16
    800021ec:	00813423          	sd	s0,8(sp)
    800021f0:	01010413          	addi	s0,sp,16
}
    800021f4:	0000a797          	auipc	a5,0xa
    800021f8:	b747b783          	ld	a5,-1164(a5) # 8000bd68 <_ZN7_thread7runningE>
    800021fc:	0a07a503          	lw	a0,160(a5)
    80002200:	00813403          	ld	s0,8(sp)
    80002204:	01010113          	addi	sp,sp,16
    80002208:	00008067          	ret

000000008000220c <_ZN7_thread8dispatchEv>:
void _thread::dispatch() {
    8000220c:	fe010113          	addi	sp,sp,-32
    80002210:	00113c23          	sd	ra,24(sp)
    80002214:	00813823          	sd	s0,16(sp)
    80002218:	00913423          	sd	s1,8(sp)
    8000221c:	02010413          	addi	s0,sp,32
    _thread* old = running;
    80002220:	0000a497          	auipc	s1,0xa
    80002224:	b484b483          	ld	s1,-1208(s1) # 8000bd68 <_ZN7_thread7runningE>
    if (old != nullptr && old->state != FINISHED && old->state != BLOCKED) {
    80002228:	00048c63          	beqz	s1,80002240 <_ZN7_thread8dispatchEv+0x34>
    8000222c:	0904a783          	lw	a5,144(s1)
    80002230:	00400713          	li	a4,4
    80002234:	00e78663          	beq	a5,a4,80002240 <_ZN7_thread8dispatchEv+0x34>
    80002238:	00300713          	li	a4,3
    8000223c:	04e79663          	bne	a5,a4,80002288 <_ZN7_thread8dispatchEv+0x7c>
    _thread* next = Scheduler::get();
    80002240:	00000097          	auipc	ra,0x0
    80002244:	3ec080e7          	jalr	1004(ra) # 8000262c <_ZN9Scheduler3getEv>
    if (next == nullptr) {
    80002248:	04050863          	beqz	a0,80002298 <_ZN7_thread8dispatchEv+0x8c>
    running = next;
    8000224c:	0000a797          	auipc	a5,0xa
    80002250:	b0a7be23          	sd	a0,-1252(a5) # 8000bd68 <_ZN7_thread7runningE>
    running->state = RUNNING;
    80002254:	00200793          	li	a5,2
    80002258:	08f52823          	sw	a5,144(a0)
    if (old != nullptr && old != running) {//ako je scheduler vratio istu nit ne treba contextswitch
    8000225c:	00048c63          	beqz	s1,80002274 <_ZN7_thread8dispatchEv+0x68>
    80002260:	00a48a63          	beq	s1,a0,80002274 <_ZN7_thread8dispatchEv+0x68>
        contextSwitch(&old->context, &running->context);
    80002264:	01850593          	addi	a1,a0,24
    80002268:	01848513          	addi	a0,s1,24
    8000226c:	fffff097          	auipc	ra,0xfffff
    80002270:	ec4080e7          	jalr	-316(ra) # 80001130 <contextSwitch>
}
    80002274:	01813083          	ld	ra,24(sp)
    80002278:	01013403          	ld	s0,16(sp)
    8000227c:	00813483          	ld	s1,8(sp)
    80002280:	02010113          	addi	sp,sp,32
    80002284:	00008067          	ret
        Scheduler::put(old);
    80002288:	00048513          	mv	a0,s1
    8000228c:	00000097          	auipc	ra,0x0
    80002290:	334080e7          	jalr	820(ra) # 800025c0 <_ZN9Scheduler3putEP7_thread>
    80002294:	fadff06f          	j	80002240 <_ZN7_thread8dispatchEv+0x34>
        if (old != nullptr && old->state == RUNNING) {
    80002298:	fc048ee3          	beqz	s1,80002274 <_ZN7_thread8dispatchEv+0x68>
    8000229c:	0904a703          	lw	a4,144(s1)
    800022a0:	00200793          	li	a5,2
    800022a4:	fcf718e3          	bne	a4,a5,80002274 <_ZN7_thread8dispatchEv+0x68>
            running = old;
    800022a8:	0000a797          	auipc	a5,0xa
    800022ac:	ac97b023          	sd	s1,-1344(a5) # 8000bd68 <_ZN7_thread7runningE>
        return;
    800022b0:	fc5ff06f          	j	80002274 <_ZN7_thread8dispatchEv+0x68>

00000000800022b4 <_ZN7_thread4exitEv>:
    if (running == nullptr) {
    800022b4:	0000a797          	auipc	a5,0xa
    800022b8:	ab47b783          	ld	a5,-1356(a5) # 8000bd68 <_ZN7_thread7runningE>
    800022bc:	06078063          	beqz	a5,8000231c <_ZN7_thread4exitEv+0x68>
int _thread::exit() {
    800022c0:	ff010113          	addi	sp,sp,-16
    800022c4:	00113423          	sd	ra,8(sp)
    800022c8:	00813023          	sd	s0,0(sp)
    800022cc:	01010413          	addi	s0,sp,16
    if (running->hasLimitPermit && limitSem != nullptr) {
    800022d0:	0a47c703          	lbu	a4,164(a5)
    800022d4:	00070e63          	beqz	a4,800022f0 <_ZN7_thread4exitEv+0x3c>
    800022d8:	0000a517          	auipc	a0,0xa
    800022dc:	a8853503          	ld	a0,-1400(a0) # 8000bd60 <_ZN7_thread8limitSemE>
    800022e0:	00050863          	beqz	a0,800022f0 <_ZN7_thread4exitEv+0x3c>
        running->hasLimitPermit = false;
    800022e4:	0a078223          	sb	zero,164(a5)
        limitSem->signal();
    800022e8:	fffff097          	auipc	ra,0xfffff
    800022ec:	728080e7          	jalr	1832(ra) # 80001a10 <_ZN4_sem6signalEv>
    running->state = FINISHED;
    800022f0:	0000a797          	auipc	a5,0xa
    800022f4:	a787b783          	ld	a5,-1416(a5) # 8000bd68 <_ZN7_thread7runningE>
    800022f8:	00400713          	li	a4,4
    800022fc:	08e7a823          	sw	a4,144(a5)
    dispatch();
    80002300:	00000097          	auipc	ra,0x0
    80002304:	f0c080e7          	jalr	-244(ra) # 8000220c <_ZN7_thread8dispatchEv>
    return 0;
    80002308:	00000513          	li	a0,0
}
    8000230c:	00813083          	ld	ra,8(sp)
    80002310:	00013403          	ld	s0,0(sp)
    80002314:	01010113          	addi	sp,sp,16
    80002318:	00008067          	ret
        return -1;
    8000231c:	fff00513          	li	a0,-1
}
    80002320:	00008067          	ret

0000000080002324 <_ZNK7_thread7getBodyEv>:
_thread::Body _thread::getBody() const {
    80002324:	ff010113          	addi	sp,sp,-16
    80002328:	00813423          	sd	s0,8(sp)
    8000232c:	01010413          	addi	s0,sp,16
}
    80002330:	00053503          	ld	a0,0(a0)
    80002334:	00813403          	ld	s0,8(sp)
    80002338:	01010113          	addi	sp,sp,16
    8000233c:	00008067          	ret

0000000080002340 <_ZNK7_thread6getArgEv>:
void* _thread::getArg() const {
    80002340:	ff010113          	addi	sp,sp,-16
    80002344:	00813423          	sd	s0,8(sp)
    80002348:	01010413          	addi	s0,sp,16
}
    8000234c:	00853503          	ld	a0,8(a0)
    80002350:	00813403          	ld	s0,8(sp)
    80002354:	01010113          	addi	sp,sp,16
    80002358:	00008067          	ret

000000008000235c <_ZNK7_thread8getStackEv>:
void* _thread::getStack() const {
    8000235c:	ff010113          	addi	sp,sp,-16
    80002360:	00813423          	sd	s0,8(sp)
    80002364:	01010413          	addi	s0,sp,16
}
    80002368:	01053503          	ld	a0,16(a0)
    8000236c:	00813403          	ld	s0,8(sp)
    80002370:	01010113          	addi	sp,sp,16
    80002374:	00008067          	ret

0000000080002378 <_ZN7_thread10getContextEv>:
_thread::Context* _thread::getContext() {
    80002378:	ff010113          	addi	sp,sp,-16
    8000237c:	00813423          	sd	s0,8(sp)
    80002380:	01010413          	addi	s0,sp,16
}
    80002384:	01850513          	addi	a0,a0,24
    80002388:	00813403          	ld	s0,8(sp)
    8000238c:	01010113          	addi	sp,sp,16
    80002390:	00008067          	ret

0000000080002394 <_ZNK7_thread8getStateEv>:
_thread::State _thread::getState() const {
    80002394:	ff010113          	addi	sp,sp,-16
    80002398:	00813423          	sd	s0,8(sp)
    8000239c:	01010413          	addi	s0,sp,16
}
    800023a0:	09052503          	lw	a0,144(a0)
    800023a4:	00813403          	ld	s0,8(sp)
    800023a8:	01010113          	addi	sp,sp,16
    800023ac:	00008067          	ret

00000000800023b0 <_ZN7_thread8setStateENS_5StateE>:
void _thread::setState(State state) {
    800023b0:	ff010113          	addi	sp,sp,-16
    800023b4:	00813423          	sd	s0,8(sp)
    800023b8:	01010413          	addi	s0,sp,16
    this->state = state;
    800023bc:	08b52823          	sw	a1,144(a0)
}
    800023c0:	00813403          	ld	s0,8(sp)
    800023c4:	01010113          	addi	sp,sp,16
    800023c8:	00008067          	ret

00000000800023cc <_ZNK7_thread12getTimeSliceEv>:
uint64 _thread::getTimeSlice() const {
    800023cc:	ff010113          	addi	sp,sp,-16
    800023d0:	00813423          	sd	s0,8(sp)
    800023d4:	01010413          	addi	s0,sp,16
}
    800023d8:	08853503          	ld	a0,136(a0)
    800023dc:	00813403          	ld	s0,8(sp)
    800023e0:	01010113          	addi	sp,sp,16
    800023e4:	00008067          	ret

00000000800023e8 <_ZN7_thread17setMaximumThreadsEi>:

void _thread::setMaximumThreads(int num) {
    800023e8:	ff010113          	addi	sp,sp,-16
    800023ec:	00113423          	sd	ra,8(sp)
    800023f0:	00813023          	sd	s0,0(sp)
    800023f4:	01010413          	addi	s0,sp,16
    numOfThreads = num;
    800023f8:	00009797          	auipc	a5,0x9
    800023fc:	68a7a423          	sw	a0,1672(a5) # 8000ba80 <_ZN7_thread12numOfThreadsE>
    if (limitSem != nullptr) {
    80002400:	0000a517          	auipc	a0,0xa
    80002404:	96053503          	ld	a0,-1696(a0) # 8000bd60 <_ZN7_thread8limitSemE>
    80002408:	00050e63          	beqz	a0,80002424 <_ZN7_thread17setMaximumThreadsEi+0x3c>
        limitSem->close();
    8000240c:	fffff097          	auipc	ra,0xfffff
    80002410:	6a8080e7          	jalr	1704(ra) # 80001ab4 <_ZN4_sem5closeEv>
        _sem::destroySemaphore(limitSem);
    80002414:	0000a517          	auipc	a0,0xa
    80002418:	94c53503          	ld	a0,-1716(a0) # 8000bd60 <_ZN7_thread8limitSemE>
    8000241c:	fffff097          	auipc	ra,0xfffff
    80002420:	3ac080e7          	jalr	940(ra) # 800017c8 <_ZN4_sem16destroySemaphoreEPS_>
    }
    limitSem = _sem::createSemaphore(numOfThreads);
    80002424:	00009517          	auipc	a0,0x9
    80002428:	65c52503          	lw	a0,1628(a0) # 8000ba80 <_ZN7_thread12numOfThreadsE>
    8000242c:	fffff097          	auipc	ra,0xfffff
    80002430:	348080e7          	jalr	840(ra) # 80001774 <_ZN4_sem15createSemaphoreEj>
    80002434:	0000a797          	auipc	a5,0xa
    80002438:	92a7b623          	sd	a0,-1748(a5) # 8000bd60 <_ZN7_thread8limitSemE>
}
    8000243c:	00813083          	ld	ra,8(sp)
    80002440:	00013403          	ld	s0,0(sp)
    80002444:	01010113          	addi	sp,sp,16
    80002448:	00008067          	ret

000000008000244c <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    8000244c:	fe010113          	addi	sp,sp,-32
    80002450:	00113c23          	sd	ra,24(sp)
    80002454:	00813823          	sd	s0,16(sp)
    80002458:	00913423          	sd	s1,8(sp)
    8000245c:	01213023          	sd	s2,0(sp)
    80002460:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80002464:	00007517          	auipc	a0,0x7
    80002468:	ce450513          	addi	a0,a0,-796 # 80009148 <CONSOLE_STATUS+0x138>
    8000246c:	00003097          	auipc	ra,0x3
    80002470:	4d4080e7          	jalr	1236(ra) # 80005940 <_Z11printStringPKc>
    int test = getc() - '0';
    80002474:	fffff097          	auipc	ra,0xfffff
    80002478:	198080e7          	jalr	408(ra) # 8000160c <_Z4getcv>
    8000247c:	00050913          	mv	s2,a0
    80002480:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80002484:	fffff097          	auipc	ra,0xfffff
    80002488:	188080e7          	jalr	392(ra) # 8000160c <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    8000248c:	fcb9091b          	addiw	s2,s2,-53
    80002490:	00100793          	li	a5,1
    80002494:	0327f463          	bgeu	a5,s2,800024bc <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80002498:	00800793          	li	a5,8
    8000249c:	1097e863          	bltu	a5,s1,800025ac <_Z8userMainv+0x160>
    800024a0:	00249493          	slli	s1,s1,0x2
    800024a4:	00007717          	auipc	a4,0x7
    800024a8:	ebc70713          	addi	a4,a4,-324 # 80009360 <CONSOLE_STATUS+0x350>
    800024ac:	00e484b3          	add	s1,s1,a4
    800024b0:	0004a783          	lw	a5,0(s1)
    800024b4:	00e787b3          	add	a5,a5,a4
    800024b8:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800024bc:	00007517          	auipc	a0,0x7
    800024c0:	cac50513          	addi	a0,a0,-852 # 80009168 <CONSOLE_STATUS+0x158>
    800024c4:	00003097          	auipc	ra,0x3
    800024c8:	47c080e7          	jalr	1148(ra) # 80005940 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800024cc:	01813083          	ld	ra,24(sp)
    800024d0:	01013403          	ld	s0,16(sp)
    800024d4:	00813483          	ld	s1,8(sp)
    800024d8:	00013903          	ld	s2,0(sp)
    800024dc:	02010113          	addi	sp,sp,32
    800024e0:	00008067          	ret
            Threads_C_API_test();
    800024e4:	00003097          	auipc	ra,0x3
    800024e8:	ad4080e7          	jalr	-1324(ra) # 80004fb8 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800024ec:	00007517          	auipc	a0,0x7
    800024f0:	cac50513          	addi	a0,a0,-852 # 80009198 <CONSOLE_STATUS+0x188>
    800024f4:	00003097          	auipc	ra,0x3
    800024f8:	44c080e7          	jalr	1100(ra) # 80005940 <_Z11printStringPKc>
            break;
    800024fc:	fd1ff06f          	j	800024cc <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80002500:	00002097          	auipc	ra,0x2
    80002504:	998080e7          	jalr	-1640(ra) # 80003e98 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80002508:	00007517          	auipc	a0,0x7
    8000250c:	cd050513          	addi	a0,a0,-816 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80002510:	00003097          	auipc	ra,0x3
    80002514:	430080e7          	jalr	1072(ra) # 80005940 <_Z11printStringPKc>
            break;
    80002518:	fb5ff06f          	j	800024cc <_Z8userMainv+0x80>
            producerConsumer_C_API();
    8000251c:	00001097          	auipc	ra,0x1
    80002520:	1d0080e7          	jalr	464(ra) # 800036ec <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80002524:	00007517          	auipc	a0,0x7
    80002528:	cf450513          	addi	a0,a0,-780 # 80009218 <CONSOLE_STATUS+0x208>
    8000252c:	00003097          	auipc	ra,0x3
    80002530:	414080e7          	jalr	1044(ra) # 80005940 <_Z11printStringPKc>
            break;
    80002534:	f99ff06f          	j	800024cc <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80002538:	00003097          	auipc	ra,0x3
    8000253c:	dc4080e7          	jalr	-572(ra) # 800052fc <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80002540:	00007517          	auipc	a0,0x7
    80002544:	d2850513          	addi	a0,a0,-728 # 80009268 <CONSOLE_STATUS+0x258>
    80002548:	00003097          	auipc	ra,0x3
    8000254c:	3f8080e7          	jalr	1016(ra) # 80005940 <_Z11printStringPKc>
            break;
    80002550:	f7dff06f          	j	800024cc <_Z8userMainv+0x80>
            System_Mode_test();
    80002554:	00004097          	auipc	ra,0x4
    80002558:	3d0080e7          	jalr	976(ra) # 80006924 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    8000255c:	00007517          	auipc	a0,0x7
    80002560:	d6450513          	addi	a0,a0,-668 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80002564:	00003097          	auipc	ra,0x3
    80002568:	3dc080e7          	jalr	988(ra) # 80005940 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    8000256c:	00007517          	auipc	a0,0x7
    80002570:	d7450513          	addi	a0,a0,-652 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80002574:	00003097          	auipc	ra,0x3
    80002578:	3cc080e7          	jalr	972(ra) # 80005940 <_Z11printStringPKc>
            break;
    8000257c:	f51ff06f          	j	800024cc <_Z8userMainv+0x80>
            mod();
    80002580:	00001097          	auipc	ra,0x1
    80002584:	ac8080e7          	jalr	-1336(ra) # 80003048 <_Z3modv>
            printString("Test se nije uspesno zavrsio\n");
    80002588:	00007517          	auipc	a0,0x7
    8000258c:	d3850513          	addi	a0,a0,-712 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80002590:	00003097          	auipc	ra,0x3
    80002594:	3b0080e7          	jalr	944(ra) # 80005940 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80002598:	00007517          	auipc	a0,0x7
    8000259c:	d4850513          	addi	a0,a0,-696 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800025a0:	00003097          	auipc	ra,0x3
    800025a4:	3a0080e7          	jalr	928(ra) # 80005940 <_Z11printStringPKc>
            break;
    800025a8:	f25ff06f          	j	800024cc <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800025ac:	00007517          	auipc	a0,0x7
    800025b0:	d8c50513          	addi	a0,a0,-628 # 80009338 <CONSOLE_STATUS+0x328>
    800025b4:	00003097          	auipc	ra,0x3
    800025b8:	38c080e7          	jalr	908(ra) # 80005940 <_Z11printStringPKc>
    800025bc:	f11ff06f          	j	800024cc <_Z8userMainv+0x80>

00000000800025c0 <_ZN9Scheduler3putEP7_thread>:
#include "../h/Thread.hpp"

_thread* Scheduler::head = nullptr;
_thread* Scheduler::tail = nullptr;

void Scheduler::put(_thread* thread) {
    800025c0:	ff010113          	addi	sp,sp,-16
    800025c4:	00813423          	sd	s0,8(sp)
    800025c8:	01010413          	addi	s0,sp,16
    if (thread == nullptr) {
    800025cc:	04050063          	beqz	a0,8000260c <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    if (thread->state == _thread::FINISHED || thread->state == _thread::BLOCKED) {
    800025d0:	09052783          	lw	a5,144(a0)
    800025d4:	ffd7879b          	addiw	a5,a5,-3
    800025d8:	00100713          	li	a4,1
    800025dc:	02f77863          	bgeu	a4,a5,8000260c <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    thread->state = _thread::READY;
    800025e0:	00100793          	li	a5,1
    800025e4:	08f52823          	sw	a5,144(a0)
    thread->next = nullptr;
    800025e8:	08053c23          	sd	zero,152(a0)

    if (head == nullptr) {
    800025ec:	00009797          	auipc	a5,0x9
    800025f0:	78c7b783          	ld	a5,1932(a5) # 8000bd78 <_ZN9Scheduler4headE>
    800025f4:	02078263          	beqz	a5,80002618 <_ZN9Scheduler3putEP7_thread+0x58>
        head = thread;
        tail = thread;
    } else {
        tail->next = thread;
    800025f8:	00009797          	auipc	a5,0x9
    800025fc:	78078793          	addi	a5,a5,1920 # 8000bd78 <_ZN9Scheduler4headE>
    80002600:	0087b703          	ld	a4,8(a5)
    80002604:	08a73c23          	sd	a0,152(a4)
        tail = thread;
    80002608:	00a7b423          	sd	a0,8(a5)
    }
}
    8000260c:	00813403          	ld	s0,8(sp)
    80002610:	01010113          	addi	sp,sp,16
    80002614:	00008067          	ret
        head = thread;
    80002618:	00009797          	auipc	a5,0x9
    8000261c:	76078793          	addi	a5,a5,1888 # 8000bd78 <_ZN9Scheduler4headE>
    80002620:	00a7b023          	sd	a0,0(a5)
        tail = thread;
    80002624:	00a7b423          	sd	a0,8(a5)
    80002628:	fe5ff06f          	j	8000260c <_ZN9Scheduler3putEP7_thread+0x4c>

000000008000262c <_ZN9Scheduler3getEv>:

_thread* Scheduler::get() {
    8000262c:	ff010113          	addi	sp,sp,-16
    80002630:	00813423          	sd	s0,8(sp)
    80002634:	01010413          	addi	s0,sp,16
    if (head == nullptr) {
    80002638:	00009517          	auipc	a0,0x9
    8000263c:	74053503          	ld	a0,1856(a0) # 8000bd78 <_ZN9Scheduler4headE>
    80002640:	00050c63          	beqz	a0,80002658 <_ZN9Scheduler3getEv+0x2c>
        return nullptr;
    }

    _thread* thread = head;

    head = head->next;
    80002644:	09853783          	ld	a5,152(a0)
    80002648:	00009717          	auipc	a4,0x9
    8000264c:	72f73823          	sd	a5,1840(a4) # 8000bd78 <_ZN9Scheduler4headE>

    if (head == nullptr) {
    80002650:	00078a63          	beqz	a5,80002664 <_ZN9Scheduler3getEv+0x38>
        tail = nullptr;
    }

    thread->next = nullptr;
    80002654:	08053c23          	sd	zero,152(a0)

    return thread;
}
    80002658:	00813403          	ld	s0,8(sp)
    8000265c:	01010113          	addi	sp,sp,16
    80002660:	00008067          	ret
        tail = nullptr;
    80002664:	00009797          	auipc	a5,0x9
    80002668:	7007be23          	sd	zero,1820(a5) # 8000bd80 <_ZN9Scheduler4tailE>
    8000266c:	fe9ff06f          	j	80002654 <_ZN9Scheduler3getEv+0x28>

0000000080002670 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    80002670:	ff010113          	addi	sp,sp,-16
    80002674:	00813423          	sd	s0,8(sp)
    80002678:	01010413          	addi	s0,sp,16
    return head == nullptr;
    8000267c:	00009517          	auipc	a0,0x9
    80002680:	6fc53503          	ld	a0,1788(a0) # 8000bd78 <_ZN9Scheduler4headE>
    80002684:	00153513          	seqz	a0,a0
    80002688:	00813403          	ld	s0,8(sp)
    8000268c:	01010113          	addi	sp,sp,16
    80002690:	00008067          	ret

0000000080002694 <_Znwm>:
#include "../h/new.hpp"
#include "../h/syscall_c.hpp"

void* operator new(size_t size) {
    80002694:	ff010113          	addi	sp,sp,-16
    80002698:	00113423          	sd	ra,8(sp)
    8000269c:	00813023          	sd	s0,0(sp)
    800026a0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800026a4:	fffff097          	auipc	ra,0xfffff
    800026a8:	b54080e7          	jalr	-1196(ra) # 800011f8 <_Z9mem_allocm>
}
    800026ac:	00813083          	ld	ra,8(sp)
    800026b0:	00013403          	ld	s0,0(sp)
    800026b4:	01010113          	addi	sp,sp,16
    800026b8:	00008067          	ret

00000000800026bc <_Znam>:

void* operator new[](size_t size) {
    800026bc:	ff010113          	addi	sp,sp,-16
    800026c0:	00113423          	sd	ra,8(sp)
    800026c4:	00813023          	sd	s0,0(sp)
    800026c8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800026cc:	fffff097          	auipc	ra,0xfffff
    800026d0:	b2c080e7          	jalr	-1236(ra) # 800011f8 <_Z9mem_allocm>
}
    800026d4:	00813083          	ld	ra,8(sp)
    800026d8:	00013403          	ld	s0,0(sp)
    800026dc:	01010113          	addi	sp,sp,16
    800026e0:	00008067          	ret

00000000800026e4 <_ZdlPv>:

void operator delete(void* ptr) {
    800026e4:	ff010113          	addi	sp,sp,-16
    800026e8:	00113423          	sd	ra,8(sp)
    800026ec:	00813023          	sd	s0,0(sp)
    800026f0:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800026f4:	fffff097          	auipc	ra,0xfffff
    800026f8:	b50080e7          	jalr	-1200(ra) # 80001244 <_Z8mem_freePv>
}
    800026fc:	00813083          	ld	ra,8(sp)
    80002700:	00013403          	ld	s0,0(sp)
    80002704:	01010113          	addi	sp,sp,16
    80002708:	00008067          	ret

000000008000270c <_ZdaPv>:

void operator delete[](void* ptr) {
    8000270c:	ff010113          	addi	sp,sp,-16
    80002710:	00113423          	sd	ra,8(sp)
    80002714:	00813023          	sd	s0,0(sp)
    80002718:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    8000271c:	fffff097          	auipc	ra,0xfffff
    80002720:	b28080e7          	jalr	-1240(ra) # 80001244 <_Z8mem_freePv>
    80002724:	00813083          	ld	ra,8(sp)
    80002728:	00013403          	ld	s0,0(sp)
    8000272c:	01010113          	addi	sp,sp,16
    80002730:	00008067          	ret

0000000080002734 <_ZL15userMainWrapperPv>:
extern "C" void supervisorTrap();
extern void userMain();

static volatile bool userMainFinished = false;

static void userMainWrapper(void*) {
    80002734:	ff010113          	addi	sp,sp,-16
    80002738:	00113423          	sd	ra,8(sp)
    8000273c:	00813023          	sd	s0,0(sp)
    80002740:	01010413          	addi	s0,sp,16
    userMain();
    80002744:	00000097          	auipc	ra,0x0
    80002748:	d08080e7          	jalr	-760(ra) # 8000244c <_Z8userMainv>
    userMainFinished = true;
    8000274c:	00100793          	li	a5,1
    80002750:	00009717          	auipc	a4,0x9
    80002754:	62f70c23          	sb	a5,1592(a4) # 8000bd88 <_ZL16userMainFinished>
    thread_exit();
    80002758:	fffff097          	auipc	ra,0xfffff
    8000275c:	bf0080e7          	jalr	-1040(ra) # 80001348 <_Z11thread_exitv>
}
    80002760:	00813083          	ld	ra,8(sp)
    80002764:	00013403          	ld	s0,0(sp)
    80002768:	01010113          	addi	sp,sp,16
    8000276c:	00008067          	ret

0000000080002770 <main>:

int main() {
    80002770:	f3010113          	addi	sp,sp,-208
    80002774:	0c113423          	sd	ra,200(sp)
    80002778:	0c813023          	sd	s0,192(sp)
    8000277c:	0a913c23          	sd	s1,184(sp)
    80002780:	0d010413          	addi	s0,sp,208
    Riscv::w_stvec((uint64)&supervisorTrap);
    80002784:	00009797          	auipc	a5,0x9
    80002788:	5747b783          	ld	a5,1396(a5) # 8000bcf8 <_GLOBAL_OFFSET_TABLE_+0x20>
        asm volatile("csrw stvec, %0" : : "r"(x));//adresa prekidne rutine, da bi skocilo na supervisorTrap
    8000278c:	10579073          	csrw	stvec,a5
        asm volatile("csrs sstatus, %0" : : "r"(mask));//omoguci prekide
    80002790:	00200793          	li	a5,2
    80002794:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    _thread mainThread(nullptr, nullptr, nullptr);//poziv konstruktora
    80002798:	00000693          	li	a3,0
    8000279c:	00000613          	li	a2,0
    800027a0:	00000593          	li	a1,0
    800027a4:	f3840493          	addi	s1,s0,-200
    800027a8:	00048513          	mv	a0,s1
    800027ac:	00000097          	auipc	ra,0x0
    800027b0:	8bc080e7          	jalr	-1860(ra) # 80002068 <_ZN7_threadC1EPFvPvES0_S0_>
    mainThread.setState(_thread::RUNNING);
    800027b4:	00200593          	li	a1,2
    800027b8:	00048513          	mv	a0,s1
    800027bc:	00000097          	auipc	ra,0x0
    800027c0:	bf4080e7          	jalr	-1036(ra) # 800023b0 <_ZN7_thread8setStateENS_5StateE>
    _thread::running = &mainThread;//pravimo main nit zbog dispatch-a, jer nemamo running na pocetku, i scheduler radi samo sa _thread
    800027c4:	00009797          	auipc	a5,0x9
    800027c8:	52c7b783          	ld	a5,1324(a5) # 8000bcf0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800027cc:	0097b023          	sd	s1,0(a5)

    thread_t userThread = nullptr;
    800027d0:	f2043823          	sd	zero,-208(s0)
    int ret = thread_create(&userThread, userMainWrapper, nullptr);
    800027d4:	00000613          	li	a2,0
    800027d8:	00000597          	auipc	a1,0x0
    800027dc:	f5c58593          	addi	a1,a1,-164 # 80002734 <_ZL15userMainWrapperPv>
    800027e0:	f3040513          	addi	a0,s0,-208
    800027e4:	fffff097          	auipc	ra,0xfffff
    800027e8:	aa0080e7          	jalr	-1376(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>

    if (ret < 0 || userThread == nullptr) {
    800027ec:	00054663          	bltz	a0,800027f8 <main+0x88>
    800027f0:	f3043783          	ld	a5,-208(s0)
    800027f4:	02079063          	bnez	a5,80002814 <main+0xa4>
        volatile uint32* qemu = (uint32*)0x100000;
        *qemu = 0x5555;
    800027f8:	00100737          	lui	a4,0x100
    800027fc:	000057b7          	lui	a5,0x5
    80002800:	5557879b          	addiw	a5,a5,1365
    80002804:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
        return ret;
    80002808:	02c0006f          	j	80002834 <main+0xc4>
    }

    while (!userMainFinished) {
        thread_dispatch();
    8000280c:	fffff097          	auipc	ra,0xfffff
    80002810:	bf8080e7          	jalr	-1032(ra) # 80001404 <_Z15thread_dispatchv>
    while (!userMainFinished) {
    80002814:	00009797          	auipc	a5,0x9
    80002818:	5747c783          	lbu	a5,1396(a5) # 8000bd88 <_ZL16userMainFinished>
    8000281c:	fe0788e3          	beqz	a5,8000280c <main+0x9c>
    }

    volatile uint32* qemu = (uint32*)0x100000;
    *qemu = 0x5555;
    80002820:	00100737          	lui	a4,0x100
    80002824:	000057b7          	lui	a5,0x5
    80002828:	5557879b          	addiw	a5,a5,1365
    8000282c:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>

    return 0;
    80002830:	00000513          	li	a0,0
}
    80002834:	0c813083          	ld	ra,200(sp)
    80002838:	0c013403          	ld	s0,192(sp)
    8000283c:	0b813483          	ld	s1,184(sp)
    80002840:	0d010113          	addi	sp,sp,208
    80002844:	00008067          	ret

0000000080002848 <_ZN6ThreadD1Ev>:
    this->myHandle = nullptr;
    this->body = nullptr;
    this->arg = nullptr;
}

Thread::~Thread() {
    80002848:	ff010113          	addi	sp,sp,-16
    8000284c:	00813423          	sd	s0,8(sp)
    80002850:	01010413          	addi	s0,sp,16
}
    80002854:	00813403          	ld	s0,8(sp)
    80002858:	01010113          	addi	sp,sp,16
    8000285c:	00008067          	ret

0000000080002860 <_ZN6Thread13threadWrapperEPv>:
}

void Thread::threadWrapper(void* thread) {
    Thread* t = (Thread*)thread;

    if (t != nullptr) {
    80002860:	02050863          	beqz	a0,80002890 <_ZN6Thread13threadWrapperEPv+0x30>
void Thread::threadWrapper(void* thread) {
    80002864:	ff010113          	addi	sp,sp,-16
    80002868:	00113423          	sd	ra,8(sp)
    8000286c:	00813023          	sd	s0,0(sp)
    80002870:	01010413          	addi	s0,sp,16
        t->run();
    80002874:	00053783          	ld	a5,0(a0)
    80002878:	0107b783          	ld	a5,16(a5) # 5010 <_entry-0x7fffaff0>
    8000287c:	000780e7          	jalr	a5
    }
}
    80002880:	00813083          	ld	ra,8(sp)
    80002884:	00013403          	ld	s0,0(sp)
    80002888:	01010113          	addi	sp,sp,16
    8000288c:	00008067          	ret
    80002890:	00008067          	ret

0000000080002894 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002894:	ff010113          	addi	sp,sp,-16
    80002898:	00113423          	sd	ra,8(sp)
    8000289c:	00813023          	sd	s0,0(sp)
    800028a0:	01010413          	addi	s0,sp,16
}
    800028a4:	00000097          	auipc	ra,0x0
    800028a8:	e40080e7          	jalr	-448(ra) # 800026e4 <_ZdlPv>
    800028ac:	00813083          	ld	ra,8(sp)
    800028b0:	00013403          	ld	s0,0(sp)
    800028b4:	01010113          	addi	sp,sp,16
    800028b8:	00008067          	ret

00000000800028bc <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800028bc:	00009797          	auipc	a5,0x9
    800028c0:	23478793          	addi	a5,a5,564 # 8000baf0 <_ZTV9Semaphore+0x10>
    800028c4:	00f53023          	sd	a5,0(a0)
    if (myHandle != nullptr) {
    800028c8:	00853503          	ld	a0,8(a0)
    800028cc:	02050663          	beqz	a0,800028f8 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    800028d0:	ff010113          	addi	sp,sp,-16
    800028d4:	00113423          	sd	ra,8(sp)
    800028d8:	00813023          	sd	s0,0(sp)
    800028dc:	01010413          	addi	s0,sp,16
        sem_close(myHandle);
    800028e0:	fffff097          	auipc	ra,0xfffff
    800028e4:	ba4080e7          	jalr	-1116(ra) # 80001484 <_Z9sem_closeP4_sem>
    }
}
    800028e8:	00813083          	ld	ra,8(sp)
    800028ec:	00013403          	ld	s0,0(sp)
    800028f0:	01010113          	addi	sp,sp,16
    800028f4:	00008067          	ret
    800028f8:	00008067          	ret

00000000800028fc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800028fc:	fe010113          	addi	sp,sp,-32
    80002900:	00113c23          	sd	ra,24(sp)
    80002904:	00813823          	sd	s0,16(sp)
    80002908:	00913423          	sd	s1,8(sp)
    8000290c:	02010413          	addi	s0,sp,32
    80002910:	00050493          	mv	s1,a0
}
    80002914:	00000097          	auipc	ra,0x0
    80002918:	fa8080e7          	jalr	-88(ra) # 800028bc <_ZN9SemaphoreD1Ev>
    8000291c:	00048513          	mv	a0,s1
    80002920:	00000097          	auipc	ra,0x0
    80002924:	dc4080e7          	jalr	-572(ra) # 800026e4 <_ZdlPv>
    80002928:	01813083          	ld	ra,24(sp)
    8000292c:	01013403          	ld	s0,16(sp)
    80002930:	00813483          	ld	s1,8(sp)
    80002934:	02010113          	addi	sp,sp,32
    80002938:	00008067          	ret

000000008000293c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    8000293c:	ff010113          	addi	sp,sp,-16
    80002940:	00813423          	sd	s0,8(sp)
    80002944:	01010413          	addi	s0,sp,16
    80002948:	00009797          	auipc	a5,0x9
    8000294c:	18078793          	addi	a5,a5,384 # 8000bac8 <_ZTV6Thread+0x10>
    80002950:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80002954:	00053423          	sd	zero,8(a0)
    this->body = body;
    80002958:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    8000295c:	00c53c23          	sd	a2,24(a0)
}
    80002960:	00813403          	ld	s0,8(sp)
    80002964:	01010113          	addi	sp,sp,16
    80002968:	00008067          	ret

000000008000296c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000296c:	ff010113          	addi	sp,sp,-16
    80002970:	00813423          	sd	s0,8(sp)
    80002974:	01010413          	addi	s0,sp,16
    80002978:	00009797          	auipc	a5,0x9
    8000297c:	15078793          	addi	a5,a5,336 # 8000bac8 <_ZTV6Thread+0x10>
    80002980:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80002984:	00053423          	sd	zero,8(a0)
    this->body = nullptr;
    80002988:	00053823          	sd	zero,16(a0)
    this->arg = nullptr;
    8000298c:	00053c23          	sd	zero,24(a0)
}
    80002990:	00813403          	ld	s0,8(sp)
    80002994:	01010113          	addi	sp,sp,16
    80002998:	00008067          	ret

000000008000299c <_ZN6Thread5startEv>:
int Thread::start() {
    8000299c:	ff010113          	addi	sp,sp,-16
    800029a0:	00113423          	sd	ra,8(sp)
    800029a4:	00813023          	sd	s0,0(sp)
    800029a8:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    800029ac:	01053583          	ld	a1,16(a0)
    800029b0:	02058263          	beqz	a1,800029d4 <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    800029b4:	01853603          	ld	a2,24(a0)
    800029b8:	00850513          	addi	a0,a0,8
    800029bc:	fffff097          	auipc	ra,0xfffff
    800029c0:	8c8080e7          	jalr	-1848(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
}
    800029c4:	00813083          	ld	ra,8(sp)
    800029c8:	00013403          	ld	s0,0(sp)
    800029cc:	01010113          	addi	sp,sp,16
    800029d0:	00008067          	ret
    return thread_create(&myHandle, Thread::threadWrapper, this);//kada korisnik ocekuje da se izvrsi run(), pa se u thread wrapper poziva run
    800029d4:	00050613          	mv	a2,a0
    800029d8:	00000597          	auipc	a1,0x0
    800029dc:	e8858593          	addi	a1,a1,-376 # 80002860 <_ZN6Thread13threadWrapperEPv>
    800029e0:	00850513          	addi	a0,a0,8
    800029e4:	fffff097          	auipc	ra,0xfffff
    800029e8:	8a0080e7          	jalr	-1888(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    800029ec:	fd9ff06f          	j	800029c4 <_ZN6Thread5startEv+0x28>

00000000800029f0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800029f0:	ff010113          	addi	sp,sp,-16
    800029f4:	00113423          	sd	ra,8(sp)
    800029f8:	00813023          	sd	s0,0(sp)
    800029fc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002a00:	fffff097          	auipc	ra,0xfffff
    80002a04:	a04080e7          	jalr	-1532(ra) # 80001404 <_Z15thread_dispatchv>
}
    80002a08:	00813083          	ld	ra,8(sp)
    80002a0c:	00013403          	ld	s0,0(sp)
    80002a10:	01010113          	addi	sp,sp,16
    80002a14:	00008067          	ret

0000000080002a18 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002a18:	ff010113          	addi	sp,sp,-16
    80002a1c:	00113423          	sd	ra,8(sp)
    80002a20:	00813023          	sd	s0,0(sp)
    80002a24:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002a28:	fffff097          	auipc	ra,0xfffff
    80002a2c:	ba4080e7          	jalr	-1116(ra) # 800015cc <_Z10time_sleepm>
}
    80002a30:	00813083          	ld	ra,8(sp)
    80002a34:	00013403          	ld	s0,0(sp)
    80002a38:	01010113          	addi	sp,sp,16
    80002a3c:	00008067          	ret

0000000080002a40 <_ZN6Thread17setMaximumThreadsEi>:
void Thread::setMaximumThreads(int num) {
    80002a40:	ff010113          	addi	sp,sp,-16
    80002a44:	00113423          	sd	ra,8(sp)
    80002a48:	00813023          	sd	s0,0(sp)
    80002a4c:	01010413          	addi	s0,sp,16
    ::setMaximumThreads(num);
    80002a50:	fffff097          	auipc	ra,0xfffff
    80002a54:	978080e7          	jalr	-1672(ra) # 800013c8 <_Z17setMaximumThreadsi>
}
    80002a58:	00813083          	ld	ra,8(sp)
    80002a5c:	00013403          	ld	s0,0(sp)
    80002a60:	01010113          	addi	sp,sp,16
    80002a64:	00008067          	ret

0000000080002a68 <_ZN6Thread11getThreadIdEv>:
int Thread::getThreadId() {
    80002a68:	ff010113          	addi	sp,sp,-16
    80002a6c:	00113423          	sd	ra,8(sp)
    80002a70:	00813023          	sd	s0,0(sp)
    80002a74:	01010413          	addi	s0,sp,16
    return ::getThreadId();
    80002a78:	fffff097          	auipc	ra,0xfffff
    80002a7c:	910080e7          	jalr	-1776(ra) # 80001388 <_Z11getThreadIdv>
}
    80002a80:	00813083          	ld	ra,8(sp)
    80002a84:	00013403          	ld	s0,0(sp)
    80002a88:	01010113          	addi	sp,sp,16
    80002a8c:	00008067          	ret

0000000080002a90 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80002a90:	ff010113          	addi	sp,sp,-16
    80002a94:	00113423          	sd	ra,8(sp)
    80002a98:	00813023          	sd	s0,0(sp)
    80002a9c:	01010413          	addi	s0,sp,16
    80002aa0:	00009797          	auipc	a5,0x9
    80002aa4:	05078793          	addi	a5,a5,80 # 8000baf0 <_ZTV9Semaphore+0x10>
    80002aa8:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002aac:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002ab0:	00850513          	addi	a0,a0,8
    80002ab4:	fffff097          	auipc	ra,0xfffff
    80002ab8:	98c080e7          	jalr	-1652(ra) # 80001440 <_Z8sem_openPP4_semj>
}
    80002abc:	00813083          	ld	ra,8(sp)
    80002ac0:	00013403          	ld	s0,0(sp)
    80002ac4:	01010113          	addi	sp,sp,16
    80002ac8:	00008067          	ret

0000000080002acc <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002acc:	ff010113          	addi	sp,sp,-16
    80002ad0:	00113423          	sd	ra,8(sp)
    80002ad4:	00813023          	sd	s0,0(sp)
    80002ad8:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002adc:	00853503          	ld	a0,8(a0)
    80002ae0:	fffff097          	auipc	ra,0xfffff
    80002ae4:	9e4080e7          	jalr	-1564(ra) # 800014c4 <_Z8sem_waitP4_sem>
}
    80002ae8:	00813083          	ld	ra,8(sp)
    80002aec:	00013403          	ld	s0,0(sp)
    80002af0:	01010113          	addi	sp,sp,16
    80002af4:	00008067          	ret

0000000080002af8 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002af8:	ff010113          	addi	sp,sp,-16
    80002afc:	00113423          	sd	ra,8(sp)
    80002b00:	00813023          	sd	s0,0(sp)
    80002b04:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002b08:	00853503          	ld	a0,8(a0)
    80002b0c:	fffff097          	auipc	ra,0xfffff
    80002b10:	9f8080e7          	jalr	-1544(ra) # 80001504 <_Z10sem_signalP4_sem>
}
    80002b14:	00813083          	ld	ra,8(sp)
    80002b18:	00013403          	ld	s0,0(sp)
    80002b1c:	01010113          	addi	sp,sp,16
    80002b20:	00008067          	ret

0000000080002b24 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    80002b24:	fe010113          	addi	sp,sp,-32
    80002b28:	00113c23          	sd	ra,24(sp)
    80002b2c:	00813823          	sd	s0,16(sp)
    80002b30:	00913423          	sd	s1,8(sp)
    80002b34:	01213023          	sd	s2,0(sp)
    80002b38:	02010413          	addi	s0,sp,32
    80002b3c:	00050493          	mv	s1,a0
    80002b40:	00058913          	mv	s2,a1
    80002b44:	00000097          	auipc	ra,0x0
    80002b48:	e28080e7          	jalr	-472(ra) # 8000296c <_ZN6ThreadC1Ev>
    80002b4c:	00009797          	auipc	a5,0x9
    80002b50:	f4c78793          	addi	a5,a5,-180 # 8000ba98 <_ZTV14PeriodicThread+0x10>
    80002b54:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80002b58:	0324b023          	sd	s2,32(s1)
}
    80002b5c:	01813083          	ld	ra,24(sp)
    80002b60:	01013403          	ld	s0,16(sp)
    80002b64:	00813483          	ld	s1,8(sp)
    80002b68:	00013903          	ld	s2,0(sp)
    80002b6c:	02010113          	addi	sp,sp,32
    80002b70:	00008067          	ret

0000000080002b74 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002b74:	ff010113          	addi	sp,sp,-16
    80002b78:	00813423          	sd	s0,8(sp)
    80002b7c:	01010413          	addi	s0,sp,16
    /*
     * PeriodicThread je deo zadatka 4.
     * Pošto ga ne radiš, ovo ostaje prazno.
     */
}
    80002b80:	00813403          	ld	s0,8(sp)
    80002b84:	01010113          	addi	sp,sp,16
    80002b88:	00008067          	ret

0000000080002b8c <_ZN7Console4getcEv>:

char Console::getc() {
    80002b8c:	ff010113          	addi	sp,sp,-16
    80002b90:	00113423          	sd	ra,8(sp)
    80002b94:	00813023          	sd	s0,0(sp)
    80002b98:	01010413          	addi	s0,sp,16
    return ::getc();
    80002b9c:	fffff097          	auipc	ra,0xfffff
    80002ba0:	a70080e7          	jalr	-1424(ra) # 8000160c <_Z4getcv>
}
    80002ba4:	00813083          	ld	ra,8(sp)
    80002ba8:	00013403          	ld	s0,0(sp)
    80002bac:	01010113          	addi	sp,sp,16
    80002bb0:	00008067          	ret

0000000080002bb4 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002bb4:	ff010113          	addi	sp,sp,-16
    80002bb8:	00113423          	sd	ra,8(sp)
    80002bbc:	00813023          	sd	s0,0(sp)
    80002bc0:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002bc4:	fffff097          	auipc	ra,0xfffff
    80002bc8:	a88080e7          	jalr	-1400(ra) # 8000164c <_Z4putcc>
    80002bcc:	00813083          	ld	ra,8(sp)
    80002bd0:	00013403          	ld	s0,0(sp)
    80002bd4:	01010113          	addi	sp,sp,16
    80002bd8:	00008067          	ret

0000000080002bdc <_ZN6Thread3runEv>:
    static void setMaximumThreads(int num);

protected:
    Thread();

    virtual void run() {}
    80002bdc:	ff010113          	addi	sp,sp,-16
    80002be0:	00813423          	sd	s0,8(sp)
    80002be4:	01010413          	addi	s0,sp,16
    80002be8:	00813403          	ld	s0,8(sp)
    80002bec:	01010113          	addi	sp,sp,16
    80002bf0:	00008067          	ret

0000000080002bf4 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate();

protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    80002bf4:	ff010113          	addi	sp,sp,-16
    80002bf8:	00813423          	sd	s0,8(sp)
    80002bfc:	01010413          	addi	s0,sp,16
    80002c00:	00813403          	ld	s0,8(sp)
    80002c04:	01010113          	addi	sp,sp,16
    80002c08:	00008067          	ret

0000000080002c0c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002c0c:	ff010113          	addi	sp,sp,-16
    80002c10:	00813423          	sd	s0,8(sp)
    80002c14:	01010413          	addi	s0,sp,16
    80002c18:	00009797          	auipc	a5,0x9
    80002c1c:	e8078793          	addi	a5,a5,-384 # 8000ba98 <_ZTV14PeriodicThread+0x10>
    80002c20:	00f53023          	sd	a5,0(a0)
    80002c24:	00813403          	ld	s0,8(sp)
    80002c28:	01010113          	addi	sp,sp,16
    80002c2c:	00008067          	ret

0000000080002c30 <_ZN14PeriodicThreadD0Ev>:
    80002c30:	ff010113          	addi	sp,sp,-16
    80002c34:	00113423          	sd	ra,8(sp)
    80002c38:	00813023          	sd	s0,0(sp)
    80002c3c:	01010413          	addi	s0,sp,16
    80002c40:	00009797          	auipc	a5,0x9
    80002c44:	e5878793          	addi	a5,a5,-424 # 8000ba98 <_ZTV14PeriodicThread+0x10>
    80002c48:	00f53023          	sd	a5,0(a0)
    80002c4c:	00000097          	auipc	ra,0x0
    80002c50:	a98080e7          	jalr	-1384(ra) # 800026e4 <_ZdlPv>
    80002c54:	00813083          	ld	ra,8(sp)
    80002c58:	00013403          	ld	s0,0(sp)
    80002c5c:	01010113          	addi	sp,sp,16
    80002c60:	00008067          	ret

0000000080002c64 <_ZN15MemoryAllocatorC1Ev>:
#include "../h/MemoryAllocator.hpp"

MemoryAllocator::MemoryAllocator() : freeHead(nullptr), initialized(false) {}
    80002c64:	ff010113          	addi	sp,sp,-16
    80002c68:	00813423          	sd	s0,8(sp)
    80002c6c:	01010413          	addi	s0,sp,16
    80002c70:	00053023          	sd	zero,0(a0)
    80002c74:	00050423          	sb	zero,8(a0)
    80002c78:	00813403          	ld	s0,8(sp)
    80002c7c:	01010113          	addi	sp,sp,16
    80002c80:	00008067          	ret

0000000080002c84 <_Z41__static_initialization_and_destruction_0ii>:
            block->next->prev = block;
        }
        nextBlock->next = nullptr;
        nextBlock->prev = nullptr;
    }
    80002c84:	00100793          	li	a5,1
    80002c88:	00f50463          	beq	a0,a5,80002c90 <_Z41__static_initialization_and_destruction_0ii+0xc>
    80002c8c:	00008067          	ret
    80002c90:	000107b7          	lui	a5,0x10
    80002c94:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002c98:	fef59ae3          	bne	a1,a5,80002c8c <_Z41__static_initialization_and_destruction_0ii+0x8>
    80002c9c:	ff010113          	addi	sp,sp,-16
    80002ca0:	00113423          	sd	ra,8(sp)
    80002ca4:	00813023          	sd	s0,0(sp)
    80002ca8:	01010413          	addi	s0,sp,16
MemoryAllocator MemoryAllocator::instance;
    80002cac:	00009517          	auipc	a0,0x9
    80002cb0:	0e450513          	addi	a0,a0,228 # 8000bd90 <_ZN15MemoryAllocator8instanceE>
    80002cb4:	00000097          	auipc	ra,0x0
    80002cb8:	fb0080e7          	jalr	-80(ra) # 80002c64 <_ZN15MemoryAllocatorC1Ev>
    80002cbc:	00813083          	ld	ra,8(sp)
    80002cc0:	00013403          	ld	s0,0(sp)
    80002cc4:	01010113          	addi	sp,sp,16
    80002cc8:	00008067          	ret

0000000080002ccc <_ZN15MemoryAllocator11getInstanceEv>:
MemoryAllocator& MemoryAllocator::getInstance() {
    80002ccc:	ff010113          	addi	sp,sp,-16
    80002cd0:	00813423          	sd	s0,8(sp)
    80002cd4:	01010413          	addi	s0,sp,16
}
    80002cd8:	00009517          	auipc	a0,0x9
    80002cdc:	0b850513          	addi	a0,a0,184 # 8000bd90 <_ZN15MemoryAllocator8instanceE>
    80002ce0:	00813403          	ld	s0,8(sp)
    80002ce4:	01010113          	addi	sp,sp,16
    80002ce8:	00008067          	ret

0000000080002cec <_ZN15MemoryAllocator4initEv>:
void MemoryAllocator::init() {
    80002cec:	ff010113          	addi	sp,sp,-16
    80002cf0:	00813423          	sd	s0,8(sp)
    80002cf4:	01010413          	addi	s0,sp,16
    if (initialized) return;
    80002cf8:	00854783          	lbu	a5,8(a0)
    80002cfc:	04079263          	bnez	a5,80002d40 <_ZN15MemoryAllocator4initEv+0x54>
    uint64 heapStart = (uint64) HEAP_START_ADDR;
    80002d00:	00009797          	auipc	a5,0x9
    80002d04:	fe87b783          	ld	a5,-24(a5) # 8000bce8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002d08:	0007b703          	ld	a4,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002d0c:	00009797          	auipc	a5,0x9
    80002d10:	ffc7b783          	ld	a5,-4(a5) # 8000bd08 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002d14:	0007b783          	ld	a5,0(a5)
    size_t heapSize = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002d18:	40e787b3          	sub	a5,a5,a4
    80002d1c:	0067d793          	srli	a5,a5,0x6
    freeHead = (FreeBlock*) heapStart;
    80002d20:	00e53023          	sd	a4,0(a0)
    freeHead->size = heapSize;
    80002d24:	00f73023          	sd	a5,0(a4)
    freeHead->next = nullptr;
    80002d28:	00053783          	ld	a5,0(a0)
    80002d2c:	0007b423          	sd	zero,8(a5)
    freeHead->prev = nullptr;
    80002d30:	00053783          	ld	a5,0(a0)
    80002d34:	0007b823          	sd	zero,16(a5)
    initialized = true;
    80002d38:	00100793          	li	a5,1
    80002d3c:	00f50423          	sb	a5,8(a0)
}
    80002d40:	00813403          	ld	s0,8(sp)
    80002d44:	01010113          	addi	sp,sp,16
    80002d48:	00008067          	ret

0000000080002d4c <_ZN15MemoryAllocator6mallocEm>:
void* MemoryAllocator::malloc(size_t numBlocks) {
    80002d4c:	fe010113          	addi	sp,sp,-32
    80002d50:	00113c23          	sd	ra,24(sp)
    80002d54:	00813823          	sd	s0,16(sp)
    80002d58:	00913423          	sd	s1,8(sp)
    80002d5c:	01213023          	sd	s2,0(sp)
    80002d60:	02010413          	addi	s0,sp,32
    80002d64:	00050913          	mv	s2,a0
    80002d68:	00058493          	mv	s1,a1
    init();
    80002d6c:	00000097          	auipc	ra,0x0
    80002d70:	f80080e7          	jalr	-128(ra) # 80002cec <_ZN15MemoryAllocator4initEv>
    if (numBlocks == 0) return nullptr;
    80002d74:	0c048863          	beqz	s1,80002e44 <_ZN15MemoryAllocator6mallocEm+0xf8>
    size_t neededBlocks = numBlocks + 1;
    80002d78:	00148593          	addi	a1,s1,1
    FreeBlock* current = freeHead;
    80002d7c:	00093503          	ld	a0,0(s2)
    while(current != nullptr && current->size < neededBlocks){
    80002d80:	00050a63          	beqz	a0,80002d94 <_ZN15MemoryAllocator6mallocEm+0x48>
    80002d84:	00053783          	ld	a5,0(a0)
    80002d88:	00b7f663          	bgeu	a5,a1,80002d94 <_ZN15MemoryAllocator6mallocEm+0x48>
        current = current->next;
    80002d8c:	00853503          	ld	a0,8(a0)
    while(current != nullptr && current->size < neededBlocks){
    80002d90:	ff1ff06f          	j	80002d80 <_ZN15MemoryAllocator6mallocEm+0x34>
    if (current == nullptr){
    80002d94:	04050063          	beqz	a0,80002dd4 <_ZN15MemoryAllocator6mallocEm+0x88>
    size_t remainingBlocks = current->size - neededBlocks;
    80002d98:	00053783          	ld	a5,0(a0)
    80002d9c:	40b787b3          	sub	a5,a5,a1
    if (remainingBlocks >= 2){
    80002da0:	00100713          	li	a4,1
    80002da4:	04f76463          	bltu	a4,a5,80002dec <_ZN15MemoryAllocator6mallocEm+0xa0>
    if (current->prev != nullptr){
    80002da8:	01053783          	ld	a5,16(a0)
    80002dac:	08078663          	beqz	a5,80002e38 <_ZN15MemoryAllocator6mallocEm+0xec>
        current->prev->next = current->next;
    80002db0:	00853703          	ld	a4,8(a0)
    80002db4:	00e7b423          	sd	a4,8(a5)
    if (current->next != nullptr){
    80002db8:	00853783          	ld	a5,8(a0)
    80002dbc:	00078663          	beqz	a5,80002dc8 <_ZN15MemoryAllocator6mallocEm+0x7c>
        current->next->prev = current->prev;
    80002dc0:	01053703          	ld	a4,16(a0)
    80002dc4:	00e7b823          	sd	a4,16(a5)
    current->next = nullptr;
    80002dc8:	00053423          	sd	zero,8(a0)
    current->prev = nullptr;
    80002dcc:	00053823          	sd	zero,16(a0)
    return (void*) ((char*) current +MEM_BLOCK_SIZE);
    80002dd0:	04050513          	addi	a0,a0,64
}
    80002dd4:	01813083          	ld	ra,24(sp)
    80002dd8:	01013403          	ld	s0,16(sp)
    80002ddc:	00813483          	ld	s1,8(sp)
    80002de0:	00013903          	ld	s2,0(sp)
    80002de4:	02010113          	addi	sp,sp,32
    80002de8:	00008067          	ret
        FreeBlock* newFree = (FreeBlock*) ((char*) current + neededBlocks * MEM_BLOCK_SIZE);
    80002dec:	00659713          	slli	a4,a1,0x6
    80002df0:	00e50733          	add	a4,a0,a4
        newFree->size = remainingBlocks;
    80002df4:	00f73023          	sd	a5,0(a4)
        newFree->next = current->next;
    80002df8:	00853783          	ld	a5,8(a0)
    80002dfc:	00f73423          	sd	a5,8(a4)
        newFree->prev = current->prev;
    80002e00:	01053783          	ld	a5,16(a0)
    80002e04:	00f73823          	sd	a5,16(a4)
        if (current->prev != nullptr){
    80002e08:	02078463          	beqz	a5,80002e30 <_ZN15MemoryAllocator6mallocEm+0xe4>
            current->prev->next = newFree;
    80002e0c:	00e7b423          	sd	a4,8(a5)
        if (current->next != nullptr){
    80002e10:	00853783          	ld	a5,8(a0)
    80002e14:	00078463          	beqz	a5,80002e1c <_ZN15MemoryAllocator6mallocEm+0xd0>
            current->next->prev = newFree;
    80002e18:	00e7b823          	sd	a4,16(a5)
        current->size = neededBlocks;
    80002e1c:	00b53023          	sd	a1,0(a0)
        current->next = nullptr;
    80002e20:	00053423          	sd	zero,8(a0)
        current->prev = nullptr;
    80002e24:	00053823          	sd	zero,16(a0)
        return (void*) ((char*) current + MEM_BLOCK_SIZE);
    80002e28:	04050513          	addi	a0,a0,64
    80002e2c:	fa9ff06f          	j	80002dd4 <_ZN15MemoryAllocator6mallocEm+0x88>
            freeHead = newFree;
    80002e30:	00e93023          	sd	a4,0(s2)
    80002e34:	fddff06f          	j	80002e10 <_ZN15MemoryAllocator6mallocEm+0xc4>
        freeHead = current->next;
    80002e38:	00853783          	ld	a5,8(a0)
    80002e3c:	00f93023          	sd	a5,0(s2)
    80002e40:	f79ff06f          	j	80002db8 <_ZN15MemoryAllocator6mallocEm+0x6c>
    if (numBlocks == 0) return nullptr;
    80002e44:	00000513          	li	a0,0
    80002e48:	f8dff06f          	j	80002dd4 <_ZN15MemoryAllocator6mallocEm+0x88>

0000000080002e4c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>:
void MemoryAllocator::tryToJoin(FreeBlock *block) {
    80002e4c:	ff010113          	addi	sp,sp,-16
    80002e50:	00813423          	sd	s0,8(sp)
    80002e54:	01010413          	addi	s0,sp,16
    if (block == nullptr || block->next == nullptr) return;
    80002e58:	00058e63          	beqz	a1,80002e74 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    80002e5c:	0085b783          	ld	a5,8(a1)
    80002e60:	00078a63          	beqz	a5,80002e74 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    char* endOfBlock = (char*) block + block->size * MEM_BLOCK_SIZE;
    80002e64:	0005b683          	ld	a3,0(a1)
    80002e68:	00669713          	slli	a4,a3,0x6
    80002e6c:	00e58733          	add	a4,a1,a4
    if (endOfBlock == (char*) block->next){
    80002e70:	00e78863          	beq	a5,a4,80002e80 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x34>
    80002e74:	00813403          	ld	s0,8(sp)
    80002e78:	01010113          	addi	sp,sp,16
    80002e7c:	00008067          	ret
        block->size += nextBlock->size;
    80002e80:	0007b703          	ld	a4,0(a5)
    80002e84:	00e686b3          	add	a3,a3,a4
    80002e88:	00d5b023          	sd	a3,0(a1)
        block->next = nextBlock->next;
    80002e8c:	0087b703          	ld	a4,8(a5)
    80002e90:	00e5b423          	sd	a4,8(a1)
        if (block->next != nullptr){
    80002e94:	00070463          	beqz	a4,80002e9c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x50>
            block->next->prev = block;
    80002e98:	00b73823          	sd	a1,16(a4)
        nextBlock->next = nullptr;
    80002e9c:	0007b423          	sd	zero,8(a5)
        nextBlock->prev = nullptr;
    80002ea0:	0007b823          	sd	zero,16(a5)
    80002ea4:	fd1ff06f          	j	80002e74 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>

0000000080002ea8 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void* ptr){
    80002ea8:	fd010113          	addi	sp,sp,-48
    80002eac:	02113423          	sd	ra,40(sp)
    80002eb0:	02813023          	sd	s0,32(sp)
    80002eb4:	00913c23          	sd	s1,24(sp)
    80002eb8:	01213823          	sd	s2,16(sp)
    80002ebc:	01313423          	sd	s3,8(sp)
    80002ec0:	03010413          	addi	s0,sp,48
    80002ec4:	00050993          	mv	s3,a0
    80002ec8:	00058913          	mv	s2,a1
    init();
    80002ecc:	00000097          	auipc	ra,0x0
    80002ed0:	e20080e7          	jalr	-480(ra) # 80002cec <_ZN15MemoryAllocator4initEv>
    if (ptr == nullptr) return -1;
    80002ed4:	0e090863          	beqz	s2,80002fc4 <_ZN15MemoryAllocator4freeEPv+0x11c>
    uint64 heapStart = (uint64)HEAP_START_ADDR;
    80002ed8:	00009797          	auipc	a5,0x9
    80002edc:	e107b783          	ld	a5,-496(a5) # 8000bce8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002ee0:	0007b683          	ld	a3,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002ee4:	00009797          	auipc	a5,0x9
    80002ee8:	e247b783          	ld	a5,-476(a5) # 8000bd08 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002eec:	0007b603          	ld	a2,0(a5)
    if (ptrAddr < heapStart + MEM_BLOCK_SIZE || ptrAddr >= heapEnd){
    80002ef0:	04068793          	addi	a5,a3,64
    80002ef4:	0cf96c63          	bltu	s2,a5,80002fcc <_ZN15MemoryAllocator4freeEPv+0x124>
    80002ef8:	0cc97e63          	bgeu	s2,a2,80002fd4 <_ZN15MemoryAllocator4freeEPv+0x12c>
    if ((ptrAddr - heapStart) % MEM_BLOCK_SIZE != 0){
    80002efc:	40d907b3          	sub	a5,s2,a3
    80002f00:	03f7f793          	andi	a5,a5,63
    80002f04:	0c079c63          	bnez	a5,80002fdc <_ZN15MemoryAllocator4freeEPv+0x134>
    FreeBlock* block = (FreeBlock*) ((char*) ptr - MEM_BLOCK_SIZE);
    80002f08:	fc090593          	addi	a1,s2,-64
    if (block->size < 2){
    80002f0c:	fc093783          	ld	a5,-64(s2)
    80002f10:	00100713          	li	a4,1
    80002f14:	0cf77863          	bgeu	a4,a5,80002fe4 <_ZN15MemoryAllocator4freeEPv+0x13c>
    if ((uint64) block < heapStart){
    80002f18:	00058713          	mv	a4,a1
    80002f1c:	0cd5e863          	bltu	a1,a3,80002fec <_ZN15MemoryAllocator4freeEPv+0x144>
    if ((uint64) block + block->size * MEM_BLOCK_SIZE > heapEnd){
    80002f20:	00679793          	slli	a5,a5,0x6
    80002f24:	00f586b3          	add	a3,a1,a5
    80002f28:	0cd66663          	bltu	a2,a3,80002ff4 <_ZN15MemoryAllocator4freeEPv+0x14c>
    FreeBlock* current = freeHead;
    80002f2c:	0009b783          	ld	a5,0(s3)
    FreeBlock* prev = nullptr;
    80002f30:	00000493          	li	s1,0
    while (current != nullptr && (uint64) current < (uint64) block){
    80002f34:	00078a63          	beqz	a5,80002f48 <_ZN15MemoryAllocator4freeEPv+0xa0>
    80002f38:	00e7f863          	bgeu	a5,a4,80002f48 <_ZN15MemoryAllocator4freeEPv+0xa0>
        prev = current;
    80002f3c:	00078493          	mv	s1,a5
        current = current->next;
    80002f40:	0087b783          	ld	a5,8(a5)
    while (current != nullptr && (uint64) current < (uint64) block){
    80002f44:	ff1ff06f          	j	80002f34 <_ZN15MemoryAllocator4freeEPv+0x8c>
    if (prev != nullptr &&
    80002f48:	00048a63          	beqz	s1,80002f5c <_ZN15MemoryAllocator4freeEPv+0xb4>
        (uint64) prev + prev->size * MEM_BLOCK_SIZE > (uint64) block) {
    80002f4c:	0004b603          	ld	a2,0(s1)
    80002f50:	00661613          	slli	a2,a2,0x6
    80002f54:	00c48633          	add	a2,s1,a2
    if (prev != nullptr &&
    80002f58:	0ac76263          	bltu	a4,a2,80002ffc <_ZN15MemoryAllocator4freeEPv+0x154>
    if (current!= nullptr && (uint64)block + block->size * MEM_BLOCK_SIZE > (uint64) current){
    80002f5c:	00078463          	beqz	a5,80002f64 <_ZN15MemoryAllocator4freeEPv+0xbc>
    80002f60:	0ad7e263          	bltu	a5,a3,80003004 <_ZN15MemoryAllocator4freeEPv+0x15c>
    block->prev = prev;
    80002f64:	fc993823          	sd	s1,-48(s2)
    block->next = current;
    80002f68:	fcf93423          	sd	a5,-56(s2)
    if (prev != nullptr){
    80002f6c:	04048863          	beqz	s1,80002fbc <_ZN15MemoryAllocator4freeEPv+0x114>
        prev->next = block;
    80002f70:	00b4b423          	sd	a1,8(s1)
    if (current != nullptr){
    80002f74:	00078463          	beqz	a5,80002f7c <_ZN15MemoryAllocator4freeEPv+0xd4>
        current->prev = block;
    80002f78:	00b7b823          	sd	a1,16(a5)
    tryToJoin(block);
    80002f7c:	00098513          	mv	a0,s3
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	ecc080e7          	jalr	-308(ra) # 80002e4c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    if (prev != nullptr){
    80002f88:	08048263          	beqz	s1,8000300c <_ZN15MemoryAllocator4freeEPv+0x164>
        tryToJoin(prev);
    80002f8c:	00048593          	mv	a1,s1
    80002f90:	00098513          	mv	a0,s3
    80002f94:	00000097          	auipc	ra,0x0
    80002f98:	eb8080e7          	jalr	-328(ra) # 80002e4c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    return 0;
    80002f9c:	00000513          	li	a0,0
}
    80002fa0:	02813083          	ld	ra,40(sp)
    80002fa4:	02013403          	ld	s0,32(sp)
    80002fa8:	01813483          	ld	s1,24(sp)
    80002fac:	01013903          	ld	s2,16(sp)
    80002fb0:	00813983          	ld	s3,8(sp)
    80002fb4:	03010113          	addi	sp,sp,48
    80002fb8:	00008067          	ret
        freeHead = block;
    80002fbc:	00b9b023          	sd	a1,0(s3)
    80002fc0:	fb5ff06f          	j	80002f74 <_ZN15MemoryAllocator4freeEPv+0xcc>
    if (ptr == nullptr) return -1;
    80002fc4:	fff00513          	li	a0,-1
    80002fc8:	fd9ff06f          	j	80002fa0 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002fcc:	fff00513          	li	a0,-1
    80002fd0:	fd1ff06f          	j	80002fa0 <_ZN15MemoryAllocator4freeEPv+0xf8>
    80002fd4:	fff00513          	li	a0,-1
    80002fd8:	fc9ff06f          	j	80002fa0 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002fdc:	fff00513          	li	a0,-1
    80002fe0:	fc1ff06f          	j	80002fa0 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002fe4:	fff00513          	li	a0,-1
    80002fe8:	fb9ff06f          	j	80002fa0 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002fec:	fff00513          	li	a0,-1
    80002ff0:	fb1ff06f          	j	80002fa0 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002ff4:	fff00513          	li	a0,-1
    80002ff8:	fa9ff06f          	j	80002fa0 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002ffc:	fff00513          	li	a0,-1
    80003000:	fa1ff06f          	j	80002fa0 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003004:	fff00513          	li	a0,-1
    80003008:	f99ff06f          	j	80002fa0 <_ZN15MemoryAllocator4freeEPv+0xf8>
    return 0;
    8000300c:	00000513          	li	a0,0
    80003010:	f91ff06f          	j	80002fa0 <_ZN15MemoryAllocator4freeEPv+0xf8>

0000000080003014 <_GLOBAL__sub_I__ZN15MemoryAllocatorC2Ev>:
    80003014:	ff010113          	addi	sp,sp,-16
    80003018:	00113423          	sd	ra,8(sp)
    8000301c:	00813023          	sd	s0,0(sp)
    80003020:	01010413          	addi	s0,sp,16
    80003024:	000105b7          	lui	a1,0x10
    80003028:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000302c:	00100513          	li	a0,1
    80003030:	00000097          	auipc	ra,0x0
    80003034:	c54080e7          	jalr	-940(ra) # 80002c84 <_Z41__static_initialization_and_destruction_0ii>
    80003038:	00813083          	ld	ra,8(sp)
    8000303c:	00013403          	ld	s0,0(sp)
    80003040:	01010113          	addi	sp,sp,16
    80003044:	00008067          	ret

0000000080003048 <_Z3modv>:
    }
private:
    MatrixData* data;
    int row;
};
void mod() {
    80003048:	f7010113          	addi	sp,sp,-144
    8000304c:	08113423          	sd	ra,136(sp)
    80003050:	08813023          	sd	s0,128(sp)
    80003054:	06913c23          	sd	s1,120(sp)
    80003058:	07213823          	sd	s2,112(sp)
    8000305c:	07313423          	sd	s3,104(sp)
    80003060:	07413023          	sd	s4,96(sp)
    80003064:	05513c23          	sd	s5,88(sp)
    80003068:	09010413          	addi	s0,sp,144
    printString("Matrix row test started - C++ API\n");
    8000306c:	00006517          	auipc	a0,0x6
    80003070:	31c50513          	addi	a0,a0,796 # 80009388 <CONSOLE_STATUS+0x378>
    80003074:	00003097          	auipc	ra,0x3
    80003078:	8cc080e7          	jalr	-1844(ra) # 80005940 <_Z11printStringPKc>

    MatrixData data;
    char input[30];

    printString("Unesite M broj redova: ");
    8000307c:	00006517          	auipc	a0,0x6
    80003080:	33450513          	addi	a0,a0,820 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80003084:	00003097          	auipc	ra,0x3
    80003088:	8bc080e7          	jalr	-1860(ra) # 80005940 <_Z11printStringPKc>
    getString(input, 30);
    8000308c:	01e00593          	li	a1,30
    80003090:	f8040493          	addi	s1,s0,-128
    80003094:	00048513          	mv	a0,s1
    80003098:	00003097          	auipc	ra,0x3
    8000309c:	930080e7          	jalr	-1744(ra) # 800059c8 <_Z9getStringPci>
    data.rows = stringToInt(input);
    800030a0:	00048513          	mv	a0,s1
    800030a4:	00003097          	auipc	ra,0x3
    800030a8:	9fc080e7          	jalr	-1540(ra) # 80005aa0 <_Z11stringToIntPKc>
    800030ac:	faa42823          	sw	a0,-80(s0)

    printString("Unesite N broj kolona: ");
    800030b0:	00006517          	auipc	a0,0x6
    800030b4:	31850513          	addi	a0,a0,792 # 800093c8 <CONSOLE_STATUS+0x3b8>
    800030b8:	00003097          	auipc	ra,0x3
    800030bc:	888080e7          	jalr	-1912(ra) # 80005940 <_Z11printStringPKc>
    getString(input, 30);
    800030c0:	01e00593          	li	a1,30
    800030c4:	00048513          	mv	a0,s1
    800030c8:	00003097          	auipc	ra,0x3
    800030cc:	900080e7          	jalr	-1792(ra) # 800059c8 <_Z9getStringPci>
    data.cols = stringToInt(input);
    800030d0:	00048513          	mv	a0,s1
    800030d4:	00003097          	auipc	ra,0x3
    800030d8:	9cc080e7          	jalr	-1588(ra) # 80005aa0 <_Z11stringToIntPKc>
    800030dc:	faa42a23          	sw	a0,-76(s0)
    data.matrix = (int**) mem_alloc(data.rows * sizeof(int*));
    800030e0:	fb042503          	lw	a0,-80(s0)
    800030e4:	00351513          	slli	a0,a0,0x3
    800030e8:	ffffe097          	auipc	ra,0xffffe
    800030ec:	110080e7          	jalr	272(ra) # 800011f8 <_Z9mem_allocm>
    800030f0:	faa43023          	sd	a0,-96(s0)
    data.rowsSums = (int*) mem_alloc(data.rows * sizeof(int));
    800030f4:	fb042503          	lw	a0,-80(s0)
    800030f8:	00251513          	slli	a0,a0,0x2
    800030fc:	ffffe097          	auipc	ra,0xffffe
    80003100:	0fc080e7          	jalr	252(ra) # 800011f8 <_Z9mem_allocm>
    80003104:	faa43423          	sd	a0,-88(s0)
    for (int i = 0; i < data.rows; i++) {
    80003108:	00000493          	li	s1,0
    8000310c:	fb042783          	lw	a5,-80(s0)
    80003110:	06f4d063          	bge	s1,a5,80003170 <_Z3modv+0x128>
        data.matrix[i] = (int*) mem_alloc(data.cols * sizeof(int));
    80003114:	fb442503          	lw	a0,-76(s0)
    80003118:	00349913          	slli	s2,s1,0x3
    8000311c:	fa043983          	ld	s3,-96(s0)
    80003120:	012989b3          	add	s3,s3,s2
    80003124:	00251513          	slli	a0,a0,0x2
    80003128:	ffffe097          	auipc	ra,0xffffe
    8000312c:	0d0080e7          	jalr	208(ra) # 800011f8 <_Z9mem_allocm>
    80003130:	00a9b023          	sd	a0,0(s3)

        if (data.matrix[i] == nullptr) {
    80003134:	fa043783          	ld	a5,-96(s0)
    80003138:	01278933          	add	s2,a5,s2
    8000313c:	00093783          	ld	a5,0(s2)
    80003140:	00078e63          	beqz	a5,8000315c <_Z3modv+0x114>
            printString("Greska pri alokaciji reda matrice\n");
            return;
        }

        data.rowsSums[i] = 0;
    80003144:	00249713          	slli	a4,s1,0x2
    80003148:	fa843783          	ld	a5,-88(s0)
    8000314c:	00e787b3          	add	a5,a5,a4
    80003150:	0007a023          	sw	zero,0(a5)
    for (int i = 0; i < data.rows; i++) {
    80003154:	0014849b          	addiw	s1,s1,1
    80003158:	fb5ff06f          	j	8000310c <_Z3modv+0xc4>
            printString("Greska pri alokaciji reda matrice\n");
    8000315c:	00006517          	auipc	a0,0x6
    80003160:	28450513          	addi	a0,a0,644 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80003164:	00002097          	auipc	ra,0x2
    80003168:	7dc080e7          	jalr	2012(ra) # 80005940 <_Z11printStringPKc>
            return;
    8000316c:	2040006f          	j	80003370 <_Z3modv+0x328>
    }
    int expectedSum = 0;
    int counter = 1;
    for (int i = 0; i < data.rows; i++) {
    80003170:	00000a93          	li	s5,0
    int counter = 1;
    80003174:	00100a13          	li	s4,1
    80003178:	0780006f          	j	800031f0 <_Z3modv+0x1a8>
        for (int j = 0; j < data.cols; j++) {
            printInt(counter);
    8000317c:	00000613          	li	a2,0
    80003180:	00a00593          	li	a1,10
    80003184:	000a0513          	mv	a0,s4
    80003188:	00003097          	auipc	ra,0x3
    8000318c:	968080e7          	jalr	-1688(ra) # 80005af0 <_Z8printIntiii>
            printString(". element: ");
    80003190:	00006517          	auipc	a0,0x6
    80003194:	27850513          	addi	a0,a0,632 # 80009408 <CONSOLE_STATUS+0x3f8>
    80003198:	00002097          	auipc	ra,0x2
    8000319c:	7a8080e7          	jalr	1960(ra) # 80005940 <_Z11printStringPKc>

            getString(input, 30);
    800031a0:	01e00593          	li	a1,30
    800031a4:	f8040493          	addi	s1,s0,-128
    800031a8:	00048513          	mv	a0,s1
    800031ac:	00003097          	auipc	ra,0x3
    800031b0:	81c080e7          	jalr	-2020(ra) # 800059c8 <_Z9getStringPci>

            data.matrix[i][j] = stringToInt(input);
    800031b4:	003a9793          	slli	a5,s5,0x3
    800031b8:	fa043703          	ld	a4,-96(s0)
    800031bc:	00f707b3          	add	a5,a4,a5
    800031c0:	0007b983          	ld	s3,0(a5)
    800031c4:	00291793          	slli	a5,s2,0x2
    800031c8:	00f989b3          	add	s3,s3,a5
    800031cc:	00048513          	mv	a0,s1
    800031d0:	00003097          	auipc	ra,0x3
    800031d4:	8d0080e7          	jalr	-1840(ra) # 80005aa0 <_Z11stringToIntPKc>
    800031d8:	00a9a023          	sw	a0,0(s3)
            expectedSum += data.matrix[i][j];

            counter++;
    800031dc:	001a0a1b          	addiw	s4,s4,1
        for (int j = 0; j < data.cols; j++) {
    800031e0:	0019091b          	addiw	s2,s2,1
    800031e4:	fb442783          	lw	a5,-76(s0)
    800031e8:	f8f94ae3          	blt	s2,a5,8000317c <_Z3modv+0x134>
    for (int i = 0; i < data.rows; i++) {
    800031ec:	001a8a9b          	addiw	s5,s5,1
    800031f0:	fb042783          	lw	a5,-80(s0)
    800031f4:	00fad663          	bge	s5,a5,80003200 <_Z3modv+0x1b8>
        for (int j = 0; j < data.cols; j++) {
    800031f8:	00000913          	li	s2,0
    800031fc:	fe9ff06f          	j	800031e4 <_Z3modv+0x19c>
        }
    }
    Semaphore done(0);
    80003200:	00000593          	li	a1,0
    80003204:	f7040493          	addi	s1,s0,-144
    80003208:	00048513          	mv	a0,s1
    8000320c:	00000097          	auipc	ra,0x0
    80003210:	884080e7          	jalr	-1916(ra) # 80002a90 <_ZN9SemaphoreC1Ej>
    data.done = &done;
    80003214:	fa943c23          	sd	s1,-72(s0)
    Worker* workers[MAX];
    for (int i = 0; i < data.rows; i++) {
    80003218:	00000913          	li	s2,0
    8000321c:	0380006f          	j	80003254 <_Z3modv+0x20c>
        workers[i] = new Worker(&data, i);
    80003220:	00050493          	mv	s1,a0
    Worker(MatrixData* data, int row):Thread() {
    80003224:	fffff097          	auipc	ra,0xfffff
    80003228:	748080e7          	jalr	1864(ra) # 8000296c <_ZN6ThreadC1Ev>
    8000322c:	00009797          	auipc	a5,0x9
    80003230:	8ec78793          	addi	a5,a5,-1812 # 8000bb18 <_ZTV6Worker+0x10>
    80003234:	00f4b023          	sd	a5,0(s1)
        this->row = row;
    80003238:	0324a423          	sw	s2,40(s1)
        this->data = data;
    8000323c:	fa040793          	addi	a5,s0,-96
    80003240:	02f4b023          	sd	a5,32(s1)
        workers[i]->start();
    80003244:	00048513          	mv	a0,s1
    80003248:	fffff097          	auipc	ra,0xfffff
    8000324c:	754080e7          	jalr	1876(ra) # 8000299c <_ZN6Thread5startEv>
    for (int i = 0; i < data.rows; i++) {
    80003250:	0019091b          	addiw	s2,s2,1
    80003254:	fb042783          	lw	a5,-80(s0)
    80003258:	00f95a63          	bge	s2,a5,8000326c <_Z3modv+0x224>
        workers[i] = new Worker(&data, i);
    8000325c:	03000513          	li	a0,48
    80003260:	fffff097          	auipc	ra,0xfffff
    80003264:	434080e7          	jalr	1076(ra) # 80002694 <_Znwm>
    80003268:	fb9ff06f          	j	80003220 <_Z3modv+0x1d8>
    }
    for (int i = 0; i < data.rows; i++) {
    8000326c:	00000493          	li	s1,0
    80003270:	0080006f          	j	80003278 <_Z3modv+0x230>
    80003274:	0014849b          	addiw	s1,s1,1
    80003278:	fb042783          	lw	a5,-80(s0)
    8000327c:	00f4da63          	bge	s1,a5,80003290 <_Z3modv+0x248>
        done.wait();
    80003280:	f7040513          	addi	a0,s0,-144
    80003284:	00000097          	auipc	ra,0x0
    80003288:	848080e7          	jalr	-1976(ra) # 80002acc <_ZN9Semaphore4waitEv>
    8000328c:	fe9ff06f          	j	80003274 <_Z3modv+0x22c>
    }

    int finalSum = 0;

    printString("\nZbirovi redova:\n");
    80003290:	00006517          	auipc	a0,0x6
    80003294:	18850513          	addi	a0,a0,392 # 80009418 <CONSOLE_STATUS+0x408>
    80003298:	00002097          	auipc	ra,0x2
    8000329c:	6a8080e7          	jalr	1704(ra) # 80005940 <_Z11printStringPKc>

    for (int i = 0; i < data.rows; i++) {
    800032a0:	00000493          	li	s1,0
    int finalSum = 0;
    800032a4:	00000993          	li	s3,0
    800032a8:	06c0006f          	j	80003314 <_Z3modv+0x2cc>
        printString("Red ");
        printInt(i);
    800032ac:	00000613          	li	a2,0
    800032b0:	00a00593          	li	a1,10
    800032b4:	00048513          	mv	a0,s1
    800032b8:	00003097          	auipc	ra,0x3
    800032bc:	838080e7          	jalr	-1992(ra) # 80005af0 <_Z8printIntiii>
        printString(": ");
    800032c0:	00006517          	auipc	a0,0x6
    800032c4:	3e050513          	addi	a0,a0,992 # 800096a0 <CONSOLE_STATUS+0x690>
    800032c8:	00002097          	auipc	ra,0x2
    800032cc:	678080e7          	jalr	1656(ra) # 80005940 <_Z11printStringPKc>
        printInt(data.rowsSums[i]);
    800032d0:	00249913          	slli	s2,s1,0x2
    800032d4:	fa843783          	ld	a5,-88(s0)
    800032d8:	012787b3          	add	a5,a5,s2
    800032dc:	00000613          	li	a2,0
    800032e0:	00a00593          	li	a1,10
    800032e4:	0007a503          	lw	a0,0(a5)
    800032e8:	00003097          	auipc	ra,0x3
    800032ec:	808080e7          	jalr	-2040(ra) # 80005af0 <_Z8printIntiii>
        printString("\n");
    800032f0:	00006517          	auipc	a0,0x6
    800032f4:	fc850513          	addi	a0,a0,-56 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800032f8:	00002097          	auipc	ra,0x2
    800032fc:	648080e7          	jalr	1608(ra) # 80005940 <_Z11printStringPKc>

        finalSum += data.rowsSums[i];
    80003300:	fa843783          	ld	a5,-88(s0)
    80003304:	012787b3          	add	a5,a5,s2
    80003308:	0007a783          	lw	a5,0(a5)
    8000330c:	013789bb          	addw	s3,a5,s3
    for (int i = 0; i < data.rows; i++) {
    80003310:	0014849b          	addiw	s1,s1,1
    80003314:	fb042783          	lw	a5,-80(s0)
    80003318:	00f4dc63          	bge	s1,a5,80003330 <_Z3modv+0x2e8>
        printString("Red ");
    8000331c:	00006517          	auipc	a0,0x6
    80003320:	11450513          	addi	a0,a0,276 # 80009430 <CONSOLE_STATUS+0x420>
    80003324:	00002097          	auipc	ra,0x2
    80003328:	61c080e7          	jalr	1564(ra) # 80005940 <_Z11printStringPKc>
    8000332c:	f81ff06f          	j	800032ac <_Z3modv+0x264>
    }

    printString("\nFinal matrix sum = ");
    80003330:	00006517          	auipc	a0,0x6
    80003334:	10850513          	addi	a0,a0,264 # 80009438 <CONSOLE_STATUS+0x428>
    80003338:	00002097          	auipc	ra,0x2
    8000333c:	608080e7          	jalr	1544(ra) # 80005940 <_Z11printStringPKc>
    printInt(finalSum);
    80003340:	00000613          	li	a2,0
    80003344:	00a00593          	li	a1,10
    80003348:	00098513          	mv	a0,s3
    8000334c:	00002097          	auipc	ra,0x2
    80003350:	7a4080e7          	jalr	1956(ra) # 80005af0 <_Z8printIntiii>
    printString("\n");
    80003354:	00006517          	auipc	a0,0x6
    80003358:	f6450513          	addi	a0,a0,-156 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000335c:	00002097          	auipc	ra,0x2
    80003360:	5e4080e7          	jalr	1508(ra) # 80005940 <_Z11printStringPKc>
    Semaphore done(0);
    80003364:	f7040513          	addi	a0,s0,-144
    80003368:	fffff097          	auipc	ra,0xfffff
    8000336c:	554080e7          	jalr	1364(ra) # 800028bc <_ZN9SemaphoreD1Ev>
    80003370:	08813083          	ld	ra,136(sp)
    80003374:	08013403          	ld	s0,128(sp)
    80003378:	07813483          	ld	s1,120(sp)
    8000337c:	07013903          	ld	s2,112(sp)
    80003380:	06813983          	ld	s3,104(sp)
    80003384:	06013a03          	ld	s4,96(sp)
    80003388:	05813a83          	ld	s5,88(sp)
    8000338c:	09010113          	addi	sp,sp,144
    80003390:	00008067          	ret
    80003394:	00050913          	mv	s2,a0
        workers[i] = new Worker(&data, i);
    80003398:	00048513          	mv	a0,s1
    8000339c:	fffff097          	auipc	ra,0xfffff
    800033a0:	348080e7          	jalr	840(ra) # 800026e4 <_ZdlPv>
    Semaphore done(0);
    800033a4:	f7040513          	addi	a0,s0,-144
    800033a8:	fffff097          	auipc	ra,0xfffff
    800033ac:	514080e7          	jalr	1300(ra) # 800028bc <_ZN9SemaphoreD1Ev>
    800033b0:	00090513          	mv	a0,s2
    800033b4:	0000a097          	auipc	ra,0xa
    800033b8:	b04080e7          	jalr	-1276(ra) # 8000ceb8 <_Unwind_Resume>
    800033bc:	00050913          	mv	s2,a0
    800033c0:	fe5ff06f          	j	800033a4 <_Z3modv+0x35c>

00000000800033c4 <_ZN6Worker3runEv>:
    void run() override {
    800033c4:	ff010113          	addi	sp,sp,-16
    800033c8:	00113423          	sd	ra,8(sp)
    800033cc:	00813023          	sd	s0,0(sp)
    800033d0:	01010413          	addi	s0,sp,16
        for (int i = 0; i < data->cols; i++) {
    800033d4:	00000793          	li	a5,0
        int sum = 0;
    800033d8:	00000613          	li	a2,0
        for (int i = 0; i < data->cols; i++) {
    800033dc:	02053703          	ld	a4,32(a0)
    800033e0:	01472683          	lw	a3,20(a4)
    800033e4:	02d7d863          	bge	a5,a3,80003414 <_ZN6Worker3runEv+0x50>
            sum += data->matrix[row][i];
    800033e8:	00073703          	ld	a4,0(a4)
    800033ec:	02852683          	lw	a3,40(a0)
    800033f0:	00369693          	slli	a3,a3,0x3
    800033f4:	00d70733          	add	a4,a4,a3
    800033f8:	00073703          	ld	a4,0(a4)
    800033fc:	00279693          	slli	a3,a5,0x2
    80003400:	00d70733          	add	a4,a4,a3
    80003404:	00072703          	lw	a4,0(a4)
    80003408:	00c7063b          	addw	a2,a4,a2
        for (int i = 0; i < data->cols; i++) {
    8000340c:	0017879b          	addiw	a5,a5,1
    80003410:	fcdff06f          	j	800033dc <_ZN6Worker3runEv+0x18>
        data->rowsSums[row] = sum;
    80003414:	00873783          	ld	a5,8(a4)
    80003418:	02852703          	lw	a4,40(a0)
    8000341c:	00271713          	slli	a4,a4,0x2
    80003420:	00e787b3          	add	a5,a5,a4
    80003424:	00c7a023          	sw	a2,0(a5)
        data->done->signal();
    80003428:	02053783          	ld	a5,32(a0)
    8000342c:	0187b503          	ld	a0,24(a5)
    80003430:	fffff097          	auipc	ra,0xfffff
    80003434:	6c8080e7          	jalr	1736(ra) # 80002af8 <_ZN9Semaphore6signalEv>
    }
    80003438:	00813083          	ld	ra,8(sp)
    8000343c:	00013403          	ld	s0,0(sp)
    80003440:	01010113          	addi	sp,sp,16
    80003444:	00008067          	ret

0000000080003448 <_ZN6WorkerD1Ev>:
class Worker: public Thread {
    80003448:	ff010113          	addi	sp,sp,-16
    8000344c:	00113423          	sd	ra,8(sp)
    80003450:	00813023          	sd	s0,0(sp)
    80003454:	01010413          	addi	s0,sp,16
    80003458:	00008797          	auipc	a5,0x8
    8000345c:	6c078793          	addi	a5,a5,1728 # 8000bb18 <_ZTV6Worker+0x10>
    80003460:	00f53023          	sd	a5,0(a0)
    80003464:	fffff097          	auipc	ra,0xfffff
    80003468:	3e4080e7          	jalr	996(ra) # 80002848 <_ZN6ThreadD1Ev>
    8000346c:	00813083          	ld	ra,8(sp)
    80003470:	00013403          	ld	s0,0(sp)
    80003474:	01010113          	addi	sp,sp,16
    80003478:	00008067          	ret

000000008000347c <_ZN6WorkerD0Ev>:
    8000347c:	fe010113          	addi	sp,sp,-32
    80003480:	00113c23          	sd	ra,24(sp)
    80003484:	00813823          	sd	s0,16(sp)
    80003488:	00913423          	sd	s1,8(sp)
    8000348c:	02010413          	addi	s0,sp,32
    80003490:	00050493          	mv	s1,a0
    80003494:	00008797          	auipc	a5,0x8
    80003498:	68478793          	addi	a5,a5,1668 # 8000bb18 <_ZTV6Worker+0x10>
    8000349c:	00f53023          	sd	a5,0(a0)
    800034a0:	fffff097          	auipc	ra,0xfffff
    800034a4:	3a8080e7          	jalr	936(ra) # 80002848 <_ZN6ThreadD1Ev>
    800034a8:	00048513          	mv	a0,s1
    800034ac:	fffff097          	auipc	ra,0xfffff
    800034b0:	238080e7          	jalr	568(ra) # 800026e4 <_ZdlPv>
    800034b4:	01813083          	ld	ra,24(sp)
    800034b8:	01013403          	ld	s0,16(sp)
    800034bc:	00813483          	ld	s1,8(sp)
    800034c0:	02010113          	addi	sp,sp,32
    800034c4:	00008067          	ret

00000000800034c8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800034c8:	fe010113          	addi	sp,sp,-32
    800034cc:	00113c23          	sd	ra,24(sp)
    800034d0:	00813823          	sd	s0,16(sp)
    800034d4:	00913423          	sd	s1,8(sp)
    800034d8:	01213023          	sd	s2,0(sp)
    800034dc:	02010413          	addi	s0,sp,32
    800034e0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800034e4:	00000913          	li	s2,0
    800034e8:	00c0006f          	j	800034f4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800034ec:	ffffe097          	auipc	ra,0xffffe
    800034f0:	f18080e7          	jalr	-232(ra) # 80001404 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800034f4:	ffffe097          	auipc	ra,0xffffe
    800034f8:	118080e7          	jalr	280(ra) # 8000160c <_Z4getcv>
    800034fc:	0005059b          	sext.w	a1,a0
    80003500:	01b00793          	li	a5,27
    80003504:	02f58a63          	beq	a1,a5,80003538 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003508:	0084b503          	ld	a0,8(s1)
    8000350c:	00003097          	auipc	ra,0x3
    80003510:	5b0080e7          	jalr	1456(ra) # 80006abc <_ZN6Buffer3putEi>
        i++;
    80003514:	0019071b          	addiw	a4,s2,1
    80003518:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000351c:	0004a683          	lw	a3,0(s1)
    80003520:	0026979b          	slliw	a5,a3,0x2
    80003524:	00d787bb          	addw	a5,a5,a3
    80003528:	0017979b          	slliw	a5,a5,0x1
    8000352c:	02f767bb          	remw	a5,a4,a5
    80003530:	fc0792e3          	bnez	a5,800034f4 <_ZL16producerKeyboardPv+0x2c>
    80003534:	fb9ff06f          	j	800034ec <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003538:	00100793          	li	a5,1
    8000353c:	00009717          	auipc	a4,0x9
    80003540:	86f72223          	sw	a5,-1948(a4) # 8000bda0 <_ZL9threadEnd>
    data->buffer->put('!');
    80003544:	02100593          	li	a1,33
    80003548:	0084b503          	ld	a0,8(s1)
    8000354c:	00003097          	auipc	ra,0x3
    80003550:	570080e7          	jalr	1392(ra) # 80006abc <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003554:	0104b503          	ld	a0,16(s1)
    80003558:	ffffe097          	auipc	ra,0xffffe
    8000355c:	fac080e7          	jalr	-84(ra) # 80001504 <_Z10sem_signalP4_sem>
}
    80003560:	01813083          	ld	ra,24(sp)
    80003564:	01013403          	ld	s0,16(sp)
    80003568:	00813483          	ld	s1,8(sp)
    8000356c:	00013903          	ld	s2,0(sp)
    80003570:	02010113          	addi	sp,sp,32
    80003574:	00008067          	ret

0000000080003578 <_ZL8producerPv>:

static void producer(void *arg) {
    80003578:	fe010113          	addi	sp,sp,-32
    8000357c:	00113c23          	sd	ra,24(sp)
    80003580:	00813823          	sd	s0,16(sp)
    80003584:	00913423          	sd	s1,8(sp)
    80003588:	01213023          	sd	s2,0(sp)
    8000358c:	02010413          	addi	s0,sp,32
    80003590:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003594:	00000913          	li	s2,0
    80003598:	00c0006f          	j	800035a4 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000359c:	ffffe097          	auipc	ra,0xffffe
    800035a0:	e68080e7          	jalr	-408(ra) # 80001404 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800035a4:	00008797          	auipc	a5,0x8
    800035a8:	7fc7a783          	lw	a5,2044(a5) # 8000bda0 <_ZL9threadEnd>
    800035ac:	02079e63          	bnez	a5,800035e8 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800035b0:	0004a583          	lw	a1,0(s1)
    800035b4:	0305859b          	addiw	a1,a1,48
    800035b8:	0084b503          	ld	a0,8(s1)
    800035bc:	00003097          	auipc	ra,0x3
    800035c0:	500080e7          	jalr	1280(ra) # 80006abc <_ZN6Buffer3putEi>
        i++;
    800035c4:	0019071b          	addiw	a4,s2,1
    800035c8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800035cc:	0004a683          	lw	a3,0(s1)
    800035d0:	0026979b          	slliw	a5,a3,0x2
    800035d4:	00d787bb          	addw	a5,a5,a3
    800035d8:	0017979b          	slliw	a5,a5,0x1
    800035dc:	02f767bb          	remw	a5,a4,a5
    800035e0:	fc0792e3          	bnez	a5,800035a4 <_ZL8producerPv+0x2c>
    800035e4:	fb9ff06f          	j	8000359c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800035e8:	0104b503          	ld	a0,16(s1)
    800035ec:	ffffe097          	auipc	ra,0xffffe
    800035f0:	f18080e7          	jalr	-232(ra) # 80001504 <_Z10sem_signalP4_sem>
}
    800035f4:	01813083          	ld	ra,24(sp)
    800035f8:	01013403          	ld	s0,16(sp)
    800035fc:	00813483          	ld	s1,8(sp)
    80003600:	00013903          	ld	s2,0(sp)
    80003604:	02010113          	addi	sp,sp,32
    80003608:	00008067          	ret

000000008000360c <_ZL8consumerPv>:

static void consumer(void *arg) {
    8000360c:	fd010113          	addi	sp,sp,-48
    80003610:	02113423          	sd	ra,40(sp)
    80003614:	02813023          	sd	s0,32(sp)
    80003618:	00913c23          	sd	s1,24(sp)
    8000361c:	01213823          	sd	s2,16(sp)
    80003620:	01313423          	sd	s3,8(sp)
    80003624:	03010413          	addi	s0,sp,48
    80003628:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000362c:	00000993          	li	s3,0
    80003630:	01c0006f          	j	8000364c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003634:	ffffe097          	auipc	ra,0xffffe
    80003638:	dd0080e7          	jalr	-560(ra) # 80001404 <_Z15thread_dispatchv>
    8000363c:	0500006f          	j	8000368c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003640:	00a00513          	li	a0,10
    80003644:	ffffe097          	auipc	ra,0xffffe
    80003648:	008080e7          	jalr	8(ra) # 8000164c <_Z4putcc>
    while (!threadEnd) {
    8000364c:	00008797          	auipc	a5,0x8
    80003650:	7547a783          	lw	a5,1876(a5) # 8000bda0 <_ZL9threadEnd>
    80003654:	06079063          	bnez	a5,800036b4 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003658:	00893503          	ld	a0,8(s2)
    8000365c:	00003097          	auipc	ra,0x3
    80003660:	4f0080e7          	jalr	1264(ra) # 80006b4c <_ZN6Buffer3getEv>
        i++;
    80003664:	0019849b          	addiw	s1,s3,1
    80003668:	0004899b          	sext.w	s3,s1
        putc(key);
    8000366c:	0ff57513          	andi	a0,a0,255
    80003670:	ffffe097          	auipc	ra,0xffffe
    80003674:	fdc080e7          	jalr	-36(ra) # 8000164c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003678:	00092703          	lw	a4,0(s2)
    8000367c:	0027179b          	slliw	a5,a4,0x2
    80003680:	00e787bb          	addw	a5,a5,a4
    80003684:	02f4e7bb          	remw	a5,s1,a5
    80003688:	fa0786e3          	beqz	a5,80003634 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    8000368c:	05000793          	li	a5,80
    80003690:	02f4e4bb          	remw	s1,s1,a5
    80003694:	fa049ce3          	bnez	s1,8000364c <_ZL8consumerPv+0x40>
    80003698:	fa9ff06f          	j	80003640 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    8000369c:	00893503          	ld	a0,8(s2)
    800036a0:	00003097          	auipc	ra,0x3
    800036a4:	4ac080e7          	jalr	1196(ra) # 80006b4c <_ZN6Buffer3getEv>
        putc(key);
    800036a8:	0ff57513          	andi	a0,a0,255
    800036ac:	ffffe097          	auipc	ra,0xffffe
    800036b0:	fa0080e7          	jalr	-96(ra) # 8000164c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800036b4:	00893503          	ld	a0,8(s2)
    800036b8:	00003097          	auipc	ra,0x3
    800036bc:	520080e7          	jalr	1312(ra) # 80006bd8 <_ZN6Buffer6getCntEv>
    800036c0:	fca04ee3          	bgtz	a0,8000369c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800036c4:	01093503          	ld	a0,16(s2)
    800036c8:	ffffe097          	auipc	ra,0xffffe
    800036cc:	e3c080e7          	jalr	-452(ra) # 80001504 <_Z10sem_signalP4_sem>
}
    800036d0:	02813083          	ld	ra,40(sp)
    800036d4:	02013403          	ld	s0,32(sp)
    800036d8:	01813483          	ld	s1,24(sp)
    800036dc:	01013903          	ld	s2,16(sp)
    800036e0:	00813983          	ld	s3,8(sp)
    800036e4:	03010113          	addi	sp,sp,48
    800036e8:	00008067          	ret

00000000800036ec <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800036ec:	f9010113          	addi	sp,sp,-112
    800036f0:	06113423          	sd	ra,104(sp)
    800036f4:	06813023          	sd	s0,96(sp)
    800036f8:	04913c23          	sd	s1,88(sp)
    800036fc:	05213823          	sd	s2,80(sp)
    80003700:	05313423          	sd	s3,72(sp)
    80003704:	05413023          	sd	s4,64(sp)
    80003708:	03513c23          	sd	s5,56(sp)
    8000370c:	03613823          	sd	s6,48(sp)
    80003710:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003714:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003718:	00006517          	auipc	a0,0x6
    8000371c:	d3850513          	addi	a0,a0,-712 # 80009450 <CONSOLE_STATUS+0x440>
    80003720:	00002097          	auipc	ra,0x2
    80003724:	220080e7          	jalr	544(ra) # 80005940 <_Z11printStringPKc>
    getString(input, 30);
    80003728:	01e00593          	li	a1,30
    8000372c:	fa040493          	addi	s1,s0,-96
    80003730:	00048513          	mv	a0,s1
    80003734:	00002097          	auipc	ra,0x2
    80003738:	294080e7          	jalr	660(ra) # 800059c8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000373c:	00048513          	mv	a0,s1
    80003740:	00002097          	auipc	ra,0x2
    80003744:	360080e7          	jalr	864(ra) # 80005aa0 <_Z11stringToIntPKc>
    80003748:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000374c:	00006517          	auipc	a0,0x6
    80003750:	d2450513          	addi	a0,a0,-732 # 80009470 <CONSOLE_STATUS+0x460>
    80003754:	00002097          	auipc	ra,0x2
    80003758:	1ec080e7          	jalr	492(ra) # 80005940 <_Z11printStringPKc>
    getString(input, 30);
    8000375c:	01e00593          	li	a1,30
    80003760:	00048513          	mv	a0,s1
    80003764:	00002097          	auipc	ra,0x2
    80003768:	264080e7          	jalr	612(ra) # 800059c8 <_Z9getStringPci>
    n = stringToInt(input);
    8000376c:	00048513          	mv	a0,s1
    80003770:	00002097          	auipc	ra,0x2
    80003774:	330080e7          	jalr	816(ra) # 80005aa0 <_Z11stringToIntPKc>
    80003778:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000377c:	00006517          	auipc	a0,0x6
    80003780:	d1450513          	addi	a0,a0,-748 # 80009490 <CONSOLE_STATUS+0x480>
    80003784:	00002097          	auipc	ra,0x2
    80003788:	1bc080e7          	jalr	444(ra) # 80005940 <_Z11printStringPKc>
    8000378c:	00000613          	li	a2,0
    80003790:	00a00593          	li	a1,10
    80003794:	00090513          	mv	a0,s2
    80003798:	00002097          	auipc	ra,0x2
    8000379c:	358080e7          	jalr	856(ra) # 80005af0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800037a0:	00006517          	auipc	a0,0x6
    800037a4:	d0850513          	addi	a0,a0,-760 # 800094a8 <CONSOLE_STATUS+0x498>
    800037a8:	00002097          	auipc	ra,0x2
    800037ac:	198080e7          	jalr	408(ra) # 80005940 <_Z11printStringPKc>
    800037b0:	00000613          	li	a2,0
    800037b4:	00a00593          	li	a1,10
    800037b8:	00048513          	mv	a0,s1
    800037bc:	00002097          	auipc	ra,0x2
    800037c0:	334080e7          	jalr	820(ra) # 80005af0 <_Z8printIntiii>
    printString(".\n");
    800037c4:	00006517          	auipc	a0,0x6
    800037c8:	cfc50513          	addi	a0,a0,-772 # 800094c0 <CONSOLE_STATUS+0x4b0>
    800037cc:	00002097          	auipc	ra,0x2
    800037d0:	174080e7          	jalr	372(ra) # 80005940 <_Z11printStringPKc>
    if(threadNum > n) {
    800037d4:	0324c463          	blt	s1,s2,800037fc <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800037d8:	03205c63          	blez	s2,80003810 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800037dc:	03800513          	li	a0,56
    800037e0:	fffff097          	auipc	ra,0xfffff
    800037e4:	eb4080e7          	jalr	-332(ra) # 80002694 <_Znwm>
    800037e8:	00050a13          	mv	s4,a0
    800037ec:	00048593          	mv	a1,s1
    800037f0:	00003097          	auipc	ra,0x3
    800037f4:	230080e7          	jalr	560(ra) # 80006a20 <_ZN6BufferC1Ei>
    800037f8:	0300006f          	j	80003828 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800037fc:	00006517          	auipc	a0,0x6
    80003800:	ccc50513          	addi	a0,a0,-820 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80003804:	00002097          	auipc	ra,0x2
    80003808:	13c080e7          	jalr	316(ra) # 80005940 <_Z11printStringPKc>
        return;
    8000380c:	0140006f          	j	80003820 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003810:	00006517          	auipc	a0,0x6
    80003814:	cf850513          	addi	a0,a0,-776 # 80009508 <CONSOLE_STATUS+0x4f8>
    80003818:	00002097          	auipc	ra,0x2
    8000381c:	128080e7          	jalr	296(ra) # 80005940 <_Z11printStringPKc>
        return;
    80003820:	000b0113          	mv	sp,s6
    80003824:	1500006f          	j	80003974 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003828:	00000593          	li	a1,0
    8000382c:	00008517          	auipc	a0,0x8
    80003830:	57c50513          	addi	a0,a0,1404 # 8000bda8 <_ZL10waitForAll>
    80003834:	ffffe097          	auipc	ra,0xffffe
    80003838:	c0c080e7          	jalr	-1012(ra) # 80001440 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    8000383c:	00391793          	slli	a5,s2,0x3
    80003840:	00f78793          	addi	a5,a5,15
    80003844:	ff07f793          	andi	a5,a5,-16
    80003848:	40f10133          	sub	sp,sp,a5
    8000384c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003850:	0019071b          	addiw	a4,s2,1
    80003854:	00171793          	slli	a5,a4,0x1
    80003858:	00e787b3          	add	a5,a5,a4
    8000385c:	00379793          	slli	a5,a5,0x3
    80003860:	00f78793          	addi	a5,a5,15
    80003864:	ff07f793          	andi	a5,a5,-16
    80003868:	40f10133          	sub	sp,sp,a5
    8000386c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003870:	00191613          	slli	a2,s2,0x1
    80003874:	012607b3          	add	a5,a2,s2
    80003878:	00379793          	slli	a5,a5,0x3
    8000387c:	00f987b3          	add	a5,s3,a5
    80003880:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003884:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003888:	00008717          	auipc	a4,0x8
    8000388c:	52073703          	ld	a4,1312(a4) # 8000bda8 <_ZL10waitForAll>
    80003890:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003894:	00078613          	mv	a2,a5
    80003898:	00000597          	auipc	a1,0x0
    8000389c:	d7458593          	addi	a1,a1,-652 # 8000360c <_ZL8consumerPv>
    800038a0:	f9840513          	addi	a0,s0,-104
    800038a4:	ffffe097          	auipc	ra,0xffffe
    800038a8:	9e0080e7          	jalr	-1568(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800038ac:	00000493          	li	s1,0
    800038b0:	0280006f          	j	800038d8 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800038b4:	00000597          	auipc	a1,0x0
    800038b8:	c1458593          	addi	a1,a1,-1004 # 800034c8 <_ZL16producerKeyboardPv>
                      data + i);
    800038bc:	00179613          	slli	a2,a5,0x1
    800038c0:	00f60633          	add	a2,a2,a5
    800038c4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800038c8:	00c98633          	add	a2,s3,a2
    800038cc:	ffffe097          	auipc	ra,0xffffe
    800038d0:	9b8080e7          	jalr	-1608(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800038d4:	0014849b          	addiw	s1,s1,1
    800038d8:	0524d263          	bge	s1,s2,8000391c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800038dc:	00149793          	slli	a5,s1,0x1
    800038e0:	009787b3          	add	a5,a5,s1
    800038e4:	00379793          	slli	a5,a5,0x3
    800038e8:	00f987b3          	add	a5,s3,a5
    800038ec:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800038f0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800038f4:	00008717          	auipc	a4,0x8
    800038f8:	4b473703          	ld	a4,1204(a4) # 8000bda8 <_ZL10waitForAll>
    800038fc:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003900:	00048793          	mv	a5,s1
    80003904:	00349513          	slli	a0,s1,0x3
    80003908:	00aa8533          	add	a0,s5,a0
    8000390c:	fa9054e3          	blez	s1,800038b4 <_Z22producerConsumer_C_APIv+0x1c8>
    80003910:	00000597          	auipc	a1,0x0
    80003914:	c6858593          	addi	a1,a1,-920 # 80003578 <_ZL8producerPv>
    80003918:	fa5ff06f          	j	800038bc <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    8000391c:	ffffe097          	auipc	ra,0xffffe
    80003920:	ae8080e7          	jalr	-1304(ra) # 80001404 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003924:	00000493          	li	s1,0
    80003928:	00994e63          	blt	s2,s1,80003944 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    8000392c:	00008517          	auipc	a0,0x8
    80003930:	47c53503          	ld	a0,1148(a0) # 8000bda8 <_ZL10waitForAll>
    80003934:	ffffe097          	auipc	ra,0xffffe
    80003938:	b90080e7          	jalr	-1136(ra) # 800014c4 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    8000393c:	0014849b          	addiw	s1,s1,1
    80003940:	fe9ff06f          	j	80003928 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003944:	00008517          	auipc	a0,0x8
    80003948:	46453503          	ld	a0,1124(a0) # 8000bda8 <_ZL10waitForAll>
    8000394c:	ffffe097          	auipc	ra,0xffffe
    80003950:	b38080e7          	jalr	-1224(ra) # 80001484 <_Z9sem_closeP4_sem>
    delete buffer;
    80003954:	000a0e63          	beqz	s4,80003970 <_Z22producerConsumer_C_APIv+0x284>
    80003958:	000a0513          	mv	a0,s4
    8000395c:	00003097          	auipc	ra,0x3
    80003960:	304080e7          	jalr	772(ra) # 80006c60 <_ZN6BufferD1Ev>
    80003964:	000a0513          	mv	a0,s4
    80003968:	fffff097          	auipc	ra,0xfffff
    8000396c:	d7c080e7          	jalr	-644(ra) # 800026e4 <_ZdlPv>
    80003970:	000b0113          	mv	sp,s6

}
    80003974:	f9040113          	addi	sp,s0,-112
    80003978:	06813083          	ld	ra,104(sp)
    8000397c:	06013403          	ld	s0,96(sp)
    80003980:	05813483          	ld	s1,88(sp)
    80003984:	05013903          	ld	s2,80(sp)
    80003988:	04813983          	ld	s3,72(sp)
    8000398c:	04013a03          	ld	s4,64(sp)
    80003990:	03813a83          	ld	s5,56(sp)
    80003994:	03013b03          	ld	s6,48(sp)
    80003998:	07010113          	addi	sp,sp,112
    8000399c:	00008067          	ret
    800039a0:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800039a4:	000a0513          	mv	a0,s4
    800039a8:	fffff097          	auipc	ra,0xfffff
    800039ac:	d3c080e7          	jalr	-708(ra) # 800026e4 <_ZdlPv>
    800039b0:	00048513          	mv	a0,s1
    800039b4:	00009097          	auipc	ra,0x9
    800039b8:	504080e7          	jalr	1284(ra) # 8000ceb8 <_Unwind_Resume>

00000000800039bc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800039bc:	fe010113          	addi	sp,sp,-32
    800039c0:	00113c23          	sd	ra,24(sp)
    800039c4:	00813823          	sd	s0,16(sp)
    800039c8:	00913423          	sd	s1,8(sp)
    800039cc:	01213023          	sd	s2,0(sp)
    800039d0:	02010413          	addi	s0,sp,32
    800039d4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800039d8:	00100793          	li	a5,1
    800039dc:	02a7f863          	bgeu	a5,a0,80003a0c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800039e0:	00a00793          	li	a5,10
    800039e4:	02f577b3          	remu	a5,a0,a5
    800039e8:	02078e63          	beqz	a5,80003a24 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800039ec:	fff48513          	addi	a0,s1,-1
    800039f0:	00000097          	auipc	ra,0x0
    800039f4:	fcc080e7          	jalr	-52(ra) # 800039bc <_ZL9fibonaccim>
    800039f8:	00050913          	mv	s2,a0
    800039fc:	ffe48513          	addi	a0,s1,-2
    80003a00:	00000097          	auipc	ra,0x0
    80003a04:	fbc080e7          	jalr	-68(ra) # 800039bc <_ZL9fibonaccim>
    80003a08:	00a90533          	add	a0,s2,a0
}
    80003a0c:	01813083          	ld	ra,24(sp)
    80003a10:	01013403          	ld	s0,16(sp)
    80003a14:	00813483          	ld	s1,8(sp)
    80003a18:	00013903          	ld	s2,0(sp)
    80003a1c:	02010113          	addi	sp,sp,32
    80003a20:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003a24:	ffffe097          	auipc	ra,0xffffe
    80003a28:	9e0080e7          	jalr	-1568(ra) # 80001404 <_Z15thread_dispatchv>
    80003a2c:	fc1ff06f          	j	800039ec <_ZL9fibonaccim+0x30>

0000000080003a30 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003a30:	fe010113          	addi	sp,sp,-32
    80003a34:	00113c23          	sd	ra,24(sp)
    80003a38:	00813823          	sd	s0,16(sp)
    80003a3c:	00913423          	sd	s1,8(sp)
    80003a40:	01213023          	sd	s2,0(sp)
    80003a44:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003a48:	00000913          	li	s2,0
    80003a4c:	0380006f          	j	80003a84 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003a50:	ffffe097          	auipc	ra,0xffffe
    80003a54:	9b4080e7          	jalr	-1612(ra) # 80001404 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003a58:	00148493          	addi	s1,s1,1
    80003a5c:	000027b7          	lui	a5,0x2
    80003a60:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003a64:	0097ee63          	bltu	a5,s1,80003a80 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003a68:	00000713          	li	a4,0
    80003a6c:	000077b7          	lui	a5,0x7
    80003a70:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003a74:	fce7eee3          	bltu	a5,a4,80003a50 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003a78:	00170713          	addi	a4,a4,1
    80003a7c:	ff1ff06f          	j	80003a6c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003a80:	00190913          	addi	s2,s2,1
    80003a84:	00900793          	li	a5,9
    80003a88:	0527e063          	bltu	a5,s2,80003ac8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003a8c:	00006517          	auipc	a0,0x6
    80003a90:	aac50513          	addi	a0,a0,-1364 # 80009538 <CONSOLE_STATUS+0x528>
    80003a94:	00002097          	auipc	ra,0x2
    80003a98:	eac080e7          	jalr	-340(ra) # 80005940 <_Z11printStringPKc>
    80003a9c:	00000613          	li	a2,0
    80003aa0:	00a00593          	li	a1,10
    80003aa4:	0009051b          	sext.w	a0,s2
    80003aa8:	00002097          	auipc	ra,0x2
    80003aac:	048080e7          	jalr	72(ra) # 80005af0 <_Z8printIntiii>
    80003ab0:	00006517          	auipc	a0,0x6
    80003ab4:	80850513          	addi	a0,a0,-2040 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003ab8:	00002097          	auipc	ra,0x2
    80003abc:	e88080e7          	jalr	-376(ra) # 80005940 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003ac0:	00000493          	li	s1,0
    80003ac4:	f99ff06f          	j	80003a5c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003ac8:	00006517          	auipc	a0,0x6
    80003acc:	a7850513          	addi	a0,a0,-1416 # 80009540 <CONSOLE_STATUS+0x530>
    80003ad0:	00002097          	auipc	ra,0x2
    80003ad4:	e70080e7          	jalr	-400(ra) # 80005940 <_Z11printStringPKc>
    finishedA = true;
    80003ad8:	00100793          	li	a5,1
    80003adc:	00008717          	auipc	a4,0x8
    80003ae0:	2cf70a23          	sb	a5,724(a4) # 8000bdb0 <_ZL9finishedA>
}
    80003ae4:	01813083          	ld	ra,24(sp)
    80003ae8:	01013403          	ld	s0,16(sp)
    80003aec:	00813483          	ld	s1,8(sp)
    80003af0:	00013903          	ld	s2,0(sp)
    80003af4:	02010113          	addi	sp,sp,32
    80003af8:	00008067          	ret

0000000080003afc <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003afc:	fe010113          	addi	sp,sp,-32
    80003b00:	00113c23          	sd	ra,24(sp)
    80003b04:	00813823          	sd	s0,16(sp)
    80003b08:	00913423          	sd	s1,8(sp)
    80003b0c:	01213023          	sd	s2,0(sp)
    80003b10:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003b14:	00000913          	li	s2,0
    80003b18:	0380006f          	j	80003b50 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003b1c:	ffffe097          	auipc	ra,0xffffe
    80003b20:	8e8080e7          	jalr	-1816(ra) # 80001404 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003b24:	00148493          	addi	s1,s1,1
    80003b28:	000027b7          	lui	a5,0x2
    80003b2c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003b30:	0097ee63          	bltu	a5,s1,80003b4c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003b34:	00000713          	li	a4,0
    80003b38:	000077b7          	lui	a5,0x7
    80003b3c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003b40:	fce7eee3          	bltu	a5,a4,80003b1c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003b44:	00170713          	addi	a4,a4,1
    80003b48:	ff1ff06f          	j	80003b38 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003b4c:	00190913          	addi	s2,s2,1
    80003b50:	00f00793          	li	a5,15
    80003b54:	0527e063          	bltu	a5,s2,80003b94 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003b58:	00006517          	auipc	a0,0x6
    80003b5c:	9f850513          	addi	a0,a0,-1544 # 80009550 <CONSOLE_STATUS+0x540>
    80003b60:	00002097          	auipc	ra,0x2
    80003b64:	de0080e7          	jalr	-544(ra) # 80005940 <_Z11printStringPKc>
    80003b68:	00000613          	li	a2,0
    80003b6c:	00a00593          	li	a1,10
    80003b70:	0009051b          	sext.w	a0,s2
    80003b74:	00002097          	auipc	ra,0x2
    80003b78:	f7c080e7          	jalr	-132(ra) # 80005af0 <_Z8printIntiii>
    80003b7c:	00005517          	auipc	a0,0x5
    80003b80:	73c50513          	addi	a0,a0,1852 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003b84:	00002097          	auipc	ra,0x2
    80003b88:	dbc080e7          	jalr	-580(ra) # 80005940 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003b8c:	00000493          	li	s1,0
    80003b90:	f99ff06f          	j	80003b28 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003b94:	00006517          	auipc	a0,0x6
    80003b98:	9c450513          	addi	a0,a0,-1596 # 80009558 <CONSOLE_STATUS+0x548>
    80003b9c:	00002097          	auipc	ra,0x2
    80003ba0:	da4080e7          	jalr	-604(ra) # 80005940 <_Z11printStringPKc>
    finishedB = true;
    80003ba4:	00100793          	li	a5,1
    80003ba8:	00008717          	auipc	a4,0x8
    80003bac:	20f704a3          	sb	a5,521(a4) # 8000bdb1 <_ZL9finishedB>
    thread_dispatch();
    80003bb0:	ffffe097          	auipc	ra,0xffffe
    80003bb4:	854080e7          	jalr	-1964(ra) # 80001404 <_Z15thread_dispatchv>
}
    80003bb8:	01813083          	ld	ra,24(sp)
    80003bbc:	01013403          	ld	s0,16(sp)
    80003bc0:	00813483          	ld	s1,8(sp)
    80003bc4:	00013903          	ld	s2,0(sp)
    80003bc8:	02010113          	addi	sp,sp,32
    80003bcc:	00008067          	ret

0000000080003bd0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003bd0:	fe010113          	addi	sp,sp,-32
    80003bd4:	00113c23          	sd	ra,24(sp)
    80003bd8:	00813823          	sd	s0,16(sp)
    80003bdc:	00913423          	sd	s1,8(sp)
    80003be0:	01213023          	sd	s2,0(sp)
    80003be4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003be8:	00000493          	li	s1,0
    80003bec:	0400006f          	j	80003c2c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003bf0:	00006517          	auipc	a0,0x6
    80003bf4:	97850513          	addi	a0,a0,-1672 # 80009568 <CONSOLE_STATUS+0x558>
    80003bf8:	00002097          	auipc	ra,0x2
    80003bfc:	d48080e7          	jalr	-696(ra) # 80005940 <_Z11printStringPKc>
    80003c00:	00000613          	li	a2,0
    80003c04:	00a00593          	li	a1,10
    80003c08:	00048513          	mv	a0,s1
    80003c0c:	00002097          	auipc	ra,0x2
    80003c10:	ee4080e7          	jalr	-284(ra) # 80005af0 <_Z8printIntiii>
    80003c14:	00005517          	auipc	a0,0x5
    80003c18:	6a450513          	addi	a0,a0,1700 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003c1c:	00002097          	auipc	ra,0x2
    80003c20:	d24080e7          	jalr	-732(ra) # 80005940 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003c24:	0014849b          	addiw	s1,s1,1
    80003c28:	0ff4f493          	andi	s1,s1,255
    80003c2c:	00200793          	li	a5,2
    80003c30:	fc97f0e3          	bgeu	a5,s1,80003bf0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003c34:	00006517          	auipc	a0,0x6
    80003c38:	93c50513          	addi	a0,a0,-1732 # 80009570 <CONSOLE_STATUS+0x560>
    80003c3c:	00002097          	auipc	ra,0x2
    80003c40:	d04080e7          	jalr	-764(ra) # 80005940 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003c44:	00700313          	li	t1,7
    thread_dispatch();
    80003c48:	ffffd097          	auipc	ra,0xffffd
    80003c4c:	7bc080e7          	jalr	1980(ra) # 80001404 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003c50:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003c54:	00006517          	auipc	a0,0x6
    80003c58:	92c50513          	addi	a0,a0,-1748 # 80009580 <CONSOLE_STATUS+0x570>
    80003c5c:	00002097          	auipc	ra,0x2
    80003c60:	ce4080e7          	jalr	-796(ra) # 80005940 <_Z11printStringPKc>
    80003c64:	00000613          	li	a2,0
    80003c68:	00a00593          	li	a1,10
    80003c6c:	0009051b          	sext.w	a0,s2
    80003c70:	00002097          	auipc	ra,0x2
    80003c74:	e80080e7          	jalr	-384(ra) # 80005af0 <_Z8printIntiii>
    80003c78:	00005517          	auipc	a0,0x5
    80003c7c:	64050513          	addi	a0,a0,1600 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003c80:	00002097          	auipc	ra,0x2
    80003c84:	cc0080e7          	jalr	-832(ra) # 80005940 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003c88:	00c00513          	li	a0,12
    80003c8c:	00000097          	auipc	ra,0x0
    80003c90:	d30080e7          	jalr	-720(ra) # 800039bc <_ZL9fibonaccim>
    80003c94:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003c98:	00006517          	auipc	a0,0x6
    80003c9c:	8f050513          	addi	a0,a0,-1808 # 80009588 <CONSOLE_STATUS+0x578>
    80003ca0:	00002097          	auipc	ra,0x2
    80003ca4:	ca0080e7          	jalr	-864(ra) # 80005940 <_Z11printStringPKc>
    80003ca8:	00000613          	li	a2,0
    80003cac:	00a00593          	li	a1,10
    80003cb0:	0009051b          	sext.w	a0,s2
    80003cb4:	00002097          	auipc	ra,0x2
    80003cb8:	e3c080e7          	jalr	-452(ra) # 80005af0 <_Z8printIntiii>
    80003cbc:	00005517          	auipc	a0,0x5
    80003cc0:	5fc50513          	addi	a0,a0,1532 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003cc4:	00002097          	auipc	ra,0x2
    80003cc8:	c7c080e7          	jalr	-900(ra) # 80005940 <_Z11printStringPKc>
    80003ccc:	0400006f          	j	80003d0c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003cd0:	00006517          	auipc	a0,0x6
    80003cd4:	89850513          	addi	a0,a0,-1896 # 80009568 <CONSOLE_STATUS+0x558>
    80003cd8:	00002097          	auipc	ra,0x2
    80003cdc:	c68080e7          	jalr	-920(ra) # 80005940 <_Z11printStringPKc>
    80003ce0:	00000613          	li	a2,0
    80003ce4:	00a00593          	li	a1,10
    80003ce8:	00048513          	mv	a0,s1
    80003cec:	00002097          	auipc	ra,0x2
    80003cf0:	e04080e7          	jalr	-508(ra) # 80005af0 <_Z8printIntiii>
    80003cf4:	00005517          	auipc	a0,0x5
    80003cf8:	5c450513          	addi	a0,a0,1476 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003cfc:	00002097          	auipc	ra,0x2
    80003d00:	c44080e7          	jalr	-956(ra) # 80005940 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003d04:	0014849b          	addiw	s1,s1,1
    80003d08:	0ff4f493          	andi	s1,s1,255
    80003d0c:	00500793          	li	a5,5
    80003d10:	fc97f0e3          	bgeu	a5,s1,80003cd0 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003d14:	00006517          	auipc	a0,0x6
    80003d18:	82c50513          	addi	a0,a0,-2004 # 80009540 <CONSOLE_STATUS+0x530>
    80003d1c:	00002097          	auipc	ra,0x2
    80003d20:	c24080e7          	jalr	-988(ra) # 80005940 <_Z11printStringPKc>
    finishedC = true;
    80003d24:	00100793          	li	a5,1
    80003d28:	00008717          	auipc	a4,0x8
    80003d2c:	08f70523          	sb	a5,138(a4) # 8000bdb2 <_ZL9finishedC>
    thread_dispatch();
    80003d30:	ffffd097          	auipc	ra,0xffffd
    80003d34:	6d4080e7          	jalr	1748(ra) # 80001404 <_Z15thread_dispatchv>
}
    80003d38:	01813083          	ld	ra,24(sp)
    80003d3c:	01013403          	ld	s0,16(sp)
    80003d40:	00813483          	ld	s1,8(sp)
    80003d44:	00013903          	ld	s2,0(sp)
    80003d48:	02010113          	addi	sp,sp,32
    80003d4c:	00008067          	ret

0000000080003d50 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003d50:	fe010113          	addi	sp,sp,-32
    80003d54:	00113c23          	sd	ra,24(sp)
    80003d58:	00813823          	sd	s0,16(sp)
    80003d5c:	00913423          	sd	s1,8(sp)
    80003d60:	01213023          	sd	s2,0(sp)
    80003d64:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003d68:	00a00493          	li	s1,10
    80003d6c:	0400006f          	j	80003dac <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003d70:	00006517          	auipc	a0,0x6
    80003d74:	82850513          	addi	a0,a0,-2008 # 80009598 <CONSOLE_STATUS+0x588>
    80003d78:	00002097          	auipc	ra,0x2
    80003d7c:	bc8080e7          	jalr	-1080(ra) # 80005940 <_Z11printStringPKc>
    80003d80:	00000613          	li	a2,0
    80003d84:	00a00593          	li	a1,10
    80003d88:	00048513          	mv	a0,s1
    80003d8c:	00002097          	auipc	ra,0x2
    80003d90:	d64080e7          	jalr	-668(ra) # 80005af0 <_Z8printIntiii>
    80003d94:	00005517          	auipc	a0,0x5
    80003d98:	52450513          	addi	a0,a0,1316 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003d9c:	00002097          	auipc	ra,0x2
    80003da0:	ba4080e7          	jalr	-1116(ra) # 80005940 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003da4:	0014849b          	addiw	s1,s1,1
    80003da8:	0ff4f493          	andi	s1,s1,255
    80003dac:	00c00793          	li	a5,12
    80003db0:	fc97f0e3          	bgeu	a5,s1,80003d70 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003db4:	00005517          	auipc	a0,0x5
    80003db8:	7ec50513          	addi	a0,a0,2028 # 800095a0 <CONSOLE_STATUS+0x590>
    80003dbc:	00002097          	auipc	ra,0x2
    80003dc0:	b84080e7          	jalr	-1148(ra) # 80005940 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003dc4:	00500313          	li	t1,5
    thread_dispatch();
    80003dc8:	ffffd097          	auipc	ra,0xffffd
    80003dcc:	63c080e7          	jalr	1596(ra) # 80001404 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003dd0:	01000513          	li	a0,16
    80003dd4:	00000097          	auipc	ra,0x0
    80003dd8:	be8080e7          	jalr	-1048(ra) # 800039bc <_ZL9fibonaccim>
    80003ddc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003de0:	00005517          	auipc	a0,0x5
    80003de4:	7d050513          	addi	a0,a0,2000 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80003de8:	00002097          	auipc	ra,0x2
    80003dec:	b58080e7          	jalr	-1192(ra) # 80005940 <_Z11printStringPKc>
    80003df0:	00000613          	li	a2,0
    80003df4:	00a00593          	li	a1,10
    80003df8:	0009051b          	sext.w	a0,s2
    80003dfc:	00002097          	auipc	ra,0x2
    80003e00:	cf4080e7          	jalr	-780(ra) # 80005af0 <_Z8printIntiii>
    80003e04:	00005517          	auipc	a0,0x5
    80003e08:	4b450513          	addi	a0,a0,1204 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003e0c:	00002097          	auipc	ra,0x2
    80003e10:	b34080e7          	jalr	-1228(ra) # 80005940 <_Z11printStringPKc>
    80003e14:	0400006f          	j	80003e54 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003e18:	00005517          	auipc	a0,0x5
    80003e1c:	78050513          	addi	a0,a0,1920 # 80009598 <CONSOLE_STATUS+0x588>
    80003e20:	00002097          	auipc	ra,0x2
    80003e24:	b20080e7          	jalr	-1248(ra) # 80005940 <_Z11printStringPKc>
    80003e28:	00000613          	li	a2,0
    80003e2c:	00a00593          	li	a1,10
    80003e30:	00048513          	mv	a0,s1
    80003e34:	00002097          	auipc	ra,0x2
    80003e38:	cbc080e7          	jalr	-836(ra) # 80005af0 <_Z8printIntiii>
    80003e3c:	00005517          	auipc	a0,0x5
    80003e40:	47c50513          	addi	a0,a0,1148 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003e44:	00002097          	auipc	ra,0x2
    80003e48:	afc080e7          	jalr	-1284(ra) # 80005940 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003e4c:	0014849b          	addiw	s1,s1,1
    80003e50:	0ff4f493          	andi	s1,s1,255
    80003e54:	00f00793          	li	a5,15
    80003e58:	fc97f0e3          	bgeu	a5,s1,80003e18 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003e5c:	00005517          	auipc	a0,0x5
    80003e60:	76450513          	addi	a0,a0,1892 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80003e64:	00002097          	auipc	ra,0x2
    80003e68:	adc080e7          	jalr	-1316(ra) # 80005940 <_Z11printStringPKc>
    finishedD = true;
    80003e6c:	00100793          	li	a5,1
    80003e70:	00008717          	auipc	a4,0x8
    80003e74:	f4f701a3          	sb	a5,-189(a4) # 8000bdb3 <_ZL9finishedD>
    thread_dispatch();
    80003e78:	ffffd097          	auipc	ra,0xffffd
    80003e7c:	58c080e7          	jalr	1420(ra) # 80001404 <_Z15thread_dispatchv>
}
    80003e80:	01813083          	ld	ra,24(sp)
    80003e84:	01013403          	ld	s0,16(sp)
    80003e88:	00813483          	ld	s1,8(sp)
    80003e8c:	00013903          	ld	s2,0(sp)
    80003e90:	02010113          	addi	sp,sp,32
    80003e94:	00008067          	ret

0000000080003e98 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003e98:	fc010113          	addi	sp,sp,-64
    80003e9c:	02113c23          	sd	ra,56(sp)
    80003ea0:	02813823          	sd	s0,48(sp)
    80003ea4:	02913423          	sd	s1,40(sp)
    80003ea8:	03213023          	sd	s2,32(sp)
    80003eac:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003eb0:	02000513          	li	a0,32
    80003eb4:	ffffe097          	auipc	ra,0xffffe
    80003eb8:	7e0080e7          	jalr	2016(ra) # 80002694 <_Znwm>
    80003ebc:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003ec0:	fffff097          	auipc	ra,0xfffff
    80003ec4:	aac080e7          	jalr	-1364(ra) # 8000296c <_ZN6ThreadC1Ev>
    80003ec8:	00008797          	auipc	a5,0x8
    80003ecc:	c7878793          	addi	a5,a5,-904 # 8000bb40 <_ZTV7WorkerA+0x10>
    80003ed0:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003ed4:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003ed8:	00005517          	auipc	a0,0x5
    80003edc:	6f850513          	addi	a0,a0,1784 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80003ee0:	00002097          	auipc	ra,0x2
    80003ee4:	a60080e7          	jalr	-1440(ra) # 80005940 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003ee8:	02000513          	li	a0,32
    80003eec:	ffffe097          	auipc	ra,0xffffe
    80003ef0:	7a8080e7          	jalr	1960(ra) # 80002694 <_Znwm>
    80003ef4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003ef8:	fffff097          	auipc	ra,0xfffff
    80003efc:	a74080e7          	jalr	-1420(ra) # 8000296c <_ZN6ThreadC1Ev>
    80003f00:	00008797          	auipc	a5,0x8
    80003f04:	c6878793          	addi	a5,a5,-920 # 8000bb68 <_ZTV7WorkerB+0x10>
    80003f08:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003f0c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003f10:	00005517          	auipc	a0,0x5
    80003f14:	6d850513          	addi	a0,a0,1752 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80003f18:	00002097          	auipc	ra,0x2
    80003f1c:	a28080e7          	jalr	-1496(ra) # 80005940 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003f20:	02000513          	li	a0,32
    80003f24:	ffffe097          	auipc	ra,0xffffe
    80003f28:	770080e7          	jalr	1904(ra) # 80002694 <_Znwm>
    80003f2c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003f30:	fffff097          	auipc	ra,0xfffff
    80003f34:	a3c080e7          	jalr	-1476(ra) # 8000296c <_ZN6ThreadC1Ev>
    80003f38:	00008797          	auipc	a5,0x8
    80003f3c:	c5878793          	addi	a5,a5,-936 # 8000bb90 <_ZTV7WorkerC+0x10>
    80003f40:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003f44:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003f48:	00005517          	auipc	a0,0x5
    80003f4c:	6b850513          	addi	a0,a0,1720 # 80009600 <CONSOLE_STATUS+0x5f0>
    80003f50:	00002097          	auipc	ra,0x2
    80003f54:	9f0080e7          	jalr	-1552(ra) # 80005940 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003f58:	02000513          	li	a0,32
    80003f5c:	ffffe097          	auipc	ra,0xffffe
    80003f60:	738080e7          	jalr	1848(ra) # 80002694 <_Znwm>
    80003f64:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003f68:	fffff097          	auipc	ra,0xfffff
    80003f6c:	a04080e7          	jalr	-1532(ra) # 8000296c <_ZN6ThreadC1Ev>
    80003f70:	00008797          	auipc	a5,0x8
    80003f74:	c4878793          	addi	a5,a5,-952 # 8000bbb8 <_ZTV7WorkerD+0x10>
    80003f78:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003f7c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003f80:	00005517          	auipc	a0,0x5
    80003f84:	69850513          	addi	a0,a0,1688 # 80009618 <CONSOLE_STATUS+0x608>
    80003f88:	00002097          	auipc	ra,0x2
    80003f8c:	9b8080e7          	jalr	-1608(ra) # 80005940 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003f90:	00000493          	li	s1,0
    80003f94:	00300793          	li	a5,3
    80003f98:	0297c663          	blt	a5,s1,80003fc4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003f9c:	00349793          	slli	a5,s1,0x3
    80003fa0:	fe040713          	addi	a4,s0,-32
    80003fa4:	00f707b3          	add	a5,a4,a5
    80003fa8:	fe07b503          	ld	a0,-32(a5)
    80003fac:	fffff097          	auipc	ra,0xfffff
    80003fb0:	9f0080e7          	jalr	-1552(ra) # 8000299c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003fb4:	0014849b          	addiw	s1,s1,1
    80003fb8:	fddff06f          	j	80003f94 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003fbc:	fffff097          	auipc	ra,0xfffff
    80003fc0:	a34080e7          	jalr	-1484(ra) # 800029f0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003fc4:	00008797          	auipc	a5,0x8
    80003fc8:	dec7c783          	lbu	a5,-532(a5) # 8000bdb0 <_ZL9finishedA>
    80003fcc:	fe0788e3          	beqz	a5,80003fbc <_Z20Threads_CPP_API_testv+0x124>
    80003fd0:	00008797          	auipc	a5,0x8
    80003fd4:	de17c783          	lbu	a5,-543(a5) # 8000bdb1 <_ZL9finishedB>
    80003fd8:	fe0782e3          	beqz	a5,80003fbc <_Z20Threads_CPP_API_testv+0x124>
    80003fdc:	00008797          	auipc	a5,0x8
    80003fe0:	dd67c783          	lbu	a5,-554(a5) # 8000bdb2 <_ZL9finishedC>
    80003fe4:	fc078ce3          	beqz	a5,80003fbc <_Z20Threads_CPP_API_testv+0x124>
    80003fe8:	00008797          	auipc	a5,0x8
    80003fec:	dcb7c783          	lbu	a5,-565(a5) # 8000bdb3 <_ZL9finishedD>
    80003ff0:	fc0786e3          	beqz	a5,80003fbc <_Z20Threads_CPP_API_testv+0x124>
    80003ff4:	fc040493          	addi	s1,s0,-64
    80003ff8:	0080006f          	j	80004000 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003ffc:	00848493          	addi	s1,s1,8
    80004000:	fe040793          	addi	a5,s0,-32
    80004004:	08f48663          	beq	s1,a5,80004090 <_Z20Threads_CPP_API_testv+0x1f8>
    80004008:	0004b503          	ld	a0,0(s1)
    8000400c:	fe0508e3          	beqz	a0,80003ffc <_Z20Threads_CPP_API_testv+0x164>
    80004010:	00053783          	ld	a5,0(a0)
    80004014:	0087b783          	ld	a5,8(a5)
    80004018:	000780e7          	jalr	a5
    8000401c:	fe1ff06f          	j	80003ffc <_Z20Threads_CPP_API_testv+0x164>
    80004020:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004024:	00048513          	mv	a0,s1
    80004028:	ffffe097          	auipc	ra,0xffffe
    8000402c:	6bc080e7          	jalr	1724(ra) # 800026e4 <_ZdlPv>
    80004030:	00090513          	mv	a0,s2
    80004034:	00009097          	auipc	ra,0x9
    80004038:	e84080e7          	jalr	-380(ra) # 8000ceb8 <_Unwind_Resume>
    8000403c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004040:	00048513          	mv	a0,s1
    80004044:	ffffe097          	auipc	ra,0xffffe
    80004048:	6a0080e7          	jalr	1696(ra) # 800026e4 <_ZdlPv>
    8000404c:	00090513          	mv	a0,s2
    80004050:	00009097          	auipc	ra,0x9
    80004054:	e68080e7          	jalr	-408(ra) # 8000ceb8 <_Unwind_Resume>
    80004058:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000405c:	00048513          	mv	a0,s1
    80004060:	ffffe097          	auipc	ra,0xffffe
    80004064:	684080e7          	jalr	1668(ra) # 800026e4 <_ZdlPv>
    80004068:	00090513          	mv	a0,s2
    8000406c:	00009097          	auipc	ra,0x9
    80004070:	e4c080e7          	jalr	-436(ra) # 8000ceb8 <_Unwind_Resume>
    80004074:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004078:	00048513          	mv	a0,s1
    8000407c:	ffffe097          	auipc	ra,0xffffe
    80004080:	668080e7          	jalr	1640(ra) # 800026e4 <_ZdlPv>
    80004084:	00090513          	mv	a0,s2
    80004088:	00009097          	auipc	ra,0x9
    8000408c:	e30080e7          	jalr	-464(ra) # 8000ceb8 <_Unwind_Resume>
}
    80004090:	03813083          	ld	ra,56(sp)
    80004094:	03013403          	ld	s0,48(sp)
    80004098:	02813483          	ld	s1,40(sp)
    8000409c:	02013903          	ld	s2,32(sp)
    800040a0:	04010113          	addi	sp,sp,64
    800040a4:	00008067          	ret

00000000800040a8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800040a8:	ff010113          	addi	sp,sp,-16
    800040ac:	00113423          	sd	ra,8(sp)
    800040b0:	00813023          	sd	s0,0(sp)
    800040b4:	01010413          	addi	s0,sp,16
    800040b8:	00008797          	auipc	a5,0x8
    800040bc:	a8878793          	addi	a5,a5,-1400 # 8000bb40 <_ZTV7WorkerA+0x10>
    800040c0:	00f53023          	sd	a5,0(a0)
    800040c4:	ffffe097          	auipc	ra,0xffffe
    800040c8:	784080e7          	jalr	1924(ra) # 80002848 <_ZN6ThreadD1Ev>
    800040cc:	00813083          	ld	ra,8(sp)
    800040d0:	00013403          	ld	s0,0(sp)
    800040d4:	01010113          	addi	sp,sp,16
    800040d8:	00008067          	ret

00000000800040dc <_ZN7WorkerAD0Ev>:
    800040dc:	fe010113          	addi	sp,sp,-32
    800040e0:	00113c23          	sd	ra,24(sp)
    800040e4:	00813823          	sd	s0,16(sp)
    800040e8:	00913423          	sd	s1,8(sp)
    800040ec:	02010413          	addi	s0,sp,32
    800040f0:	00050493          	mv	s1,a0
    800040f4:	00008797          	auipc	a5,0x8
    800040f8:	a4c78793          	addi	a5,a5,-1460 # 8000bb40 <_ZTV7WorkerA+0x10>
    800040fc:	00f53023          	sd	a5,0(a0)
    80004100:	ffffe097          	auipc	ra,0xffffe
    80004104:	748080e7          	jalr	1864(ra) # 80002848 <_ZN6ThreadD1Ev>
    80004108:	00048513          	mv	a0,s1
    8000410c:	ffffe097          	auipc	ra,0xffffe
    80004110:	5d8080e7          	jalr	1496(ra) # 800026e4 <_ZdlPv>
    80004114:	01813083          	ld	ra,24(sp)
    80004118:	01013403          	ld	s0,16(sp)
    8000411c:	00813483          	ld	s1,8(sp)
    80004120:	02010113          	addi	sp,sp,32
    80004124:	00008067          	ret

0000000080004128 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004128:	ff010113          	addi	sp,sp,-16
    8000412c:	00113423          	sd	ra,8(sp)
    80004130:	00813023          	sd	s0,0(sp)
    80004134:	01010413          	addi	s0,sp,16
    80004138:	00008797          	auipc	a5,0x8
    8000413c:	a3078793          	addi	a5,a5,-1488 # 8000bb68 <_ZTV7WorkerB+0x10>
    80004140:	00f53023          	sd	a5,0(a0)
    80004144:	ffffe097          	auipc	ra,0xffffe
    80004148:	704080e7          	jalr	1796(ra) # 80002848 <_ZN6ThreadD1Ev>
    8000414c:	00813083          	ld	ra,8(sp)
    80004150:	00013403          	ld	s0,0(sp)
    80004154:	01010113          	addi	sp,sp,16
    80004158:	00008067          	ret

000000008000415c <_ZN7WorkerBD0Ev>:
    8000415c:	fe010113          	addi	sp,sp,-32
    80004160:	00113c23          	sd	ra,24(sp)
    80004164:	00813823          	sd	s0,16(sp)
    80004168:	00913423          	sd	s1,8(sp)
    8000416c:	02010413          	addi	s0,sp,32
    80004170:	00050493          	mv	s1,a0
    80004174:	00008797          	auipc	a5,0x8
    80004178:	9f478793          	addi	a5,a5,-1548 # 8000bb68 <_ZTV7WorkerB+0x10>
    8000417c:	00f53023          	sd	a5,0(a0)
    80004180:	ffffe097          	auipc	ra,0xffffe
    80004184:	6c8080e7          	jalr	1736(ra) # 80002848 <_ZN6ThreadD1Ev>
    80004188:	00048513          	mv	a0,s1
    8000418c:	ffffe097          	auipc	ra,0xffffe
    80004190:	558080e7          	jalr	1368(ra) # 800026e4 <_ZdlPv>
    80004194:	01813083          	ld	ra,24(sp)
    80004198:	01013403          	ld	s0,16(sp)
    8000419c:	00813483          	ld	s1,8(sp)
    800041a0:	02010113          	addi	sp,sp,32
    800041a4:	00008067          	ret

00000000800041a8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800041a8:	ff010113          	addi	sp,sp,-16
    800041ac:	00113423          	sd	ra,8(sp)
    800041b0:	00813023          	sd	s0,0(sp)
    800041b4:	01010413          	addi	s0,sp,16
    800041b8:	00008797          	auipc	a5,0x8
    800041bc:	9d878793          	addi	a5,a5,-1576 # 8000bb90 <_ZTV7WorkerC+0x10>
    800041c0:	00f53023          	sd	a5,0(a0)
    800041c4:	ffffe097          	auipc	ra,0xffffe
    800041c8:	684080e7          	jalr	1668(ra) # 80002848 <_ZN6ThreadD1Ev>
    800041cc:	00813083          	ld	ra,8(sp)
    800041d0:	00013403          	ld	s0,0(sp)
    800041d4:	01010113          	addi	sp,sp,16
    800041d8:	00008067          	ret

00000000800041dc <_ZN7WorkerCD0Ev>:
    800041dc:	fe010113          	addi	sp,sp,-32
    800041e0:	00113c23          	sd	ra,24(sp)
    800041e4:	00813823          	sd	s0,16(sp)
    800041e8:	00913423          	sd	s1,8(sp)
    800041ec:	02010413          	addi	s0,sp,32
    800041f0:	00050493          	mv	s1,a0
    800041f4:	00008797          	auipc	a5,0x8
    800041f8:	99c78793          	addi	a5,a5,-1636 # 8000bb90 <_ZTV7WorkerC+0x10>
    800041fc:	00f53023          	sd	a5,0(a0)
    80004200:	ffffe097          	auipc	ra,0xffffe
    80004204:	648080e7          	jalr	1608(ra) # 80002848 <_ZN6ThreadD1Ev>
    80004208:	00048513          	mv	a0,s1
    8000420c:	ffffe097          	auipc	ra,0xffffe
    80004210:	4d8080e7          	jalr	1240(ra) # 800026e4 <_ZdlPv>
    80004214:	01813083          	ld	ra,24(sp)
    80004218:	01013403          	ld	s0,16(sp)
    8000421c:	00813483          	ld	s1,8(sp)
    80004220:	02010113          	addi	sp,sp,32
    80004224:	00008067          	ret

0000000080004228 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004228:	ff010113          	addi	sp,sp,-16
    8000422c:	00113423          	sd	ra,8(sp)
    80004230:	00813023          	sd	s0,0(sp)
    80004234:	01010413          	addi	s0,sp,16
    80004238:	00008797          	auipc	a5,0x8
    8000423c:	98078793          	addi	a5,a5,-1664 # 8000bbb8 <_ZTV7WorkerD+0x10>
    80004240:	00f53023          	sd	a5,0(a0)
    80004244:	ffffe097          	auipc	ra,0xffffe
    80004248:	604080e7          	jalr	1540(ra) # 80002848 <_ZN6ThreadD1Ev>
    8000424c:	00813083          	ld	ra,8(sp)
    80004250:	00013403          	ld	s0,0(sp)
    80004254:	01010113          	addi	sp,sp,16
    80004258:	00008067          	ret

000000008000425c <_ZN7WorkerDD0Ev>:
    8000425c:	fe010113          	addi	sp,sp,-32
    80004260:	00113c23          	sd	ra,24(sp)
    80004264:	00813823          	sd	s0,16(sp)
    80004268:	00913423          	sd	s1,8(sp)
    8000426c:	02010413          	addi	s0,sp,32
    80004270:	00050493          	mv	s1,a0
    80004274:	00008797          	auipc	a5,0x8
    80004278:	94478793          	addi	a5,a5,-1724 # 8000bbb8 <_ZTV7WorkerD+0x10>
    8000427c:	00f53023          	sd	a5,0(a0)
    80004280:	ffffe097          	auipc	ra,0xffffe
    80004284:	5c8080e7          	jalr	1480(ra) # 80002848 <_ZN6ThreadD1Ev>
    80004288:	00048513          	mv	a0,s1
    8000428c:	ffffe097          	auipc	ra,0xffffe
    80004290:	458080e7          	jalr	1112(ra) # 800026e4 <_ZdlPv>
    80004294:	01813083          	ld	ra,24(sp)
    80004298:	01013403          	ld	s0,16(sp)
    8000429c:	00813483          	ld	s1,8(sp)
    800042a0:	02010113          	addi	sp,sp,32
    800042a4:	00008067          	ret

00000000800042a8 <_ZN7WorkerA3runEv>:
    void run() override {
    800042a8:	ff010113          	addi	sp,sp,-16
    800042ac:	00113423          	sd	ra,8(sp)
    800042b0:	00813023          	sd	s0,0(sp)
    800042b4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800042b8:	00000593          	li	a1,0
    800042bc:	fffff097          	auipc	ra,0xfffff
    800042c0:	774080e7          	jalr	1908(ra) # 80003a30 <_ZN7WorkerA11workerBodyAEPv>
    }
    800042c4:	00813083          	ld	ra,8(sp)
    800042c8:	00013403          	ld	s0,0(sp)
    800042cc:	01010113          	addi	sp,sp,16
    800042d0:	00008067          	ret

00000000800042d4 <_ZN7WorkerB3runEv>:
    void run() override {
    800042d4:	ff010113          	addi	sp,sp,-16
    800042d8:	00113423          	sd	ra,8(sp)
    800042dc:	00813023          	sd	s0,0(sp)
    800042e0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800042e4:	00000593          	li	a1,0
    800042e8:	00000097          	auipc	ra,0x0
    800042ec:	814080e7          	jalr	-2028(ra) # 80003afc <_ZN7WorkerB11workerBodyBEPv>
    }
    800042f0:	00813083          	ld	ra,8(sp)
    800042f4:	00013403          	ld	s0,0(sp)
    800042f8:	01010113          	addi	sp,sp,16
    800042fc:	00008067          	ret

0000000080004300 <_ZN7WorkerC3runEv>:
    void run() override {
    80004300:	ff010113          	addi	sp,sp,-16
    80004304:	00113423          	sd	ra,8(sp)
    80004308:	00813023          	sd	s0,0(sp)
    8000430c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004310:	00000593          	li	a1,0
    80004314:	00000097          	auipc	ra,0x0
    80004318:	8bc080e7          	jalr	-1860(ra) # 80003bd0 <_ZN7WorkerC11workerBodyCEPv>
    }
    8000431c:	00813083          	ld	ra,8(sp)
    80004320:	00013403          	ld	s0,0(sp)
    80004324:	01010113          	addi	sp,sp,16
    80004328:	00008067          	ret

000000008000432c <_ZN7WorkerD3runEv>:
    void run() override {
    8000432c:	ff010113          	addi	sp,sp,-16
    80004330:	00113423          	sd	ra,8(sp)
    80004334:	00813023          	sd	s0,0(sp)
    80004338:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    8000433c:	00000593          	li	a1,0
    80004340:	00000097          	auipc	ra,0x0
    80004344:	a10080e7          	jalr	-1520(ra) # 80003d50 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004348:	00813083          	ld	ra,8(sp)
    8000434c:	00013403          	ld	s0,0(sp)
    80004350:	01010113          	addi	sp,sp,16
    80004354:	00008067          	ret

0000000080004358 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004358:	f8010113          	addi	sp,sp,-128
    8000435c:	06113c23          	sd	ra,120(sp)
    80004360:	06813823          	sd	s0,112(sp)
    80004364:	06913423          	sd	s1,104(sp)
    80004368:	07213023          	sd	s2,96(sp)
    8000436c:	05313c23          	sd	s3,88(sp)
    80004370:	05413823          	sd	s4,80(sp)
    80004374:	05513423          	sd	s5,72(sp)
    80004378:	05613023          	sd	s6,64(sp)
    8000437c:	03713c23          	sd	s7,56(sp)
    80004380:	03813823          	sd	s8,48(sp)
    80004384:	03913423          	sd	s9,40(sp)
    80004388:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    8000438c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004390:	00005517          	auipc	a0,0x5
    80004394:	0c050513          	addi	a0,a0,192 # 80009450 <CONSOLE_STATUS+0x440>
    80004398:	00001097          	auipc	ra,0x1
    8000439c:	5a8080e7          	jalr	1448(ra) # 80005940 <_Z11printStringPKc>
    getString(input, 30);
    800043a0:	01e00593          	li	a1,30
    800043a4:	f8040493          	addi	s1,s0,-128
    800043a8:	00048513          	mv	a0,s1
    800043ac:	00001097          	auipc	ra,0x1
    800043b0:	61c080e7          	jalr	1564(ra) # 800059c8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800043b4:	00048513          	mv	a0,s1
    800043b8:	00001097          	auipc	ra,0x1
    800043bc:	6e8080e7          	jalr	1768(ra) # 80005aa0 <_Z11stringToIntPKc>
    800043c0:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800043c4:	00005517          	auipc	a0,0x5
    800043c8:	0ac50513          	addi	a0,a0,172 # 80009470 <CONSOLE_STATUS+0x460>
    800043cc:	00001097          	auipc	ra,0x1
    800043d0:	574080e7          	jalr	1396(ra) # 80005940 <_Z11printStringPKc>
    getString(input, 30);
    800043d4:	01e00593          	li	a1,30
    800043d8:	00048513          	mv	a0,s1
    800043dc:	00001097          	auipc	ra,0x1
    800043e0:	5ec080e7          	jalr	1516(ra) # 800059c8 <_Z9getStringPci>
    n = stringToInt(input);
    800043e4:	00048513          	mv	a0,s1
    800043e8:	00001097          	auipc	ra,0x1
    800043ec:	6b8080e7          	jalr	1720(ra) # 80005aa0 <_Z11stringToIntPKc>
    800043f0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800043f4:	00005517          	auipc	a0,0x5
    800043f8:	09c50513          	addi	a0,a0,156 # 80009490 <CONSOLE_STATUS+0x480>
    800043fc:	00001097          	auipc	ra,0x1
    80004400:	544080e7          	jalr	1348(ra) # 80005940 <_Z11printStringPKc>
    printInt(threadNum);
    80004404:	00000613          	li	a2,0
    80004408:	00a00593          	li	a1,10
    8000440c:	00098513          	mv	a0,s3
    80004410:	00001097          	auipc	ra,0x1
    80004414:	6e0080e7          	jalr	1760(ra) # 80005af0 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004418:	00005517          	auipc	a0,0x5
    8000441c:	09050513          	addi	a0,a0,144 # 800094a8 <CONSOLE_STATUS+0x498>
    80004420:	00001097          	auipc	ra,0x1
    80004424:	520080e7          	jalr	1312(ra) # 80005940 <_Z11printStringPKc>
    printInt(n);
    80004428:	00000613          	li	a2,0
    8000442c:	00a00593          	li	a1,10
    80004430:	00048513          	mv	a0,s1
    80004434:	00001097          	auipc	ra,0x1
    80004438:	6bc080e7          	jalr	1724(ra) # 80005af0 <_Z8printIntiii>
    printString(".\n");
    8000443c:	00005517          	auipc	a0,0x5
    80004440:	08450513          	addi	a0,a0,132 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80004444:	00001097          	auipc	ra,0x1
    80004448:	4fc080e7          	jalr	1276(ra) # 80005940 <_Z11printStringPKc>
    if (threadNum > n) {
    8000444c:	0334c463          	blt	s1,s3,80004474 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004450:	03305c63          	blez	s3,80004488 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004454:	03800513          	li	a0,56
    80004458:	ffffe097          	auipc	ra,0xffffe
    8000445c:	23c080e7          	jalr	572(ra) # 80002694 <_Znwm>
    80004460:	00050a93          	mv	s5,a0
    80004464:	00048593          	mv	a1,s1
    80004468:	00001097          	auipc	ra,0x1
    8000446c:	7a8080e7          	jalr	1960(ra) # 80005c10 <_ZN9BufferCPPC1Ei>
    80004470:	0300006f          	j	800044a0 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004474:	00005517          	auipc	a0,0x5
    80004478:	05450513          	addi	a0,a0,84 # 800094c8 <CONSOLE_STATUS+0x4b8>
    8000447c:	00001097          	auipc	ra,0x1
    80004480:	4c4080e7          	jalr	1220(ra) # 80005940 <_Z11printStringPKc>
        return;
    80004484:	0140006f          	j	80004498 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004488:	00005517          	auipc	a0,0x5
    8000448c:	08050513          	addi	a0,a0,128 # 80009508 <CONSOLE_STATUS+0x4f8>
    80004490:	00001097          	auipc	ra,0x1
    80004494:	4b0080e7          	jalr	1200(ra) # 80005940 <_Z11printStringPKc>
        return;
    80004498:	000c0113          	mv	sp,s8
    8000449c:	2140006f          	j	800046b0 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800044a0:	01000513          	li	a0,16
    800044a4:	ffffe097          	auipc	ra,0xffffe
    800044a8:	1f0080e7          	jalr	496(ra) # 80002694 <_Znwm>
    800044ac:	00050913          	mv	s2,a0
    800044b0:	00000593          	li	a1,0
    800044b4:	ffffe097          	auipc	ra,0xffffe
    800044b8:	5dc080e7          	jalr	1500(ra) # 80002a90 <_ZN9SemaphoreC1Ej>
    800044bc:	00008797          	auipc	a5,0x8
    800044c0:	9127b223          	sd	s2,-1788(a5) # 8000bdc0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800044c4:	00399793          	slli	a5,s3,0x3
    800044c8:	00f78793          	addi	a5,a5,15
    800044cc:	ff07f793          	andi	a5,a5,-16
    800044d0:	40f10133          	sub	sp,sp,a5
    800044d4:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800044d8:	0019871b          	addiw	a4,s3,1
    800044dc:	00171793          	slli	a5,a4,0x1
    800044e0:	00e787b3          	add	a5,a5,a4
    800044e4:	00379793          	slli	a5,a5,0x3
    800044e8:	00f78793          	addi	a5,a5,15
    800044ec:	ff07f793          	andi	a5,a5,-16
    800044f0:	40f10133          	sub	sp,sp,a5
    800044f4:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800044f8:	00199493          	slli	s1,s3,0x1
    800044fc:	013484b3          	add	s1,s1,s3
    80004500:	00349493          	slli	s1,s1,0x3
    80004504:	009b04b3          	add	s1,s6,s1
    80004508:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    8000450c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004510:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004514:	02800513          	li	a0,40
    80004518:	ffffe097          	auipc	ra,0xffffe
    8000451c:	17c080e7          	jalr	380(ra) # 80002694 <_Znwm>
    80004520:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004524:	ffffe097          	auipc	ra,0xffffe
    80004528:	448080e7          	jalr	1096(ra) # 8000296c <_ZN6ThreadC1Ev>
    8000452c:	00007797          	auipc	a5,0x7
    80004530:	70478793          	addi	a5,a5,1796 # 8000bc30 <_ZTV8Consumer+0x10>
    80004534:	00fbb023          	sd	a5,0(s7)
    80004538:	029bb023          	sd	s1,32(s7)
    consumer->start();
    8000453c:	000b8513          	mv	a0,s7
    80004540:	ffffe097          	auipc	ra,0xffffe
    80004544:	45c080e7          	jalr	1116(ra) # 8000299c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004548:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    8000454c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004550:	00008797          	auipc	a5,0x8
    80004554:	8707b783          	ld	a5,-1936(a5) # 8000bdc0 <_ZL10waitForAll>
    80004558:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000455c:	02800513          	li	a0,40
    80004560:	ffffe097          	auipc	ra,0xffffe
    80004564:	134080e7          	jalr	308(ra) # 80002694 <_Znwm>
    80004568:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    8000456c:	ffffe097          	auipc	ra,0xffffe
    80004570:	400080e7          	jalr	1024(ra) # 8000296c <_ZN6ThreadC1Ev>
    80004574:	00007797          	auipc	a5,0x7
    80004578:	66c78793          	addi	a5,a5,1644 # 8000bbe0 <_ZTV16ProducerKeyborad+0x10>
    8000457c:	00f4b023          	sd	a5,0(s1)
    80004580:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004584:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004588:	00048513          	mv	a0,s1
    8000458c:	ffffe097          	auipc	ra,0xffffe
    80004590:	410080e7          	jalr	1040(ra) # 8000299c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004594:	00100913          	li	s2,1
    80004598:	0300006f          	j	800045c8 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000459c:	00007797          	auipc	a5,0x7
    800045a0:	66c78793          	addi	a5,a5,1644 # 8000bc08 <_ZTV8Producer+0x10>
    800045a4:	00fcb023          	sd	a5,0(s9)
    800045a8:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800045ac:	00391793          	slli	a5,s2,0x3
    800045b0:	00fa07b3          	add	a5,s4,a5
    800045b4:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800045b8:	000c8513          	mv	a0,s9
    800045bc:	ffffe097          	auipc	ra,0xffffe
    800045c0:	3e0080e7          	jalr	992(ra) # 8000299c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800045c4:	0019091b          	addiw	s2,s2,1
    800045c8:	05395263          	bge	s2,s3,8000460c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800045cc:	00191493          	slli	s1,s2,0x1
    800045d0:	012484b3          	add	s1,s1,s2
    800045d4:	00349493          	slli	s1,s1,0x3
    800045d8:	009b04b3          	add	s1,s6,s1
    800045dc:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800045e0:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800045e4:	00007797          	auipc	a5,0x7
    800045e8:	7dc7b783          	ld	a5,2012(a5) # 8000bdc0 <_ZL10waitForAll>
    800045ec:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800045f0:	02800513          	li	a0,40
    800045f4:	ffffe097          	auipc	ra,0xffffe
    800045f8:	0a0080e7          	jalr	160(ra) # 80002694 <_Znwm>
    800045fc:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004600:	ffffe097          	auipc	ra,0xffffe
    80004604:	36c080e7          	jalr	876(ra) # 8000296c <_ZN6ThreadC1Ev>
    80004608:	f95ff06f          	j	8000459c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    8000460c:	ffffe097          	auipc	ra,0xffffe
    80004610:	3e4080e7          	jalr	996(ra) # 800029f0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004614:	00000493          	li	s1,0
    80004618:	0099ce63          	blt	s3,s1,80004634 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    8000461c:	00007517          	auipc	a0,0x7
    80004620:	7a453503          	ld	a0,1956(a0) # 8000bdc0 <_ZL10waitForAll>
    80004624:	ffffe097          	auipc	ra,0xffffe
    80004628:	4a8080e7          	jalr	1192(ra) # 80002acc <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000462c:	0014849b          	addiw	s1,s1,1
    80004630:	fe9ff06f          	j	80004618 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004634:	00007517          	auipc	a0,0x7
    80004638:	78c53503          	ld	a0,1932(a0) # 8000bdc0 <_ZL10waitForAll>
    8000463c:	00050863          	beqz	a0,8000464c <_Z20testConsumerProducerv+0x2f4>
    80004640:	00053783          	ld	a5,0(a0)
    80004644:	0087b783          	ld	a5,8(a5)
    80004648:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    8000464c:	00000493          	li	s1,0
    80004650:	0080006f          	j	80004658 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004654:	0014849b          	addiw	s1,s1,1
    80004658:	0334d263          	bge	s1,s3,8000467c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    8000465c:	00349793          	slli	a5,s1,0x3
    80004660:	00fa07b3          	add	a5,s4,a5
    80004664:	0007b503          	ld	a0,0(a5)
    80004668:	fe0506e3          	beqz	a0,80004654 <_Z20testConsumerProducerv+0x2fc>
    8000466c:	00053783          	ld	a5,0(a0)
    80004670:	0087b783          	ld	a5,8(a5)
    80004674:	000780e7          	jalr	a5
    80004678:	fddff06f          	j	80004654 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    8000467c:	000b8a63          	beqz	s7,80004690 <_Z20testConsumerProducerv+0x338>
    80004680:	000bb783          	ld	a5,0(s7)
    80004684:	0087b783          	ld	a5,8(a5)
    80004688:	000b8513          	mv	a0,s7
    8000468c:	000780e7          	jalr	a5
    delete buffer;
    80004690:	000a8e63          	beqz	s5,800046ac <_Z20testConsumerProducerv+0x354>
    80004694:	000a8513          	mv	a0,s5
    80004698:	00002097          	auipc	ra,0x2
    8000469c:	870080e7          	jalr	-1936(ra) # 80005f08 <_ZN9BufferCPPD1Ev>
    800046a0:	000a8513          	mv	a0,s5
    800046a4:	ffffe097          	auipc	ra,0xffffe
    800046a8:	040080e7          	jalr	64(ra) # 800026e4 <_ZdlPv>
    800046ac:	000c0113          	mv	sp,s8
}
    800046b0:	f8040113          	addi	sp,s0,-128
    800046b4:	07813083          	ld	ra,120(sp)
    800046b8:	07013403          	ld	s0,112(sp)
    800046bc:	06813483          	ld	s1,104(sp)
    800046c0:	06013903          	ld	s2,96(sp)
    800046c4:	05813983          	ld	s3,88(sp)
    800046c8:	05013a03          	ld	s4,80(sp)
    800046cc:	04813a83          	ld	s5,72(sp)
    800046d0:	04013b03          	ld	s6,64(sp)
    800046d4:	03813b83          	ld	s7,56(sp)
    800046d8:	03013c03          	ld	s8,48(sp)
    800046dc:	02813c83          	ld	s9,40(sp)
    800046e0:	08010113          	addi	sp,sp,128
    800046e4:	00008067          	ret
    800046e8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800046ec:	000a8513          	mv	a0,s5
    800046f0:	ffffe097          	auipc	ra,0xffffe
    800046f4:	ff4080e7          	jalr	-12(ra) # 800026e4 <_ZdlPv>
    800046f8:	00048513          	mv	a0,s1
    800046fc:	00008097          	auipc	ra,0x8
    80004700:	7bc080e7          	jalr	1980(ra) # 8000ceb8 <_Unwind_Resume>
    80004704:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004708:	00090513          	mv	a0,s2
    8000470c:	ffffe097          	auipc	ra,0xffffe
    80004710:	fd8080e7          	jalr	-40(ra) # 800026e4 <_ZdlPv>
    80004714:	00048513          	mv	a0,s1
    80004718:	00008097          	auipc	ra,0x8
    8000471c:	7a0080e7          	jalr	1952(ra) # 8000ceb8 <_Unwind_Resume>
    80004720:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004724:	000b8513          	mv	a0,s7
    80004728:	ffffe097          	auipc	ra,0xffffe
    8000472c:	fbc080e7          	jalr	-68(ra) # 800026e4 <_ZdlPv>
    80004730:	00048513          	mv	a0,s1
    80004734:	00008097          	auipc	ra,0x8
    80004738:	784080e7          	jalr	1924(ra) # 8000ceb8 <_Unwind_Resume>
    8000473c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004740:	00048513          	mv	a0,s1
    80004744:	ffffe097          	auipc	ra,0xffffe
    80004748:	fa0080e7          	jalr	-96(ra) # 800026e4 <_ZdlPv>
    8000474c:	00090513          	mv	a0,s2
    80004750:	00008097          	auipc	ra,0x8
    80004754:	768080e7          	jalr	1896(ra) # 8000ceb8 <_Unwind_Resume>
    80004758:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000475c:	000c8513          	mv	a0,s9
    80004760:	ffffe097          	auipc	ra,0xffffe
    80004764:	f84080e7          	jalr	-124(ra) # 800026e4 <_ZdlPv>
    80004768:	00048513          	mv	a0,s1
    8000476c:	00008097          	auipc	ra,0x8
    80004770:	74c080e7          	jalr	1868(ra) # 8000ceb8 <_Unwind_Resume>

0000000080004774 <_ZN8Consumer3runEv>:
    void run() override {
    80004774:	fd010113          	addi	sp,sp,-48
    80004778:	02113423          	sd	ra,40(sp)
    8000477c:	02813023          	sd	s0,32(sp)
    80004780:	00913c23          	sd	s1,24(sp)
    80004784:	01213823          	sd	s2,16(sp)
    80004788:	01313423          	sd	s3,8(sp)
    8000478c:	03010413          	addi	s0,sp,48
    80004790:	00050913          	mv	s2,a0
        int i = 0;
    80004794:	00000993          	li	s3,0
    80004798:	0100006f          	j	800047a8 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000479c:	00a00513          	li	a0,10
    800047a0:	ffffe097          	auipc	ra,0xffffe
    800047a4:	414080e7          	jalr	1044(ra) # 80002bb4 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800047a8:	00007797          	auipc	a5,0x7
    800047ac:	6107a783          	lw	a5,1552(a5) # 8000bdb8 <_ZL9threadEnd>
    800047b0:	04079a63          	bnez	a5,80004804 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800047b4:	02093783          	ld	a5,32(s2)
    800047b8:	0087b503          	ld	a0,8(a5)
    800047bc:	00001097          	auipc	ra,0x1
    800047c0:	638080e7          	jalr	1592(ra) # 80005df4 <_ZN9BufferCPP3getEv>
            i++;
    800047c4:	0019849b          	addiw	s1,s3,1
    800047c8:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800047cc:	0ff57513          	andi	a0,a0,255
    800047d0:	ffffe097          	auipc	ra,0xffffe
    800047d4:	3e4080e7          	jalr	996(ra) # 80002bb4 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800047d8:	05000793          	li	a5,80
    800047dc:	02f4e4bb          	remw	s1,s1,a5
    800047e0:	fc0494e3          	bnez	s1,800047a8 <_ZN8Consumer3runEv+0x34>
    800047e4:	fb9ff06f          	j	8000479c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800047e8:	02093783          	ld	a5,32(s2)
    800047ec:	0087b503          	ld	a0,8(a5)
    800047f0:	00001097          	auipc	ra,0x1
    800047f4:	604080e7          	jalr	1540(ra) # 80005df4 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800047f8:	0ff57513          	andi	a0,a0,255
    800047fc:	ffffe097          	auipc	ra,0xffffe
    80004800:	3b8080e7          	jalr	952(ra) # 80002bb4 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004804:	02093783          	ld	a5,32(s2)
    80004808:	0087b503          	ld	a0,8(a5)
    8000480c:	00001097          	auipc	ra,0x1
    80004810:	674080e7          	jalr	1652(ra) # 80005e80 <_ZN9BufferCPP6getCntEv>
    80004814:	fca04ae3          	bgtz	a0,800047e8 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004818:	02093783          	ld	a5,32(s2)
    8000481c:	0107b503          	ld	a0,16(a5)
    80004820:	ffffe097          	auipc	ra,0xffffe
    80004824:	2d8080e7          	jalr	728(ra) # 80002af8 <_ZN9Semaphore6signalEv>
    }
    80004828:	02813083          	ld	ra,40(sp)
    8000482c:	02013403          	ld	s0,32(sp)
    80004830:	01813483          	ld	s1,24(sp)
    80004834:	01013903          	ld	s2,16(sp)
    80004838:	00813983          	ld	s3,8(sp)
    8000483c:	03010113          	addi	sp,sp,48
    80004840:	00008067          	ret

0000000080004844 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004844:	ff010113          	addi	sp,sp,-16
    80004848:	00113423          	sd	ra,8(sp)
    8000484c:	00813023          	sd	s0,0(sp)
    80004850:	01010413          	addi	s0,sp,16
    80004854:	00007797          	auipc	a5,0x7
    80004858:	3dc78793          	addi	a5,a5,988 # 8000bc30 <_ZTV8Consumer+0x10>
    8000485c:	00f53023          	sd	a5,0(a0)
    80004860:	ffffe097          	auipc	ra,0xffffe
    80004864:	fe8080e7          	jalr	-24(ra) # 80002848 <_ZN6ThreadD1Ev>
    80004868:	00813083          	ld	ra,8(sp)
    8000486c:	00013403          	ld	s0,0(sp)
    80004870:	01010113          	addi	sp,sp,16
    80004874:	00008067          	ret

0000000080004878 <_ZN8ConsumerD0Ev>:
    80004878:	fe010113          	addi	sp,sp,-32
    8000487c:	00113c23          	sd	ra,24(sp)
    80004880:	00813823          	sd	s0,16(sp)
    80004884:	00913423          	sd	s1,8(sp)
    80004888:	02010413          	addi	s0,sp,32
    8000488c:	00050493          	mv	s1,a0
    80004890:	00007797          	auipc	a5,0x7
    80004894:	3a078793          	addi	a5,a5,928 # 8000bc30 <_ZTV8Consumer+0x10>
    80004898:	00f53023          	sd	a5,0(a0)
    8000489c:	ffffe097          	auipc	ra,0xffffe
    800048a0:	fac080e7          	jalr	-84(ra) # 80002848 <_ZN6ThreadD1Ev>
    800048a4:	00048513          	mv	a0,s1
    800048a8:	ffffe097          	auipc	ra,0xffffe
    800048ac:	e3c080e7          	jalr	-452(ra) # 800026e4 <_ZdlPv>
    800048b0:	01813083          	ld	ra,24(sp)
    800048b4:	01013403          	ld	s0,16(sp)
    800048b8:	00813483          	ld	s1,8(sp)
    800048bc:	02010113          	addi	sp,sp,32
    800048c0:	00008067          	ret

00000000800048c4 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800048c4:	ff010113          	addi	sp,sp,-16
    800048c8:	00113423          	sd	ra,8(sp)
    800048cc:	00813023          	sd	s0,0(sp)
    800048d0:	01010413          	addi	s0,sp,16
    800048d4:	00007797          	auipc	a5,0x7
    800048d8:	30c78793          	addi	a5,a5,780 # 8000bbe0 <_ZTV16ProducerKeyborad+0x10>
    800048dc:	00f53023          	sd	a5,0(a0)
    800048e0:	ffffe097          	auipc	ra,0xffffe
    800048e4:	f68080e7          	jalr	-152(ra) # 80002848 <_ZN6ThreadD1Ev>
    800048e8:	00813083          	ld	ra,8(sp)
    800048ec:	00013403          	ld	s0,0(sp)
    800048f0:	01010113          	addi	sp,sp,16
    800048f4:	00008067          	ret

00000000800048f8 <_ZN16ProducerKeyboradD0Ev>:
    800048f8:	fe010113          	addi	sp,sp,-32
    800048fc:	00113c23          	sd	ra,24(sp)
    80004900:	00813823          	sd	s0,16(sp)
    80004904:	00913423          	sd	s1,8(sp)
    80004908:	02010413          	addi	s0,sp,32
    8000490c:	00050493          	mv	s1,a0
    80004910:	00007797          	auipc	a5,0x7
    80004914:	2d078793          	addi	a5,a5,720 # 8000bbe0 <_ZTV16ProducerKeyborad+0x10>
    80004918:	00f53023          	sd	a5,0(a0)
    8000491c:	ffffe097          	auipc	ra,0xffffe
    80004920:	f2c080e7          	jalr	-212(ra) # 80002848 <_ZN6ThreadD1Ev>
    80004924:	00048513          	mv	a0,s1
    80004928:	ffffe097          	auipc	ra,0xffffe
    8000492c:	dbc080e7          	jalr	-580(ra) # 800026e4 <_ZdlPv>
    80004930:	01813083          	ld	ra,24(sp)
    80004934:	01013403          	ld	s0,16(sp)
    80004938:	00813483          	ld	s1,8(sp)
    8000493c:	02010113          	addi	sp,sp,32
    80004940:	00008067          	ret

0000000080004944 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004944:	ff010113          	addi	sp,sp,-16
    80004948:	00113423          	sd	ra,8(sp)
    8000494c:	00813023          	sd	s0,0(sp)
    80004950:	01010413          	addi	s0,sp,16
    80004954:	00007797          	auipc	a5,0x7
    80004958:	2b478793          	addi	a5,a5,692 # 8000bc08 <_ZTV8Producer+0x10>
    8000495c:	00f53023          	sd	a5,0(a0)
    80004960:	ffffe097          	auipc	ra,0xffffe
    80004964:	ee8080e7          	jalr	-280(ra) # 80002848 <_ZN6ThreadD1Ev>
    80004968:	00813083          	ld	ra,8(sp)
    8000496c:	00013403          	ld	s0,0(sp)
    80004970:	01010113          	addi	sp,sp,16
    80004974:	00008067          	ret

0000000080004978 <_ZN8ProducerD0Ev>:
    80004978:	fe010113          	addi	sp,sp,-32
    8000497c:	00113c23          	sd	ra,24(sp)
    80004980:	00813823          	sd	s0,16(sp)
    80004984:	00913423          	sd	s1,8(sp)
    80004988:	02010413          	addi	s0,sp,32
    8000498c:	00050493          	mv	s1,a0
    80004990:	00007797          	auipc	a5,0x7
    80004994:	27878793          	addi	a5,a5,632 # 8000bc08 <_ZTV8Producer+0x10>
    80004998:	00f53023          	sd	a5,0(a0)
    8000499c:	ffffe097          	auipc	ra,0xffffe
    800049a0:	eac080e7          	jalr	-340(ra) # 80002848 <_ZN6ThreadD1Ev>
    800049a4:	00048513          	mv	a0,s1
    800049a8:	ffffe097          	auipc	ra,0xffffe
    800049ac:	d3c080e7          	jalr	-708(ra) # 800026e4 <_ZdlPv>
    800049b0:	01813083          	ld	ra,24(sp)
    800049b4:	01013403          	ld	s0,16(sp)
    800049b8:	00813483          	ld	s1,8(sp)
    800049bc:	02010113          	addi	sp,sp,32
    800049c0:	00008067          	ret

00000000800049c4 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800049c4:	fe010113          	addi	sp,sp,-32
    800049c8:	00113c23          	sd	ra,24(sp)
    800049cc:	00813823          	sd	s0,16(sp)
    800049d0:	00913423          	sd	s1,8(sp)
    800049d4:	02010413          	addi	s0,sp,32
    800049d8:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800049dc:	ffffd097          	auipc	ra,0xffffd
    800049e0:	c30080e7          	jalr	-976(ra) # 8000160c <_Z4getcv>
    800049e4:	0005059b          	sext.w	a1,a0
    800049e8:	01b00793          	li	a5,27
    800049ec:	00f58c63          	beq	a1,a5,80004a04 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800049f0:	0204b783          	ld	a5,32(s1)
    800049f4:	0087b503          	ld	a0,8(a5)
    800049f8:	00001097          	auipc	ra,0x1
    800049fc:	36c080e7          	jalr	876(ra) # 80005d64 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004a00:	fddff06f          	j	800049dc <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004a04:	00100793          	li	a5,1
    80004a08:	00007717          	auipc	a4,0x7
    80004a0c:	3af72823          	sw	a5,944(a4) # 8000bdb8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004a10:	0204b783          	ld	a5,32(s1)
    80004a14:	02100593          	li	a1,33
    80004a18:	0087b503          	ld	a0,8(a5)
    80004a1c:	00001097          	auipc	ra,0x1
    80004a20:	348080e7          	jalr	840(ra) # 80005d64 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004a24:	0204b783          	ld	a5,32(s1)
    80004a28:	0107b503          	ld	a0,16(a5)
    80004a2c:	ffffe097          	auipc	ra,0xffffe
    80004a30:	0cc080e7          	jalr	204(ra) # 80002af8 <_ZN9Semaphore6signalEv>
    }
    80004a34:	01813083          	ld	ra,24(sp)
    80004a38:	01013403          	ld	s0,16(sp)
    80004a3c:	00813483          	ld	s1,8(sp)
    80004a40:	02010113          	addi	sp,sp,32
    80004a44:	00008067          	ret

0000000080004a48 <_ZN8Producer3runEv>:
    void run() override {
    80004a48:	fe010113          	addi	sp,sp,-32
    80004a4c:	00113c23          	sd	ra,24(sp)
    80004a50:	00813823          	sd	s0,16(sp)
    80004a54:	00913423          	sd	s1,8(sp)
    80004a58:	01213023          	sd	s2,0(sp)
    80004a5c:	02010413          	addi	s0,sp,32
    80004a60:	00050493          	mv	s1,a0
        int i = 0;
    80004a64:	00000913          	li	s2,0
        while (!threadEnd) {
    80004a68:	00007797          	auipc	a5,0x7
    80004a6c:	3507a783          	lw	a5,848(a5) # 8000bdb8 <_ZL9threadEnd>
    80004a70:	04079263          	bnez	a5,80004ab4 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004a74:	0204b783          	ld	a5,32(s1)
    80004a78:	0007a583          	lw	a1,0(a5)
    80004a7c:	0305859b          	addiw	a1,a1,48
    80004a80:	0087b503          	ld	a0,8(a5)
    80004a84:	00001097          	auipc	ra,0x1
    80004a88:	2e0080e7          	jalr	736(ra) # 80005d64 <_ZN9BufferCPP3putEi>
            i++;
    80004a8c:	0019071b          	addiw	a4,s2,1
    80004a90:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004a94:	0204b783          	ld	a5,32(s1)
    80004a98:	0007a783          	lw	a5,0(a5)
    80004a9c:	00e787bb          	addw	a5,a5,a4
    80004aa0:	00500513          	li	a0,5
    80004aa4:	02a7e53b          	remw	a0,a5,a0
    80004aa8:	ffffe097          	auipc	ra,0xffffe
    80004aac:	f70080e7          	jalr	-144(ra) # 80002a18 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004ab0:	fb9ff06f          	j	80004a68 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004ab4:	0204b783          	ld	a5,32(s1)
    80004ab8:	0107b503          	ld	a0,16(a5)
    80004abc:	ffffe097          	auipc	ra,0xffffe
    80004ac0:	03c080e7          	jalr	60(ra) # 80002af8 <_ZN9Semaphore6signalEv>
    }
    80004ac4:	01813083          	ld	ra,24(sp)
    80004ac8:	01013403          	ld	s0,16(sp)
    80004acc:	00813483          	ld	s1,8(sp)
    80004ad0:	00013903          	ld	s2,0(sp)
    80004ad4:	02010113          	addi	sp,sp,32
    80004ad8:	00008067          	ret

0000000080004adc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004adc:	fe010113          	addi	sp,sp,-32
    80004ae0:	00113c23          	sd	ra,24(sp)
    80004ae4:	00813823          	sd	s0,16(sp)
    80004ae8:	00913423          	sd	s1,8(sp)
    80004aec:	01213023          	sd	s2,0(sp)
    80004af0:	02010413          	addi	s0,sp,32
    80004af4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004af8:	00100793          	li	a5,1
    80004afc:	02a7f863          	bgeu	a5,a0,80004b2c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004b00:	00a00793          	li	a5,10
    80004b04:	02f577b3          	remu	a5,a0,a5
    80004b08:	02078e63          	beqz	a5,80004b44 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004b0c:	fff48513          	addi	a0,s1,-1
    80004b10:	00000097          	auipc	ra,0x0
    80004b14:	fcc080e7          	jalr	-52(ra) # 80004adc <_ZL9fibonaccim>
    80004b18:	00050913          	mv	s2,a0
    80004b1c:	ffe48513          	addi	a0,s1,-2
    80004b20:	00000097          	auipc	ra,0x0
    80004b24:	fbc080e7          	jalr	-68(ra) # 80004adc <_ZL9fibonaccim>
    80004b28:	00a90533          	add	a0,s2,a0
}
    80004b2c:	01813083          	ld	ra,24(sp)
    80004b30:	01013403          	ld	s0,16(sp)
    80004b34:	00813483          	ld	s1,8(sp)
    80004b38:	00013903          	ld	s2,0(sp)
    80004b3c:	02010113          	addi	sp,sp,32
    80004b40:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004b44:	ffffd097          	auipc	ra,0xffffd
    80004b48:	8c0080e7          	jalr	-1856(ra) # 80001404 <_Z15thread_dispatchv>
    80004b4c:	fc1ff06f          	j	80004b0c <_ZL9fibonaccim+0x30>

0000000080004b50 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004b50:	fe010113          	addi	sp,sp,-32
    80004b54:	00113c23          	sd	ra,24(sp)
    80004b58:	00813823          	sd	s0,16(sp)
    80004b5c:	00913423          	sd	s1,8(sp)
    80004b60:	01213023          	sd	s2,0(sp)
    80004b64:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004b68:	00a00493          	li	s1,10
    80004b6c:	0400006f          	j	80004bac <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004b70:	00005517          	auipc	a0,0x5
    80004b74:	a2850513          	addi	a0,a0,-1496 # 80009598 <CONSOLE_STATUS+0x588>
    80004b78:	00001097          	auipc	ra,0x1
    80004b7c:	dc8080e7          	jalr	-568(ra) # 80005940 <_Z11printStringPKc>
    80004b80:	00000613          	li	a2,0
    80004b84:	00a00593          	li	a1,10
    80004b88:	00048513          	mv	a0,s1
    80004b8c:	00001097          	auipc	ra,0x1
    80004b90:	f64080e7          	jalr	-156(ra) # 80005af0 <_Z8printIntiii>
    80004b94:	00004517          	auipc	a0,0x4
    80004b98:	72450513          	addi	a0,a0,1828 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004b9c:	00001097          	auipc	ra,0x1
    80004ba0:	da4080e7          	jalr	-604(ra) # 80005940 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004ba4:	0014849b          	addiw	s1,s1,1
    80004ba8:	0ff4f493          	andi	s1,s1,255
    80004bac:	00c00793          	li	a5,12
    80004bb0:	fc97f0e3          	bgeu	a5,s1,80004b70 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004bb4:	00005517          	auipc	a0,0x5
    80004bb8:	9ec50513          	addi	a0,a0,-1556 # 800095a0 <CONSOLE_STATUS+0x590>
    80004bbc:	00001097          	auipc	ra,0x1
    80004bc0:	d84080e7          	jalr	-636(ra) # 80005940 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004bc4:	00500313          	li	t1,5
    thread_dispatch();
    80004bc8:	ffffd097          	auipc	ra,0xffffd
    80004bcc:	83c080e7          	jalr	-1988(ra) # 80001404 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004bd0:	01000513          	li	a0,16
    80004bd4:	00000097          	auipc	ra,0x0
    80004bd8:	f08080e7          	jalr	-248(ra) # 80004adc <_ZL9fibonaccim>
    80004bdc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004be0:	00005517          	auipc	a0,0x5
    80004be4:	9d050513          	addi	a0,a0,-1584 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80004be8:	00001097          	auipc	ra,0x1
    80004bec:	d58080e7          	jalr	-680(ra) # 80005940 <_Z11printStringPKc>
    80004bf0:	00000613          	li	a2,0
    80004bf4:	00a00593          	li	a1,10
    80004bf8:	0009051b          	sext.w	a0,s2
    80004bfc:	00001097          	auipc	ra,0x1
    80004c00:	ef4080e7          	jalr	-268(ra) # 80005af0 <_Z8printIntiii>
    80004c04:	00004517          	auipc	a0,0x4
    80004c08:	6b450513          	addi	a0,a0,1716 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004c0c:	00001097          	auipc	ra,0x1
    80004c10:	d34080e7          	jalr	-716(ra) # 80005940 <_Z11printStringPKc>
    80004c14:	0400006f          	j	80004c54 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004c18:	00005517          	auipc	a0,0x5
    80004c1c:	98050513          	addi	a0,a0,-1664 # 80009598 <CONSOLE_STATUS+0x588>
    80004c20:	00001097          	auipc	ra,0x1
    80004c24:	d20080e7          	jalr	-736(ra) # 80005940 <_Z11printStringPKc>
    80004c28:	00000613          	li	a2,0
    80004c2c:	00a00593          	li	a1,10
    80004c30:	00048513          	mv	a0,s1
    80004c34:	00001097          	auipc	ra,0x1
    80004c38:	ebc080e7          	jalr	-324(ra) # 80005af0 <_Z8printIntiii>
    80004c3c:	00004517          	auipc	a0,0x4
    80004c40:	67c50513          	addi	a0,a0,1660 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004c44:	00001097          	auipc	ra,0x1
    80004c48:	cfc080e7          	jalr	-772(ra) # 80005940 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004c4c:	0014849b          	addiw	s1,s1,1
    80004c50:	0ff4f493          	andi	s1,s1,255
    80004c54:	00f00793          	li	a5,15
    80004c58:	fc97f0e3          	bgeu	a5,s1,80004c18 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004c5c:	00005517          	auipc	a0,0x5
    80004c60:	96450513          	addi	a0,a0,-1692 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80004c64:	00001097          	auipc	ra,0x1
    80004c68:	cdc080e7          	jalr	-804(ra) # 80005940 <_Z11printStringPKc>
    finishedD = true;
    80004c6c:	00100793          	li	a5,1
    80004c70:	00007717          	auipc	a4,0x7
    80004c74:	14f70c23          	sb	a5,344(a4) # 8000bdc8 <_ZL9finishedD>
    thread_dispatch();
    80004c78:	ffffc097          	auipc	ra,0xffffc
    80004c7c:	78c080e7          	jalr	1932(ra) # 80001404 <_Z15thread_dispatchv>
}
    80004c80:	01813083          	ld	ra,24(sp)
    80004c84:	01013403          	ld	s0,16(sp)
    80004c88:	00813483          	ld	s1,8(sp)
    80004c8c:	00013903          	ld	s2,0(sp)
    80004c90:	02010113          	addi	sp,sp,32
    80004c94:	00008067          	ret

0000000080004c98 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004c98:	fe010113          	addi	sp,sp,-32
    80004c9c:	00113c23          	sd	ra,24(sp)
    80004ca0:	00813823          	sd	s0,16(sp)
    80004ca4:	00913423          	sd	s1,8(sp)
    80004ca8:	01213023          	sd	s2,0(sp)
    80004cac:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004cb0:	00000493          	li	s1,0
    80004cb4:	0400006f          	j	80004cf4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004cb8:	00005517          	auipc	a0,0x5
    80004cbc:	8b050513          	addi	a0,a0,-1872 # 80009568 <CONSOLE_STATUS+0x558>
    80004cc0:	00001097          	auipc	ra,0x1
    80004cc4:	c80080e7          	jalr	-896(ra) # 80005940 <_Z11printStringPKc>
    80004cc8:	00000613          	li	a2,0
    80004ccc:	00a00593          	li	a1,10
    80004cd0:	00048513          	mv	a0,s1
    80004cd4:	00001097          	auipc	ra,0x1
    80004cd8:	e1c080e7          	jalr	-484(ra) # 80005af0 <_Z8printIntiii>
    80004cdc:	00004517          	auipc	a0,0x4
    80004ce0:	5dc50513          	addi	a0,a0,1500 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004ce4:	00001097          	auipc	ra,0x1
    80004ce8:	c5c080e7          	jalr	-932(ra) # 80005940 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004cec:	0014849b          	addiw	s1,s1,1
    80004cf0:	0ff4f493          	andi	s1,s1,255
    80004cf4:	00200793          	li	a5,2
    80004cf8:	fc97f0e3          	bgeu	a5,s1,80004cb8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004cfc:	00005517          	auipc	a0,0x5
    80004d00:	87450513          	addi	a0,a0,-1932 # 80009570 <CONSOLE_STATUS+0x560>
    80004d04:	00001097          	auipc	ra,0x1
    80004d08:	c3c080e7          	jalr	-964(ra) # 80005940 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004d0c:	00700313          	li	t1,7
    thread_dispatch();
    80004d10:	ffffc097          	auipc	ra,0xffffc
    80004d14:	6f4080e7          	jalr	1780(ra) # 80001404 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004d18:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004d1c:	00005517          	auipc	a0,0x5
    80004d20:	86450513          	addi	a0,a0,-1948 # 80009580 <CONSOLE_STATUS+0x570>
    80004d24:	00001097          	auipc	ra,0x1
    80004d28:	c1c080e7          	jalr	-996(ra) # 80005940 <_Z11printStringPKc>
    80004d2c:	00000613          	li	a2,0
    80004d30:	00a00593          	li	a1,10
    80004d34:	0009051b          	sext.w	a0,s2
    80004d38:	00001097          	auipc	ra,0x1
    80004d3c:	db8080e7          	jalr	-584(ra) # 80005af0 <_Z8printIntiii>
    80004d40:	00004517          	auipc	a0,0x4
    80004d44:	57850513          	addi	a0,a0,1400 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004d48:	00001097          	auipc	ra,0x1
    80004d4c:	bf8080e7          	jalr	-1032(ra) # 80005940 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004d50:	00c00513          	li	a0,12
    80004d54:	00000097          	auipc	ra,0x0
    80004d58:	d88080e7          	jalr	-632(ra) # 80004adc <_ZL9fibonaccim>
    80004d5c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004d60:	00005517          	auipc	a0,0x5
    80004d64:	82850513          	addi	a0,a0,-2008 # 80009588 <CONSOLE_STATUS+0x578>
    80004d68:	00001097          	auipc	ra,0x1
    80004d6c:	bd8080e7          	jalr	-1064(ra) # 80005940 <_Z11printStringPKc>
    80004d70:	00000613          	li	a2,0
    80004d74:	00a00593          	li	a1,10
    80004d78:	0009051b          	sext.w	a0,s2
    80004d7c:	00001097          	auipc	ra,0x1
    80004d80:	d74080e7          	jalr	-652(ra) # 80005af0 <_Z8printIntiii>
    80004d84:	00004517          	auipc	a0,0x4
    80004d88:	53450513          	addi	a0,a0,1332 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004d8c:	00001097          	auipc	ra,0x1
    80004d90:	bb4080e7          	jalr	-1100(ra) # 80005940 <_Z11printStringPKc>
    80004d94:	0400006f          	j	80004dd4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004d98:	00004517          	auipc	a0,0x4
    80004d9c:	7d050513          	addi	a0,a0,2000 # 80009568 <CONSOLE_STATUS+0x558>
    80004da0:	00001097          	auipc	ra,0x1
    80004da4:	ba0080e7          	jalr	-1120(ra) # 80005940 <_Z11printStringPKc>
    80004da8:	00000613          	li	a2,0
    80004dac:	00a00593          	li	a1,10
    80004db0:	00048513          	mv	a0,s1
    80004db4:	00001097          	auipc	ra,0x1
    80004db8:	d3c080e7          	jalr	-708(ra) # 80005af0 <_Z8printIntiii>
    80004dbc:	00004517          	auipc	a0,0x4
    80004dc0:	4fc50513          	addi	a0,a0,1276 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004dc4:	00001097          	auipc	ra,0x1
    80004dc8:	b7c080e7          	jalr	-1156(ra) # 80005940 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004dcc:	0014849b          	addiw	s1,s1,1
    80004dd0:	0ff4f493          	andi	s1,s1,255
    80004dd4:	00500793          	li	a5,5
    80004dd8:	fc97f0e3          	bgeu	a5,s1,80004d98 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004ddc:	00004517          	auipc	a0,0x4
    80004de0:	76450513          	addi	a0,a0,1892 # 80009540 <CONSOLE_STATUS+0x530>
    80004de4:	00001097          	auipc	ra,0x1
    80004de8:	b5c080e7          	jalr	-1188(ra) # 80005940 <_Z11printStringPKc>
    finishedC = true;
    80004dec:	00100793          	li	a5,1
    80004df0:	00007717          	auipc	a4,0x7
    80004df4:	fcf70ca3          	sb	a5,-39(a4) # 8000bdc9 <_ZL9finishedC>
    thread_dispatch();
    80004df8:	ffffc097          	auipc	ra,0xffffc
    80004dfc:	60c080e7          	jalr	1548(ra) # 80001404 <_Z15thread_dispatchv>
}
    80004e00:	01813083          	ld	ra,24(sp)
    80004e04:	01013403          	ld	s0,16(sp)
    80004e08:	00813483          	ld	s1,8(sp)
    80004e0c:	00013903          	ld	s2,0(sp)
    80004e10:	02010113          	addi	sp,sp,32
    80004e14:	00008067          	ret

0000000080004e18 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004e18:	fe010113          	addi	sp,sp,-32
    80004e1c:	00113c23          	sd	ra,24(sp)
    80004e20:	00813823          	sd	s0,16(sp)
    80004e24:	00913423          	sd	s1,8(sp)
    80004e28:	01213023          	sd	s2,0(sp)
    80004e2c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004e30:	00000913          	li	s2,0
    80004e34:	0380006f          	j	80004e6c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004e38:	ffffc097          	auipc	ra,0xffffc
    80004e3c:	5cc080e7          	jalr	1484(ra) # 80001404 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004e40:	00148493          	addi	s1,s1,1
    80004e44:	000027b7          	lui	a5,0x2
    80004e48:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004e4c:	0097ee63          	bltu	a5,s1,80004e68 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004e50:	00000713          	li	a4,0
    80004e54:	000077b7          	lui	a5,0x7
    80004e58:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004e5c:	fce7eee3          	bltu	a5,a4,80004e38 <_ZL11workerBodyBPv+0x20>
    80004e60:	00170713          	addi	a4,a4,1
    80004e64:	ff1ff06f          	j	80004e54 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004e68:	00190913          	addi	s2,s2,1
    80004e6c:	00f00793          	li	a5,15
    80004e70:	0527e063          	bltu	a5,s2,80004eb0 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004e74:	00004517          	auipc	a0,0x4
    80004e78:	6dc50513          	addi	a0,a0,1756 # 80009550 <CONSOLE_STATUS+0x540>
    80004e7c:	00001097          	auipc	ra,0x1
    80004e80:	ac4080e7          	jalr	-1340(ra) # 80005940 <_Z11printStringPKc>
    80004e84:	00000613          	li	a2,0
    80004e88:	00a00593          	li	a1,10
    80004e8c:	0009051b          	sext.w	a0,s2
    80004e90:	00001097          	auipc	ra,0x1
    80004e94:	c60080e7          	jalr	-928(ra) # 80005af0 <_Z8printIntiii>
    80004e98:	00004517          	auipc	a0,0x4
    80004e9c:	42050513          	addi	a0,a0,1056 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004ea0:	00001097          	auipc	ra,0x1
    80004ea4:	aa0080e7          	jalr	-1376(ra) # 80005940 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004ea8:	00000493          	li	s1,0
    80004eac:	f99ff06f          	j	80004e44 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004eb0:	00004517          	auipc	a0,0x4
    80004eb4:	6a850513          	addi	a0,a0,1704 # 80009558 <CONSOLE_STATUS+0x548>
    80004eb8:	00001097          	auipc	ra,0x1
    80004ebc:	a88080e7          	jalr	-1400(ra) # 80005940 <_Z11printStringPKc>
    finishedB = true;
    80004ec0:	00100793          	li	a5,1
    80004ec4:	00007717          	auipc	a4,0x7
    80004ec8:	f0f70323          	sb	a5,-250(a4) # 8000bdca <_ZL9finishedB>
    thread_dispatch();
    80004ecc:	ffffc097          	auipc	ra,0xffffc
    80004ed0:	538080e7          	jalr	1336(ra) # 80001404 <_Z15thread_dispatchv>
}
    80004ed4:	01813083          	ld	ra,24(sp)
    80004ed8:	01013403          	ld	s0,16(sp)
    80004edc:	00813483          	ld	s1,8(sp)
    80004ee0:	00013903          	ld	s2,0(sp)
    80004ee4:	02010113          	addi	sp,sp,32
    80004ee8:	00008067          	ret

0000000080004eec <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004eec:	fe010113          	addi	sp,sp,-32
    80004ef0:	00113c23          	sd	ra,24(sp)
    80004ef4:	00813823          	sd	s0,16(sp)
    80004ef8:	00913423          	sd	s1,8(sp)
    80004efc:	01213023          	sd	s2,0(sp)
    80004f00:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004f04:	00000913          	li	s2,0
    80004f08:	0380006f          	j	80004f40 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004f0c:	ffffc097          	auipc	ra,0xffffc
    80004f10:	4f8080e7          	jalr	1272(ra) # 80001404 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004f14:	00148493          	addi	s1,s1,1
    80004f18:	000027b7          	lui	a5,0x2
    80004f1c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004f20:	0097ee63          	bltu	a5,s1,80004f3c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004f24:	00000713          	li	a4,0
    80004f28:	000077b7          	lui	a5,0x7
    80004f2c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004f30:	fce7eee3          	bltu	a5,a4,80004f0c <_ZL11workerBodyAPv+0x20>
    80004f34:	00170713          	addi	a4,a4,1
    80004f38:	ff1ff06f          	j	80004f28 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004f3c:	00190913          	addi	s2,s2,1
    80004f40:	00900793          	li	a5,9
    80004f44:	0527e063          	bltu	a5,s2,80004f84 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004f48:	00004517          	auipc	a0,0x4
    80004f4c:	5f050513          	addi	a0,a0,1520 # 80009538 <CONSOLE_STATUS+0x528>
    80004f50:	00001097          	auipc	ra,0x1
    80004f54:	9f0080e7          	jalr	-1552(ra) # 80005940 <_Z11printStringPKc>
    80004f58:	00000613          	li	a2,0
    80004f5c:	00a00593          	li	a1,10
    80004f60:	0009051b          	sext.w	a0,s2
    80004f64:	00001097          	auipc	ra,0x1
    80004f68:	b8c080e7          	jalr	-1140(ra) # 80005af0 <_Z8printIntiii>
    80004f6c:	00004517          	auipc	a0,0x4
    80004f70:	34c50513          	addi	a0,a0,844 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004f74:	00001097          	auipc	ra,0x1
    80004f78:	9cc080e7          	jalr	-1588(ra) # 80005940 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004f7c:	00000493          	li	s1,0
    80004f80:	f99ff06f          	j	80004f18 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004f84:	00004517          	auipc	a0,0x4
    80004f88:	5bc50513          	addi	a0,a0,1468 # 80009540 <CONSOLE_STATUS+0x530>
    80004f8c:	00001097          	auipc	ra,0x1
    80004f90:	9b4080e7          	jalr	-1612(ra) # 80005940 <_Z11printStringPKc>
    finishedA = true;
    80004f94:	00100793          	li	a5,1
    80004f98:	00007717          	auipc	a4,0x7
    80004f9c:	e2f709a3          	sb	a5,-461(a4) # 8000bdcb <_ZL9finishedA>
}
    80004fa0:	01813083          	ld	ra,24(sp)
    80004fa4:	01013403          	ld	s0,16(sp)
    80004fa8:	00813483          	ld	s1,8(sp)
    80004fac:	00013903          	ld	s2,0(sp)
    80004fb0:	02010113          	addi	sp,sp,32
    80004fb4:	00008067          	ret

0000000080004fb8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004fb8:	fd010113          	addi	sp,sp,-48
    80004fbc:	02113423          	sd	ra,40(sp)
    80004fc0:	02813023          	sd	s0,32(sp)
    80004fc4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004fc8:	00000613          	li	a2,0
    80004fcc:	00000597          	auipc	a1,0x0
    80004fd0:	f2058593          	addi	a1,a1,-224 # 80004eec <_ZL11workerBodyAPv>
    80004fd4:	fd040513          	addi	a0,s0,-48
    80004fd8:	ffffc097          	auipc	ra,0xffffc
    80004fdc:	2ac080e7          	jalr	684(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80004fe0:	00004517          	auipc	a0,0x4
    80004fe4:	5f050513          	addi	a0,a0,1520 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80004fe8:	00001097          	auipc	ra,0x1
    80004fec:	958080e7          	jalr	-1704(ra) # 80005940 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004ff0:	00000613          	li	a2,0
    80004ff4:	00000597          	auipc	a1,0x0
    80004ff8:	e2458593          	addi	a1,a1,-476 # 80004e18 <_ZL11workerBodyBPv>
    80004ffc:	fd840513          	addi	a0,s0,-40
    80005000:	ffffc097          	auipc	ra,0xffffc
    80005004:	284080e7          	jalr	644(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80005008:	00004517          	auipc	a0,0x4
    8000500c:	5e050513          	addi	a0,a0,1504 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80005010:	00001097          	auipc	ra,0x1
    80005014:	930080e7          	jalr	-1744(ra) # 80005940 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005018:	00000613          	li	a2,0
    8000501c:	00000597          	auipc	a1,0x0
    80005020:	c7c58593          	addi	a1,a1,-900 # 80004c98 <_ZL11workerBodyCPv>
    80005024:	fe040513          	addi	a0,s0,-32
    80005028:	ffffc097          	auipc	ra,0xffffc
    8000502c:	25c080e7          	jalr	604(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80005030:	00004517          	auipc	a0,0x4
    80005034:	5d050513          	addi	a0,a0,1488 # 80009600 <CONSOLE_STATUS+0x5f0>
    80005038:	00001097          	auipc	ra,0x1
    8000503c:	908080e7          	jalr	-1784(ra) # 80005940 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005040:	00000613          	li	a2,0
    80005044:	00000597          	auipc	a1,0x0
    80005048:	b0c58593          	addi	a1,a1,-1268 # 80004b50 <_ZL11workerBodyDPv>
    8000504c:	fe840513          	addi	a0,s0,-24
    80005050:	ffffc097          	auipc	ra,0xffffc
    80005054:	234080e7          	jalr	564(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80005058:	00004517          	auipc	a0,0x4
    8000505c:	5c050513          	addi	a0,a0,1472 # 80009618 <CONSOLE_STATUS+0x608>
    80005060:	00001097          	auipc	ra,0x1
    80005064:	8e0080e7          	jalr	-1824(ra) # 80005940 <_Z11printStringPKc>
    80005068:	00c0006f          	j	80005074 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000506c:	ffffc097          	auipc	ra,0xffffc
    80005070:	398080e7          	jalr	920(ra) # 80001404 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005074:	00007797          	auipc	a5,0x7
    80005078:	d577c783          	lbu	a5,-681(a5) # 8000bdcb <_ZL9finishedA>
    8000507c:	fe0788e3          	beqz	a5,8000506c <_Z18Threads_C_API_testv+0xb4>
    80005080:	00007797          	auipc	a5,0x7
    80005084:	d4a7c783          	lbu	a5,-694(a5) # 8000bdca <_ZL9finishedB>
    80005088:	fe0782e3          	beqz	a5,8000506c <_Z18Threads_C_API_testv+0xb4>
    8000508c:	00007797          	auipc	a5,0x7
    80005090:	d3d7c783          	lbu	a5,-707(a5) # 8000bdc9 <_ZL9finishedC>
    80005094:	fc078ce3          	beqz	a5,8000506c <_Z18Threads_C_API_testv+0xb4>
    80005098:	00007797          	auipc	a5,0x7
    8000509c:	d307c783          	lbu	a5,-720(a5) # 8000bdc8 <_ZL9finishedD>
    800050a0:	fc0786e3          	beqz	a5,8000506c <_Z18Threads_C_API_testv+0xb4>
    }

}
    800050a4:	02813083          	ld	ra,40(sp)
    800050a8:	02013403          	ld	s0,32(sp)
    800050ac:	03010113          	addi	sp,sp,48
    800050b0:	00008067          	ret

00000000800050b4 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800050b4:	fd010113          	addi	sp,sp,-48
    800050b8:	02113423          	sd	ra,40(sp)
    800050bc:	02813023          	sd	s0,32(sp)
    800050c0:	00913c23          	sd	s1,24(sp)
    800050c4:	01213823          	sd	s2,16(sp)
    800050c8:	01313423          	sd	s3,8(sp)
    800050cc:	03010413          	addi	s0,sp,48
    800050d0:	00050993          	mv	s3,a0
    800050d4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800050d8:	00000913          	li	s2,0
    800050dc:	00c0006f          	j	800050e8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800050e0:	ffffe097          	auipc	ra,0xffffe
    800050e4:	910080e7          	jalr	-1776(ra) # 800029f0 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800050e8:	ffffc097          	auipc	ra,0xffffc
    800050ec:	524080e7          	jalr	1316(ra) # 8000160c <_Z4getcv>
    800050f0:	0005059b          	sext.w	a1,a0
    800050f4:	01b00793          	li	a5,27
    800050f8:	02f58a63          	beq	a1,a5,8000512c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800050fc:	0084b503          	ld	a0,8(s1)
    80005100:	00001097          	auipc	ra,0x1
    80005104:	c64080e7          	jalr	-924(ra) # 80005d64 <_ZN9BufferCPP3putEi>
        i++;
    80005108:	0019071b          	addiw	a4,s2,1
    8000510c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005110:	0004a683          	lw	a3,0(s1)
    80005114:	0026979b          	slliw	a5,a3,0x2
    80005118:	00d787bb          	addw	a5,a5,a3
    8000511c:	0017979b          	slliw	a5,a5,0x1
    80005120:	02f767bb          	remw	a5,a4,a5
    80005124:	fc0792e3          	bnez	a5,800050e8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005128:	fb9ff06f          	j	800050e0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    8000512c:	00100793          	li	a5,1
    80005130:	00007717          	auipc	a4,0x7
    80005134:	caf72023          	sw	a5,-864(a4) # 8000bdd0 <_ZL9threadEnd>
    td->buffer->put('!');
    80005138:	0209b783          	ld	a5,32(s3)
    8000513c:	02100593          	li	a1,33
    80005140:	0087b503          	ld	a0,8(a5)
    80005144:	00001097          	auipc	ra,0x1
    80005148:	c20080e7          	jalr	-992(ra) # 80005d64 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000514c:	0104b503          	ld	a0,16(s1)
    80005150:	ffffe097          	auipc	ra,0xffffe
    80005154:	9a8080e7          	jalr	-1624(ra) # 80002af8 <_ZN9Semaphore6signalEv>
}
    80005158:	02813083          	ld	ra,40(sp)
    8000515c:	02013403          	ld	s0,32(sp)
    80005160:	01813483          	ld	s1,24(sp)
    80005164:	01013903          	ld	s2,16(sp)
    80005168:	00813983          	ld	s3,8(sp)
    8000516c:	03010113          	addi	sp,sp,48
    80005170:	00008067          	ret

0000000080005174 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005174:	fe010113          	addi	sp,sp,-32
    80005178:	00113c23          	sd	ra,24(sp)
    8000517c:	00813823          	sd	s0,16(sp)
    80005180:	00913423          	sd	s1,8(sp)
    80005184:	01213023          	sd	s2,0(sp)
    80005188:	02010413          	addi	s0,sp,32
    8000518c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005190:	00000913          	li	s2,0
    80005194:	00c0006f          	j	800051a0 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005198:	ffffe097          	auipc	ra,0xffffe
    8000519c:	858080e7          	jalr	-1960(ra) # 800029f0 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800051a0:	00007797          	auipc	a5,0x7
    800051a4:	c307a783          	lw	a5,-976(a5) # 8000bdd0 <_ZL9threadEnd>
    800051a8:	02079e63          	bnez	a5,800051e4 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800051ac:	0004a583          	lw	a1,0(s1)
    800051b0:	0305859b          	addiw	a1,a1,48
    800051b4:	0084b503          	ld	a0,8(s1)
    800051b8:	00001097          	auipc	ra,0x1
    800051bc:	bac080e7          	jalr	-1108(ra) # 80005d64 <_ZN9BufferCPP3putEi>
        i++;
    800051c0:	0019071b          	addiw	a4,s2,1
    800051c4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800051c8:	0004a683          	lw	a3,0(s1)
    800051cc:	0026979b          	slliw	a5,a3,0x2
    800051d0:	00d787bb          	addw	a5,a5,a3
    800051d4:	0017979b          	slliw	a5,a5,0x1
    800051d8:	02f767bb          	remw	a5,a4,a5
    800051dc:	fc0792e3          	bnez	a5,800051a0 <_ZN12ProducerSync8producerEPv+0x2c>
    800051e0:	fb9ff06f          	j	80005198 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800051e4:	0104b503          	ld	a0,16(s1)
    800051e8:	ffffe097          	auipc	ra,0xffffe
    800051ec:	910080e7          	jalr	-1776(ra) # 80002af8 <_ZN9Semaphore6signalEv>
}
    800051f0:	01813083          	ld	ra,24(sp)
    800051f4:	01013403          	ld	s0,16(sp)
    800051f8:	00813483          	ld	s1,8(sp)
    800051fc:	00013903          	ld	s2,0(sp)
    80005200:	02010113          	addi	sp,sp,32
    80005204:	00008067          	ret

0000000080005208 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005208:	fd010113          	addi	sp,sp,-48
    8000520c:	02113423          	sd	ra,40(sp)
    80005210:	02813023          	sd	s0,32(sp)
    80005214:	00913c23          	sd	s1,24(sp)
    80005218:	01213823          	sd	s2,16(sp)
    8000521c:	01313423          	sd	s3,8(sp)
    80005220:	01413023          	sd	s4,0(sp)
    80005224:	03010413          	addi	s0,sp,48
    80005228:	00050993          	mv	s3,a0
    8000522c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005230:	00000a13          	li	s4,0
    80005234:	01c0006f          	j	80005250 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005238:	ffffd097          	auipc	ra,0xffffd
    8000523c:	7b8080e7          	jalr	1976(ra) # 800029f0 <_ZN6Thread8dispatchEv>
    80005240:	0500006f          	j	80005290 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005244:	00a00513          	li	a0,10
    80005248:	ffffc097          	auipc	ra,0xffffc
    8000524c:	404080e7          	jalr	1028(ra) # 8000164c <_Z4putcc>
    while (!threadEnd) {
    80005250:	00007797          	auipc	a5,0x7
    80005254:	b807a783          	lw	a5,-1152(a5) # 8000bdd0 <_ZL9threadEnd>
    80005258:	06079263          	bnez	a5,800052bc <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    8000525c:	00893503          	ld	a0,8(s2)
    80005260:	00001097          	auipc	ra,0x1
    80005264:	b94080e7          	jalr	-1132(ra) # 80005df4 <_ZN9BufferCPP3getEv>
        i++;
    80005268:	001a049b          	addiw	s1,s4,1
    8000526c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005270:	0ff57513          	andi	a0,a0,255
    80005274:	ffffc097          	auipc	ra,0xffffc
    80005278:	3d8080e7          	jalr	984(ra) # 8000164c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000527c:	00092703          	lw	a4,0(s2)
    80005280:	0027179b          	slliw	a5,a4,0x2
    80005284:	00e787bb          	addw	a5,a5,a4
    80005288:	02f4e7bb          	remw	a5,s1,a5
    8000528c:	fa0786e3          	beqz	a5,80005238 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005290:	05000793          	li	a5,80
    80005294:	02f4e4bb          	remw	s1,s1,a5
    80005298:	fa049ce3          	bnez	s1,80005250 <_ZN12ConsumerSync8consumerEPv+0x48>
    8000529c:	fa9ff06f          	j	80005244 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800052a0:	0209b783          	ld	a5,32(s3)
    800052a4:	0087b503          	ld	a0,8(a5)
    800052a8:	00001097          	auipc	ra,0x1
    800052ac:	b4c080e7          	jalr	-1204(ra) # 80005df4 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800052b0:	0ff57513          	andi	a0,a0,255
    800052b4:	ffffe097          	auipc	ra,0xffffe
    800052b8:	900080e7          	jalr	-1792(ra) # 80002bb4 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800052bc:	0209b783          	ld	a5,32(s3)
    800052c0:	0087b503          	ld	a0,8(a5)
    800052c4:	00001097          	auipc	ra,0x1
    800052c8:	bbc080e7          	jalr	-1092(ra) # 80005e80 <_ZN9BufferCPP6getCntEv>
    800052cc:	fca04ae3          	bgtz	a0,800052a0 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800052d0:	01093503          	ld	a0,16(s2)
    800052d4:	ffffe097          	auipc	ra,0xffffe
    800052d8:	824080e7          	jalr	-2012(ra) # 80002af8 <_ZN9Semaphore6signalEv>
}
    800052dc:	02813083          	ld	ra,40(sp)
    800052e0:	02013403          	ld	s0,32(sp)
    800052e4:	01813483          	ld	s1,24(sp)
    800052e8:	01013903          	ld	s2,16(sp)
    800052ec:	00813983          	ld	s3,8(sp)
    800052f0:	00013a03          	ld	s4,0(sp)
    800052f4:	03010113          	addi	sp,sp,48
    800052f8:	00008067          	ret

00000000800052fc <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800052fc:	f8010113          	addi	sp,sp,-128
    80005300:	06113c23          	sd	ra,120(sp)
    80005304:	06813823          	sd	s0,112(sp)
    80005308:	06913423          	sd	s1,104(sp)
    8000530c:	07213023          	sd	s2,96(sp)
    80005310:	05313c23          	sd	s3,88(sp)
    80005314:	05413823          	sd	s4,80(sp)
    80005318:	05513423          	sd	s5,72(sp)
    8000531c:	05613023          	sd	s6,64(sp)
    80005320:	03713c23          	sd	s7,56(sp)
    80005324:	03813823          	sd	s8,48(sp)
    80005328:	03913423          	sd	s9,40(sp)
    8000532c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005330:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005334:	00004517          	auipc	a0,0x4
    80005338:	11c50513          	addi	a0,a0,284 # 80009450 <CONSOLE_STATUS+0x440>
    8000533c:	00000097          	auipc	ra,0x0
    80005340:	604080e7          	jalr	1540(ra) # 80005940 <_Z11printStringPKc>
    getString(input, 30);
    80005344:	01e00593          	li	a1,30
    80005348:	f8040493          	addi	s1,s0,-128
    8000534c:	00048513          	mv	a0,s1
    80005350:	00000097          	auipc	ra,0x0
    80005354:	678080e7          	jalr	1656(ra) # 800059c8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005358:	00048513          	mv	a0,s1
    8000535c:	00000097          	auipc	ra,0x0
    80005360:	744080e7          	jalr	1860(ra) # 80005aa0 <_Z11stringToIntPKc>
    80005364:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005368:	00004517          	auipc	a0,0x4
    8000536c:	10850513          	addi	a0,a0,264 # 80009470 <CONSOLE_STATUS+0x460>
    80005370:	00000097          	auipc	ra,0x0
    80005374:	5d0080e7          	jalr	1488(ra) # 80005940 <_Z11printStringPKc>
    getString(input, 30);
    80005378:	01e00593          	li	a1,30
    8000537c:	00048513          	mv	a0,s1
    80005380:	00000097          	auipc	ra,0x0
    80005384:	648080e7          	jalr	1608(ra) # 800059c8 <_Z9getStringPci>
    n = stringToInt(input);
    80005388:	00048513          	mv	a0,s1
    8000538c:	00000097          	auipc	ra,0x0
    80005390:	714080e7          	jalr	1812(ra) # 80005aa0 <_Z11stringToIntPKc>
    80005394:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005398:	00004517          	auipc	a0,0x4
    8000539c:	0f850513          	addi	a0,a0,248 # 80009490 <CONSOLE_STATUS+0x480>
    800053a0:	00000097          	auipc	ra,0x0
    800053a4:	5a0080e7          	jalr	1440(ra) # 80005940 <_Z11printStringPKc>
    800053a8:	00000613          	li	a2,0
    800053ac:	00a00593          	li	a1,10
    800053b0:	00090513          	mv	a0,s2
    800053b4:	00000097          	auipc	ra,0x0
    800053b8:	73c080e7          	jalr	1852(ra) # 80005af0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800053bc:	00004517          	auipc	a0,0x4
    800053c0:	0ec50513          	addi	a0,a0,236 # 800094a8 <CONSOLE_STATUS+0x498>
    800053c4:	00000097          	auipc	ra,0x0
    800053c8:	57c080e7          	jalr	1404(ra) # 80005940 <_Z11printStringPKc>
    800053cc:	00000613          	li	a2,0
    800053d0:	00a00593          	li	a1,10
    800053d4:	00048513          	mv	a0,s1
    800053d8:	00000097          	auipc	ra,0x0
    800053dc:	718080e7          	jalr	1816(ra) # 80005af0 <_Z8printIntiii>
    printString(".\n");
    800053e0:	00004517          	auipc	a0,0x4
    800053e4:	0e050513          	addi	a0,a0,224 # 800094c0 <CONSOLE_STATUS+0x4b0>
    800053e8:	00000097          	auipc	ra,0x0
    800053ec:	558080e7          	jalr	1368(ra) # 80005940 <_Z11printStringPKc>
    if(threadNum > n) {
    800053f0:	0324c463          	blt	s1,s2,80005418 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800053f4:	03205c63          	blez	s2,8000542c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800053f8:	03800513          	li	a0,56
    800053fc:	ffffd097          	auipc	ra,0xffffd
    80005400:	298080e7          	jalr	664(ra) # 80002694 <_Znwm>
    80005404:	00050a93          	mv	s5,a0
    80005408:	00048593          	mv	a1,s1
    8000540c:	00001097          	auipc	ra,0x1
    80005410:	804080e7          	jalr	-2044(ra) # 80005c10 <_ZN9BufferCPPC1Ei>
    80005414:	0300006f          	j	80005444 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005418:	00004517          	auipc	a0,0x4
    8000541c:	0b050513          	addi	a0,a0,176 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80005420:	00000097          	auipc	ra,0x0
    80005424:	520080e7          	jalr	1312(ra) # 80005940 <_Z11printStringPKc>
        return;
    80005428:	0140006f          	j	8000543c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000542c:	00004517          	auipc	a0,0x4
    80005430:	0dc50513          	addi	a0,a0,220 # 80009508 <CONSOLE_STATUS+0x4f8>
    80005434:	00000097          	auipc	ra,0x0
    80005438:	50c080e7          	jalr	1292(ra) # 80005940 <_Z11printStringPKc>
        return;
    8000543c:	000b8113          	mv	sp,s7
    80005440:	2380006f          	j	80005678 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005444:	01000513          	li	a0,16
    80005448:	ffffd097          	auipc	ra,0xffffd
    8000544c:	24c080e7          	jalr	588(ra) # 80002694 <_Znwm>
    80005450:	00050493          	mv	s1,a0
    80005454:	00000593          	li	a1,0
    80005458:	ffffd097          	auipc	ra,0xffffd
    8000545c:	638080e7          	jalr	1592(ra) # 80002a90 <_ZN9SemaphoreC1Ej>
    80005460:	00007797          	auipc	a5,0x7
    80005464:	9697bc23          	sd	s1,-1672(a5) # 8000bdd8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005468:	00391793          	slli	a5,s2,0x3
    8000546c:	00f78793          	addi	a5,a5,15
    80005470:	ff07f793          	andi	a5,a5,-16
    80005474:	40f10133          	sub	sp,sp,a5
    80005478:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    8000547c:	0019071b          	addiw	a4,s2,1
    80005480:	00171793          	slli	a5,a4,0x1
    80005484:	00e787b3          	add	a5,a5,a4
    80005488:	00379793          	slli	a5,a5,0x3
    8000548c:	00f78793          	addi	a5,a5,15
    80005490:	ff07f793          	andi	a5,a5,-16
    80005494:	40f10133          	sub	sp,sp,a5
    80005498:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    8000549c:	00191c13          	slli	s8,s2,0x1
    800054a0:	012c07b3          	add	a5,s8,s2
    800054a4:	00379793          	slli	a5,a5,0x3
    800054a8:	00fa07b3          	add	a5,s4,a5
    800054ac:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800054b0:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800054b4:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800054b8:	02800513          	li	a0,40
    800054bc:	ffffd097          	auipc	ra,0xffffd
    800054c0:	1d8080e7          	jalr	472(ra) # 80002694 <_Znwm>
    800054c4:	00050b13          	mv	s6,a0
    800054c8:	012c0c33          	add	s8,s8,s2
    800054cc:	003c1c13          	slli	s8,s8,0x3
    800054d0:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800054d4:	ffffd097          	auipc	ra,0xffffd
    800054d8:	498080e7          	jalr	1176(ra) # 8000296c <_ZN6ThreadC1Ev>
    800054dc:	00006797          	auipc	a5,0x6
    800054e0:	7cc78793          	addi	a5,a5,1996 # 8000bca8 <_ZTV12ConsumerSync+0x10>
    800054e4:	00fb3023          	sd	a5,0(s6)
    800054e8:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800054ec:	000b0513          	mv	a0,s6
    800054f0:	ffffd097          	auipc	ra,0xffffd
    800054f4:	4ac080e7          	jalr	1196(ra) # 8000299c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800054f8:	00000493          	li	s1,0
    800054fc:	0380006f          	j	80005534 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005500:	00006797          	auipc	a5,0x6
    80005504:	78078793          	addi	a5,a5,1920 # 8000bc80 <_ZTV12ProducerSync+0x10>
    80005508:	00fcb023          	sd	a5,0(s9)
    8000550c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005510:	00349793          	slli	a5,s1,0x3
    80005514:	00f987b3          	add	a5,s3,a5
    80005518:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    8000551c:	00349793          	slli	a5,s1,0x3
    80005520:	00f987b3          	add	a5,s3,a5
    80005524:	0007b503          	ld	a0,0(a5)
    80005528:	ffffd097          	auipc	ra,0xffffd
    8000552c:	474080e7          	jalr	1140(ra) # 8000299c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005530:	0014849b          	addiw	s1,s1,1
    80005534:	0b24d063          	bge	s1,s2,800055d4 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005538:	00149793          	slli	a5,s1,0x1
    8000553c:	009787b3          	add	a5,a5,s1
    80005540:	00379793          	slli	a5,a5,0x3
    80005544:	00fa07b3          	add	a5,s4,a5
    80005548:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000554c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005550:	00007717          	auipc	a4,0x7
    80005554:	88873703          	ld	a4,-1912(a4) # 8000bdd8 <_ZL10waitForAll>
    80005558:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    8000555c:	02905863          	blez	s1,8000558c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005560:	02800513          	li	a0,40
    80005564:	ffffd097          	auipc	ra,0xffffd
    80005568:	130080e7          	jalr	304(ra) # 80002694 <_Znwm>
    8000556c:	00050c93          	mv	s9,a0
    80005570:	00149c13          	slli	s8,s1,0x1
    80005574:	009c0c33          	add	s8,s8,s1
    80005578:	003c1c13          	slli	s8,s8,0x3
    8000557c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005580:	ffffd097          	auipc	ra,0xffffd
    80005584:	3ec080e7          	jalr	1004(ra) # 8000296c <_ZN6ThreadC1Ev>
    80005588:	f79ff06f          	j	80005500 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    8000558c:	02800513          	li	a0,40
    80005590:	ffffd097          	auipc	ra,0xffffd
    80005594:	104080e7          	jalr	260(ra) # 80002694 <_Znwm>
    80005598:	00050c93          	mv	s9,a0
    8000559c:	00149c13          	slli	s8,s1,0x1
    800055a0:	009c0c33          	add	s8,s8,s1
    800055a4:	003c1c13          	slli	s8,s8,0x3
    800055a8:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800055ac:	ffffd097          	auipc	ra,0xffffd
    800055b0:	3c0080e7          	jalr	960(ra) # 8000296c <_ZN6ThreadC1Ev>
    800055b4:	00006797          	auipc	a5,0x6
    800055b8:	6a478793          	addi	a5,a5,1700 # 8000bc58 <_ZTV16ProducerKeyboard+0x10>
    800055bc:	00fcb023          	sd	a5,0(s9)
    800055c0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800055c4:	00349793          	slli	a5,s1,0x3
    800055c8:	00f987b3          	add	a5,s3,a5
    800055cc:	0197b023          	sd	s9,0(a5)
    800055d0:	f4dff06f          	j	8000551c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800055d4:	ffffd097          	auipc	ra,0xffffd
    800055d8:	41c080e7          	jalr	1052(ra) # 800029f0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800055dc:	00000493          	li	s1,0
    800055e0:	00994e63          	blt	s2,s1,800055fc <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800055e4:	00006517          	auipc	a0,0x6
    800055e8:	7f453503          	ld	a0,2036(a0) # 8000bdd8 <_ZL10waitForAll>
    800055ec:	ffffd097          	auipc	ra,0xffffd
    800055f0:	4e0080e7          	jalr	1248(ra) # 80002acc <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800055f4:	0014849b          	addiw	s1,s1,1
    800055f8:	fe9ff06f          	j	800055e0 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800055fc:	00000493          	li	s1,0
    80005600:	0080006f          	j	80005608 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005604:	0014849b          	addiw	s1,s1,1
    80005608:	0324d263          	bge	s1,s2,8000562c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    8000560c:	00349793          	slli	a5,s1,0x3
    80005610:	00f987b3          	add	a5,s3,a5
    80005614:	0007b503          	ld	a0,0(a5)
    80005618:	fe0506e3          	beqz	a0,80005604 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    8000561c:	00053783          	ld	a5,0(a0)
    80005620:	0087b783          	ld	a5,8(a5)
    80005624:	000780e7          	jalr	a5
    80005628:	fddff06f          	j	80005604 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    8000562c:	000b0a63          	beqz	s6,80005640 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005630:	000b3783          	ld	a5,0(s6)
    80005634:	0087b783          	ld	a5,8(a5)
    80005638:	000b0513          	mv	a0,s6
    8000563c:	000780e7          	jalr	a5
    delete waitForAll;
    80005640:	00006517          	auipc	a0,0x6
    80005644:	79853503          	ld	a0,1944(a0) # 8000bdd8 <_ZL10waitForAll>
    80005648:	00050863          	beqz	a0,80005658 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    8000564c:	00053783          	ld	a5,0(a0)
    80005650:	0087b783          	ld	a5,8(a5)
    80005654:	000780e7          	jalr	a5
    delete buffer;
    80005658:	000a8e63          	beqz	s5,80005674 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    8000565c:	000a8513          	mv	a0,s5
    80005660:	00001097          	auipc	ra,0x1
    80005664:	8a8080e7          	jalr	-1880(ra) # 80005f08 <_ZN9BufferCPPD1Ev>
    80005668:	000a8513          	mv	a0,s5
    8000566c:	ffffd097          	auipc	ra,0xffffd
    80005670:	078080e7          	jalr	120(ra) # 800026e4 <_ZdlPv>
    80005674:	000b8113          	mv	sp,s7

}
    80005678:	f8040113          	addi	sp,s0,-128
    8000567c:	07813083          	ld	ra,120(sp)
    80005680:	07013403          	ld	s0,112(sp)
    80005684:	06813483          	ld	s1,104(sp)
    80005688:	06013903          	ld	s2,96(sp)
    8000568c:	05813983          	ld	s3,88(sp)
    80005690:	05013a03          	ld	s4,80(sp)
    80005694:	04813a83          	ld	s5,72(sp)
    80005698:	04013b03          	ld	s6,64(sp)
    8000569c:	03813b83          	ld	s7,56(sp)
    800056a0:	03013c03          	ld	s8,48(sp)
    800056a4:	02813c83          	ld	s9,40(sp)
    800056a8:	08010113          	addi	sp,sp,128
    800056ac:	00008067          	ret
    800056b0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800056b4:	000a8513          	mv	a0,s5
    800056b8:	ffffd097          	auipc	ra,0xffffd
    800056bc:	02c080e7          	jalr	44(ra) # 800026e4 <_ZdlPv>
    800056c0:	00048513          	mv	a0,s1
    800056c4:	00007097          	auipc	ra,0x7
    800056c8:	7f4080e7          	jalr	2036(ra) # 8000ceb8 <_Unwind_Resume>
    800056cc:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800056d0:	00048513          	mv	a0,s1
    800056d4:	ffffd097          	auipc	ra,0xffffd
    800056d8:	010080e7          	jalr	16(ra) # 800026e4 <_ZdlPv>
    800056dc:	00090513          	mv	a0,s2
    800056e0:	00007097          	auipc	ra,0x7
    800056e4:	7d8080e7          	jalr	2008(ra) # 8000ceb8 <_Unwind_Resume>
    800056e8:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800056ec:	000b0513          	mv	a0,s6
    800056f0:	ffffd097          	auipc	ra,0xffffd
    800056f4:	ff4080e7          	jalr	-12(ra) # 800026e4 <_ZdlPv>
    800056f8:	00048513          	mv	a0,s1
    800056fc:	00007097          	auipc	ra,0x7
    80005700:	7bc080e7          	jalr	1980(ra) # 8000ceb8 <_Unwind_Resume>
    80005704:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005708:	000c8513          	mv	a0,s9
    8000570c:	ffffd097          	auipc	ra,0xffffd
    80005710:	fd8080e7          	jalr	-40(ra) # 800026e4 <_ZdlPv>
    80005714:	00048513          	mv	a0,s1
    80005718:	00007097          	auipc	ra,0x7
    8000571c:	7a0080e7          	jalr	1952(ra) # 8000ceb8 <_Unwind_Resume>
    80005720:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005724:	000c8513          	mv	a0,s9
    80005728:	ffffd097          	auipc	ra,0xffffd
    8000572c:	fbc080e7          	jalr	-68(ra) # 800026e4 <_ZdlPv>
    80005730:	00048513          	mv	a0,s1
    80005734:	00007097          	auipc	ra,0x7
    80005738:	784080e7          	jalr	1924(ra) # 8000ceb8 <_Unwind_Resume>

000000008000573c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    8000573c:	ff010113          	addi	sp,sp,-16
    80005740:	00113423          	sd	ra,8(sp)
    80005744:	00813023          	sd	s0,0(sp)
    80005748:	01010413          	addi	s0,sp,16
    8000574c:	00006797          	auipc	a5,0x6
    80005750:	55c78793          	addi	a5,a5,1372 # 8000bca8 <_ZTV12ConsumerSync+0x10>
    80005754:	00f53023          	sd	a5,0(a0)
    80005758:	ffffd097          	auipc	ra,0xffffd
    8000575c:	0f0080e7          	jalr	240(ra) # 80002848 <_ZN6ThreadD1Ev>
    80005760:	00813083          	ld	ra,8(sp)
    80005764:	00013403          	ld	s0,0(sp)
    80005768:	01010113          	addi	sp,sp,16
    8000576c:	00008067          	ret

0000000080005770 <_ZN12ConsumerSyncD0Ev>:
    80005770:	fe010113          	addi	sp,sp,-32
    80005774:	00113c23          	sd	ra,24(sp)
    80005778:	00813823          	sd	s0,16(sp)
    8000577c:	00913423          	sd	s1,8(sp)
    80005780:	02010413          	addi	s0,sp,32
    80005784:	00050493          	mv	s1,a0
    80005788:	00006797          	auipc	a5,0x6
    8000578c:	52078793          	addi	a5,a5,1312 # 8000bca8 <_ZTV12ConsumerSync+0x10>
    80005790:	00f53023          	sd	a5,0(a0)
    80005794:	ffffd097          	auipc	ra,0xffffd
    80005798:	0b4080e7          	jalr	180(ra) # 80002848 <_ZN6ThreadD1Ev>
    8000579c:	00048513          	mv	a0,s1
    800057a0:	ffffd097          	auipc	ra,0xffffd
    800057a4:	f44080e7          	jalr	-188(ra) # 800026e4 <_ZdlPv>
    800057a8:	01813083          	ld	ra,24(sp)
    800057ac:	01013403          	ld	s0,16(sp)
    800057b0:	00813483          	ld	s1,8(sp)
    800057b4:	02010113          	addi	sp,sp,32
    800057b8:	00008067          	ret

00000000800057bc <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800057bc:	ff010113          	addi	sp,sp,-16
    800057c0:	00113423          	sd	ra,8(sp)
    800057c4:	00813023          	sd	s0,0(sp)
    800057c8:	01010413          	addi	s0,sp,16
    800057cc:	00006797          	auipc	a5,0x6
    800057d0:	4b478793          	addi	a5,a5,1204 # 8000bc80 <_ZTV12ProducerSync+0x10>
    800057d4:	00f53023          	sd	a5,0(a0)
    800057d8:	ffffd097          	auipc	ra,0xffffd
    800057dc:	070080e7          	jalr	112(ra) # 80002848 <_ZN6ThreadD1Ev>
    800057e0:	00813083          	ld	ra,8(sp)
    800057e4:	00013403          	ld	s0,0(sp)
    800057e8:	01010113          	addi	sp,sp,16
    800057ec:	00008067          	ret

00000000800057f0 <_ZN12ProducerSyncD0Ev>:
    800057f0:	fe010113          	addi	sp,sp,-32
    800057f4:	00113c23          	sd	ra,24(sp)
    800057f8:	00813823          	sd	s0,16(sp)
    800057fc:	00913423          	sd	s1,8(sp)
    80005800:	02010413          	addi	s0,sp,32
    80005804:	00050493          	mv	s1,a0
    80005808:	00006797          	auipc	a5,0x6
    8000580c:	47878793          	addi	a5,a5,1144 # 8000bc80 <_ZTV12ProducerSync+0x10>
    80005810:	00f53023          	sd	a5,0(a0)
    80005814:	ffffd097          	auipc	ra,0xffffd
    80005818:	034080e7          	jalr	52(ra) # 80002848 <_ZN6ThreadD1Ev>
    8000581c:	00048513          	mv	a0,s1
    80005820:	ffffd097          	auipc	ra,0xffffd
    80005824:	ec4080e7          	jalr	-316(ra) # 800026e4 <_ZdlPv>
    80005828:	01813083          	ld	ra,24(sp)
    8000582c:	01013403          	ld	s0,16(sp)
    80005830:	00813483          	ld	s1,8(sp)
    80005834:	02010113          	addi	sp,sp,32
    80005838:	00008067          	ret

000000008000583c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    8000583c:	ff010113          	addi	sp,sp,-16
    80005840:	00113423          	sd	ra,8(sp)
    80005844:	00813023          	sd	s0,0(sp)
    80005848:	01010413          	addi	s0,sp,16
    8000584c:	00006797          	auipc	a5,0x6
    80005850:	40c78793          	addi	a5,a5,1036 # 8000bc58 <_ZTV16ProducerKeyboard+0x10>
    80005854:	00f53023          	sd	a5,0(a0)
    80005858:	ffffd097          	auipc	ra,0xffffd
    8000585c:	ff0080e7          	jalr	-16(ra) # 80002848 <_ZN6ThreadD1Ev>
    80005860:	00813083          	ld	ra,8(sp)
    80005864:	00013403          	ld	s0,0(sp)
    80005868:	01010113          	addi	sp,sp,16
    8000586c:	00008067          	ret

0000000080005870 <_ZN16ProducerKeyboardD0Ev>:
    80005870:	fe010113          	addi	sp,sp,-32
    80005874:	00113c23          	sd	ra,24(sp)
    80005878:	00813823          	sd	s0,16(sp)
    8000587c:	00913423          	sd	s1,8(sp)
    80005880:	02010413          	addi	s0,sp,32
    80005884:	00050493          	mv	s1,a0
    80005888:	00006797          	auipc	a5,0x6
    8000588c:	3d078793          	addi	a5,a5,976 # 8000bc58 <_ZTV16ProducerKeyboard+0x10>
    80005890:	00f53023          	sd	a5,0(a0)
    80005894:	ffffd097          	auipc	ra,0xffffd
    80005898:	fb4080e7          	jalr	-76(ra) # 80002848 <_ZN6ThreadD1Ev>
    8000589c:	00048513          	mv	a0,s1
    800058a0:	ffffd097          	auipc	ra,0xffffd
    800058a4:	e44080e7          	jalr	-444(ra) # 800026e4 <_ZdlPv>
    800058a8:	01813083          	ld	ra,24(sp)
    800058ac:	01013403          	ld	s0,16(sp)
    800058b0:	00813483          	ld	s1,8(sp)
    800058b4:	02010113          	addi	sp,sp,32
    800058b8:	00008067          	ret

00000000800058bc <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800058bc:	ff010113          	addi	sp,sp,-16
    800058c0:	00113423          	sd	ra,8(sp)
    800058c4:	00813023          	sd	s0,0(sp)
    800058c8:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800058cc:	02053583          	ld	a1,32(a0)
    800058d0:	fffff097          	auipc	ra,0xfffff
    800058d4:	7e4080e7          	jalr	2020(ra) # 800050b4 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800058d8:	00813083          	ld	ra,8(sp)
    800058dc:	00013403          	ld	s0,0(sp)
    800058e0:	01010113          	addi	sp,sp,16
    800058e4:	00008067          	ret

00000000800058e8 <_ZN12ProducerSync3runEv>:
    void run() override {
    800058e8:	ff010113          	addi	sp,sp,-16
    800058ec:	00113423          	sd	ra,8(sp)
    800058f0:	00813023          	sd	s0,0(sp)
    800058f4:	01010413          	addi	s0,sp,16
        producer(td);
    800058f8:	02053583          	ld	a1,32(a0)
    800058fc:	00000097          	auipc	ra,0x0
    80005900:	878080e7          	jalr	-1928(ra) # 80005174 <_ZN12ProducerSync8producerEPv>
    }
    80005904:	00813083          	ld	ra,8(sp)
    80005908:	00013403          	ld	s0,0(sp)
    8000590c:	01010113          	addi	sp,sp,16
    80005910:	00008067          	ret

0000000080005914 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005914:	ff010113          	addi	sp,sp,-16
    80005918:	00113423          	sd	ra,8(sp)
    8000591c:	00813023          	sd	s0,0(sp)
    80005920:	01010413          	addi	s0,sp,16
        consumer(td);
    80005924:	02053583          	ld	a1,32(a0)
    80005928:	00000097          	auipc	ra,0x0
    8000592c:	8e0080e7          	jalr	-1824(ra) # 80005208 <_ZN12ConsumerSync8consumerEPv>
    }
    80005930:	00813083          	ld	ra,8(sp)
    80005934:	00013403          	ld	s0,0(sp)
    80005938:	01010113          	addi	sp,sp,16
    8000593c:	00008067          	ret

0000000080005940 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005940:	fe010113          	addi	sp,sp,-32
    80005944:	00113c23          	sd	ra,24(sp)
    80005948:	00813823          	sd	s0,16(sp)
    8000594c:	00913423          	sd	s1,8(sp)
    80005950:	02010413          	addi	s0,sp,32
    80005954:	00050493          	mv	s1,a0
    LOCK();
    80005958:	00100613          	li	a2,1
    8000595c:	00000593          	li	a1,0
    80005960:	00006517          	auipc	a0,0x6
    80005964:	48050513          	addi	a0,a0,1152 # 8000bde0 <lockPrint>
    80005968:	ffffc097          	auipc	ra,0xffffc
    8000596c:	83c080e7          	jalr	-1988(ra) # 800011a4 <copy_and_swap>
    80005970:	00050863          	beqz	a0,80005980 <_Z11printStringPKc+0x40>
    80005974:	ffffc097          	auipc	ra,0xffffc
    80005978:	a90080e7          	jalr	-1392(ra) # 80001404 <_Z15thread_dispatchv>
    8000597c:	fddff06f          	j	80005958 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005980:	0004c503          	lbu	a0,0(s1)
    80005984:	00050a63          	beqz	a0,80005998 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005988:	ffffc097          	auipc	ra,0xffffc
    8000598c:	cc4080e7          	jalr	-828(ra) # 8000164c <_Z4putcc>
        string++;
    80005990:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005994:	fedff06f          	j	80005980 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005998:	00000613          	li	a2,0
    8000599c:	00100593          	li	a1,1
    800059a0:	00006517          	auipc	a0,0x6
    800059a4:	44050513          	addi	a0,a0,1088 # 8000bde0 <lockPrint>
    800059a8:	ffffb097          	auipc	ra,0xffffb
    800059ac:	7fc080e7          	jalr	2044(ra) # 800011a4 <copy_and_swap>
    800059b0:	fe0514e3          	bnez	a0,80005998 <_Z11printStringPKc+0x58>
}
    800059b4:	01813083          	ld	ra,24(sp)
    800059b8:	01013403          	ld	s0,16(sp)
    800059bc:	00813483          	ld	s1,8(sp)
    800059c0:	02010113          	addi	sp,sp,32
    800059c4:	00008067          	ret

00000000800059c8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800059c8:	fd010113          	addi	sp,sp,-48
    800059cc:	02113423          	sd	ra,40(sp)
    800059d0:	02813023          	sd	s0,32(sp)
    800059d4:	00913c23          	sd	s1,24(sp)
    800059d8:	01213823          	sd	s2,16(sp)
    800059dc:	01313423          	sd	s3,8(sp)
    800059e0:	01413023          	sd	s4,0(sp)
    800059e4:	03010413          	addi	s0,sp,48
    800059e8:	00050993          	mv	s3,a0
    800059ec:	00058a13          	mv	s4,a1
    LOCK();
    800059f0:	00100613          	li	a2,1
    800059f4:	00000593          	li	a1,0
    800059f8:	00006517          	auipc	a0,0x6
    800059fc:	3e850513          	addi	a0,a0,1000 # 8000bde0 <lockPrint>
    80005a00:	ffffb097          	auipc	ra,0xffffb
    80005a04:	7a4080e7          	jalr	1956(ra) # 800011a4 <copy_and_swap>
    80005a08:	00050863          	beqz	a0,80005a18 <_Z9getStringPci+0x50>
    80005a0c:	ffffc097          	auipc	ra,0xffffc
    80005a10:	9f8080e7          	jalr	-1544(ra) # 80001404 <_Z15thread_dispatchv>
    80005a14:	fddff06f          	j	800059f0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005a18:	00000913          	li	s2,0
    80005a1c:	00090493          	mv	s1,s2
    80005a20:	0019091b          	addiw	s2,s2,1
    80005a24:	03495a63          	bge	s2,s4,80005a58 <_Z9getStringPci+0x90>
        cc = getc();
    80005a28:	ffffc097          	auipc	ra,0xffffc
    80005a2c:	be4080e7          	jalr	-1052(ra) # 8000160c <_Z4getcv>
        if(cc < 1)
    80005a30:	02050463          	beqz	a0,80005a58 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005a34:	009984b3          	add	s1,s3,s1
    80005a38:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005a3c:	00a00793          	li	a5,10
    80005a40:	00f50a63          	beq	a0,a5,80005a54 <_Z9getStringPci+0x8c>
    80005a44:	00d00793          	li	a5,13
    80005a48:	fcf51ae3          	bne	a0,a5,80005a1c <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005a4c:	00090493          	mv	s1,s2
    80005a50:	0080006f          	j	80005a58 <_Z9getStringPci+0x90>
    80005a54:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005a58:	009984b3          	add	s1,s3,s1
    80005a5c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005a60:	00000613          	li	a2,0
    80005a64:	00100593          	li	a1,1
    80005a68:	00006517          	auipc	a0,0x6
    80005a6c:	37850513          	addi	a0,a0,888 # 8000bde0 <lockPrint>
    80005a70:	ffffb097          	auipc	ra,0xffffb
    80005a74:	734080e7          	jalr	1844(ra) # 800011a4 <copy_and_swap>
    80005a78:	fe0514e3          	bnez	a0,80005a60 <_Z9getStringPci+0x98>
    return buf;
}
    80005a7c:	00098513          	mv	a0,s3
    80005a80:	02813083          	ld	ra,40(sp)
    80005a84:	02013403          	ld	s0,32(sp)
    80005a88:	01813483          	ld	s1,24(sp)
    80005a8c:	01013903          	ld	s2,16(sp)
    80005a90:	00813983          	ld	s3,8(sp)
    80005a94:	00013a03          	ld	s4,0(sp)
    80005a98:	03010113          	addi	sp,sp,48
    80005a9c:	00008067          	ret

0000000080005aa0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005aa0:	ff010113          	addi	sp,sp,-16
    80005aa4:	00813423          	sd	s0,8(sp)
    80005aa8:	01010413          	addi	s0,sp,16
    80005aac:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005ab0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005ab4:	0006c603          	lbu	a2,0(a3)
    80005ab8:	fd06071b          	addiw	a4,a2,-48
    80005abc:	0ff77713          	andi	a4,a4,255
    80005ac0:	00900793          	li	a5,9
    80005ac4:	02e7e063          	bltu	a5,a4,80005ae4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005ac8:	0025179b          	slliw	a5,a0,0x2
    80005acc:	00a787bb          	addw	a5,a5,a0
    80005ad0:	0017979b          	slliw	a5,a5,0x1
    80005ad4:	00168693          	addi	a3,a3,1
    80005ad8:	00c787bb          	addw	a5,a5,a2
    80005adc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005ae0:	fd5ff06f          	j	80005ab4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005ae4:	00813403          	ld	s0,8(sp)
    80005ae8:	01010113          	addi	sp,sp,16
    80005aec:	00008067          	ret

0000000080005af0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005af0:	fc010113          	addi	sp,sp,-64
    80005af4:	02113c23          	sd	ra,56(sp)
    80005af8:	02813823          	sd	s0,48(sp)
    80005afc:	02913423          	sd	s1,40(sp)
    80005b00:	03213023          	sd	s2,32(sp)
    80005b04:	01313c23          	sd	s3,24(sp)
    80005b08:	04010413          	addi	s0,sp,64
    80005b0c:	00050493          	mv	s1,a0
    80005b10:	00058913          	mv	s2,a1
    80005b14:	00060993          	mv	s3,a2
    LOCK();
    80005b18:	00100613          	li	a2,1
    80005b1c:	00000593          	li	a1,0
    80005b20:	00006517          	auipc	a0,0x6
    80005b24:	2c050513          	addi	a0,a0,704 # 8000bde0 <lockPrint>
    80005b28:	ffffb097          	auipc	ra,0xffffb
    80005b2c:	67c080e7          	jalr	1660(ra) # 800011a4 <copy_and_swap>
    80005b30:	00050863          	beqz	a0,80005b40 <_Z8printIntiii+0x50>
    80005b34:	ffffc097          	auipc	ra,0xffffc
    80005b38:	8d0080e7          	jalr	-1840(ra) # 80001404 <_Z15thread_dispatchv>
    80005b3c:	fddff06f          	j	80005b18 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005b40:	00098463          	beqz	s3,80005b48 <_Z8printIntiii+0x58>
    80005b44:	0804c463          	bltz	s1,80005bcc <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005b48:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005b4c:	00000593          	li	a1,0
    }

    i = 0;
    80005b50:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005b54:	0009079b          	sext.w	a5,s2
    80005b58:	0325773b          	remuw	a4,a0,s2
    80005b5c:	00048613          	mv	a2,s1
    80005b60:	0014849b          	addiw	s1,s1,1
    80005b64:	02071693          	slli	a3,a4,0x20
    80005b68:	0206d693          	srli	a3,a3,0x20
    80005b6c:	00006717          	auipc	a4,0x6
    80005b70:	15470713          	addi	a4,a4,340 # 8000bcc0 <digits>
    80005b74:	00d70733          	add	a4,a4,a3
    80005b78:	00074683          	lbu	a3,0(a4)
    80005b7c:	fd040713          	addi	a4,s0,-48
    80005b80:	00c70733          	add	a4,a4,a2
    80005b84:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005b88:	0005071b          	sext.w	a4,a0
    80005b8c:	0325553b          	divuw	a0,a0,s2
    80005b90:	fcf772e3          	bgeu	a4,a5,80005b54 <_Z8printIntiii+0x64>
    if(neg)
    80005b94:	00058c63          	beqz	a1,80005bac <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005b98:	fd040793          	addi	a5,s0,-48
    80005b9c:	009784b3          	add	s1,a5,s1
    80005ba0:	02d00793          	li	a5,45
    80005ba4:	fef48823          	sb	a5,-16(s1)
    80005ba8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005bac:	fff4849b          	addiw	s1,s1,-1
    80005bb0:	0204c463          	bltz	s1,80005bd8 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005bb4:	fd040793          	addi	a5,s0,-48
    80005bb8:	009787b3          	add	a5,a5,s1
    80005bbc:	ff07c503          	lbu	a0,-16(a5)
    80005bc0:	ffffc097          	auipc	ra,0xffffc
    80005bc4:	a8c080e7          	jalr	-1396(ra) # 8000164c <_Z4putcc>
    80005bc8:	fe5ff06f          	j	80005bac <_Z8printIntiii+0xbc>
        x = -xx;
    80005bcc:	4090053b          	negw	a0,s1
        neg = 1;
    80005bd0:	00100593          	li	a1,1
        x = -xx;
    80005bd4:	f7dff06f          	j	80005b50 <_Z8printIntiii+0x60>

    UNLOCK();
    80005bd8:	00000613          	li	a2,0
    80005bdc:	00100593          	li	a1,1
    80005be0:	00006517          	auipc	a0,0x6
    80005be4:	20050513          	addi	a0,a0,512 # 8000bde0 <lockPrint>
    80005be8:	ffffb097          	auipc	ra,0xffffb
    80005bec:	5bc080e7          	jalr	1468(ra) # 800011a4 <copy_and_swap>
    80005bf0:	fe0514e3          	bnez	a0,80005bd8 <_Z8printIntiii+0xe8>
    80005bf4:	03813083          	ld	ra,56(sp)
    80005bf8:	03013403          	ld	s0,48(sp)
    80005bfc:	02813483          	ld	s1,40(sp)
    80005c00:	02013903          	ld	s2,32(sp)
    80005c04:	01813983          	ld	s3,24(sp)
    80005c08:	04010113          	addi	sp,sp,64
    80005c0c:	00008067          	ret

0000000080005c10 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005c10:	fd010113          	addi	sp,sp,-48
    80005c14:	02113423          	sd	ra,40(sp)
    80005c18:	02813023          	sd	s0,32(sp)
    80005c1c:	00913c23          	sd	s1,24(sp)
    80005c20:	01213823          	sd	s2,16(sp)
    80005c24:	01313423          	sd	s3,8(sp)
    80005c28:	03010413          	addi	s0,sp,48
    80005c2c:	00050493          	mv	s1,a0
    80005c30:	00058913          	mv	s2,a1
    80005c34:	0015879b          	addiw	a5,a1,1
    80005c38:	0007851b          	sext.w	a0,a5
    80005c3c:	00f4a023          	sw	a5,0(s1)
    80005c40:	0004a823          	sw	zero,16(s1)
    80005c44:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005c48:	00251513          	slli	a0,a0,0x2
    80005c4c:	ffffb097          	auipc	ra,0xffffb
    80005c50:	5ac080e7          	jalr	1452(ra) # 800011f8 <_Z9mem_allocm>
    80005c54:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005c58:	01000513          	li	a0,16
    80005c5c:	ffffd097          	auipc	ra,0xffffd
    80005c60:	a38080e7          	jalr	-1480(ra) # 80002694 <_Znwm>
    80005c64:	00050993          	mv	s3,a0
    80005c68:	00000593          	li	a1,0
    80005c6c:	ffffd097          	auipc	ra,0xffffd
    80005c70:	e24080e7          	jalr	-476(ra) # 80002a90 <_ZN9SemaphoreC1Ej>
    80005c74:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005c78:	01000513          	li	a0,16
    80005c7c:	ffffd097          	auipc	ra,0xffffd
    80005c80:	a18080e7          	jalr	-1512(ra) # 80002694 <_Znwm>
    80005c84:	00050993          	mv	s3,a0
    80005c88:	00090593          	mv	a1,s2
    80005c8c:	ffffd097          	auipc	ra,0xffffd
    80005c90:	e04080e7          	jalr	-508(ra) # 80002a90 <_ZN9SemaphoreC1Ej>
    80005c94:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005c98:	01000513          	li	a0,16
    80005c9c:	ffffd097          	auipc	ra,0xffffd
    80005ca0:	9f8080e7          	jalr	-1544(ra) # 80002694 <_Znwm>
    80005ca4:	00050913          	mv	s2,a0
    80005ca8:	00100593          	li	a1,1
    80005cac:	ffffd097          	auipc	ra,0xffffd
    80005cb0:	de4080e7          	jalr	-540(ra) # 80002a90 <_ZN9SemaphoreC1Ej>
    80005cb4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005cb8:	01000513          	li	a0,16
    80005cbc:	ffffd097          	auipc	ra,0xffffd
    80005cc0:	9d8080e7          	jalr	-1576(ra) # 80002694 <_Znwm>
    80005cc4:	00050913          	mv	s2,a0
    80005cc8:	00100593          	li	a1,1
    80005ccc:	ffffd097          	auipc	ra,0xffffd
    80005cd0:	dc4080e7          	jalr	-572(ra) # 80002a90 <_ZN9SemaphoreC1Ej>
    80005cd4:	0324b823          	sd	s2,48(s1)
}
    80005cd8:	02813083          	ld	ra,40(sp)
    80005cdc:	02013403          	ld	s0,32(sp)
    80005ce0:	01813483          	ld	s1,24(sp)
    80005ce4:	01013903          	ld	s2,16(sp)
    80005ce8:	00813983          	ld	s3,8(sp)
    80005cec:	03010113          	addi	sp,sp,48
    80005cf0:	00008067          	ret
    80005cf4:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005cf8:	00098513          	mv	a0,s3
    80005cfc:	ffffd097          	auipc	ra,0xffffd
    80005d00:	9e8080e7          	jalr	-1560(ra) # 800026e4 <_ZdlPv>
    80005d04:	00048513          	mv	a0,s1
    80005d08:	00007097          	auipc	ra,0x7
    80005d0c:	1b0080e7          	jalr	432(ra) # 8000ceb8 <_Unwind_Resume>
    80005d10:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005d14:	00098513          	mv	a0,s3
    80005d18:	ffffd097          	auipc	ra,0xffffd
    80005d1c:	9cc080e7          	jalr	-1588(ra) # 800026e4 <_ZdlPv>
    80005d20:	00048513          	mv	a0,s1
    80005d24:	00007097          	auipc	ra,0x7
    80005d28:	194080e7          	jalr	404(ra) # 8000ceb8 <_Unwind_Resume>
    80005d2c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005d30:	00090513          	mv	a0,s2
    80005d34:	ffffd097          	auipc	ra,0xffffd
    80005d38:	9b0080e7          	jalr	-1616(ra) # 800026e4 <_ZdlPv>
    80005d3c:	00048513          	mv	a0,s1
    80005d40:	00007097          	auipc	ra,0x7
    80005d44:	178080e7          	jalr	376(ra) # 8000ceb8 <_Unwind_Resume>
    80005d48:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005d4c:	00090513          	mv	a0,s2
    80005d50:	ffffd097          	auipc	ra,0xffffd
    80005d54:	994080e7          	jalr	-1644(ra) # 800026e4 <_ZdlPv>
    80005d58:	00048513          	mv	a0,s1
    80005d5c:	00007097          	auipc	ra,0x7
    80005d60:	15c080e7          	jalr	348(ra) # 8000ceb8 <_Unwind_Resume>

0000000080005d64 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005d64:	fe010113          	addi	sp,sp,-32
    80005d68:	00113c23          	sd	ra,24(sp)
    80005d6c:	00813823          	sd	s0,16(sp)
    80005d70:	00913423          	sd	s1,8(sp)
    80005d74:	01213023          	sd	s2,0(sp)
    80005d78:	02010413          	addi	s0,sp,32
    80005d7c:	00050493          	mv	s1,a0
    80005d80:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005d84:	01853503          	ld	a0,24(a0)
    80005d88:	ffffd097          	auipc	ra,0xffffd
    80005d8c:	d44080e7          	jalr	-700(ra) # 80002acc <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005d90:	0304b503          	ld	a0,48(s1)
    80005d94:	ffffd097          	auipc	ra,0xffffd
    80005d98:	d38080e7          	jalr	-712(ra) # 80002acc <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005d9c:	0084b783          	ld	a5,8(s1)
    80005da0:	0144a703          	lw	a4,20(s1)
    80005da4:	00271713          	slli	a4,a4,0x2
    80005da8:	00e787b3          	add	a5,a5,a4
    80005dac:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005db0:	0144a783          	lw	a5,20(s1)
    80005db4:	0017879b          	addiw	a5,a5,1
    80005db8:	0004a703          	lw	a4,0(s1)
    80005dbc:	02e7e7bb          	remw	a5,a5,a4
    80005dc0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005dc4:	0304b503          	ld	a0,48(s1)
    80005dc8:	ffffd097          	auipc	ra,0xffffd
    80005dcc:	d30080e7          	jalr	-720(ra) # 80002af8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005dd0:	0204b503          	ld	a0,32(s1)
    80005dd4:	ffffd097          	auipc	ra,0xffffd
    80005dd8:	d24080e7          	jalr	-732(ra) # 80002af8 <_ZN9Semaphore6signalEv>

}
    80005ddc:	01813083          	ld	ra,24(sp)
    80005de0:	01013403          	ld	s0,16(sp)
    80005de4:	00813483          	ld	s1,8(sp)
    80005de8:	00013903          	ld	s2,0(sp)
    80005dec:	02010113          	addi	sp,sp,32
    80005df0:	00008067          	ret

0000000080005df4 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005df4:	fe010113          	addi	sp,sp,-32
    80005df8:	00113c23          	sd	ra,24(sp)
    80005dfc:	00813823          	sd	s0,16(sp)
    80005e00:	00913423          	sd	s1,8(sp)
    80005e04:	01213023          	sd	s2,0(sp)
    80005e08:	02010413          	addi	s0,sp,32
    80005e0c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005e10:	02053503          	ld	a0,32(a0)
    80005e14:	ffffd097          	auipc	ra,0xffffd
    80005e18:	cb8080e7          	jalr	-840(ra) # 80002acc <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005e1c:	0284b503          	ld	a0,40(s1)
    80005e20:	ffffd097          	auipc	ra,0xffffd
    80005e24:	cac080e7          	jalr	-852(ra) # 80002acc <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005e28:	0084b703          	ld	a4,8(s1)
    80005e2c:	0104a783          	lw	a5,16(s1)
    80005e30:	00279693          	slli	a3,a5,0x2
    80005e34:	00d70733          	add	a4,a4,a3
    80005e38:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005e3c:	0017879b          	addiw	a5,a5,1
    80005e40:	0004a703          	lw	a4,0(s1)
    80005e44:	02e7e7bb          	remw	a5,a5,a4
    80005e48:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005e4c:	0284b503          	ld	a0,40(s1)
    80005e50:	ffffd097          	auipc	ra,0xffffd
    80005e54:	ca8080e7          	jalr	-856(ra) # 80002af8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005e58:	0184b503          	ld	a0,24(s1)
    80005e5c:	ffffd097          	auipc	ra,0xffffd
    80005e60:	c9c080e7          	jalr	-868(ra) # 80002af8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005e64:	00090513          	mv	a0,s2
    80005e68:	01813083          	ld	ra,24(sp)
    80005e6c:	01013403          	ld	s0,16(sp)
    80005e70:	00813483          	ld	s1,8(sp)
    80005e74:	00013903          	ld	s2,0(sp)
    80005e78:	02010113          	addi	sp,sp,32
    80005e7c:	00008067          	ret

0000000080005e80 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005e80:	fe010113          	addi	sp,sp,-32
    80005e84:	00113c23          	sd	ra,24(sp)
    80005e88:	00813823          	sd	s0,16(sp)
    80005e8c:	00913423          	sd	s1,8(sp)
    80005e90:	01213023          	sd	s2,0(sp)
    80005e94:	02010413          	addi	s0,sp,32
    80005e98:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005e9c:	02853503          	ld	a0,40(a0)
    80005ea0:	ffffd097          	auipc	ra,0xffffd
    80005ea4:	c2c080e7          	jalr	-980(ra) # 80002acc <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005ea8:	0304b503          	ld	a0,48(s1)
    80005eac:	ffffd097          	auipc	ra,0xffffd
    80005eb0:	c20080e7          	jalr	-992(ra) # 80002acc <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005eb4:	0144a783          	lw	a5,20(s1)
    80005eb8:	0104a903          	lw	s2,16(s1)
    80005ebc:	0327ce63          	blt	a5,s2,80005ef8 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005ec0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005ec4:	0304b503          	ld	a0,48(s1)
    80005ec8:	ffffd097          	auipc	ra,0xffffd
    80005ecc:	c30080e7          	jalr	-976(ra) # 80002af8 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005ed0:	0284b503          	ld	a0,40(s1)
    80005ed4:	ffffd097          	auipc	ra,0xffffd
    80005ed8:	c24080e7          	jalr	-988(ra) # 80002af8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005edc:	00090513          	mv	a0,s2
    80005ee0:	01813083          	ld	ra,24(sp)
    80005ee4:	01013403          	ld	s0,16(sp)
    80005ee8:	00813483          	ld	s1,8(sp)
    80005eec:	00013903          	ld	s2,0(sp)
    80005ef0:	02010113          	addi	sp,sp,32
    80005ef4:	00008067          	ret
        ret = cap - head + tail;
    80005ef8:	0004a703          	lw	a4,0(s1)
    80005efc:	4127093b          	subw	s2,a4,s2
    80005f00:	00f9093b          	addw	s2,s2,a5
    80005f04:	fc1ff06f          	j	80005ec4 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005f08 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005f08:	fe010113          	addi	sp,sp,-32
    80005f0c:	00113c23          	sd	ra,24(sp)
    80005f10:	00813823          	sd	s0,16(sp)
    80005f14:	00913423          	sd	s1,8(sp)
    80005f18:	02010413          	addi	s0,sp,32
    80005f1c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005f20:	00a00513          	li	a0,10
    80005f24:	ffffd097          	auipc	ra,0xffffd
    80005f28:	c90080e7          	jalr	-880(ra) # 80002bb4 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005f2c:	00003517          	auipc	a0,0x3
    80005f30:	70450513          	addi	a0,a0,1796 # 80009630 <CONSOLE_STATUS+0x620>
    80005f34:	00000097          	auipc	ra,0x0
    80005f38:	a0c080e7          	jalr	-1524(ra) # 80005940 <_Z11printStringPKc>
    while (getCnt()) {
    80005f3c:	00048513          	mv	a0,s1
    80005f40:	00000097          	auipc	ra,0x0
    80005f44:	f40080e7          	jalr	-192(ra) # 80005e80 <_ZN9BufferCPP6getCntEv>
    80005f48:	02050c63          	beqz	a0,80005f80 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005f4c:	0084b783          	ld	a5,8(s1)
    80005f50:	0104a703          	lw	a4,16(s1)
    80005f54:	00271713          	slli	a4,a4,0x2
    80005f58:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005f5c:	0007c503          	lbu	a0,0(a5)
    80005f60:	ffffd097          	auipc	ra,0xffffd
    80005f64:	c54080e7          	jalr	-940(ra) # 80002bb4 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005f68:	0104a783          	lw	a5,16(s1)
    80005f6c:	0017879b          	addiw	a5,a5,1
    80005f70:	0004a703          	lw	a4,0(s1)
    80005f74:	02e7e7bb          	remw	a5,a5,a4
    80005f78:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005f7c:	fc1ff06f          	j	80005f3c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005f80:	02100513          	li	a0,33
    80005f84:	ffffd097          	auipc	ra,0xffffd
    80005f88:	c30080e7          	jalr	-976(ra) # 80002bb4 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005f8c:	00a00513          	li	a0,10
    80005f90:	ffffd097          	auipc	ra,0xffffd
    80005f94:	c24080e7          	jalr	-988(ra) # 80002bb4 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005f98:	0084b503          	ld	a0,8(s1)
    80005f9c:	ffffb097          	auipc	ra,0xffffb
    80005fa0:	2a8080e7          	jalr	680(ra) # 80001244 <_Z8mem_freePv>
    delete itemAvailable;
    80005fa4:	0204b503          	ld	a0,32(s1)
    80005fa8:	00050863          	beqz	a0,80005fb8 <_ZN9BufferCPPD1Ev+0xb0>
    80005fac:	00053783          	ld	a5,0(a0)
    80005fb0:	0087b783          	ld	a5,8(a5)
    80005fb4:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005fb8:	0184b503          	ld	a0,24(s1)
    80005fbc:	00050863          	beqz	a0,80005fcc <_ZN9BufferCPPD1Ev+0xc4>
    80005fc0:	00053783          	ld	a5,0(a0)
    80005fc4:	0087b783          	ld	a5,8(a5)
    80005fc8:	000780e7          	jalr	a5
    delete mutexTail;
    80005fcc:	0304b503          	ld	a0,48(s1)
    80005fd0:	00050863          	beqz	a0,80005fe0 <_ZN9BufferCPPD1Ev+0xd8>
    80005fd4:	00053783          	ld	a5,0(a0)
    80005fd8:	0087b783          	ld	a5,8(a5)
    80005fdc:	000780e7          	jalr	a5
    delete mutexHead;
    80005fe0:	0284b503          	ld	a0,40(s1)
    80005fe4:	00050863          	beqz	a0,80005ff4 <_ZN9BufferCPPD1Ev+0xec>
    80005fe8:	00053783          	ld	a5,0(a0)
    80005fec:	0087b783          	ld	a5,8(a5)
    80005ff0:	000780e7          	jalr	a5
}
    80005ff4:	01813083          	ld	ra,24(sp)
    80005ff8:	01013403          	ld	s0,16(sp)
    80005ffc:	00813483          	ld	s1,8(sp)
    80006000:	02010113          	addi	sp,sp,32
    80006004:	00008067          	ret

0000000080006008 <_ZL10workerBodyPv>:

struct ThreadArg {
    MatrixData* data;
    int row;
};
static void workerBody(void* arg) {
    80006008:	ff010113          	addi	sp,sp,-16
    8000600c:	00113423          	sd	ra,8(sp)
    80006010:	00813023          	sd	s0,0(sp)
    80006014:	01010413          	addi	s0,sp,16
    ThreadArg* threadArg = (ThreadArg*)arg;
    MatrixData* data = threadArg->data;
    80006018:	00053603          	ld	a2,0(a0)
    int row = threadArg->row;
    8000601c:	00852683          	lw	a3,8(a0)
    int sum = 0;
    for (int j = 0;j<data->cols;j++) {
    80006020:	00000713          	li	a4,0
    int sum = 0;
    80006024:	00000593          	li	a1,0
    for (int j = 0;j<data->cols;j++) {
    80006028:	1bc62783          	lw	a5,444(a2)
    8000602c:	02f75663          	bge	a4,a5,80006058 <_ZL10workerBodyPv+0x50>
        sum += data->matrix[row][j];
    80006030:	00269793          	slli	a5,a3,0x2
    80006034:	00d787b3          	add	a5,a5,a3
    80006038:	00179793          	slli	a5,a5,0x1
    8000603c:	00e787b3          	add	a5,a5,a4
    80006040:	00279793          	slli	a5,a5,0x2
    80006044:	00f607b3          	add	a5,a2,a5
    80006048:	0007a783          	lw	a5,0(a5)
    8000604c:	00b785bb          	addw	a1,a5,a1
    for (int j = 0;j<data->cols;j++) {
    80006050:	0017071b          	addiw	a4,a4,1
    80006054:	fd5ff06f          	j	80006028 <_ZL10workerBodyPv+0x20>
    }
    data->rowsSums[row] = sum;
    80006058:	06468693          	addi	a3,a3,100
    8000605c:	00269693          	slli	a3,a3,0x2
    80006060:	00d606b3          	add	a3,a2,a3
    80006064:	00b6a023          	sw	a1,0(a3)
    sem_signal(data->done);
    80006068:	1c063503          	ld	a0,448(a2)
    8000606c:	ffffb097          	auipc	ra,0xffffb
    80006070:	498080e7          	jalr	1176(ra) # 80001504 <_Z10sem_signalP4_sem>
}
    80006074:	00813083          	ld	ra,8(sp)
    80006078:	00013403          	ld	s0,0(sp)
    8000607c:	01010113          	addi	sp,sp,16
    80006080:	00008067          	ret

0000000080006084 <_Z7modCAPIv>:

void modCAPI() {
    80006084:	ce010113          	addi	sp,sp,-800
    80006088:	30113c23          	sd	ra,792(sp)
    8000608c:	30813823          	sd	s0,784(sp)
    80006090:	30913423          	sd	s1,776(sp)
    80006094:	31213023          	sd	s2,768(sp)
    80006098:	2f313c23          	sd	s3,760(sp)
    8000609c:	2f413823          	sd	s4,752(sp)
    800060a0:	2f513423          	sd	s5,744(sp)
    800060a4:	32010413          	addi	s0,sp,800
    printString("Matrix row test started\n");
    800060a8:	00003517          	auipc	a0,0x3
    800060ac:	5a050513          	addi	a0,a0,1440 # 80009648 <CONSOLE_STATUS+0x638>
    800060b0:	00000097          	auipc	ra,0x0
    800060b4:	890080e7          	jalr	-1904(ra) # 80005940 <_Z11printStringPKc>
            //data.matrix[i][j] = i * N + j + 1;
            //expectedSum += data.matrix[i][j];
        //}
    //}
    char input[30];
    printString("Unesite M: ");
    800060b8:	00003517          	auipc	a0,0x3
    800060bc:	5b050513          	addi	a0,a0,1456 # 80009668 <CONSOLE_STATUS+0x658>
    800060c0:	00000097          	auipc	ra,0x0
    800060c4:	880080e7          	jalr	-1920(ra) # 80005940 <_Z11printStringPKc>
    getString(input, 30);
    800060c8:	01e00593          	li	a1,30
    800060cc:	dd840493          	addi	s1,s0,-552
    800060d0:	00048513          	mv	a0,s1
    800060d4:	00000097          	auipc	ra,0x0
    800060d8:	8f4080e7          	jalr	-1804(ra) # 800059c8 <_Z9getStringPci>
    data.cols = stringToInt(input);
    800060dc:	00048513          	mv	a0,s1
    800060e0:	00000097          	auipc	ra,0x0
    800060e4:	9c0080e7          	jalr	-1600(ra) # 80005aa0 <_Z11stringToIntPKc>
    800060e8:	faa42a23          	sw	a0,-76(s0)
    printString("Unesite N: ");
    800060ec:	00003517          	auipc	a0,0x3
    800060f0:	58c50513          	addi	a0,a0,1420 # 80009678 <CONSOLE_STATUS+0x668>
    800060f4:	00000097          	auipc	ra,0x0
    800060f8:	84c080e7          	jalr	-1972(ra) # 80005940 <_Z11printStringPKc>
    getString(input, 30);
    800060fc:	01e00593          	li	a1,30
    80006100:	00048513          	mv	a0,s1
    80006104:	00000097          	auipc	ra,0x0
    80006108:	8c4080e7          	jalr	-1852(ra) # 800059c8 <_Z9getStringPci>
    data.rows = stringToInt(input);
    8000610c:	00048513          	mv	a0,s1
    80006110:	00000097          	auipc	ra,0x0
    80006114:	990080e7          	jalr	-1648(ra) # 80005aa0 <_Z11stringToIntPKc>
    80006118:	faa42823          	sw	a0,-80(s0)
    printString("Unesite elemente matrice: ");
    8000611c:	00003517          	auipc	a0,0x3
    80006120:	56c50513          	addi	a0,a0,1388 # 80009688 <CONSOLE_STATUS+0x678>
    80006124:	00000097          	auipc	ra,0x0
    80006128:	81c080e7          	jalr	-2020(ra) # 80005940 <_Z11printStringPKc>
    int counter = 1;
    for (int i = 0;i<data.cols;i++) {
    8000612c:	00000713          	li	a4,0
    80006130:	fb442783          	lw	a5,-76(s0)
    80006134:	02f75063          	bge	a4,a5,80006154 <_Z7modCAPIv+0xd0>
        data.rowsSums[i] = 0;
    80006138:	06470793          	addi	a5,a4,100
    8000613c:	00279793          	slli	a5,a5,0x2
    80006140:	fc040693          	addi	a3,s0,-64
    80006144:	00f687b3          	add	a5,a3,a5
    80006148:	e207ac23          	sw	zero,-456(a5)
    for (int i = 0;i<data.cols;i++) {
    8000614c:	0017071b          	addiw	a4,a4,1
    80006150:	fe1ff06f          	j	80006130 <_Z7modCAPIv+0xac>
    }
    for (int i = 0;i<data.cols;i++) {
    80006154:	00000993          	li	s3,0
    int counter = 1;
    80006158:	00100913          	li	s2,1
    int expectedSum = 0;
    8000615c:	00000a13          	li	s4,0
    80006160:	0800006f          	j	800061e0 <_Z7modCAPIv+0x15c>
        for (int j = 0;j<data.rows;j++) {
            printInt(counter);
    80006164:	00000613          	li	a2,0
    80006168:	00a00593          	li	a1,10
    8000616c:	00090513          	mv	a0,s2
    80006170:	00000097          	auipc	ra,0x0
    80006174:	980080e7          	jalr	-1664(ra) # 80005af0 <_Z8printIntiii>
            printString(". element: ");
    80006178:	00003517          	auipc	a0,0x3
    8000617c:	29050513          	addi	a0,a0,656 # 80009408 <CONSOLE_STATUS+0x3f8>
    80006180:	fffff097          	auipc	ra,0xfffff
    80006184:	7c0080e7          	jalr	1984(ra) # 80005940 <_Z11printStringPKc>
            getString(input, 30);
    80006188:	01e00593          	li	a1,30
    8000618c:	dd840a93          	addi	s5,s0,-552
    80006190:	000a8513          	mv	a0,s5
    80006194:	00000097          	auipc	ra,0x0
    80006198:	834080e7          	jalr	-1996(ra) # 800059c8 <_Z9getStringPci>
            data.matrix[i][j] = stringToInt(input);
    8000619c:	000a8513          	mv	a0,s5
    800061a0:	00000097          	auipc	ra,0x0
    800061a4:	900080e7          	jalr	-1792(ra) # 80005aa0 <_Z11stringToIntPKc>
    800061a8:	00299793          	slli	a5,s3,0x2
    800061ac:	013787b3          	add	a5,a5,s3
    800061b0:	00179793          	slli	a5,a5,0x1
    800061b4:	009787b3          	add	a5,a5,s1
    800061b8:	00279793          	slli	a5,a5,0x2
    800061bc:	fc040713          	addi	a4,s0,-64
    800061c0:	00f707b3          	add	a5,a4,a5
    800061c4:	e2a7ac23          	sw	a0,-456(a5)
            counter++;
    800061c8:	0019091b          	addiw	s2,s2,1
            expectedSum += data.matrix[i][j];
    800061cc:	00aa0a3b          	addw	s4,s4,a0
        for (int j = 0;j<data.rows;j++) {
    800061d0:	0014849b          	addiw	s1,s1,1
    800061d4:	fb042783          	lw	a5,-80(s0)
    800061d8:	f8f4c6e3          	blt	s1,a5,80006164 <_Z7modCAPIv+0xe0>
    for (int i = 0;i<data.cols;i++) {
    800061dc:	0019899b          	addiw	s3,s3,1
    800061e0:	fb442783          	lw	a5,-76(s0)
    800061e4:	00f9d663          	bge	s3,a5,800061f0 <_Z7modCAPIv+0x16c>
        for (int j = 0;j<data.rows;j++) {
    800061e8:	00000493          	li	s1,0
    800061ec:	fe9ff06f          	j	800061d4 <_Z7modCAPIv+0x150>
        }
    }
    //obrni samo rows i cols
    sem_open(&data.done, 0);
    800061f0:	00000593          	li	a1,0
    800061f4:	fb840513          	addi	a0,s0,-72
    800061f8:	ffffb097          	auipc	ra,0xffffb
    800061fc:	248080e7          	jalr	584(ra) # 80001440 <_Z8sem_openPP4_semj>
    thread_t threads[MAX];
    ThreadArg threadArgs[MAX];
    for (int i = 0;i<data.cols;i++) {
    80006200:	00000493          	li	s1,0
    80006204:	fb442783          	lw	a5,-76(s0)
    80006208:	04f4d463          	bge	s1,a5,80006250 <_Z7modCAPIv+0x1cc>
        threadArgs[i].data = &data;
    8000620c:	00449793          	slli	a5,s1,0x4
    80006210:	fc040713          	addi	a4,s0,-64
    80006214:	00f70733          	add	a4,a4,a5
    80006218:	df840693          	addi	a3,s0,-520
    8000621c:	d2d73423          	sd	a3,-728(a4)
        threadArgs[i].row = i;
    80006220:	d2972823          	sw	s1,-720(a4)
        thread_create(&threads[i], workerBody, (void*)&threadArgs[i]);
    80006224:	00349713          	slli	a4,s1,0x3
    80006228:	ce840613          	addi	a2,s0,-792
    8000622c:	00f60633          	add	a2,a2,a5
    80006230:	00000597          	auipc	a1,0x0
    80006234:	dd858593          	addi	a1,a1,-552 # 80006008 <_ZL10workerBodyPv>
    80006238:	d8840513          	addi	a0,s0,-632
    8000623c:	00e50533          	add	a0,a0,a4
    80006240:	ffffb097          	auipc	ra,0xffffb
    80006244:	044080e7          	jalr	68(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0;i<data.cols;i++) {
    80006248:	0014849b          	addiw	s1,s1,1
    8000624c:	fb9ff06f          	j	80006204 <_Z7modCAPIv+0x180>
    }
    for (int i = 0;i<data.cols;i++) {
    80006250:	00000493          	li	s1,0
    80006254:	fb442683          	lw	a3,-76(s0)
    80006258:	00d4dc63          	bge	s1,a3,80006270 <_Z7modCAPIv+0x1ec>
        sem_wait(data.done);
    8000625c:	fb843503          	ld	a0,-72(s0)
    80006260:	ffffb097          	auipc	ra,0xffffb
    80006264:	264080e7          	jalr	612(ra) # 800014c4 <_Z8sem_waitP4_sem>
    for (int i = 0;i<data.cols;i++) {
    80006268:	0014849b          	addiw	s1,s1,1
    8000626c:	fe9ff06f          	j	80006254 <_Z7modCAPIv+0x1d0>
    }
    int finalSum = 0;
    for (int i = 0;i<data.cols;i++) {
    80006270:	00000713          	li	a4,0
    int finalSum = 0;
    80006274:	00000493          	li	s1,0
    for (int i = 0;i<data.cols;i++) {
    80006278:	02d75263          	bge	a4,a3,8000629c <_Z7modCAPIv+0x218>
        finalSum += data.rowsSums[i];
    8000627c:	06470793          	addi	a5,a4,100
    80006280:	00279793          	slli	a5,a5,0x2
    80006284:	fc040613          	addi	a2,s0,-64
    80006288:	00f607b3          	add	a5,a2,a5
    8000628c:	e387a783          	lw	a5,-456(a5)
    80006290:	009784bb          	addw	s1,a5,s1
    for (int i = 0;i<data.cols;i++) {
    80006294:	0017071b          	addiw	a4,a4,1
    80006298:	fe1ff06f          	j	80006278 <_Z7modCAPIv+0x1f4>
    }
    printString("Final matrix sum = ");
    8000629c:	00003517          	auipc	a0,0x3
    800062a0:	40c50513          	addi	a0,a0,1036 # 800096a8 <CONSOLE_STATUS+0x698>
    800062a4:	fffff097          	auipc	ra,0xfffff
    800062a8:	69c080e7          	jalr	1692(ra) # 80005940 <_Z11printStringPKc>
    printInt(finalSum);
    800062ac:	00000613          	li	a2,0
    800062b0:	00a00593          	li	a1,10
    800062b4:	00048513          	mv	a0,s1
    800062b8:	00000097          	auipc	ra,0x0
    800062bc:	838080e7          	jalr	-1992(ra) # 80005af0 <_Z8printIntiii>
    printString("\n");
    800062c0:	00003517          	auipc	a0,0x3
    800062c4:	ff850513          	addi	a0,a0,-8 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800062c8:	fffff097          	auipc	ra,0xfffff
    800062cc:	678080e7          	jalr	1656(ra) # 80005940 <_Z11printStringPKc>
    if (finalSum == expectedSum) {
    800062d0:	029a0463          	beq	s4,s1,800062f8 <_Z7modCAPIv+0x274>
        printString("TEST PASSED");
    }
    800062d4:	31813083          	ld	ra,792(sp)
    800062d8:	31013403          	ld	s0,784(sp)
    800062dc:	30813483          	ld	s1,776(sp)
    800062e0:	30013903          	ld	s2,768(sp)
    800062e4:	2f813983          	ld	s3,760(sp)
    800062e8:	2f013a03          	ld	s4,752(sp)
    800062ec:	2e813a83          	ld	s5,744(sp)
    800062f0:	32010113          	addi	sp,sp,800
    800062f4:	00008067          	ret
        printString("TEST PASSED");
    800062f8:	00003517          	auipc	a0,0x3
    800062fc:	3c850513          	addi	a0,a0,968 # 800096c0 <CONSOLE_STATUS+0x6b0>
    80006300:	fffff097          	auipc	ra,0xfffff
    80006304:	640080e7          	jalr	1600(ra) # 80005940 <_Z11printStringPKc>
    80006308:	fcdff06f          	j	800062d4 <_Z7modCAPIv+0x250>

000000008000630c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    8000630c:	fe010113          	addi	sp,sp,-32
    80006310:	00113c23          	sd	ra,24(sp)
    80006314:	00813823          	sd	s0,16(sp)
    80006318:	00913423          	sd	s1,8(sp)
    8000631c:	01213023          	sd	s2,0(sp)
    80006320:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006324:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006328:	00600493          	li	s1,6
    while (--i > 0) {
    8000632c:	fff4849b          	addiw	s1,s1,-1
    80006330:	04905463          	blez	s1,80006378 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006334:	00003517          	auipc	a0,0x3
    80006338:	39c50513          	addi	a0,a0,924 # 800096d0 <CONSOLE_STATUS+0x6c0>
    8000633c:	fffff097          	auipc	ra,0xfffff
    80006340:	604080e7          	jalr	1540(ra) # 80005940 <_Z11printStringPKc>
        printInt(sleep_time);
    80006344:	00000613          	li	a2,0
    80006348:	00a00593          	li	a1,10
    8000634c:	0009051b          	sext.w	a0,s2
    80006350:	fffff097          	auipc	ra,0xfffff
    80006354:	7a0080e7          	jalr	1952(ra) # 80005af0 <_Z8printIntiii>
        printString(" !\n");
    80006358:	00003517          	auipc	a0,0x3
    8000635c:	38050513          	addi	a0,a0,896 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80006360:	fffff097          	auipc	ra,0xfffff
    80006364:	5e0080e7          	jalr	1504(ra) # 80005940 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006368:	00090513          	mv	a0,s2
    8000636c:	ffffb097          	auipc	ra,0xffffb
    80006370:	260080e7          	jalr	608(ra) # 800015cc <_Z10time_sleepm>
    while (--i > 0) {
    80006374:	fb9ff06f          	j	8000632c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006378:	00a00793          	li	a5,10
    8000637c:	02f95933          	divu	s2,s2,a5
    80006380:	fff90913          	addi	s2,s2,-1
    80006384:	00006797          	auipc	a5,0x6
    80006388:	a6478793          	addi	a5,a5,-1436 # 8000bde8 <_ZL8finished>
    8000638c:	01278933          	add	s2,a5,s2
    80006390:	00100793          	li	a5,1
    80006394:	00f90023          	sb	a5,0(s2)
}
    80006398:	01813083          	ld	ra,24(sp)
    8000639c:	01013403          	ld	s0,16(sp)
    800063a0:	00813483          	ld	s1,8(sp)
    800063a4:	00013903          	ld	s2,0(sp)
    800063a8:	02010113          	addi	sp,sp,32
    800063ac:	00008067          	ret

00000000800063b0 <_Z12testSleepingv>:

void testSleeping() {
    800063b0:	fc010113          	addi	sp,sp,-64
    800063b4:	02113c23          	sd	ra,56(sp)
    800063b8:	02813823          	sd	s0,48(sp)
    800063bc:	02913423          	sd	s1,40(sp)
    800063c0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800063c4:	00a00793          	li	a5,10
    800063c8:	fcf43823          	sd	a5,-48(s0)
    800063cc:	01400793          	li	a5,20
    800063d0:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800063d4:	00000493          	li	s1,0
    800063d8:	02c0006f          	j	80006404 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800063dc:	00349793          	slli	a5,s1,0x3
    800063e0:	fd040613          	addi	a2,s0,-48
    800063e4:	00f60633          	add	a2,a2,a5
    800063e8:	00000597          	auipc	a1,0x0
    800063ec:	f2458593          	addi	a1,a1,-220 # 8000630c <_ZL9sleepyRunPv>
    800063f0:	fc040513          	addi	a0,s0,-64
    800063f4:	00f50533          	add	a0,a0,a5
    800063f8:	ffffb097          	auipc	ra,0xffffb
    800063fc:	e8c080e7          	jalr	-372(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006400:	0014849b          	addiw	s1,s1,1
    80006404:	00100793          	li	a5,1
    80006408:	fc97dae3          	bge	a5,s1,800063dc <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    8000640c:	00006797          	auipc	a5,0x6
    80006410:	9dc7c783          	lbu	a5,-1572(a5) # 8000bde8 <_ZL8finished>
    80006414:	fe078ce3          	beqz	a5,8000640c <_Z12testSleepingv+0x5c>
    80006418:	00006797          	auipc	a5,0x6
    8000641c:	9d17c783          	lbu	a5,-1583(a5) # 8000bde9 <_ZL8finished+0x1>
    80006420:	fe0786e3          	beqz	a5,8000640c <_Z12testSleepingv+0x5c>
}
    80006424:	03813083          	ld	ra,56(sp)
    80006428:	03013403          	ld	s0,48(sp)
    8000642c:	02813483          	ld	s1,40(sp)
    80006430:	04010113          	addi	sp,sp,64
    80006434:	00008067          	ret

0000000080006438 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006438:	fe010113          	addi	sp,sp,-32
    8000643c:	00113c23          	sd	ra,24(sp)
    80006440:	00813823          	sd	s0,16(sp)
    80006444:	00913423          	sd	s1,8(sp)
    80006448:	01213023          	sd	s2,0(sp)
    8000644c:	02010413          	addi	s0,sp,32
    80006450:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006454:	00100793          	li	a5,1
    80006458:	02a7f863          	bgeu	a5,a0,80006488 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000645c:	00a00793          	li	a5,10
    80006460:	02f577b3          	remu	a5,a0,a5
    80006464:	02078e63          	beqz	a5,800064a0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006468:	fff48513          	addi	a0,s1,-1
    8000646c:	00000097          	auipc	ra,0x0
    80006470:	fcc080e7          	jalr	-52(ra) # 80006438 <_ZL9fibonaccim>
    80006474:	00050913          	mv	s2,a0
    80006478:	ffe48513          	addi	a0,s1,-2
    8000647c:	00000097          	auipc	ra,0x0
    80006480:	fbc080e7          	jalr	-68(ra) # 80006438 <_ZL9fibonaccim>
    80006484:	00a90533          	add	a0,s2,a0
}
    80006488:	01813083          	ld	ra,24(sp)
    8000648c:	01013403          	ld	s0,16(sp)
    80006490:	00813483          	ld	s1,8(sp)
    80006494:	00013903          	ld	s2,0(sp)
    80006498:	02010113          	addi	sp,sp,32
    8000649c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800064a0:	ffffb097          	auipc	ra,0xffffb
    800064a4:	f64080e7          	jalr	-156(ra) # 80001404 <_Z15thread_dispatchv>
    800064a8:	fc1ff06f          	j	80006468 <_ZL9fibonaccim+0x30>

00000000800064ac <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800064ac:	fe010113          	addi	sp,sp,-32
    800064b0:	00113c23          	sd	ra,24(sp)
    800064b4:	00813823          	sd	s0,16(sp)
    800064b8:	00913423          	sd	s1,8(sp)
    800064bc:	01213023          	sd	s2,0(sp)
    800064c0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800064c4:	00a00493          	li	s1,10
    800064c8:	0400006f          	j	80006508 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800064cc:	00003517          	auipc	a0,0x3
    800064d0:	0cc50513          	addi	a0,a0,204 # 80009598 <CONSOLE_STATUS+0x588>
    800064d4:	fffff097          	auipc	ra,0xfffff
    800064d8:	46c080e7          	jalr	1132(ra) # 80005940 <_Z11printStringPKc>
    800064dc:	00000613          	li	a2,0
    800064e0:	00a00593          	li	a1,10
    800064e4:	00048513          	mv	a0,s1
    800064e8:	fffff097          	auipc	ra,0xfffff
    800064ec:	608080e7          	jalr	1544(ra) # 80005af0 <_Z8printIntiii>
    800064f0:	00003517          	auipc	a0,0x3
    800064f4:	dc850513          	addi	a0,a0,-568 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800064f8:	fffff097          	auipc	ra,0xfffff
    800064fc:	448080e7          	jalr	1096(ra) # 80005940 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006500:	0014849b          	addiw	s1,s1,1
    80006504:	0ff4f493          	andi	s1,s1,255
    80006508:	00c00793          	li	a5,12
    8000650c:	fc97f0e3          	bgeu	a5,s1,800064cc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006510:	00003517          	auipc	a0,0x3
    80006514:	09050513          	addi	a0,a0,144 # 800095a0 <CONSOLE_STATUS+0x590>
    80006518:	fffff097          	auipc	ra,0xfffff
    8000651c:	428080e7          	jalr	1064(ra) # 80005940 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006520:	00500313          	li	t1,5
    thread_dispatch();
    80006524:	ffffb097          	auipc	ra,0xffffb
    80006528:	ee0080e7          	jalr	-288(ra) # 80001404 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000652c:	01000513          	li	a0,16
    80006530:	00000097          	auipc	ra,0x0
    80006534:	f08080e7          	jalr	-248(ra) # 80006438 <_ZL9fibonaccim>
    80006538:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000653c:	00003517          	auipc	a0,0x3
    80006540:	07450513          	addi	a0,a0,116 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80006544:	fffff097          	auipc	ra,0xfffff
    80006548:	3fc080e7          	jalr	1020(ra) # 80005940 <_Z11printStringPKc>
    8000654c:	00000613          	li	a2,0
    80006550:	00a00593          	li	a1,10
    80006554:	0009051b          	sext.w	a0,s2
    80006558:	fffff097          	auipc	ra,0xfffff
    8000655c:	598080e7          	jalr	1432(ra) # 80005af0 <_Z8printIntiii>
    80006560:	00003517          	auipc	a0,0x3
    80006564:	d5850513          	addi	a0,a0,-680 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006568:	fffff097          	auipc	ra,0xfffff
    8000656c:	3d8080e7          	jalr	984(ra) # 80005940 <_Z11printStringPKc>
    80006570:	0400006f          	j	800065b0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006574:	00003517          	auipc	a0,0x3
    80006578:	02450513          	addi	a0,a0,36 # 80009598 <CONSOLE_STATUS+0x588>
    8000657c:	fffff097          	auipc	ra,0xfffff
    80006580:	3c4080e7          	jalr	964(ra) # 80005940 <_Z11printStringPKc>
    80006584:	00000613          	li	a2,0
    80006588:	00a00593          	li	a1,10
    8000658c:	00048513          	mv	a0,s1
    80006590:	fffff097          	auipc	ra,0xfffff
    80006594:	560080e7          	jalr	1376(ra) # 80005af0 <_Z8printIntiii>
    80006598:	00003517          	auipc	a0,0x3
    8000659c:	d2050513          	addi	a0,a0,-736 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800065a0:	fffff097          	auipc	ra,0xfffff
    800065a4:	3a0080e7          	jalr	928(ra) # 80005940 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800065a8:	0014849b          	addiw	s1,s1,1
    800065ac:	0ff4f493          	andi	s1,s1,255
    800065b0:	00f00793          	li	a5,15
    800065b4:	fc97f0e3          	bgeu	a5,s1,80006574 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800065b8:	00003517          	auipc	a0,0x3
    800065bc:	00850513          	addi	a0,a0,8 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800065c0:	fffff097          	auipc	ra,0xfffff
    800065c4:	380080e7          	jalr	896(ra) # 80005940 <_Z11printStringPKc>
    finishedD = true;
    800065c8:	00100793          	li	a5,1
    800065cc:	00006717          	auipc	a4,0x6
    800065d0:	80f70f23          	sb	a5,-2018(a4) # 8000bdea <_ZL9finishedD>
    thread_dispatch();
    800065d4:	ffffb097          	auipc	ra,0xffffb
    800065d8:	e30080e7          	jalr	-464(ra) # 80001404 <_Z15thread_dispatchv>
}
    800065dc:	01813083          	ld	ra,24(sp)
    800065e0:	01013403          	ld	s0,16(sp)
    800065e4:	00813483          	ld	s1,8(sp)
    800065e8:	00013903          	ld	s2,0(sp)
    800065ec:	02010113          	addi	sp,sp,32
    800065f0:	00008067          	ret

00000000800065f4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800065f4:	fe010113          	addi	sp,sp,-32
    800065f8:	00113c23          	sd	ra,24(sp)
    800065fc:	00813823          	sd	s0,16(sp)
    80006600:	00913423          	sd	s1,8(sp)
    80006604:	01213023          	sd	s2,0(sp)
    80006608:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000660c:	00000493          	li	s1,0
    80006610:	0400006f          	j	80006650 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006614:	00003517          	auipc	a0,0x3
    80006618:	f5450513          	addi	a0,a0,-172 # 80009568 <CONSOLE_STATUS+0x558>
    8000661c:	fffff097          	auipc	ra,0xfffff
    80006620:	324080e7          	jalr	804(ra) # 80005940 <_Z11printStringPKc>
    80006624:	00000613          	li	a2,0
    80006628:	00a00593          	li	a1,10
    8000662c:	00048513          	mv	a0,s1
    80006630:	fffff097          	auipc	ra,0xfffff
    80006634:	4c0080e7          	jalr	1216(ra) # 80005af0 <_Z8printIntiii>
    80006638:	00003517          	auipc	a0,0x3
    8000663c:	c8050513          	addi	a0,a0,-896 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006640:	fffff097          	auipc	ra,0xfffff
    80006644:	300080e7          	jalr	768(ra) # 80005940 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006648:	0014849b          	addiw	s1,s1,1
    8000664c:	0ff4f493          	andi	s1,s1,255
    80006650:	00200793          	li	a5,2
    80006654:	fc97f0e3          	bgeu	a5,s1,80006614 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006658:	00003517          	auipc	a0,0x3
    8000665c:	f1850513          	addi	a0,a0,-232 # 80009570 <CONSOLE_STATUS+0x560>
    80006660:	fffff097          	auipc	ra,0xfffff
    80006664:	2e0080e7          	jalr	736(ra) # 80005940 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006668:	00700313          	li	t1,7
    thread_dispatch();
    8000666c:	ffffb097          	auipc	ra,0xffffb
    80006670:	d98080e7          	jalr	-616(ra) # 80001404 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006674:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006678:	00003517          	auipc	a0,0x3
    8000667c:	f0850513          	addi	a0,a0,-248 # 80009580 <CONSOLE_STATUS+0x570>
    80006680:	fffff097          	auipc	ra,0xfffff
    80006684:	2c0080e7          	jalr	704(ra) # 80005940 <_Z11printStringPKc>
    80006688:	00000613          	li	a2,0
    8000668c:	00a00593          	li	a1,10
    80006690:	0009051b          	sext.w	a0,s2
    80006694:	fffff097          	auipc	ra,0xfffff
    80006698:	45c080e7          	jalr	1116(ra) # 80005af0 <_Z8printIntiii>
    8000669c:	00003517          	auipc	a0,0x3
    800066a0:	c1c50513          	addi	a0,a0,-996 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800066a4:	fffff097          	auipc	ra,0xfffff
    800066a8:	29c080e7          	jalr	668(ra) # 80005940 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800066ac:	00c00513          	li	a0,12
    800066b0:	00000097          	auipc	ra,0x0
    800066b4:	d88080e7          	jalr	-632(ra) # 80006438 <_ZL9fibonaccim>
    800066b8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800066bc:	00003517          	auipc	a0,0x3
    800066c0:	ecc50513          	addi	a0,a0,-308 # 80009588 <CONSOLE_STATUS+0x578>
    800066c4:	fffff097          	auipc	ra,0xfffff
    800066c8:	27c080e7          	jalr	636(ra) # 80005940 <_Z11printStringPKc>
    800066cc:	00000613          	li	a2,0
    800066d0:	00a00593          	li	a1,10
    800066d4:	0009051b          	sext.w	a0,s2
    800066d8:	fffff097          	auipc	ra,0xfffff
    800066dc:	418080e7          	jalr	1048(ra) # 80005af0 <_Z8printIntiii>
    800066e0:	00003517          	auipc	a0,0x3
    800066e4:	bd850513          	addi	a0,a0,-1064 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800066e8:	fffff097          	auipc	ra,0xfffff
    800066ec:	258080e7          	jalr	600(ra) # 80005940 <_Z11printStringPKc>
    800066f0:	0400006f          	j	80006730 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800066f4:	00003517          	auipc	a0,0x3
    800066f8:	e7450513          	addi	a0,a0,-396 # 80009568 <CONSOLE_STATUS+0x558>
    800066fc:	fffff097          	auipc	ra,0xfffff
    80006700:	244080e7          	jalr	580(ra) # 80005940 <_Z11printStringPKc>
    80006704:	00000613          	li	a2,0
    80006708:	00a00593          	li	a1,10
    8000670c:	00048513          	mv	a0,s1
    80006710:	fffff097          	auipc	ra,0xfffff
    80006714:	3e0080e7          	jalr	992(ra) # 80005af0 <_Z8printIntiii>
    80006718:	00003517          	auipc	a0,0x3
    8000671c:	ba050513          	addi	a0,a0,-1120 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006720:	fffff097          	auipc	ra,0xfffff
    80006724:	220080e7          	jalr	544(ra) # 80005940 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006728:	0014849b          	addiw	s1,s1,1
    8000672c:	0ff4f493          	andi	s1,s1,255
    80006730:	00500793          	li	a5,5
    80006734:	fc97f0e3          	bgeu	a5,s1,800066f4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006738:	00003517          	auipc	a0,0x3
    8000673c:	e0850513          	addi	a0,a0,-504 # 80009540 <CONSOLE_STATUS+0x530>
    80006740:	fffff097          	auipc	ra,0xfffff
    80006744:	200080e7          	jalr	512(ra) # 80005940 <_Z11printStringPKc>
    finishedC = true;
    80006748:	00100793          	li	a5,1
    8000674c:	00005717          	auipc	a4,0x5
    80006750:	68f70fa3          	sb	a5,1695(a4) # 8000bdeb <_ZL9finishedC>
    thread_dispatch();
    80006754:	ffffb097          	auipc	ra,0xffffb
    80006758:	cb0080e7          	jalr	-848(ra) # 80001404 <_Z15thread_dispatchv>
}
    8000675c:	01813083          	ld	ra,24(sp)
    80006760:	01013403          	ld	s0,16(sp)
    80006764:	00813483          	ld	s1,8(sp)
    80006768:	00013903          	ld	s2,0(sp)
    8000676c:	02010113          	addi	sp,sp,32
    80006770:	00008067          	ret

0000000080006774 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006774:	fe010113          	addi	sp,sp,-32
    80006778:	00113c23          	sd	ra,24(sp)
    8000677c:	00813823          	sd	s0,16(sp)
    80006780:	00913423          	sd	s1,8(sp)
    80006784:	01213023          	sd	s2,0(sp)
    80006788:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000678c:	00000913          	li	s2,0
    80006790:	0400006f          	j	800067d0 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006794:	ffffb097          	auipc	ra,0xffffb
    80006798:	c70080e7          	jalr	-912(ra) # 80001404 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000679c:	00148493          	addi	s1,s1,1
    800067a0:	000027b7          	lui	a5,0x2
    800067a4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800067a8:	0097ee63          	bltu	a5,s1,800067c4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800067ac:	00000713          	li	a4,0
    800067b0:	000077b7          	lui	a5,0x7
    800067b4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800067b8:	fce7eee3          	bltu	a5,a4,80006794 <_ZL11workerBodyBPv+0x20>
    800067bc:	00170713          	addi	a4,a4,1
    800067c0:	ff1ff06f          	j	800067b0 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800067c4:	00a00793          	li	a5,10
    800067c8:	04f90663          	beq	s2,a5,80006814 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800067cc:	00190913          	addi	s2,s2,1
    800067d0:	00f00793          	li	a5,15
    800067d4:	0527e463          	bltu	a5,s2,8000681c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800067d8:	00003517          	auipc	a0,0x3
    800067dc:	d7850513          	addi	a0,a0,-648 # 80009550 <CONSOLE_STATUS+0x540>
    800067e0:	fffff097          	auipc	ra,0xfffff
    800067e4:	160080e7          	jalr	352(ra) # 80005940 <_Z11printStringPKc>
    800067e8:	00000613          	li	a2,0
    800067ec:	00a00593          	li	a1,10
    800067f0:	0009051b          	sext.w	a0,s2
    800067f4:	fffff097          	auipc	ra,0xfffff
    800067f8:	2fc080e7          	jalr	764(ra) # 80005af0 <_Z8printIntiii>
    800067fc:	00003517          	auipc	a0,0x3
    80006800:	abc50513          	addi	a0,a0,-1348 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006804:	fffff097          	auipc	ra,0xfffff
    80006808:	13c080e7          	jalr	316(ra) # 80005940 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000680c:	00000493          	li	s1,0
    80006810:	f91ff06f          	j	800067a0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006814:	14102ff3          	csrr	t6,sepc
    80006818:	fb5ff06f          	j	800067cc <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000681c:	00003517          	auipc	a0,0x3
    80006820:	d3c50513          	addi	a0,a0,-708 # 80009558 <CONSOLE_STATUS+0x548>
    80006824:	fffff097          	auipc	ra,0xfffff
    80006828:	11c080e7          	jalr	284(ra) # 80005940 <_Z11printStringPKc>
    finishedB = true;
    8000682c:	00100793          	li	a5,1
    80006830:	00005717          	auipc	a4,0x5
    80006834:	5af70e23          	sb	a5,1468(a4) # 8000bdec <_ZL9finishedB>
    thread_dispatch();
    80006838:	ffffb097          	auipc	ra,0xffffb
    8000683c:	bcc080e7          	jalr	-1076(ra) # 80001404 <_Z15thread_dispatchv>
}
    80006840:	01813083          	ld	ra,24(sp)
    80006844:	01013403          	ld	s0,16(sp)
    80006848:	00813483          	ld	s1,8(sp)
    8000684c:	00013903          	ld	s2,0(sp)
    80006850:	02010113          	addi	sp,sp,32
    80006854:	00008067          	ret

0000000080006858 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006858:	fe010113          	addi	sp,sp,-32
    8000685c:	00113c23          	sd	ra,24(sp)
    80006860:	00813823          	sd	s0,16(sp)
    80006864:	00913423          	sd	s1,8(sp)
    80006868:	01213023          	sd	s2,0(sp)
    8000686c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006870:	00000913          	li	s2,0
    80006874:	0380006f          	j	800068ac <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006878:	ffffb097          	auipc	ra,0xffffb
    8000687c:	b8c080e7          	jalr	-1140(ra) # 80001404 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006880:	00148493          	addi	s1,s1,1
    80006884:	000027b7          	lui	a5,0x2
    80006888:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000688c:	0097ee63          	bltu	a5,s1,800068a8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006890:	00000713          	li	a4,0
    80006894:	000077b7          	lui	a5,0x7
    80006898:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000689c:	fce7eee3          	bltu	a5,a4,80006878 <_ZL11workerBodyAPv+0x20>
    800068a0:	00170713          	addi	a4,a4,1
    800068a4:	ff1ff06f          	j	80006894 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800068a8:	00190913          	addi	s2,s2,1
    800068ac:	00900793          	li	a5,9
    800068b0:	0527e063          	bltu	a5,s2,800068f0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800068b4:	00003517          	auipc	a0,0x3
    800068b8:	c8450513          	addi	a0,a0,-892 # 80009538 <CONSOLE_STATUS+0x528>
    800068bc:	fffff097          	auipc	ra,0xfffff
    800068c0:	084080e7          	jalr	132(ra) # 80005940 <_Z11printStringPKc>
    800068c4:	00000613          	li	a2,0
    800068c8:	00a00593          	li	a1,10
    800068cc:	0009051b          	sext.w	a0,s2
    800068d0:	fffff097          	auipc	ra,0xfffff
    800068d4:	220080e7          	jalr	544(ra) # 80005af0 <_Z8printIntiii>
    800068d8:	00003517          	auipc	a0,0x3
    800068dc:	9e050513          	addi	a0,a0,-1568 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800068e0:	fffff097          	auipc	ra,0xfffff
    800068e4:	060080e7          	jalr	96(ra) # 80005940 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800068e8:	00000493          	li	s1,0
    800068ec:	f99ff06f          	j	80006884 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800068f0:	00003517          	auipc	a0,0x3
    800068f4:	c5050513          	addi	a0,a0,-944 # 80009540 <CONSOLE_STATUS+0x530>
    800068f8:	fffff097          	auipc	ra,0xfffff
    800068fc:	048080e7          	jalr	72(ra) # 80005940 <_Z11printStringPKc>
    finishedA = true;
    80006900:	00100793          	li	a5,1
    80006904:	00005717          	auipc	a4,0x5
    80006908:	4ef704a3          	sb	a5,1257(a4) # 8000bded <_ZL9finishedA>
}
    8000690c:	01813083          	ld	ra,24(sp)
    80006910:	01013403          	ld	s0,16(sp)
    80006914:	00813483          	ld	s1,8(sp)
    80006918:	00013903          	ld	s2,0(sp)
    8000691c:	02010113          	addi	sp,sp,32
    80006920:	00008067          	ret

0000000080006924 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006924:	fd010113          	addi	sp,sp,-48
    80006928:	02113423          	sd	ra,40(sp)
    8000692c:	02813023          	sd	s0,32(sp)
    80006930:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006934:	00000613          	li	a2,0
    80006938:	00000597          	auipc	a1,0x0
    8000693c:	f2058593          	addi	a1,a1,-224 # 80006858 <_ZL11workerBodyAPv>
    80006940:	fd040513          	addi	a0,s0,-48
    80006944:	ffffb097          	auipc	ra,0xffffb
    80006948:	940080e7          	jalr	-1728(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    8000694c:	00003517          	auipc	a0,0x3
    80006950:	c8450513          	addi	a0,a0,-892 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80006954:	fffff097          	auipc	ra,0xfffff
    80006958:	fec080e7          	jalr	-20(ra) # 80005940 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000695c:	00000613          	li	a2,0
    80006960:	00000597          	auipc	a1,0x0
    80006964:	e1458593          	addi	a1,a1,-492 # 80006774 <_ZL11workerBodyBPv>
    80006968:	fd840513          	addi	a0,s0,-40
    8000696c:	ffffb097          	auipc	ra,0xffffb
    80006970:	918080e7          	jalr	-1768(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80006974:	00003517          	auipc	a0,0x3
    80006978:	c7450513          	addi	a0,a0,-908 # 800095e8 <CONSOLE_STATUS+0x5d8>
    8000697c:	fffff097          	auipc	ra,0xfffff
    80006980:	fc4080e7          	jalr	-60(ra) # 80005940 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006984:	00000613          	li	a2,0
    80006988:	00000597          	auipc	a1,0x0
    8000698c:	c6c58593          	addi	a1,a1,-916 # 800065f4 <_ZL11workerBodyCPv>
    80006990:	fe040513          	addi	a0,s0,-32
    80006994:	ffffb097          	auipc	ra,0xffffb
    80006998:	8f0080e7          	jalr	-1808(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    8000699c:	00003517          	auipc	a0,0x3
    800069a0:	c6450513          	addi	a0,a0,-924 # 80009600 <CONSOLE_STATUS+0x5f0>
    800069a4:	fffff097          	auipc	ra,0xfffff
    800069a8:	f9c080e7          	jalr	-100(ra) # 80005940 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800069ac:	00000613          	li	a2,0
    800069b0:	00000597          	auipc	a1,0x0
    800069b4:	afc58593          	addi	a1,a1,-1284 # 800064ac <_ZL11workerBodyDPv>
    800069b8:	fe840513          	addi	a0,s0,-24
    800069bc:	ffffb097          	auipc	ra,0xffffb
    800069c0:	8c8080e7          	jalr	-1848(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800069c4:	00003517          	auipc	a0,0x3
    800069c8:	c5450513          	addi	a0,a0,-940 # 80009618 <CONSOLE_STATUS+0x608>
    800069cc:	fffff097          	auipc	ra,0xfffff
    800069d0:	f74080e7          	jalr	-140(ra) # 80005940 <_Z11printStringPKc>
    800069d4:	00c0006f          	j	800069e0 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800069d8:	ffffb097          	auipc	ra,0xffffb
    800069dc:	a2c080e7          	jalr	-1492(ra) # 80001404 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800069e0:	00005797          	auipc	a5,0x5
    800069e4:	40d7c783          	lbu	a5,1037(a5) # 8000bded <_ZL9finishedA>
    800069e8:	fe0788e3          	beqz	a5,800069d8 <_Z16System_Mode_testv+0xb4>
    800069ec:	00005797          	auipc	a5,0x5
    800069f0:	4007c783          	lbu	a5,1024(a5) # 8000bdec <_ZL9finishedB>
    800069f4:	fe0782e3          	beqz	a5,800069d8 <_Z16System_Mode_testv+0xb4>
    800069f8:	00005797          	auipc	a5,0x5
    800069fc:	3f37c783          	lbu	a5,1011(a5) # 8000bdeb <_ZL9finishedC>
    80006a00:	fc078ce3          	beqz	a5,800069d8 <_Z16System_Mode_testv+0xb4>
    80006a04:	00005797          	auipc	a5,0x5
    80006a08:	3e67c783          	lbu	a5,998(a5) # 8000bdea <_ZL9finishedD>
    80006a0c:	fc0786e3          	beqz	a5,800069d8 <_Z16System_Mode_testv+0xb4>
    }

}
    80006a10:	02813083          	ld	ra,40(sp)
    80006a14:	02013403          	ld	s0,32(sp)
    80006a18:	03010113          	addi	sp,sp,48
    80006a1c:	00008067          	ret

0000000080006a20 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006a20:	fe010113          	addi	sp,sp,-32
    80006a24:	00113c23          	sd	ra,24(sp)
    80006a28:	00813823          	sd	s0,16(sp)
    80006a2c:	00913423          	sd	s1,8(sp)
    80006a30:	01213023          	sd	s2,0(sp)
    80006a34:	02010413          	addi	s0,sp,32
    80006a38:	00050493          	mv	s1,a0
    80006a3c:	00058913          	mv	s2,a1
    80006a40:	0015879b          	addiw	a5,a1,1
    80006a44:	0007851b          	sext.w	a0,a5
    80006a48:	00f4a023          	sw	a5,0(s1)
    80006a4c:	0004a823          	sw	zero,16(s1)
    80006a50:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006a54:	00251513          	slli	a0,a0,0x2
    80006a58:	ffffa097          	auipc	ra,0xffffa
    80006a5c:	7a0080e7          	jalr	1952(ra) # 800011f8 <_Z9mem_allocm>
    80006a60:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006a64:	00000593          	li	a1,0
    80006a68:	02048513          	addi	a0,s1,32
    80006a6c:	ffffb097          	auipc	ra,0xffffb
    80006a70:	9d4080e7          	jalr	-1580(ra) # 80001440 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80006a74:	00090593          	mv	a1,s2
    80006a78:	01848513          	addi	a0,s1,24
    80006a7c:	ffffb097          	auipc	ra,0xffffb
    80006a80:	9c4080e7          	jalr	-1596(ra) # 80001440 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80006a84:	00100593          	li	a1,1
    80006a88:	02848513          	addi	a0,s1,40
    80006a8c:	ffffb097          	auipc	ra,0xffffb
    80006a90:	9b4080e7          	jalr	-1612(ra) # 80001440 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006a94:	00100593          	li	a1,1
    80006a98:	03048513          	addi	a0,s1,48
    80006a9c:	ffffb097          	auipc	ra,0xffffb
    80006aa0:	9a4080e7          	jalr	-1628(ra) # 80001440 <_Z8sem_openPP4_semj>
}
    80006aa4:	01813083          	ld	ra,24(sp)
    80006aa8:	01013403          	ld	s0,16(sp)
    80006aac:	00813483          	ld	s1,8(sp)
    80006ab0:	00013903          	ld	s2,0(sp)
    80006ab4:	02010113          	addi	sp,sp,32
    80006ab8:	00008067          	ret

0000000080006abc <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006abc:	fe010113          	addi	sp,sp,-32
    80006ac0:	00113c23          	sd	ra,24(sp)
    80006ac4:	00813823          	sd	s0,16(sp)
    80006ac8:	00913423          	sd	s1,8(sp)
    80006acc:	01213023          	sd	s2,0(sp)
    80006ad0:	02010413          	addi	s0,sp,32
    80006ad4:	00050493          	mv	s1,a0
    80006ad8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006adc:	01853503          	ld	a0,24(a0)
    80006ae0:	ffffb097          	auipc	ra,0xffffb
    80006ae4:	9e4080e7          	jalr	-1564(ra) # 800014c4 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006ae8:	0304b503          	ld	a0,48(s1)
    80006aec:	ffffb097          	auipc	ra,0xffffb
    80006af0:	9d8080e7          	jalr	-1576(ra) # 800014c4 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006af4:	0084b783          	ld	a5,8(s1)
    80006af8:	0144a703          	lw	a4,20(s1)
    80006afc:	00271713          	slli	a4,a4,0x2
    80006b00:	00e787b3          	add	a5,a5,a4
    80006b04:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006b08:	0144a783          	lw	a5,20(s1)
    80006b0c:	0017879b          	addiw	a5,a5,1
    80006b10:	0004a703          	lw	a4,0(s1)
    80006b14:	02e7e7bb          	remw	a5,a5,a4
    80006b18:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006b1c:	0304b503          	ld	a0,48(s1)
    80006b20:	ffffb097          	auipc	ra,0xffffb
    80006b24:	9e4080e7          	jalr	-1564(ra) # 80001504 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006b28:	0204b503          	ld	a0,32(s1)
    80006b2c:	ffffb097          	auipc	ra,0xffffb
    80006b30:	9d8080e7          	jalr	-1576(ra) # 80001504 <_Z10sem_signalP4_sem>

}
    80006b34:	01813083          	ld	ra,24(sp)
    80006b38:	01013403          	ld	s0,16(sp)
    80006b3c:	00813483          	ld	s1,8(sp)
    80006b40:	00013903          	ld	s2,0(sp)
    80006b44:	02010113          	addi	sp,sp,32
    80006b48:	00008067          	ret

0000000080006b4c <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006b4c:	fe010113          	addi	sp,sp,-32
    80006b50:	00113c23          	sd	ra,24(sp)
    80006b54:	00813823          	sd	s0,16(sp)
    80006b58:	00913423          	sd	s1,8(sp)
    80006b5c:	01213023          	sd	s2,0(sp)
    80006b60:	02010413          	addi	s0,sp,32
    80006b64:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006b68:	02053503          	ld	a0,32(a0)
    80006b6c:	ffffb097          	auipc	ra,0xffffb
    80006b70:	958080e7          	jalr	-1704(ra) # 800014c4 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006b74:	0284b503          	ld	a0,40(s1)
    80006b78:	ffffb097          	auipc	ra,0xffffb
    80006b7c:	94c080e7          	jalr	-1716(ra) # 800014c4 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006b80:	0084b703          	ld	a4,8(s1)
    80006b84:	0104a783          	lw	a5,16(s1)
    80006b88:	00279693          	slli	a3,a5,0x2
    80006b8c:	00d70733          	add	a4,a4,a3
    80006b90:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006b94:	0017879b          	addiw	a5,a5,1
    80006b98:	0004a703          	lw	a4,0(s1)
    80006b9c:	02e7e7bb          	remw	a5,a5,a4
    80006ba0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006ba4:	0284b503          	ld	a0,40(s1)
    80006ba8:	ffffb097          	auipc	ra,0xffffb
    80006bac:	95c080e7          	jalr	-1700(ra) # 80001504 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006bb0:	0184b503          	ld	a0,24(s1)
    80006bb4:	ffffb097          	auipc	ra,0xffffb
    80006bb8:	950080e7          	jalr	-1712(ra) # 80001504 <_Z10sem_signalP4_sem>

    return ret;
}
    80006bbc:	00090513          	mv	a0,s2
    80006bc0:	01813083          	ld	ra,24(sp)
    80006bc4:	01013403          	ld	s0,16(sp)
    80006bc8:	00813483          	ld	s1,8(sp)
    80006bcc:	00013903          	ld	s2,0(sp)
    80006bd0:	02010113          	addi	sp,sp,32
    80006bd4:	00008067          	ret

0000000080006bd8 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006bd8:	fe010113          	addi	sp,sp,-32
    80006bdc:	00113c23          	sd	ra,24(sp)
    80006be0:	00813823          	sd	s0,16(sp)
    80006be4:	00913423          	sd	s1,8(sp)
    80006be8:	01213023          	sd	s2,0(sp)
    80006bec:	02010413          	addi	s0,sp,32
    80006bf0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006bf4:	02853503          	ld	a0,40(a0)
    80006bf8:	ffffb097          	auipc	ra,0xffffb
    80006bfc:	8cc080e7          	jalr	-1844(ra) # 800014c4 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006c00:	0304b503          	ld	a0,48(s1)
    80006c04:	ffffb097          	auipc	ra,0xffffb
    80006c08:	8c0080e7          	jalr	-1856(ra) # 800014c4 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006c0c:	0144a783          	lw	a5,20(s1)
    80006c10:	0104a903          	lw	s2,16(s1)
    80006c14:	0327ce63          	blt	a5,s2,80006c50 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006c18:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006c1c:	0304b503          	ld	a0,48(s1)
    80006c20:	ffffb097          	auipc	ra,0xffffb
    80006c24:	8e4080e7          	jalr	-1820(ra) # 80001504 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006c28:	0284b503          	ld	a0,40(s1)
    80006c2c:	ffffb097          	auipc	ra,0xffffb
    80006c30:	8d8080e7          	jalr	-1832(ra) # 80001504 <_Z10sem_signalP4_sem>

    return ret;
}
    80006c34:	00090513          	mv	a0,s2
    80006c38:	01813083          	ld	ra,24(sp)
    80006c3c:	01013403          	ld	s0,16(sp)
    80006c40:	00813483          	ld	s1,8(sp)
    80006c44:	00013903          	ld	s2,0(sp)
    80006c48:	02010113          	addi	sp,sp,32
    80006c4c:	00008067          	ret
        ret = cap - head + tail;
    80006c50:	0004a703          	lw	a4,0(s1)
    80006c54:	4127093b          	subw	s2,a4,s2
    80006c58:	00f9093b          	addw	s2,s2,a5
    80006c5c:	fc1ff06f          	j	80006c1c <_ZN6Buffer6getCntEv+0x44>

0000000080006c60 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006c60:	fe010113          	addi	sp,sp,-32
    80006c64:	00113c23          	sd	ra,24(sp)
    80006c68:	00813823          	sd	s0,16(sp)
    80006c6c:	00913423          	sd	s1,8(sp)
    80006c70:	02010413          	addi	s0,sp,32
    80006c74:	00050493          	mv	s1,a0
    putc('\n');
    80006c78:	00a00513          	li	a0,10
    80006c7c:	ffffb097          	auipc	ra,0xffffb
    80006c80:	9d0080e7          	jalr	-1584(ra) # 8000164c <_Z4putcc>
    printString("Buffer deleted!\n");
    80006c84:	00003517          	auipc	a0,0x3
    80006c88:	9ac50513          	addi	a0,a0,-1620 # 80009630 <CONSOLE_STATUS+0x620>
    80006c8c:	fffff097          	auipc	ra,0xfffff
    80006c90:	cb4080e7          	jalr	-844(ra) # 80005940 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006c94:	00048513          	mv	a0,s1
    80006c98:	00000097          	auipc	ra,0x0
    80006c9c:	f40080e7          	jalr	-192(ra) # 80006bd8 <_ZN6Buffer6getCntEv>
    80006ca0:	02a05c63          	blez	a0,80006cd8 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006ca4:	0084b783          	ld	a5,8(s1)
    80006ca8:	0104a703          	lw	a4,16(s1)
    80006cac:	00271713          	slli	a4,a4,0x2
    80006cb0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006cb4:	0007c503          	lbu	a0,0(a5)
    80006cb8:	ffffb097          	auipc	ra,0xffffb
    80006cbc:	994080e7          	jalr	-1644(ra) # 8000164c <_Z4putcc>
        head = (head + 1) % cap;
    80006cc0:	0104a783          	lw	a5,16(s1)
    80006cc4:	0017879b          	addiw	a5,a5,1
    80006cc8:	0004a703          	lw	a4,0(s1)
    80006ccc:	02e7e7bb          	remw	a5,a5,a4
    80006cd0:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006cd4:	fc1ff06f          	j	80006c94 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006cd8:	02100513          	li	a0,33
    80006cdc:	ffffb097          	auipc	ra,0xffffb
    80006ce0:	970080e7          	jalr	-1680(ra) # 8000164c <_Z4putcc>
    putc('\n');
    80006ce4:	00a00513          	li	a0,10
    80006ce8:	ffffb097          	auipc	ra,0xffffb
    80006cec:	964080e7          	jalr	-1692(ra) # 8000164c <_Z4putcc>
    mem_free(buffer);
    80006cf0:	0084b503          	ld	a0,8(s1)
    80006cf4:	ffffa097          	auipc	ra,0xffffa
    80006cf8:	550080e7          	jalr	1360(ra) # 80001244 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006cfc:	0204b503          	ld	a0,32(s1)
    80006d00:	ffffa097          	auipc	ra,0xffffa
    80006d04:	784080e7          	jalr	1924(ra) # 80001484 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006d08:	0184b503          	ld	a0,24(s1)
    80006d0c:	ffffa097          	auipc	ra,0xffffa
    80006d10:	778080e7          	jalr	1912(ra) # 80001484 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006d14:	0304b503          	ld	a0,48(s1)
    80006d18:	ffffa097          	auipc	ra,0xffffa
    80006d1c:	76c080e7          	jalr	1900(ra) # 80001484 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006d20:	0284b503          	ld	a0,40(s1)
    80006d24:	ffffa097          	auipc	ra,0xffffa
    80006d28:	760080e7          	jalr	1888(ra) # 80001484 <_Z9sem_closeP4_sem>
}
    80006d2c:	01813083          	ld	ra,24(sp)
    80006d30:	01013403          	ld	s0,16(sp)
    80006d34:	00813483          	ld	s1,8(sp)
    80006d38:	02010113          	addi	sp,sp,32
    80006d3c:	00008067          	ret

0000000080006d40 <start>:
    80006d40:	ff010113          	addi	sp,sp,-16
    80006d44:	00813423          	sd	s0,8(sp)
    80006d48:	01010413          	addi	s0,sp,16
    80006d4c:	300027f3          	csrr	a5,mstatus
    80006d50:	ffffe737          	lui	a4,0xffffe
    80006d54:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff17af>
    80006d58:	00e7f7b3          	and	a5,a5,a4
    80006d5c:	00001737          	lui	a4,0x1
    80006d60:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006d64:	00e7e7b3          	or	a5,a5,a4
    80006d68:	30079073          	csrw	mstatus,a5
    80006d6c:	00000797          	auipc	a5,0x0
    80006d70:	16078793          	addi	a5,a5,352 # 80006ecc <system_main>
    80006d74:	34179073          	csrw	mepc,a5
    80006d78:	00000793          	li	a5,0
    80006d7c:	18079073          	csrw	satp,a5
    80006d80:	000107b7          	lui	a5,0x10
    80006d84:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006d88:	30279073          	csrw	medeleg,a5
    80006d8c:	30379073          	csrw	mideleg,a5
    80006d90:	104027f3          	csrr	a5,sie
    80006d94:	2227e793          	ori	a5,a5,546
    80006d98:	10479073          	csrw	sie,a5
    80006d9c:	fff00793          	li	a5,-1
    80006da0:	00a7d793          	srli	a5,a5,0xa
    80006da4:	3b079073          	csrw	pmpaddr0,a5
    80006da8:	00f00793          	li	a5,15
    80006dac:	3a079073          	csrw	pmpcfg0,a5
    80006db0:	f14027f3          	csrr	a5,mhartid
    80006db4:	0200c737          	lui	a4,0x200c
    80006db8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006dbc:	0007869b          	sext.w	a3,a5
    80006dc0:	00269713          	slli	a4,a3,0x2
    80006dc4:	000f4637          	lui	a2,0xf4
    80006dc8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006dcc:	00d70733          	add	a4,a4,a3
    80006dd0:	0037979b          	slliw	a5,a5,0x3
    80006dd4:	020046b7          	lui	a3,0x2004
    80006dd8:	00d787b3          	add	a5,a5,a3
    80006ddc:	00c585b3          	add	a1,a1,a2
    80006de0:	00371693          	slli	a3,a4,0x3
    80006de4:	00005717          	auipc	a4,0x5
    80006de8:	00c70713          	addi	a4,a4,12 # 8000bdf0 <timer_scratch>
    80006dec:	00b7b023          	sd	a1,0(a5)
    80006df0:	00d70733          	add	a4,a4,a3
    80006df4:	00f73c23          	sd	a5,24(a4)
    80006df8:	02c73023          	sd	a2,32(a4)
    80006dfc:	34071073          	csrw	mscratch,a4
    80006e00:	00000797          	auipc	a5,0x0
    80006e04:	6e078793          	addi	a5,a5,1760 # 800074e0 <timervec>
    80006e08:	30579073          	csrw	mtvec,a5
    80006e0c:	300027f3          	csrr	a5,mstatus
    80006e10:	0087e793          	ori	a5,a5,8
    80006e14:	30079073          	csrw	mstatus,a5
    80006e18:	304027f3          	csrr	a5,mie
    80006e1c:	0807e793          	ori	a5,a5,128
    80006e20:	30479073          	csrw	mie,a5
    80006e24:	f14027f3          	csrr	a5,mhartid
    80006e28:	0007879b          	sext.w	a5,a5
    80006e2c:	00078213          	mv	tp,a5
    80006e30:	30200073          	mret
    80006e34:	00813403          	ld	s0,8(sp)
    80006e38:	01010113          	addi	sp,sp,16
    80006e3c:	00008067          	ret

0000000080006e40 <timerinit>:
    80006e40:	ff010113          	addi	sp,sp,-16
    80006e44:	00813423          	sd	s0,8(sp)
    80006e48:	01010413          	addi	s0,sp,16
    80006e4c:	f14027f3          	csrr	a5,mhartid
    80006e50:	0200c737          	lui	a4,0x200c
    80006e54:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006e58:	0007869b          	sext.w	a3,a5
    80006e5c:	00269713          	slli	a4,a3,0x2
    80006e60:	000f4637          	lui	a2,0xf4
    80006e64:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006e68:	00d70733          	add	a4,a4,a3
    80006e6c:	0037979b          	slliw	a5,a5,0x3
    80006e70:	020046b7          	lui	a3,0x2004
    80006e74:	00d787b3          	add	a5,a5,a3
    80006e78:	00c585b3          	add	a1,a1,a2
    80006e7c:	00371693          	slli	a3,a4,0x3
    80006e80:	00005717          	auipc	a4,0x5
    80006e84:	f7070713          	addi	a4,a4,-144 # 8000bdf0 <timer_scratch>
    80006e88:	00b7b023          	sd	a1,0(a5)
    80006e8c:	00d70733          	add	a4,a4,a3
    80006e90:	00f73c23          	sd	a5,24(a4)
    80006e94:	02c73023          	sd	a2,32(a4)
    80006e98:	34071073          	csrw	mscratch,a4
    80006e9c:	00000797          	auipc	a5,0x0
    80006ea0:	64478793          	addi	a5,a5,1604 # 800074e0 <timervec>
    80006ea4:	30579073          	csrw	mtvec,a5
    80006ea8:	300027f3          	csrr	a5,mstatus
    80006eac:	0087e793          	ori	a5,a5,8
    80006eb0:	30079073          	csrw	mstatus,a5
    80006eb4:	304027f3          	csrr	a5,mie
    80006eb8:	0807e793          	ori	a5,a5,128
    80006ebc:	30479073          	csrw	mie,a5
    80006ec0:	00813403          	ld	s0,8(sp)
    80006ec4:	01010113          	addi	sp,sp,16
    80006ec8:	00008067          	ret

0000000080006ecc <system_main>:
    80006ecc:	fe010113          	addi	sp,sp,-32
    80006ed0:	00813823          	sd	s0,16(sp)
    80006ed4:	00913423          	sd	s1,8(sp)
    80006ed8:	00113c23          	sd	ra,24(sp)
    80006edc:	02010413          	addi	s0,sp,32
    80006ee0:	00000097          	auipc	ra,0x0
    80006ee4:	0c4080e7          	jalr	196(ra) # 80006fa4 <cpuid>
    80006ee8:	00005497          	auipc	s1,0x5
    80006eec:	e4848493          	addi	s1,s1,-440 # 8000bd30 <started>
    80006ef0:	02050263          	beqz	a0,80006f14 <system_main+0x48>
    80006ef4:	0004a783          	lw	a5,0(s1)
    80006ef8:	0007879b          	sext.w	a5,a5
    80006efc:	fe078ce3          	beqz	a5,80006ef4 <system_main+0x28>
    80006f00:	0ff0000f          	fence
    80006f04:	00003517          	auipc	a0,0x3
    80006f08:	80c50513          	addi	a0,a0,-2036 # 80009710 <CONSOLE_STATUS+0x700>
    80006f0c:	00001097          	auipc	ra,0x1
    80006f10:	a70080e7          	jalr	-1424(ra) # 8000797c <panic>
    80006f14:	00001097          	auipc	ra,0x1
    80006f18:	9c4080e7          	jalr	-1596(ra) # 800078d8 <consoleinit>
    80006f1c:	00001097          	auipc	ra,0x1
    80006f20:	150080e7          	jalr	336(ra) # 8000806c <printfinit>
    80006f24:	00002517          	auipc	a0,0x2
    80006f28:	39450513          	addi	a0,a0,916 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006f2c:	00001097          	auipc	ra,0x1
    80006f30:	aac080e7          	jalr	-1364(ra) # 800079d8 <__printf>
    80006f34:	00002517          	auipc	a0,0x2
    80006f38:	7ac50513          	addi	a0,a0,1964 # 800096e0 <CONSOLE_STATUS+0x6d0>
    80006f3c:	00001097          	auipc	ra,0x1
    80006f40:	a9c080e7          	jalr	-1380(ra) # 800079d8 <__printf>
    80006f44:	00002517          	auipc	a0,0x2
    80006f48:	37450513          	addi	a0,a0,884 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006f4c:	00001097          	auipc	ra,0x1
    80006f50:	a8c080e7          	jalr	-1396(ra) # 800079d8 <__printf>
    80006f54:	00001097          	auipc	ra,0x1
    80006f58:	4a4080e7          	jalr	1188(ra) # 800083f8 <kinit>
    80006f5c:	00000097          	auipc	ra,0x0
    80006f60:	148080e7          	jalr	328(ra) # 800070a4 <trapinit>
    80006f64:	00000097          	auipc	ra,0x0
    80006f68:	16c080e7          	jalr	364(ra) # 800070d0 <trapinithart>
    80006f6c:	00000097          	auipc	ra,0x0
    80006f70:	5b4080e7          	jalr	1460(ra) # 80007520 <plicinit>
    80006f74:	00000097          	auipc	ra,0x0
    80006f78:	5d4080e7          	jalr	1492(ra) # 80007548 <plicinithart>
    80006f7c:	00000097          	auipc	ra,0x0
    80006f80:	078080e7          	jalr	120(ra) # 80006ff4 <userinit>
    80006f84:	0ff0000f          	fence
    80006f88:	00100793          	li	a5,1
    80006f8c:	00002517          	auipc	a0,0x2
    80006f90:	76c50513          	addi	a0,a0,1900 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80006f94:	00f4a023          	sw	a5,0(s1)
    80006f98:	00001097          	auipc	ra,0x1
    80006f9c:	a40080e7          	jalr	-1472(ra) # 800079d8 <__printf>
    80006fa0:	0000006f          	j	80006fa0 <system_main+0xd4>

0000000080006fa4 <cpuid>:
    80006fa4:	ff010113          	addi	sp,sp,-16
    80006fa8:	00813423          	sd	s0,8(sp)
    80006fac:	01010413          	addi	s0,sp,16
    80006fb0:	00020513          	mv	a0,tp
    80006fb4:	00813403          	ld	s0,8(sp)
    80006fb8:	0005051b          	sext.w	a0,a0
    80006fbc:	01010113          	addi	sp,sp,16
    80006fc0:	00008067          	ret

0000000080006fc4 <mycpu>:
    80006fc4:	ff010113          	addi	sp,sp,-16
    80006fc8:	00813423          	sd	s0,8(sp)
    80006fcc:	01010413          	addi	s0,sp,16
    80006fd0:	00020793          	mv	a5,tp
    80006fd4:	00813403          	ld	s0,8(sp)
    80006fd8:	0007879b          	sext.w	a5,a5
    80006fdc:	00779793          	slli	a5,a5,0x7
    80006fe0:	00006517          	auipc	a0,0x6
    80006fe4:	e4050513          	addi	a0,a0,-448 # 8000ce20 <cpus>
    80006fe8:	00f50533          	add	a0,a0,a5
    80006fec:	01010113          	addi	sp,sp,16
    80006ff0:	00008067          	ret

0000000080006ff4 <userinit>:
    80006ff4:	ff010113          	addi	sp,sp,-16
    80006ff8:	00813423          	sd	s0,8(sp)
    80006ffc:	01010413          	addi	s0,sp,16
    80007000:	00813403          	ld	s0,8(sp)
    80007004:	01010113          	addi	sp,sp,16
    80007008:	ffffb317          	auipc	t1,0xffffb
    8000700c:	76830067          	jr	1896(t1) # 80002770 <main>

0000000080007010 <either_copyout>:
    80007010:	ff010113          	addi	sp,sp,-16
    80007014:	00813023          	sd	s0,0(sp)
    80007018:	00113423          	sd	ra,8(sp)
    8000701c:	01010413          	addi	s0,sp,16
    80007020:	02051663          	bnez	a0,8000704c <either_copyout+0x3c>
    80007024:	00058513          	mv	a0,a1
    80007028:	00060593          	mv	a1,a2
    8000702c:	0006861b          	sext.w	a2,a3
    80007030:	00002097          	auipc	ra,0x2
    80007034:	c54080e7          	jalr	-940(ra) # 80008c84 <__memmove>
    80007038:	00813083          	ld	ra,8(sp)
    8000703c:	00013403          	ld	s0,0(sp)
    80007040:	00000513          	li	a0,0
    80007044:	01010113          	addi	sp,sp,16
    80007048:	00008067          	ret
    8000704c:	00002517          	auipc	a0,0x2
    80007050:	6ec50513          	addi	a0,a0,1772 # 80009738 <CONSOLE_STATUS+0x728>
    80007054:	00001097          	auipc	ra,0x1
    80007058:	928080e7          	jalr	-1752(ra) # 8000797c <panic>

000000008000705c <either_copyin>:
    8000705c:	ff010113          	addi	sp,sp,-16
    80007060:	00813023          	sd	s0,0(sp)
    80007064:	00113423          	sd	ra,8(sp)
    80007068:	01010413          	addi	s0,sp,16
    8000706c:	02059463          	bnez	a1,80007094 <either_copyin+0x38>
    80007070:	00060593          	mv	a1,a2
    80007074:	0006861b          	sext.w	a2,a3
    80007078:	00002097          	auipc	ra,0x2
    8000707c:	c0c080e7          	jalr	-1012(ra) # 80008c84 <__memmove>
    80007080:	00813083          	ld	ra,8(sp)
    80007084:	00013403          	ld	s0,0(sp)
    80007088:	00000513          	li	a0,0
    8000708c:	01010113          	addi	sp,sp,16
    80007090:	00008067          	ret
    80007094:	00002517          	auipc	a0,0x2
    80007098:	6cc50513          	addi	a0,a0,1740 # 80009760 <CONSOLE_STATUS+0x750>
    8000709c:	00001097          	auipc	ra,0x1
    800070a0:	8e0080e7          	jalr	-1824(ra) # 8000797c <panic>

00000000800070a4 <trapinit>:
    800070a4:	ff010113          	addi	sp,sp,-16
    800070a8:	00813423          	sd	s0,8(sp)
    800070ac:	01010413          	addi	s0,sp,16
    800070b0:	00813403          	ld	s0,8(sp)
    800070b4:	00002597          	auipc	a1,0x2
    800070b8:	6d458593          	addi	a1,a1,1748 # 80009788 <CONSOLE_STATUS+0x778>
    800070bc:	00006517          	auipc	a0,0x6
    800070c0:	de450513          	addi	a0,a0,-540 # 8000cea0 <tickslock>
    800070c4:	01010113          	addi	sp,sp,16
    800070c8:	00001317          	auipc	t1,0x1
    800070cc:	5c030067          	jr	1472(t1) # 80008688 <initlock>

00000000800070d0 <trapinithart>:
    800070d0:	ff010113          	addi	sp,sp,-16
    800070d4:	00813423          	sd	s0,8(sp)
    800070d8:	01010413          	addi	s0,sp,16
    800070dc:	00000797          	auipc	a5,0x0
    800070e0:	2f478793          	addi	a5,a5,756 # 800073d0 <kernelvec>
    800070e4:	10579073          	csrw	stvec,a5
    800070e8:	00813403          	ld	s0,8(sp)
    800070ec:	01010113          	addi	sp,sp,16
    800070f0:	00008067          	ret

00000000800070f4 <usertrap>:
    800070f4:	ff010113          	addi	sp,sp,-16
    800070f8:	00813423          	sd	s0,8(sp)
    800070fc:	01010413          	addi	s0,sp,16
    80007100:	00813403          	ld	s0,8(sp)
    80007104:	01010113          	addi	sp,sp,16
    80007108:	00008067          	ret

000000008000710c <usertrapret>:
    8000710c:	ff010113          	addi	sp,sp,-16
    80007110:	00813423          	sd	s0,8(sp)
    80007114:	01010413          	addi	s0,sp,16
    80007118:	00813403          	ld	s0,8(sp)
    8000711c:	01010113          	addi	sp,sp,16
    80007120:	00008067          	ret

0000000080007124 <kerneltrap>:
    80007124:	fe010113          	addi	sp,sp,-32
    80007128:	00813823          	sd	s0,16(sp)
    8000712c:	00113c23          	sd	ra,24(sp)
    80007130:	00913423          	sd	s1,8(sp)
    80007134:	02010413          	addi	s0,sp,32
    80007138:	142025f3          	csrr	a1,scause
    8000713c:	100027f3          	csrr	a5,sstatus
    80007140:	0027f793          	andi	a5,a5,2
    80007144:	10079c63          	bnez	a5,8000725c <kerneltrap+0x138>
    80007148:	142027f3          	csrr	a5,scause
    8000714c:	0207ce63          	bltz	a5,80007188 <kerneltrap+0x64>
    80007150:	00002517          	auipc	a0,0x2
    80007154:	68050513          	addi	a0,a0,1664 # 800097d0 <CONSOLE_STATUS+0x7c0>
    80007158:	00001097          	auipc	ra,0x1
    8000715c:	880080e7          	jalr	-1920(ra) # 800079d8 <__printf>
    80007160:	141025f3          	csrr	a1,sepc
    80007164:	14302673          	csrr	a2,stval
    80007168:	00002517          	auipc	a0,0x2
    8000716c:	67850513          	addi	a0,a0,1656 # 800097e0 <CONSOLE_STATUS+0x7d0>
    80007170:	00001097          	auipc	ra,0x1
    80007174:	868080e7          	jalr	-1944(ra) # 800079d8 <__printf>
    80007178:	00002517          	auipc	a0,0x2
    8000717c:	68050513          	addi	a0,a0,1664 # 800097f8 <CONSOLE_STATUS+0x7e8>
    80007180:	00000097          	auipc	ra,0x0
    80007184:	7fc080e7          	jalr	2044(ra) # 8000797c <panic>
    80007188:	0ff7f713          	andi	a4,a5,255
    8000718c:	00900693          	li	a3,9
    80007190:	04d70063          	beq	a4,a3,800071d0 <kerneltrap+0xac>
    80007194:	fff00713          	li	a4,-1
    80007198:	03f71713          	slli	a4,a4,0x3f
    8000719c:	00170713          	addi	a4,a4,1
    800071a0:	fae798e3          	bne	a5,a4,80007150 <kerneltrap+0x2c>
    800071a4:	00000097          	auipc	ra,0x0
    800071a8:	e00080e7          	jalr	-512(ra) # 80006fa4 <cpuid>
    800071ac:	06050663          	beqz	a0,80007218 <kerneltrap+0xf4>
    800071b0:	144027f3          	csrr	a5,sip
    800071b4:	ffd7f793          	andi	a5,a5,-3
    800071b8:	14479073          	csrw	sip,a5
    800071bc:	01813083          	ld	ra,24(sp)
    800071c0:	01013403          	ld	s0,16(sp)
    800071c4:	00813483          	ld	s1,8(sp)
    800071c8:	02010113          	addi	sp,sp,32
    800071cc:	00008067          	ret
    800071d0:	00000097          	auipc	ra,0x0
    800071d4:	3c4080e7          	jalr	964(ra) # 80007594 <plic_claim>
    800071d8:	00a00793          	li	a5,10
    800071dc:	00050493          	mv	s1,a0
    800071e0:	06f50863          	beq	a0,a5,80007250 <kerneltrap+0x12c>
    800071e4:	fc050ce3          	beqz	a0,800071bc <kerneltrap+0x98>
    800071e8:	00050593          	mv	a1,a0
    800071ec:	00002517          	auipc	a0,0x2
    800071f0:	5c450513          	addi	a0,a0,1476 # 800097b0 <CONSOLE_STATUS+0x7a0>
    800071f4:	00000097          	auipc	ra,0x0
    800071f8:	7e4080e7          	jalr	2020(ra) # 800079d8 <__printf>
    800071fc:	01013403          	ld	s0,16(sp)
    80007200:	01813083          	ld	ra,24(sp)
    80007204:	00048513          	mv	a0,s1
    80007208:	00813483          	ld	s1,8(sp)
    8000720c:	02010113          	addi	sp,sp,32
    80007210:	00000317          	auipc	t1,0x0
    80007214:	3bc30067          	jr	956(t1) # 800075cc <plic_complete>
    80007218:	00006517          	auipc	a0,0x6
    8000721c:	c8850513          	addi	a0,a0,-888 # 8000cea0 <tickslock>
    80007220:	00001097          	auipc	ra,0x1
    80007224:	48c080e7          	jalr	1164(ra) # 800086ac <acquire>
    80007228:	00005717          	auipc	a4,0x5
    8000722c:	b0c70713          	addi	a4,a4,-1268 # 8000bd34 <ticks>
    80007230:	00072783          	lw	a5,0(a4)
    80007234:	00006517          	auipc	a0,0x6
    80007238:	c6c50513          	addi	a0,a0,-916 # 8000cea0 <tickslock>
    8000723c:	0017879b          	addiw	a5,a5,1
    80007240:	00f72023          	sw	a5,0(a4)
    80007244:	00001097          	auipc	ra,0x1
    80007248:	534080e7          	jalr	1332(ra) # 80008778 <release>
    8000724c:	f65ff06f          	j	800071b0 <kerneltrap+0x8c>
    80007250:	00001097          	auipc	ra,0x1
    80007254:	090080e7          	jalr	144(ra) # 800082e0 <uartintr>
    80007258:	fa5ff06f          	j	800071fc <kerneltrap+0xd8>
    8000725c:	00002517          	auipc	a0,0x2
    80007260:	53450513          	addi	a0,a0,1332 # 80009790 <CONSOLE_STATUS+0x780>
    80007264:	00000097          	auipc	ra,0x0
    80007268:	718080e7          	jalr	1816(ra) # 8000797c <panic>

000000008000726c <clockintr>:
    8000726c:	fe010113          	addi	sp,sp,-32
    80007270:	00813823          	sd	s0,16(sp)
    80007274:	00913423          	sd	s1,8(sp)
    80007278:	00113c23          	sd	ra,24(sp)
    8000727c:	02010413          	addi	s0,sp,32
    80007280:	00006497          	auipc	s1,0x6
    80007284:	c2048493          	addi	s1,s1,-992 # 8000cea0 <tickslock>
    80007288:	00048513          	mv	a0,s1
    8000728c:	00001097          	auipc	ra,0x1
    80007290:	420080e7          	jalr	1056(ra) # 800086ac <acquire>
    80007294:	00005717          	auipc	a4,0x5
    80007298:	aa070713          	addi	a4,a4,-1376 # 8000bd34 <ticks>
    8000729c:	00072783          	lw	a5,0(a4)
    800072a0:	01013403          	ld	s0,16(sp)
    800072a4:	01813083          	ld	ra,24(sp)
    800072a8:	00048513          	mv	a0,s1
    800072ac:	0017879b          	addiw	a5,a5,1
    800072b0:	00813483          	ld	s1,8(sp)
    800072b4:	00f72023          	sw	a5,0(a4)
    800072b8:	02010113          	addi	sp,sp,32
    800072bc:	00001317          	auipc	t1,0x1
    800072c0:	4bc30067          	jr	1212(t1) # 80008778 <release>

00000000800072c4 <devintr>:
    800072c4:	142027f3          	csrr	a5,scause
    800072c8:	00000513          	li	a0,0
    800072cc:	0007c463          	bltz	a5,800072d4 <devintr+0x10>
    800072d0:	00008067          	ret
    800072d4:	fe010113          	addi	sp,sp,-32
    800072d8:	00813823          	sd	s0,16(sp)
    800072dc:	00113c23          	sd	ra,24(sp)
    800072e0:	00913423          	sd	s1,8(sp)
    800072e4:	02010413          	addi	s0,sp,32
    800072e8:	0ff7f713          	andi	a4,a5,255
    800072ec:	00900693          	li	a3,9
    800072f0:	04d70c63          	beq	a4,a3,80007348 <devintr+0x84>
    800072f4:	fff00713          	li	a4,-1
    800072f8:	03f71713          	slli	a4,a4,0x3f
    800072fc:	00170713          	addi	a4,a4,1
    80007300:	00e78c63          	beq	a5,a4,80007318 <devintr+0x54>
    80007304:	01813083          	ld	ra,24(sp)
    80007308:	01013403          	ld	s0,16(sp)
    8000730c:	00813483          	ld	s1,8(sp)
    80007310:	02010113          	addi	sp,sp,32
    80007314:	00008067          	ret
    80007318:	00000097          	auipc	ra,0x0
    8000731c:	c8c080e7          	jalr	-884(ra) # 80006fa4 <cpuid>
    80007320:	06050663          	beqz	a0,8000738c <devintr+0xc8>
    80007324:	144027f3          	csrr	a5,sip
    80007328:	ffd7f793          	andi	a5,a5,-3
    8000732c:	14479073          	csrw	sip,a5
    80007330:	01813083          	ld	ra,24(sp)
    80007334:	01013403          	ld	s0,16(sp)
    80007338:	00813483          	ld	s1,8(sp)
    8000733c:	00200513          	li	a0,2
    80007340:	02010113          	addi	sp,sp,32
    80007344:	00008067          	ret
    80007348:	00000097          	auipc	ra,0x0
    8000734c:	24c080e7          	jalr	588(ra) # 80007594 <plic_claim>
    80007350:	00a00793          	li	a5,10
    80007354:	00050493          	mv	s1,a0
    80007358:	06f50663          	beq	a0,a5,800073c4 <devintr+0x100>
    8000735c:	00100513          	li	a0,1
    80007360:	fa0482e3          	beqz	s1,80007304 <devintr+0x40>
    80007364:	00048593          	mv	a1,s1
    80007368:	00002517          	auipc	a0,0x2
    8000736c:	44850513          	addi	a0,a0,1096 # 800097b0 <CONSOLE_STATUS+0x7a0>
    80007370:	00000097          	auipc	ra,0x0
    80007374:	668080e7          	jalr	1640(ra) # 800079d8 <__printf>
    80007378:	00048513          	mv	a0,s1
    8000737c:	00000097          	auipc	ra,0x0
    80007380:	250080e7          	jalr	592(ra) # 800075cc <plic_complete>
    80007384:	00100513          	li	a0,1
    80007388:	f7dff06f          	j	80007304 <devintr+0x40>
    8000738c:	00006517          	auipc	a0,0x6
    80007390:	b1450513          	addi	a0,a0,-1260 # 8000cea0 <tickslock>
    80007394:	00001097          	auipc	ra,0x1
    80007398:	318080e7          	jalr	792(ra) # 800086ac <acquire>
    8000739c:	00005717          	auipc	a4,0x5
    800073a0:	99870713          	addi	a4,a4,-1640 # 8000bd34 <ticks>
    800073a4:	00072783          	lw	a5,0(a4)
    800073a8:	00006517          	auipc	a0,0x6
    800073ac:	af850513          	addi	a0,a0,-1288 # 8000cea0 <tickslock>
    800073b0:	0017879b          	addiw	a5,a5,1
    800073b4:	00f72023          	sw	a5,0(a4)
    800073b8:	00001097          	auipc	ra,0x1
    800073bc:	3c0080e7          	jalr	960(ra) # 80008778 <release>
    800073c0:	f65ff06f          	j	80007324 <devintr+0x60>
    800073c4:	00001097          	auipc	ra,0x1
    800073c8:	f1c080e7          	jalr	-228(ra) # 800082e0 <uartintr>
    800073cc:	fadff06f          	j	80007378 <devintr+0xb4>

00000000800073d0 <kernelvec>:
    800073d0:	f0010113          	addi	sp,sp,-256
    800073d4:	00113023          	sd	ra,0(sp)
    800073d8:	00213423          	sd	sp,8(sp)
    800073dc:	00313823          	sd	gp,16(sp)
    800073e0:	00413c23          	sd	tp,24(sp)
    800073e4:	02513023          	sd	t0,32(sp)
    800073e8:	02613423          	sd	t1,40(sp)
    800073ec:	02713823          	sd	t2,48(sp)
    800073f0:	02813c23          	sd	s0,56(sp)
    800073f4:	04913023          	sd	s1,64(sp)
    800073f8:	04a13423          	sd	a0,72(sp)
    800073fc:	04b13823          	sd	a1,80(sp)
    80007400:	04c13c23          	sd	a2,88(sp)
    80007404:	06d13023          	sd	a3,96(sp)
    80007408:	06e13423          	sd	a4,104(sp)
    8000740c:	06f13823          	sd	a5,112(sp)
    80007410:	07013c23          	sd	a6,120(sp)
    80007414:	09113023          	sd	a7,128(sp)
    80007418:	09213423          	sd	s2,136(sp)
    8000741c:	09313823          	sd	s3,144(sp)
    80007420:	09413c23          	sd	s4,152(sp)
    80007424:	0b513023          	sd	s5,160(sp)
    80007428:	0b613423          	sd	s6,168(sp)
    8000742c:	0b713823          	sd	s7,176(sp)
    80007430:	0b813c23          	sd	s8,184(sp)
    80007434:	0d913023          	sd	s9,192(sp)
    80007438:	0da13423          	sd	s10,200(sp)
    8000743c:	0db13823          	sd	s11,208(sp)
    80007440:	0dc13c23          	sd	t3,216(sp)
    80007444:	0fd13023          	sd	t4,224(sp)
    80007448:	0fe13423          	sd	t5,232(sp)
    8000744c:	0ff13823          	sd	t6,240(sp)
    80007450:	cd5ff0ef          	jal	ra,80007124 <kerneltrap>
    80007454:	00013083          	ld	ra,0(sp)
    80007458:	00813103          	ld	sp,8(sp)
    8000745c:	01013183          	ld	gp,16(sp)
    80007460:	02013283          	ld	t0,32(sp)
    80007464:	02813303          	ld	t1,40(sp)
    80007468:	03013383          	ld	t2,48(sp)
    8000746c:	03813403          	ld	s0,56(sp)
    80007470:	04013483          	ld	s1,64(sp)
    80007474:	04813503          	ld	a0,72(sp)
    80007478:	05013583          	ld	a1,80(sp)
    8000747c:	05813603          	ld	a2,88(sp)
    80007480:	06013683          	ld	a3,96(sp)
    80007484:	06813703          	ld	a4,104(sp)
    80007488:	07013783          	ld	a5,112(sp)
    8000748c:	07813803          	ld	a6,120(sp)
    80007490:	08013883          	ld	a7,128(sp)
    80007494:	08813903          	ld	s2,136(sp)
    80007498:	09013983          	ld	s3,144(sp)
    8000749c:	09813a03          	ld	s4,152(sp)
    800074a0:	0a013a83          	ld	s5,160(sp)
    800074a4:	0a813b03          	ld	s6,168(sp)
    800074a8:	0b013b83          	ld	s7,176(sp)
    800074ac:	0b813c03          	ld	s8,184(sp)
    800074b0:	0c013c83          	ld	s9,192(sp)
    800074b4:	0c813d03          	ld	s10,200(sp)
    800074b8:	0d013d83          	ld	s11,208(sp)
    800074bc:	0d813e03          	ld	t3,216(sp)
    800074c0:	0e013e83          	ld	t4,224(sp)
    800074c4:	0e813f03          	ld	t5,232(sp)
    800074c8:	0f013f83          	ld	t6,240(sp)
    800074cc:	10010113          	addi	sp,sp,256
    800074d0:	10200073          	sret
    800074d4:	00000013          	nop
    800074d8:	00000013          	nop
    800074dc:	00000013          	nop

00000000800074e0 <timervec>:
    800074e0:	34051573          	csrrw	a0,mscratch,a0
    800074e4:	00b53023          	sd	a1,0(a0)
    800074e8:	00c53423          	sd	a2,8(a0)
    800074ec:	00d53823          	sd	a3,16(a0)
    800074f0:	01853583          	ld	a1,24(a0)
    800074f4:	02053603          	ld	a2,32(a0)
    800074f8:	0005b683          	ld	a3,0(a1)
    800074fc:	00c686b3          	add	a3,a3,a2
    80007500:	00d5b023          	sd	a3,0(a1)
    80007504:	00200593          	li	a1,2
    80007508:	14459073          	csrw	sip,a1
    8000750c:	01053683          	ld	a3,16(a0)
    80007510:	00853603          	ld	a2,8(a0)
    80007514:	00053583          	ld	a1,0(a0)
    80007518:	34051573          	csrrw	a0,mscratch,a0
    8000751c:	30200073          	mret

0000000080007520 <plicinit>:
    80007520:	ff010113          	addi	sp,sp,-16
    80007524:	00813423          	sd	s0,8(sp)
    80007528:	01010413          	addi	s0,sp,16
    8000752c:	00813403          	ld	s0,8(sp)
    80007530:	0c0007b7          	lui	a5,0xc000
    80007534:	00100713          	li	a4,1
    80007538:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000753c:	00e7a223          	sw	a4,4(a5)
    80007540:	01010113          	addi	sp,sp,16
    80007544:	00008067          	ret

0000000080007548 <plicinithart>:
    80007548:	ff010113          	addi	sp,sp,-16
    8000754c:	00813023          	sd	s0,0(sp)
    80007550:	00113423          	sd	ra,8(sp)
    80007554:	01010413          	addi	s0,sp,16
    80007558:	00000097          	auipc	ra,0x0
    8000755c:	a4c080e7          	jalr	-1460(ra) # 80006fa4 <cpuid>
    80007560:	0085171b          	slliw	a4,a0,0x8
    80007564:	0c0027b7          	lui	a5,0xc002
    80007568:	00e787b3          	add	a5,a5,a4
    8000756c:	40200713          	li	a4,1026
    80007570:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007574:	00813083          	ld	ra,8(sp)
    80007578:	00013403          	ld	s0,0(sp)
    8000757c:	00d5151b          	slliw	a0,a0,0xd
    80007580:	0c2017b7          	lui	a5,0xc201
    80007584:	00a78533          	add	a0,a5,a0
    80007588:	00052023          	sw	zero,0(a0)
    8000758c:	01010113          	addi	sp,sp,16
    80007590:	00008067          	ret

0000000080007594 <plic_claim>:
    80007594:	ff010113          	addi	sp,sp,-16
    80007598:	00813023          	sd	s0,0(sp)
    8000759c:	00113423          	sd	ra,8(sp)
    800075a0:	01010413          	addi	s0,sp,16
    800075a4:	00000097          	auipc	ra,0x0
    800075a8:	a00080e7          	jalr	-1536(ra) # 80006fa4 <cpuid>
    800075ac:	00813083          	ld	ra,8(sp)
    800075b0:	00013403          	ld	s0,0(sp)
    800075b4:	00d5151b          	slliw	a0,a0,0xd
    800075b8:	0c2017b7          	lui	a5,0xc201
    800075bc:	00a78533          	add	a0,a5,a0
    800075c0:	00452503          	lw	a0,4(a0)
    800075c4:	01010113          	addi	sp,sp,16
    800075c8:	00008067          	ret

00000000800075cc <plic_complete>:
    800075cc:	fe010113          	addi	sp,sp,-32
    800075d0:	00813823          	sd	s0,16(sp)
    800075d4:	00913423          	sd	s1,8(sp)
    800075d8:	00113c23          	sd	ra,24(sp)
    800075dc:	02010413          	addi	s0,sp,32
    800075e0:	00050493          	mv	s1,a0
    800075e4:	00000097          	auipc	ra,0x0
    800075e8:	9c0080e7          	jalr	-1600(ra) # 80006fa4 <cpuid>
    800075ec:	01813083          	ld	ra,24(sp)
    800075f0:	01013403          	ld	s0,16(sp)
    800075f4:	00d5179b          	slliw	a5,a0,0xd
    800075f8:	0c201737          	lui	a4,0xc201
    800075fc:	00f707b3          	add	a5,a4,a5
    80007600:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007604:	00813483          	ld	s1,8(sp)
    80007608:	02010113          	addi	sp,sp,32
    8000760c:	00008067          	ret

0000000080007610 <consolewrite>:
    80007610:	fb010113          	addi	sp,sp,-80
    80007614:	04813023          	sd	s0,64(sp)
    80007618:	04113423          	sd	ra,72(sp)
    8000761c:	02913c23          	sd	s1,56(sp)
    80007620:	03213823          	sd	s2,48(sp)
    80007624:	03313423          	sd	s3,40(sp)
    80007628:	03413023          	sd	s4,32(sp)
    8000762c:	01513c23          	sd	s5,24(sp)
    80007630:	05010413          	addi	s0,sp,80
    80007634:	06c05c63          	blez	a2,800076ac <consolewrite+0x9c>
    80007638:	00060993          	mv	s3,a2
    8000763c:	00050a13          	mv	s4,a0
    80007640:	00058493          	mv	s1,a1
    80007644:	00000913          	li	s2,0
    80007648:	fff00a93          	li	s5,-1
    8000764c:	01c0006f          	j	80007668 <consolewrite+0x58>
    80007650:	fbf44503          	lbu	a0,-65(s0)
    80007654:	0019091b          	addiw	s2,s2,1
    80007658:	00148493          	addi	s1,s1,1
    8000765c:	00001097          	auipc	ra,0x1
    80007660:	a9c080e7          	jalr	-1380(ra) # 800080f8 <uartputc>
    80007664:	03298063          	beq	s3,s2,80007684 <consolewrite+0x74>
    80007668:	00048613          	mv	a2,s1
    8000766c:	00100693          	li	a3,1
    80007670:	000a0593          	mv	a1,s4
    80007674:	fbf40513          	addi	a0,s0,-65
    80007678:	00000097          	auipc	ra,0x0
    8000767c:	9e4080e7          	jalr	-1564(ra) # 8000705c <either_copyin>
    80007680:	fd5518e3          	bne	a0,s5,80007650 <consolewrite+0x40>
    80007684:	04813083          	ld	ra,72(sp)
    80007688:	04013403          	ld	s0,64(sp)
    8000768c:	03813483          	ld	s1,56(sp)
    80007690:	02813983          	ld	s3,40(sp)
    80007694:	02013a03          	ld	s4,32(sp)
    80007698:	01813a83          	ld	s5,24(sp)
    8000769c:	00090513          	mv	a0,s2
    800076a0:	03013903          	ld	s2,48(sp)
    800076a4:	05010113          	addi	sp,sp,80
    800076a8:	00008067          	ret
    800076ac:	00000913          	li	s2,0
    800076b0:	fd5ff06f          	j	80007684 <consolewrite+0x74>

00000000800076b4 <consoleread>:
    800076b4:	f9010113          	addi	sp,sp,-112
    800076b8:	06813023          	sd	s0,96(sp)
    800076bc:	04913c23          	sd	s1,88(sp)
    800076c0:	05213823          	sd	s2,80(sp)
    800076c4:	05313423          	sd	s3,72(sp)
    800076c8:	05413023          	sd	s4,64(sp)
    800076cc:	03513c23          	sd	s5,56(sp)
    800076d0:	03613823          	sd	s6,48(sp)
    800076d4:	03713423          	sd	s7,40(sp)
    800076d8:	03813023          	sd	s8,32(sp)
    800076dc:	06113423          	sd	ra,104(sp)
    800076e0:	01913c23          	sd	s9,24(sp)
    800076e4:	07010413          	addi	s0,sp,112
    800076e8:	00060b93          	mv	s7,a2
    800076ec:	00050913          	mv	s2,a0
    800076f0:	00058c13          	mv	s8,a1
    800076f4:	00060b1b          	sext.w	s6,a2
    800076f8:	00005497          	auipc	s1,0x5
    800076fc:	7d048493          	addi	s1,s1,2000 # 8000cec8 <cons>
    80007700:	00400993          	li	s3,4
    80007704:	fff00a13          	li	s4,-1
    80007708:	00a00a93          	li	s5,10
    8000770c:	05705e63          	blez	s7,80007768 <consoleread+0xb4>
    80007710:	09c4a703          	lw	a4,156(s1)
    80007714:	0984a783          	lw	a5,152(s1)
    80007718:	0007071b          	sext.w	a4,a4
    8000771c:	08e78463          	beq	a5,a4,800077a4 <consoleread+0xf0>
    80007720:	07f7f713          	andi	a4,a5,127
    80007724:	00e48733          	add	a4,s1,a4
    80007728:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000772c:	0017869b          	addiw	a3,a5,1
    80007730:	08d4ac23          	sw	a3,152(s1)
    80007734:	00070c9b          	sext.w	s9,a4
    80007738:	0b370663          	beq	a4,s3,800077e4 <consoleread+0x130>
    8000773c:	00100693          	li	a3,1
    80007740:	f9f40613          	addi	a2,s0,-97
    80007744:	000c0593          	mv	a1,s8
    80007748:	00090513          	mv	a0,s2
    8000774c:	f8e40fa3          	sb	a4,-97(s0)
    80007750:	00000097          	auipc	ra,0x0
    80007754:	8c0080e7          	jalr	-1856(ra) # 80007010 <either_copyout>
    80007758:	01450863          	beq	a0,s4,80007768 <consoleread+0xb4>
    8000775c:	001c0c13          	addi	s8,s8,1
    80007760:	fffb8b9b          	addiw	s7,s7,-1
    80007764:	fb5c94e3          	bne	s9,s5,8000770c <consoleread+0x58>
    80007768:	000b851b          	sext.w	a0,s7
    8000776c:	06813083          	ld	ra,104(sp)
    80007770:	06013403          	ld	s0,96(sp)
    80007774:	05813483          	ld	s1,88(sp)
    80007778:	05013903          	ld	s2,80(sp)
    8000777c:	04813983          	ld	s3,72(sp)
    80007780:	04013a03          	ld	s4,64(sp)
    80007784:	03813a83          	ld	s5,56(sp)
    80007788:	02813b83          	ld	s7,40(sp)
    8000778c:	02013c03          	ld	s8,32(sp)
    80007790:	01813c83          	ld	s9,24(sp)
    80007794:	40ab053b          	subw	a0,s6,a0
    80007798:	03013b03          	ld	s6,48(sp)
    8000779c:	07010113          	addi	sp,sp,112
    800077a0:	00008067          	ret
    800077a4:	00001097          	auipc	ra,0x1
    800077a8:	1d8080e7          	jalr	472(ra) # 8000897c <push_on>
    800077ac:	0984a703          	lw	a4,152(s1)
    800077b0:	09c4a783          	lw	a5,156(s1)
    800077b4:	0007879b          	sext.w	a5,a5
    800077b8:	fef70ce3          	beq	a4,a5,800077b0 <consoleread+0xfc>
    800077bc:	00001097          	auipc	ra,0x1
    800077c0:	234080e7          	jalr	564(ra) # 800089f0 <pop_on>
    800077c4:	0984a783          	lw	a5,152(s1)
    800077c8:	07f7f713          	andi	a4,a5,127
    800077cc:	00e48733          	add	a4,s1,a4
    800077d0:	01874703          	lbu	a4,24(a4)
    800077d4:	0017869b          	addiw	a3,a5,1
    800077d8:	08d4ac23          	sw	a3,152(s1)
    800077dc:	00070c9b          	sext.w	s9,a4
    800077e0:	f5371ee3          	bne	a4,s3,8000773c <consoleread+0x88>
    800077e4:	000b851b          	sext.w	a0,s7
    800077e8:	f96bf2e3          	bgeu	s7,s6,8000776c <consoleread+0xb8>
    800077ec:	08f4ac23          	sw	a5,152(s1)
    800077f0:	f7dff06f          	j	8000776c <consoleread+0xb8>

00000000800077f4 <consputc>:
    800077f4:	10000793          	li	a5,256
    800077f8:	00f50663          	beq	a0,a5,80007804 <consputc+0x10>
    800077fc:	00001317          	auipc	t1,0x1
    80007800:	9f430067          	jr	-1548(t1) # 800081f0 <uartputc_sync>
    80007804:	ff010113          	addi	sp,sp,-16
    80007808:	00113423          	sd	ra,8(sp)
    8000780c:	00813023          	sd	s0,0(sp)
    80007810:	01010413          	addi	s0,sp,16
    80007814:	00800513          	li	a0,8
    80007818:	00001097          	auipc	ra,0x1
    8000781c:	9d8080e7          	jalr	-1576(ra) # 800081f0 <uartputc_sync>
    80007820:	02000513          	li	a0,32
    80007824:	00001097          	auipc	ra,0x1
    80007828:	9cc080e7          	jalr	-1588(ra) # 800081f0 <uartputc_sync>
    8000782c:	00013403          	ld	s0,0(sp)
    80007830:	00813083          	ld	ra,8(sp)
    80007834:	00800513          	li	a0,8
    80007838:	01010113          	addi	sp,sp,16
    8000783c:	00001317          	auipc	t1,0x1
    80007840:	9b430067          	jr	-1612(t1) # 800081f0 <uartputc_sync>

0000000080007844 <consoleintr>:
    80007844:	fe010113          	addi	sp,sp,-32
    80007848:	00813823          	sd	s0,16(sp)
    8000784c:	00913423          	sd	s1,8(sp)
    80007850:	01213023          	sd	s2,0(sp)
    80007854:	00113c23          	sd	ra,24(sp)
    80007858:	02010413          	addi	s0,sp,32
    8000785c:	00005917          	auipc	s2,0x5
    80007860:	66c90913          	addi	s2,s2,1644 # 8000cec8 <cons>
    80007864:	00050493          	mv	s1,a0
    80007868:	00090513          	mv	a0,s2
    8000786c:	00001097          	auipc	ra,0x1
    80007870:	e40080e7          	jalr	-448(ra) # 800086ac <acquire>
    80007874:	02048c63          	beqz	s1,800078ac <consoleintr+0x68>
    80007878:	0a092783          	lw	a5,160(s2)
    8000787c:	09892703          	lw	a4,152(s2)
    80007880:	07f00693          	li	a3,127
    80007884:	40e7873b          	subw	a4,a5,a4
    80007888:	02e6e263          	bltu	a3,a4,800078ac <consoleintr+0x68>
    8000788c:	00d00713          	li	a4,13
    80007890:	04e48063          	beq	s1,a4,800078d0 <consoleintr+0x8c>
    80007894:	07f7f713          	andi	a4,a5,127
    80007898:	00e90733          	add	a4,s2,a4
    8000789c:	0017879b          	addiw	a5,a5,1
    800078a0:	0af92023          	sw	a5,160(s2)
    800078a4:	00970c23          	sb	s1,24(a4)
    800078a8:	08f92e23          	sw	a5,156(s2)
    800078ac:	01013403          	ld	s0,16(sp)
    800078b0:	01813083          	ld	ra,24(sp)
    800078b4:	00813483          	ld	s1,8(sp)
    800078b8:	00013903          	ld	s2,0(sp)
    800078bc:	00005517          	auipc	a0,0x5
    800078c0:	60c50513          	addi	a0,a0,1548 # 8000cec8 <cons>
    800078c4:	02010113          	addi	sp,sp,32
    800078c8:	00001317          	auipc	t1,0x1
    800078cc:	eb030067          	jr	-336(t1) # 80008778 <release>
    800078d0:	00a00493          	li	s1,10
    800078d4:	fc1ff06f          	j	80007894 <consoleintr+0x50>

00000000800078d8 <consoleinit>:
    800078d8:	fe010113          	addi	sp,sp,-32
    800078dc:	00113c23          	sd	ra,24(sp)
    800078e0:	00813823          	sd	s0,16(sp)
    800078e4:	00913423          	sd	s1,8(sp)
    800078e8:	02010413          	addi	s0,sp,32
    800078ec:	00005497          	auipc	s1,0x5
    800078f0:	5dc48493          	addi	s1,s1,1500 # 8000cec8 <cons>
    800078f4:	00048513          	mv	a0,s1
    800078f8:	00002597          	auipc	a1,0x2
    800078fc:	f1058593          	addi	a1,a1,-240 # 80009808 <CONSOLE_STATUS+0x7f8>
    80007900:	00001097          	auipc	ra,0x1
    80007904:	d88080e7          	jalr	-632(ra) # 80008688 <initlock>
    80007908:	00000097          	auipc	ra,0x0
    8000790c:	7ac080e7          	jalr	1964(ra) # 800080b4 <uartinit>
    80007910:	01813083          	ld	ra,24(sp)
    80007914:	01013403          	ld	s0,16(sp)
    80007918:	00000797          	auipc	a5,0x0
    8000791c:	d9c78793          	addi	a5,a5,-612 # 800076b4 <consoleread>
    80007920:	0af4bc23          	sd	a5,184(s1)
    80007924:	00000797          	auipc	a5,0x0
    80007928:	cec78793          	addi	a5,a5,-788 # 80007610 <consolewrite>
    8000792c:	0cf4b023          	sd	a5,192(s1)
    80007930:	00813483          	ld	s1,8(sp)
    80007934:	02010113          	addi	sp,sp,32
    80007938:	00008067          	ret

000000008000793c <console_read>:
    8000793c:	ff010113          	addi	sp,sp,-16
    80007940:	00813423          	sd	s0,8(sp)
    80007944:	01010413          	addi	s0,sp,16
    80007948:	00813403          	ld	s0,8(sp)
    8000794c:	00005317          	auipc	t1,0x5
    80007950:	63433303          	ld	t1,1588(t1) # 8000cf80 <devsw+0x10>
    80007954:	01010113          	addi	sp,sp,16
    80007958:	00030067          	jr	t1

000000008000795c <console_write>:
    8000795c:	ff010113          	addi	sp,sp,-16
    80007960:	00813423          	sd	s0,8(sp)
    80007964:	01010413          	addi	s0,sp,16
    80007968:	00813403          	ld	s0,8(sp)
    8000796c:	00005317          	auipc	t1,0x5
    80007970:	61c33303          	ld	t1,1564(t1) # 8000cf88 <devsw+0x18>
    80007974:	01010113          	addi	sp,sp,16
    80007978:	00030067          	jr	t1

000000008000797c <panic>:
    8000797c:	fe010113          	addi	sp,sp,-32
    80007980:	00113c23          	sd	ra,24(sp)
    80007984:	00813823          	sd	s0,16(sp)
    80007988:	00913423          	sd	s1,8(sp)
    8000798c:	02010413          	addi	s0,sp,32
    80007990:	00050493          	mv	s1,a0
    80007994:	00002517          	auipc	a0,0x2
    80007998:	e7c50513          	addi	a0,a0,-388 # 80009810 <CONSOLE_STATUS+0x800>
    8000799c:	00005797          	auipc	a5,0x5
    800079a0:	6807a623          	sw	zero,1676(a5) # 8000d028 <pr+0x18>
    800079a4:	00000097          	auipc	ra,0x0
    800079a8:	034080e7          	jalr	52(ra) # 800079d8 <__printf>
    800079ac:	00048513          	mv	a0,s1
    800079b0:	00000097          	auipc	ra,0x0
    800079b4:	028080e7          	jalr	40(ra) # 800079d8 <__printf>
    800079b8:	00002517          	auipc	a0,0x2
    800079bc:	90050513          	addi	a0,a0,-1792 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800079c0:	00000097          	auipc	ra,0x0
    800079c4:	018080e7          	jalr	24(ra) # 800079d8 <__printf>
    800079c8:	00100793          	li	a5,1
    800079cc:	00004717          	auipc	a4,0x4
    800079d0:	36f72623          	sw	a5,876(a4) # 8000bd38 <panicked>
    800079d4:	0000006f          	j	800079d4 <panic+0x58>

00000000800079d8 <__printf>:
    800079d8:	f3010113          	addi	sp,sp,-208
    800079dc:	08813023          	sd	s0,128(sp)
    800079e0:	07313423          	sd	s3,104(sp)
    800079e4:	09010413          	addi	s0,sp,144
    800079e8:	05813023          	sd	s8,64(sp)
    800079ec:	08113423          	sd	ra,136(sp)
    800079f0:	06913c23          	sd	s1,120(sp)
    800079f4:	07213823          	sd	s2,112(sp)
    800079f8:	07413023          	sd	s4,96(sp)
    800079fc:	05513c23          	sd	s5,88(sp)
    80007a00:	05613823          	sd	s6,80(sp)
    80007a04:	05713423          	sd	s7,72(sp)
    80007a08:	03913c23          	sd	s9,56(sp)
    80007a0c:	03a13823          	sd	s10,48(sp)
    80007a10:	03b13423          	sd	s11,40(sp)
    80007a14:	00005317          	auipc	t1,0x5
    80007a18:	5fc30313          	addi	t1,t1,1532 # 8000d010 <pr>
    80007a1c:	01832c03          	lw	s8,24(t1)
    80007a20:	00b43423          	sd	a1,8(s0)
    80007a24:	00c43823          	sd	a2,16(s0)
    80007a28:	00d43c23          	sd	a3,24(s0)
    80007a2c:	02e43023          	sd	a4,32(s0)
    80007a30:	02f43423          	sd	a5,40(s0)
    80007a34:	03043823          	sd	a6,48(s0)
    80007a38:	03143c23          	sd	a7,56(s0)
    80007a3c:	00050993          	mv	s3,a0
    80007a40:	4a0c1663          	bnez	s8,80007eec <__printf+0x514>
    80007a44:	60098c63          	beqz	s3,8000805c <__printf+0x684>
    80007a48:	0009c503          	lbu	a0,0(s3)
    80007a4c:	00840793          	addi	a5,s0,8
    80007a50:	f6f43c23          	sd	a5,-136(s0)
    80007a54:	00000493          	li	s1,0
    80007a58:	22050063          	beqz	a0,80007c78 <__printf+0x2a0>
    80007a5c:	00002a37          	lui	s4,0x2
    80007a60:	00018ab7          	lui	s5,0x18
    80007a64:	000f4b37          	lui	s6,0xf4
    80007a68:	00989bb7          	lui	s7,0x989
    80007a6c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007a70:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007a74:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007a78:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007a7c:	00148c9b          	addiw	s9,s1,1
    80007a80:	02500793          	li	a5,37
    80007a84:	01998933          	add	s2,s3,s9
    80007a88:	38f51263          	bne	a0,a5,80007e0c <__printf+0x434>
    80007a8c:	00094783          	lbu	a5,0(s2)
    80007a90:	00078c9b          	sext.w	s9,a5
    80007a94:	1e078263          	beqz	a5,80007c78 <__printf+0x2a0>
    80007a98:	0024849b          	addiw	s1,s1,2
    80007a9c:	07000713          	li	a4,112
    80007aa0:	00998933          	add	s2,s3,s1
    80007aa4:	38e78a63          	beq	a5,a4,80007e38 <__printf+0x460>
    80007aa8:	20f76863          	bltu	a4,a5,80007cb8 <__printf+0x2e0>
    80007aac:	42a78863          	beq	a5,a0,80007edc <__printf+0x504>
    80007ab0:	06400713          	li	a4,100
    80007ab4:	40e79663          	bne	a5,a4,80007ec0 <__printf+0x4e8>
    80007ab8:	f7843783          	ld	a5,-136(s0)
    80007abc:	0007a603          	lw	a2,0(a5)
    80007ac0:	00878793          	addi	a5,a5,8
    80007ac4:	f6f43c23          	sd	a5,-136(s0)
    80007ac8:	42064a63          	bltz	a2,80007efc <__printf+0x524>
    80007acc:	00a00713          	li	a4,10
    80007ad0:	02e677bb          	remuw	a5,a2,a4
    80007ad4:	00002d97          	auipc	s11,0x2
    80007ad8:	d64d8d93          	addi	s11,s11,-668 # 80009838 <digits>
    80007adc:	00900593          	li	a1,9
    80007ae0:	0006051b          	sext.w	a0,a2
    80007ae4:	00000c93          	li	s9,0
    80007ae8:	02079793          	slli	a5,a5,0x20
    80007aec:	0207d793          	srli	a5,a5,0x20
    80007af0:	00fd87b3          	add	a5,s11,a5
    80007af4:	0007c783          	lbu	a5,0(a5)
    80007af8:	02e656bb          	divuw	a3,a2,a4
    80007afc:	f8f40023          	sb	a5,-128(s0)
    80007b00:	14c5d863          	bge	a1,a2,80007c50 <__printf+0x278>
    80007b04:	06300593          	li	a1,99
    80007b08:	00100c93          	li	s9,1
    80007b0c:	02e6f7bb          	remuw	a5,a3,a4
    80007b10:	02079793          	slli	a5,a5,0x20
    80007b14:	0207d793          	srli	a5,a5,0x20
    80007b18:	00fd87b3          	add	a5,s11,a5
    80007b1c:	0007c783          	lbu	a5,0(a5)
    80007b20:	02e6d73b          	divuw	a4,a3,a4
    80007b24:	f8f400a3          	sb	a5,-127(s0)
    80007b28:	12a5f463          	bgeu	a1,a0,80007c50 <__printf+0x278>
    80007b2c:	00a00693          	li	a3,10
    80007b30:	00900593          	li	a1,9
    80007b34:	02d777bb          	remuw	a5,a4,a3
    80007b38:	02079793          	slli	a5,a5,0x20
    80007b3c:	0207d793          	srli	a5,a5,0x20
    80007b40:	00fd87b3          	add	a5,s11,a5
    80007b44:	0007c503          	lbu	a0,0(a5)
    80007b48:	02d757bb          	divuw	a5,a4,a3
    80007b4c:	f8a40123          	sb	a0,-126(s0)
    80007b50:	48e5f263          	bgeu	a1,a4,80007fd4 <__printf+0x5fc>
    80007b54:	06300513          	li	a0,99
    80007b58:	02d7f5bb          	remuw	a1,a5,a3
    80007b5c:	02059593          	slli	a1,a1,0x20
    80007b60:	0205d593          	srli	a1,a1,0x20
    80007b64:	00bd85b3          	add	a1,s11,a1
    80007b68:	0005c583          	lbu	a1,0(a1)
    80007b6c:	02d7d7bb          	divuw	a5,a5,a3
    80007b70:	f8b401a3          	sb	a1,-125(s0)
    80007b74:	48e57263          	bgeu	a0,a4,80007ff8 <__printf+0x620>
    80007b78:	3e700513          	li	a0,999
    80007b7c:	02d7f5bb          	remuw	a1,a5,a3
    80007b80:	02059593          	slli	a1,a1,0x20
    80007b84:	0205d593          	srli	a1,a1,0x20
    80007b88:	00bd85b3          	add	a1,s11,a1
    80007b8c:	0005c583          	lbu	a1,0(a1)
    80007b90:	02d7d7bb          	divuw	a5,a5,a3
    80007b94:	f8b40223          	sb	a1,-124(s0)
    80007b98:	46e57663          	bgeu	a0,a4,80008004 <__printf+0x62c>
    80007b9c:	02d7f5bb          	remuw	a1,a5,a3
    80007ba0:	02059593          	slli	a1,a1,0x20
    80007ba4:	0205d593          	srli	a1,a1,0x20
    80007ba8:	00bd85b3          	add	a1,s11,a1
    80007bac:	0005c583          	lbu	a1,0(a1)
    80007bb0:	02d7d7bb          	divuw	a5,a5,a3
    80007bb4:	f8b402a3          	sb	a1,-123(s0)
    80007bb8:	46ea7863          	bgeu	s4,a4,80008028 <__printf+0x650>
    80007bbc:	02d7f5bb          	remuw	a1,a5,a3
    80007bc0:	02059593          	slli	a1,a1,0x20
    80007bc4:	0205d593          	srli	a1,a1,0x20
    80007bc8:	00bd85b3          	add	a1,s11,a1
    80007bcc:	0005c583          	lbu	a1,0(a1)
    80007bd0:	02d7d7bb          	divuw	a5,a5,a3
    80007bd4:	f8b40323          	sb	a1,-122(s0)
    80007bd8:	3eeaf863          	bgeu	s5,a4,80007fc8 <__printf+0x5f0>
    80007bdc:	02d7f5bb          	remuw	a1,a5,a3
    80007be0:	02059593          	slli	a1,a1,0x20
    80007be4:	0205d593          	srli	a1,a1,0x20
    80007be8:	00bd85b3          	add	a1,s11,a1
    80007bec:	0005c583          	lbu	a1,0(a1)
    80007bf0:	02d7d7bb          	divuw	a5,a5,a3
    80007bf4:	f8b403a3          	sb	a1,-121(s0)
    80007bf8:	42eb7e63          	bgeu	s6,a4,80008034 <__printf+0x65c>
    80007bfc:	02d7f5bb          	remuw	a1,a5,a3
    80007c00:	02059593          	slli	a1,a1,0x20
    80007c04:	0205d593          	srli	a1,a1,0x20
    80007c08:	00bd85b3          	add	a1,s11,a1
    80007c0c:	0005c583          	lbu	a1,0(a1)
    80007c10:	02d7d7bb          	divuw	a5,a5,a3
    80007c14:	f8b40423          	sb	a1,-120(s0)
    80007c18:	42ebfc63          	bgeu	s7,a4,80008050 <__printf+0x678>
    80007c1c:	02079793          	slli	a5,a5,0x20
    80007c20:	0207d793          	srli	a5,a5,0x20
    80007c24:	00fd8db3          	add	s11,s11,a5
    80007c28:	000dc703          	lbu	a4,0(s11)
    80007c2c:	00a00793          	li	a5,10
    80007c30:	00900c93          	li	s9,9
    80007c34:	f8e404a3          	sb	a4,-119(s0)
    80007c38:	00065c63          	bgez	a2,80007c50 <__printf+0x278>
    80007c3c:	f9040713          	addi	a4,s0,-112
    80007c40:	00f70733          	add	a4,a4,a5
    80007c44:	02d00693          	li	a3,45
    80007c48:	fed70823          	sb	a3,-16(a4)
    80007c4c:	00078c93          	mv	s9,a5
    80007c50:	f8040793          	addi	a5,s0,-128
    80007c54:	01978cb3          	add	s9,a5,s9
    80007c58:	f7f40d13          	addi	s10,s0,-129
    80007c5c:	000cc503          	lbu	a0,0(s9)
    80007c60:	fffc8c93          	addi	s9,s9,-1
    80007c64:	00000097          	auipc	ra,0x0
    80007c68:	b90080e7          	jalr	-1136(ra) # 800077f4 <consputc>
    80007c6c:	ffac98e3          	bne	s9,s10,80007c5c <__printf+0x284>
    80007c70:	00094503          	lbu	a0,0(s2)
    80007c74:	e00514e3          	bnez	a0,80007a7c <__printf+0xa4>
    80007c78:	1a0c1663          	bnez	s8,80007e24 <__printf+0x44c>
    80007c7c:	08813083          	ld	ra,136(sp)
    80007c80:	08013403          	ld	s0,128(sp)
    80007c84:	07813483          	ld	s1,120(sp)
    80007c88:	07013903          	ld	s2,112(sp)
    80007c8c:	06813983          	ld	s3,104(sp)
    80007c90:	06013a03          	ld	s4,96(sp)
    80007c94:	05813a83          	ld	s5,88(sp)
    80007c98:	05013b03          	ld	s6,80(sp)
    80007c9c:	04813b83          	ld	s7,72(sp)
    80007ca0:	04013c03          	ld	s8,64(sp)
    80007ca4:	03813c83          	ld	s9,56(sp)
    80007ca8:	03013d03          	ld	s10,48(sp)
    80007cac:	02813d83          	ld	s11,40(sp)
    80007cb0:	0d010113          	addi	sp,sp,208
    80007cb4:	00008067          	ret
    80007cb8:	07300713          	li	a4,115
    80007cbc:	1ce78a63          	beq	a5,a4,80007e90 <__printf+0x4b8>
    80007cc0:	07800713          	li	a4,120
    80007cc4:	1ee79e63          	bne	a5,a4,80007ec0 <__printf+0x4e8>
    80007cc8:	f7843783          	ld	a5,-136(s0)
    80007ccc:	0007a703          	lw	a4,0(a5)
    80007cd0:	00878793          	addi	a5,a5,8
    80007cd4:	f6f43c23          	sd	a5,-136(s0)
    80007cd8:	28074263          	bltz	a4,80007f5c <__printf+0x584>
    80007cdc:	00002d97          	auipc	s11,0x2
    80007ce0:	b5cd8d93          	addi	s11,s11,-1188 # 80009838 <digits>
    80007ce4:	00f77793          	andi	a5,a4,15
    80007ce8:	00fd87b3          	add	a5,s11,a5
    80007cec:	0007c683          	lbu	a3,0(a5)
    80007cf0:	00f00613          	li	a2,15
    80007cf4:	0007079b          	sext.w	a5,a4
    80007cf8:	f8d40023          	sb	a3,-128(s0)
    80007cfc:	0047559b          	srliw	a1,a4,0x4
    80007d00:	0047569b          	srliw	a3,a4,0x4
    80007d04:	00000c93          	li	s9,0
    80007d08:	0ee65063          	bge	a2,a4,80007de8 <__printf+0x410>
    80007d0c:	00f6f693          	andi	a3,a3,15
    80007d10:	00dd86b3          	add	a3,s11,a3
    80007d14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007d18:	0087d79b          	srliw	a5,a5,0x8
    80007d1c:	00100c93          	li	s9,1
    80007d20:	f8d400a3          	sb	a3,-127(s0)
    80007d24:	0cb67263          	bgeu	a2,a1,80007de8 <__printf+0x410>
    80007d28:	00f7f693          	andi	a3,a5,15
    80007d2c:	00dd86b3          	add	a3,s11,a3
    80007d30:	0006c583          	lbu	a1,0(a3)
    80007d34:	00f00613          	li	a2,15
    80007d38:	0047d69b          	srliw	a3,a5,0x4
    80007d3c:	f8b40123          	sb	a1,-126(s0)
    80007d40:	0047d593          	srli	a1,a5,0x4
    80007d44:	28f67e63          	bgeu	a2,a5,80007fe0 <__printf+0x608>
    80007d48:	00f6f693          	andi	a3,a3,15
    80007d4c:	00dd86b3          	add	a3,s11,a3
    80007d50:	0006c503          	lbu	a0,0(a3)
    80007d54:	0087d813          	srli	a6,a5,0x8
    80007d58:	0087d69b          	srliw	a3,a5,0x8
    80007d5c:	f8a401a3          	sb	a0,-125(s0)
    80007d60:	28b67663          	bgeu	a2,a1,80007fec <__printf+0x614>
    80007d64:	00f6f693          	andi	a3,a3,15
    80007d68:	00dd86b3          	add	a3,s11,a3
    80007d6c:	0006c583          	lbu	a1,0(a3)
    80007d70:	00c7d513          	srli	a0,a5,0xc
    80007d74:	00c7d69b          	srliw	a3,a5,0xc
    80007d78:	f8b40223          	sb	a1,-124(s0)
    80007d7c:	29067a63          	bgeu	a2,a6,80008010 <__printf+0x638>
    80007d80:	00f6f693          	andi	a3,a3,15
    80007d84:	00dd86b3          	add	a3,s11,a3
    80007d88:	0006c583          	lbu	a1,0(a3)
    80007d8c:	0107d813          	srli	a6,a5,0x10
    80007d90:	0107d69b          	srliw	a3,a5,0x10
    80007d94:	f8b402a3          	sb	a1,-123(s0)
    80007d98:	28a67263          	bgeu	a2,a0,8000801c <__printf+0x644>
    80007d9c:	00f6f693          	andi	a3,a3,15
    80007da0:	00dd86b3          	add	a3,s11,a3
    80007da4:	0006c683          	lbu	a3,0(a3)
    80007da8:	0147d79b          	srliw	a5,a5,0x14
    80007dac:	f8d40323          	sb	a3,-122(s0)
    80007db0:	21067663          	bgeu	a2,a6,80007fbc <__printf+0x5e4>
    80007db4:	02079793          	slli	a5,a5,0x20
    80007db8:	0207d793          	srli	a5,a5,0x20
    80007dbc:	00fd8db3          	add	s11,s11,a5
    80007dc0:	000dc683          	lbu	a3,0(s11)
    80007dc4:	00800793          	li	a5,8
    80007dc8:	00700c93          	li	s9,7
    80007dcc:	f8d403a3          	sb	a3,-121(s0)
    80007dd0:	00075c63          	bgez	a4,80007de8 <__printf+0x410>
    80007dd4:	f9040713          	addi	a4,s0,-112
    80007dd8:	00f70733          	add	a4,a4,a5
    80007ddc:	02d00693          	li	a3,45
    80007de0:	fed70823          	sb	a3,-16(a4)
    80007de4:	00078c93          	mv	s9,a5
    80007de8:	f8040793          	addi	a5,s0,-128
    80007dec:	01978cb3          	add	s9,a5,s9
    80007df0:	f7f40d13          	addi	s10,s0,-129
    80007df4:	000cc503          	lbu	a0,0(s9)
    80007df8:	fffc8c93          	addi	s9,s9,-1
    80007dfc:	00000097          	auipc	ra,0x0
    80007e00:	9f8080e7          	jalr	-1544(ra) # 800077f4 <consputc>
    80007e04:	ff9d18e3          	bne	s10,s9,80007df4 <__printf+0x41c>
    80007e08:	0100006f          	j	80007e18 <__printf+0x440>
    80007e0c:	00000097          	auipc	ra,0x0
    80007e10:	9e8080e7          	jalr	-1560(ra) # 800077f4 <consputc>
    80007e14:	000c8493          	mv	s1,s9
    80007e18:	00094503          	lbu	a0,0(s2)
    80007e1c:	c60510e3          	bnez	a0,80007a7c <__printf+0xa4>
    80007e20:	e40c0ee3          	beqz	s8,80007c7c <__printf+0x2a4>
    80007e24:	00005517          	auipc	a0,0x5
    80007e28:	1ec50513          	addi	a0,a0,492 # 8000d010 <pr>
    80007e2c:	00001097          	auipc	ra,0x1
    80007e30:	94c080e7          	jalr	-1716(ra) # 80008778 <release>
    80007e34:	e49ff06f          	j	80007c7c <__printf+0x2a4>
    80007e38:	f7843783          	ld	a5,-136(s0)
    80007e3c:	03000513          	li	a0,48
    80007e40:	01000d13          	li	s10,16
    80007e44:	00878713          	addi	a4,a5,8
    80007e48:	0007bc83          	ld	s9,0(a5)
    80007e4c:	f6e43c23          	sd	a4,-136(s0)
    80007e50:	00000097          	auipc	ra,0x0
    80007e54:	9a4080e7          	jalr	-1628(ra) # 800077f4 <consputc>
    80007e58:	07800513          	li	a0,120
    80007e5c:	00000097          	auipc	ra,0x0
    80007e60:	998080e7          	jalr	-1640(ra) # 800077f4 <consputc>
    80007e64:	00002d97          	auipc	s11,0x2
    80007e68:	9d4d8d93          	addi	s11,s11,-1580 # 80009838 <digits>
    80007e6c:	03ccd793          	srli	a5,s9,0x3c
    80007e70:	00fd87b3          	add	a5,s11,a5
    80007e74:	0007c503          	lbu	a0,0(a5)
    80007e78:	fffd0d1b          	addiw	s10,s10,-1
    80007e7c:	004c9c93          	slli	s9,s9,0x4
    80007e80:	00000097          	auipc	ra,0x0
    80007e84:	974080e7          	jalr	-1676(ra) # 800077f4 <consputc>
    80007e88:	fe0d12e3          	bnez	s10,80007e6c <__printf+0x494>
    80007e8c:	f8dff06f          	j	80007e18 <__printf+0x440>
    80007e90:	f7843783          	ld	a5,-136(s0)
    80007e94:	0007bc83          	ld	s9,0(a5)
    80007e98:	00878793          	addi	a5,a5,8
    80007e9c:	f6f43c23          	sd	a5,-136(s0)
    80007ea0:	000c9a63          	bnez	s9,80007eb4 <__printf+0x4dc>
    80007ea4:	1080006f          	j	80007fac <__printf+0x5d4>
    80007ea8:	001c8c93          	addi	s9,s9,1
    80007eac:	00000097          	auipc	ra,0x0
    80007eb0:	948080e7          	jalr	-1720(ra) # 800077f4 <consputc>
    80007eb4:	000cc503          	lbu	a0,0(s9)
    80007eb8:	fe0518e3          	bnez	a0,80007ea8 <__printf+0x4d0>
    80007ebc:	f5dff06f          	j	80007e18 <__printf+0x440>
    80007ec0:	02500513          	li	a0,37
    80007ec4:	00000097          	auipc	ra,0x0
    80007ec8:	930080e7          	jalr	-1744(ra) # 800077f4 <consputc>
    80007ecc:	000c8513          	mv	a0,s9
    80007ed0:	00000097          	auipc	ra,0x0
    80007ed4:	924080e7          	jalr	-1756(ra) # 800077f4 <consputc>
    80007ed8:	f41ff06f          	j	80007e18 <__printf+0x440>
    80007edc:	02500513          	li	a0,37
    80007ee0:	00000097          	auipc	ra,0x0
    80007ee4:	914080e7          	jalr	-1772(ra) # 800077f4 <consputc>
    80007ee8:	f31ff06f          	j	80007e18 <__printf+0x440>
    80007eec:	00030513          	mv	a0,t1
    80007ef0:	00000097          	auipc	ra,0x0
    80007ef4:	7bc080e7          	jalr	1980(ra) # 800086ac <acquire>
    80007ef8:	b4dff06f          	j	80007a44 <__printf+0x6c>
    80007efc:	40c0053b          	negw	a0,a2
    80007f00:	00a00713          	li	a4,10
    80007f04:	02e576bb          	remuw	a3,a0,a4
    80007f08:	00002d97          	auipc	s11,0x2
    80007f0c:	930d8d93          	addi	s11,s11,-1744 # 80009838 <digits>
    80007f10:	ff700593          	li	a1,-9
    80007f14:	02069693          	slli	a3,a3,0x20
    80007f18:	0206d693          	srli	a3,a3,0x20
    80007f1c:	00dd86b3          	add	a3,s11,a3
    80007f20:	0006c683          	lbu	a3,0(a3)
    80007f24:	02e557bb          	divuw	a5,a0,a4
    80007f28:	f8d40023          	sb	a3,-128(s0)
    80007f2c:	10b65e63          	bge	a2,a1,80008048 <__printf+0x670>
    80007f30:	06300593          	li	a1,99
    80007f34:	02e7f6bb          	remuw	a3,a5,a4
    80007f38:	02069693          	slli	a3,a3,0x20
    80007f3c:	0206d693          	srli	a3,a3,0x20
    80007f40:	00dd86b3          	add	a3,s11,a3
    80007f44:	0006c683          	lbu	a3,0(a3)
    80007f48:	02e7d73b          	divuw	a4,a5,a4
    80007f4c:	00200793          	li	a5,2
    80007f50:	f8d400a3          	sb	a3,-127(s0)
    80007f54:	bca5ece3          	bltu	a1,a0,80007b2c <__printf+0x154>
    80007f58:	ce5ff06f          	j	80007c3c <__printf+0x264>
    80007f5c:	40e007bb          	negw	a5,a4
    80007f60:	00002d97          	auipc	s11,0x2
    80007f64:	8d8d8d93          	addi	s11,s11,-1832 # 80009838 <digits>
    80007f68:	00f7f693          	andi	a3,a5,15
    80007f6c:	00dd86b3          	add	a3,s11,a3
    80007f70:	0006c583          	lbu	a1,0(a3)
    80007f74:	ff100613          	li	a2,-15
    80007f78:	0047d69b          	srliw	a3,a5,0x4
    80007f7c:	f8b40023          	sb	a1,-128(s0)
    80007f80:	0047d59b          	srliw	a1,a5,0x4
    80007f84:	0ac75e63          	bge	a4,a2,80008040 <__printf+0x668>
    80007f88:	00f6f693          	andi	a3,a3,15
    80007f8c:	00dd86b3          	add	a3,s11,a3
    80007f90:	0006c603          	lbu	a2,0(a3)
    80007f94:	00f00693          	li	a3,15
    80007f98:	0087d79b          	srliw	a5,a5,0x8
    80007f9c:	f8c400a3          	sb	a2,-127(s0)
    80007fa0:	d8b6e4e3          	bltu	a3,a1,80007d28 <__printf+0x350>
    80007fa4:	00200793          	li	a5,2
    80007fa8:	e2dff06f          	j	80007dd4 <__printf+0x3fc>
    80007fac:	00002c97          	auipc	s9,0x2
    80007fb0:	86cc8c93          	addi	s9,s9,-1940 # 80009818 <CONSOLE_STATUS+0x808>
    80007fb4:	02800513          	li	a0,40
    80007fb8:	ef1ff06f          	j	80007ea8 <__printf+0x4d0>
    80007fbc:	00700793          	li	a5,7
    80007fc0:	00600c93          	li	s9,6
    80007fc4:	e0dff06f          	j	80007dd0 <__printf+0x3f8>
    80007fc8:	00700793          	li	a5,7
    80007fcc:	00600c93          	li	s9,6
    80007fd0:	c69ff06f          	j	80007c38 <__printf+0x260>
    80007fd4:	00300793          	li	a5,3
    80007fd8:	00200c93          	li	s9,2
    80007fdc:	c5dff06f          	j	80007c38 <__printf+0x260>
    80007fe0:	00300793          	li	a5,3
    80007fe4:	00200c93          	li	s9,2
    80007fe8:	de9ff06f          	j	80007dd0 <__printf+0x3f8>
    80007fec:	00400793          	li	a5,4
    80007ff0:	00300c93          	li	s9,3
    80007ff4:	dddff06f          	j	80007dd0 <__printf+0x3f8>
    80007ff8:	00400793          	li	a5,4
    80007ffc:	00300c93          	li	s9,3
    80008000:	c39ff06f          	j	80007c38 <__printf+0x260>
    80008004:	00500793          	li	a5,5
    80008008:	00400c93          	li	s9,4
    8000800c:	c2dff06f          	j	80007c38 <__printf+0x260>
    80008010:	00500793          	li	a5,5
    80008014:	00400c93          	li	s9,4
    80008018:	db9ff06f          	j	80007dd0 <__printf+0x3f8>
    8000801c:	00600793          	li	a5,6
    80008020:	00500c93          	li	s9,5
    80008024:	dadff06f          	j	80007dd0 <__printf+0x3f8>
    80008028:	00600793          	li	a5,6
    8000802c:	00500c93          	li	s9,5
    80008030:	c09ff06f          	j	80007c38 <__printf+0x260>
    80008034:	00800793          	li	a5,8
    80008038:	00700c93          	li	s9,7
    8000803c:	bfdff06f          	j	80007c38 <__printf+0x260>
    80008040:	00100793          	li	a5,1
    80008044:	d91ff06f          	j	80007dd4 <__printf+0x3fc>
    80008048:	00100793          	li	a5,1
    8000804c:	bf1ff06f          	j	80007c3c <__printf+0x264>
    80008050:	00900793          	li	a5,9
    80008054:	00800c93          	li	s9,8
    80008058:	be1ff06f          	j	80007c38 <__printf+0x260>
    8000805c:	00001517          	auipc	a0,0x1
    80008060:	7c450513          	addi	a0,a0,1988 # 80009820 <CONSOLE_STATUS+0x810>
    80008064:	00000097          	auipc	ra,0x0
    80008068:	918080e7          	jalr	-1768(ra) # 8000797c <panic>

000000008000806c <printfinit>:
    8000806c:	fe010113          	addi	sp,sp,-32
    80008070:	00813823          	sd	s0,16(sp)
    80008074:	00913423          	sd	s1,8(sp)
    80008078:	00113c23          	sd	ra,24(sp)
    8000807c:	02010413          	addi	s0,sp,32
    80008080:	00005497          	auipc	s1,0x5
    80008084:	f9048493          	addi	s1,s1,-112 # 8000d010 <pr>
    80008088:	00048513          	mv	a0,s1
    8000808c:	00001597          	auipc	a1,0x1
    80008090:	7a458593          	addi	a1,a1,1956 # 80009830 <CONSOLE_STATUS+0x820>
    80008094:	00000097          	auipc	ra,0x0
    80008098:	5f4080e7          	jalr	1524(ra) # 80008688 <initlock>
    8000809c:	01813083          	ld	ra,24(sp)
    800080a0:	01013403          	ld	s0,16(sp)
    800080a4:	0004ac23          	sw	zero,24(s1)
    800080a8:	00813483          	ld	s1,8(sp)
    800080ac:	02010113          	addi	sp,sp,32
    800080b0:	00008067          	ret

00000000800080b4 <uartinit>:
    800080b4:	ff010113          	addi	sp,sp,-16
    800080b8:	00813423          	sd	s0,8(sp)
    800080bc:	01010413          	addi	s0,sp,16
    800080c0:	100007b7          	lui	a5,0x10000
    800080c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800080c8:	f8000713          	li	a4,-128
    800080cc:	00e781a3          	sb	a4,3(a5)
    800080d0:	00300713          	li	a4,3
    800080d4:	00e78023          	sb	a4,0(a5)
    800080d8:	000780a3          	sb	zero,1(a5)
    800080dc:	00e781a3          	sb	a4,3(a5)
    800080e0:	00700693          	li	a3,7
    800080e4:	00d78123          	sb	a3,2(a5)
    800080e8:	00e780a3          	sb	a4,1(a5)
    800080ec:	00813403          	ld	s0,8(sp)
    800080f0:	01010113          	addi	sp,sp,16
    800080f4:	00008067          	ret

00000000800080f8 <uartputc>:
    800080f8:	00004797          	auipc	a5,0x4
    800080fc:	c407a783          	lw	a5,-960(a5) # 8000bd38 <panicked>
    80008100:	00078463          	beqz	a5,80008108 <uartputc+0x10>
    80008104:	0000006f          	j	80008104 <uartputc+0xc>
    80008108:	fd010113          	addi	sp,sp,-48
    8000810c:	02813023          	sd	s0,32(sp)
    80008110:	00913c23          	sd	s1,24(sp)
    80008114:	01213823          	sd	s2,16(sp)
    80008118:	01313423          	sd	s3,8(sp)
    8000811c:	02113423          	sd	ra,40(sp)
    80008120:	03010413          	addi	s0,sp,48
    80008124:	00004917          	auipc	s2,0x4
    80008128:	c1c90913          	addi	s2,s2,-996 # 8000bd40 <uart_tx_r>
    8000812c:	00093783          	ld	a5,0(s2)
    80008130:	00004497          	auipc	s1,0x4
    80008134:	c1848493          	addi	s1,s1,-1000 # 8000bd48 <uart_tx_w>
    80008138:	0004b703          	ld	a4,0(s1)
    8000813c:	02078693          	addi	a3,a5,32
    80008140:	00050993          	mv	s3,a0
    80008144:	02e69c63          	bne	a3,a4,8000817c <uartputc+0x84>
    80008148:	00001097          	auipc	ra,0x1
    8000814c:	834080e7          	jalr	-1996(ra) # 8000897c <push_on>
    80008150:	00093783          	ld	a5,0(s2)
    80008154:	0004b703          	ld	a4,0(s1)
    80008158:	02078793          	addi	a5,a5,32
    8000815c:	00e79463          	bne	a5,a4,80008164 <uartputc+0x6c>
    80008160:	0000006f          	j	80008160 <uartputc+0x68>
    80008164:	00001097          	auipc	ra,0x1
    80008168:	88c080e7          	jalr	-1908(ra) # 800089f0 <pop_on>
    8000816c:	00093783          	ld	a5,0(s2)
    80008170:	0004b703          	ld	a4,0(s1)
    80008174:	02078693          	addi	a3,a5,32
    80008178:	fce688e3          	beq	a3,a4,80008148 <uartputc+0x50>
    8000817c:	01f77693          	andi	a3,a4,31
    80008180:	00005597          	auipc	a1,0x5
    80008184:	eb058593          	addi	a1,a1,-336 # 8000d030 <uart_tx_buf>
    80008188:	00d586b3          	add	a3,a1,a3
    8000818c:	00170713          	addi	a4,a4,1
    80008190:	01368023          	sb	s3,0(a3)
    80008194:	00e4b023          	sd	a4,0(s1)
    80008198:	10000637          	lui	a2,0x10000
    8000819c:	02f71063          	bne	a4,a5,800081bc <uartputc+0xc4>
    800081a0:	0340006f          	j	800081d4 <uartputc+0xdc>
    800081a4:	00074703          	lbu	a4,0(a4)
    800081a8:	00f93023          	sd	a5,0(s2)
    800081ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800081b0:	00093783          	ld	a5,0(s2)
    800081b4:	0004b703          	ld	a4,0(s1)
    800081b8:	00f70e63          	beq	a4,a5,800081d4 <uartputc+0xdc>
    800081bc:	00564683          	lbu	a3,5(a2)
    800081c0:	01f7f713          	andi	a4,a5,31
    800081c4:	00e58733          	add	a4,a1,a4
    800081c8:	0206f693          	andi	a3,a3,32
    800081cc:	00178793          	addi	a5,a5,1
    800081d0:	fc069ae3          	bnez	a3,800081a4 <uartputc+0xac>
    800081d4:	02813083          	ld	ra,40(sp)
    800081d8:	02013403          	ld	s0,32(sp)
    800081dc:	01813483          	ld	s1,24(sp)
    800081e0:	01013903          	ld	s2,16(sp)
    800081e4:	00813983          	ld	s3,8(sp)
    800081e8:	03010113          	addi	sp,sp,48
    800081ec:	00008067          	ret

00000000800081f0 <uartputc_sync>:
    800081f0:	ff010113          	addi	sp,sp,-16
    800081f4:	00813423          	sd	s0,8(sp)
    800081f8:	01010413          	addi	s0,sp,16
    800081fc:	00004717          	auipc	a4,0x4
    80008200:	b3c72703          	lw	a4,-1220(a4) # 8000bd38 <panicked>
    80008204:	02071663          	bnez	a4,80008230 <uartputc_sync+0x40>
    80008208:	00050793          	mv	a5,a0
    8000820c:	100006b7          	lui	a3,0x10000
    80008210:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008214:	02077713          	andi	a4,a4,32
    80008218:	fe070ce3          	beqz	a4,80008210 <uartputc_sync+0x20>
    8000821c:	0ff7f793          	andi	a5,a5,255
    80008220:	00f68023          	sb	a5,0(a3)
    80008224:	00813403          	ld	s0,8(sp)
    80008228:	01010113          	addi	sp,sp,16
    8000822c:	00008067          	ret
    80008230:	0000006f          	j	80008230 <uartputc_sync+0x40>

0000000080008234 <uartstart>:
    80008234:	ff010113          	addi	sp,sp,-16
    80008238:	00813423          	sd	s0,8(sp)
    8000823c:	01010413          	addi	s0,sp,16
    80008240:	00004617          	auipc	a2,0x4
    80008244:	b0060613          	addi	a2,a2,-1280 # 8000bd40 <uart_tx_r>
    80008248:	00004517          	auipc	a0,0x4
    8000824c:	b0050513          	addi	a0,a0,-1280 # 8000bd48 <uart_tx_w>
    80008250:	00063783          	ld	a5,0(a2)
    80008254:	00053703          	ld	a4,0(a0)
    80008258:	04f70263          	beq	a4,a5,8000829c <uartstart+0x68>
    8000825c:	100005b7          	lui	a1,0x10000
    80008260:	00005817          	auipc	a6,0x5
    80008264:	dd080813          	addi	a6,a6,-560 # 8000d030 <uart_tx_buf>
    80008268:	01c0006f          	j	80008284 <uartstart+0x50>
    8000826c:	0006c703          	lbu	a4,0(a3)
    80008270:	00f63023          	sd	a5,0(a2)
    80008274:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008278:	00063783          	ld	a5,0(a2)
    8000827c:	00053703          	ld	a4,0(a0)
    80008280:	00f70e63          	beq	a4,a5,8000829c <uartstart+0x68>
    80008284:	01f7f713          	andi	a4,a5,31
    80008288:	00e806b3          	add	a3,a6,a4
    8000828c:	0055c703          	lbu	a4,5(a1)
    80008290:	00178793          	addi	a5,a5,1
    80008294:	02077713          	andi	a4,a4,32
    80008298:	fc071ae3          	bnez	a4,8000826c <uartstart+0x38>
    8000829c:	00813403          	ld	s0,8(sp)
    800082a0:	01010113          	addi	sp,sp,16
    800082a4:	00008067          	ret

00000000800082a8 <uartgetc>:
    800082a8:	ff010113          	addi	sp,sp,-16
    800082ac:	00813423          	sd	s0,8(sp)
    800082b0:	01010413          	addi	s0,sp,16
    800082b4:	10000737          	lui	a4,0x10000
    800082b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800082bc:	0017f793          	andi	a5,a5,1
    800082c0:	00078c63          	beqz	a5,800082d8 <uartgetc+0x30>
    800082c4:	00074503          	lbu	a0,0(a4)
    800082c8:	0ff57513          	andi	a0,a0,255
    800082cc:	00813403          	ld	s0,8(sp)
    800082d0:	01010113          	addi	sp,sp,16
    800082d4:	00008067          	ret
    800082d8:	fff00513          	li	a0,-1
    800082dc:	ff1ff06f          	j	800082cc <uartgetc+0x24>

00000000800082e0 <uartintr>:
    800082e0:	100007b7          	lui	a5,0x10000
    800082e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800082e8:	0017f793          	andi	a5,a5,1
    800082ec:	0a078463          	beqz	a5,80008394 <uartintr+0xb4>
    800082f0:	fe010113          	addi	sp,sp,-32
    800082f4:	00813823          	sd	s0,16(sp)
    800082f8:	00913423          	sd	s1,8(sp)
    800082fc:	00113c23          	sd	ra,24(sp)
    80008300:	02010413          	addi	s0,sp,32
    80008304:	100004b7          	lui	s1,0x10000
    80008308:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000830c:	0ff57513          	andi	a0,a0,255
    80008310:	fffff097          	auipc	ra,0xfffff
    80008314:	534080e7          	jalr	1332(ra) # 80007844 <consoleintr>
    80008318:	0054c783          	lbu	a5,5(s1)
    8000831c:	0017f793          	andi	a5,a5,1
    80008320:	fe0794e3          	bnez	a5,80008308 <uartintr+0x28>
    80008324:	00004617          	auipc	a2,0x4
    80008328:	a1c60613          	addi	a2,a2,-1508 # 8000bd40 <uart_tx_r>
    8000832c:	00004517          	auipc	a0,0x4
    80008330:	a1c50513          	addi	a0,a0,-1508 # 8000bd48 <uart_tx_w>
    80008334:	00063783          	ld	a5,0(a2)
    80008338:	00053703          	ld	a4,0(a0)
    8000833c:	04f70263          	beq	a4,a5,80008380 <uartintr+0xa0>
    80008340:	100005b7          	lui	a1,0x10000
    80008344:	00005817          	auipc	a6,0x5
    80008348:	cec80813          	addi	a6,a6,-788 # 8000d030 <uart_tx_buf>
    8000834c:	01c0006f          	j	80008368 <uartintr+0x88>
    80008350:	0006c703          	lbu	a4,0(a3)
    80008354:	00f63023          	sd	a5,0(a2)
    80008358:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000835c:	00063783          	ld	a5,0(a2)
    80008360:	00053703          	ld	a4,0(a0)
    80008364:	00f70e63          	beq	a4,a5,80008380 <uartintr+0xa0>
    80008368:	01f7f713          	andi	a4,a5,31
    8000836c:	00e806b3          	add	a3,a6,a4
    80008370:	0055c703          	lbu	a4,5(a1)
    80008374:	00178793          	addi	a5,a5,1
    80008378:	02077713          	andi	a4,a4,32
    8000837c:	fc071ae3          	bnez	a4,80008350 <uartintr+0x70>
    80008380:	01813083          	ld	ra,24(sp)
    80008384:	01013403          	ld	s0,16(sp)
    80008388:	00813483          	ld	s1,8(sp)
    8000838c:	02010113          	addi	sp,sp,32
    80008390:	00008067          	ret
    80008394:	00004617          	auipc	a2,0x4
    80008398:	9ac60613          	addi	a2,a2,-1620 # 8000bd40 <uart_tx_r>
    8000839c:	00004517          	auipc	a0,0x4
    800083a0:	9ac50513          	addi	a0,a0,-1620 # 8000bd48 <uart_tx_w>
    800083a4:	00063783          	ld	a5,0(a2)
    800083a8:	00053703          	ld	a4,0(a0)
    800083ac:	04f70263          	beq	a4,a5,800083f0 <uartintr+0x110>
    800083b0:	100005b7          	lui	a1,0x10000
    800083b4:	00005817          	auipc	a6,0x5
    800083b8:	c7c80813          	addi	a6,a6,-900 # 8000d030 <uart_tx_buf>
    800083bc:	01c0006f          	j	800083d8 <uartintr+0xf8>
    800083c0:	0006c703          	lbu	a4,0(a3)
    800083c4:	00f63023          	sd	a5,0(a2)
    800083c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800083cc:	00063783          	ld	a5,0(a2)
    800083d0:	00053703          	ld	a4,0(a0)
    800083d4:	02f70063          	beq	a4,a5,800083f4 <uartintr+0x114>
    800083d8:	01f7f713          	andi	a4,a5,31
    800083dc:	00e806b3          	add	a3,a6,a4
    800083e0:	0055c703          	lbu	a4,5(a1)
    800083e4:	00178793          	addi	a5,a5,1
    800083e8:	02077713          	andi	a4,a4,32
    800083ec:	fc071ae3          	bnez	a4,800083c0 <uartintr+0xe0>
    800083f0:	00008067          	ret
    800083f4:	00008067          	ret

00000000800083f8 <kinit>:
    800083f8:	fc010113          	addi	sp,sp,-64
    800083fc:	02913423          	sd	s1,40(sp)
    80008400:	fffff7b7          	lui	a5,0xfffff
    80008404:	00006497          	auipc	s1,0x6
    80008408:	c4b48493          	addi	s1,s1,-949 # 8000e04f <end+0xfff>
    8000840c:	02813823          	sd	s0,48(sp)
    80008410:	01313c23          	sd	s3,24(sp)
    80008414:	00f4f4b3          	and	s1,s1,a5
    80008418:	02113c23          	sd	ra,56(sp)
    8000841c:	03213023          	sd	s2,32(sp)
    80008420:	01413823          	sd	s4,16(sp)
    80008424:	01513423          	sd	s5,8(sp)
    80008428:	04010413          	addi	s0,sp,64
    8000842c:	000017b7          	lui	a5,0x1
    80008430:	01100993          	li	s3,17
    80008434:	00f487b3          	add	a5,s1,a5
    80008438:	01b99993          	slli	s3,s3,0x1b
    8000843c:	06f9e063          	bltu	s3,a5,8000849c <kinit+0xa4>
    80008440:	00005a97          	auipc	s5,0x5
    80008444:	c10a8a93          	addi	s5,s5,-1008 # 8000d050 <end>
    80008448:	0754ec63          	bltu	s1,s5,800084c0 <kinit+0xc8>
    8000844c:	0734fa63          	bgeu	s1,s3,800084c0 <kinit+0xc8>
    80008450:	00088a37          	lui	s4,0x88
    80008454:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008458:	00004917          	auipc	s2,0x4
    8000845c:	8f890913          	addi	s2,s2,-1800 # 8000bd50 <kmem>
    80008460:	00ca1a13          	slli	s4,s4,0xc
    80008464:	0140006f          	j	80008478 <kinit+0x80>
    80008468:	000017b7          	lui	a5,0x1
    8000846c:	00f484b3          	add	s1,s1,a5
    80008470:	0554e863          	bltu	s1,s5,800084c0 <kinit+0xc8>
    80008474:	0534f663          	bgeu	s1,s3,800084c0 <kinit+0xc8>
    80008478:	00001637          	lui	a2,0x1
    8000847c:	00100593          	li	a1,1
    80008480:	00048513          	mv	a0,s1
    80008484:	00000097          	auipc	ra,0x0
    80008488:	5e4080e7          	jalr	1508(ra) # 80008a68 <__memset>
    8000848c:	00093783          	ld	a5,0(s2)
    80008490:	00f4b023          	sd	a5,0(s1)
    80008494:	00993023          	sd	s1,0(s2)
    80008498:	fd4498e3          	bne	s1,s4,80008468 <kinit+0x70>
    8000849c:	03813083          	ld	ra,56(sp)
    800084a0:	03013403          	ld	s0,48(sp)
    800084a4:	02813483          	ld	s1,40(sp)
    800084a8:	02013903          	ld	s2,32(sp)
    800084ac:	01813983          	ld	s3,24(sp)
    800084b0:	01013a03          	ld	s4,16(sp)
    800084b4:	00813a83          	ld	s5,8(sp)
    800084b8:	04010113          	addi	sp,sp,64
    800084bc:	00008067          	ret
    800084c0:	00001517          	auipc	a0,0x1
    800084c4:	39050513          	addi	a0,a0,912 # 80009850 <digits+0x18>
    800084c8:	fffff097          	auipc	ra,0xfffff
    800084cc:	4b4080e7          	jalr	1204(ra) # 8000797c <panic>

00000000800084d0 <freerange>:
    800084d0:	fc010113          	addi	sp,sp,-64
    800084d4:	000017b7          	lui	a5,0x1
    800084d8:	02913423          	sd	s1,40(sp)
    800084dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800084e0:	009504b3          	add	s1,a0,s1
    800084e4:	fffff537          	lui	a0,0xfffff
    800084e8:	02813823          	sd	s0,48(sp)
    800084ec:	02113c23          	sd	ra,56(sp)
    800084f0:	03213023          	sd	s2,32(sp)
    800084f4:	01313c23          	sd	s3,24(sp)
    800084f8:	01413823          	sd	s4,16(sp)
    800084fc:	01513423          	sd	s5,8(sp)
    80008500:	01613023          	sd	s6,0(sp)
    80008504:	04010413          	addi	s0,sp,64
    80008508:	00a4f4b3          	and	s1,s1,a0
    8000850c:	00f487b3          	add	a5,s1,a5
    80008510:	06f5e463          	bltu	a1,a5,80008578 <freerange+0xa8>
    80008514:	00005a97          	auipc	s5,0x5
    80008518:	b3ca8a93          	addi	s5,s5,-1220 # 8000d050 <end>
    8000851c:	0954e263          	bltu	s1,s5,800085a0 <freerange+0xd0>
    80008520:	01100993          	li	s3,17
    80008524:	01b99993          	slli	s3,s3,0x1b
    80008528:	0734fc63          	bgeu	s1,s3,800085a0 <freerange+0xd0>
    8000852c:	00058a13          	mv	s4,a1
    80008530:	00004917          	auipc	s2,0x4
    80008534:	82090913          	addi	s2,s2,-2016 # 8000bd50 <kmem>
    80008538:	00002b37          	lui	s6,0x2
    8000853c:	0140006f          	j	80008550 <freerange+0x80>
    80008540:	000017b7          	lui	a5,0x1
    80008544:	00f484b3          	add	s1,s1,a5
    80008548:	0554ec63          	bltu	s1,s5,800085a0 <freerange+0xd0>
    8000854c:	0534fa63          	bgeu	s1,s3,800085a0 <freerange+0xd0>
    80008550:	00001637          	lui	a2,0x1
    80008554:	00100593          	li	a1,1
    80008558:	00048513          	mv	a0,s1
    8000855c:	00000097          	auipc	ra,0x0
    80008560:	50c080e7          	jalr	1292(ra) # 80008a68 <__memset>
    80008564:	00093703          	ld	a4,0(s2)
    80008568:	016487b3          	add	a5,s1,s6
    8000856c:	00e4b023          	sd	a4,0(s1)
    80008570:	00993023          	sd	s1,0(s2)
    80008574:	fcfa76e3          	bgeu	s4,a5,80008540 <freerange+0x70>
    80008578:	03813083          	ld	ra,56(sp)
    8000857c:	03013403          	ld	s0,48(sp)
    80008580:	02813483          	ld	s1,40(sp)
    80008584:	02013903          	ld	s2,32(sp)
    80008588:	01813983          	ld	s3,24(sp)
    8000858c:	01013a03          	ld	s4,16(sp)
    80008590:	00813a83          	ld	s5,8(sp)
    80008594:	00013b03          	ld	s6,0(sp)
    80008598:	04010113          	addi	sp,sp,64
    8000859c:	00008067          	ret
    800085a0:	00001517          	auipc	a0,0x1
    800085a4:	2b050513          	addi	a0,a0,688 # 80009850 <digits+0x18>
    800085a8:	fffff097          	auipc	ra,0xfffff
    800085ac:	3d4080e7          	jalr	980(ra) # 8000797c <panic>

00000000800085b0 <kfree>:
    800085b0:	fe010113          	addi	sp,sp,-32
    800085b4:	00813823          	sd	s0,16(sp)
    800085b8:	00113c23          	sd	ra,24(sp)
    800085bc:	00913423          	sd	s1,8(sp)
    800085c0:	02010413          	addi	s0,sp,32
    800085c4:	03451793          	slli	a5,a0,0x34
    800085c8:	04079c63          	bnez	a5,80008620 <kfree+0x70>
    800085cc:	00005797          	auipc	a5,0x5
    800085d0:	a8478793          	addi	a5,a5,-1404 # 8000d050 <end>
    800085d4:	00050493          	mv	s1,a0
    800085d8:	04f56463          	bltu	a0,a5,80008620 <kfree+0x70>
    800085dc:	01100793          	li	a5,17
    800085e0:	01b79793          	slli	a5,a5,0x1b
    800085e4:	02f57e63          	bgeu	a0,a5,80008620 <kfree+0x70>
    800085e8:	00001637          	lui	a2,0x1
    800085ec:	00100593          	li	a1,1
    800085f0:	00000097          	auipc	ra,0x0
    800085f4:	478080e7          	jalr	1144(ra) # 80008a68 <__memset>
    800085f8:	00003797          	auipc	a5,0x3
    800085fc:	75878793          	addi	a5,a5,1880 # 8000bd50 <kmem>
    80008600:	0007b703          	ld	a4,0(a5)
    80008604:	01813083          	ld	ra,24(sp)
    80008608:	01013403          	ld	s0,16(sp)
    8000860c:	00e4b023          	sd	a4,0(s1)
    80008610:	0097b023          	sd	s1,0(a5)
    80008614:	00813483          	ld	s1,8(sp)
    80008618:	02010113          	addi	sp,sp,32
    8000861c:	00008067          	ret
    80008620:	00001517          	auipc	a0,0x1
    80008624:	23050513          	addi	a0,a0,560 # 80009850 <digits+0x18>
    80008628:	fffff097          	auipc	ra,0xfffff
    8000862c:	354080e7          	jalr	852(ra) # 8000797c <panic>

0000000080008630 <kalloc>:
    80008630:	fe010113          	addi	sp,sp,-32
    80008634:	00813823          	sd	s0,16(sp)
    80008638:	00913423          	sd	s1,8(sp)
    8000863c:	00113c23          	sd	ra,24(sp)
    80008640:	02010413          	addi	s0,sp,32
    80008644:	00003797          	auipc	a5,0x3
    80008648:	70c78793          	addi	a5,a5,1804 # 8000bd50 <kmem>
    8000864c:	0007b483          	ld	s1,0(a5)
    80008650:	02048063          	beqz	s1,80008670 <kalloc+0x40>
    80008654:	0004b703          	ld	a4,0(s1)
    80008658:	00001637          	lui	a2,0x1
    8000865c:	00500593          	li	a1,5
    80008660:	00048513          	mv	a0,s1
    80008664:	00e7b023          	sd	a4,0(a5)
    80008668:	00000097          	auipc	ra,0x0
    8000866c:	400080e7          	jalr	1024(ra) # 80008a68 <__memset>
    80008670:	01813083          	ld	ra,24(sp)
    80008674:	01013403          	ld	s0,16(sp)
    80008678:	00048513          	mv	a0,s1
    8000867c:	00813483          	ld	s1,8(sp)
    80008680:	02010113          	addi	sp,sp,32
    80008684:	00008067          	ret

0000000080008688 <initlock>:
    80008688:	ff010113          	addi	sp,sp,-16
    8000868c:	00813423          	sd	s0,8(sp)
    80008690:	01010413          	addi	s0,sp,16
    80008694:	00813403          	ld	s0,8(sp)
    80008698:	00b53423          	sd	a1,8(a0)
    8000869c:	00052023          	sw	zero,0(a0)
    800086a0:	00053823          	sd	zero,16(a0)
    800086a4:	01010113          	addi	sp,sp,16
    800086a8:	00008067          	ret

00000000800086ac <acquire>:
    800086ac:	fe010113          	addi	sp,sp,-32
    800086b0:	00813823          	sd	s0,16(sp)
    800086b4:	00913423          	sd	s1,8(sp)
    800086b8:	00113c23          	sd	ra,24(sp)
    800086bc:	01213023          	sd	s2,0(sp)
    800086c0:	02010413          	addi	s0,sp,32
    800086c4:	00050493          	mv	s1,a0
    800086c8:	10002973          	csrr	s2,sstatus
    800086cc:	100027f3          	csrr	a5,sstatus
    800086d0:	ffd7f793          	andi	a5,a5,-3
    800086d4:	10079073          	csrw	sstatus,a5
    800086d8:	fffff097          	auipc	ra,0xfffff
    800086dc:	8ec080e7          	jalr	-1812(ra) # 80006fc4 <mycpu>
    800086e0:	07852783          	lw	a5,120(a0)
    800086e4:	06078e63          	beqz	a5,80008760 <acquire+0xb4>
    800086e8:	fffff097          	auipc	ra,0xfffff
    800086ec:	8dc080e7          	jalr	-1828(ra) # 80006fc4 <mycpu>
    800086f0:	07852783          	lw	a5,120(a0)
    800086f4:	0004a703          	lw	a4,0(s1)
    800086f8:	0017879b          	addiw	a5,a5,1
    800086fc:	06f52c23          	sw	a5,120(a0)
    80008700:	04071063          	bnez	a4,80008740 <acquire+0x94>
    80008704:	00100713          	li	a4,1
    80008708:	00070793          	mv	a5,a4
    8000870c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008710:	0007879b          	sext.w	a5,a5
    80008714:	fe079ae3          	bnez	a5,80008708 <acquire+0x5c>
    80008718:	0ff0000f          	fence
    8000871c:	fffff097          	auipc	ra,0xfffff
    80008720:	8a8080e7          	jalr	-1880(ra) # 80006fc4 <mycpu>
    80008724:	01813083          	ld	ra,24(sp)
    80008728:	01013403          	ld	s0,16(sp)
    8000872c:	00a4b823          	sd	a0,16(s1)
    80008730:	00013903          	ld	s2,0(sp)
    80008734:	00813483          	ld	s1,8(sp)
    80008738:	02010113          	addi	sp,sp,32
    8000873c:	00008067          	ret
    80008740:	0104b903          	ld	s2,16(s1)
    80008744:	fffff097          	auipc	ra,0xfffff
    80008748:	880080e7          	jalr	-1920(ra) # 80006fc4 <mycpu>
    8000874c:	faa91ce3          	bne	s2,a0,80008704 <acquire+0x58>
    80008750:	00001517          	auipc	a0,0x1
    80008754:	10850513          	addi	a0,a0,264 # 80009858 <digits+0x20>
    80008758:	fffff097          	auipc	ra,0xfffff
    8000875c:	224080e7          	jalr	548(ra) # 8000797c <panic>
    80008760:	00195913          	srli	s2,s2,0x1
    80008764:	fffff097          	auipc	ra,0xfffff
    80008768:	860080e7          	jalr	-1952(ra) # 80006fc4 <mycpu>
    8000876c:	00197913          	andi	s2,s2,1
    80008770:	07252e23          	sw	s2,124(a0)
    80008774:	f75ff06f          	j	800086e8 <acquire+0x3c>

0000000080008778 <release>:
    80008778:	fe010113          	addi	sp,sp,-32
    8000877c:	00813823          	sd	s0,16(sp)
    80008780:	00113c23          	sd	ra,24(sp)
    80008784:	00913423          	sd	s1,8(sp)
    80008788:	01213023          	sd	s2,0(sp)
    8000878c:	02010413          	addi	s0,sp,32
    80008790:	00052783          	lw	a5,0(a0)
    80008794:	00079a63          	bnez	a5,800087a8 <release+0x30>
    80008798:	00001517          	auipc	a0,0x1
    8000879c:	0c850513          	addi	a0,a0,200 # 80009860 <digits+0x28>
    800087a0:	fffff097          	auipc	ra,0xfffff
    800087a4:	1dc080e7          	jalr	476(ra) # 8000797c <panic>
    800087a8:	01053903          	ld	s2,16(a0)
    800087ac:	00050493          	mv	s1,a0
    800087b0:	fffff097          	auipc	ra,0xfffff
    800087b4:	814080e7          	jalr	-2028(ra) # 80006fc4 <mycpu>
    800087b8:	fea910e3          	bne	s2,a0,80008798 <release+0x20>
    800087bc:	0004b823          	sd	zero,16(s1)
    800087c0:	0ff0000f          	fence
    800087c4:	0f50000f          	fence	iorw,ow
    800087c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800087cc:	ffffe097          	auipc	ra,0xffffe
    800087d0:	7f8080e7          	jalr	2040(ra) # 80006fc4 <mycpu>
    800087d4:	100027f3          	csrr	a5,sstatus
    800087d8:	0027f793          	andi	a5,a5,2
    800087dc:	04079a63          	bnez	a5,80008830 <release+0xb8>
    800087e0:	07852783          	lw	a5,120(a0)
    800087e4:	02f05e63          	blez	a5,80008820 <release+0xa8>
    800087e8:	fff7871b          	addiw	a4,a5,-1
    800087ec:	06e52c23          	sw	a4,120(a0)
    800087f0:	00071c63          	bnez	a4,80008808 <release+0x90>
    800087f4:	07c52783          	lw	a5,124(a0)
    800087f8:	00078863          	beqz	a5,80008808 <release+0x90>
    800087fc:	100027f3          	csrr	a5,sstatus
    80008800:	0027e793          	ori	a5,a5,2
    80008804:	10079073          	csrw	sstatus,a5
    80008808:	01813083          	ld	ra,24(sp)
    8000880c:	01013403          	ld	s0,16(sp)
    80008810:	00813483          	ld	s1,8(sp)
    80008814:	00013903          	ld	s2,0(sp)
    80008818:	02010113          	addi	sp,sp,32
    8000881c:	00008067          	ret
    80008820:	00001517          	auipc	a0,0x1
    80008824:	06050513          	addi	a0,a0,96 # 80009880 <digits+0x48>
    80008828:	fffff097          	auipc	ra,0xfffff
    8000882c:	154080e7          	jalr	340(ra) # 8000797c <panic>
    80008830:	00001517          	auipc	a0,0x1
    80008834:	03850513          	addi	a0,a0,56 # 80009868 <digits+0x30>
    80008838:	fffff097          	auipc	ra,0xfffff
    8000883c:	144080e7          	jalr	324(ra) # 8000797c <panic>

0000000080008840 <holding>:
    80008840:	00052783          	lw	a5,0(a0)
    80008844:	00079663          	bnez	a5,80008850 <holding+0x10>
    80008848:	00000513          	li	a0,0
    8000884c:	00008067          	ret
    80008850:	fe010113          	addi	sp,sp,-32
    80008854:	00813823          	sd	s0,16(sp)
    80008858:	00913423          	sd	s1,8(sp)
    8000885c:	00113c23          	sd	ra,24(sp)
    80008860:	02010413          	addi	s0,sp,32
    80008864:	01053483          	ld	s1,16(a0)
    80008868:	ffffe097          	auipc	ra,0xffffe
    8000886c:	75c080e7          	jalr	1884(ra) # 80006fc4 <mycpu>
    80008870:	01813083          	ld	ra,24(sp)
    80008874:	01013403          	ld	s0,16(sp)
    80008878:	40a48533          	sub	a0,s1,a0
    8000887c:	00153513          	seqz	a0,a0
    80008880:	00813483          	ld	s1,8(sp)
    80008884:	02010113          	addi	sp,sp,32
    80008888:	00008067          	ret

000000008000888c <push_off>:
    8000888c:	fe010113          	addi	sp,sp,-32
    80008890:	00813823          	sd	s0,16(sp)
    80008894:	00113c23          	sd	ra,24(sp)
    80008898:	00913423          	sd	s1,8(sp)
    8000889c:	02010413          	addi	s0,sp,32
    800088a0:	100024f3          	csrr	s1,sstatus
    800088a4:	100027f3          	csrr	a5,sstatus
    800088a8:	ffd7f793          	andi	a5,a5,-3
    800088ac:	10079073          	csrw	sstatus,a5
    800088b0:	ffffe097          	auipc	ra,0xffffe
    800088b4:	714080e7          	jalr	1812(ra) # 80006fc4 <mycpu>
    800088b8:	07852783          	lw	a5,120(a0)
    800088bc:	02078663          	beqz	a5,800088e8 <push_off+0x5c>
    800088c0:	ffffe097          	auipc	ra,0xffffe
    800088c4:	704080e7          	jalr	1796(ra) # 80006fc4 <mycpu>
    800088c8:	07852783          	lw	a5,120(a0)
    800088cc:	01813083          	ld	ra,24(sp)
    800088d0:	01013403          	ld	s0,16(sp)
    800088d4:	0017879b          	addiw	a5,a5,1
    800088d8:	06f52c23          	sw	a5,120(a0)
    800088dc:	00813483          	ld	s1,8(sp)
    800088e0:	02010113          	addi	sp,sp,32
    800088e4:	00008067          	ret
    800088e8:	0014d493          	srli	s1,s1,0x1
    800088ec:	ffffe097          	auipc	ra,0xffffe
    800088f0:	6d8080e7          	jalr	1752(ra) # 80006fc4 <mycpu>
    800088f4:	0014f493          	andi	s1,s1,1
    800088f8:	06952e23          	sw	s1,124(a0)
    800088fc:	fc5ff06f          	j	800088c0 <push_off+0x34>

0000000080008900 <pop_off>:
    80008900:	ff010113          	addi	sp,sp,-16
    80008904:	00813023          	sd	s0,0(sp)
    80008908:	00113423          	sd	ra,8(sp)
    8000890c:	01010413          	addi	s0,sp,16
    80008910:	ffffe097          	auipc	ra,0xffffe
    80008914:	6b4080e7          	jalr	1716(ra) # 80006fc4 <mycpu>
    80008918:	100027f3          	csrr	a5,sstatus
    8000891c:	0027f793          	andi	a5,a5,2
    80008920:	04079663          	bnez	a5,8000896c <pop_off+0x6c>
    80008924:	07852783          	lw	a5,120(a0)
    80008928:	02f05a63          	blez	a5,8000895c <pop_off+0x5c>
    8000892c:	fff7871b          	addiw	a4,a5,-1
    80008930:	06e52c23          	sw	a4,120(a0)
    80008934:	00071c63          	bnez	a4,8000894c <pop_off+0x4c>
    80008938:	07c52783          	lw	a5,124(a0)
    8000893c:	00078863          	beqz	a5,8000894c <pop_off+0x4c>
    80008940:	100027f3          	csrr	a5,sstatus
    80008944:	0027e793          	ori	a5,a5,2
    80008948:	10079073          	csrw	sstatus,a5
    8000894c:	00813083          	ld	ra,8(sp)
    80008950:	00013403          	ld	s0,0(sp)
    80008954:	01010113          	addi	sp,sp,16
    80008958:	00008067          	ret
    8000895c:	00001517          	auipc	a0,0x1
    80008960:	f2450513          	addi	a0,a0,-220 # 80009880 <digits+0x48>
    80008964:	fffff097          	auipc	ra,0xfffff
    80008968:	018080e7          	jalr	24(ra) # 8000797c <panic>
    8000896c:	00001517          	auipc	a0,0x1
    80008970:	efc50513          	addi	a0,a0,-260 # 80009868 <digits+0x30>
    80008974:	fffff097          	auipc	ra,0xfffff
    80008978:	008080e7          	jalr	8(ra) # 8000797c <panic>

000000008000897c <push_on>:
    8000897c:	fe010113          	addi	sp,sp,-32
    80008980:	00813823          	sd	s0,16(sp)
    80008984:	00113c23          	sd	ra,24(sp)
    80008988:	00913423          	sd	s1,8(sp)
    8000898c:	02010413          	addi	s0,sp,32
    80008990:	100024f3          	csrr	s1,sstatus
    80008994:	100027f3          	csrr	a5,sstatus
    80008998:	0027e793          	ori	a5,a5,2
    8000899c:	10079073          	csrw	sstatus,a5
    800089a0:	ffffe097          	auipc	ra,0xffffe
    800089a4:	624080e7          	jalr	1572(ra) # 80006fc4 <mycpu>
    800089a8:	07852783          	lw	a5,120(a0)
    800089ac:	02078663          	beqz	a5,800089d8 <push_on+0x5c>
    800089b0:	ffffe097          	auipc	ra,0xffffe
    800089b4:	614080e7          	jalr	1556(ra) # 80006fc4 <mycpu>
    800089b8:	07852783          	lw	a5,120(a0)
    800089bc:	01813083          	ld	ra,24(sp)
    800089c0:	01013403          	ld	s0,16(sp)
    800089c4:	0017879b          	addiw	a5,a5,1
    800089c8:	06f52c23          	sw	a5,120(a0)
    800089cc:	00813483          	ld	s1,8(sp)
    800089d0:	02010113          	addi	sp,sp,32
    800089d4:	00008067          	ret
    800089d8:	0014d493          	srli	s1,s1,0x1
    800089dc:	ffffe097          	auipc	ra,0xffffe
    800089e0:	5e8080e7          	jalr	1512(ra) # 80006fc4 <mycpu>
    800089e4:	0014f493          	andi	s1,s1,1
    800089e8:	06952e23          	sw	s1,124(a0)
    800089ec:	fc5ff06f          	j	800089b0 <push_on+0x34>

00000000800089f0 <pop_on>:
    800089f0:	ff010113          	addi	sp,sp,-16
    800089f4:	00813023          	sd	s0,0(sp)
    800089f8:	00113423          	sd	ra,8(sp)
    800089fc:	01010413          	addi	s0,sp,16
    80008a00:	ffffe097          	auipc	ra,0xffffe
    80008a04:	5c4080e7          	jalr	1476(ra) # 80006fc4 <mycpu>
    80008a08:	100027f3          	csrr	a5,sstatus
    80008a0c:	0027f793          	andi	a5,a5,2
    80008a10:	04078463          	beqz	a5,80008a58 <pop_on+0x68>
    80008a14:	07852783          	lw	a5,120(a0)
    80008a18:	02f05863          	blez	a5,80008a48 <pop_on+0x58>
    80008a1c:	fff7879b          	addiw	a5,a5,-1
    80008a20:	06f52c23          	sw	a5,120(a0)
    80008a24:	07853783          	ld	a5,120(a0)
    80008a28:	00079863          	bnez	a5,80008a38 <pop_on+0x48>
    80008a2c:	100027f3          	csrr	a5,sstatus
    80008a30:	ffd7f793          	andi	a5,a5,-3
    80008a34:	10079073          	csrw	sstatus,a5
    80008a38:	00813083          	ld	ra,8(sp)
    80008a3c:	00013403          	ld	s0,0(sp)
    80008a40:	01010113          	addi	sp,sp,16
    80008a44:	00008067          	ret
    80008a48:	00001517          	auipc	a0,0x1
    80008a4c:	e6050513          	addi	a0,a0,-416 # 800098a8 <digits+0x70>
    80008a50:	fffff097          	auipc	ra,0xfffff
    80008a54:	f2c080e7          	jalr	-212(ra) # 8000797c <panic>
    80008a58:	00001517          	auipc	a0,0x1
    80008a5c:	e3050513          	addi	a0,a0,-464 # 80009888 <digits+0x50>
    80008a60:	fffff097          	auipc	ra,0xfffff
    80008a64:	f1c080e7          	jalr	-228(ra) # 8000797c <panic>

0000000080008a68 <__memset>:
    80008a68:	ff010113          	addi	sp,sp,-16
    80008a6c:	00813423          	sd	s0,8(sp)
    80008a70:	01010413          	addi	s0,sp,16
    80008a74:	1a060e63          	beqz	a2,80008c30 <__memset+0x1c8>
    80008a78:	40a007b3          	neg	a5,a0
    80008a7c:	0077f793          	andi	a5,a5,7
    80008a80:	00778693          	addi	a3,a5,7
    80008a84:	00b00813          	li	a6,11
    80008a88:	0ff5f593          	andi	a1,a1,255
    80008a8c:	fff6071b          	addiw	a4,a2,-1
    80008a90:	1b06e663          	bltu	a3,a6,80008c3c <__memset+0x1d4>
    80008a94:	1cd76463          	bltu	a4,a3,80008c5c <__memset+0x1f4>
    80008a98:	1a078e63          	beqz	a5,80008c54 <__memset+0x1ec>
    80008a9c:	00b50023          	sb	a1,0(a0)
    80008aa0:	00100713          	li	a4,1
    80008aa4:	1ae78463          	beq	a5,a4,80008c4c <__memset+0x1e4>
    80008aa8:	00b500a3          	sb	a1,1(a0)
    80008aac:	00200713          	li	a4,2
    80008ab0:	1ae78a63          	beq	a5,a4,80008c64 <__memset+0x1fc>
    80008ab4:	00b50123          	sb	a1,2(a0)
    80008ab8:	00300713          	li	a4,3
    80008abc:	18e78463          	beq	a5,a4,80008c44 <__memset+0x1dc>
    80008ac0:	00b501a3          	sb	a1,3(a0)
    80008ac4:	00400713          	li	a4,4
    80008ac8:	1ae78263          	beq	a5,a4,80008c6c <__memset+0x204>
    80008acc:	00b50223          	sb	a1,4(a0)
    80008ad0:	00500713          	li	a4,5
    80008ad4:	1ae78063          	beq	a5,a4,80008c74 <__memset+0x20c>
    80008ad8:	00b502a3          	sb	a1,5(a0)
    80008adc:	00700713          	li	a4,7
    80008ae0:	18e79e63          	bne	a5,a4,80008c7c <__memset+0x214>
    80008ae4:	00b50323          	sb	a1,6(a0)
    80008ae8:	00700e93          	li	t4,7
    80008aec:	00859713          	slli	a4,a1,0x8
    80008af0:	00e5e733          	or	a4,a1,a4
    80008af4:	01059e13          	slli	t3,a1,0x10
    80008af8:	01c76e33          	or	t3,a4,t3
    80008afc:	01859313          	slli	t1,a1,0x18
    80008b00:	006e6333          	or	t1,t3,t1
    80008b04:	02059893          	slli	a7,a1,0x20
    80008b08:	40f60e3b          	subw	t3,a2,a5
    80008b0c:	011368b3          	or	a7,t1,a7
    80008b10:	02859813          	slli	a6,a1,0x28
    80008b14:	0108e833          	or	a6,a7,a6
    80008b18:	03059693          	slli	a3,a1,0x30
    80008b1c:	003e589b          	srliw	a7,t3,0x3
    80008b20:	00d866b3          	or	a3,a6,a3
    80008b24:	03859713          	slli	a4,a1,0x38
    80008b28:	00389813          	slli	a6,a7,0x3
    80008b2c:	00f507b3          	add	a5,a0,a5
    80008b30:	00e6e733          	or	a4,a3,a4
    80008b34:	000e089b          	sext.w	a7,t3
    80008b38:	00f806b3          	add	a3,a6,a5
    80008b3c:	00e7b023          	sd	a4,0(a5)
    80008b40:	00878793          	addi	a5,a5,8
    80008b44:	fed79ce3          	bne	a5,a3,80008b3c <__memset+0xd4>
    80008b48:	ff8e7793          	andi	a5,t3,-8
    80008b4c:	0007871b          	sext.w	a4,a5
    80008b50:	01d787bb          	addw	a5,a5,t4
    80008b54:	0ce88e63          	beq	a7,a4,80008c30 <__memset+0x1c8>
    80008b58:	00f50733          	add	a4,a0,a5
    80008b5c:	00b70023          	sb	a1,0(a4)
    80008b60:	0017871b          	addiw	a4,a5,1
    80008b64:	0cc77663          	bgeu	a4,a2,80008c30 <__memset+0x1c8>
    80008b68:	00e50733          	add	a4,a0,a4
    80008b6c:	00b70023          	sb	a1,0(a4)
    80008b70:	0027871b          	addiw	a4,a5,2
    80008b74:	0ac77e63          	bgeu	a4,a2,80008c30 <__memset+0x1c8>
    80008b78:	00e50733          	add	a4,a0,a4
    80008b7c:	00b70023          	sb	a1,0(a4)
    80008b80:	0037871b          	addiw	a4,a5,3
    80008b84:	0ac77663          	bgeu	a4,a2,80008c30 <__memset+0x1c8>
    80008b88:	00e50733          	add	a4,a0,a4
    80008b8c:	00b70023          	sb	a1,0(a4)
    80008b90:	0047871b          	addiw	a4,a5,4
    80008b94:	08c77e63          	bgeu	a4,a2,80008c30 <__memset+0x1c8>
    80008b98:	00e50733          	add	a4,a0,a4
    80008b9c:	00b70023          	sb	a1,0(a4)
    80008ba0:	0057871b          	addiw	a4,a5,5
    80008ba4:	08c77663          	bgeu	a4,a2,80008c30 <__memset+0x1c8>
    80008ba8:	00e50733          	add	a4,a0,a4
    80008bac:	00b70023          	sb	a1,0(a4)
    80008bb0:	0067871b          	addiw	a4,a5,6
    80008bb4:	06c77e63          	bgeu	a4,a2,80008c30 <__memset+0x1c8>
    80008bb8:	00e50733          	add	a4,a0,a4
    80008bbc:	00b70023          	sb	a1,0(a4)
    80008bc0:	0077871b          	addiw	a4,a5,7
    80008bc4:	06c77663          	bgeu	a4,a2,80008c30 <__memset+0x1c8>
    80008bc8:	00e50733          	add	a4,a0,a4
    80008bcc:	00b70023          	sb	a1,0(a4)
    80008bd0:	0087871b          	addiw	a4,a5,8
    80008bd4:	04c77e63          	bgeu	a4,a2,80008c30 <__memset+0x1c8>
    80008bd8:	00e50733          	add	a4,a0,a4
    80008bdc:	00b70023          	sb	a1,0(a4)
    80008be0:	0097871b          	addiw	a4,a5,9
    80008be4:	04c77663          	bgeu	a4,a2,80008c30 <__memset+0x1c8>
    80008be8:	00e50733          	add	a4,a0,a4
    80008bec:	00b70023          	sb	a1,0(a4)
    80008bf0:	00a7871b          	addiw	a4,a5,10
    80008bf4:	02c77e63          	bgeu	a4,a2,80008c30 <__memset+0x1c8>
    80008bf8:	00e50733          	add	a4,a0,a4
    80008bfc:	00b70023          	sb	a1,0(a4)
    80008c00:	00b7871b          	addiw	a4,a5,11
    80008c04:	02c77663          	bgeu	a4,a2,80008c30 <__memset+0x1c8>
    80008c08:	00e50733          	add	a4,a0,a4
    80008c0c:	00b70023          	sb	a1,0(a4)
    80008c10:	00c7871b          	addiw	a4,a5,12
    80008c14:	00c77e63          	bgeu	a4,a2,80008c30 <__memset+0x1c8>
    80008c18:	00e50733          	add	a4,a0,a4
    80008c1c:	00b70023          	sb	a1,0(a4)
    80008c20:	00d7879b          	addiw	a5,a5,13
    80008c24:	00c7f663          	bgeu	a5,a2,80008c30 <__memset+0x1c8>
    80008c28:	00f507b3          	add	a5,a0,a5
    80008c2c:	00b78023          	sb	a1,0(a5)
    80008c30:	00813403          	ld	s0,8(sp)
    80008c34:	01010113          	addi	sp,sp,16
    80008c38:	00008067          	ret
    80008c3c:	00b00693          	li	a3,11
    80008c40:	e55ff06f          	j	80008a94 <__memset+0x2c>
    80008c44:	00300e93          	li	t4,3
    80008c48:	ea5ff06f          	j	80008aec <__memset+0x84>
    80008c4c:	00100e93          	li	t4,1
    80008c50:	e9dff06f          	j	80008aec <__memset+0x84>
    80008c54:	00000e93          	li	t4,0
    80008c58:	e95ff06f          	j	80008aec <__memset+0x84>
    80008c5c:	00000793          	li	a5,0
    80008c60:	ef9ff06f          	j	80008b58 <__memset+0xf0>
    80008c64:	00200e93          	li	t4,2
    80008c68:	e85ff06f          	j	80008aec <__memset+0x84>
    80008c6c:	00400e93          	li	t4,4
    80008c70:	e7dff06f          	j	80008aec <__memset+0x84>
    80008c74:	00500e93          	li	t4,5
    80008c78:	e75ff06f          	j	80008aec <__memset+0x84>
    80008c7c:	00600e93          	li	t4,6
    80008c80:	e6dff06f          	j	80008aec <__memset+0x84>

0000000080008c84 <__memmove>:
    80008c84:	ff010113          	addi	sp,sp,-16
    80008c88:	00813423          	sd	s0,8(sp)
    80008c8c:	01010413          	addi	s0,sp,16
    80008c90:	0e060863          	beqz	a2,80008d80 <__memmove+0xfc>
    80008c94:	fff6069b          	addiw	a3,a2,-1
    80008c98:	0006881b          	sext.w	a6,a3
    80008c9c:	0ea5e863          	bltu	a1,a0,80008d8c <__memmove+0x108>
    80008ca0:	00758713          	addi	a4,a1,7
    80008ca4:	00a5e7b3          	or	a5,a1,a0
    80008ca8:	40a70733          	sub	a4,a4,a0
    80008cac:	0077f793          	andi	a5,a5,7
    80008cb0:	00f73713          	sltiu	a4,a4,15
    80008cb4:	00174713          	xori	a4,a4,1
    80008cb8:	0017b793          	seqz	a5,a5
    80008cbc:	00e7f7b3          	and	a5,a5,a4
    80008cc0:	10078863          	beqz	a5,80008dd0 <__memmove+0x14c>
    80008cc4:	00900793          	li	a5,9
    80008cc8:	1107f463          	bgeu	a5,a6,80008dd0 <__memmove+0x14c>
    80008ccc:	0036581b          	srliw	a6,a2,0x3
    80008cd0:	fff8081b          	addiw	a6,a6,-1
    80008cd4:	02081813          	slli	a6,a6,0x20
    80008cd8:	01d85893          	srli	a7,a6,0x1d
    80008cdc:	00858813          	addi	a6,a1,8
    80008ce0:	00058793          	mv	a5,a1
    80008ce4:	00050713          	mv	a4,a0
    80008ce8:	01088833          	add	a6,a7,a6
    80008cec:	0007b883          	ld	a7,0(a5)
    80008cf0:	00878793          	addi	a5,a5,8
    80008cf4:	00870713          	addi	a4,a4,8
    80008cf8:	ff173c23          	sd	a7,-8(a4)
    80008cfc:	ff0798e3          	bne	a5,a6,80008cec <__memmove+0x68>
    80008d00:	ff867713          	andi	a4,a2,-8
    80008d04:	02071793          	slli	a5,a4,0x20
    80008d08:	0207d793          	srli	a5,a5,0x20
    80008d0c:	00f585b3          	add	a1,a1,a5
    80008d10:	40e686bb          	subw	a3,a3,a4
    80008d14:	00f507b3          	add	a5,a0,a5
    80008d18:	06e60463          	beq	a2,a4,80008d80 <__memmove+0xfc>
    80008d1c:	0005c703          	lbu	a4,0(a1)
    80008d20:	00e78023          	sb	a4,0(a5)
    80008d24:	04068e63          	beqz	a3,80008d80 <__memmove+0xfc>
    80008d28:	0015c603          	lbu	a2,1(a1)
    80008d2c:	00100713          	li	a4,1
    80008d30:	00c780a3          	sb	a2,1(a5)
    80008d34:	04e68663          	beq	a3,a4,80008d80 <__memmove+0xfc>
    80008d38:	0025c603          	lbu	a2,2(a1)
    80008d3c:	00200713          	li	a4,2
    80008d40:	00c78123          	sb	a2,2(a5)
    80008d44:	02e68e63          	beq	a3,a4,80008d80 <__memmove+0xfc>
    80008d48:	0035c603          	lbu	a2,3(a1)
    80008d4c:	00300713          	li	a4,3
    80008d50:	00c781a3          	sb	a2,3(a5)
    80008d54:	02e68663          	beq	a3,a4,80008d80 <__memmove+0xfc>
    80008d58:	0045c603          	lbu	a2,4(a1)
    80008d5c:	00400713          	li	a4,4
    80008d60:	00c78223          	sb	a2,4(a5)
    80008d64:	00e68e63          	beq	a3,a4,80008d80 <__memmove+0xfc>
    80008d68:	0055c603          	lbu	a2,5(a1)
    80008d6c:	00500713          	li	a4,5
    80008d70:	00c782a3          	sb	a2,5(a5)
    80008d74:	00e68663          	beq	a3,a4,80008d80 <__memmove+0xfc>
    80008d78:	0065c703          	lbu	a4,6(a1)
    80008d7c:	00e78323          	sb	a4,6(a5)
    80008d80:	00813403          	ld	s0,8(sp)
    80008d84:	01010113          	addi	sp,sp,16
    80008d88:	00008067          	ret
    80008d8c:	02061713          	slli	a4,a2,0x20
    80008d90:	02075713          	srli	a4,a4,0x20
    80008d94:	00e587b3          	add	a5,a1,a4
    80008d98:	f0f574e3          	bgeu	a0,a5,80008ca0 <__memmove+0x1c>
    80008d9c:	02069613          	slli	a2,a3,0x20
    80008da0:	02065613          	srli	a2,a2,0x20
    80008da4:	fff64613          	not	a2,a2
    80008da8:	00e50733          	add	a4,a0,a4
    80008dac:	00c78633          	add	a2,a5,a2
    80008db0:	fff7c683          	lbu	a3,-1(a5)
    80008db4:	fff78793          	addi	a5,a5,-1
    80008db8:	fff70713          	addi	a4,a4,-1
    80008dbc:	00d70023          	sb	a3,0(a4)
    80008dc0:	fec798e3          	bne	a5,a2,80008db0 <__memmove+0x12c>
    80008dc4:	00813403          	ld	s0,8(sp)
    80008dc8:	01010113          	addi	sp,sp,16
    80008dcc:	00008067          	ret
    80008dd0:	02069713          	slli	a4,a3,0x20
    80008dd4:	02075713          	srli	a4,a4,0x20
    80008dd8:	00170713          	addi	a4,a4,1
    80008ddc:	00e50733          	add	a4,a0,a4
    80008de0:	00050793          	mv	a5,a0
    80008de4:	0005c683          	lbu	a3,0(a1)
    80008de8:	00178793          	addi	a5,a5,1
    80008dec:	00158593          	addi	a1,a1,1
    80008df0:	fed78fa3          	sb	a3,-1(a5)
    80008df4:	fee798e3          	bne	a5,a4,80008de4 <__memmove+0x160>
    80008df8:	f89ff06f          	j	80008d80 <__memmove+0xfc>

0000000080008dfc <__putc>:
    80008dfc:	fe010113          	addi	sp,sp,-32
    80008e00:	00813823          	sd	s0,16(sp)
    80008e04:	00113c23          	sd	ra,24(sp)
    80008e08:	02010413          	addi	s0,sp,32
    80008e0c:	00050793          	mv	a5,a0
    80008e10:	fef40593          	addi	a1,s0,-17
    80008e14:	00100613          	li	a2,1
    80008e18:	00000513          	li	a0,0
    80008e1c:	fef407a3          	sb	a5,-17(s0)
    80008e20:	fffff097          	auipc	ra,0xfffff
    80008e24:	b3c080e7          	jalr	-1220(ra) # 8000795c <console_write>
    80008e28:	01813083          	ld	ra,24(sp)
    80008e2c:	01013403          	ld	s0,16(sp)
    80008e30:	02010113          	addi	sp,sp,32
    80008e34:	00008067          	ret

0000000080008e38 <__getc>:
    80008e38:	fe010113          	addi	sp,sp,-32
    80008e3c:	00813823          	sd	s0,16(sp)
    80008e40:	00113c23          	sd	ra,24(sp)
    80008e44:	02010413          	addi	s0,sp,32
    80008e48:	fe840593          	addi	a1,s0,-24
    80008e4c:	00100613          	li	a2,1
    80008e50:	00000513          	li	a0,0
    80008e54:	fffff097          	auipc	ra,0xfffff
    80008e58:	ae8080e7          	jalr	-1304(ra) # 8000793c <console_read>
    80008e5c:	fe844503          	lbu	a0,-24(s0)
    80008e60:	01813083          	ld	ra,24(sp)
    80008e64:	01013403          	ld	s0,16(sp)
    80008e68:	02010113          	addi	sp,sp,32
    80008e6c:	00008067          	ret

0000000080008e70 <console_handler>:
    80008e70:	fe010113          	addi	sp,sp,-32
    80008e74:	00813823          	sd	s0,16(sp)
    80008e78:	00113c23          	sd	ra,24(sp)
    80008e7c:	00913423          	sd	s1,8(sp)
    80008e80:	02010413          	addi	s0,sp,32
    80008e84:	14202773          	csrr	a4,scause
    80008e88:	100027f3          	csrr	a5,sstatus
    80008e8c:	0027f793          	andi	a5,a5,2
    80008e90:	06079e63          	bnez	a5,80008f0c <console_handler+0x9c>
    80008e94:	00074c63          	bltz	a4,80008eac <console_handler+0x3c>
    80008e98:	01813083          	ld	ra,24(sp)
    80008e9c:	01013403          	ld	s0,16(sp)
    80008ea0:	00813483          	ld	s1,8(sp)
    80008ea4:	02010113          	addi	sp,sp,32
    80008ea8:	00008067          	ret
    80008eac:	0ff77713          	andi	a4,a4,255
    80008eb0:	00900793          	li	a5,9
    80008eb4:	fef712e3          	bne	a4,a5,80008e98 <console_handler+0x28>
    80008eb8:	ffffe097          	auipc	ra,0xffffe
    80008ebc:	6dc080e7          	jalr	1756(ra) # 80007594 <plic_claim>
    80008ec0:	00a00793          	li	a5,10
    80008ec4:	00050493          	mv	s1,a0
    80008ec8:	02f50c63          	beq	a0,a5,80008f00 <console_handler+0x90>
    80008ecc:	fc0506e3          	beqz	a0,80008e98 <console_handler+0x28>
    80008ed0:	00050593          	mv	a1,a0
    80008ed4:	00001517          	auipc	a0,0x1
    80008ed8:	8dc50513          	addi	a0,a0,-1828 # 800097b0 <CONSOLE_STATUS+0x7a0>
    80008edc:	fffff097          	auipc	ra,0xfffff
    80008ee0:	afc080e7          	jalr	-1284(ra) # 800079d8 <__printf>
    80008ee4:	01013403          	ld	s0,16(sp)
    80008ee8:	01813083          	ld	ra,24(sp)
    80008eec:	00048513          	mv	a0,s1
    80008ef0:	00813483          	ld	s1,8(sp)
    80008ef4:	02010113          	addi	sp,sp,32
    80008ef8:	ffffe317          	auipc	t1,0xffffe
    80008efc:	6d430067          	jr	1748(t1) # 800075cc <plic_complete>
    80008f00:	fffff097          	auipc	ra,0xfffff
    80008f04:	3e0080e7          	jalr	992(ra) # 800082e0 <uartintr>
    80008f08:	fddff06f          	j	80008ee4 <console_handler+0x74>
    80008f0c:	00001517          	auipc	a0,0x1
    80008f10:	9a450513          	addi	a0,a0,-1628 # 800098b0 <digits+0x78>
    80008f14:	fffff097          	auipc	ra,0xfffff
    80008f18:	a68080e7          	jalr	-1432(ra) # 8000797c <panic>
	...
