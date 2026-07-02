
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	c9013103          	ld	sp,-880(sp) # 8000bc90 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	299060ef          	jal	ra,80006ab4 <start>

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

0000000080001388 <_Z15thread_dispatchv>:
void thread_dispatch() {
    80001388:	ff010113          	addi	sp,sp,-16
    8000138c:	00113423          	sd	ra,8(sp)
    80001390:	00813023          	sd	s0,0(sp)
    80001394:	01010413          	addi	s0,sp,16
    doSyscall(0x13);
    80001398:	00000713          	li	a4,0
    8000139c:	00000693          	li	a3,0
    800013a0:	00000613          	li	a2,0
    800013a4:	00000593          	li	a1,0
    800013a8:	01300513          	li	a0,19
    800013ac:	00000097          	auipc	ra,0x0
    800013b0:	e18080e7          	jalr	-488(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800013b4:	00813083          	ld	ra,8(sp)
    800013b8:	00013403          	ld	s0,0(sp)
    800013bc:	01010113          	addi	sp,sp,16
    800013c0:	00008067          	ret

00000000800013c4 <_Z8sem_openPP4_semj>:
int sem_open(sem_t* handle, unsigned init) {
    800013c4:	ff010113          	addi	sp,sp,-16
    800013c8:	00113423          	sd	ra,8(sp)
    800013cc:	00813023          	sd	s0,0(sp)
    800013d0:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x21, (uint64)handle, (uint64)init);
    800013d4:	00000713          	li	a4,0
    800013d8:	00000693          	li	a3,0
    800013dc:	02059613          	slli	a2,a1,0x20
    800013e0:	02065613          	srli	a2,a2,0x20
    800013e4:	00050593          	mv	a1,a0
    800013e8:	02100513          	li	a0,33
    800013ec:	00000097          	auipc	ra,0x0
    800013f0:	dd8080e7          	jalr	-552(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800013f4:	0005051b          	sext.w	a0,a0
    800013f8:	00813083          	ld	ra,8(sp)
    800013fc:	00013403          	ld	s0,0(sp)
    80001400:	01010113          	addi	sp,sp,16
    80001404:	00008067          	ret

0000000080001408 <_Z11getThreadIdv>:

int getThreadId() {
    80001408:	ff010113          	addi	sp,sp,-16
    8000140c:	00113423          	sd	ra,8(sp)
    80001410:	00813023          	sd	s0,0(sp)
    80001414:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x14);
    80001418:	00000713          	li	a4,0
    8000141c:	00000693          	li	a3,0
    80001420:	00000613          	li	a2,0
    80001424:	00000593          	li	a1,0
    80001428:	01400513          	li	a0,20
    8000142c:	00000097          	auipc	ra,0x0
    80001430:	d98080e7          	jalr	-616(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001434:	0005051b          	sext.w	a0,a0
    80001438:	00813083          	ld	ra,8(sp)
    8000143c:	00013403          	ld	s0,0(sp)
    80001440:	01010113          	addi	sp,sp,16
    80001444:	00008067          	ret

0000000080001448 <_Z17setMaximumThreadsi>:
void setMaximumThreads(int num) {
    80001448:	ff010113          	addi	sp,sp,-16
    8000144c:	00113423          	sd	ra,8(sp)
    80001450:	00813023          	sd	s0,0(sp)
    80001454:	01010413          	addi	s0,sp,16
    80001458:	00050593          	mv	a1,a0
    doSyscall(0x15, (uint64)num);
    8000145c:	00000713          	li	a4,0
    80001460:	00000693          	li	a3,0
    80001464:	00000613          	li	a2,0
    80001468:	01500513          	li	a0,21
    8000146c:	00000097          	auipc	ra,0x0
    80001470:	d58080e7          	jalr	-680(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
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
    800016c8:	620080e7          	jalr	1568(ra) # 80002ce4 <_ZN15MemoryAllocator11getInstanceEv>
    800016cc:	00050493          	mv	s1,a0
    800016d0:	00090513          	mv	a0,s2
    800016d4:	00000097          	auipc	ra,0x0
    800016d8:	fb4080e7          	jalr	-76(ra) # 80001688 <_ZL23blocksForBytesSemaphorem>
    800016dc:	00050593          	mv	a1,a0
    800016e0:	00048513          	mv	a0,s1
    800016e4:	00001097          	auipc	ra,0x1
    800016e8:	680080e7          	jalr	1664(ra) # 80002d64 <_ZN15MemoryAllocator6mallocEm>
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
    80001724:	5c4080e7          	jalr	1476(ra) # 80002ce4 <_ZN15MemoryAllocator11getInstanceEv>
    80001728:	00048593          	mv	a1,s1
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	794080e7          	jalr	1940(ra) # 80002ec0 <_ZN15MemoryAllocator4freeEPv>
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
    80001844:	4407b783          	ld	a5,1088(a5) # 8000bc80 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001898:	3ec7b783          	ld	a5,1004(a5) # 8000bc80 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000189c:	0007b503          	ld	a0,0(a5)
    800018a0:	00001097          	auipc	ra,0x1
    800018a4:	bac080e7          	jalr	-1108(ra) # 8000244c <_ZN7_thread8setStateENS_5StateE>
    _thread::dispatch();
    800018a8:	00001097          	auipc	ra,0x1
    800018ac:	a00080e7          	jalr	-1536(ra) # 800022a8 <_ZN7_thread8dispatchEv>
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
    80001990:	ac0080e7          	jalr	-1344(ra) # 8000244c <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001994:	0004b503          	ld	a0,0(s1)
    80001998:	00001097          	auipc	ra,0x1
    8000199c:	c40080e7          	jalr	-960(ra) # 800025d8 <_ZN9Scheduler3putEP7_thread>
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
    80001a84:	9cc080e7          	jalr	-1588(ra) # 8000244c <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001a88:	0004b503          	ld	a0,0(s1)
    80001a8c:	00001097          	auipc	ra,0x1
    80001a90:	b4c080e7          	jalr	-1204(ra) # 800025d8 <_ZN9Scheduler3putEP7_thread>
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
    80001b34:	2cf90663          	beq	s2,a5,80001e00 <handleSupervisorTrap+0x308>
        Riscv::mc_sip(Riscv::SIP_SSIP);//birsanje pending bita
        return;
    }

    if (scause == 0x8000000000000009UL) {//spoljasnji hardverski prekid 9
    80001b38:	fff00793          	li	a5,-1
    80001b3c:	03f79793          	slli	a5,a5,0x3f
    80001b40:	00978793          	addi	a5,a5,9
    80001b44:	2cf90463          	beq	s2,a5,80001e0c <handleSupervisorTrap+0x314>
        console_handler();
        return;
    }
    if (scause == 2) { // illegal instruction
    80001b48:	00200793          	li	a5,2
    80001b4c:	2cf90663          	beq	s2,a5,80001e18 <handleSupervisorTrap+0x320>
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
    80001b6c:	28f76463          	bltu	a4,a5,80001df4 <handleSupervisorTrap+0x2fc>
    80001b70:	00279793          	slli	a5,a5,0x2
    80001b74:	00007717          	auipc	a4,0x7
    80001b78:	4c470713          	addi	a4,a4,1220 # 80009038 <CONSOLE_STATUS+0x28>
    80001b7c:	00e787b3          	add	a5,a5,a4
    80001b80:	0007a783          	lw	a5,0(a5)
    80001b84:	00e787b3          	add	a5,a5,a4
    80001b88:	00078067          	jr	a5
                frame->a0 = (uint64)MemoryAllocator::getInstance().malloc((size_t)arg1);
    80001b8c:	00001097          	auipc	ra,0x1
    80001b90:	158080e7          	jalr	344(ra) # 80002ce4 <_ZN15MemoryAllocator11getInstanceEv>
    80001b94:	00090593          	mv	a1,s2
    80001b98:	00001097          	auipc	ra,0x1
    80001b9c:	1cc080e7          	jalr	460(ra) # 80002d64 <_ZN15MemoryAllocator6mallocEm>
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
    80001bd0:	118080e7          	jalr	280(ra) # 80002ce4 <_ZN15MemoryAllocator11getInstanceEv>
    80001bd4:	00090593          	mv	a1,s2
    80001bd8:	00001097          	auipc	ra,0x1
    80001bdc:	2e8080e7          	jalr	744(ra) # 80002ec0 <_ZN15MemoryAllocator4freeEPv>
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
    80001c04:	544080e7          	jalr	1348(ra) # 80002144 <_ZN7_thread12createThreadEPFvPvES0_S0_>
                if (thread == nullptr) {
    80001c08:	00050c63          	beqz	a0,80001c20 <handleSupervisorTrap+0x128>
                *handle = thread;//korisnik dobija rucku nove niti
    80001c0c:	00a93023          	sd	a0,0(s2)
                Scheduler::put(thread);
    80001c10:	00001097          	auipc	ra,0x1
    80001c14:	9c8080e7          	jalr	-1592(ra) # 800025d8 <_ZN9Scheduler3putEP7_thread>
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
    80001c3c:	718080e7          	jalr	1816(ra) # 80002350 <_ZN7_thread4exitEv>
    80001c40:	04a4b023          	sd	a0,64(s1)
                return;
    80001c44:	f6dff06f          	j	80001bb0 <handleSupervisorTrap+0xb8>
                frame->sepc += 4;
    80001c48:	0f04b783          	ld	a5,240(s1)
    80001c4c:	00478793          	addi	a5,a5,4
    80001c50:	0ef4b823          	sd	a5,240(s1)
                _thread::dispatch();//nismo frame->a0 jer dispatch nema povratnu value
    80001c54:	00000097          	auipc	ra,0x0
    80001c58:	654080e7          	jalr	1620(ra) # 800022a8 <_ZN7_thread8dispatchEv>
                return;
    80001c5c:	f55ff06f          	j	80001bb0 <handleSupervisorTrap+0xb8>
                frame->sepc += 4;
    80001c60:	0f04b783          	ld	a5,240(s1)
    80001c64:	00478793          	addi	a5,a5,4
    80001c68:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)_thread::running->getThreadId();
    80001c6c:	0000a797          	auipc	a5,0xa
    80001c70:	0147b783          	ld	a5,20(a5) # 8000bc80 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001c74:	0007b503          	ld	a0,0(a5)
    80001c78:	00000097          	auipc	ra,0x0
    80001c7c:	540080e7          	jalr	1344(ra) # 800021b8 <_ZN7_thread11getThreadIdEv>
    80001c80:	04a4b023          	sd	a0,64(s1)
                _thread::dispatch();
    80001c84:	00000097          	auipc	ra,0x0
    80001c88:	624080e7          	jalr	1572(ra) # 800022a8 <_ZN7_thread8dispatchEv>
                return;
    80001c8c:	f25ff06f          	j	80001bb0 <handleSupervisorTrap+0xb8>
                _thread::setMaximumThreads(num);
    80001c90:	0009051b          	sext.w	a0,s2
    80001c94:	00000097          	auipc	ra,0x0
    80001c98:	540080e7          	jalr	1344(ra) # 800021d4 <_ZN7_thread17setMaximumThreadsEi>
                break;
    80001c9c:	f09ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                unsigned init = (unsigned)arg2;
    80001ca0:	0005051b          	sext.w	a0,a0
                if (handle == nullptr) {
    80001ca4:	00091863          	bnez	s2,80001cb4 <handleSupervisorTrap+0x1bc>
                    frame->a0 = (uint64)-1;
    80001ca8:	fff00793          	li	a5,-1
    80001cac:	04f4b023          	sd	a5,64(s1)
                    break;
    80001cb0:	ef5ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                _sem* sem = _sem::createSemaphore(init);
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	ac0080e7          	jalr	-1344(ra) # 80001774 <_ZN4_sem15createSemaphoreEj>
                if (sem == nullptr) {
    80001cbc:	00050863          	beqz	a0,80001ccc <handleSupervisorTrap+0x1d4>
                *handle = sem;
    80001cc0:	00a93023          	sd	a0,0(s2)
                frame->a0 = 0;
    80001cc4:	0404b023          	sd	zero,64(s1)
                break;
    80001cc8:	eddff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                    frame->a0 = (uint64)-1;
    80001ccc:	fff00793          	li	a5,-1
    80001cd0:	04f4b023          	sd	a5,64(s1)
                    break;
    80001cd4:	ed1ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                if (sem == nullptr) {
    80001cd8:	00091863          	bnez	s2,80001ce8 <handleSupervisorTrap+0x1f0>
                    frame->a0 = (uint64)-1;
    80001cdc:	fff00793          	li	a5,-1
    80001ce0:	04f4b023          	sd	a5,64(s1)
                    break;
    80001ce4:	ec1ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                int ret = sem->close();
    80001ce8:	00090513          	mv	a0,s2
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	dc8080e7          	jalr	-568(ra) # 80001ab4 <_ZN4_sem5closeEv>
    80001cf4:	00050993          	mv	s3,a0
                if (ret == 0) {
    80001cf8:	00050663          	beqz	a0,80001d04 <handleSupervisorTrap+0x20c>
                frame->a0 = (uint64)ret;
    80001cfc:	0534b023          	sd	s3,64(s1)
                break;
    80001d00:	ea5ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                    _sem::destroySemaphore(sem);
    80001d04:	00090513          	mv	a0,s2
    80001d08:	00000097          	auipc	ra,0x0
    80001d0c:	ac0080e7          	jalr	-1344(ra) # 800017c8 <_ZN4_sem16destroySemaphoreEPS_>
    80001d10:	fedff06f          	j	80001cfc <handleSupervisorTrap+0x204>
                if (sem == nullptr) {
    80001d14:	00091863          	bnez	s2,80001d24 <handleSupervisorTrap+0x22c>
                    frame->a0 = (uint64)-1;
    80001d18:	fff00793          	li	a5,-1
    80001d1c:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d20:	e85ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                frame->sepc += 4;
    80001d24:	0f04b783          	ld	a5,240(s1)
    80001d28:	00478793          	addi	a5,a5,4
    80001d2c:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->wait();
    80001d30:	00090513          	mv	a0,s2
    80001d34:	00000097          	auipc	ra,0x0
    80001d38:	bc4080e7          	jalr	-1084(ra) # 800018f8 <_ZN4_sem4waitEv>
    80001d3c:	04a4b023          	sd	a0,64(s1)
                return;
    80001d40:	e71ff06f          	j	80001bb0 <handleSupervisorTrap+0xb8>
                if (sem == nullptr) {
    80001d44:	00091863          	bnez	s2,80001d54 <handleSupervisorTrap+0x25c>
                    frame->a0 = (uint64)-1;
    80001d48:	fff00793          	li	a5,-1
    80001d4c:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d50:	e55ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)sem->signal();
    80001d54:	00090513          	mv	a0,s2
    80001d58:	00000097          	auipc	ra,0x0
    80001d5c:	cb8080e7          	jalr	-840(ra) # 80001a10 <_ZN4_sem6signalEv>
    80001d60:	04a4b023          	sd	a0,64(s1)
                break;
    80001d64:	e41ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                unsigned n = (unsigned)arg2;
    80001d68:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001d6c:	00091863          	bnez	s2,80001d7c <handleSupervisorTrap+0x284>
                    frame->a0 = (uint64)-1;
    80001d70:	fff00793          	li	a5,-1
    80001d74:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d78:	e2dff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                frame->sepc += 4;
    80001d7c:	0f04b783          	ld	a5,240(s1)
    80001d80:	00478793          	addi	a5,a5,4
    80001d84:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->waitN(n);
    80001d88:	00090513          	mv	a0,s2
    80001d8c:	00000097          	auipc	ra,0x0
    80001d90:	ab4080e7          	jalr	-1356(ra) # 80001840 <_ZN4_sem5waitNEj>
    80001d94:	04a4b023          	sd	a0,64(s1)
                return;
    80001d98:	e19ff06f          	j	80001bb0 <handleSupervisorTrap+0xb8>
                unsigned n = (unsigned)arg2;
    80001d9c:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001da0:	00091863          	bnez	s2,80001db0 <handleSupervisorTrap+0x2b8>
                    frame->a0 = (uint64)-1;
    80001da4:	fff00793          	li	a5,-1
    80001da8:	04f4b023          	sd	a5,64(s1)
                    break;
    80001dac:	df9ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)sem->signalN(n);
    80001db0:	00090513          	mv	a0,s2
    80001db4:	00000097          	auipc	ra,0x0
    80001db8:	c08080e7          	jalr	-1016(ra) # 800019bc <_ZN4_sem7signalNEj>
    80001dbc:	04a4b023          	sd	a0,64(s1)
                break;
    80001dc0:	de5ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)-1;
    80001dc4:	fff00793          	li	a5,-1
    80001dc8:	04f4b023          	sd	a5,64(s1)
                break;
    80001dcc:	dd9ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)__getc();
    80001dd0:	00007097          	auipc	ra,0x7
    80001dd4:	de8080e7          	jalr	-536(ra) # 80008bb8 <__getc>
    80001dd8:	04a4b023          	sd	a0,64(s1)
                break;
    80001ddc:	dc9ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                __putc((char)arg1);
    80001de0:	0ff97513          	andi	a0,s2,255
    80001de4:	00007097          	auipc	ra,0x7
    80001de8:	d98080e7          	jalr	-616(ra) # 80008b7c <__putc>
                frame->a0 = 0;
    80001dec:	0404b023          	sd	zero,64(s1)
                break;
    80001df0:	db5ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)-1;
    80001df4:	fff00793          	li	a5,-1
    80001df8:	04f4b023          	sd	a5,64(s1)
                break;
    80001dfc:	da9ff06f          	j	80001ba4 <handleSupervisorTrap+0xac>

    static void mc_sstatus(uint64 mask) {
        asm volatile("csrc sstatus, %0" : : "r"(mask));//vrati prekide
    }
    static void mc_sip(uint64 mask) {
        asm volatile("csrc sip, %0" : : "r"(mask));
    80001e00:	00200793          	li	a5,2
    80001e04:	1447b073          	csrc	sip,a5
        return;
    80001e08:	da9ff06f          	j	80001bb0 <handleSupervisorTrap+0xb8>
        console_handler();
    80001e0c:	00007097          	auipc	ra,0x7
    80001e10:	de4080e7          	jalr	-540(ra) # 80008bf0 <console_handler>
        return;
    80001e14:	d9dff06f          	j	80001bb0 <handleSupervisorTrap+0xb8>
        printString("ERROR, scause: ");
    80001e18:	00007517          	auipc	a0,0x7
    80001e1c:	20850513          	addi	a0,a0,520 # 80009020 <CONSOLE_STATUS+0x10>
    80001e20:	00003097          	auipc	ra,0x3
    80001e24:	6b8080e7          	jalr	1720(ra) # 800054d8 <_Z11printStringPKc>
        printInt(scause);
    80001e28:	00000613          	li	a2,0
    80001e2c:	00a00593          	li	a1,10
    80001e30:	0009051b          	sext.w	a0,s2
    80001e34:	00004097          	auipc	ra,0x4
    80001e38:	854080e7          	jalr	-1964(ra) # 80005688 <_Z8printIntiii>
        printString(",sepc ");
    80001e3c:	00007517          	auipc	a0,0x7
    80001e40:	1f450513          	addi	a0,a0,500 # 80009030 <CONSOLE_STATUS+0x20>
    80001e44:	00003097          	auipc	ra,0x3
    80001e48:	694080e7          	jalr	1684(ra) # 800054d8 <_Z11printStringPKc>
        printInt(frame->sepc);
    80001e4c:	00000613          	li	a2,0
    80001e50:	00a00593          	li	a1,10
    80001e54:	0f04a503          	lw	a0,240(s1)
    80001e58:	00004097          	auipc	ra,0x4
    80001e5c:	830080e7          	jalr	-2000(ra) # 80005688 <_Z8printIntiii>
        printString("\n");
    80001e60:	00007517          	auipc	a0,0x7
    80001e64:	45850513          	addi	a0,a0,1112 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80001e68:	00003097          	auipc	ra,0x3
    80001e6c:	670080e7          	jalr	1648(ra) # 800054d8 <_Z11printStringPKc>
        frame->sepc += 4;
    80001e70:	0f04b783          	ld	a5,240(s1)
    80001e74:	00478793          	addi	a5,a5,4
    80001e78:	0ef4b823          	sd	a5,240(s1)
        asm volatile("csrw sepc, %0" : : "r"(x));//upis u sepc
    80001e7c:	14179073          	csrw	sepc,a5
        return;
    80001e80:	d31ff06f          	j	80001bb0 <handleSupervisorTrap+0xb8>

0000000080001e84 <_ZL14blocksForBytesm>:
_thread* _thread::running = nullptr;
_sem* _thread::limitSem = nullptr;
int _thread::nextId = 0;
int _thread::maxThreads = 5;

static size_t blocksForBytes(size_t bytes) {
    80001e84:	ff010113          	addi	sp,sp,-16
    80001e88:	00813423          	sd	s0,8(sp)
    80001e8c:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001e90:	03f50513          	addi	a0,a0,63
}
    80001e94:	00655513          	srli	a0,a0,0x6
    80001e98:	00813403          	ld	s0,8(sp)
    80001e9c:	01010113          	addi	sp,sp,16
    80001ea0:	00008067          	ret

0000000080001ea4 <_ZN7_thread13threadWrapperEv>:

uint64 _thread::getTimeSlice() const {
    return timeSlice;
}

void _thread::threadWrapper() {
    80001ea4:	fe010113          	addi	sp,sp,-32
    80001ea8:	00113c23          	sd	ra,24(sp)
    80001eac:	00813823          	sd	s0,16(sp)
    80001eb0:	00913423          	sd	s1,8(sp)
    80001eb4:	02010413          	addi	s0,sp,32
    if (limitSem== nullptr) {
    80001eb8:	0000a797          	auipc	a5,0xa
    80001ebc:	e387b783          	ld	a5,-456(a5) # 8000bcf0 <_ZN7_thread8limitSemE>
    80001ec0:	06078c63          	beqz	a5,80001f38 <_ZN7_thread13threadWrapperEv+0x94>
        limitSem = _sem::createSemaphore(maxThreads);
    }
    limitSem->wait();
    80001ec4:	0000a497          	auipc	s1,0xa
    80001ec8:	e2c48493          	addi	s1,s1,-468 # 8000bcf0 <_ZN7_thread8limitSemE>
    80001ecc:	0004b503          	ld	a0,0(s1)
    80001ed0:	00000097          	auipc	ra,0x0
    80001ed4:	a28080e7          	jalr	-1496(ra) # 800018f8 <_ZN4_sem4waitEv>
    running->hasLimitPermit = true;
    80001ed8:	0084b783          	ld	a5,8(s1)
    80001edc:	00100713          	li	a4,1
    80001ee0:	0ae78223          	sb	a4,164(a5)
    }
    static void popSppSpie() {
        uint64 target;

        asm volatile("la %0, 1f" : "=r"(target));//skoci na adresu odmah posle sret-a, labela 1
    80001ee4:	0000a797          	auipc	a5,0xa
    80001ee8:	d8c7b783          	ld	a5,-628(a5) # 8000bc70 <_GLOBAL_OFFSET_TABLE_+0x8>

        asm volatile("csrw sepc, %0" : : "r"(target));
    80001eec:	14179073          	csrw	sepc,a5
        asm volatile("csrc sstatus, %0" : : "r"(SSTATUS_SPP));//vrati se u user mode
    80001ef0:	10000793          	li	a5,256
    80001ef4:	1007b073          	csrc	sstatus,a5
        asm volatile("csrs sstatus, %0" : : "r"(SSTATUS_SPIE));//enable prekide posle sret-a
    80001ef8:	02000793          	li	a5,32
    80001efc:	1007a073          	csrs	sstatus,a5

        asm volatile(
            "sret\n"//sret menja rezim
            "1:\n"//procesor posle sret skoci ovde, da bi se vratio u threadWrapper
        );
    80001f00:	10200073          	sret
    Riscv::popSppSpie();

    if (running != nullptr && running->body != nullptr) {
    80001f04:	0084b783          	ld	a5,8(s1)
    80001f08:	00078a63          	beqz	a5,80001f1c <_ZN7_thread13threadWrapperEv+0x78>
    80001f0c:	0007b703          	ld	a4,0(a5)
    80001f10:	00070663          	beqz	a4,80001f1c <_ZN7_thread13threadWrapperEv+0x78>
        running->body(running->arg);
    80001f14:	0087b503          	ld	a0,8(a5)
    80001f18:	000700e7          	jalr	a4
    }

    thread_exit();
    80001f1c:	fffff097          	auipc	ra,0xfffff
    80001f20:	42c080e7          	jalr	1068(ra) # 80001348 <_Z11thread_exitv>
    80001f24:	01813083          	ld	ra,24(sp)
    80001f28:	01013403          	ld	s0,16(sp)
    80001f2c:	00813483          	ld	s1,8(sp)
    80001f30:	02010113          	addi	sp,sp,32
    80001f34:	00008067          	ret
        limitSem = _sem::createSemaphore(maxThreads);
    80001f38:	0000a517          	auipc	a0,0xa
    80001f3c:	ad852503          	lw	a0,-1320(a0) # 8000ba10 <_ZN7_thread10maxThreadsE>
    80001f40:	00000097          	auipc	ra,0x0
    80001f44:	834080e7          	jalr	-1996(ra) # 80001774 <_ZN4_sem15createSemaphoreEj>
    80001f48:	0000a797          	auipc	a5,0xa
    80001f4c:	daa7b423          	sd	a0,-600(a5) # 8000bcf0 <_ZN7_thread8limitSemE>
    80001f50:	f75ff06f          	j	80001ec4 <_ZN7_thread13threadWrapperEv+0x20>

0000000080001f54 <_ZN7_threadnwEm>:
void* _thread::operator new(size_t size) {
    80001f54:	fe010113          	addi	sp,sp,-32
    80001f58:	00113c23          	sd	ra,24(sp)
    80001f5c:	00813823          	sd	s0,16(sp)
    80001f60:	00913423          	sd	s1,8(sp)
    80001f64:	01213023          	sd	s2,0(sp)
    80001f68:	02010413          	addi	s0,sp,32
    80001f6c:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001f70:	00001097          	auipc	ra,0x1
    80001f74:	d74080e7          	jalr	-652(ra) # 80002ce4 <_ZN15MemoryAllocator11getInstanceEv>
    80001f78:	00050493          	mv	s1,a0
    80001f7c:	00090513          	mv	a0,s2
    80001f80:	00000097          	auipc	ra,0x0
    80001f84:	f04080e7          	jalr	-252(ra) # 80001e84 <_ZL14blocksForBytesm>
    80001f88:	00050593          	mv	a1,a0
    80001f8c:	00048513          	mv	a0,s1
    80001f90:	00001097          	auipc	ra,0x1
    80001f94:	dd4080e7          	jalr	-556(ra) # 80002d64 <_ZN15MemoryAllocator6mallocEm>
}
    80001f98:	01813083          	ld	ra,24(sp)
    80001f9c:	01013403          	ld	s0,16(sp)
    80001fa0:	00813483          	ld	s1,8(sp)
    80001fa4:	00013903          	ld	s2,0(sp)
    80001fa8:	02010113          	addi	sp,sp,32
    80001fac:	00008067          	ret

0000000080001fb0 <_ZN7_threadnaEm>:
void* _thread::operator new[](size_t size) {
    80001fb0:	fe010113          	addi	sp,sp,-32
    80001fb4:	00113c23          	sd	ra,24(sp)
    80001fb8:	00813823          	sd	s0,16(sp)
    80001fbc:	00913423          	sd	s1,8(sp)
    80001fc0:	01213023          	sd	s2,0(sp)
    80001fc4:	02010413          	addi	s0,sp,32
    80001fc8:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001fcc:	00001097          	auipc	ra,0x1
    80001fd0:	d18080e7          	jalr	-744(ra) # 80002ce4 <_ZN15MemoryAllocator11getInstanceEv>
    80001fd4:	00050493          	mv	s1,a0
    80001fd8:	00090513          	mv	a0,s2
    80001fdc:	00000097          	auipc	ra,0x0
    80001fe0:	ea8080e7          	jalr	-344(ra) # 80001e84 <_ZL14blocksForBytesm>
    80001fe4:	00050593          	mv	a1,a0
    80001fe8:	00048513          	mv	a0,s1
    80001fec:	00001097          	auipc	ra,0x1
    80001ff0:	d78080e7          	jalr	-648(ra) # 80002d64 <_ZN15MemoryAllocator6mallocEm>
}
    80001ff4:	01813083          	ld	ra,24(sp)
    80001ff8:	01013403          	ld	s0,16(sp)
    80001ffc:	00813483          	ld	s1,8(sp)
    80002000:	00013903          	ld	s2,0(sp)
    80002004:	02010113          	addi	sp,sp,32
    80002008:	00008067          	ret

000000008000200c <_ZN7_threaddlEPv>:
    if (ptr == nullptr) {
    8000200c:	04050263          	beqz	a0,80002050 <_ZN7_threaddlEPv+0x44>
void _thread::operator delete(void* ptr) {
    80002010:	fe010113          	addi	sp,sp,-32
    80002014:	00113c23          	sd	ra,24(sp)
    80002018:	00813823          	sd	s0,16(sp)
    8000201c:	00913423          	sd	s1,8(sp)
    80002020:	02010413          	addi	s0,sp,32
    80002024:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance().free(ptr);
    80002028:	00001097          	auipc	ra,0x1
    8000202c:	cbc080e7          	jalr	-836(ra) # 80002ce4 <_ZN15MemoryAllocator11getInstanceEv>
    80002030:	00048593          	mv	a1,s1
    80002034:	00001097          	auipc	ra,0x1
    80002038:	e8c080e7          	jalr	-372(ra) # 80002ec0 <_ZN15MemoryAllocator4freeEPv>
}
    8000203c:	01813083          	ld	ra,24(sp)
    80002040:	01013403          	ld	s0,16(sp)
    80002044:	00813483          	ld	s1,8(sp)
    80002048:	02010113          	addi	sp,sp,32
    8000204c:	00008067          	ret
    80002050:	00008067          	ret

0000000080002054 <_ZN7_threaddaEPv>:
    if (ptr == nullptr) {
    80002054:	04050263          	beqz	a0,80002098 <_ZN7_threaddaEPv+0x44>
void _thread::operator delete[](void* ptr) {
    80002058:	fe010113          	addi	sp,sp,-32
    8000205c:	00113c23          	sd	ra,24(sp)
    80002060:	00813823          	sd	s0,16(sp)
    80002064:	00913423          	sd	s1,8(sp)
    80002068:	02010413          	addi	s0,sp,32
    8000206c:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance().free(ptr);
    80002070:	00001097          	auipc	ra,0x1
    80002074:	c74080e7          	jalr	-908(ra) # 80002ce4 <_ZN15MemoryAllocator11getInstanceEv>
    80002078:	00048593          	mv	a1,s1
    8000207c:	00001097          	auipc	ra,0x1
    80002080:	e44080e7          	jalr	-444(ra) # 80002ec0 <_ZN15MemoryAllocator4freeEPv>
}
    80002084:	01813083          	ld	ra,24(sp)
    80002088:	01013403          	ld	s0,16(sp)
    8000208c:	00813483          	ld	s1,8(sp)
    80002090:	02010113          	addi	sp,sp,32
    80002094:	00008067          	ret
    80002098:	00008067          	ret

000000008000209c <_ZN7_threadC1EPFvPvES0_S0_>:
_thread::_thread(Body body, void* arg, void* stackSpace) {
    8000209c:	ff010113          	addi	sp,sp,-16
    800020a0:	00813423          	sd	s0,8(sp)
    800020a4:	01010413          	addi	s0,sp,16
    this->body = body;
    800020a8:	00b53023          	sd	a1,0(a0)
    this->arg = arg;
    800020ac:	00c53423          	sd	a2,8(a0)
    if (stackSpace != nullptr) {
    800020b0:	08068463          	beqz	a3,80002138 <_ZN7_threadC1EPFvPvES0_S0_+0x9c>
        this->stack = (void*)((uint64)stackSpace - DEFAULT_STACK_SIZE);
    800020b4:	fffff7b7          	lui	a5,0xfffff
    800020b8:	00f687b3          	add	a5,a3,a5
    800020bc:	00f53823          	sd	a5,16(a0)
        this->context.sp = (uint64)stackSpace;
    800020c0:	02d53023          	sd	a3,32(a0)
    this->context.s0 = 0;
    800020c4:	02053423          	sd	zero,40(a0)
    this->context.s1 = 0;
    800020c8:	02053823          	sd	zero,48(a0)
    this->context.s2 = 0;
    800020cc:	02053c23          	sd	zero,56(a0)
    this->context.s3 = 0;
    800020d0:	04053023          	sd	zero,64(a0)
    this->context.s4 = 0;
    800020d4:	04053423          	sd	zero,72(a0)
    this->context.s5 = 0;
    800020d8:	04053823          	sd	zero,80(a0)
    this->context.s6 = 0;
    800020dc:	04053c23          	sd	zero,88(a0)
    this->context.s7 = 0;
    800020e0:	06053023          	sd	zero,96(a0)
    this->context.s8 = 0;
    800020e4:	06053423          	sd	zero,104(a0)
    this->context.s9 = 0;
    800020e8:	06053823          	sd	zero,112(a0)
    this->context.s10 = 0;
    800020ec:	06053c23          	sd	zero,120(a0)
    this->context.s11 = 0;
    800020f0:	08053023          	sd	zero,128(a0)
    this->context.ra = (uint64)&_thread::threadWrapper;//nit nigde nije radila pa upisujemo povratnu adresu
    800020f4:	00000797          	auipc	a5,0x0
    800020f8:	db078793          	addi	a5,a5,-592 # 80001ea4 <_ZN7_thread13threadWrapperEv>
    800020fc:	00f53c23          	sd	a5,24(a0)
    this->timeSlice = DEFAULT_TIME_SLICE;
    80002100:	00200793          	li	a5,2
    80002104:	08f53423          	sd	a5,136(a0)
    this->state = CREATED;//nakon ovoga u trap.cpp radimo ready
    80002108:	08052823          	sw	zero,144(a0)
    this->next = nullptr;
    8000210c:	08053c23          	sd	zero,152(a0)
    this->id = nextId++;
    80002110:	0000a717          	auipc	a4,0xa
    80002114:	be070713          	addi	a4,a4,-1056 # 8000bcf0 <_ZN7_thread8limitSemE>
    80002118:	01072783          	lw	a5,16(a4)
    8000211c:	0017869b          	addiw	a3,a5,1
    80002120:	00d72823          	sw	a3,16(a4)
    80002124:	0af52023          	sw	a5,160(a0)
    this->hasLimitPermit = false;
    80002128:	0a050223          	sb	zero,164(a0)
}
    8000212c:	00813403          	ld	s0,8(sp)
    80002130:	01010113          	addi	sp,sp,16
    80002134:	00008067          	ret
        this->stack = nullptr;
    80002138:	00053823          	sd	zero,16(a0)
        this->context.sp = 0;
    8000213c:	02053023          	sd	zero,32(a0)
    80002140:	f85ff06f          	j	800020c4 <_ZN7_threadC1EPFvPvES0_S0_+0x28>

0000000080002144 <_ZN7_thread12createThreadEPFvPvES0_S0_>:
_thread* _thread::createThread(Body body, void* arg, void* stackSpace) {
    80002144:	fd010113          	addi	sp,sp,-48
    80002148:	02113423          	sd	ra,40(sp)
    8000214c:	02813023          	sd	s0,32(sp)
    80002150:	00913c23          	sd	s1,24(sp)
    80002154:	01213823          	sd	s2,16(sp)
    80002158:	01313423          	sd	s3,8(sp)
    8000215c:	01413023          	sd	s4,0(sp)
    80002160:	03010413          	addi	s0,sp,48
    80002164:	00050913          	mv	s2,a0
    80002168:	00058993          	mv	s3,a1
    8000216c:	00060a13          	mv	s4,a2
    return new _thread(body, arg, stackSpace);
    80002170:	0a800513          	li	a0,168
    80002174:	00000097          	auipc	ra,0x0
    80002178:	de0080e7          	jalr	-544(ra) # 80001f54 <_ZN7_threadnwEm>
    8000217c:	00050493          	mv	s1,a0
    80002180:	000a0693          	mv	a3,s4
    80002184:	00098613          	mv	a2,s3
    80002188:	00090593          	mv	a1,s2
    8000218c:	00000097          	auipc	ra,0x0
    80002190:	f10080e7          	jalr	-240(ra) # 8000209c <_ZN7_threadC1EPFvPvES0_S0_>
}
    80002194:	00048513          	mv	a0,s1
    80002198:	02813083          	ld	ra,40(sp)
    8000219c:	02013403          	ld	s0,32(sp)
    800021a0:	01813483          	ld	s1,24(sp)
    800021a4:	01013903          	ld	s2,16(sp)
    800021a8:	00813983          	ld	s3,8(sp)
    800021ac:	00013a03          	ld	s4,0(sp)
    800021b0:	03010113          	addi	sp,sp,48
    800021b4:	00008067          	ret

00000000800021b8 <_ZN7_thread11getThreadIdEv>:
int _thread::getThreadId() {
    800021b8:	ff010113          	addi	sp,sp,-16
    800021bc:	00813423          	sd	s0,8(sp)
    800021c0:	01010413          	addi	s0,sp,16
}
    800021c4:	0a052503          	lw	a0,160(a0)
    800021c8:	00813403          	ld	s0,8(sp)
    800021cc:	01010113          	addi	sp,sp,16
    800021d0:	00008067          	ret

00000000800021d4 <_ZN7_thread17setMaximumThreadsEi>:
void _thread::setMaximumThreads(int num) {
    800021d4:	ff010113          	addi	sp,sp,-16
    800021d8:	00113423          	sd	ra,8(sp)
    800021dc:	00813023          	sd	s0,0(sp)
    800021e0:	01010413          	addi	s0,sp,16
    if (num <=0) {
    800021e4:	04a05c63          	blez	a0,8000223c <_ZN7_thread17setMaximumThreadsEi+0x68>
    maxThreads = num;
    800021e8:	0000a797          	auipc	a5,0xa
    800021ec:	82a7a423          	sw	a0,-2008(a5) # 8000ba10 <_ZN7_thread10maxThreadsE>
    if (limitSem!=nullptr) {
    800021f0:	0000a517          	auipc	a0,0xa
    800021f4:	b0053503          	ld	a0,-1280(a0) # 8000bcf0 <_ZN7_thread8limitSemE>
    800021f8:	00050e63          	beqz	a0,80002214 <_ZN7_thread17setMaximumThreadsEi+0x40>
        limitSem->close();
    800021fc:	00000097          	auipc	ra,0x0
    80002200:	8b8080e7          	jalr	-1864(ra) # 80001ab4 <_ZN4_sem5closeEv>
        _sem::destroySemaphore(limitSem);
    80002204:	0000a517          	auipc	a0,0xa
    80002208:	aec53503          	ld	a0,-1300(a0) # 8000bcf0 <_ZN7_thread8limitSemE>
    8000220c:	fffff097          	auipc	ra,0xfffff
    80002210:	5bc080e7          	jalr	1468(ra) # 800017c8 <_ZN4_sem16destroySemaphoreEPS_>
    limitSem = _sem::createSemaphore(maxThreads);
    80002214:	00009517          	auipc	a0,0x9
    80002218:	7fc52503          	lw	a0,2044(a0) # 8000ba10 <_ZN7_thread10maxThreadsE>
    8000221c:	fffff097          	auipc	ra,0xfffff
    80002220:	558080e7          	jalr	1368(ra) # 80001774 <_ZN4_sem15createSemaphoreEj>
    80002224:	0000a797          	auipc	a5,0xa
    80002228:	aca7b623          	sd	a0,-1332(a5) # 8000bcf0 <_ZN7_thread8limitSemE>
}
    8000222c:	00813083          	ld	ra,8(sp)
    80002230:	00013403          	ld	s0,0(sp)
    80002234:	01010113          	addi	sp,sp,16
    80002238:	00008067          	ret
        num = 5;
    8000223c:	00500513          	li	a0,5
    80002240:	fa9ff06f          	j	800021e8 <_ZN7_thread17setMaximumThreadsEi+0x14>

0000000080002244 <_ZN7_thread13destroyThreadEPS_>:
    if (thread == nullptr) {
    80002244:	04050e63          	beqz	a0,800022a0 <_ZN7_thread13destroyThreadEPS_+0x5c>
int _thread::destroyThread(_thread* thread) {
    80002248:	fe010113          	addi	sp,sp,-32
    8000224c:	00113c23          	sd	ra,24(sp)
    80002250:	00813823          	sd	s0,16(sp)
    80002254:	00913423          	sd	s1,8(sp)
    80002258:	02010413          	addi	s0,sp,32
    8000225c:	00050493          	mv	s1,a0
    if (thread->stack != nullptr) {
    80002260:	01053783          	ld	a5,16(a0)
    80002264:	00078c63          	beqz	a5,8000227c <_ZN7_thread13destroyThreadEPS_+0x38>
        MemoryAllocator::getInstance().free(thread->stack);
    80002268:	00001097          	auipc	ra,0x1
    8000226c:	a7c080e7          	jalr	-1412(ra) # 80002ce4 <_ZN15MemoryAllocator11getInstanceEv>
    80002270:	0104b583          	ld	a1,16(s1)
    80002274:	00001097          	auipc	ra,0x1
    80002278:	c4c080e7          	jalr	-948(ra) # 80002ec0 <_ZN15MemoryAllocator4freeEPv>
    delete thread;
    8000227c:	00048513          	mv	a0,s1
    80002280:	00000097          	auipc	ra,0x0
    80002284:	d8c080e7          	jalr	-628(ra) # 8000200c <_ZN7_threaddlEPv>
    return 0;
    80002288:	00000513          	li	a0,0
}
    8000228c:	01813083          	ld	ra,24(sp)
    80002290:	01013403          	ld	s0,16(sp)
    80002294:	00813483          	ld	s1,8(sp)
    80002298:	02010113          	addi	sp,sp,32
    8000229c:	00008067          	ret
        return -1;
    800022a0:	fff00513          	li	a0,-1
}
    800022a4:	00008067          	ret

00000000800022a8 <_ZN7_thread8dispatchEv>:
void _thread::dispatch() {
    800022a8:	fe010113          	addi	sp,sp,-32
    800022ac:	00113c23          	sd	ra,24(sp)
    800022b0:	00813823          	sd	s0,16(sp)
    800022b4:	00913423          	sd	s1,8(sp)
    800022b8:	02010413          	addi	s0,sp,32
    _thread* old = running;
    800022bc:	0000a497          	auipc	s1,0xa
    800022c0:	a3c4b483          	ld	s1,-1476(s1) # 8000bcf8 <_ZN7_thread7runningE>
    if (old != nullptr && old->state != FINISHED && old->state != BLOCKED) {
    800022c4:	00048c63          	beqz	s1,800022dc <_ZN7_thread8dispatchEv+0x34>
    800022c8:	0904a783          	lw	a5,144(s1)
    800022cc:	00400713          	li	a4,4
    800022d0:	00e78663          	beq	a5,a4,800022dc <_ZN7_thread8dispatchEv+0x34>
    800022d4:	00300713          	li	a4,3
    800022d8:	04e79663          	bne	a5,a4,80002324 <_ZN7_thread8dispatchEv+0x7c>
    _thread* next = Scheduler::get();
    800022dc:	00000097          	auipc	ra,0x0
    800022e0:	368080e7          	jalr	872(ra) # 80002644 <_ZN9Scheduler3getEv>
    if (next == nullptr) {
    800022e4:	04050863          	beqz	a0,80002334 <_ZN7_thread8dispatchEv+0x8c>
    running = next;
    800022e8:	0000a797          	auipc	a5,0xa
    800022ec:	a0a7b823          	sd	a0,-1520(a5) # 8000bcf8 <_ZN7_thread7runningE>
    running->state = RUNNING;
    800022f0:	00200793          	li	a5,2
    800022f4:	08f52823          	sw	a5,144(a0)
    if (old != nullptr && old != running) {//ako je scheduler vratio istu nit ne treba contextswitch
    800022f8:	00048c63          	beqz	s1,80002310 <_ZN7_thread8dispatchEv+0x68>
    800022fc:	00a48a63          	beq	s1,a0,80002310 <_ZN7_thread8dispatchEv+0x68>
        contextSwitch(&old->context, &running->context);
    80002300:	01850593          	addi	a1,a0,24
    80002304:	01848513          	addi	a0,s1,24
    80002308:	fffff097          	auipc	ra,0xfffff
    8000230c:	e28080e7          	jalr	-472(ra) # 80001130 <contextSwitch>
}
    80002310:	01813083          	ld	ra,24(sp)
    80002314:	01013403          	ld	s0,16(sp)
    80002318:	00813483          	ld	s1,8(sp)
    8000231c:	02010113          	addi	sp,sp,32
    80002320:	00008067          	ret
        Scheduler::put(old);
    80002324:	00048513          	mv	a0,s1
    80002328:	00000097          	auipc	ra,0x0
    8000232c:	2b0080e7          	jalr	688(ra) # 800025d8 <_ZN9Scheduler3putEP7_thread>
    80002330:	fadff06f          	j	800022dc <_ZN7_thread8dispatchEv+0x34>
        if (old != nullptr && old->state == RUNNING) {
    80002334:	fc048ee3          	beqz	s1,80002310 <_ZN7_thread8dispatchEv+0x68>
    80002338:	0904a703          	lw	a4,144(s1)
    8000233c:	00200793          	li	a5,2
    80002340:	fcf718e3          	bne	a4,a5,80002310 <_ZN7_thread8dispatchEv+0x68>
            running = old;
    80002344:	0000a797          	auipc	a5,0xa
    80002348:	9a97ba23          	sd	s1,-1612(a5) # 8000bcf8 <_ZN7_thread7runningE>
        return;
    8000234c:	fc5ff06f          	j	80002310 <_ZN7_thread8dispatchEv+0x68>

0000000080002350 <_ZN7_thread4exitEv>:
    if (running == nullptr) {
    80002350:	0000a797          	auipc	a5,0xa
    80002354:	9a87b783          	ld	a5,-1624(a5) # 8000bcf8 <_ZN7_thread7runningE>
    80002358:	06078063          	beqz	a5,800023b8 <_ZN7_thread4exitEv+0x68>
int _thread::exit() {
    8000235c:	ff010113          	addi	sp,sp,-16
    80002360:	00113423          	sd	ra,8(sp)
    80002364:	00813023          	sd	s0,0(sp)
    80002368:	01010413          	addi	s0,sp,16
    if (running->hasLimitPermit && limitSem!=nullptr) {
    8000236c:	0a47c703          	lbu	a4,164(a5)
    80002370:	00070e63          	beqz	a4,8000238c <_ZN7_thread4exitEv+0x3c>
    80002374:	0000a517          	auipc	a0,0xa
    80002378:	97c53503          	ld	a0,-1668(a0) # 8000bcf0 <_ZN7_thread8limitSemE>
    8000237c:	00050863          	beqz	a0,8000238c <_ZN7_thread4exitEv+0x3c>
        running->hasLimitPermit = false;
    80002380:	0a078223          	sb	zero,164(a5)
        limitSem->signal();
    80002384:	fffff097          	auipc	ra,0xfffff
    80002388:	68c080e7          	jalr	1676(ra) # 80001a10 <_ZN4_sem6signalEv>
    running->state = FINISHED;
    8000238c:	0000a797          	auipc	a5,0xa
    80002390:	96c7b783          	ld	a5,-1684(a5) # 8000bcf8 <_ZN7_thread7runningE>
    80002394:	00400713          	li	a4,4
    80002398:	08e7a823          	sw	a4,144(a5)
    dispatch();
    8000239c:	00000097          	auipc	ra,0x0
    800023a0:	f0c080e7          	jalr	-244(ra) # 800022a8 <_ZN7_thread8dispatchEv>
    return 0;
    800023a4:	00000513          	li	a0,0
}
    800023a8:	00813083          	ld	ra,8(sp)
    800023ac:	00013403          	ld	s0,0(sp)
    800023b0:	01010113          	addi	sp,sp,16
    800023b4:	00008067          	ret
        return -1;
    800023b8:	fff00513          	li	a0,-1
}
    800023bc:	00008067          	ret

00000000800023c0 <_ZNK7_thread7getBodyEv>:
_thread::Body _thread::getBody() const {
    800023c0:	ff010113          	addi	sp,sp,-16
    800023c4:	00813423          	sd	s0,8(sp)
    800023c8:	01010413          	addi	s0,sp,16
}
    800023cc:	00053503          	ld	a0,0(a0)
    800023d0:	00813403          	ld	s0,8(sp)
    800023d4:	01010113          	addi	sp,sp,16
    800023d8:	00008067          	ret

00000000800023dc <_ZNK7_thread6getArgEv>:
void* _thread::getArg() const {
    800023dc:	ff010113          	addi	sp,sp,-16
    800023e0:	00813423          	sd	s0,8(sp)
    800023e4:	01010413          	addi	s0,sp,16
}
    800023e8:	00853503          	ld	a0,8(a0)
    800023ec:	00813403          	ld	s0,8(sp)
    800023f0:	01010113          	addi	sp,sp,16
    800023f4:	00008067          	ret

00000000800023f8 <_ZNK7_thread8getStackEv>:
void* _thread::getStack() const {
    800023f8:	ff010113          	addi	sp,sp,-16
    800023fc:	00813423          	sd	s0,8(sp)
    80002400:	01010413          	addi	s0,sp,16
}
    80002404:	01053503          	ld	a0,16(a0)
    80002408:	00813403          	ld	s0,8(sp)
    8000240c:	01010113          	addi	sp,sp,16
    80002410:	00008067          	ret

0000000080002414 <_ZN7_thread10getContextEv>:
_thread::Context* _thread::getContext() {
    80002414:	ff010113          	addi	sp,sp,-16
    80002418:	00813423          	sd	s0,8(sp)
    8000241c:	01010413          	addi	s0,sp,16
}
    80002420:	01850513          	addi	a0,a0,24
    80002424:	00813403          	ld	s0,8(sp)
    80002428:	01010113          	addi	sp,sp,16
    8000242c:	00008067          	ret

0000000080002430 <_ZNK7_thread8getStateEv>:
_thread::State _thread::getState() const {
    80002430:	ff010113          	addi	sp,sp,-16
    80002434:	00813423          	sd	s0,8(sp)
    80002438:	01010413          	addi	s0,sp,16
}
    8000243c:	09052503          	lw	a0,144(a0)
    80002440:	00813403          	ld	s0,8(sp)
    80002444:	01010113          	addi	sp,sp,16
    80002448:	00008067          	ret

000000008000244c <_ZN7_thread8setStateENS_5StateE>:
void _thread::setState(State state) {
    8000244c:	ff010113          	addi	sp,sp,-16
    80002450:	00813423          	sd	s0,8(sp)
    80002454:	01010413          	addi	s0,sp,16
    this->state = state;
    80002458:	08b52823          	sw	a1,144(a0)
}
    8000245c:	00813403          	ld	s0,8(sp)
    80002460:	01010113          	addi	sp,sp,16
    80002464:	00008067          	ret

0000000080002468 <_ZNK7_thread12getTimeSliceEv>:
uint64 _thread::getTimeSlice() const {
    80002468:	ff010113          	addi	sp,sp,-16
    8000246c:	00813423          	sd	s0,8(sp)
    80002470:	01010413          	addi	s0,sp,16
}
    80002474:	08853503          	ld	a0,136(a0)
    80002478:	00813403          	ld	s0,8(sp)
    8000247c:	01010113          	addi	sp,sp,16
    80002480:	00008067          	ret

0000000080002484 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80002484:	fe010113          	addi	sp,sp,-32
    80002488:	00113c23          	sd	ra,24(sp)
    8000248c:	00813823          	sd	s0,16(sp)
    80002490:	00913423          	sd	s1,8(sp)
    80002494:	01213023          	sd	s2,0(sp)
    80002498:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    8000249c:	00007517          	auipc	a0,0x7
    800024a0:	cac50513          	addi	a0,a0,-852 # 80009148 <CONSOLE_STATUS+0x138>
    800024a4:	00003097          	auipc	ra,0x3
    800024a8:	034080e7          	jalr	52(ra) # 800054d8 <_Z11printStringPKc>
    int test = getc() - '0';
    800024ac:	fffff097          	auipc	ra,0xfffff
    800024b0:	160080e7          	jalr	352(ra) # 8000160c <_Z4getcv>
    800024b4:	00050913          	mv	s2,a0
    800024b8:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800024bc:	fffff097          	auipc	ra,0xfffff
    800024c0:	150080e7          	jalr	336(ra) # 8000160c <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800024c4:	fcb9091b          	addiw	s2,s2,-53
    800024c8:	00100793          	li	a5,1
    800024cc:	0327f463          	bgeu	a5,s2,800024f4 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800024d0:	00800793          	li	a5,8
    800024d4:	0e97e863          	bltu	a5,s1,800025c4 <_Z8userMainv+0x140>
    800024d8:	00249493          	slli	s1,s1,0x2
    800024dc:	00007717          	auipc	a4,0x7
    800024e0:	e8470713          	addi	a4,a4,-380 # 80009360 <CONSOLE_STATUS+0x350>
    800024e4:	00e484b3          	add	s1,s1,a4
    800024e8:	0004a783          	lw	a5,0(s1)
    800024ec:	00e787b3          	add	a5,a5,a4
    800024f0:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800024f4:	00007517          	auipc	a0,0x7
    800024f8:	c7450513          	addi	a0,a0,-908 # 80009168 <CONSOLE_STATUS+0x158>
    800024fc:	00003097          	auipc	ra,0x3
    80002500:	fdc080e7          	jalr	-36(ra) # 800054d8 <_Z11printStringPKc>
            modCplus();
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80002504:	01813083          	ld	ra,24(sp)
    80002508:	01013403          	ld	s0,16(sp)
    8000250c:	00813483          	ld	s1,8(sp)
    80002510:	00013903          	ld	s2,0(sp)
    80002514:	02010113          	addi	sp,sp,32
    80002518:	00008067          	ret
            Threads_C_API_test();
    8000251c:	00002097          	auipc	ra,0x2
    80002520:	634080e7          	jalr	1588(ra) # 80004b50 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80002524:	00007517          	auipc	a0,0x7
    80002528:	c7450513          	addi	a0,a0,-908 # 80009198 <CONSOLE_STATUS+0x188>
    8000252c:	00003097          	auipc	ra,0x3
    80002530:	fac080e7          	jalr	-84(ra) # 800054d8 <_Z11printStringPKc>
            break;
    80002534:	fd1ff06f          	j	80002504 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80002538:	00001097          	auipc	ra,0x1
    8000253c:	4f8080e7          	jalr	1272(ra) # 80003a30 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80002540:	00007517          	auipc	a0,0x7
    80002544:	c9850513          	addi	a0,a0,-872 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80002548:	00003097          	auipc	ra,0x3
    8000254c:	f90080e7          	jalr	-112(ra) # 800054d8 <_Z11printStringPKc>
            break;
    80002550:	fb5ff06f          	j	80002504 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80002554:	00001097          	auipc	ra,0x1
    80002558:	d30080e7          	jalr	-720(ra) # 80003284 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    8000255c:	00007517          	auipc	a0,0x7
    80002560:	cbc50513          	addi	a0,a0,-836 # 80009218 <CONSOLE_STATUS+0x208>
    80002564:	00003097          	auipc	ra,0x3
    80002568:	f74080e7          	jalr	-140(ra) # 800054d8 <_Z11printStringPKc>
            break;
    8000256c:	f99ff06f          	j	80002504 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80002570:	00003097          	auipc	ra,0x3
    80002574:	924080e7          	jalr	-1756(ra) # 80004e94 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80002578:	00007517          	auipc	a0,0x7
    8000257c:	cf050513          	addi	a0,a0,-784 # 80009268 <CONSOLE_STATUS+0x258>
    80002580:	00003097          	auipc	ra,0x3
    80002584:	f58080e7          	jalr	-168(ra) # 800054d8 <_Z11printStringPKc>
            break;
    80002588:	f7dff06f          	j	80002504 <_Z8userMainv+0x80>
            System_Mode_test();
    8000258c:	00004097          	auipc	ra,0x4
    80002590:	10c080e7          	jalr	268(ra) # 80006698 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80002594:	00007517          	auipc	a0,0x7
    80002598:	d2c50513          	addi	a0,a0,-724 # 800092c0 <CONSOLE_STATUS+0x2b0>
    8000259c:	00003097          	auipc	ra,0x3
    800025a0:	f3c080e7          	jalr	-196(ra) # 800054d8 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800025a4:	00007517          	auipc	a0,0x7
    800025a8:	d3c50513          	addi	a0,a0,-708 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800025ac:	00003097          	auipc	ra,0x3
    800025b0:	f2c080e7          	jalr	-212(ra) # 800054d8 <_Z11printStringPKc>
            break;
    800025b4:	f51ff06f          	j	80002504 <_Z8userMainv+0x80>
            modCplus();
    800025b8:	00004097          	auipc	ra,0x4
    800025bc:	8b0080e7          	jalr	-1872(ra) # 80005e68 <_Z8modCplusv>
            break;
    800025c0:	f45ff06f          	j	80002504 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800025c4:	00007517          	auipc	a0,0x7
    800025c8:	d7450513          	addi	a0,a0,-652 # 80009338 <CONSOLE_STATUS+0x328>
    800025cc:	00003097          	auipc	ra,0x3
    800025d0:	f0c080e7          	jalr	-244(ra) # 800054d8 <_Z11printStringPKc>
    800025d4:	f31ff06f          	j	80002504 <_Z8userMainv+0x80>

00000000800025d8 <_ZN9Scheduler3putEP7_thread>:
#include "../h/Thread.hpp"

_thread* Scheduler::head = nullptr;
_thread* Scheduler::tail = nullptr;

void Scheduler::put(_thread* thread) {
    800025d8:	ff010113          	addi	sp,sp,-16
    800025dc:	00813423          	sd	s0,8(sp)
    800025e0:	01010413          	addi	s0,sp,16
    if (thread == nullptr) {
    800025e4:	04050063          	beqz	a0,80002624 <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    if (thread->state == _thread::FINISHED || thread->state == _thread::BLOCKED) {
    800025e8:	09052783          	lw	a5,144(a0)
    800025ec:	ffd7879b          	addiw	a5,a5,-3
    800025f0:	00100713          	li	a4,1
    800025f4:	02f77863          	bgeu	a4,a5,80002624 <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    thread->state = _thread::READY;
    800025f8:	00100793          	li	a5,1
    800025fc:	08f52823          	sw	a5,144(a0)
    thread->next = nullptr;
    80002600:	08053c23          	sd	zero,152(a0)

    if (head == nullptr) {
    80002604:	00009797          	auipc	a5,0x9
    80002608:	7047b783          	ld	a5,1796(a5) # 8000bd08 <_ZN9Scheduler4headE>
    8000260c:	02078263          	beqz	a5,80002630 <_ZN9Scheduler3putEP7_thread+0x58>
        head = thread;
        tail = thread;
    } else {
        tail->next = thread;
    80002610:	00009797          	auipc	a5,0x9
    80002614:	6f878793          	addi	a5,a5,1784 # 8000bd08 <_ZN9Scheduler4headE>
    80002618:	0087b703          	ld	a4,8(a5)
    8000261c:	08a73c23          	sd	a0,152(a4)
        tail = thread;
    80002620:	00a7b423          	sd	a0,8(a5)
    }
}
    80002624:	00813403          	ld	s0,8(sp)
    80002628:	01010113          	addi	sp,sp,16
    8000262c:	00008067          	ret
        head = thread;
    80002630:	00009797          	auipc	a5,0x9
    80002634:	6d878793          	addi	a5,a5,1752 # 8000bd08 <_ZN9Scheduler4headE>
    80002638:	00a7b023          	sd	a0,0(a5)
        tail = thread;
    8000263c:	00a7b423          	sd	a0,8(a5)
    80002640:	fe5ff06f          	j	80002624 <_ZN9Scheduler3putEP7_thread+0x4c>

0000000080002644 <_ZN9Scheduler3getEv>:

_thread* Scheduler::get() {
    80002644:	ff010113          	addi	sp,sp,-16
    80002648:	00813423          	sd	s0,8(sp)
    8000264c:	01010413          	addi	s0,sp,16
    if (head == nullptr) {
    80002650:	00009517          	auipc	a0,0x9
    80002654:	6b853503          	ld	a0,1720(a0) # 8000bd08 <_ZN9Scheduler4headE>
    80002658:	00050c63          	beqz	a0,80002670 <_ZN9Scheduler3getEv+0x2c>
        return nullptr;
    }

    _thread* thread = head;

    head = head->next;
    8000265c:	09853783          	ld	a5,152(a0)
    80002660:	00009717          	auipc	a4,0x9
    80002664:	6af73423          	sd	a5,1704(a4) # 8000bd08 <_ZN9Scheduler4headE>

    if (head == nullptr) {
    80002668:	00078a63          	beqz	a5,8000267c <_ZN9Scheduler3getEv+0x38>
        tail = nullptr;
    }

    thread->next = nullptr;
    8000266c:	08053c23          	sd	zero,152(a0)

    return thread;
}
    80002670:	00813403          	ld	s0,8(sp)
    80002674:	01010113          	addi	sp,sp,16
    80002678:	00008067          	ret
        tail = nullptr;
    8000267c:	00009797          	auipc	a5,0x9
    80002680:	6807ba23          	sd	zero,1684(a5) # 8000bd10 <_ZN9Scheduler4tailE>
    80002684:	fe9ff06f          	j	8000266c <_ZN9Scheduler3getEv+0x28>

0000000080002688 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    80002688:	ff010113          	addi	sp,sp,-16
    8000268c:	00813423          	sd	s0,8(sp)
    80002690:	01010413          	addi	s0,sp,16
    return head == nullptr;
    80002694:	00009517          	auipc	a0,0x9
    80002698:	67453503          	ld	a0,1652(a0) # 8000bd08 <_ZN9Scheduler4headE>
    8000269c:	00153513          	seqz	a0,a0
    800026a0:	00813403          	ld	s0,8(sp)
    800026a4:	01010113          	addi	sp,sp,16
    800026a8:	00008067          	ret

00000000800026ac <_Znwm>:
#include "../h/new.hpp"
#include "../h/syscall_c.hpp"

void* operator new(size_t size) {
    800026ac:	ff010113          	addi	sp,sp,-16
    800026b0:	00113423          	sd	ra,8(sp)
    800026b4:	00813023          	sd	s0,0(sp)
    800026b8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800026bc:	fffff097          	auipc	ra,0xfffff
    800026c0:	b3c080e7          	jalr	-1220(ra) # 800011f8 <_Z9mem_allocm>
}
    800026c4:	00813083          	ld	ra,8(sp)
    800026c8:	00013403          	ld	s0,0(sp)
    800026cc:	01010113          	addi	sp,sp,16
    800026d0:	00008067          	ret

00000000800026d4 <_Znam>:

void* operator new[](size_t size) {
    800026d4:	ff010113          	addi	sp,sp,-16
    800026d8:	00113423          	sd	ra,8(sp)
    800026dc:	00813023          	sd	s0,0(sp)
    800026e0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800026e4:	fffff097          	auipc	ra,0xfffff
    800026e8:	b14080e7          	jalr	-1260(ra) # 800011f8 <_Z9mem_allocm>
}
    800026ec:	00813083          	ld	ra,8(sp)
    800026f0:	00013403          	ld	s0,0(sp)
    800026f4:	01010113          	addi	sp,sp,16
    800026f8:	00008067          	ret

00000000800026fc <_ZdlPv>:

void operator delete(void* ptr) {
    800026fc:	ff010113          	addi	sp,sp,-16
    80002700:	00113423          	sd	ra,8(sp)
    80002704:	00813023          	sd	s0,0(sp)
    80002708:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    8000270c:	fffff097          	auipc	ra,0xfffff
    80002710:	b38080e7          	jalr	-1224(ra) # 80001244 <_Z8mem_freePv>
}
    80002714:	00813083          	ld	ra,8(sp)
    80002718:	00013403          	ld	s0,0(sp)
    8000271c:	01010113          	addi	sp,sp,16
    80002720:	00008067          	ret

0000000080002724 <_ZdaPv>:

void operator delete[](void* ptr) {
    80002724:	ff010113          	addi	sp,sp,-16
    80002728:	00113423          	sd	ra,8(sp)
    8000272c:	00813023          	sd	s0,0(sp)
    80002730:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80002734:	fffff097          	auipc	ra,0xfffff
    80002738:	b10080e7          	jalr	-1264(ra) # 80001244 <_Z8mem_freePv>
    8000273c:	00813083          	ld	ra,8(sp)
    80002740:	00013403          	ld	s0,0(sp)
    80002744:	01010113          	addi	sp,sp,16
    80002748:	00008067          	ret

000000008000274c <_ZL15userMainWrapperPv>:
extern "C" void supervisorTrap();
extern void userMain();

static volatile bool userMainFinished = false;

static void userMainWrapper(void*) {
    8000274c:	ff010113          	addi	sp,sp,-16
    80002750:	00113423          	sd	ra,8(sp)
    80002754:	00813023          	sd	s0,0(sp)
    80002758:	01010413          	addi	s0,sp,16
    userMain();
    8000275c:	00000097          	auipc	ra,0x0
    80002760:	d28080e7          	jalr	-728(ra) # 80002484 <_Z8userMainv>
    userMainFinished = true;
    80002764:	00100793          	li	a5,1
    80002768:	00009717          	auipc	a4,0x9
    8000276c:	5af70823          	sb	a5,1456(a4) # 8000bd18 <_ZL16userMainFinished>
    thread_exit();
    80002770:	fffff097          	auipc	ra,0xfffff
    80002774:	bd8080e7          	jalr	-1064(ra) # 80001348 <_Z11thread_exitv>
}
    80002778:	00813083          	ld	ra,8(sp)
    8000277c:	00013403          	ld	s0,0(sp)
    80002780:	01010113          	addi	sp,sp,16
    80002784:	00008067          	ret

0000000080002788 <main>:

int main() {
    80002788:	f3010113          	addi	sp,sp,-208
    8000278c:	0c113423          	sd	ra,200(sp)
    80002790:	0c813023          	sd	s0,192(sp)
    80002794:	0a913c23          	sd	s1,184(sp)
    80002798:	0d010413          	addi	s0,sp,208
    Riscv::w_stvec((uint64)&supervisorTrap);
    8000279c:	00009797          	auipc	a5,0x9
    800027a0:	4ec7b783          	ld	a5,1260(a5) # 8000bc88 <_GLOBAL_OFFSET_TABLE_+0x20>
        asm volatile("csrw stvec, %0" : : "r"(x));//adresa prekidne rutine, da bi skocilo na supervisorTrap
    800027a4:	10579073          	csrw	stvec,a5
        asm volatile("csrs sstatus, %0" : : "r"(mask));//omoguci prekide
    800027a8:	00200793          	li	a5,2
    800027ac:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    _thread mainThread(nullptr, nullptr, nullptr);//poziv konstruktora
    800027b0:	00000693          	li	a3,0
    800027b4:	00000613          	li	a2,0
    800027b8:	00000593          	li	a1,0
    800027bc:	f3840493          	addi	s1,s0,-200
    800027c0:	00048513          	mv	a0,s1
    800027c4:	00000097          	auipc	ra,0x0
    800027c8:	8d8080e7          	jalr	-1832(ra) # 8000209c <_ZN7_threadC1EPFvPvES0_S0_>
    mainThread.setState(_thread::RUNNING);
    800027cc:	00200593          	li	a1,2
    800027d0:	00048513          	mv	a0,s1
    800027d4:	00000097          	auipc	ra,0x0
    800027d8:	c78080e7          	jalr	-904(ra) # 8000244c <_ZN7_thread8setStateENS_5StateE>
    _thread::running = &mainThread;//pravimo main nit zbog dispatch-a, jer nemamo running na pocetku, i scheduler radi samo sa _thread
    800027dc:	00009797          	auipc	a5,0x9
    800027e0:	4a47b783          	ld	a5,1188(a5) # 8000bc80 <_GLOBAL_OFFSET_TABLE_+0x18>
    800027e4:	0097b023          	sd	s1,0(a5)

    thread_t userThread = nullptr;
    800027e8:	f2043823          	sd	zero,-208(s0)
    int ret = thread_create(&userThread, userMainWrapper, nullptr);
    800027ec:	00000613          	li	a2,0
    800027f0:	00000597          	auipc	a1,0x0
    800027f4:	f5c58593          	addi	a1,a1,-164 # 8000274c <_ZL15userMainWrapperPv>
    800027f8:	f3040513          	addi	a0,s0,-208
    800027fc:	fffff097          	auipc	ra,0xfffff
    80002800:	a88080e7          	jalr	-1400(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>

    if (ret < 0 || userThread == nullptr) {
    80002804:	00054663          	bltz	a0,80002810 <main+0x88>
    80002808:	f3043783          	ld	a5,-208(s0)
    8000280c:	02079063          	bnez	a5,8000282c <main+0xa4>
        volatile uint32* qemu = (uint32*)0x100000;
        *qemu = 0x5555;
    80002810:	00100737          	lui	a4,0x100
    80002814:	000057b7          	lui	a5,0x5
    80002818:	5557879b          	addiw	a5,a5,1365
    8000281c:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
        return ret;
    80002820:	02c0006f          	j	8000284c <main+0xc4>
    }

    while (!userMainFinished) {
        thread_dispatch();
    80002824:	fffff097          	auipc	ra,0xfffff
    80002828:	b64080e7          	jalr	-1180(ra) # 80001388 <_Z15thread_dispatchv>
    while (!userMainFinished) {
    8000282c:	00009797          	auipc	a5,0x9
    80002830:	4ec7c783          	lbu	a5,1260(a5) # 8000bd18 <_ZL16userMainFinished>
    80002834:	fe0788e3          	beqz	a5,80002824 <main+0x9c>
    }

    volatile uint32* qemu = (uint32*)0x100000;
    *qemu = 0x5555;
    80002838:	00100737          	lui	a4,0x100
    8000283c:	000057b7          	lui	a5,0x5
    80002840:	5557879b          	addiw	a5,a5,1365
    80002844:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>

    return 0;
    80002848:	00000513          	li	a0,0
}
    8000284c:	0c813083          	ld	ra,200(sp)
    80002850:	0c013403          	ld	s0,192(sp)
    80002854:	0b813483          	ld	s1,184(sp)
    80002858:	0d010113          	addi	sp,sp,208
    8000285c:	00008067          	ret

0000000080002860 <_ZN6ThreadD1Ev>:
    this->myHandle = nullptr;
    this->body = nullptr;
    this->arg = nullptr;
}

Thread::~Thread() {
    80002860:	ff010113          	addi	sp,sp,-16
    80002864:	00813423          	sd	s0,8(sp)
    80002868:	01010413          	addi	s0,sp,16
}
    8000286c:	00813403          	ld	s0,8(sp)
    80002870:	01010113          	addi	sp,sp,16
    80002874:	00008067          	ret

0000000080002878 <_ZN6Thread13threadWrapperEPv>:
}

void Thread::threadWrapper(void* thread) {
    Thread* t = (Thread*)thread;

    if (t != nullptr) {
    80002878:	02050863          	beqz	a0,800028a8 <_ZN6Thread13threadWrapperEPv+0x30>
void Thread::threadWrapper(void* thread) {
    8000287c:	ff010113          	addi	sp,sp,-16
    80002880:	00113423          	sd	ra,8(sp)
    80002884:	00813023          	sd	s0,0(sp)
    80002888:	01010413          	addi	s0,sp,16
        t->run();
    8000288c:	00053783          	ld	a5,0(a0)
    80002890:	0107b783          	ld	a5,16(a5) # 5010 <_entry-0x7fffaff0>
    80002894:	000780e7          	jalr	a5
    }
}
    80002898:	00813083          	ld	ra,8(sp)
    8000289c:	00013403          	ld	s0,0(sp)
    800028a0:	01010113          	addi	sp,sp,16
    800028a4:	00008067          	ret
    800028a8:	00008067          	ret

00000000800028ac <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800028ac:	ff010113          	addi	sp,sp,-16
    800028b0:	00113423          	sd	ra,8(sp)
    800028b4:	00813023          	sd	s0,0(sp)
    800028b8:	01010413          	addi	s0,sp,16
}
    800028bc:	00000097          	auipc	ra,0x0
    800028c0:	e40080e7          	jalr	-448(ra) # 800026fc <_ZdlPv>
    800028c4:	00813083          	ld	ra,8(sp)
    800028c8:	00013403          	ld	s0,0(sp)
    800028cc:	01010113          	addi	sp,sp,16
    800028d0:	00008067          	ret

00000000800028d4 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800028d4:	00009797          	auipc	a5,0x9
    800028d8:	1ac78793          	addi	a5,a5,428 # 8000ba80 <_ZTV9Semaphore+0x10>
    800028dc:	00f53023          	sd	a5,0(a0)
    if (myHandle != nullptr) {
    800028e0:	00853503          	ld	a0,8(a0)
    800028e4:	02050663          	beqz	a0,80002910 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    800028e8:	ff010113          	addi	sp,sp,-16
    800028ec:	00113423          	sd	ra,8(sp)
    800028f0:	00813023          	sd	s0,0(sp)
    800028f4:	01010413          	addi	s0,sp,16
        sem_close(myHandle);
    800028f8:	fffff097          	auipc	ra,0xfffff
    800028fc:	b8c080e7          	jalr	-1140(ra) # 80001484 <_Z9sem_closeP4_sem>
    }
}
    80002900:	00813083          	ld	ra,8(sp)
    80002904:	00013403          	ld	s0,0(sp)
    80002908:	01010113          	addi	sp,sp,16
    8000290c:	00008067          	ret
    80002910:	00008067          	ret

0000000080002914 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002914:	fe010113          	addi	sp,sp,-32
    80002918:	00113c23          	sd	ra,24(sp)
    8000291c:	00813823          	sd	s0,16(sp)
    80002920:	00913423          	sd	s1,8(sp)
    80002924:	02010413          	addi	s0,sp,32
    80002928:	00050493          	mv	s1,a0
}
    8000292c:	00000097          	auipc	ra,0x0
    80002930:	fa8080e7          	jalr	-88(ra) # 800028d4 <_ZN9SemaphoreD1Ev>
    80002934:	00048513          	mv	a0,s1
    80002938:	00000097          	auipc	ra,0x0
    8000293c:	dc4080e7          	jalr	-572(ra) # 800026fc <_ZdlPv>
    80002940:	01813083          	ld	ra,24(sp)
    80002944:	01013403          	ld	s0,16(sp)
    80002948:	00813483          	ld	s1,8(sp)
    8000294c:	02010113          	addi	sp,sp,32
    80002950:	00008067          	ret

0000000080002954 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    80002954:	ff010113          	addi	sp,sp,-16
    80002958:	00813423          	sd	s0,8(sp)
    8000295c:	01010413          	addi	s0,sp,16
    80002960:	00009797          	auipc	a5,0x9
    80002964:	0f878793          	addi	a5,a5,248 # 8000ba58 <_ZTV6Thread+0x10>
    80002968:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    8000296c:	00053423          	sd	zero,8(a0)
    this->body = body;
    80002970:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80002974:	00c53c23          	sd	a2,24(a0)
}
    80002978:	00813403          	ld	s0,8(sp)
    8000297c:	01010113          	addi	sp,sp,16
    80002980:	00008067          	ret

0000000080002984 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002984:	ff010113          	addi	sp,sp,-16
    80002988:	00813423          	sd	s0,8(sp)
    8000298c:	01010413          	addi	s0,sp,16
    80002990:	00009797          	auipc	a5,0x9
    80002994:	0c878793          	addi	a5,a5,200 # 8000ba58 <_ZTV6Thread+0x10>
    80002998:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    8000299c:	00053423          	sd	zero,8(a0)
    this->body = nullptr;
    800029a0:	00053823          	sd	zero,16(a0)
    this->arg = nullptr;
    800029a4:	00053c23          	sd	zero,24(a0)
}
    800029a8:	00813403          	ld	s0,8(sp)
    800029ac:	01010113          	addi	sp,sp,16
    800029b0:	00008067          	ret

00000000800029b4 <_ZN6Thread5startEv>:
int Thread::start() {
    800029b4:	ff010113          	addi	sp,sp,-16
    800029b8:	00113423          	sd	ra,8(sp)
    800029bc:	00813023          	sd	s0,0(sp)
    800029c0:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    800029c4:	01053583          	ld	a1,16(a0)
    800029c8:	02058263          	beqz	a1,800029ec <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    800029cc:	01853603          	ld	a2,24(a0)
    800029d0:	00850513          	addi	a0,a0,8
    800029d4:	fffff097          	auipc	ra,0xfffff
    800029d8:	8b0080e7          	jalr	-1872(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
}
    800029dc:	00813083          	ld	ra,8(sp)
    800029e0:	00013403          	ld	s0,0(sp)
    800029e4:	01010113          	addi	sp,sp,16
    800029e8:	00008067          	ret
    return thread_create(&myHandle, Thread::threadWrapper, this);//kada korisnik ocekuje da se izvrsi run(), pa se u thread wrapper poziva run
    800029ec:	00050613          	mv	a2,a0
    800029f0:	00000597          	auipc	a1,0x0
    800029f4:	e8858593          	addi	a1,a1,-376 # 80002878 <_ZN6Thread13threadWrapperEPv>
    800029f8:	00850513          	addi	a0,a0,8
    800029fc:	fffff097          	auipc	ra,0xfffff
    80002a00:	888080e7          	jalr	-1912(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    80002a04:	fd9ff06f          	j	800029dc <_ZN6Thread5startEv+0x28>

0000000080002a08 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002a08:	ff010113          	addi	sp,sp,-16
    80002a0c:	00113423          	sd	ra,8(sp)
    80002a10:	00813023          	sd	s0,0(sp)
    80002a14:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002a18:	fffff097          	auipc	ra,0xfffff
    80002a1c:	970080e7          	jalr	-1680(ra) # 80001388 <_Z15thread_dispatchv>
}
    80002a20:	00813083          	ld	ra,8(sp)
    80002a24:	00013403          	ld	s0,0(sp)
    80002a28:	01010113          	addi	sp,sp,16
    80002a2c:	00008067          	ret

0000000080002a30 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002a30:	ff010113          	addi	sp,sp,-16
    80002a34:	00113423          	sd	ra,8(sp)
    80002a38:	00813023          	sd	s0,0(sp)
    80002a3c:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002a40:	fffff097          	auipc	ra,0xfffff
    80002a44:	b8c080e7          	jalr	-1140(ra) # 800015cc <_Z10time_sleepm>
}
    80002a48:	00813083          	ld	ra,8(sp)
    80002a4c:	00013403          	ld	s0,0(sp)
    80002a50:	01010113          	addi	sp,sp,16
    80002a54:	00008067          	ret

0000000080002a58 <_ZN6Thread11getThreadIdEv>:
int Thread::getThreadId() {
    80002a58:	ff010113          	addi	sp,sp,-16
    80002a5c:	00113423          	sd	ra,8(sp)
    80002a60:	00813023          	sd	s0,0(sp)
    80002a64:	01010413          	addi	s0,sp,16
    return ::getThreadId();
    80002a68:	fffff097          	auipc	ra,0xfffff
    80002a6c:	9a0080e7          	jalr	-1632(ra) # 80001408 <_Z11getThreadIdv>
}
    80002a70:	00813083          	ld	ra,8(sp)
    80002a74:	00013403          	ld	s0,0(sp)
    80002a78:	01010113          	addi	sp,sp,16
    80002a7c:	00008067          	ret

0000000080002a80 <_ZN6Thread17setMaximumThreadsEi>:
void Thread::setMaximumThreads(int num) {
    80002a80:	ff010113          	addi	sp,sp,-16
    80002a84:	00113423          	sd	ra,8(sp)
    80002a88:	00813023          	sd	s0,0(sp)
    80002a8c:	01010413          	addi	s0,sp,16
    ::setMaximumThreads(num);
    80002a90:	fffff097          	auipc	ra,0xfffff
    80002a94:	9b8080e7          	jalr	-1608(ra) # 80001448 <_Z17setMaximumThreadsi>
}
    80002a98:	00813083          	ld	ra,8(sp)
    80002a9c:	00013403          	ld	s0,0(sp)
    80002aa0:	01010113          	addi	sp,sp,16
    80002aa4:	00008067          	ret

0000000080002aa8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80002aa8:	ff010113          	addi	sp,sp,-16
    80002aac:	00113423          	sd	ra,8(sp)
    80002ab0:	00813023          	sd	s0,0(sp)
    80002ab4:	01010413          	addi	s0,sp,16
    80002ab8:	00009797          	auipc	a5,0x9
    80002abc:	fc878793          	addi	a5,a5,-56 # 8000ba80 <_ZTV9Semaphore+0x10>
    80002ac0:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002ac4:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002ac8:	00850513          	addi	a0,a0,8
    80002acc:	fffff097          	auipc	ra,0xfffff
    80002ad0:	8f8080e7          	jalr	-1800(ra) # 800013c4 <_Z8sem_openPP4_semj>
}
    80002ad4:	00813083          	ld	ra,8(sp)
    80002ad8:	00013403          	ld	s0,0(sp)
    80002adc:	01010113          	addi	sp,sp,16
    80002ae0:	00008067          	ret

0000000080002ae4 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002ae4:	ff010113          	addi	sp,sp,-16
    80002ae8:	00113423          	sd	ra,8(sp)
    80002aec:	00813023          	sd	s0,0(sp)
    80002af0:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002af4:	00853503          	ld	a0,8(a0)
    80002af8:	fffff097          	auipc	ra,0xfffff
    80002afc:	9cc080e7          	jalr	-1588(ra) # 800014c4 <_Z8sem_waitP4_sem>
}
    80002b00:	00813083          	ld	ra,8(sp)
    80002b04:	00013403          	ld	s0,0(sp)
    80002b08:	01010113          	addi	sp,sp,16
    80002b0c:	00008067          	ret

0000000080002b10 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002b10:	ff010113          	addi	sp,sp,-16
    80002b14:	00113423          	sd	ra,8(sp)
    80002b18:	00813023          	sd	s0,0(sp)
    80002b1c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002b20:	00853503          	ld	a0,8(a0)
    80002b24:	fffff097          	auipc	ra,0xfffff
    80002b28:	9e0080e7          	jalr	-1568(ra) # 80001504 <_Z10sem_signalP4_sem>
}
    80002b2c:	00813083          	ld	ra,8(sp)
    80002b30:	00013403          	ld	s0,0(sp)
    80002b34:	01010113          	addi	sp,sp,16
    80002b38:	00008067          	ret

0000000080002b3c <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    80002b3c:	fe010113          	addi	sp,sp,-32
    80002b40:	00113c23          	sd	ra,24(sp)
    80002b44:	00813823          	sd	s0,16(sp)
    80002b48:	00913423          	sd	s1,8(sp)
    80002b4c:	01213023          	sd	s2,0(sp)
    80002b50:	02010413          	addi	s0,sp,32
    80002b54:	00050493          	mv	s1,a0
    80002b58:	00058913          	mv	s2,a1
    80002b5c:	00000097          	auipc	ra,0x0
    80002b60:	e28080e7          	jalr	-472(ra) # 80002984 <_ZN6ThreadC1Ev>
    80002b64:	00009797          	auipc	a5,0x9
    80002b68:	ec478793          	addi	a5,a5,-316 # 8000ba28 <_ZTV14PeriodicThread+0x10>
    80002b6c:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80002b70:	0324b023          	sd	s2,32(s1)
}
    80002b74:	01813083          	ld	ra,24(sp)
    80002b78:	01013403          	ld	s0,16(sp)
    80002b7c:	00813483          	ld	s1,8(sp)
    80002b80:	00013903          	ld	s2,0(sp)
    80002b84:	02010113          	addi	sp,sp,32
    80002b88:	00008067          	ret

0000000080002b8c <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002b8c:	ff010113          	addi	sp,sp,-16
    80002b90:	00813423          	sd	s0,8(sp)
    80002b94:	01010413          	addi	s0,sp,16
    /*
     * PeriodicThread je deo zadatka 4.
     * Pošto ga ne radiš, ovo ostaje prazno.
     */
}
    80002b98:	00813403          	ld	s0,8(sp)
    80002b9c:	01010113          	addi	sp,sp,16
    80002ba0:	00008067          	ret

0000000080002ba4 <_ZN7Console4getcEv>:

char Console::getc() {
    80002ba4:	ff010113          	addi	sp,sp,-16
    80002ba8:	00113423          	sd	ra,8(sp)
    80002bac:	00813023          	sd	s0,0(sp)
    80002bb0:	01010413          	addi	s0,sp,16
    return ::getc();
    80002bb4:	fffff097          	auipc	ra,0xfffff
    80002bb8:	a58080e7          	jalr	-1448(ra) # 8000160c <_Z4getcv>
}
    80002bbc:	00813083          	ld	ra,8(sp)
    80002bc0:	00013403          	ld	s0,0(sp)
    80002bc4:	01010113          	addi	sp,sp,16
    80002bc8:	00008067          	ret

0000000080002bcc <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002bcc:	ff010113          	addi	sp,sp,-16
    80002bd0:	00113423          	sd	ra,8(sp)
    80002bd4:	00813023          	sd	s0,0(sp)
    80002bd8:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002bdc:	fffff097          	auipc	ra,0xfffff
    80002be0:	a70080e7          	jalr	-1424(ra) # 8000164c <_Z4putcc>
    80002be4:	00813083          	ld	ra,8(sp)
    80002be8:	00013403          	ld	s0,0(sp)
    80002bec:	01010113          	addi	sp,sp,16
    80002bf0:	00008067          	ret

0000000080002bf4 <_ZN6Thread3runEv>:
    static void setMaximumThreads(int num);
    static int getThreadId();
protected:
    Thread();

    virtual void run() {}
    80002bf4:	ff010113          	addi	sp,sp,-16
    80002bf8:	00813423          	sd	s0,8(sp)
    80002bfc:	01010413          	addi	s0,sp,16
    80002c00:	00813403          	ld	s0,8(sp)
    80002c04:	01010113          	addi	sp,sp,16
    80002c08:	00008067          	ret

0000000080002c0c <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate();

protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    80002c0c:	ff010113          	addi	sp,sp,-16
    80002c10:	00813423          	sd	s0,8(sp)
    80002c14:	01010413          	addi	s0,sp,16
    80002c18:	00813403          	ld	s0,8(sp)
    80002c1c:	01010113          	addi	sp,sp,16
    80002c20:	00008067          	ret

0000000080002c24 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002c24:	ff010113          	addi	sp,sp,-16
    80002c28:	00813423          	sd	s0,8(sp)
    80002c2c:	01010413          	addi	s0,sp,16
    80002c30:	00009797          	auipc	a5,0x9
    80002c34:	df878793          	addi	a5,a5,-520 # 8000ba28 <_ZTV14PeriodicThread+0x10>
    80002c38:	00f53023          	sd	a5,0(a0)
    80002c3c:	00813403          	ld	s0,8(sp)
    80002c40:	01010113          	addi	sp,sp,16
    80002c44:	00008067          	ret

0000000080002c48 <_ZN14PeriodicThreadD0Ev>:
    80002c48:	ff010113          	addi	sp,sp,-16
    80002c4c:	00113423          	sd	ra,8(sp)
    80002c50:	00813023          	sd	s0,0(sp)
    80002c54:	01010413          	addi	s0,sp,16
    80002c58:	00009797          	auipc	a5,0x9
    80002c5c:	dd078793          	addi	a5,a5,-560 # 8000ba28 <_ZTV14PeriodicThread+0x10>
    80002c60:	00f53023          	sd	a5,0(a0)
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	a98080e7          	jalr	-1384(ra) # 800026fc <_ZdlPv>
    80002c6c:	00813083          	ld	ra,8(sp)
    80002c70:	00013403          	ld	s0,0(sp)
    80002c74:	01010113          	addi	sp,sp,16
    80002c78:	00008067          	ret

0000000080002c7c <_ZN15MemoryAllocatorC1Ev>:
#include "../h/MemoryAllocator.hpp"

MemoryAllocator::MemoryAllocator() : freeHead(nullptr), initialized(false) {}
    80002c7c:	ff010113          	addi	sp,sp,-16
    80002c80:	00813423          	sd	s0,8(sp)
    80002c84:	01010413          	addi	s0,sp,16
    80002c88:	00053023          	sd	zero,0(a0)
    80002c8c:	00050423          	sb	zero,8(a0)
    80002c90:	00813403          	ld	s0,8(sp)
    80002c94:	01010113          	addi	sp,sp,16
    80002c98:	00008067          	ret

0000000080002c9c <_Z41__static_initialization_and_destruction_0ii>:
            block->next->prev = block;
        }
        nextBlock->next = nullptr;
        nextBlock->prev = nullptr;
    }
    80002c9c:	00100793          	li	a5,1
    80002ca0:	00f50463          	beq	a0,a5,80002ca8 <_Z41__static_initialization_and_destruction_0ii+0xc>
    80002ca4:	00008067          	ret
    80002ca8:	000107b7          	lui	a5,0x10
    80002cac:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002cb0:	fef59ae3          	bne	a1,a5,80002ca4 <_Z41__static_initialization_and_destruction_0ii+0x8>
    80002cb4:	ff010113          	addi	sp,sp,-16
    80002cb8:	00113423          	sd	ra,8(sp)
    80002cbc:	00813023          	sd	s0,0(sp)
    80002cc0:	01010413          	addi	s0,sp,16
MemoryAllocator MemoryAllocator::instance;
    80002cc4:	00009517          	auipc	a0,0x9
    80002cc8:	05c50513          	addi	a0,a0,92 # 8000bd20 <_ZN15MemoryAllocator8instanceE>
    80002ccc:	00000097          	auipc	ra,0x0
    80002cd0:	fb0080e7          	jalr	-80(ra) # 80002c7c <_ZN15MemoryAllocatorC1Ev>
    80002cd4:	00813083          	ld	ra,8(sp)
    80002cd8:	00013403          	ld	s0,0(sp)
    80002cdc:	01010113          	addi	sp,sp,16
    80002ce0:	00008067          	ret

0000000080002ce4 <_ZN15MemoryAllocator11getInstanceEv>:
MemoryAllocator& MemoryAllocator::getInstance() {
    80002ce4:	ff010113          	addi	sp,sp,-16
    80002ce8:	00813423          	sd	s0,8(sp)
    80002cec:	01010413          	addi	s0,sp,16
}
    80002cf0:	00009517          	auipc	a0,0x9
    80002cf4:	03050513          	addi	a0,a0,48 # 8000bd20 <_ZN15MemoryAllocator8instanceE>
    80002cf8:	00813403          	ld	s0,8(sp)
    80002cfc:	01010113          	addi	sp,sp,16
    80002d00:	00008067          	ret

0000000080002d04 <_ZN15MemoryAllocator4initEv>:
void MemoryAllocator::init() {
    80002d04:	ff010113          	addi	sp,sp,-16
    80002d08:	00813423          	sd	s0,8(sp)
    80002d0c:	01010413          	addi	s0,sp,16
    if (initialized) return;
    80002d10:	00854783          	lbu	a5,8(a0)
    80002d14:	04079263          	bnez	a5,80002d58 <_ZN15MemoryAllocator4initEv+0x54>
    uint64 heapStart = (uint64) HEAP_START_ADDR;
    80002d18:	00009797          	auipc	a5,0x9
    80002d1c:	f607b783          	ld	a5,-160(a5) # 8000bc78 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002d20:	0007b703          	ld	a4,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002d24:	00009797          	auipc	a5,0x9
    80002d28:	f747b783          	ld	a5,-140(a5) # 8000bc98 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002d2c:	0007b783          	ld	a5,0(a5)
    size_t heapSize = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002d30:	40e787b3          	sub	a5,a5,a4
    80002d34:	0067d793          	srli	a5,a5,0x6
    freeHead = (FreeBlock*) heapStart;
    80002d38:	00e53023          	sd	a4,0(a0)
    freeHead->size = heapSize;
    80002d3c:	00f73023          	sd	a5,0(a4)
    freeHead->next = nullptr;
    80002d40:	00053783          	ld	a5,0(a0)
    80002d44:	0007b423          	sd	zero,8(a5)
    freeHead->prev = nullptr;
    80002d48:	00053783          	ld	a5,0(a0)
    80002d4c:	0007b823          	sd	zero,16(a5)
    initialized = true;
    80002d50:	00100793          	li	a5,1
    80002d54:	00f50423          	sb	a5,8(a0)
}
    80002d58:	00813403          	ld	s0,8(sp)
    80002d5c:	01010113          	addi	sp,sp,16
    80002d60:	00008067          	ret

0000000080002d64 <_ZN15MemoryAllocator6mallocEm>:
void* MemoryAllocator::malloc(size_t numBlocks) {
    80002d64:	fe010113          	addi	sp,sp,-32
    80002d68:	00113c23          	sd	ra,24(sp)
    80002d6c:	00813823          	sd	s0,16(sp)
    80002d70:	00913423          	sd	s1,8(sp)
    80002d74:	01213023          	sd	s2,0(sp)
    80002d78:	02010413          	addi	s0,sp,32
    80002d7c:	00050913          	mv	s2,a0
    80002d80:	00058493          	mv	s1,a1
    init();
    80002d84:	00000097          	auipc	ra,0x0
    80002d88:	f80080e7          	jalr	-128(ra) # 80002d04 <_ZN15MemoryAllocator4initEv>
    if (numBlocks == 0) return nullptr;
    80002d8c:	0c048863          	beqz	s1,80002e5c <_ZN15MemoryAllocator6mallocEm+0xf8>
    size_t neededBlocks = numBlocks + 1;
    80002d90:	00148593          	addi	a1,s1,1
    FreeBlock* current = freeHead;
    80002d94:	00093503          	ld	a0,0(s2)
    while(current != nullptr && current->size < neededBlocks){
    80002d98:	00050a63          	beqz	a0,80002dac <_ZN15MemoryAllocator6mallocEm+0x48>
    80002d9c:	00053783          	ld	a5,0(a0)
    80002da0:	00b7f663          	bgeu	a5,a1,80002dac <_ZN15MemoryAllocator6mallocEm+0x48>
        current = current->next;
    80002da4:	00853503          	ld	a0,8(a0)
    while(current != nullptr && current->size < neededBlocks){
    80002da8:	ff1ff06f          	j	80002d98 <_ZN15MemoryAllocator6mallocEm+0x34>
    if (current == nullptr){
    80002dac:	04050063          	beqz	a0,80002dec <_ZN15MemoryAllocator6mallocEm+0x88>
    size_t remainingBlocks = current->size - neededBlocks;
    80002db0:	00053783          	ld	a5,0(a0)
    80002db4:	40b787b3          	sub	a5,a5,a1
    if (remainingBlocks >= 2){
    80002db8:	00100713          	li	a4,1
    80002dbc:	04f76463          	bltu	a4,a5,80002e04 <_ZN15MemoryAllocator6mallocEm+0xa0>
    if (current->prev != nullptr){
    80002dc0:	01053783          	ld	a5,16(a0)
    80002dc4:	08078663          	beqz	a5,80002e50 <_ZN15MemoryAllocator6mallocEm+0xec>
        current->prev->next = current->next;
    80002dc8:	00853703          	ld	a4,8(a0)
    80002dcc:	00e7b423          	sd	a4,8(a5)
    if (current->next != nullptr){
    80002dd0:	00853783          	ld	a5,8(a0)
    80002dd4:	00078663          	beqz	a5,80002de0 <_ZN15MemoryAllocator6mallocEm+0x7c>
        current->next->prev = current->prev;
    80002dd8:	01053703          	ld	a4,16(a0)
    80002ddc:	00e7b823          	sd	a4,16(a5)
    current->next = nullptr;
    80002de0:	00053423          	sd	zero,8(a0)
    current->prev = nullptr;
    80002de4:	00053823          	sd	zero,16(a0)
    return (void*) ((char*) current +MEM_BLOCK_SIZE);
    80002de8:	04050513          	addi	a0,a0,64
}
    80002dec:	01813083          	ld	ra,24(sp)
    80002df0:	01013403          	ld	s0,16(sp)
    80002df4:	00813483          	ld	s1,8(sp)
    80002df8:	00013903          	ld	s2,0(sp)
    80002dfc:	02010113          	addi	sp,sp,32
    80002e00:	00008067          	ret
        FreeBlock* newFree = (FreeBlock*) ((char*) current + neededBlocks * MEM_BLOCK_SIZE);
    80002e04:	00659713          	slli	a4,a1,0x6
    80002e08:	00e50733          	add	a4,a0,a4
        newFree->size = remainingBlocks;
    80002e0c:	00f73023          	sd	a5,0(a4)
        newFree->next = current->next;
    80002e10:	00853783          	ld	a5,8(a0)
    80002e14:	00f73423          	sd	a5,8(a4)
        newFree->prev = current->prev;
    80002e18:	01053783          	ld	a5,16(a0)
    80002e1c:	00f73823          	sd	a5,16(a4)
        if (current->prev != nullptr){
    80002e20:	02078463          	beqz	a5,80002e48 <_ZN15MemoryAllocator6mallocEm+0xe4>
            current->prev->next = newFree;
    80002e24:	00e7b423          	sd	a4,8(a5)
        if (current->next != nullptr){
    80002e28:	00853783          	ld	a5,8(a0)
    80002e2c:	00078463          	beqz	a5,80002e34 <_ZN15MemoryAllocator6mallocEm+0xd0>
            current->next->prev = newFree;
    80002e30:	00e7b823          	sd	a4,16(a5)
        current->size = neededBlocks;
    80002e34:	00b53023          	sd	a1,0(a0)
        current->next = nullptr;
    80002e38:	00053423          	sd	zero,8(a0)
        current->prev = nullptr;
    80002e3c:	00053823          	sd	zero,16(a0)
        return (void*) ((char*) current + MEM_BLOCK_SIZE);
    80002e40:	04050513          	addi	a0,a0,64
    80002e44:	fa9ff06f          	j	80002dec <_ZN15MemoryAllocator6mallocEm+0x88>
            freeHead = newFree;
    80002e48:	00e93023          	sd	a4,0(s2)
    80002e4c:	fddff06f          	j	80002e28 <_ZN15MemoryAllocator6mallocEm+0xc4>
        freeHead = current->next;
    80002e50:	00853783          	ld	a5,8(a0)
    80002e54:	00f93023          	sd	a5,0(s2)
    80002e58:	f79ff06f          	j	80002dd0 <_ZN15MemoryAllocator6mallocEm+0x6c>
    if (numBlocks == 0) return nullptr;
    80002e5c:	00000513          	li	a0,0
    80002e60:	f8dff06f          	j	80002dec <_ZN15MemoryAllocator6mallocEm+0x88>

0000000080002e64 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>:
void MemoryAllocator::tryToJoin(FreeBlock *block) {
    80002e64:	ff010113          	addi	sp,sp,-16
    80002e68:	00813423          	sd	s0,8(sp)
    80002e6c:	01010413          	addi	s0,sp,16
    if (block == nullptr || block->next == nullptr) return;
    80002e70:	00058e63          	beqz	a1,80002e8c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    80002e74:	0085b783          	ld	a5,8(a1)
    80002e78:	00078a63          	beqz	a5,80002e8c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    char* endOfBlock = (char*) block + block->size * MEM_BLOCK_SIZE;
    80002e7c:	0005b683          	ld	a3,0(a1)
    80002e80:	00669713          	slli	a4,a3,0x6
    80002e84:	00e58733          	add	a4,a1,a4
    if (endOfBlock == (char*) block->next){
    80002e88:	00e78863          	beq	a5,a4,80002e98 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x34>
    80002e8c:	00813403          	ld	s0,8(sp)
    80002e90:	01010113          	addi	sp,sp,16
    80002e94:	00008067          	ret
        block->size += nextBlock->size;
    80002e98:	0007b703          	ld	a4,0(a5)
    80002e9c:	00e686b3          	add	a3,a3,a4
    80002ea0:	00d5b023          	sd	a3,0(a1)
        block->next = nextBlock->next;
    80002ea4:	0087b703          	ld	a4,8(a5)
    80002ea8:	00e5b423          	sd	a4,8(a1)
        if (block->next != nullptr){
    80002eac:	00070463          	beqz	a4,80002eb4 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x50>
            block->next->prev = block;
    80002eb0:	00b73823          	sd	a1,16(a4)
        nextBlock->next = nullptr;
    80002eb4:	0007b423          	sd	zero,8(a5)
        nextBlock->prev = nullptr;
    80002eb8:	0007b823          	sd	zero,16(a5)
    80002ebc:	fd1ff06f          	j	80002e8c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>

0000000080002ec0 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void* ptr){
    80002ec0:	fd010113          	addi	sp,sp,-48
    80002ec4:	02113423          	sd	ra,40(sp)
    80002ec8:	02813023          	sd	s0,32(sp)
    80002ecc:	00913c23          	sd	s1,24(sp)
    80002ed0:	01213823          	sd	s2,16(sp)
    80002ed4:	01313423          	sd	s3,8(sp)
    80002ed8:	03010413          	addi	s0,sp,48
    80002edc:	00050993          	mv	s3,a0
    80002ee0:	00058913          	mv	s2,a1
    init();
    80002ee4:	00000097          	auipc	ra,0x0
    80002ee8:	e20080e7          	jalr	-480(ra) # 80002d04 <_ZN15MemoryAllocator4initEv>
    if (ptr == nullptr) return -1;
    80002eec:	0e090863          	beqz	s2,80002fdc <_ZN15MemoryAllocator4freeEPv+0x11c>
    uint64 heapStart = (uint64)HEAP_START_ADDR;
    80002ef0:	00009797          	auipc	a5,0x9
    80002ef4:	d887b783          	ld	a5,-632(a5) # 8000bc78 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002ef8:	0007b683          	ld	a3,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002efc:	00009797          	auipc	a5,0x9
    80002f00:	d9c7b783          	ld	a5,-612(a5) # 8000bc98 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002f04:	0007b603          	ld	a2,0(a5)
    if (ptrAddr < heapStart + MEM_BLOCK_SIZE || ptrAddr >= heapEnd){
    80002f08:	04068793          	addi	a5,a3,64
    80002f0c:	0cf96c63          	bltu	s2,a5,80002fe4 <_ZN15MemoryAllocator4freeEPv+0x124>
    80002f10:	0cc97e63          	bgeu	s2,a2,80002fec <_ZN15MemoryAllocator4freeEPv+0x12c>
    if ((ptrAddr - heapStart) % MEM_BLOCK_SIZE != 0){
    80002f14:	40d907b3          	sub	a5,s2,a3
    80002f18:	03f7f793          	andi	a5,a5,63
    80002f1c:	0c079c63          	bnez	a5,80002ff4 <_ZN15MemoryAllocator4freeEPv+0x134>
    FreeBlock* block = (FreeBlock*) ((char*) ptr - MEM_BLOCK_SIZE);
    80002f20:	fc090593          	addi	a1,s2,-64
    if (block->size < 2){
    80002f24:	fc093783          	ld	a5,-64(s2)
    80002f28:	00100713          	li	a4,1
    80002f2c:	0cf77863          	bgeu	a4,a5,80002ffc <_ZN15MemoryAllocator4freeEPv+0x13c>
    if ((uint64) block < heapStart){
    80002f30:	00058713          	mv	a4,a1
    80002f34:	0cd5e863          	bltu	a1,a3,80003004 <_ZN15MemoryAllocator4freeEPv+0x144>
    if ((uint64) block + block->size * MEM_BLOCK_SIZE > heapEnd){
    80002f38:	00679793          	slli	a5,a5,0x6
    80002f3c:	00f586b3          	add	a3,a1,a5
    80002f40:	0cd66663          	bltu	a2,a3,8000300c <_ZN15MemoryAllocator4freeEPv+0x14c>
    FreeBlock* current = freeHead;
    80002f44:	0009b783          	ld	a5,0(s3)
    FreeBlock* prev = nullptr;
    80002f48:	00000493          	li	s1,0
    while (current != nullptr && (uint64) current < (uint64) block){
    80002f4c:	00078a63          	beqz	a5,80002f60 <_ZN15MemoryAllocator4freeEPv+0xa0>
    80002f50:	00e7f863          	bgeu	a5,a4,80002f60 <_ZN15MemoryAllocator4freeEPv+0xa0>
        prev = current;
    80002f54:	00078493          	mv	s1,a5
        current = current->next;
    80002f58:	0087b783          	ld	a5,8(a5)
    while (current != nullptr && (uint64) current < (uint64) block){
    80002f5c:	ff1ff06f          	j	80002f4c <_ZN15MemoryAllocator4freeEPv+0x8c>
    if (prev != nullptr &&
    80002f60:	00048a63          	beqz	s1,80002f74 <_ZN15MemoryAllocator4freeEPv+0xb4>
        (uint64) prev + prev->size * MEM_BLOCK_SIZE > (uint64) block) {
    80002f64:	0004b603          	ld	a2,0(s1)
    80002f68:	00661613          	slli	a2,a2,0x6
    80002f6c:	00c48633          	add	a2,s1,a2
    if (prev != nullptr &&
    80002f70:	0ac76263          	bltu	a4,a2,80003014 <_ZN15MemoryAllocator4freeEPv+0x154>
    if (current!= nullptr && (uint64)block + block->size * MEM_BLOCK_SIZE > (uint64) current){
    80002f74:	00078463          	beqz	a5,80002f7c <_ZN15MemoryAllocator4freeEPv+0xbc>
    80002f78:	0ad7e263          	bltu	a5,a3,8000301c <_ZN15MemoryAllocator4freeEPv+0x15c>
    block->prev = prev;
    80002f7c:	fc993823          	sd	s1,-48(s2)
    block->next = current;
    80002f80:	fcf93423          	sd	a5,-56(s2)
    if (prev != nullptr){
    80002f84:	04048863          	beqz	s1,80002fd4 <_ZN15MemoryAllocator4freeEPv+0x114>
        prev->next = block;
    80002f88:	00b4b423          	sd	a1,8(s1)
    if (current != nullptr){
    80002f8c:	00078463          	beqz	a5,80002f94 <_ZN15MemoryAllocator4freeEPv+0xd4>
        current->prev = block;
    80002f90:	00b7b823          	sd	a1,16(a5)
    tryToJoin(block);
    80002f94:	00098513          	mv	a0,s3
    80002f98:	00000097          	auipc	ra,0x0
    80002f9c:	ecc080e7          	jalr	-308(ra) # 80002e64 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    if (prev != nullptr){
    80002fa0:	08048263          	beqz	s1,80003024 <_ZN15MemoryAllocator4freeEPv+0x164>
        tryToJoin(prev);
    80002fa4:	00048593          	mv	a1,s1
    80002fa8:	00098513          	mv	a0,s3
    80002fac:	00000097          	auipc	ra,0x0
    80002fb0:	eb8080e7          	jalr	-328(ra) # 80002e64 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    return 0;
    80002fb4:	00000513          	li	a0,0
}
    80002fb8:	02813083          	ld	ra,40(sp)
    80002fbc:	02013403          	ld	s0,32(sp)
    80002fc0:	01813483          	ld	s1,24(sp)
    80002fc4:	01013903          	ld	s2,16(sp)
    80002fc8:	00813983          	ld	s3,8(sp)
    80002fcc:	03010113          	addi	sp,sp,48
    80002fd0:	00008067          	ret
        freeHead = block;
    80002fd4:	00b9b023          	sd	a1,0(s3)
    80002fd8:	fb5ff06f          	j	80002f8c <_ZN15MemoryAllocator4freeEPv+0xcc>
    if (ptr == nullptr) return -1;
    80002fdc:	fff00513          	li	a0,-1
    80002fe0:	fd9ff06f          	j	80002fb8 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002fe4:	fff00513          	li	a0,-1
    80002fe8:	fd1ff06f          	j	80002fb8 <_ZN15MemoryAllocator4freeEPv+0xf8>
    80002fec:	fff00513          	li	a0,-1
    80002ff0:	fc9ff06f          	j	80002fb8 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002ff4:	fff00513          	li	a0,-1
    80002ff8:	fc1ff06f          	j	80002fb8 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002ffc:	fff00513          	li	a0,-1
    80003000:	fb9ff06f          	j	80002fb8 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003004:	fff00513          	li	a0,-1
    80003008:	fb1ff06f          	j	80002fb8 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    8000300c:	fff00513          	li	a0,-1
    80003010:	fa9ff06f          	j	80002fb8 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003014:	fff00513          	li	a0,-1
    80003018:	fa1ff06f          	j	80002fb8 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    8000301c:	fff00513          	li	a0,-1
    80003020:	f99ff06f          	j	80002fb8 <_ZN15MemoryAllocator4freeEPv+0xf8>
    return 0;
    80003024:	00000513          	li	a0,0
    80003028:	f91ff06f          	j	80002fb8 <_ZN15MemoryAllocator4freeEPv+0xf8>

000000008000302c <_GLOBAL__sub_I__ZN15MemoryAllocatorC2Ev>:
    8000302c:	ff010113          	addi	sp,sp,-16
    80003030:	00113423          	sd	ra,8(sp)
    80003034:	00813023          	sd	s0,0(sp)
    80003038:	01010413          	addi	s0,sp,16
    8000303c:	000105b7          	lui	a1,0x10
    80003040:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80003044:	00100513          	li	a0,1
    80003048:	00000097          	auipc	ra,0x0
    8000304c:	c54080e7          	jalr	-940(ra) # 80002c9c <_Z41__static_initialization_and_destruction_0ii>
    80003050:	00813083          	ld	ra,8(sp)
    80003054:	00013403          	ld	s0,0(sp)
    80003058:	01010113          	addi	sp,sp,16
    8000305c:	00008067          	ret

0000000080003060 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003060:	fe010113          	addi	sp,sp,-32
    80003064:	00113c23          	sd	ra,24(sp)
    80003068:	00813823          	sd	s0,16(sp)
    8000306c:	00913423          	sd	s1,8(sp)
    80003070:	01213023          	sd	s2,0(sp)
    80003074:	02010413          	addi	s0,sp,32
    80003078:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000307c:	00000913          	li	s2,0
    80003080:	00c0006f          	j	8000308c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003084:	ffffe097          	auipc	ra,0xffffe
    80003088:	304080e7          	jalr	772(ra) # 80001388 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    8000308c:	ffffe097          	auipc	ra,0xffffe
    80003090:	580080e7          	jalr	1408(ra) # 8000160c <_Z4getcv>
    80003094:	0005059b          	sext.w	a1,a0
    80003098:	01b00793          	li	a5,27
    8000309c:	02f58a63          	beq	a1,a5,800030d0 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800030a0:	0084b503          	ld	a0,8(s1)
    800030a4:	00003097          	auipc	ra,0x3
    800030a8:	78c080e7          	jalr	1932(ra) # 80006830 <_ZN6Buffer3putEi>
        i++;
    800030ac:	0019071b          	addiw	a4,s2,1
    800030b0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800030b4:	0004a683          	lw	a3,0(s1)
    800030b8:	0026979b          	slliw	a5,a3,0x2
    800030bc:	00d787bb          	addw	a5,a5,a3
    800030c0:	0017979b          	slliw	a5,a5,0x1
    800030c4:	02f767bb          	remw	a5,a4,a5
    800030c8:	fc0792e3          	bnez	a5,8000308c <_ZL16producerKeyboardPv+0x2c>
    800030cc:	fb9ff06f          	j	80003084 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800030d0:	00100793          	li	a5,1
    800030d4:	00009717          	auipc	a4,0x9
    800030d8:	c4f72e23          	sw	a5,-932(a4) # 8000bd30 <_ZL9threadEnd>
    data->buffer->put('!');
    800030dc:	02100593          	li	a1,33
    800030e0:	0084b503          	ld	a0,8(s1)
    800030e4:	00003097          	auipc	ra,0x3
    800030e8:	74c080e7          	jalr	1868(ra) # 80006830 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800030ec:	0104b503          	ld	a0,16(s1)
    800030f0:	ffffe097          	auipc	ra,0xffffe
    800030f4:	414080e7          	jalr	1044(ra) # 80001504 <_Z10sem_signalP4_sem>
}
    800030f8:	01813083          	ld	ra,24(sp)
    800030fc:	01013403          	ld	s0,16(sp)
    80003100:	00813483          	ld	s1,8(sp)
    80003104:	00013903          	ld	s2,0(sp)
    80003108:	02010113          	addi	sp,sp,32
    8000310c:	00008067          	ret

0000000080003110 <_ZL8producerPv>:

static void producer(void *arg) {
    80003110:	fe010113          	addi	sp,sp,-32
    80003114:	00113c23          	sd	ra,24(sp)
    80003118:	00813823          	sd	s0,16(sp)
    8000311c:	00913423          	sd	s1,8(sp)
    80003120:	01213023          	sd	s2,0(sp)
    80003124:	02010413          	addi	s0,sp,32
    80003128:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000312c:	00000913          	li	s2,0
    80003130:	00c0006f          	j	8000313c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003134:	ffffe097          	auipc	ra,0xffffe
    80003138:	254080e7          	jalr	596(ra) # 80001388 <_Z15thread_dispatchv>
    while (!threadEnd) {
    8000313c:	00009797          	auipc	a5,0x9
    80003140:	bf47a783          	lw	a5,-1036(a5) # 8000bd30 <_ZL9threadEnd>
    80003144:	02079e63          	bnez	a5,80003180 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003148:	0004a583          	lw	a1,0(s1)
    8000314c:	0305859b          	addiw	a1,a1,48
    80003150:	0084b503          	ld	a0,8(s1)
    80003154:	00003097          	auipc	ra,0x3
    80003158:	6dc080e7          	jalr	1756(ra) # 80006830 <_ZN6Buffer3putEi>
        i++;
    8000315c:	0019071b          	addiw	a4,s2,1
    80003160:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003164:	0004a683          	lw	a3,0(s1)
    80003168:	0026979b          	slliw	a5,a3,0x2
    8000316c:	00d787bb          	addw	a5,a5,a3
    80003170:	0017979b          	slliw	a5,a5,0x1
    80003174:	02f767bb          	remw	a5,a4,a5
    80003178:	fc0792e3          	bnez	a5,8000313c <_ZL8producerPv+0x2c>
    8000317c:	fb9ff06f          	j	80003134 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003180:	0104b503          	ld	a0,16(s1)
    80003184:	ffffe097          	auipc	ra,0xffffe
    80003188:	380080e7          	jalr	896(ra) # 80001504 <_Z10sem_signalP4_sem>
}
    8000318c:	01813083          	ld	ra,24(sp)
    80003190:	01013403          	ld	s0,16(sp)
    80003194:	00813483          	ld	s1,8(sp)
    80003198:	00013903          	ld	s2,0(sp)
    8000319c:	02010113          	addi	sp,sp,32
    800031a0:	00008067          	ret

00000000800031a4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800031a4:	fd010113          	addi	sp,sp,-48
    800031a8:	02113423          	sd	ra,40(sp)
    800031ac:	02813023          	sd	s0,32(sp)
    800031b0:	00913c23          	sd	s1,24(sp)
    800031b4:	01213823          	sd	s2,16(sp)
    800031b8:	01313423          	sd	s3,8(sp)
    800031bc:	03010413          	addi	s0,sp,48
    800031c0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800031c4:	00000993          	li	s3,0
    800031c8:	01c0006f          	j	800031e4 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800031cc:	ffffe097          	auipc	ra,0xffffe
    800031d0:	1bc080e7          	jalr	444(ra) # 80001388 <_Z15thread_dispatchv>
    800031d4:	0500006f          	j	80003224 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800031d8:	00a00513          	li	a0,10
    800031dc:	ffffe097          	auipc	ra,0xffffe
    800031e0:	470080e7          	jalr	1136(ra) # 8000164c <_Z4putcc>
    while (!threadEnd) {
    800031e4:	00009797          	auipc	a5,0x9
    800031e8:	b4c7a783          	lw	a5,-1204(a5) # 8000bd30 <_ZL9threadEnd>
    800031ec:	06079063          	bnez	a5,8000324c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800031f0:	00893503          	ld	a0,8(s2)
    800031f4:	00003097          	auipc	ra,0x3
    800031f8:	6cc080e7          	jalr	1740(ra) # 800068c0 <_ZN6Buffer3getEv>
        i++;
    800031fc:	0019849b          	addiw	s1,s3,1
    80003200:	0004899b          	sext.w	s3,s1
        putc(key);
    80003204:	0ff57513          	andi	a0,a0,255
    80003208:	ffffe097          	auipc	ra,0xffffe
    8000320c:	444080e7          	jalr	1092(ra) # 8000164c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003210:	00092703          	lw	a4,0(s2)
    80003214:	0027179b          	slliw	a5,a4,0x2
    80003218:	00e787bb          	addw	a5,a5,a4
    8000321c:	02f4e7bb          	remw	a5,s1,a5
    80003220:	fa0786e3          	beqz	a5,800031cc <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003224:	05000793          	li	a5,80
    80003228:	02f4e4bb          	remw	s1,s1,a5
    8000322c:	fa049ce3          	bnez	s1,800031e4 <_ZL8consumerPv+0x40>
    80003230:	fa9ff06f          	j	800031d8 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003234:	00893503          	ld	a0,8(s2)
    80003238:	00003097          	auipc	ra,0x3
    8000323c:	688080e7          	jalr	1672(ra) # 800068c0 <_ZN6Buffer3getEv>
        putc(key);
    80003240:	0ff57513          	andi	a0,a0,255
    80003244:	ffffe097          	auipc	ra,0xffffe
    80003248:	408080e7          	jalr	1032(ra) # 8000164c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    8000324c:	00893503          	ld	a0,8(s2)
    80003250:	00003097          	auipc	ra,0x3
    80003254:	6fc080e7          	jalr	1788(ra) # 8000694c <_ZN6Buffer6getCntEv>
    80003258:	fca04ee3          	bgtz	a0,80003234 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    8000325c:	01093503          	ld	a0,16(s2)
    80003260:	ffffe097          	auipc	ra,0xffffe
    80003264:	2a4080e7          	jalr	676(ra) # 80001504 <_Z10sem_signalP4_sem>
}
    80003268:	02813083          	ld	ra,40(sp)
    8000326c:	02013403          	ld	s0,32(sp)
    80003270:	01813483          	ld	s1,24(sp)
    80003274:	01013903          	ld	s2,16(sp)
    80003278:	00813983          	ld	s3,8(sp)
    8000327c:	03010113          	addi	sp,sp,48
    80003280:	00008067          	ret

0000000080003284 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003284:	f9010113          	addi	sp,sp,-112
    80003288:	06113423          	sd	ra,104(sp)
    8000328c:	06813023          	sd	s0,96(sp)
    80003290:	04913c23          	sd	s1,88(sp)
    80003294:	05213823          	sd	s2,80(sp)
    80003298:	05313423          	sd	s3,72(sp)
    8000329c:	05413023          	sd	s4,64(sp)
    800032a0:	03513c23          	sd	s5,56(sp)
    800032a4:	03613823          	sd	s6,48(sp)
    800032a8:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800032ac:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800032b0:	00006517          	auipc	a0,0x6
    800032b4:	0d850513          	addi	a0,a0,216 # 80009388 <CONSOLE_STATUS+0x378>
    800032b8:	00002097          	auipc	ra,0x2
    800032bc:	220080e7          	jalr	544(ra) # 800054d8 <_Z11printStringPKc>
    getString(input, 30);
    800032c0:	01e00593          	li	a1,30
    800032c4:	fa040493          	addi	s1,s0,-96
    800032c8:	00048513          	mv	a0,s1
    800032cc:	00002097          	auipc	ra,0x2
    800032d0:	294080e7          	jalr	660(ra) # 80005560 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800032d4:	00048513          	mv	a0,s1
    800032d8:	00002097          	auipc	ra,0x2
    800032dc:	360080e7          	jalr	864(ra) # 80005638 <_Z11stringToIntPKc>
    800032e0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800032e4:	00006517          	auipc	a0,0x6
    800032e8:	0c450513          	addi	a0,a0,196 # 800093a8 <CONSOLE_STATUS+0x398>
    800032ec:	00002097          	auipc	ra,0x2
    800032f0:	1ec080e7          	jalr	492(ra) # 800054d8 <_Z11printStringPKc>
    getString(input, 30);
    800032f4:	01e00593          	li	a1,30
    800032f8:	00048513          	mv	a0,s1
    800032fc:	00002097          	auipc	ra,0x2
    80003300:	264080e7          	jalr	612(ra) # 80005560 <_Z9getStringPci>
    n = stringToInt(input);
    80003304:	00048513          	mv	a0,s1
    80003308:	00002097          	auipc	ra,0x2
    8000330c:	330080e7          	jalr	816(ra) # 80005638 <_Z11stringToIntPKc>
    80003310:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003314:	00006517          	auipc	a0,0x6
    80003318:	0b450513          	addi	a0,a0,180 # 800093c8 <CONSOLE_STATUS+0x3b8>
    8000331c:	00002097          	auipc	ra,0x2
    80003320:	1bc080e7          	jalr	444(ra) # 800054d8 <_Z11printStringPKc>
    80003324:	00000613          	li	a2,0
    80003328:	00a00593          	li	a1,10
    8000332c:	00090513          	mv	a0,s2
    80003330:	00002097          	auipc	ra,0x2
    80003334:	358080e7          	jalr	856(ra) # 80005688 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003338:	00006517          	auipc	a0,0x6
    8000333c:	0a850513          	addi	a0,a0,168 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80003340:	00002097          	auipc	ra,0x2
    80003344:	198080e7          	jalr	408(ra) # 800054d8 <_Z11printStringPKc>
    80003348:	00000613          	li	a2,0
    8000334c:	00a00593          	li	a1,10
    80003350:	00048513          	mv	a0,s1
    80003354:	00002097          	auipc	ra,0x2
    80003358:	334080e7          	jalr	820(ra) # 80005688 <_Z8printIntiii>
    printString(".\n");
    8000335c:	00006517          	auipc	a0,0x6
    80003360:	09c50513          	addi	a0,a0,156 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80003364:	00002097          	auipc	ra,0x2
    80003368:	174080e7          	jalr	372(ra) # 800054d8 <_Z11printStringPKc>
    if(threadNum > n) {
    8000336c:	0324c463          	blt	s1,s2,80003394 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003370:	03205c63          	blez	s2,800033a8 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003374:	03800513          	li	a0,56
    80003378:	fffff097          	auipc	ra,0xfffff
    8000337c:	334080e7          	jalr	820(ra) # 800026ac <_Znwm>
    80003380:	00050a13          	mv	s4,a0
    80003384:	00048593          	mv	a1,s1
    80003388:	00003097          	auipc	ra,0x3
    8000338c:	40c080e7          	jalr	1036(ra) # 80006794 <_ZN6BufferC1Ei>
    80003390:	0300006f          	j	800033c0 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003394:	00006517          	auipc	a0,0x6
    80003398:	06c50513          	addi	a0,a0,108 # 80009400 <CONSOLE_STATUS+0x3f0>
    8000339c:	00002097          	auipc	ra,0x2
    800033a0:	13c080e7          	jalr	316(ra) # 800054d8 <_Z11printStringPKc>
        return;
    800033a4:	0140006f          	j	800033b8 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800033a8:	00006517          	auipc	a0,0x6
    800033ac:	09850513          	addi	a0,a0,152 # 80009440 <CONSOLE_STATUS+0x430>
    800033b0:	00002097          	auipc	ra,0x2
    800033b4:	128080e7          	jalr	296(ra) # 800054d8 <_Z11printStringPKc>
        return;
    800033b8:	000b0113          	mv	sp,s6
    800033bc:	1500006f          	j	8000350c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800033c0:	00000593          	li	a1,0
    800033c4:	00009517          	auipc	a0,0x9
    800033c8:	97450513          	addi	a0,a0,-1676 # 8000bd38 <_ZL10waitForAll>
    800033cc:	ffffe097          	auipc	ra,0xffffe
    800033d0:	ff8080e7          	jalr	-8(ra) # 800013c4 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    800033d4:	00391793          	slli	a5,s2,0x3
    800033d8:	00f78793          	addi	a5,a5,15
    800033dc:	ff07f793          	andi	a5,a5,-16
    800033e0:	40f10133          	sub	sp,sp,a5
    800033e4:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800033e8:	0019071b          	addiw	a4,s2,1
    800033ec:	00171793          	slli	a5,a4,0x1
    800033f0:	00e787b3          	add	a5,a5,a4
    800033f4:	00379793          	slli	a5,a5,0x3
    800033f8:	00f78793          	addi	a5,a5,15
    800033fc:	ff07f793          	andi	a5,a5,-16
    80003400:	40f10133          	sub	sp,sp,a5
    80003404:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003408:	00191613          	slli	a2,s2,0x1
    8000340c:	012607b3          	add	a5,a2,s2
    80003410:	00379793          	slli	a5,a5,0x3
    80003414:	00f987b3          	add	a5,s3,a5
    80003418:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000341c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003420:	00009717          	auipc	a4,0x9
    80003424:	91873703          	ld	a4,-1768(a4) # 8000bd38 <_ZL10waitForAll>
    80003428:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000342c:	00078613          	mv	a2,a5
    80003430:	00000597          	auipc	a1,0x0
    80003434:	d7458593          	addi	a1,a1,-652 # 800031a4 <_ZL8consumerPv>
    80003438:	f9840513          	addi	a0,s0,-104
    8000343c:	ffffe097          	auipc	ra,0xffffe
    80003440:	e48080e7          	jalr	-440(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003444:	00000493          	li	s1,0
    80003448:	0280006f          	j	80003470 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    8000344c:	00000597          	auipc	a1,0x0
    80003450:	c1458593          	addi	a1,a1,-1004 # 80003060 <_ZL16producerKeyboardPv>
                      data + i);
    80003454:	00179613          	slli	a2,a5,0x1
    80003458:	00f60633          	add	a2,a2,a5
    8000345c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003460:	00c98633          	add	a2,s3,a2
    80003464:	ffffe097          	auipc	ra,0xffffe
    80003468:	e20080e7          	jalr	-480(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000346c:	0014849b          	addiw	s1,s1,1
    80003470:	0524d263          	bge	s1,s2,800034b4 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003474:	00149793          	slli	a5,s1,0x1
    80003478:	009787b3          	add	a5,a5,s1
    8000347c:	00379793          	slli	a5,a5,0x3
    80003480:	00f987b3          	add	a5,s3,a5
    80003484:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003488:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    8000348c:	00009717          	auipc	a4,0x9
    80003490:	8ac73703          	ld	a4,-1876(a4) # 8000bd38 <_ZL10waitForAll>
    80003494:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003498:	00048793          	mv	a5,s1
    8000349c:	00349513          	slli	a0,s1,0x3
    800034a0:	00aa8533          	add	a0,s5,a0
    800034a4:	fa9054e3          	blez	s1,8000344c <_Z22producerConsumer_C_APIv+0x1c8>
    800034a8:	00000597          	auipc	a1,0x0
    800034ac:	c6858593          	addi	a1,a1,-920 # 80003110 <_ZL8producerPv>
    800034b0:	fa5ff06f          	j	80003454 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800034b4:	ffffe097          	auipc	ra,0xffffe
    800034b8:	ed4080e7          	jalr	-300(ra) # 80001388 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800034bc:	00000493          	li	s1,0
    800034c0:	00994e63          	blt	s2,s1,800034dc <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800034c4:	00009517          	auipc	a0,0x9
    800034c8:	87453503          	ld	a0,-1932(a0) # 8000bd38 <_ZL10waitForAll>
    800034cc:	ffffe097          	auipc	ra,0xffffe
    800034d0:	ff8080e7          	jalr	-8(ra) # 800014c4 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    800034d4:	0014849b          	addiw	s1,s1,1
    800034d8:	fe9ff06f          	j	800034c0 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800034dc:	00009517          	auipc	a0,0x9
    800034e0:	85c53503          	ld	a0,-1956(a0) # 8000bd38 <_ZL10waitForAll>
    800034e4:	ffffe097          	auipc	ra,0xffffe
    800034e8:	fa0080e7          	jalr	-96(ra) # 80001484 <_Z9sem_closeP4_sem>
    delete buffer;
    800034ec:	000a0e63          	beqz	s4,80003508 <_Z22producerConsumer_C_APIv+0x284>
    800034f0:	000a0513          	mv	a0,s4
    800034f4:	00003097          	auipc	ra,0x3
    800034f8:	4e0080e7          	jalr	1248(ra) # 800069d4 <_ZN6BufferD1Ev>
    800034fc:	000a0513          	mv	a0,s4
    80003500:	fffff097          	auipc	ra,0xfffff
    80003504:	1fc080e7          	jalr	508(ra) # 800026fc <_ZdlPv>
    80003508:	000b0113          	mv	sp,s6

}
    8000350c:	f9040113          	addi	sp,s0,-112
    80003510:	06813083          	ld	ra,104(sp)
    80003514:	06013403          	ld	s0,96(sp)
    80003518:	05813483          	ld	s1,88(sp)
    8000351c:	05013903          	ld	s2,80(sp)
    80003520:	04813983          	ld	s3,72(sp)
    80003524:	04013a03          	ld	s4,64(sp)
    80003528:	03813a83          	ld	s5,56(sp)
    8000352c:	03013b03          	ld	s6,48(sp)
    80003530:	07010113          	addi	sp,sp,112
    80003534:	00008067          	ret
    80003538:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000353c:	000a0513          	mv	a0,s4
    80003540:	fffff097          	auipc	ra,0xfffff
    80003544:	1bc080e7          	jalr	444(ra) # 800026fc <_ZdlPv>
    80003548:	00048513          	mv	a0,s1
    8000354c:	0000a097          	auipc	ra,0xa
    80003550:	92c080e7          	jalr	-1748(ra) # 8000ce78 <_Unwind_Resume>

0000000080003554 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003554:	fe010113          	addi	sp,sp,-32
    80003558:	00113c23          	sd	ra,24(sp)
    8000355c:	00813823          	sd	s0,16(sp)
    80003560:	00913423          	sd	s1,8(sp)
    80003564:	01213023          	sd	s2,0(sp)
    80003568:	02010413          	addi	s0,sp,32
    8000356c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003570:	00100793          	li	a5,1
    80003574:	02a7f863          	bgeu	a5,a0,800035a4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003578:	00a00793          	li	a5,10
    8000357c:	02f577b3          	remu	a5,a0,a5
    80003580:	02078e63          	beqz	a5,800035bc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003584:	fff48513          	addi	a0,s1,-1
    80003588:	00000097          	auipc	ra,0x0
    8000358c:	fcc080e7          	jalr	-52(ra) # 80003554 <_ZL9fibonaccim>
    80003590:	00050913          	mv	s2,a0
    80003594:	ffe48513          	addi	a0,s1,-2
    80003598:	00000097          	auipc	ra,0x0
    8000359c:	fbc080e7          	jalr	-68(ra) # 80003554 <_ZL9fibonaccim>
    800035a0:	00a90533          	add	a0,s2,a0
}
    800035a4:	01813083          	ld	ra,24(sp)
    800035a8:	01013403          	ld	s0,16(sp)
    800035ac:	00813483          	ld	s1,8(sp)
    800035b0:	00013903          	ld	s2,0(sp)
    800035b4:	02010113          	addi	sp,sp,32
    800035b8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800035bc:	ffffe097          	auipc	ra,0xffffe
    800035c0:	dcc080e7          	jalr	-564(ra) # 80001388 <_Z15thread_dispatchv>
    800035c4:	fc1ff06f          	j	80003584 <_ZL9fibonaccim+0x30>

00000000800035c8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800035c8:	fe010113          	addi	sp,sp,-32
    800035cc:	00113c23          	sd	ra,24(sp)
    800035d0:	00813823          	sd	s0,16(sp)
    800035d4:	00913423          	sd	s1,8(sp)
    800035d8:	01213023          	sd	s2,0(sp)
    800035dc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800035e0:	00000913          	li	s2,0
    800035e4:	0380006f          	j	8000361c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800035e8:	ffffe097          	auipc	ra,0xffffe
    800035ec:	da0080e7          	jalr	-608(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800035f0:	00148493          	addi	s1,s1,1
    800035f4:	000027b7          	lui	a5,0x2
    800035f8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800035fc:	0097ee63          	bltu	a5,s1,80003618 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003600:	00000713          	li	a4,0
    80003604:	000077b7          	lui	a5,0x7
    80003608:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000360c:	fce7eee3          	bltu	a5,a4,800035e8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003610:	00170713          	addi	a4,a4,1
    80003614:	ff1ff06f          	j	80003604 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003618:	00190913          	addi	s2,s2,1
    8000361c:	00900793          	li	a5,9
    80003620:	0527e063          	bltu	a5,s2,80003660 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003624:	00006517          	auipc	a0,0x6
    80003628:	e4c50513          	addi	a0,a0,-436 # 80009470 <CONSOLE_STATUS+0x460>
    8000362c:	00002097          	auipc	ra,0x2
    80003630:	eac080e7          	jalr	-340(ra) # 800054d8 <_Z11printStringPKc>
    80003634:	00000613          	li	a2,0
    80003638:	00a00593          	li	a1,10
    8000363c:	0009051b          	sext.w	a0,s2
    80003640:	00002097          	auipc	ra,0x2
    80003644:	048080e7          	jalr	72(ra) # 80005688 <_Z8printIntiii>
    80003648:	00006517          	auipc	a0,0x6
    8000364c:	c7050513          	addi	a0,a0,-912 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003650:	00002097          	auipc	ra,0x2
    80003654:	e88080e7          	jalr	-376(ra) # 800054d8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003658:	00000493          	li	s1,0
    8000365c:	f99ff06f          	j	800035f4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003660:	00006517          	auipc	a0,0x6
    80003664:	e1850513          	addi	a0,a0,-488 # 80009478 <CONSOLE_STATUS+0x468>
    80003668:	00002097          	auipc	ra,0x2
    8000366c:	e70080e7          	jalr	-400(ra) # 800054d8 <_Z11printStringPKc>
    finishedA = true;
    80003670:	00100793          	li	a5,1
    80003674:	00008717          	auipc	a4,0x8
    80003678:	6cf70623          	sb	a5,1740(a4) # 8000bd40 <_ZL9finishedA>
}
    8000367c:	01813083          	ld	ra,24(sp)
    80003680:	01013403          	ld	s0,16(sp)
    80003684:	00813483          	ld	s1,8(sp)
    80003688:	00013903          	ld	s2,0(sp)
    8000368c:	02010113          	addi	sp,sp,32
    80003690:	00008067          	ret

0000000080003694 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003694:	fe010113          	addi	sp,sp,-32
    80003698:	00113c23          	sd	ra,24(sp)
    8000369c:	00813823          	sd	s0,16(sp)
    800036a0:	00913423          	sd	s1,8(sp)
    800036a4:	01213023          	sd	s2,0(sp)
    800036a8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800036ac:	00000913          	li	s2,0
    800036b0:	0380006f          	j	800036e8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800036b4:	ffffe097          	auipc	ra,0xffffe
    800036b8:	cd4080e7          	jalr	-812(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800036bc:	00148493          	addi	s1,s1,1
    800036c0:	000027b7          	lui	a5,0x2
    800036c4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800036c8:	0097ee63          	bltu	a5,s1,800036e4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800036cc:	00000713          	li	a4,0
    800036d0:	000077b7          	lui	a5,0x7
    800036d4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800036d8:	fce7eee3          	bltu	a5,a4,800036b4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800036dc:	00170713          	addi	a4,a4,1
    800036e0:	ff1ff06f          	j	800036d0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800036e4:	00190913          	addi	s2,s2,1
    800036e8:	00f00793          	li	a5,15
    800036ec:	0527e063          	bltu	a5,s2,8000372c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800036f0:	00006517          	auipc	a0,0x6
    800036f4:	d9850513          	addi	a0,a0,-616 # 80009488 <CONSOLE_STATUS+0x478>
    800036f8:	00002097          	auipc	ra,0x2
    800036fc:	de0080e7          	jalr	-544(ra) # 800054d8 <_Z11printStringPKc>
    80003700:	00000613          	li	a2,0
    80003704:	00a00593          	li	a1,10
    80003708:	0009051b          	sext.w	a0,s2
    8000370c:	00002097          	auipc	ra,0x2
    80003710:	f7c080e7          	jalr	-132(ra) # 80005688 <_Z8printIntiii>
    80003714:	00006517          	auipc	a0,0x6
    80003718:	ba450513          	addi	a0,a0,-1116 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000371c:	00002097          	auipc	ra,0x2
    80003720:	dbc080e7          	jalr	-580(ra) # 800054d8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003724:	00000493          	li	s1,0
    80003728:	f99ff06f          	j	800036c0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000372c:	00006517          	auipc	a0,0x6
    80003730:	d6450513          	addi	a0,a0,-668 # 80009490 <CONSOLE_STATUS+0x480>
    80003734:	00002097          	auipc	ra,0x2
    80003738:	da4080e7          	jalr	-604(ra) # 800054d8 <_Z11printStringPKc>
    finishedB = true;
    8000373c:	00100793          	li	a5,1
    80003740:	00008717          	auipc	a4,0x8
    80003744:	60f700a3          	sb	a5,1537(a4) # 8000bd41 <_ZL9finishedB>
    thread_dispatch();
    80003748:	ffffe097          	auipc	ra,0xffffe
    8000374c:	c40080e7          	jalr	-960(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003750:	01813083          	ld	ra,24(sp)
    80003754:	01013403          	ld	s0,16(sp)
    80003758:	00813483          	ld	s1,8(sp)
    8000375c:	00013903          	ld	s2,0(sp)
    80003760:	02010113          	addi	sp,sp,32
    80003764:	00008067          	ret

0000000080003768 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003768:	fe010113          	addi	sp,sp,-32
    8000376c:	00113c23          	sd	ra,24(sp)
    80003770:	00813823          	sd	s0,16(sp)
    80003774:	00913423          	sd	s1,8(sp)
    80003778:	01213023          	sd	s2,0(sp)
    8000377c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003780:	00000493          	li	s1,0
    80003784:	0400006f          	j	800037c4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003788:	00006517          	auipc	a0,0x6
    8000378c:	d1850513          	addi	a0,a0,-744 # 800094a0 <CONSOLE_STATUS+0x490>
    80003790:	00002097          	auipc	ra,0x2
    80003794:	d48080e7          	jalr	-696(ra) # 800054d8 <_Z11printStringPKc>
    80003798:	00000613          	li	a2,0
    8000379c:	00a00593          	li	a1,10
    800037a0:	00048513          	mv	a0,s1
    800037a4:	00002097          	auipc	ra,0x2
    800037a8:	ee4080e7          	jalr	-284(ra) # 80005688 <_Z8printIntiii>
    800037ac:	00006517          	auipc	a0,0x6
    800037b0:	b0c50513          	addi	a0,a0,-1268 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800037b4:	00002097          	auipc	ra,0x2
    800037b8:	d24080e7          	jalr	-732(ra) # 800054d8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800037bc:	0014849b          	addiw	s1,s1,1
    800037c0:	0ff4f493          	andi	s1,s1,255
    800037c4:	00200793          	li	a5,2
    800037c8:	fc97f0e3          	bgeu	a5,s1,80003788 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800037cc:	00006517          	auipc	a0,0x6
    800037d0:	cdc50513          	addi	a0,a0,-804 # 800094a8 <CONSOLE_STATUS+0x498>
    800037d4:	00002097          	auipc	ra,0x2
    800037d8:	d04080e7          	jalr	-764(ra) # 800054d8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800037dc:	00700313          	li	t1,7
    thread_dispatch();
    800037e0:	ffffe097          	auipc	ra,0xffffe
    800037e4:	ba8080e7          	jalr	-1112(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800037e8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800037ec:	00006517          	auipc	a0,0x6
    800037f0:	ccc50513          	addi	a0,a0,-820 # 800094b8 <CONSOLE_STATUS+0x4a8>
    800037f4:	00002097          	auipc	ra,0x2
    800037f8:	ce4080e7          	jalr	-796(ra) # 800054d8 <_Z11printStringPKc>
    800037fc:	00000613          	li	a2,0
    80003800:	00a00593          	li	a1,10
    80003804:	0009051b          	sext.w	a0,s2
    80003808:	00002097          	auipc	ra,0x2
    8000380c:	e80080e7          	jalr	-384(ra) # 80005688 <_Z8printIntiii>
    80003810:	00006517          	auipc	a0,0x6
    80003814:	aa850513          	addi	a0,a0,-1368 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003818:	00002097          	auipc	ra,0x2
    8000381c:	cc0080e7          	jalr	-832(ra) # 800054d8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003820:	00c00513          	li	a0,12
    80003824:	00000097          	auipc	ra,0x0
    80003828:	d30080e7          	jalr	-720(ra) # 80003554 <_ZL9fibonaccim>
    8000382c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003830:	00006517          	auipc	a0,0x6
    80003834:	c9050513          	addi	a0,a0,-880 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80003838:	00002097          	auipc	ra,0x2
    8000383c:	ca0080e7          	jalr	-864(ra) # 800054d8 <_Z11printStringPKc>
    80003840:	00000613          	li	a2,0
    80003844:	00a00593          	li	a1,10
    80003848:	0009051b          	sext.w	a0,s2
    8000384c:	00002097          	auipc	ra,0x2
    80003850:	e3c080e7          	jalr	-452(ra) # 80005688 <_Z8printIntiii>
    80003854:	00006517          	auipc	a0,0x6
    80003858:	a6450513          	addi	a0,a0,-1436 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000385c:	00002097          	auipc	ra,0x2
    80003860:	c7c080e7          	jalr	-900(ra) # 800054d8 <_Z11printStringPKc>
    80003864:	0400006f          	j	800038a4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003868:	00006517          	auipc	a0,0x6
    8000386c:	c3850513          	addi	a0,a0,-968 # 800094a0 <CONSOLE_STATUS+0x490>
    80003870:	00002097          	auipc	ra,0x2
    80003874:	c68080e7          	jalr	-920(ra) # 800054d8 <_Z11printStringPKc>
    80003878:	00000613          	li	a2,0
    8000387c:	00a00593          	li	a1,10
    80003880:	00048513          	mv	a0,s1
    80003884:	00002097          	auipc	ra,0x2
    80003888:	e04080e7          	jalr	-508(ra) # 80005688 <_Z8printIntiii>
    8000388c:	00006517          	auipc	a0,0x6
    80003890:	a2c50513          	addi	a0,a0,-1492 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003894:	00002097          	auipc	ra,0x2
    80003898:	c44080e7          	jalr	-956(ra) # 800054d8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000389c:	0014849b          	addiw	s1,s1,1
    800038a0:	0ff4f493          	andi	s1,s1,255
    800038a4:	00500793          	li	a5,5
    800038a8:	fc97f0e3          	bgeu	a5,s1,80003868 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800038ac:	00006517          	auipc	a0,0x6
    800038b0:	bcc50513          	addi	a0,a0,-1076 # 80009478 <CONSOLE_STATUS+0x468>
    800038b4:	00002097          	auipc	ra,0x2
    800038b8:	c24080e7          	jalr	-988(ra) # 800054d8 <_Z11printStringPKc>
    finishedC = true;
    800038bc:	00100793          	li	a5,1
    800038c0:	00008717          	auipc	a4,0x8
    800038c4:	48f70123          	sb	a5,1154(a4) # 8000bd42 <_ZL9finishedC>
    thread_dispatch();
    800038c8:	ffffe097          	auipc	ra,0xffffe
    800038cc:	ac0080e7          	jalr	-1344(ra) # 80001388 <_Z15thread_dispatchv>
}
    800038d0:	01813083          	ld	ra,24(sp)
    800038d4:	01013403          	ld	s0,16(sp)
    800038d8:	00813483          	ld	s1,8(sp)
    800038dc:	00013903          	ld	s2,0(sp)
    800038e0:	02010113          	addi	sp,sp,32
    800038e4:	00008067          	ret

00000000800038e8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800038e8:	fe010113          	addi	sp,sp,-32
    800038ec:	00113c23          	sd	ra,24(sp)
    800038f0:	00813823          	sd	s0,16(sp)
    800038f4:	00913423          	sd	s1,8(sp)
    800038f8:	01213023          	sd	s2,0(sp)
    800038fc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003900:	00a00493          	li	s1,10
    80003904:	0400006f          	j	80003944 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003908:	00006517          	auipc	a0,0x6
    8000390c:	bc850513          	addi	a0,a0,-1080 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80003910:	00002097          	auipc	ra,0x2
    80003914:	bc8080e7          	jalr	-1080(ra) # 800054d8 <_Z11printStringPKc>
    80003918:	00000613          	li	a2,0
    8000391c:	00a00593          	li	a1,10
    80003920:	00048513          	mv	a0,s1
    80003924:	00002097          	auipc	ra,0x2
    80003928:	d64080e7          	jalr	-668(ra) # 80005688 <_Z8printIntiii>
    8000392c:	00006517          	auipc	a0,0x6
    80003930:	98c50513          	addi	a0,a0,-1652 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003934:	00002097          	auipc	ra,0x2
    80003938:	ba4080e7          	jalr	-1116(ra) # 800054d8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000393c:	0014849b          	addiw	s1,s1,1
    80003940:	0ff4f493          	andi	s1,s1,255
    80003944:	00c00793          	li	a5,12
    80003948:	fc97f0e3          	bgeu	a5,s1,80003908 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000394c:	00006517          	auipc	a0,0x6
    80003950:	b8c50513          	addi	a0,a0,-1140 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80003954:	00002097          	auipc	ra,0x2
    80003958:	b84080e7          	jalr	-1148(ra) # 800054d8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000395c:	00500313          	li	t1,5
    thread_dispatch();
    80003960:	ffffe097          	auipc	ra,0xffffe
    80003964:	a28080e7          	jalr	-1496(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003968:	01000513          	li	a0,16
    8000396c:	00000097          	auipc	ra,0x0
    80003970:	be8080e7          	jalr	-1048(ra) # 80003554 <_ZL9fibonaccim>
    80003974:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003978:	00006517          	auipc	a0,0x6
    8000397c:	b7050513          	addi	a0,a0,-1168 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80003980:	00002097          	auipc	ra,0x2
    80003984:	b58080e7          	jalr	-1192(ra) # 800054d8 <_Z11printStringPKc>
    80003988:	00000613          	li	a2,0
    8000398c:	00a00593          	li	a1,10
    80003990:	0009051b          	sext.w	a0,s2
    80003994:	00002097          	auipc	ra,0x2
    80003998:	cf4080e7          	jalr	-780(ra) # 80005688 <_Z8printIntiii>
    8000399c:	00006517          	auipc	a0,0x6
    800039a0:	91c50513          	addi	a0,a0,-1764 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800039a4:	00002097          	auipc	ra,0x2
    800039a8:	b34080e7          	jalr	-1228(ra) # 800054d8 <_Z11printStringPKc>
    800039ac:	0400006f          	j	800039ec <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800039b0:	00006517          	auipc	a0,0x6
    800039b4:	b2050513          	addi	a0,a0,-1248 # 800094d0 <CONSOLE_STATUS+0x4c0>
    800039b8:	00002097          	auipc	ra,0x2
    800039bc:	b20080e7          	jalr	-1248(ra) # 800054d8 <_Z11printStringPKc>
    800039c0:	00000613          	li	a2,0
    800039c4:	00a00593          	li	a1,10
    800039c8:	00048513          	mv	a0,s1
    800039cc:	00002097          	auipc	ra,0x2
    800039d0:	cbc080e7          	jalr	-836(ra) # 80005688 <_Z8printIntiii>
    800039d4:	00006517          	auipc	a0,0x6
    800039d8:	8e450513          	addi	a0,a0,-1820 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800039dc:	00002097          	auipc	ra,0x2
    800039e0:	afc080e7          	jalr	-1284(ra) # 800054d8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800039e4:	0014849b          	addiw	s1,s1,1
    800039e8:	0ff4f493          	andi	s1,s1,255
    800039ec:	00f00793          	li	a5,15
    800039f0:	fc97f0e3          	bgeu	a5,s1,800039b0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800039f4:	00006517          	auipc	a0,0x6
    800039f8:	b0450513          	addi	a0,a0,-1276 # 800094f8 <CONSOLE_STATUS+0x4e8>
    800039fc:	00002097          	auipc	ra,0x2
    80003a00:	adc080e7          	jalr	-1316(ra) # 800054d8 <_Z11printStringPKc>
    finishedD = true;
    80003a04:	00100793          	li	a5,1
    80003a08:	00008717          	auipc	a4,0x8
    80003a0c:	32f70da3          	sb	a5,827(a4) # 8000bd43 <_ZL9finishedD>
    thread_dispatch();
    80003a10:	ffffe097          	auipc	ra,0xffffe
    80003a14:	978080e7          	jalr	-1672(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003a18:	01813083          	ld	ra,24(sp)
    80003a1c:	01013403          	ld	s0,16(sp)
    80003a20:	00813483          	ld	s1,8(sp)
    80003a24:	00013903          	ld	s2,0(sp)
    80003a28:	02010113          	addi	sp,sp,32
    80003a2c:	00008067          	ret

0000000080003a30 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003a30:	fc010113          	addi	sp,sp,-64
    80003a34:	02113c23          	sd	ra,56(sp)
    80003a38:	02813823          	sd	s0,48(sp)
    80003a3c:	02913423          	sd	s1,40(sp)
    80003a40:	03213023          	sd	s2,32(sp)
    80003a44:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003a48:	02000513          	li	a0,32
    80003a4c:	fffff097          	auipc	ra,0xfffff
    80003a50:	c60080e7          	jalr	-928(ra) # 800026ac <_Znwm>
    80003a54:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003a58:	fffff097          	auipc	ra,0xfffff
    80003a5c:	f2c080e7          	jalr	-212(ra) # 80002984 <_ZN6ThreadC1Ev>
    80003a60:	00008797          	auipc	a5,0x8
    80003a64:	04878793          	addi	a5,a5,72 # 8000baa8 <_ZTV7WorkerA+0x10>
    80003a68:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003a6c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003a70:	00006517          	auipc	a0,0x6
    80003a74:	a9850513          	addi	a0,a0,-1384 # 80009508 <CONSOLE_STATUS+0x4f8>
    80003a78:	00002097          	auipc	ra,0x2
    80003a7c:	a60080e7          	jalr	-1440(ra) # 800054d8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003a80:	02000513          	li	a0,32
    80003a84:	fffff097          	auipc	ra,0xfffff
    80003a88:	c28080e7          	jalr	-984(ra) # 800026ac <_Znwm>
    80003a8c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003a90:	fffff097          	auipc	ra,0xfffff
    80003a94:	ef4080e7          	jalr	-268(ra) # 80002984 <_ZN6ThreadC1Ev>
    80003a98:	00008797          	auipc	a5,0x8
    80003a9c:	03878793          	addi	a5,a5,56 # 8000bad0 <_ZTV7WorkerB+0x10>
    80003aa0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003aa4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003aa8:	00006517          	auipc	a0,0x6
    80003aac:	a7850513          	addi	a0,a0,-1416 # 80009520 <CONSOLE_STATUS+0x510>
    80003ab0:	00002097          	auipc	ra,0x2
    80003ab4:	a28080e7          	jalr	-1496(ra) # 800054d8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003ab8:	02000513          	li	a0,32
    80003abc:	fffff097          	auipc	ra,0xfffff
    80003ac0:	bf0080e7          	jalr	-1040(ra) # 800026ac <_Znwm>
    80003ac4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003ac8:	fffff097          	auipc	ra,0xfffff
    80003acc:	ebc080e7          	jalr	-324(ra) # 80002984 <_ZN6ThreadC1Ev>
    80003ad0:	00008797          	auipc	a5,0x8
    80003ad4:	02878793          	addi	a5,a5,40 # 8000baf8 <_ZTV7WorkerC+0x10>
    80003ad8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003adc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003ae0:	00006517          	auipc	a0,0x6
    80003ae4:	a5850513          	addi	a0,a0,-1448 # 80009538 <CONSOLE_STATUS+0x528>
    80003ae8:	00002097          	auipc	ra,0x2
    80003aec:	9f0080e7          	jalr	-1552(ra) # 800054d8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003af0:	02000513          	li	a0,32
    80003af4:	fffff097          	auipc	ra,0xfffff
    80003af8:	bb8080e7          	jalr	-1096(ra) # 800026ac <_Znwm>
    80003afc:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003b00:	fffff097          	auipc	ra,0xfffff
    80003b04:	e84080e7          	jalr	-380(ra) # 80002984 <_ZN6ThreadC1Ev>
    80003b08:	00008797          	auipc	a5,0x8
    80003b0c:	01878793          	addi	a5,a5,24 # 8000bb20 <_ZTV7WorkerD+0x10>
    80003b10:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003b14:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003b18:	00006517          	auipc	a0,0x6
    80003b1c:	a3850513          	addi	a0,a0,-1480 # 80009550 <CONSOLE_STATUS+0x540>
    80003b20:	00002097          	auipc	ra,0x2
    80003b24:	9b8080e7          	jalr	-1608(ra) # 800054d8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003b28:	00000493          	li	s1,0
    80003b2c:	00300793          	li	a5,3
    80003b30:	0297c663          	blt	a5,s1,80003b5c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003b34:	00349793          	slli	a5,s1,0x3
    80003b38:	fe040713          	addi	a4,s0,-32
    80003b3c:	00f707b3          	add	a5,a4,a5
    80003b40:	fe07b503          	ld	a0,-32(a5)
    80003b44:	fffff097          	auipc	ra,0xfffff
    80003b48:	e70080e7          	jalr	-400(ra) # 800029b4 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003b4c:	0014849b          	addiw	s1,s1,1
    80003b50:	fddff06f          	j	80003b2c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003b54:	fffff097          	auipc	ra,0xfffff
    80003b58:	eb4080e7          	jalr	-332(ra) # 80002a08 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003b5c:	00008797          	auipc	a5,0x8
    80003b60:	1e47c783          	lbu	a5,484(a5) # 8000bd40 <_ZL9finishedA>
    80003b64:	fe0788e3          	beqz	a5,80003b54 <_Z20Threads_CPP_API_testv+0x124>
    80003b68:	00008797          	auipc	a5,0x8
    80003b6c:	1d97c783          	lbu	a5,473(a5) # 8000bd41 <_ZL9finishedB>
    80003b70:	fe0782e3          	beqz	a5,80003b54 <_Z20Threads_CPP_API_testv+0x124>
    80003b74:	00008797          	auipc	a5,0x8
    80003b78:	1ce7c783          	lbu	a5,462(a5) # 8000bd42 <_ZL9finishedC>
    80003b7c:	fc078ce3          	beqz	a5,80003b54 <_Z20Threads_CPP_API_testv+0x124>
    80003b80:	00008797          	auipc	a5,0x8
    80003b84:	1c37c783          	lbu	a5,451(a5) # 8000bd43 <_ZL9finishedD>
    80003b88:	fc0786e3          	beqz	a5,80003b54 <_Z20Threads_CPP_API_testv+0x124>
    80003b8c:	fc040493          	addi	s1,s0,-64
    80003b90:	0080006f          	j	80003b98 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003b94:	00848493          	addi	s1,s1,8
    80003b98:	fe040793          	addi	a5,s0,-32
    80003b9c:	08f48663          	beq	s1,a5,80003c28 <_Z20Threads_CPP_API_testv+0x1f8>
    80003ba0:	0004b503          	ld	a0,0(s1)
    80003ba4:	fe0508e3          	beqz	a0,80003b94 <_Z20Threads_CPP_API_testv+0x164>
    80003ba8:	00053783          	ld	a5,0(a0)
    80003bac:	0087b783          	ld	a5,8(a5)
    80003bb0:	000780e7          	jalr	a5
    80003bb4:	fe1ff06f          	j	80003b94 <_Z20Threads_CPP_API_testv+0x164>
    80003bb8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003bbc:	00048513          	mv	a0,s1
    80003bc0:	fffff097          	auipc	ra,0xfffff
    80003bc4:	b3c080e7          	jalr	-1220(ra) # 800026fc <_ZdlPv>
    80003bc8:	00090513          	mv	a0,s2
    80003bcc:	00009097          	auipc	ra,0x9
    80003bd0:	2ac080e7          	jalr	684(ra) # 8000ce78 <_Unwind_Resume>
    80003bd4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003bd8:	00048513          	mv	a0,s1
    80003bdc:	fffff097          	auipc	ra,0xfffff
    80003be0:	b20080e7          	jalr	-1248(ra) # 800026fc <_ZdlPv>
    80003be4:	00090513          	mv	a0,s2
    80003be8:	00009097          	auipc	ra,0x9
    80003bec:	290080e7          	jalr	656(ra) # 8000ce78 <_Unwind_Resume>
    80003bf0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003bf4:	00048513          	mv	a0,s1
    80003bf8:	fffff097          	auipc	ra,0xfffff
    80003bfc:	b04080e7          	jalr	-1276(ra) # 800026fc <_ZdlPv>
    80003c00:	00090513          	mv	a0,s2
    80003c04:	00009097          	auipc	ra,0x9
    80003c08:	274080e7          	jalr	628(ra) # 8000ce78 <_Unwind_Resume>
    80003c0c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003c10:	00048513          	mv	a0,s1
    80003c14:	fffff097          	auipc	ra,0xfffff
    80003c18:	ae8080e7          	jalr	-1304(ra) # 800026fc <_ZdlPv>
    80003c1c:	00090513          	mv	a0,s2
    80003c20:	00009097          	auipc	ra,0x9
    80003c24:	258080e7          	jalr	600(ra) # 8000ce78 <_Unwind_Resume>
}
    80003c28:	03813083          	ld	ra,56(sp)
    80003c2c:	03013403          	ld	s0,48(sp)
    80003c30:	02813483          	ld	s1,40(sp)
    80003c34:	02013903          	ld	s2,32(sp)
    80003c38:	04010113          	addi	sp,sp,64
    80003c3c:	00008067          	ret

0000000080003c40 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003c40:	ff010113          	addi	sp,sp,-16
    80003c44:	00113423          	sd	ra,8(sp)
    80003c48:	00813023          	sd	s0,0(sp)
    80003c4c:	01010413          	addi	s0,sp,16
    80003c50:	00008797          	auipc	a5,0x8
    80003c54:	e5878793          	addi	a5,a5,-424 # 8000baa8 <_ZTV7WorkerA+0x10>
    80003c58:	00f53023          	sd	a5,0(a0)
    80003c5c:	fffff097          	auipc	ra,0xfffff
    80003c60:	c04080e7          	jalr	-1020(ra) # 80002860 <_ZN6ThreadD1Ev>
    80003c64:	00813083          	ld	ra,8(sp)
    80003c68:	00013403          	ld	s0,0(sp)
    80003c6c:	01010113          	addi	sp,sp,16
    80003c70:	00008067          	ret

0000000080003c74 <_ZN7WorkerAD0Ev>:
    80003c74:	fe010113          	addi	sp,sp,-32
    80003c78:	00113c23          	sd	ra,24(sp)
    80003c7c:	00813823          	sd	s0,16(sp)
    80003c80:	00913423          	sd	s1,8(sp)
    80003c84:	02010413          	addi	s0,sp,32
    80003c88:	00050493          	mv	s1,a0
    80003c8c:	00008797          	auipc	a5,0x8
    80003c90:	e1c78793          	addi	a5,a5,-484 # 8000baa8 <_ZTV7WorkerA+0x10>
    80003c94:	00f53023          	sd	a5,0(a0)
    80003c98:	fffff097          	auipc	ra,0xfffff
    80003c9c:	bc8080e7          	jalr	-1080(ra) # 80002860 <_ZN6ThreadD1Ev>
    80003ca0:	00048513          	mv	a0,s1
    80003ca4:	fffff097          	auipc	ra,0xfffff
    80003ca8:	a58080e7          	jalr	-1448(ra) # 800026fc <_ZdlPv>
    80003cac:	01813083          	ld	ra,24(sp)
    80003cb0:	01013403          	ld	s0,16(sp)
    80003cb4:	00813483          	ld	s1,8(sp)
    80003cb8:	02010113          	addi	sp,sp,32
    80003cbc:	00008067          	ret

0000000080003cc0 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003cc0:	ff010113          	addi	sp,sp,-16
    80003cc4:	00113423          	sd	ra,8(sp)
    80003cc8:	00813023          	sd	s0,0(sp)
    80003ccc:	01010413          	addi	s0,sp,16
    80003cd0:	00008797          	auipc	a5,0x8
    80003cd4:	e0078793          	addi	a5,a5,-512 # 8000bad0 <_ZTV7WorkerB+0x10>
    80003cd8:	00f53023          	sd	a5,0(a0)
    80003cdc:	fffff097          	auipc	ra,0xfffff
    80003ce0:	b84080e7          	jalr	-1148(ra) # 80002860 <_ZN6ThreadD1Ev>
    80003ce4:	00813083          	ld	ra,8(sp)
    80003ce8:	00013403          	ld	s0,0(sp)
    80003cec:	01010113          	addi	sp,sp,16
    80003cf0:	00008067          	ret

0000000080003cf4 <_ZN7WorkerBD0Ev>:
    80003cf4:	fe010113          	addi	sp,sp,-32
    80003cf8:	00113c23          	sd	ra,24(sp)
    80003cfc:	00813823          	sd	s0,16(sp)
    80003d00:	00913423          	sd	s1,8(sp)
    80003d04:	02010413          	addi	s0,sp,32
    80003d08:	00050493          	mv	s1,a0
    80003d0c:	00008797          	auipc	a5,0x8
    80003d10:	dc478793          	addi	a5,a5,-572 # 8000bad0 <_ZTV7WorkerB+0x10>
    80003d14:	00f53023          	sd	a5,0(a0)
    80003d18:	fffff097          	auipc	ra,0xfffff
    80003d1c:	b48080e7          	jalr	-1208(ra) # 80002860 <_ZN6ThreadD1Ev>
    80003d20:	00048513          	mv	a0,s1
    80003d24:	fffff097          	auipc	ra,0xfffff
    80003d28:	9d8080e7          	jalr	-1576(ra) # 800026fc <_ZdlPv>
    80003d2c:	01813083          	ld	ra,24(sp)
    80003d30:	01013403          	ld	s0,16(sp)
    80003d34:	00813483          	ld	s1,8(sp)
    80003d38:	02010113          	addi	sp,sp,32
    80003d3c:	00008067          	ret

0000000080003d40 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003d40:	ff010113          	addi	sp,sp,-16
    80003d44:	00113423          	sd	ra,8(sp)
    80003d48:	00813023          	sd	s0,0(sp)
    80003d4c:	01010413          	addi	s0,sp,16
    80003d50:	00008797          	auipc	a5,0x8
    80003d54:	da878793          	addi	a5,a5,-600 # 8000baf8 <_ZTV7WorkerC+0x10>
    80003d58:	00f53023          	sd	a5,0(a0)
    80003d5c:	fffff097          	auipc	ra,0xfffff
    80003d60:	b04080e7          	jalr	-1276(ra) # 80002860 <_ZN6ThreadD1Ev>
    80003d64:	00813083          	ld	ra,8(sp)
    80003d68:	00013403          	ld	s0,0(sp)
    80003d6c:	01010113          	addi	sp,sp,16
    80003d70:	00008067          	ret

0000000080003d74 <_ZN7WorkerCD0Ev>:
    80003d74:	fe010113          	addi	sp,sp,-32
    80003d78:	00113c23          	sd	ra,24(sp)
    80003d7c:	00813823          	sd	s0,16(sp)
    80003d80:	00913423          	sd	s1,8(sp)
    80003d84:	02010413          	addi	s0,sp,32
    80003d88:	00050493          	mv	s1,a0
    80003d8c:	00008797          	auipc	a5,0x8
    80003d90:	d6c78793          	addi	a5,a5,-660 # 8000baf8 <_ZTV7WorkerC+0x10>
    80003d94:	00f53023          	sd	a5,0(a0)
    80003d98:	fffff097          	auipc	ra,0xfffff
    80003d9c:	ac8080e7          	jalr	-1336(ra) # 80002860 <_ZN6ThreadD1Ev>
    80003da0:	00048513          	mv	a0,s1
    80003da4:	fffff097          	auipc	ra,0xfffff
    80003da8:	958080e7          	jalr	-1704(ra) # 800026fc <_ZdlPv>
    80003dac:	01813083          	ld	ra,24(sp)
    80003db0:	01013403          	ld	s0,16(sp)
    80003db4:	00813483          	ld	s1,8(sp)
    80003db8:	02010113          	addi	sp,sp,32
    80003dbc:	00008067          	ret

0000000080003dc0 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003dc0:	ff010113          	addi	sp,sp,-16
    80003dc4:	00113423          	sd	ra,8(sp)
    80003dc8:	00813023          	sd	s0,0(sp)
    80003dcc:	01010413          	addi	s0,sp,16
    80003dd0:	00008797          	auipc	a5,0x8
    80003dd4:	d5078793          	addi	a5,a5,-688 # 8000bb20 <_ZTV7WorkerD+0x10>
    80003dd8:	00f53023          	sd	a5,0(a0)
    80003ddc:	fffff097          	auipc	ra,0xfffff
    80003de0:	a84080e7          	jalr	-1404(ra) # 80002860 <_ZN6ThreadD1Ev>
    80003de4:	00813083          	ld	ra,8(sp)
    80003de8:	00013403          	ld	s0,0(sp)
    80003dec:	01010113          	addi	sp,sp,16
    80003df0:	00008067          	ret

0000000080003df4 <_ZN7WorkerDD0Ev>:
    80003df4:	fe010113          	addi	sp,sp,-32
    80003df8:	00113c23          	sd	ra,24(sp)
    80003dfc:	00813823          	sd	s0,16(sp)
    80003e00:	00913423          	sd	s1,8(sp)
    80003e04:	02010413          	addi	s0,sp,32
    80003e08:	00050493          	mv	s1,a0
    80003e0c:	00008797          	auipc	a5,0x8
    80003e10:	d1478793          	addi	a5,a5,-748 # 8000bb20 <_ZTV7WorkerD+0x10>
    80003e14:	00f53023          	sd	a5,0(a0)
    80003e18:	fffff097          	auipc	ra,0xfffff
    80003e1c:	a48080e7          	jalr	-1464(ra) # 80002860 <_ZN6ThreadD1Ev>
    80003e20:	00048513          	mv	a0,s1
    80003e24:	fffff097          	auipc	ra,0xfffff
    80003e28:	8d8080e7          	jalr	-1832(ra) # 800026fc <_ZdlPv>
    80003e2c:	01813083          	ld	ra,24(sp)
    80003e30:	01013403          	ld	s0,16(sp)
    80003e34:	00813483          	ld	s1,8(sp)
    80003e38:	02010113          	addi	sp,sp,32
    80003e3c:	00008067          	ret

0000000080003e40 <_ZN7WorkerA3runEv>:
    void run() override {
    80003e40:	ff010113          	addi	sp,sp,-16
    80003e44:	00113423          	sd	ra,8(sp)
    80003e48:	00813023          	sd	s0,0(sp)
    80003e4c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003e50:	00000593          	li	a1,0
    80003e54:	fffff097          	auipc	ra,0xfffff
    80003e58:	774080e7          	jalr	1908(ra) # 800035c8 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003e5c:	00813083          	ld	ra,8(sp)
    80003e60:	00013403          	ld	s0,0(sp)
    80003e64:	01010113          	addi	sp,sp,16
    80003e68:	00008067          	ret

0000000080003e6c <_ZN7WorkerB3runEv>:
    void run() override {
    80003e6c:	ff010113          	addi	sp,sp,-16
    80003e70:	00113423          	sd	ra,8(sp)
    80003e74:	00813023          	sd	s0,0(sp)
    80003e78:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003e7c:	00000593          	li	a1,0
    80003e80:	00000097          	auipc	ra,0x0
    80003e84:	814080e7          	jalr	-2028(ra) # 80003694 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003e88:	00813083          	ld	ra,8(sp)
    80003e8c:	00013403          	ld	s0,0(sp)
    80003e90:	01010113          	addi	sp,sp,16
    80003e94:	00008067          	ret

0000000080003e98 <_ZN7WorkerC3runEv>:
    void run() override {
    80003e98:	ff010113          	addi	sp,sp,-16
    80003e9c:	00113423          	sd	ra,8(sp)
    80003ea0:	00813023          	sd	s0,0(sp)
    80003ea4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003ea8:	00000593          	li	a1,0
    80003eac:	00000097          	auipc	ra,0x0
    80003eb0:	8bc080e7          	jalr	-1860(ra) # 80003768 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003eb4:	00813083          	ld	ra,8(sp)
    80003eb8:	00013403          	ld	s0,0(sp)
    80003ebc:	01010113          	addi	sp,sp,16
    80003ec0:	00008067          	ret

0000000080003ec4 <_ZN7WorkerD3runEv>:
    void run() override {
    80003ec4:	ff010113          	addi	sp,sp,-16
    80003ec8:	00113423          	sd	ra,8(sp)
    80003ecc:	00813023          	sd	s0,0(sp)
    80003ed0:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003ed4:	00000593          	li	a1,0
    80003ed8:	00000097          	auipc	ra,0x0
    80003edc:	a10080e7          	jalr	-1520(ra) # 800038e8 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003ee0:	00813083          	ld	ra,8(sp)
    80003ee4:	00013403          	ld	s0,0(sp)
    80003ee8:	01010113          	addi	sp,sp,16
    80003eec:	00008067          	ret

0000000080003ef0 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003ef0:	f8010113          	addi	sp,sp,-128
    80003ef4:	06113c23          	sd	ra,120(sp)
    80003ef8:	06813823          	sd	s0,112(sp)
    80003efc:	06913423          	sd	s1,104(sp)
    80003f00:	07213023          	sd	s2,96(sp)
    80003f04:	05313c23          	sd	s3,88(sp)
    80003f08:	05413823          	sd	s4,80(sp)
    80003f0c:	05513423          	sd	s5,72(sp)
    80003f10:	05613023          	sd	s6,64(sp)
    80003f14:	03713c23          	sd	s7,56(sp)
    80003f18:	03813823          	sd	s8,48(sp)
    80003f1c:	03913423          	sd	s9,40(sp)
    80003f20:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003f24:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003f28:	00005517          	auipc	a0,0x5
    80003f2c:	46050513          	addi	a0,a0,1120 # 80009388 <CONSOLE_STATUS+0x378>
    80003f30:	00001097          	auipc	ra,0x1
    80003f34:	5a8080e7          	jalr	1448(ra) # 800054d8 <_Z11printStringPKc>
    getString(input, 30);
    80003f38:	01e00593          	li	a1,30
    80003f3c:	f8040493          	addi	s1,s0,-128
    80003f40:	00048513          	mv	a0,s1
    80003f44:	00001097          	auipc	ra,0x1
    80003f48:	61c080e7          	jalr	1564(ra) # 80005560 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003f4c:	00048513          	mv	a0,s1
    80003f50:	00001097          	auipc	ra,0x1
    80003f54:	6e8080e7          	jalr	1768(ra) # 80005638 <_Z11stringToIntPKc>
    80003f58:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003f5c:	00005517          	auipc	a0,0x5
    80003f60:	44c50513          	addi	a0,a0,1100 # 800093a8 <CONSOLE_STATUS+0x398>
    80003f64:	00001097          	auipc	ra,0x1
    80003f68:	574080e7          	jalr	1396(ra) # 800054d8 <_Z11printStringPKc>
    getString(input, 30);
    80003f6c:	01e00593          	li	a1,30
    80003f70:	00048513          	mv	a0,s1
    80003f74:	00001097          	auipc	ra,0x1
    80003f78:	5ec080e7          	jalr	1516(ra) # 80005560 <_Z9getStringPci>
    n = stringToInt(input);
    80003f7c:	00048513          	mv	a0,s1
    80003f80:	00001097          	auipc	ra,0x1
    80003f84:	6b8080e7          	jalr	1720(ra) # 80005638 <_Z11stringToIntPKc>
    80003f88:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003f8c:	00005517          	auipc	a0,0x5
    80003f90:	43c50513          	addi	a0,a0,1084 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80003f94:	00001097          	auipc	ra,0x1
    80003f98:	544080e7          	jalr	1348(ra) # 800054d8 <_Z11printStringPKc>
    printInt(threadNum);
    80003f9c:	00000613          	li	a2,0
    80003fa0:	00a00593          	li	a1,10
    80003fa4:	00098513          	mv	a0,s3
    80003fa8:	00001097          	auipc	ra,0x1
    80003fac:	6e0080e7          	jalr	1760(ra) # 80005688 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003fb0:	00005517          	auipc	a0,0x5
    80003fb4:	43050513          	addi	a0,a0,1072 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80003fb8:	00001097          	auipc	ra,0x1
    80003fbc:	520080e7          	jalr	1312(ra) # 800054d8 <_Z11printStringPKc>
    printInt(n);
    80003fc0:	00000613          	li	a2,0
    80003fc4:	00a00593          	li	a1,10
    80003fc8:	00048513          	mv	a0,s1
    80003fcc:	00001097          	auipc	ra,0x1
    80003fd0:	6bc080e7          	jalr	1724(ra) # 80005688 <_Z8printIntiii>
    printString(".\n");
    80003fd4:	00005517          	auipc	a0,0x5
    80003fd8:	42450513          	addi	a0,a0,1060 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80003fdc:	00001097          	auipc	ra,0x1
    80003fe0:	4fc080e7          	jalr	1276(ra) # 800054d8 <_Z11printStringPKc>
    if (threadNum > n) {
    80003fe4:	0334c463          	blt	s1,s3,8000400c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003fe8:	03305c63          	blez	s3,80004020 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003fec:	03800513          	li	a0,56
    80003ff0:	ffffe097          	auipc	ra,0xffffe
    80003ff4:	6bc080e7          	jalr	1724(ra) # 800026ac <_Znwm>
    80003ff8:	00050a93          	mv	s5,a0
    80003ffc:	00048593          	mv	a1,s1
    80004000:	00001097          	auipc	ra,0x1
    80004004:	7a8080e7          	jalr	1960(ra) # 800057a8 <_ZN9BufferCPPC1Ei>
    80004008:	0300006f          	j	80004038 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000400c:	00005517          	auipc	a0,0x5
    80004010:	3f450513          	addi	a0,a0,1012 # 80009400 <CONSOLE_STATUS+0x3f0>
    80004014:	00001097          	auipc	ra,0x1
    80004018:	4c4080e7          	jalr	1220(ra) # 800054d8 <_Z11printStringPKc>
        return;
    8000401c:	0140006f          	j	80004030 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004020:	00005517          	auipc	a0,0x5
    80004024:	42050513          	addi	a0,a0,1056 # 80009440 <CONSOLE_STATUS+0x430>
    80004028:	00001097          	auipc	ra,0x1
    8000402c:	4b0080e7          	jalr	1200(ra) # 800054d8 <_Z11printStringPKc>
        return;
    80004030:	000c0113          	mv	sp,s8
    80004034:	2140006f          	j	80004248 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004038:	01000513          	li	a0,16
    8000403c:	ffffe097          	auipc	ra,0xffffe
    80004040:	670080e7          	jalr	1648(ra) # 800026ac <_Znwm>
    80004044:	00050913          	mv	s2,a0
    80004048:	00000593          	li	a1,0
    8000404c:	fffff097          	auipc	ra,0xfffff
    80004050:	a5c080e7          	jalr	-1444(ra) # 80002aa8 <_ZN9SemaphoreC1Ej>
    80004054:	00008797          	auipc	a5,0x8
    80004058:	cf27be23          	sd	s2,-772(a5) # 8000bd50 <_ZL10waitForAll>
    Thread *producers[threadNum];
    8000405c:	00399793          	slli	a5,s3,0x3
    80004060:	00f78793          	addi	a5,a5,15
    80004064:	ff07f793          	andi	a5,a5,-16
    80004068:	40f10133          	sub	sp,sp,a5
    8000406c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004070:	0019871b          	addiw	a4,s3,1
    80004074:	00171793          	slli	a5,a4,0x1
    80004078:	00e787b3          	add	a5,a5,a4
    8000407c:	00379793          	slli	a5,a5,0x3
    80004080:	00f78793          	addi	a5,a5,15
    80004084:	ff07f793          	andi	a5,a5,-16
    80004088:	40f10133          	sub	sp,sp,a5
    8000408c:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004090:	00199493          	slli	s1,s3,0x1
    80004094:	013484b3          	add	s1,s1,s3
    80004098:	00349493          	slli	s1,s1,0x3
    8000409c:	009b04b3          	add	s1,s6,s1
    800040a0:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800040a4:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800040a8:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800040ac:	02800513          	li	a0,40
    800040b0:	ffffe097          	auipc	ra,0xffffe
    800040b4:	5fc080e7          	jalr	1532(ra) # 800026ac <_Znwm>
    800040b8:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800040bc:	fffff097          	auipc	ra,0xfffff
    800040c0:	8c8080e7          	jalr	-1848(ra) # 80002984 <_ZN6ThreadC1Ev>
    800040c4:	00008797          	auipc	a5,0x8
    800040c8:	ad478793          	addi	a5,a5,-1324 # 8000bb98 <_ZTV8Consumer+0x10>
    800040cc:	00fbb023          	sd	a5,0(s7)
    800040d0:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800040d4:	000b8513          	mv	a0,s7
    800040d8:	fffff097          	auipc	ra,0xfffff
    800040dc:	8dc080e7          	jalr	-1828(ra) # 800029b4 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800040e0:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800040e4:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800040e8:	00008797          	auipc	a5,0x8
    800040ec:	c687b783          	ld	a5,-920(a5) # 8000bd50 <_ZL10waitForAll>
    800040f0:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800040f4:	02800513          	li	a0,40
    800040f8:	ffffe097          	auipc	ra,0xffffe
    800040fc:	5b4080e7          	jalr	1460(ra) # 800026ac <_Znwm>
    80004100:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004104:	fffff097          	auipc	ra,0xfffff
    80004108:	880080e7          	jalr	-1920(ra) # 80002984 <_ZN6ThreadC1Ev>
    8000410c:	00008797          	auipc	a5,0x8
    80004110:	a3c78793          	addi	a5,a5,-1476 # 8000bb48 <_ZTV16ProducerKeyborad+0x10>
    80004114:	00f4b023          	sd	a5,0(s1)
    80004118:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000411c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004120:	00048513          	mv	a0,s1
    80004124:	fffff097          	auipc	ra,0xfffff
    80004128:	890080e7          	jalr	-1904(ra) # 800029b4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000412c:	00100913          	li	s2,1
    80004130:	0300006f          	j	80004160 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004134:	00008797          	auipc	a5,0x8
    80004138:	a3c78793          	addi	a5,a5,-1476 # 8000bb70 <_ZTV8Producer+0x10>
    8000413c:	00fcb023          	sd	a5,0(s9)
    80004140:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004144:	00391793          	slli	a5,s2,0x3
    80004148:	00fa07b3          	add	a5,s4,a5
    8000414c:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004150:	000c8513          	mv	a0,s9
    80004154:	fffff097          	auipc	ra,0xfffff
    80004158:	860080e7          	jalr	-1952(ra) # 800029b4 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000415c:	0019091b          	addiw	s2,s2,1
    80004160:	05395263          	bge	s2,s3,800041a4 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004164:	00191493          	slli	s1,s2,0x1
    80004168:	012484b3          	add	s1,s1,s2
    8000416c:	00349493          	slli	s1,s1,0x3
    80004170:	009b04b3          	add	s1,s6,s1
    80004174:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004178:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    8000417c:	00008797          	auipc	a5,0x8
    80004180:	bd47b783          	ld	a5,-1068(a5) # 8000bd50 <_ZL10waitForAll>
    80004184:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004188:	02800513          	li	a0,40
    8000418c:	ffffe097          	auipc	ra,0xffffe
    80004190:	520080e7          	jalr	1312(ra) # 800026ac <_Znwm>
    80004194:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004198:	ffffe097          	auipc	ra,0xffffe
    8000419c:	7ec080e7          	jalr	2028(ra) # 80002984 <_ZN6ThreadC1Ev>
    800041a0:	f95ff06f          	j	80004134 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800041a4:	fffff097          	auipc	ra,0xfffff
    800041a8:	864080e7          	jalr	-1948(ra) # 80002a08 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800041ac:	00000493          	li	s1,0
    800041b0:	0099ce63          	blt	s3,s1,800041cc <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800041b4:	00008517          	auipc	a0,0x8
    800041b8:	b9c53503          	ld	a0,-1124(a0) # 8000bd50 <_ZL10waitForAll>
    800041bc:	fffff097          	auipc	ra,0xfffff
    800041c0:	928080e7          	jalr	-1752(ra) # 80002ae4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800041c4:	0014849b          	addiw	s1,s1,1
    800041c8:	fe9ff06f          	j	800041b0 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800041cc:	00008517          	auipc	a0,0x8
    800041d0:	b8453503          	ld	a0,-1148(a0) # 8000bd50 <_ZL10waitForAll>
    800041d4:	00050863          	beqz	a0,800041e4 <_Z20testConsumerProducerv+0x2f4>
    800041d8:	00053783          	ld	a5,0(a0)
    800041dc:	0087b783          	ld	a5,8(a5)
    800041e0:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800041e4:	00000493          	li	s1,0
    800041e8:	0080006f          	j	800041f0 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800041ec:	0014849b          	addiw	s1,s1,1
    800041f0:	0334d263          	bge	s1,s3,80004214 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800041f4:	00349793          	slli	a5,s1,0x3
    800041f8:	00fa07b3          	add	a5,s4,a5
    800041fc:	0007b503          	ld	a0,0(a5)
    80004200:	fe0506e3          	beqz	a0,800041ec <_Z20testConsumerProducerv+0x2fc>
    80004204:	00053783          	ld	a5,0(a0)
    80004208:	0087b783          	ld	a5,8(a5)
    8000420c:	000780e7          	jalr	a5
    80004210:	fddff06f          	j	800041ec <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004214:	000b8a63          	beqz	s7,80004228 <_Z20testConsumerProducerv+0x338>
    80004218:	000bb783          	ld	a5,0(s7)
    8000421c:	0087b783          	ld	a5,8(a5)
    80004220:	000b8513          	mv	a0,s7
    80004224:	000780e7          	jalr	a5
    delete buffer;
    80004228:	000a8e63          	beqz	s5,80004244 <_Z20testConsumerProducerv+0x354>
    8000422c:	000a8513          	mv	a0,s5
    80004230:	00002097          	auipc	ra,0x2
    80004234:	870080e7          	jalr	-1936(ra) # 80005aa0 <_ZN9BufferCPPD1Ev>
    80004238:	000a8513          	mv	a0,s5
    8000423c:	ffffe097          	auipc	ra,0xffffe
    80004240:	4c0080e7          	jalr	1216(ra) # 800026fc <_ZdlPv>
    80004244:	000c0113          	mv	sp,s8
}
    80004248:	f8040113          	addi	sp,s0,-128
    8000424c:	07813083          	ld	ra,120(sp)
    80004250:	07013403          	ld	s0,112(sp)
    80004254:	06813483          	ld	s1,104(sp)
    80004258:	06013903          	ld	s2,96(sp)
    8000425c:	05813983          	ld	s3,88(sp)
    80004260:	05013a03          	ld	s4,80(sp)
    80004264:	04813a83          	ld	s5,72(sp)
    80004268:	04013b03          	ld	s6,64(sp)
    8000426c:	03813b83          	ld	s7,56(sp)
    80004270:	03013c03          	ld	s8,48(sp)
    80004274:	02813c83          	ld	s9,40(sp)
    80004278:	08010113          	addi	sp,sp,128
    8000427c:	00008067          	ret
    80004280:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004284:	000a8513          	mv	a0,s5
    80004288:	ffffe097          	auipc	ra,0xffffe
    8000428c:	474080e7          	jalr	1140(ra) # 800026fc <_ZdlPv>
    80004290:	00048513          	mv	a0,s1
    80004294:	00009097          	auipc	ra,0x9
    80004298:	be4080e7          	jalr	-1052(ra) # 8000ce78 <_Unwind_Resume>
    8000429c:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800042a0:	00090513          	mv	a0,s2
    800042a4:	ffffe097          	auipc	ra,0xffffe
    800042a8:	458080e7          	jalr	1112(ra) # 800026fc <_ZdlPv>
    800042ac:	00048513          	mv	a0,s1
    800042b0:	00009097          	auipc	ra,0x9
    800042b4:	bc8080e7          	jalr	-1080(ra) # 8000ce78 <_Unwind_Resume>
    800042b8:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800042bc:	000b8513          	mv	a0,s7
    800042c0:	ffffe097          	auipc	ra,0xffffe
    800042c4:	43c080e7          	jalr	1084(ra) # 800026fc <_ZdlPv>
    800042c8:	00048513          	mv	a0,s1
    800042cc:	00009097          	auipc	ra,0x9
    800042d0:	bac080e7          	jalr	-1108(ra) # 8000ce78 <_Unwind_Resume>
    800042d4:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800042d8:	00048513          	mv	a0,s1
    800042dc:	ffffe097          	auipc	ra,0xffffe
    800042e0:	420080e7          	jalr	1056(ra) # 800026fc <_ZdlPv>
    800042e4:	00090513          	mv	a0,s2
    800042e8:	00009097          	auipc	ra,0x9
    800042ec:	b90080e7          	jalr	-1136(ra) # 8000ce78 <_Unwind_Resume>
    800042f0:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800042f4:	000c8513          	mv	a0,s9
    800042f8:	ffffe097          	auipc	ra,0xffffe
    800042fc:	404080e7          	jalr	1028(ra) # 800026fc <_ZdlPv>
    80004300:	00048513          	mv	a0,s1
    80004304:	00009097          	auipc	ra,0x9
    80004308:	b74080e7          	jalr	-1164(ra) # 8000ce78 <_Unwind_Resume>

000000008000430c <_ZN8Consumer3runEv>:
    void run() override {
    8000430c:	fd010113          	addi	sp,sp,-48
    80004310:	02113423          	sd	ra,40(sp)
    80004314:	02813023          	sd	s0,32(sp)
    80004318:	00913c23          	sd	s1,24(sp)
    8000431c:	01213823          	sd	s2,16(sp)
    80004320:	01313423          	sd	s3,8(sp)
    80004324:	03010413          	addi	s0,sp,48
    80004328:	00050913          	mv	s2,a0
        int i = 0;
    8000432c:	00000993          	li	s3,0
    80004330:	0100006f          	j	80004340 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004334:	00a00513          	li	a0,10
    80004338:	fffff097          	auipc	ra,0xfffff
    8000433c:	894080e7          	jalr	-1900(ra) # 80002bcc <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004340:	00008797          	auipc	a5,0x8
    80004344:	a087a783          	lw	a5,-1528(a5) # 8000bd48 <_ZL9threadEnd>
    80004348:	04079a63          	bnez	a5,8000439c <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    8000434c:	02093783          	ld	a5,32(s2)
    80004350:	0087b503          	ld	a0,8(a5)
    80004354:	00001097          	auipc	ra,0x1
    80004358:	638080e7          	jalr	1592(ra) # 8000598c <_ZN9BufferCPP3getEv>
            i++;
    8000435c:	0019849b          	addiw	s1,s3,1
    80004360:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004364:	0ff57513          	andi	a0,a0,255
    80004368:	fffff097          	auipc	ra,0xfffff
    8000436c:	864080e7          	jalr	-1948(ra) # 80002bcc <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004370:	05000793          	li	a5,80
    80004374:	02f4e4bb          	remw	s1,s1,a5
    80004378:	fc0494e3          	bnez	s1,80004340 <_ZN8Consumer3runEv+0x34>
    8000437c:	fb9ff06f          	j	80004334 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004380:	02093783          	ld	a5,32(s2)
    80004384:	0087b503          	ld	a0,8(a5)
    80004388:	00001097          	auipc	ra,0x1
    8000438c:	604080e7          	jalr	1540(ra) # 8000598c <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004390:	0ff57513          	andi	a0,a0,255
    80004394:	fffff097          	auipc	ra,0xfffff
    80004398:	838080e7          	jalr	-1992(ra) # 80002bcc <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    8000439c:	02093783          	ld	a5,32(s2)
    800043a0:	0087b503          	ld	a0,8(a5)
    800043a4:	00001097          	auipc	ra,0x1
    800043a8:	674080e7          	jalr	1652(ra) # 80005a18 <_ZN9BufferCPP6getCntEv>
    800043ac:	fca04ae3          	bgtz	a0,80004380 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800043b0:	02093783          	ld	a5,32(s2)
    800043b4:	0107b503          	ld	a0,16(a5)
    800043b8:	ffffe097          	auipc	ra,0xffffe
    800043bc:	758080e7          	jalr	1880(ra) # 80002b10 <_ZN9Semaphore6signalEv>
    }
    800043c0:	02813083          	ld	ra,40(sp)
    800043c4:	02013403          	ld	s0,32(sp)
    800043c8:	01813483          	ld	s1,24(sp)
    800043cc:	01013903          	ld	s2,16(sp)
    800043d0:	00813983          	ld	s3,8(sp)
    800043d4:	03010113          	addi	sp,sp,48
    800043d8:	00008067          	ret

00000000800043dc <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800043dc:	ff010113          	addi	sp,sp,-16
    800043e0:	00113423          	sd	ra,8(sp)
    800043e4:	00813023          	sd	s0,0(sp)
    800043e8:	01010413          	addi	s0,sp,16
    800043ec:	00007797          	auipc	a5,0x7
    800043f0:	7ac78793          	addi	a5,a5,1964 # 8000bb98 <_ZTV8Consumer+0x10>
    800043f4:	00f53023          	sd	a5,0(a0)
    800043f8:	ffffe097          	auipc	ra,0xffffe
    800043fc:	468080e7          	jalr	1128(ra) # 80002860 <_ZN6ThreadD1Ev>
    80004400:	00813083          	ld	ra,8(sp)
    80004404:	00013403          	ld	s0,0(sp)
    80004408:	01010113          	addi	sp,sp,16
    8000440c:	00008067          	ret

0000000080004410 <_ZN8ConsumerD0Ev>:
    80004410:	fe010113          	addi	sp,sp,-32
    80004414:	00113c23          	sd	ra,24(sp)
    80004418:	00813823          	sd	s0,16(sp)
    8000441c:	00913423          	sd	s1,8(sp)
    80004420:	02010413          	addi	s0,sp,32
    80004424:	00050493          	mv	s1,a0
    80004428:	00007797          	auipc	a5,0x7
    8000442c:	77078793          	addi	a5,a5,1904 # 8000bb98 <_ZTV8Consumer+0x10>
    80004430:	00f53023          	sd	a5,0(a0)
    80004434:	ffffe097          	auipc	ra,0xffffe
    80004438:	42c080e7          	jalr	1068(ra) # 80002860 <_ZN6ThreadD1Ev>
    8000443c:	00048513          	mv	a0,s1
    80004440:	ffffe097          	auipc	ra,0xffffe
    80004444:	2bc080e7          	jalr	700(ra) # 800026fc <_ZdlPv>
    80004448:	01813083          	ld	ra,24(sp)
    8000444c:	01013403          	ld	s0,16(sp)
    80004450:	00813483          	ld	s1,8(sp)
    80004454:	02010113          	addi	sp,sp,32
    80004458:	00008067          	ret

000000008000445c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    8000445c:	ff010113          	addi	sp,sp,-16
    80004460:	00113423          	sd	ra,8(sp)
    80004464:	00813023          	sd	s0,0(sp)
    80004468:	01010413          	addi	s0,sp,16
    8000446c:	00007797          	auipc	a5,0x7
    80004470:	6dc78793          	addi	a5,a5,1756 # 8000bb48 <_ZTV16ProducerKeyborad+0x10>
    80004474:	00f53023          	sd	a5,0(a0)
    80004478:	ffffe097          	auipc	ra,0xffffe
    8000447c:	3e8080e7          	jalr	1000(ra) # 80002860 <_ZN6ThreadD1Ev>
    80004480:	00813083          	ld	ra,8(sp)
    80004484:	00013403          	ld	s0,0(sp)
    80004488:	01010113          	addi	sp,sp,16
    8000448c:	00008067          	ret

0000000080004490 <_ZN16ProducerKeyboradD0Ev>:
    80004490:	fe010113          	addi	sp,sp,-32
    80004494:	00113c23          	sd	ra,24(sp)
    80004498:	00813823          	sd	s0,16(sp)
    8000449c:	00913423          	sd	s1,8(sp)
    800044a0:	02010413          	addi	s0,sp,32
    800044a4:	00050493          	mv	s1,a0
    800044a8:	00007797          	auipc	a5,0x7
    800044ac:	6a078793          	addi	a5,a5,1696 # 8000bb48 <_ZTV16ProducerKeyborad+0x10>
    800044b0:	00f53023          	sd	a5,0(a0)
    800044b4:	ffffe097          	auipc	ra,0xffffe
    800044b8:	3ac080e7          	jalr	940(ra) # 80002860 <_ZN6ThreadD1Ev>
    800044bc:	00048513          	mv	a0,s1
    800044c0:	ffffe097          	auipc	ra,0xffffe
    800044c4:	23c080e7          	jalr	572(ra) # 800026fc <_ZdlPv>
    800044c8:	01813083          	ld	ra,24(sp)
    800044cc:	01013403          	ld	s0,16(sp)
    800044d0:	00813483          	ld	s1,8(sp)
    800044d4:	02010113          	addi	sp,sp,32
    800044d8:	00008067          	ret

00000000800044dc <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800044dc:	ff010113          	addi	sp,sp,-16
    800044e0:	00113423          	sd	ra,8(sp)
    800044e4:	00813023          	sd	s0,0(sp)
    800044e8:	01010413          	addi	s0,sp,16
    800044ec:	00007797          	auipc	a5,0x7
    800044f0:	68478793          	addi	a5,a5,1668 # 8000bb70 <_ZTV8Producer+0x10>
    800044f4:	00f53023          	sd	a5,0(a0)
    800044f8:	ffffe097          	auipc	ra,0xffffe
    800044fc:	368080e7          	jalr	872(ra) # 80002860 <_ZN6ThreadD1Ev>
    80004500:	00813083          	ld	ra,8(sp)
    80004504:	00013403          	ld	s0,0(sp)
    80004508:	01010113          	addi	sp,sp,16
    8000450c:	00008067          	ret

0000000080004510 <_ZN8ProducerD0Ev>:
    80004510:	fe010113          	addi	sp,sp,-32
    80004514:	00113c23          	sd	ra,24(sp)
    80004518:	00813823          	sd	s0,16(sp)
    8000451c:	00913423          	sd	s1,8(sp)
    80004520:	02010413          	addi	s0,sp,32
    80004524:	00050493          	mv	s1,a0
    80004528:	00007797          	auipc	a5,0x7
    8000452c:	64878793          	addi	a5,a5,1608 # 8000bb70 <_ZTV8Producer+0x10>
    80004530:	00f53023          	sd	a5,0(a0)
    80004534:	ffffe097          	auipc	ra,0xffffe
    80004538:	32c080e7          	jalr	812(ra) # 80002860 <_ZN6ThreadD1Ev>
    8000453c:	00048513          	mv	a0,s1
    80004540:	ffffe097          	auipc	ra,0xffffe
    80004544:	1bc080e7          	jalr	444(ra) # 800026fc <_ZdlPv>
    80004548:	01813083          	ld	ra,24(sp)
    8000454c:	01013403          	ld	s0,16(sp)
    80004550:	00813483          	ld	s1,8(sp)
    80004554:	02010113          	addi	sp,sp,32
    80004558:	00008067          	ret

000000008000455c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    8000455c:	fe010113          	addi	sp,sp,-32
    80004560:	00113c23          	sd	ra,24(sp)
    80004564:	00813823          	sd	s0,16(sp)
    80004568:	00913423          	sd	s1,8(sp)
    8000456c:	02010413          	addi	s0,sp,32
    80004570:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004574:	ffffd097          	auipc	ra,0xffffd
    80004578:	098080e7          	jalr	152(ra) # 8000160c <_Z4getcv>
    8000457c:	0005059b          	sext.w	a1,a0
    80004580:	01b00793          	li	a5,27
    80004584:	00f58c63          	beq	a1,a5,8000459c <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004588:	0204b783          	ld	a5,32(s1)
    8000458c:	0087b503          	ld	a0,8(a5)
    80004590:	00001097          	auipc	ra,0x1
    80004594:	36c080e7          	jalr	876(ra) # 800058fc <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004598:	fddff06f          	j	80004574 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    8000459c:	00100793          	li	a5,1
    800045a0:	00007717          	auipc	a4,0x7
    800045a4:	7af72423          	sw	a5,1960(a4) # 8000bd48 <_ZL9threadEnd>
        td->buffer->put('!');
    800045a8:	0204b783          	ld	a5,32(s1)
    800045ac:	02100593          	li	a1,33
    800045b0:	0087b503          	ld	a0,8(a5)
    800045b4:	00001097          	auipc	ra,0x1
    800045b8:	348080e7          	jalr	840(ra) # 800058fc <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800045bc:	0204b783          	ld	a5,32(s1)
    800045c0:	0107b503          	ld	a0,16(a5)
    800045c4:	ffffe097          	auipc	ra,0xffffe
    800045c8:	54c080e7          	jalr	1356(ra) # 80002b10 <_ZN9Semaphore6signalEv>
    }
    800045cc:	01813083          	ld	ra,24(sp)
    800045d0:	01013403          	ld	s0,16(sp)
    800045d4:	00813483          	ld	s1,8(sp)
    800045d8:	02010113          	addi	sp,sp,32
    800045dc:	00008067          	ret

00000000800045e0 <_ZN8Producer3runEv>:
    void run() override {
    800045e0:	fe010113          	addi	sp,sp,-32
    800045e4:	00113c23          	sd	ra,24(sp)
    800045e8:	00813823          	sd	s0,16(sp)
    800045ec:	00913423          	sd	s1,8(sp)
    800045f0:	01213023          	sd	s2,0(sp)
    800045f4:	02010413          	addi	s0,sp,32
    800045f8:	00050493          	mv	s1,a0
        int i = 0;
    800045fc:	00000913          	li	s2,0
        while (!threadEnd) {
    80004600:	00007797          	auipc	a5,0x7
    80004604:	7487a783          	lw	a5,1864(a5) # 8000bd48 <_ZL9threadEnd>
    80004608:	04079263          	bnez	a5,8000464c <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    8000460c:	0204b783          	ld	a5,32(s1)
    80004610:	0007a583          	lw	a1,0(a5)
    80004614:	0305859b          	addiw	a1,a1,48
    80004618:	0087b503          	ld	a0,8(a5)
    8000461c:	00001097          	auipc	ra,0x1
    80004620:	2e0080e7          	jalr	736(ra) # 800058fc <_ZN9BufferCPP3putEi>
            i++;
    80004624:	0019071b          	addiw	a4,s2,1
    80004628:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    8000462c:	0204b783          	ld	a5,32(s1)
    80004630:	0007a783          	lw	a5,0(a5)
    80004634:	00e787bb          	addw	a5,a5,a4
    80004638:	00500513          	li	a0,5
    8000463c:	02a7e53b          	remw	a0,a5,a0
    80004640:	ffffe097          	auipc	ra,0xffffe
    80004644:	3f0080e7          	jalr	1008(ra) # 80002a30 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004648:	fb9ff06f          	j	80004600 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    8000464c:	0204b783          	ld	a5,32(s1)
    80004650:	0107b503          	ld	a0,16(a5)
    80004654:	ffffe097          	auipc	ra,0xffffe
    80004658:	4bc080e7          	jalr	1212(ra) # 80002b10 <_ZN9Semaphore6signalEv>
    }
    8000465c:	01813083          	ld	ra,24(sp)
    80004660:	01013403          	ld	s0,16(sp)
    80004664:	00813483          	ld	s1,8(sp)
    80004668:	00013903          	ld	s2,0(sp)
    8000466c:	02010113          	addi	sp,sp,32
    80004670:	00008067          	ret

0000000080004674 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004674:	fe010113          	addi	sp,sp,-32
    80004678:	00113c23          	sd	ra,24(sp)
    8000467c:	00813823          	sd	s0,16(sp)
    80004680:	00913423          	sd	s1,8(sp)
    80004684:	01213023          	sd	s2,0(sp)
    80004688:	02010413          	addi	s0,sp,32
    8000468c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004690:	00100793          	li	a5,1
    80004694:	02a7f863          	bgeu	a5,a0,800046c4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004698:	00a00793          	li	a5,10
    8000469c:	02f577b3          	remu	a5,a0,a5
    800046a0:	02078e63          	beqz	a5,800046dc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800046a4:	fff48513          	addi	a0,s1,-1
    800046a8:	00000097          	auipc	ra,0x0
    800046ac:	fcc080e7          	jalr	-52(ra) # 80004674 <_ZL9fibonaccim>
    800046b0:	00050913          	mv	s2,a0
    800046b4:	ffe48513          	addi	a0,s1,-2
    800046b8:	00000097          	auipc	ra,0x0
    800046bc:	fbc080e7          	jalr	-68(ra) # 80004674 <_ZL9fibonaccim>
    800046c0:	00a90533          	add	a0,s2,a0
}
    800046c4:	01813083          	ld	ra,24(sp)
    800046c8:	01013403          	ld	s0,16(sp)
    800046cc:	00813483          	ld	s1,8(sp)
    800046d0:	00013903          	ld	s2,0(sp)
    800046d4:	02010113          	addi	sp,sp,32
    800046d8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800046dc:	ffffd097          	auipc	ra,0xffffd
    800046e0:	cac080e7          	jalr	-852(ra) # 80001388 <_Z15thread_dispatchv>
    800046e4:	fc1ff06f          	j	800046a4 <_ZL9fibonaccim+0x30>

00000000800046e8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800046e8:	fe010113          	addi	sp,sp,-32
    800046ec:	00113c23          	sd	ra,24(sp)
    800046f0:	00813823          	sd	s0,16(sp)
    800046f4:	00913423          	sd	s1,8(sp)
    800046f8:	01213023          	sd	s2,0(sp)
    800046fc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004700:	00a00493          	li	s1,10
    80004704:	0400006f          	j	80004744 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004708:	00005517          	auipc	a0,0x5
    8000470c:	dc850513          	addi	a0,a0,-568 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80004710:	00001097          	auipc	ra,0x1
    80004714:	dc8080e7          	jalr	-568(ra) # 800054d8 <_Z11printStringPKc>
    80004718:	00000613          	li	a2,0
    8000471c:	00a00593          	li	a1,10
    80004720:	00048513          	mv	a0,s1
    80004724:	00001097          	auipc	ra,0x1
    80004728:	f64080e7          	jalr	-156(ra) # 80005688 <_Z8printIntiii>
    8000472c:	00005517          	auipc	a0,0x5
    80004730:	b8c50513          	addi	a0,a0,-1140 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004734:	00001097          	auipc	ra,0x1
    80004738:	da4080e7          	jalr	-604(ra) # 800054d8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000473c:	0014849b          	addiw	s1,s1,1
    80004740:	0ff4f493          	andi	s1,s1,255
    80004744:	00c00793          	li	a5,12
    80004748:	fc97f0e3          	bgeu	a5,s1,80004708 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000474c:	00005517          	auipc	a0,0x5
    80004750:	d8c50513          	addi	a0,a0,-628 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80004754:	00001097          	auipc	ra,0x1
    80004758:	d84080e7          	jalr	-636(ra) # 800054d8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000475c:	00500313          	li	t1,5
    thread_dispatch();
    80004760:	ffffd097          	auipc	ra,0xffffd
    80004764:	c28080e7          	jalr	-984(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004768:	01000513          	li	a0,16
    8000476c:	00000097          	auipc	ra,0x0
    80004770:	f08080e7          	jalr	-248(ra) # 80004674 <_ZL9fibonaccim>
    80004774:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004778:	00005517          	auipc	a0,0x5
    8000477c:	d7050513          	addi	a0,a0,-656 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80004780:	00001097          	auipc	ra,0x1
    80004784:	d58080e7          	jalr	-680(ra) # 800054d8 <_Z11printStringPKc>
    80004788:	00000613          	li	a2,0
    8000478c:	00a00593          	li	a1,10
    80004790:	0009051b          	sext.w	a0,s2
    80004794:	00001097          	auipc	ra,0x1
    80004798:	ef4080e7          	jalr	-268(ra) # 80005688 <_Z8printIntiii>
    8000479c:	00005517          	auipc	a0,0x5
    800047a0:	b1c50513          	addi	a0,a0,-1252 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800047a4:	00001097          	auipc	ra,0x1
    800047a8:	d34080e7          	jalr	-716(ra) # 800054d8 <_Z11printStringPKc>
    800047ac:	0400006f          	j	800047ec <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800047b0:	00005517          	auipc	a0,0x5
    800047b4:	d2050513          	addi	a0,a0,-736 # 800094d0 <CONSOLE_STATUS+0x4c0>
    800047b8:	00001097          	auipc	ra,0x1
    800047bc:	d20080e7          	jalr	-736(ra) # 800054d8 <_Z11printStringPKc>
    800047c0:	00000613          	li	a2,0
    800047c4:	00a00593          	li	a1,10
    800047c8:	00048513          	mv	a0,s1
    800047cc:	00001097          	auipc	ra,0x1
    800047d0:	ebc080e7          	jalr	-324(ra) # 80005688 <_Z8printIntiii>
    800047d4:	00005517          	auipc	a0,0x5
    800047d8:	ae450513          	addi	a0,a0,-1308 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800047dc:	00001097          	auipc	ra,0x1
    800047e0:	cfc080e7          	jalr	-772(ra) # 800054d8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800047e4:	0014849b          	addiw	s1,s1,1
    800047e8:	0ff4f493          	andi	s1,s1,255
    800047ec:	00f00793          	li	a5,15
    800047f0:	fc97f0e3          	bgeu	a5,s1,800047b0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800047f4:	00005517          	auipc	a0,0x5
    800047f8:	d0450513          	addi	a0,a0,-764 # 800094f8 <CONSOLE_STATUS+0x4e8>
    800047fc:	00001097          	auipc	ra,0x1
    80004800:	cdc080e7          	jalr	-804(ra) # 800054d8 <_Z11printStringPKc>
    finishedD = true;
    80004804:	00100793          	li	a5,1
    80004808:	00007717          	auipc	a4,0x7
    8000480c:	54f70823          	sb	a5,1360(a4) # 8000bd58 <_ZL9finishedD>
    thread_dispatch();
    80004810:	ffffd097          	auipc	ra,0xffffd
    80004814:	b78080e7          	jalr	-1160(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004818:	01813083          	ld	ra,24(sp)
    8000481c:	01013403          	ld	s0,16(sp)
    80004820:	00813483          	ld	s1,8(sp)
    80004824:	00013903          	ld	s2,0(sp)
    80004828:	02010113          	addi	sp,sp,32
    8000482c:	00008067          	ret

0000000080004830 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004830:	fe010113          	addi	sp,sp,-32
    80004834:	00113c23          	sd	ra,24(sp)
    80004838:	00813823          	sd	s0,16(sp)
    8000483c:	00913423          	sd	s1,8(sp)
    80004840:	01213023          	sd	s2,0(sp)
    80004844:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004848:	00000493          	li	s1,0
    8000484c:	0400006f          	j	8000488c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004850:	00005517          	auipc	a0,0x5
    80004854:	c5050513          	addi	a0,a0,-944 # 800094a0 <CONSOLE_STATUS+0x490>
    80004858:	00001097          	auipc	ra,0x1
    8000485c:	c80080e7          	jalr	-896(ra) # 800054d8 <_Z11printStringPKc>
    80004860:	00000613          	li	a2,0
    80004864:	00a00593          	li	a1,10
    80004868:	00048513          	mv	a0,s1
    8000486c:	00001097          	auipc	ra,0x1
    80004870:	e1c080e7          	jalr	-484(ra) # 80005688 <_Z8printIntiii>
    80004874:	00005517          	auipc	a0,0x5
    80004878:	a4450513          	addi	a0,a0,-1468 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000487c:	00001097          	auipc	ra,0x1
    80004880:	c5c080e7          	jalr	-932(ra) # 800054d8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004884:	0014849b          	addiw	s1,s1,1
    80004888:	0ff4f493          	andi	s1,s1,255
    8000488c:	00200793          	li	a5,2
    80004890:	fc97f0e3          	bgeu	a5,s1,80004850 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004894:	00005517          	auipc	a0,0x5
    80004898:	c1450513          	addi	a0,a0,-1004 # 800094a8 <CONSOLE_STATUS+0x498>
    8000489c:	00001097          	auipc	ra,0x1
    800048a0:	c3c080e7          	jalr	-964(ra) # 800054d8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800048a4:	00700313          	li	t1,7
    thread_dispatch();
    800048a8:	ffffd097          	auipc	ra,0xffffd
    800048ac:	ae0080e7          	jalr	-1312(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800048b0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800048b4:	00005517          	auipc	a0,0x5
    800048b8:	c0450513          	addi	a0,a0,-1020 # 800094b8 <CONSOLE_STATUS+0x4a8>
    800048bc:	00001097          	auipc	ra,0x1
    800048c0:	c1c080e7          	jalr	-996(ra) # 800054d8 <_Z11printStringPKc>
    800048c4:	00000613          	li	a2,0
    800048c8:	00a00593          	li	a1,10
    800048cc:	0009051b          	sext.w	a0,s2
    800048d0:	00001097          	auipc	ra,0x1
    800048d4:	db8080e7          	jalr	-584(ra) # 80005688 <_Z8printIntiii>
    800048d8:	00005517          	auipc	a0,0x5
    800048dc:	9e050513          	addi	a0,a0,-1568 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800048e0:	00001097          	auipc	ra,0x1
    800048e4:	bf8080e7          	jalr	-1032(ra) # 800054d8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800048e8:	00c00513          	li	a0,12
    800048ec:	00000097          	auipc	ra,0x0
    800048f0:	d88080e7          	jalr	-632(ra) # 80004674 <_ZL9fibonaccim>
    800048f4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800048f8:	00005517          	auipc	a0,0x5
    800048fc:	bc850513          	addi	a0,a0,-1080 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80004900:	00001097          	auipc	ra,0x1
    80004904:	bd8080e7          	jalr	-1064(ra) # 800054d8 <_Z11printStringPKc>
    80004908:	00000613          	li	a2,0
    8000490c:	00a00593          	li	a1,10
    80004910:	0009051b          	sext.w	a0,s2
    80004914:	00001097          	auipc	ra,0x1
    80004918:	d74080e7          	jalr	-652(ra) # 80005688 <_Z8printIntiii>
    8000491c:	00005517          	auipc	a0,0x5
    80004920:	99c50513          	addi	a0,a0,-1636 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004924:	00001097          	auipc	ra,0x1
    80004928:	bb4080e7          	jalr	-1100(ra) # 800054d8 <_Z11printStringPKc>
    8000492c:	0400006f          	j	8000496c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004930:	00005517          	auipc	a0,0x5
    80004934:	b7050513          	addi	a0,a0,-1168 # 800094a0 <CONSOLE_STATUS+0x490>
    80004938:	00001097          	auipc	ra,0x1
    8000493c:	ba0080e7          	jalr	-1120(ra) # 800054d8 <_Z11printStringPKc>
    80004940:	00000613          	li	a2,0
    80004944:	00a00593          	li	a1,10
    80004948:	00048513          	mv	a0,s1
    8000494c:	00001097          	auipc	ra,0x1
    80004950:	d3c080e7          	jalr	-708(ra) # 80005688 <_Z8printIntiii>
    80004954:	00005517          	auipc	a0,0x5
    80004958:	96450513          	addi	a0,a0,-1692 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000495c:	00001097          	auipc	ra,0x1
    80004960:	b7c080e7          	jalr	-1156(ra) # 800054d8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004964:	0014849b          	addiw	s1,s1,1
    80004968:	0ff4f493          	andi	s1,s1,255
    8000496c:	00500793          	li	a5,5
    80004970:	fc97f0e3          	bgeu	a5,s1,80004930 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004974:	00005517          	auipc	a0,0x5
    80004978:	b0450513          	addi	a0,a0,-1276 # 80009478 <CONSOLE_STATUS+0x468>
    8000497c:	00001097          	auipc	ra,0x1
    80004980:	b5c080e7          	jalr	-1188(ra) # 800054d8 <_Z11printStringPKc>
    finishedC = true;
    80004984:	00100793          	li	a5,1
    80004988:	00007717          	auipc	a4,0x7
    8000498c:	3cf708a3          	sb	a5,977(a4) # 8000bd59 <_ZL9finishedC>
    thread_dispatch();
    80004990:	ffffd097          	auipc	ra,0xffffd
    80004994:	9f8080e7          	jalr	-1544(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004998:	01813083          	ld	ra,24(sp)
    8000499c:	01013403          	ld	s0,16(sp)
    800049a0:	00813483          	ld	s1,8(sp)
    800049a4:	00013903          	ld	s2,0(sp)
    800049a8:	02010113          	addi	sp,sp,32
    800049ac:	00008067          	ret

00000000800049b0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800049b0:	fe010113          	addi	sp,sp,-32
    800049b4:	00113c23          	sd	ra,24(sp)
    800049b8:	00813823          	sd	s0,16(sp)
    800049bc:	00913423          	sd	s1,8(sp)
    800049c0:	01213023          	sd	s2,0(sp)
    800049c4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800049c8:	00000913          	li	s2,0
    800049cc:	0380006f          	j	80004a04 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800049d0:	ffffd097          	auipc	ra,0xffffd
    800049d4:	9b8080e7          	jalr	-1608(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800049d8:	00148493          	addi	s1,s1,1
    800049dc:	000027b7          	lui	a5,0x2
    800049e0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800049e4:	0097ee63          	bltu	a5,s1,80004a00 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800049e8:	00000713          	li	a4,0
    800049ec:	000077b7          	lui	a5,0x7
    800049f0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800049f4:	fce7eee3          	bltu	a5,a4,800049d0 <_ZL11workerBodyBPv+0x20>
    800049f8:	00170713          	addi	a4,a4,1
    800049fc:	ff1ff06f          	j	800049ec <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004a00:	00190913          	addi	s2,s2,1
    80004a04:	00f00793          	li	a5,15
    80004a08:	0527e063          	bltu	a5,s2,80004a48 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004a0c:	00005517          	auipc	a0,0x5
    80004a10:	a7c50513          	addi	a0,a0,-1412 # 80009488 <CONSOLE_STATUS+0x478>
    80004a14:	00001097          	auipc	ra,0x1
    80004a18:	ac4080e7          	jalr	-1340(ra) # 800054d8 <_Z11printStringPKc>
    80004a1c:	00000613          	li	a2,0
    80004a20:	00a00593          	li	a1,10
    80004a24:	0009051b          	sext.w	a0,s2
    80004a28:	00001097          	auipc	ra,0x1
    80004a2c:	c60080e7          	jalr	-928(ra) # 80005688 <_Z8printIntiii>
    80004a30:	00005517          	auipc	a0,0x5
    80004a34:	88850513          	addi	a0,a0,-1912 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004a38:	00001097          	auipc	ra,0x1
    80004a3c:	aa0080e7          	jalr	-1376(ra) # 800054d8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004a40:	00000493          	li	s1,0
    80004a44:	f99ff06f          	j	800049dc <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004a48:	00005517          	auipc	a0,0x5
    80004a4c:	a4850513          	addi	a0,a0,-1464 # 80009490 <CONSOLE_STATUS+0x480>
    80004a50:	00001097          	auipc	ra,0x1
    80004a54:	a88080e7          	jalr	-1400(ra) # 800054d8 <_Z11printStringPKc>
    finishedB = true;
    80004a58:	00100793          	li	a5,1
    80004a5c:	00007717          	auipc	a4,0x7
    80004a60:	2ef70f23          	sb	a5,766(a4) # 8000bd5a <_ZL9finishedB>
    thread_dispatch();
    80004a64:	ffffd097          	auipc	ra,0xffffd
    80004a68:	924080e7          	jalr	-1756(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004a6c:	01813083          	ld	ra,24(sp)
    80004a70:	01013403          	ld	s0,16(sp)
    80004a74:	00813483          	ld	s1,8(sp)
    80004a78:	00013903          	ld	s2,0(sp)
    80004a7c:	02010113          	addi	sp,sp,32
    80004a80:	00008067          	ret

0000000080004a84 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004a84:	fe010113          	addi	sp,sp,-32
    80004a88:	00113c23          	sd	ra,24(sp)
    80004a8c:	00813823          	sd	s0,16(sp)
    80004a90:	00913423          	sd	s1,8(sp)
    80004a94:	01213023          	sd	s2,0(sp)
    80004a98:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004a9c:	00000913          	li	s2,0
    80004aa0:	0380006f          	j	80004ad8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004aa4:	ffffd097          	auipc	ra,0xffffd
    80004aa8:	8e4080e7          	jalr	-1820(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004aac:	00148493          	addi	s1,s1,1
    80004ab0:	000027b7          	lui	a5,0x2
    80004ab4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004ab8:	0097ee63          	bltu	a5,s1,80004ad4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004abc:	00000713          	li	a4,0
    80004ac0:	000077b7          	lui	a5,0x7
    80004ac4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004ac8:	fce7eee3          	bltu	a5,a4,80004aa4 <_ZL11workerBodyAPv+0x20>
    80004acc:	00170713          	addi	a4,a4,1
    80004ad0:	ff1ff06f          	j	80004ac0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004ad4:	00190913          	addi	s2,s2,1
    80004ad8:	00900793          	li	a5,9
    80004adc:	0527e063          	bltu	a5,s2,80004b1c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004ae0:	00005517          	auipc	a0,0x5
    80004ae4:	99050513          	addi	a0,a0,-1648 # 80009470 <CONSOLE_STATUS+0x460>
    80004ae8:	00001097          	auipc	ra,0x1
    80004aec:	9f0080e7          	jalr	-1552(ra) # 800054d8 <_Z11printStringPKc>
    80004af0:	00000613          	li	a2,0
    80004af4:	00a00593          	li	a1,10
    80004af8:	0009051b          	sext.w	a0,s2
    80004afc:	00001097          	auipc	ra,0x1
    80004b00:	b8c080e7          	jalr	-1140(ra) # 80005688 <_Z8printIntiii>
    80004b04:	00004517          	auipc	a0,0x4
    80004b08:	7b450513          	addi	a0,a0,1972 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004b0c:	00001097          	auipc	ra,0x1
    80004b10:	9cc080e7          	jalr	-1588(ra) # 800054d8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004b14:	00000493          	li	s1,0
    80004b18:	f99ff06f          	j	80004ab0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004b1c:	00005517          	auipc	a0,0x5
    80004b20:	95c50513          	addi	a0,a0,-1700 # 80009478 <CONSOLE_STATUS+0x468>
    80004b24:	00001097          	auipc	ra,0x1
    80004b28:	9b4080e7          	jalr	-1612(ra) # 800054d8 <_Z11printStringPKc>
    finishedA = true;
    80004b2c:	00100793          	li	a5,1
    80004b30:	00007717          	auipc	a4,0x7
    80004b34:	22f705a3          	sb	a5,555(a4) # 8000bd5b <_ZL9finishedA>
}
    80004b38:	01813083          	ld	ra,24(sp)
    80004b3c:	01013403          	ld	s0,16(sp)
    80004b40:	00813483          	ld	s1,8(sp)
    80004b44:	00013903          	ld	s2,0(sp)
    80004b48:	02010113          	addi	sp,sp,32
    80004b4c:	00008067          	ret

0000000080004b50 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004b50:	fd010113          	addi	sp,sp,-48
    80004b54:	02113423          	sd	ra,40(sp)
    80004b58:	02813023          	sd	s0,32(sp)
    80004b5c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004b60:	00000613          	li	a2,0
    80004b64:	00000597          	auipc	a1,0x0
    80004b68:	f2058593          	addi	a1,a1,-224 # 80004a84 <_ZL11workerBodyAPv>
    80004b6c:	fd040513          	addi	a0,s0,-48
    80004b70:	ffffc097          	auipc	ra,0xffffc
    80004b74:	714080e7          	jalr	1812(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80004b78:	00005517          	auipc	a0,0x5
    80004b7c:	99050513          	addi	a0,a0,-1648 # 80009508 <CONSOLE_STATUS+0x4f8>
    80004b80:	00001097          	auipc	ra,0x1
    80004b84:	958080e7          	jalr	-1704(ra) # 800054d8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004b88:	00000613          	li	a2,0
    80004b8c:	00000597          	auipc	a1,0x0
    80004b90:	e2458593          	addi	a1,a1,-476 # 800049b0 <_ZL11workerBodyBPv>
    80004b94:	fd840513          	addi	a0,s0,-40
    80004b98:	ffffc097          	auipc	ra,0xffffc
    80004b9c:	6ec080e7          	jalr	1772(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80004ba0:	00005517          	auipc	a0,0x5
    80004ba4:	98050513          	addi	a0,a0,-1664 # 80009520 <CONSOLE_STATUS+0x510>
    80004ba8:	00001097          	auipc	ra,0x1
    80004bac:	930080e7          	jalr	-1744(ra) # 800054d8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004bb0:	00000613          	li	a2,0
    80004bb4:	00000597          	auipc	a1,0x0
    80004bb8:	c7c58593          	addi	a1,a1,-900 # 80004830 <_ZL11workerBodyCPv>
    80004bbc:	fe040513          	addi	a0,s0,-32
    80004bc0:	ffffc097          	auipc	ra,0xffffc
    80004bc4:	6c4080e7          	jalr	1732(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80004bc8:	00005517          	auipc	a0,0x5
    80004bcc:	97050513          	addi	a0,a0,-1680 # 80009538 <CONSOLE_STATUS+0x528>
    80004bd0:	00001097          	auipc	ra,0x1
    80004bd4:	908080e7          	jalr	-1784(ra) # 800054d8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004bd8:	00000613          	li	a2,0
    80004bdc:	00000597          	auipc	a1,0x0
    80004be0:	b0c58593          	addi	a1,a1,-1268 # 800046e8 <_ZL11workerBodyDPv>
    80004be4:	fe840513          	addi	a0,s0,-24
    80004be8:	ffffc097          	auipc	ra,0xffffc
    80004bec:	69c080e7          	jalr	1692(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80004bf0:	00005517          	auipc	a0,0x5
    80004bf4:	96050513          	addi	a0,a0,-1696 # 80009550 <CONSOLE_STATUS+0x540>
    80004bf8:	00001097          	auipc	ra,0x1
    80004bfc:	8e0080e7          	jalr	-1824(ra) # 800054d8 <_Z11printStringPKc>
    80004c00:	00c0006f          	j	80004c0c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004c04:	ffffc097          	auipc	ra,0xffffc
    80004c08:	784080e7          	jalr	1924(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004c0c:	00007797          	auipc	a5,0x7
    80004c10:	14f7c783          	lbu	a5,335(a5) # 8000bd5b <_ZL9finishedA>
    80004c14:	fe0788e3          	beqz	a5,80004c04 <_Z18Threads_C_API_testv+0xb4>
    80004c18:	00007797          	auipc	a5,0x7
    80004c1c:	1427c783          	lbu	a5,322(a5) # 8000bd5a <_ZL9finishedB>
    80004c20:	fe0782e3          	beqz	a5,80004c04 <_Z18Threads_C_API_testv+0xb4>
    80004c24:	00007797          	auipc	a5,0x7
    80004c28:	1357c783          	lbu	a5,309(a5) # 8000bd59 <_ZL9finishedC>
    80004c2c:	fc078ce3          	beqz	a5,80004c04 <_Z18Threads_C_API_testv+0xb4>
    80004c30:	00007797          	auipc	a5,0x7
    80004c34:	1287c783          	lbu	a5,296(a5) # 8000bd58 <_ZL9finishedD>
    80004c38:	fc0786e3          	beqz	a5,80004c04 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004c3c:	02813083          	ld	ra,40(sp)
    80004c40:	02013403          	ld	s0,32(sp)
    80004c44:	03010113          	addi	sp,sp,48
    80004c48:	00008067          	ret

0000000080004c4c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004c4c:	fd010113          	addi	sp,sp,-48
    80004c50:	02113423          	sd	ra,40(sp)
    80004c54:	02813023          	sd	s0,32(sp)
    80004c58:	00913c23          	sd	s1,24(sp)
    80004c5c:	01213823          	sd	s2,16(sp)
    80004c60:	01313423          	sd	s3,8(sp)
    80004c64:	03010413          	addi	s0,sp,48
    80004c68:	00050993          	mv	s3,a0
    80004c6c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004c70:	00000913          	li	s2,0
    80004c74:	00c0006f          	j	80004c80 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004c78:	ffffe097          	auipc	ra,0xffffe
    80004c7c:	d90080e7          	jalr	-624(ra) # 80002a08 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004c80:	ffffd097          	auipc	ra,0xffffd
    80004c84:	98c080e7          	jalr	-1652(ra) # 8000160c <_Z4getcv>
    80004c88:	0005059b          	sext.w	a1,a0
    80004c8c:	01b00793          	li	a5,27
    80004c90:	02f58a63          	beq	a1,a5,80004cc4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004c94:	0084b503          	ld	a0,8(s1)
    80004c98:	00001097          	auipc	ra,0x1
    80004c9c:	c64080e7          	jalr	-924(ra) # 800058fc <_ZN9BufferCPP3putEi>
        i++;
    80004ca0:	0019071b          	addiw	a4,s2,1
    80004ca4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004ca8:	0004a683          	lw	a3,0(s1)
    80004cac:	0026979b          	slliw	a5,a3,0x2
    80004cb0:	00d787bb          	addw	a5,a5,a3
    80004cb4:	0017979b          	slliw	a5,a5,0x1
    80004cb8:	02f767bb          	remw	a5,a4,a5
    80004cbc:	fc0792e3          	bnez	a5,80004c80 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004cc0:	fb9ff06f          	j	80004c78 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004cc4:	00100793          	li	a5,1
    80004cc8:	00007717          	auipc	a4,0x7
    80004ccc:	08f72c23          	sw	a5,152(a4) # 8000bd60 <_ZL9threadEnd>
    td->buffer->put('!');
    80004cd0:	0209b783          	ld	a5,32(s3)
    80004cd4:	02100593          	li	a1,33
    80004cd8:	0087b503          	ld	a0,8(a5)
    80004cdc:	00001097          	auipc	ra,0x1
    80004ce0:	c20080e7          	jalr	-992(ra) # 800058fc <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004ce4:	0104b503          	ld	a0,16(s1)
    80004ce8:	ffffe097          	auipc	ra,0xffffe
    80004cec:	e28080e7          	jalr	-472(ra) # 80002b10 <_ZN9Semaphore6signalEv>
}
    80004cf0:	02813083          	ld	ra,40(sp)
    80004cf4:	02013403          	ld	s0,32(sp)
    80004cf8:	01813483          	ld	s1,24(sp)
    80004cfc:	01013903          	ld	s2,16(sp)
    80004d00:	00813983          	ld	s3,8(sp)
    80004d04:	03010113          	addi	sp,sp,48
    80004d08:	00008067          	ret

0000000080004d0c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004d0c:	fe010113          	addi	sp,sp,-32
    80004d10:	00113c23          	sd	ra,24(sp)
    80004d14:	00813823          	sd	s0,16(sp)
    80004d18:	00913423          	sd	s1,8(sp)
    80004d1c:	01213023          	sd	s2,0(sp)
    80004d20:	02010413          	addi	s0,sp,32
    80004d24:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004d28:	00000913          	li	s2,0
    80004d2c:	00c0006f          	j	80004d38 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004d30:	ffffe097          	auipc	ra,0xffffe
    80004d34:	cd8080e7          	jalr	-808(ra) # 80002a08 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004d38:	00007797          	auipc	a5,0x7
    80004d3c:	0287a783          	lw	a5,40(a5) # 8000bd60 <_ZL9threadEnd>
    80004d40:	02079e63          	bnez	a5,80004d7c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004d44:	0004a583          	lw	a1,0(s1)
    80004d48:	0305859b          	addiw	a1,a1,48
    80004d4c:	0084b503          	ld	a0,8(s1)
    80004d50:	00001097          	auipc	ra,0x1
    80004d54:	bac080e7          	jalr	-1108(ra) # 800058fc <_ZN9BufferCPP3putEi>
        i++;
    80004d58:	0019071b          	addiw	a4,s2,1
    80004d5c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004d60:	0004a683          	lw	a3,0(s1)
    80004d64:	0026979b          	slliw	a5,a3,0x2
    80004d68:	00d787bb          	addw	a5,a5,a3
    80004d6c:	0017979b          	slliw	a5,a5,0x1
    80004d70:	02f767bb          	remw	a5,a4,a5
    80004d74:	fc0792e3          	bnez	a5,80004d38 <_ZN12ProducerSync8producerEPv+0x2c>
    80004d78:	fb9ff06f          	j	80004d30 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004d7c:	0104b503          	ld	a0,16(s1)
    80004d80:	ffffe097          	auipc	ra,0xffffe
    80004d84:	d90080e7          	jalr	-624(ra) # 80002b10 <_ZN9Semaphore6signalEv>
}
    80004d88:	01813083          	ld	ra,24(sp)
    80004d8c:	01013403          	ld	s0,16(sp)
    80004d90:	00813483          	ld	s1,8(sp)
    80004d94:	00013903          	ld	s2,0(sp)
    80004d98:	02010113          	addi	sp,sp,32
    80004d9c:	00008067          	ret

0000000080004da0 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004da0:	fd010113          	addi	sp,sp,-48
    80004da4:	02113423          	sd	ra,40(sp)
    80004da8:	02813023          	sd	s0,32(sp)
    80004dac:	00913c23          	sd	s1,24(sp)
    80004db0:	01213823          	sd	s2,16(sp)
    80004db4:	01313423          	sd	s3,8(sp)
    80004db8:	01413023          	sd	s4,0(sp)
    80004dbc:	03010413          	addi	s0,sp,48
    80004dc0:	00050993          	mv	s3,a0
    80004dc4:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004dc8:	00000a13          	li	s4,0
    80004dcc:	01c0006f          	j	80004de8 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004dd0:	ffffe097          	auipc	ra,0xffffe
    80004dd4:	c38080e7          	jalr	-968(ra) # 80002a08 <_ZN6Thread8dispatchEv>
    80004dd8:	0500006f          	j	80004e28 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004ddc:	00a00513          	li	a0,10
    80004de0:	ffffd097          	auipc	ra,0xffffd
    80004de4:	86c080e7          	jalr	-1940(ra) # 8000164c <_Z4putcc>
    while (!threadEnd) {
    80004de8:	00007797          	auipc	a5,0x7
    80004dec:	f787a783          	lw	a5,-136(a5) # 8000bd60 <_ZL9threadEnd>
    80004df0:	06079263          	bnez	a5,80004e54 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004df4:	00893503          	ld	a0,8(s2)
    80004df8:	00001097          	auipc	ra,0x1
    80004dfc:	b94080e7          	jalr	-1132(ra) # 8000598c <_ZN9BufferCPP3getEv>
        i++;
    80004e00:	001a049b          	addiw	s1,s4,1
    80004e04:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004e08:	0ff57513          	andi	a0,a0,255
    80004e0c:	ffffd097          	auipc	ra,0xffffd
    80004e10:	840080e7          	jalr	-1984(ra) # 8000164c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004e14:	00092703          	lw	a4,0(s2)
    80004e18:	0027179b          	slliw	a5,a4,0x2
    80004e1c:	00e787bb          	addw	a5,a5,a4
    80004e20:	02f4e7bb          	remw	a5,s1,a5
    80004e24:	fa0786e3          	beqz	a5,80004dd0 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004e28:	05000793          	li	a5,80
    80004e2c:	02f4e4bb          	remw	s1,s1,a5
    80004e30:	fa049ce3          	bnez	s1,80004de8 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004e34:	fa9ff06f          	j	80004ddc <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004e38:	0209b783          	ld	a5,32(s3)
    80004e3c:	0087b503          	ld	a0,8(a5)
    80004e40:	00001097          	auipc	ra,0x1
    80004e44:	b4c080e7          	jalr	-1204(ra) # 8000598c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004e48:	0ff57513          	andi	a0,a0,255
    80004e4c:	ffffe097          	auipc	ra,0xffffe
    80004e50:	d80080e7          	jalr	-640(ra) # 80002bcc <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004e54:	0209b783          	ld	a5,32(s3)
    80004e58:	0087b503          	ld	a0,8(a5)
    80004e5c:	00001097          	auipc	ra,0x1
    80004e60:	bbc080e7          	jalr	-1092(ra) # 80005a18 <_ZN9BufferCPP6getCntEv>
    80004e64:	fca04ae3          	bgtz	a0,80004e38 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004e68:	01093503          	ld	a0,16(s2)
    80004e6c:	ffffe097          	auipc	ra,0xffffe
    80004e70:	ca4080e7          	jalr	-860(ra) # 80002b10 <_ZN9Semaphore6signalEv>
}
    80004e74:	02813083          	ld	ra,40(sp)
    80004e78:	02013403          	ld	s0,32(sp)
    80004e7c:	01813483          	ld	s1,24(sp)
    80004e80:	01013903          	ld	s2,16(sp)
    80004e84:	00813983          	ld	s3,8(sp)
    80004e88:	00013a03          	ld	s4,0(sp)
    80004e8c:	03010113          	addi	sp,sp,48
    80004e90:	00008067          	ret

0000000080004e94 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004e94:	f8010113          	addi	sp,sp,-128
    80004e98:	06113c23          	sd	ra,120(sp)
    80004e9c:	06813823          	sd	s0,112(sp)
    80004ea0:	06913423          	sd	s1,104(sp)
    80004ea4:	07213023          	sd	s2,96(sp)
    80004ea8:	05313c23          	sd	s3,88(sp)
    80004eac:	05413823          	sd	s4,80(sp)
    80004eb0:	05513423          	sd	s5,72(sp)
    80004eb4:	05613023          	sd	s6,64(sp)
    80004eb8:	03713c23          	sd	s7,56(sp)
    80004ebc:	03813823          	sd	s8,48(sp)
    80004ec0:	03913423          	sd	s9,40(sp)
    80004ec4:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004ec8:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004ecc:	00004517          	auipc	a0,0x4
    80004ed0:	4bc50513          	addi	a0,a0,1212 # 80009388 <CONSOLE_STATUS+0x378>
    80004ed4:	00000097          	auipc	ra,0x0
    80004ed8:	604080e7          	jalr	1540(ra) # 800054d8 <_Z11printStringPKc>
    getString(input, 30);
    80004edc:	01e00593          	li	a1,30
    80004ee0:	f8040493          	addi	s1,s0,-128
    80004ee4:	00048513          	mv	a0,s1
    80004ee8:	00000097          	auipc	ra,0x0
    80004eec:	678080e7          	jalr	1656(ra) # 80005560 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004ef0:	00048513          	mv	a0,s1
    80004ef4:	00000097          	auipc	ra,0x0
    80004ef8:	744080e7          	jalr	1860(ra) # 80005638 <_Z11stringToIntPKc>
    80004efc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004f00:	00004517          	auipc	a0,0x4
    80004f04:	4a850513          	addi	a0,a0,1192 # 800093a8 <CONSOLE_STATUS+0x398>
    80004f08:	00000097          	auipc	ra,0x0
    80004f0c:	5d0080e7          	jalr	1488(ra) # 800054d8 <_Z11printStringPKc>
    getString(input, 30);
    80004f10:	01e00593          	li	a1,30
    80004f14:	00048513          	mv	a0,s1
    80004f18:	00000097          	auipc	ra,0x0
    80004f1c:	648080e7          	jalr	1608(ra) # 80005560 <_Z9getStringPci>
    n = stringToInt(input);
    80004f20:	00048513          	mv	a0,s1
    80004f24:	00000097          	auipc	ra,0x0
    80004f28:	714080e7          	jalr	1812(ra) # 80005638 <_Z11stringToIntPKc>
    80004f2c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004f30:	00004517          	auipc	a0,0x4
    80004f34:	49850513          	addi	a0,a0,1176 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80004f38:	00000097          	auipc	ra,0x0
    80004f3c:	5a0080e7          	jalr	1440(ra) # 800054d8 <_Z11printStringPKc>
    80004f40:	00000613          	li	a2,0
    80004f44:	00a00593          	li	a1,10
    80004f48:	00090513          	mv	a0,s2
    80004f4c:	00000097          	auipc	ra,0x0
    80004f50:	73c080e7          	jalr	1852(ra) # 80005688 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004f54:	00004517          	auipc	a0,0x4
    80004f58:	48c50513          	addi	a0,a0,1164 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80004f5c:	00000097          	auipc	ra,0x0
    80004f60:	57c080e7          	jalr	1404(ra) # 800054d8 <_Z11printStringPKc>
    80004f64:	00000613          	li	a2,0
    80004f68:	00a00593          	li	a1,10
    80004f6c:	00048513          	mv	a0,s1
    80004f70:	00000097          	auipc	ra,0x0
    80004f74:	718080e7          	jalr	1816(ra) # 80005688 <_Z8printIntiii>
    printString(".\n");
    80004f78:	00004517          	auipc	a0,0x4
    80004f7c:	48050513          	addi	a0,a0,1152 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80004f80:	00000097          	auipc	ra,0x0
    80004f84:	558080e7          	jalr	1368(ra) # 800054d8 <_Z11printStringPKc>
    if(threadNum > n) {
    80004f88:	0324c463          	blt	s1,s2,80004fb0 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004f8c:	03205c63          	blez	s2,80004fc4 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004f90:	03800513          	li	a0,56
    80004f94:	ffffd097          	auipc	ra,0xffffd
    80004f98:	718080e7          	jalr	1816(ra) # 800026ac <_Znwm>
    80004f9c:	00050a93          	mv	s5,a0
    80004fa0:	00048593          	mv	a1,s1
    80004fa4:	00001097          	auipc	ra,0x1
    80004fa8:	804080e7          	jalr	-2044(ra) # 800057a8 <_ZN9BufferCPPC1Ei>
    80004fac:	0300006f          	j	80004fdc <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004fb0:	00004517          	auipc	a0,0x4
    80004fb4:	45050513          	addi	a0,a0,1104 # 80009400 <CONSOLE_STATUS+0x3f0>
    80004fb8:	00000097          	auipc	ra,0x0
    80004fbc:	520080e7          	jalr	1312(ra) # 800054d8 <_Z11printStringPKc>
        return;
    80004fc0:	0140006f          	j	80004fd4 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004fc4:	00004517          	auipc	a0,0x4
    80004fc8:	47c50513          	addi	a0,a0,1148 # 80009440 <CONSOLE_STATUS+0x430>
    80004fcc:	00000097          	auipc	ra,0x0
    80004fd0:	50c080e7          	jalr	1292(ra) # 800054d8 <_Z11printStringPKc>
        return;
    80004fd4:	000b8113          	mv	sp,s7
    80004fd8:	2380006f          	j	80005210 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004fdc:	01000513          	li	a0,16
    80004fe0:	ffffd097          	auipc	ra,0xffffd
    80004fe4:	6cc080e7          	jalr	1740(ra) # 800026ac <_Znwm>
    80004fe8:	00050493          	mv	s1,a0
    80004fec:	00000593          	li	a1,0
    80004ff0:	ffffe097          	auipc	ra,0xffffe
    80004ff4:	ab8080e7          	jalr	-1352(ra) # 80002aa8 <_ZN9SemaphoreC1Ej>
    80004ff8:	00007797          	auipc	a5,0x7
    80004ffc:	d697b823          	sd	s1,-656(a5) # 8000bd68 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005000:	00391793          	slli	a5,s2,0x3
    80005004:	00f78793          	addi	a5,a5,15
    80005008:	ff07f793          	andi	a5,a5,-16
    8000500c:	40f10133          	sub	sp,sp,a5
    80005010:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005014:	0019071b          	addiw	a4,s2,1
    80005018:	00171793          	slli	a5,a4,0x1
    8000501c:	00e787b3          	add	a5,a5,a4
    80005020:	00379793          	slli	a5,a5,0x3
    80005024:	00f78793          	addi	a5,a5,15
    80005028:	ff07f793          	andi	a5,a5,-16
    8000502c:	40f10133          	sub	sp,sp,a5
    80005030:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005034:	00191c13          	slli	s8,s2,0x1
    80005038:	012c07b3          	add	a5,s8,s2
    8000503c:	00379793          	slli	a5,a5,0x3
    80005040:	00fa07b3          	add	a5,s4,a5
    80005044:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005048:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    8000504c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005050:	02800513          	li	a0,40
    80005054:	ffffd097          	auipc	ra,0xffffd
    80005058:	658080e7          	jalr	1624(ra) # 800026ac <_Znwm>
    8000505c:	00050b13          	mv	s6,a0
    80005060:	012c0c33          	add	s8,s8,s2
    80005064:	003c1c13          	slli	s8,s8,0x3
    80005068:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000506c:	ffffe097          	auipc	ra,0xffffe
    80005070:	918080e7          	jalr	-1768(ra) # 80002984 <_ZN6ThreadC1Ev>
    80005074:	00007797          	auipc	a5,0x7
    80005078:	b9c78793          	addi	a5,a5,-1124 # 8000bc10 <_ZTV12ConsumerSync+0x10>
    8000507c:	00fb3023          	sd	a5,0(s6)
    80005080:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005084:	000b0513          	mv	a0,s6
    80005088:	ffffe097          	auipc	ra,0xffffe
    8000508c:	92c080e7          	jalr	-1748(ra) # 800029b4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005090:	00000493          	li	s1,0
    80005094:	0380006f          	j	800050cc <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005098:	00007797          	auipc	a5,0x7
    8000509c:	b5078793          	addi	a5,a5,-1200 # 8000bbe8 <_ZTV12ProducerSync+0x10>
    800050a0:	00fcb023          	sd	a5,0(s9)
    800050a4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800050a8:	00349793          	slli	a5,s1,0x3
    800050ac:	00f987b3          	add	a5,s3,a5
    800050b0:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800050b4:	00349793          	slli	a5,s1,0x3
    800050b8:	00f987b3          	add	a5,s3,a5
    800050bc:	0007b503          	ld	a0,0(a5)
    800050c0:	ffffe097          	auipc	ra,0xffffe
    800050c4:	8f4080e7          	jalr	-1804(ra) # 800029b4 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800050c8:	0014849b          	addiw	s1,s1,1
    800050cc:	0b24d063          	bge	s1,s2,8000516c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800050d0:	00149793          	slli	a5,s1,0x1
    800050d4:	009787b3          	add	a5,a5,s1
    800050d8:	00379793          	slli	a5,a5,0x3
    800050dc:	00fa07b3          	add	a5,s4,a5
    800050e0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800050e4:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800050e8:	00007717          	auipc	a4,0x7
    800050ec:	c8073703          	ld	a4,-896(a4) # 8000bd68 <_ZL10waitForAll>
    800050f0:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800050f4:	02905863          	blez	s1,80005124 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800050f8:	02800513          	li	a0,40
    800050fc:	ffffd097          	auipc	ra,0xffffd
    80005100:	5b0080e7          	jalr	1456(ra) # 800026ac <_Znwm>
    80005104:	00050c93          	mv	s9,a0
    80005108:	00149c13          	slli	s8,s1,0x1
    8000510c:	009c0c33          	add	s8,s8,s1
    80005110:	003c1c13          	slli	s8,s8,0x3
    80005114:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005118:	ffffe097          	auipc	ra,0xffffe
    8000511c:	86c080e7          	jalr	-1940(ra) # 80002984 <_ZN6ThreadC1Ev>
    80005120:	f79ff06f          	j	80005098 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005124:	02800513          	li	a0,40
    80005128:	ffffd097          	auipc	ra,0xffffd
    8000512c:	584080e7          	jalr	1412(ra) # 800026ac <_Znwm>
    80005130:	00050c93          	mv	s9,a0
    80005134:	00149c13          	slli	s8,s1,0x1
    80005138:	009c0c33          	add	s8,s8,s1
    8000513c:	003c1c13          	slli	s8,s8,0x3
    80005140:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005144:	ffffe097          	auipc	ra,0xffffe
    80005148:	840080e7          	jalr	-1984(ra) # 80002984 <_ZN6ThreadC1Ev>
    8000514c:	00007797          	auipc	a5,0x7
    80005150:	a7478793          	addi	a5,a5,-1420 # 8000bbc0 <_ZTV16ProducerKeyboard+0x10>
    80005154:	00fcb023          	sd	a5,0(s9)
    80005158:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    8000515c:	00349793          	slli	a5,s1,0x3
    80005160:	00f987b3          	add	a5,s3,a5
    80005164:	0197b023          	sd	s9,0(a5)
    80005168:	f4dff06f          	j	800050b4 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    8000516c:	ffffe097          	auipc	ra,0xffffe
    80005170:	89c080e7          	jalr	-1892(ra) # 80002a08 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005174:	00000493          	li	s1,0
    80005178:	00994e63          	blt	s2,s1,80005194 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    8000517c:	00007517          	auipc	a0,0x7
    80005180:	bec53503          	ld	a0,-1044(a0) # 8000bd68 <_ZL10waitForAll>
    80005184:	ffffe097          	auipc	ra,0xffffe
    80005188:	960080e7          	jalr	-1696(ra) # 80002ae4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000518c:	0014849b          	addiw	s1,s1,1
    80005190:	fe9ff06f          	j	80005178 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005194:	00000493          	li	s1,0
    80005198:	0080006f          	j	800051a0 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    8000519c:	0014849b          	addiw	s1,s1,1
    800051a0:	0324d263          	bge	s1,s2,800051c4 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800051a4:	00349793          	slli	a5,s1,0x3
    800051a8:	00f987b3          	add	a5,s3,a5
    800051ac:	0007b503          	ld	a0,0(a5)
    800051b0:	fe0506e3          	beqz	a0,8000519c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800051b4:	00053783          	ld	a5,0(a0)
    800051b8:	0087b783          	ld	a5,8(a5)
    800051bc:	000780e7          	jalr	a5
    800051c0:	fddff06f          	j	8000519c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800051c4:	000b0a63          	beqz	s6,800051d8 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800051c8:	000b3783          	ld	a5,0(s6)
    800051cc:	0087b783          	ld	a5,8(a5)
    800051d0:	000b0513          	mv	a0,s6
    800051d4:	000780e7          	jalr	a5
    delete waitForAll;
    800051d8:	00007517          	auipc	a0,0x7
    800051dc:	b9053503          	ld	a0,-1136(a0) # 8000bd68 <_ZL10waitForAll>
    800051e0:	00050863          	beqz	a0,800051f0 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800051e4:	00053783          	ld	a5,0(a0)
    800051e8:	0087b783          	ld	a5,8(a5)
    800051ec:	000780e7          	jalr	a5
    delete buffer;
    800051f0:	000a8e63          	beqz	s5,8000520c <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800051f4:	000a8513          	mv	a0,s5
    800051f8:	00001097          	auipc	ra,0x1
    800051fc:	8a8080e7          	jalr	-1880(ra) # 80005aa0 <_ZN9BufferCPPD1Ev>
    80005200:	000a8513          	mv	a0,s5
    80005204:	ffffd097          	auipc	ra,0xffffd
    80005208:	4f8080e7          	jalr	1272(ra) # 800026fc <_ZdlPv>
    8000520c:	000b8113          	mv	sp,s7

}
    80005210:	f8040113          	addi	sp,s0,-128
    80005214:	07813083          	ld	ra,120(sp)
    80005218:	07013403          	ld	s0,112(sp)
    8000521c:	06813483          	ld	s1,104(sp)
    80005220:	06013903          	ld	s2,96(sp)
    80005224:	05813983          	ld	s3,88(sp)
    80005228:	05013a03          	ld	s4,80(sp)
    8000522c:	04813a83          	ld	s5,72(sp)
    80005230:	04013b03          	ld	s6,64(sp)
    80005234:	03813b83          	ld	s7,56(sp)
    80005238:	03013c03          	ld	s8,48(sp)
    8000523c:	02813c83          	ld	s9,40(sp)
    80005240:	08010113          	addi	sp,sp,128
    80005244:	00008067          	ret
    80005248:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000524c:	000a8513          	mv	a0,s5
    80005250:	ffffd097          	auipc	ra,0xffffd
    80005254:	4ac080e7          	jalr	1196(ra) # 800026fc <_ZdlPv>
    80005258:	00048513          	mv	a0,s1
    8000525c:	00008097          	auipc	ra,0x8
    80005260:	c1c080e7          	jalr	-996(ra) # 8000ce78 <_Unwind_Resume>
    80005264:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005268:	00048513          	mv	a0,s1
    8000526c:	ffffd097          	auipc	ra,0xffffd
    80005270:	490080e7          	jalr	1168(ra) # 800026fc <_ZdlPv>
    80005274:	00090513          	mv	a0,s2
    80005278:	00008097          	auipc	ra,0x8
    8000527c:	c00080e7          	jalr	-1024(ra) # 8000ce78 <_Unwind_Resume>
    80005280:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005284:	000b0513          	mv	a0,s6
    80005288:	ffffd097          	auipc	ra,0xffffd
    8000528c:	474080e7          	jalr	1140(ra) # 800026fc <_ZdlPv>
    80005290:	00048513          	mv	a0,s1
    80005294:	00008097          	auipc	ra,0x8
    80005298:	be4080e7          	jalr	-1052(ra) # 8000ce78 <_Unwind_Resume>
    8000529c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800052a0:	000c8513          	mv	a0,s9
    800052a4:	ffffd097          	auipc	ra,0xffffd
    800052a8:	458080e7          	jalr	1112(ra) # 800026fc <_ZdlPv>
    800052ac:	00048513          	mv	a0,s1
    800052b0:	00008097          	auipc	ra,0x8
    800052b4:	bc8080e7          	jalr	-1080(ra) # 8000ce78 <_Unwind_Resume>
    800052b8:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800052bc:	000c8513          	mv	a0,s9
    800052c0:	ffffd097          	auipc	ra,0xffffd
    800052c4:	43c080e7          	jalr	1084(ra) # 800026fc <_ZdlPv>
    800052c8:	00048513          	mv	a0,s1
    800052cc:	00008097          	auipc	ra,0x8
    800052d0:	bac080e7          	jalr	-1108(ra) # 8000ce78 <_Unwind_Resume>

00000000800052d4 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800052d4:	ff010113          	addi	sp,sp,-16
    800052d8:	00113423          	sd	ra,8(sp)
    800052dc:	00813023          	sd	s0,0(sp)
    800052e0:	01010413          	addi	s0,sp,16
    800052e4:	00007797          	auipc	a5,0x7
    800052e8:	92c78793          	addi	a5,a5,-1748 # 8000bc10 <_ZTV12ConsumerSync+0x10>
    800052ec:	00f53023          	sd	a5,0(a0)
    800052f0:	ffffd097          	auipc	ra,0xffffd
    800052f4:	570080e7          	jalr	1392(ra) # 80002860 <_ZN6ThreadD1Ev>
    800052f8:	00813083          	ld	ra,8(sp)
    800052fc:	00013403          	ld	s0,0(sp)
    80005300:	01010113          	addi	sp,sp,16
    80005304:	00008067          	ret

0000000080005308 <_ZN12ConsumerSyncD0Ev>:
    80005308:	fe010113          	addi	sp,sp,-32
    8000530c:	00113c23          	sd	ra,24(sp)
    80005310:	00813823          	sd	s0,16(sp)
    80005314:	00913423          	sd	s1,8(sp)
    80005318:	02010413          	addi	s0,sp,32
    8000531c:	00050493          	mv	s1,a0
    80005320:	00007797          	auipc	a5,0x7
    80005324:	8f078793          	addi	a5,a5,-1808 # 8000bc10 <_ZTV12ConsumerSync+0x10>
    80005328:	00f53023          	sd	a5,0(a0)
    8000532c:	ffffd097          	auipc	ra,0xffffd
    80005330:	534080e7          	jalr	1332(ra) # 80002860 <_ZN6ThreadD1Ev>
    80005334:	00048513          	mv	a0,s1
    80005338:	ffffd097          	auipc	ra,0xffffd
    8000533c:	3c4080e7          	jalr	964(ra) # 800026fc <_ZdlPv>
    80005340:	01813083          	ld	ra,24(sp)
    80005344:	01013403          	ld	s0,16(sp)
    80005348:	00813483          	ld	s1,8(sp)
    8000534c:	02010113          	addi	sp,sp,32
    80005350:	00008067          	ret

0000000080005354 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005354:	ff010113          	addi	sp,sp,-16
    80005358:	00113423          	sd	ra,8(sp)
    8000535c:	00813023          	sd	s0,0(sp)
    80005360:	01010413          	addi	s0,sp,16
    80005364:	00007797          	auipc	a5,0x7
    80005368:	88478793          	addi	a5,a5,-1916 # 8000bbe8 <_ZTV12ProducerSync+0x10>
    8000536c:	00f53023          	sd	a5,0(a0)
    80005370:	ffffd097          	auipc	ra,0xffffd
    80005374:	4f0080e7          	jalr	1264(ra) # 80002860 <_ZN6ThreadD1Ev>
    80005378:	00813083          	ld	ra,8(sp)
    8000537c:	00013403          	ld	s0,0(sp)
    80005380:	01010113          	addi	sp,sp,16
    80005384:	00008067          	ret

0000000080005388 <_ZN12ProducerSyncD0Ev>:
    80005388:	fe010113          	addi	sp,sp,-32
    8000538c:	00113c23          	sd	ra,24(sp)
    80005390:	00813823          	sd	s0,16(sp)
    80005394:	00913423          	sd	s1,8(sp)
    80005398:	02010413          	addi	s0,sp,32
    8000539c:	00050493          	mv	s1,a0
    800053a0:	00007797          	auipc	a5,0x7
    800053a4:	84878793          	addi	a5,a5,-1976 # 8000bbe8 <_ZTV12ProducerSync+0x10>
    800053a8:	00f53023          	sd	a5,0(a0)
    800053ac:	ffffd097          	auipc	ra,0xffffd
    800053b0:	4b4080e7          	jalr	1204(ra) # 80002860 <_ZN6ThreadD1Ev>
    800053b4:	00048513          	mv	a0,s1
    800053b8:	ffffd097          	auipc	ra,0xffffd
    800053bc:	344080e7          	jalr	836(ra) # 800026fc <_ZdlPv>
    800053c0:	01813083          	ld	ra,24(sp)
    800053c4:	01013403          	ld	s0,16(sp)
    800053c8:	00813483          	ld	s1,8(sp)
    800053cc:	02010113          	addi	sp,sp,32
    800053d0:	00008067          	ret

00000000800053d4 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800053d4:	ff010113          	addi	sp,sp,-16
    800053d8:	00113423          	sd	ra,8(sp)
    800053dc:	00813023          	sd	s0,0(sp)
    800053e0:	01010413          	addi	s0,sp,16
    800053e4:	00006797          	auipc	a5,0x6
    800053e8:	7dc78793          	addi	a5,a5,2012 # 8000bbc0 <_ZTV16ProducerKeyboard+0x10>
    800053ec:	00f53023          	sd	a5,0(a0)
    800053f0:	ffffd097          	auipc	ra,0xffffd
    800053f4:	470080e7          	jalr	1136(ra) # 80002860 <_ZN6ThreadD1Ev>
    800053f8:	00813083          	ld	ra,8(sp)
    800053fc:	00013403          	ld	s0,0(sp)
    80005400:	01010113          	addi	sp,sp,16
    80005404:	00008067          	ret

0000000080005408 <_ZN16ProducerKeyboardD0Ev>:
    80005408:	fe010113          	addi	sp,sp,-32
    8000540c:	00113c23          	sd	ra,24(sp)
    80005410:	00813823          	sd	s0,16(sp)
    80005414:	00913423          	sd	s1,8(sp)
    80005418:	02010413          	addi	s0,sp,32
    8000541c:	00050493          	mv	s1,a0
    80005420:	00006797          	auipc	a5,0x6
    80005424:	7a078793          	addi	a5,a5,1952 # 8000bbc0 <_ZTV16ProducerKeyboard+0x10>
    80005428:	00f53023          	sd	a5,0(a0)
    8000542c:	ffffd097          	auipc	ra,0xffffd
    80005430:	434080e7          	jalr	1076(ra) # 80002860 <_ZN6ThreadD1Ev>
    80005434:	00048513          	mv	a0,s1
    80005438:	ffffd097          	auipc	ra,0xffffd
    8000543c:	2c4080e7          	jalr	708(ra) # 800026fc <_ZdlPv>
    80005440:	01813083          	ld	ra,24(sp)
    80005444:	01013403          	ld	s0,16(sp)
    80005448:	00813483          	ld	s1,8(sp)
    8000544c:	02010113          	addi	sp,sp,32
    80005450:	00008067          	ret

0000000080005454 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005454:	ff010113          	addi	sp,sp,-16
    80005458:	00113423          	sd	ra,8(sp)
    8000545c:	00813023          	sd	s0,0(sp)
    80005460:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005464:	02053583          	ld	a1,32(a0)
    80005468:	fffff097          	auipc	ra,0xfffff
    8000546c:	7e4080e7          	jalr	2020(ra) # 80004c4c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005470:	00813083          	ld	ra,8(sp)
    80005474:	00013403          	ld	s0,0(sp)
    80005478:	01010113          	addi	sp,sp,16
    8000547c:	00008067          	ret

0000000080005480 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005480:	ff010113          	addi	sp,sp,-16
    80005484:	00113423          	sd	ra,8(sp)
    80005488:	00813023          	sd	s0,0(sp)
    8000548c:	01010413          	addi	s0,sp,16
        producer(td);
    80005490:	02053583          	ld	a1,32(a0)
    80005494:	00000097          	auipc	ra,0x0
    80005498:	878080e7          	jalr	-1928(ra) # 80004d0c <_ZN12ProducerSync8producerEPv>
    }
    8000549c:	00813083          	ld	ra,8(sp)
    800054a0:	00013403          	ld	s0,0(sp)
    800054a4:	01010113          	addi	sp,sp,16
    800054a8:	00008067          	ret

00000000800054ac <_ZN12ConsumerSync3runEv>:
    void run() override {
    800054ac:	ff010113          	addi	sp,sp,-16
    800054b0:	00113423          	sd	ra,8(sp)
    800054b4:	00813023          	sd	s0,0(sp)
    800054b8:	01010413          	addi	s0,sp,16
        consumer(td);
    800054bc:	02053583          	ld	a1,32(a0)
    800054c0:	00000097          	auipc	ra,0x0
    800054c4:	8e0080e7          	jalr	-1824(ra) # 80004da0 <_ZN12ConsumerSync8consumerEPv>
    }
    800054c8:	00813083          	ld	ra,8(sp)
    800054cc:	00013403          	ld	s0,0(sp)
    800054d0:	01010113          	addi	sp,sp,16
    800054d4:	00008067          	ret

00000000800054d8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800054d8:	fe010113          	addi	sp,sp,-32
    800054dc:	00113c23          	sd	ra,24(sp)
    800054e0:	00813823          	sd	s0,16(sp)
    800054e4:	00913423          	sd	s1,8(sp)
    800054e8:	02010413          	addi	s0,sp,32
    800054ec:	00050493          	mv	s1,a0
    LOCK();
    800054f0:	00100613          	li	a2,1
    800054f4:	00000593          	li	a1,0
    800054f8:	00007517          	auipc	a0,0x7
    800054fc:	87850513          	addi	a0,a0,-1928 # 8000bd70 <lockPrint>
    80005500:	ffffc097          	auipc	ra,0xffffc
    80005504:	ca4080e7          	jalr	-860(ra) # 800011a4 <copy_and_swap>
    80005508:	00050863          	beqz	a0,80005518 <_Z11printStringPKc+0x40>
    8000550c:	ffffc097          	auipc	ra,0xffffc
    80005510:	e7c080e7          	jalr	-388(ra) # 80001388 <_Z15thread_dispatchv>
    80005514:	fddff06f          	j	800054f0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005518:	0004c503          	lbu	a0,0(s1)
    8000551c:	00050a63          	beqz	a0,80005530 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005520:	ffffc097          	auipc	ra,0xffffc
    80005524:	12c080e7          	jalr	300(ra) # 8000164c <_Z4putcc>
        string++;
    80005528:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000552c:	fedff06f          	j	80005518 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005530:	00000613          	li	a2,0
    80005534:	00100593          	li	a1,1
    80005538:	00007517          	auipc	a0,0x7
    8000553c:	83850513          	addi	a0,a0,-1992 # 8000bd70 <lockPrint>
    80005540:	ffffc097          	auipc	ra,0xffffc
    80005544:	c64080e7          	jalr	-924(ra) # 800011a4 <copy_and_swap>
    80005548:	fe0514e3          	bnez	a0,80005530 <_Z11printStringPKc+0x58>
}
    8000554c:	01813083          	ld	ra,24(sp)
    80005550:	01013403          	ld	s0,16(sp)
    80005554:	00813483          	ld	s1,8(sp)
    80005558:	02010113          	addi	sp,sp,32
    8000555c:	00008067          	ret

0000000080005560 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005560:	fd010113          	addi	sp,sp,-48
    80005564:	02113423          	sd	ra,40(sp)
    80005568:	02813023          	sd	s0,32(sp)
    8000556c:	00913c23          	sd	s1,24(sp)
    80005570:	01213823          	sd	s2,16(sp)
    80005574:	01313423          	sd	s3,8(sp)
    80005578:	01413023          	sd	s4,0(sp)
    8000557c:	03010413          	addi	s0,sp,48
    80005580:	00050993          	mv	s3,a0
    80005584:	00058a13          	mv	s4,a1
    LOCK();
    80005588:	00100613          	li	a2,1
    8000558c:	00000593          	li	a1,0
    80005590:	00006517          	auipc	a0,0x6
    80005594:	7e050513          	addi	a0,a0,2016 # 8000bd70 <lockPrint>
    80005598:	ffffc097          	auipc	ra,0xffffc
    8000559c:	c0c080e7          	jalr	-1012(ra) # 800011a4 <copy_and_swap>
    800055a0:	00050863          	beqz	a0,800055b0 <_Z9getStringPci+0x50>
    800055a4:	ffffc097          	auipc	ra,0xffffc
    800055a8:	de4080e7          	jalr	-540(ra) # 80001388 <_Z15thread_dispatchv>
    800055ac:	fddff06f          	j	80005588 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800055b0:	00000913          	li	s2,0
    800055b4:	00090493          	mv	s1,s2
    800055b8:	0019091b          	addiw	s2,s2,1
    800055bc:	03495a63          	bge	s2,s4,800055f0 <_Z9getStringPci+0x90>
        cc = getc();
    800055c0:	ffffc097          	auipc	ra,0xffffc
    800055c4:	04c080e7          	jalr	76(ra) # 8000160c <_Z4getcv>
        if(cc < 1)
    800055c8:	02050463          	beqz	a0,800055f0 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800055cc:	009984b3          	add	s1,s3,s1
    800055d0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800055d4:	00a00793          	li	a5,10
    800055d8:	00f50a63          	beq	a0,a5,800055ec <_Z9getStringPci+0x8c>
    800055dc:	00d00793          	li	a5,13
    800055e0:	fcf51ae3          	bne	a0,a5,800055b4 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800055e4:	00090493          	mv	s1,s2
    800055e8:	0080006f          	j	800055f0 <_Z9getStringPci+0x90>
    800055ec:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800055f0:	009984b3          	add	s1,s3,s1
    800055f4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800055f8:	00000613          	li	a2,0
    800055fc:	00100593          	li	a1,1
    80005600:	00006517          	auipc	a0,0x6
    80005604:	77050513          	addi	a0,a0,1904 # 8000bd70 <lockPrint>
    80005608:	ffffc097          	auipc	ra,0xffffc
    8000560c:	b9c080e7          	jalr	-1124(ra) # 800011a4 <copy_and_swap>
    80005610:	fe0514e3          	bnez	a0,800055f8 <_Z9getStringPci+0x98>
    return buf;
}
    80005614:	00098513          	mv	a0,s3
    80005618:	02813083          	ld	ra,40(sp)
    8000561c:	02013403          	ld	s0,32(sp)
    80005620:	01813483          	ld	s1,24(sp)
    80005624:	01013903          	ld	s2,16(sp)
    80005628:	00813983          	ld	s3,8(sp)
    8000562c:	00013a03          	ld	s4,0(sp)
    80005630:	03010113          	addi	sp,sp,48
    80005634:	00008067          	ret

0000000080005638 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005638:	ff010113          	addi	sp,sp,-16
    8000563c:	00813423          	sd	s0,8(sp)
    80005640:	01010413          	addi	s0,sp,16
    80005644:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005648:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000564c:	0006c603          	lbu	a2,0(a3)
    80005650:	fd06071b          	addiw	a4,a2,-48
    80005654:	0ff77713          	andi	a4,a4,255
    80005658:	00900793          	li	a5,9
    8000565c:	02e7e063          	bltu	a5,a4,8000567c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005660:	0025179b          	slliw	a5,a0,0x2
    80005664:	00a787bb          	addw	a5,a5,a0
    80005668:	0017979b          	slliw	a5,a5,0x1
    8000566c:	00168693          	addi	a3,a3,1
    80005670:	00c787bb          	addw	a5,a5,a2
    80005674:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005678:	fd5ff06f          	j	8000564c <_Z11stringToIntPKc+0x14>
    return n;
}
    8000567c:	00813403          	ld	s0,8(sp)
    80005680:	01010113          	addi	sp,sp,16
    80005684:	00008067          	ret

0000000080005688 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005688:	fc010113          	addi	sp,sp,-64
    8000568c:	02113c23          	sd	ra,56(sp)
    80005690:	02813823          	sd	s0,48(sp)
    80005694:	02913423          	sd	s1,40(sp)
    80005698:	03213023          	sd	s2,32(sp)
    8000569c:	01313c23          	sd	s3,24(sp)
    800056a0:	04010413          	addi	s0,sp,64
    800056a4:	00050493          	mv	s1,a0
    800056a8:	00058913          	mv	s2,a1
    800056ac:	00060993          	mv	s3,a2
    LOCK();
    800056b0:	00100613          	li	a2,1
    800056b4:	00000593          	li	a1,0
    800056b8:	00006517          	auipc	a0,0x6
    800056bc:	6b850513          	addi	a0,a0,1720 # 8000bd70 <lockPrint>
    800056c0:	ffffc097          	auipc	ra,0xffffc
    800056c4:	ae4080e7          	jalr	-1308(ra) # 800011a4 <copy_and_swap>
    800056c8:	00050863          	beqz	a0,800056d8 <_Z8printIntiii+0x50>
    800056cc:	ffffc097          	auipc	ra,0xffffc
    800056d0:	cbc080e7          	jalr	-836(ra) # 80001388 <_Z15thread_dispatchv>
    800056d4:	fddff06f          	j	800056b0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800056d8:	00098463          	beqz	s3,800056e0 <_Z8printIntiii+0x58>
    800056dc:	0804c463          	bltz	s1,80005764 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800056e0:	0004851b          	sext.w	a0,s1
    neg = 0;
    800056e4:	00000593          	li	a1,0
    }

    i = 0;
    800056e8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800056ec:	0009079b          	sext.w	a5,s2
    800056f0:	0325773b          	remuw	a4,a0,s2
    800056f4:	00048613          	mv	a2,s1
    800056f8:	0014849b          	addiw	s1,s1,1
    800056fc:	02071693          	slli	a3,a4,0x20
    80005700:	0206d693          	srli	a3,a3,0x20
    80005704:	00006717          	auipc	a4,0x6
    80005708:	52470713          	addi	a4,a4,1316 # 8000bc28 <digits>
    8000570c:	00d70733          	add	a4,a4,a3
    80005710:	00074683          	lbu	a3,0(a4)
    80005714:	fd040713          	addi	a4,s0,-48
    80005718:	00c70733          	add	a4,a4,a2
    8000571c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005720:	0005071b          	sext.w	a4,a0
    80005724:	0325553b          	divuw	a0,a0,s2
    80005728:	fcf772e3          	bgeu	a4,a5,800056ec <_Z8printIntiii+0x64>
    if(neg)
    8000572c:	00058c63          	beqz	a1,80005744 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005730:	fd040793          	addi	a5,s0,-48
    80005734:	009784b3          	add	s1,a5,s1
    80005738:	02d00793          	li	a5,45
    8000573c:	fef48823          	sb	a5,-16(s1)
    80005740:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005744:	fff4849b          	addiw	s1,s1,-1
    80005748:	0204c463          	bltz	s1,80005770 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    8000574c:	fd040793          	addi	a5,s0,-48
    80005750:	009787b3          	add	a5,a5,s1
    80005754:	ff07c503          	lbu	a0,-16(a5)
    80005758:	ffffc097          	auipc	ra,0xffffc
    8000575c:	ef4080e7          	jalr	-268(ra) # 8000164c <_Z4putcc>
    80005760:	fe5ff06f          	j	80005744 <_Z8printIntiii+0xbc>
        x = -xx;
    80005764:	4090053b          	negw	a0,s1
        neg = 1;
    80005768:	00100593          	li	a1,1
        x = -xx;
    8000576c:	f7dff06f          	j	800056e8 <_Z8printIntiii+0x60>

    UNLOCK();
    80005770:	00000613          	li	a2,0
    80005774:	00100593          	li	a1,1
    80005778:	00006517          	auipc	a0,0x6
    8000577c:	5f850513          	addi	a0,a0,1528 # 8000bd70 <lockPrint>
    80005780:	ffffc097          	auipc	ra,0xffffc
    80005784:	a24080e7          	jalr	-1500(ra) # 800011a4 <copy_and_swap>
    80005788:	fe0514e3          	bnez	a0,80005770 <_Z8printIntiii+0xe8>
    8000578c:	03813083          	ld	ra,56(sp)
    80005790:	03013403          	ld	s0,48(sp)
    80005794:	02813483          	ld	s1,40(sp)
    80005798:	02013903          	ld	s2,32(sp)
    8000579c:	01813983          	ld	s3,24(sp)
    800057a0:	04010113          	addi	sp,sp,64
    800057a4:	00008067          	ret

00000000800057a8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800057a8:	fd010113          	addi	sp,sp,-48
    800057ac:	02113423          	sd	ra,40(sp)
    800057b0:	02813023          	sd	s0,32(sp)
    800057b4:	00913c23          	sd	s1,24(sp)
    800057b8:	01213823          	sd	s2,16(sp)
    800057bc:	01313423          	sd	s3,8(sp)
    800057c0:	03010413          	addi	s0,sp,48
    800057c4:	00050493          	mv	s1,a0
    800057c8:	00058913          	mv	s2,a1
    800057cc:	0015879b          	addiw	a5,a1,1
    800057d0:	0007851b          	sext.w	a0,a5
    800057d4:	00f4a023          	sw	a5,0(s1)
    800057d8:	0004a823          	sw	zero,16(s1)
    800057dc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800057e0:	00251513          	slli	a0,a0,0x2
    800057e4:	ffffc097          	auipc	ra,0xffffc
    800057e8:	a14080e7          	jalr	-1516(ra) # 800011f8 <_Z9mem_allocm>
    800057ec:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800057f0:	01000513          	li	a0,16
    800057f4:	ffffd097          	auipc	ra,0xffffd
    800057f8:	eb8080e7          	jalr	-328(ra) # 800026ac <_Znwm>
    800057fc:	00050993          	mv	s3,a0
    80005800:	00000593          	li	a1,0
    80005804:	ffffd097          	auipc	ra,0xffffd
    80005808:	2a4080e7          	jalr	676(ra) # 80002aa8 <_ZN9SemaphoreC1Ej>
    8000580c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005810:	01000513          	li	a0,16
    80005814:	ffffd097          	auipc	ra,0xffffd
    80005818:	e98080e7          	jalr	-360(ra) # 800026ac <_Znwm>
    8000581c:	00050993          	mv	s3,a0
    80005820:	00090593          	mv	a1,s2
    80005824:	ffffd097          	auipc	ra,0xffffd
    80005828:	284080e7          	jalr	644(ra) # 80002aa8 <_ZN9SemaphoreC1Ej>
    8000582c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005830:	01000513          	li	a0,16
    80005834:	ffffd097          	auipc	ra,0xffffd
    80005838:	e78080e7          	jalr	-392(ra) # 800026ac <_Znwm>
    8000583c:	00050913          	mv	s2,a0
    80005840:	00100593          	li	a1,1
    80005844:	ffffd097          	auipc	ra,0xffffd
    80005848:	264080e7          	jalr	612(ra) # 80002aa8 <_ZN9SemaphoreC1Ej>
    8000584c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005850:	01000513          	li	a0,16
    80005854:	ffffd097          	auipc	ra,0xffffd
    80005858:	e58080e7          	jalr	-424(ra) # 800026ac <_Znwm>
    8000585c:	00050913          	mv	s2,a0
    80005860:	00100593          	li	a1,1
    80005864:	ffffd097          	auipc	ra,0xffffd
    80005868:	244080e7          	jalr	580(ra) # 80002aa8 <_ZN9SemaphoreC1Ej>
    8000586c:	0324b823          	sd	s2,48(s1)
}
    80005870:	02813083          	ld	ra,40(sp)
    80005874:	02013403          	ld	s0,32(sp)
    80005878:	01813483          	ld	s1,24(sp)
    8000587c:	01013903          	ld	s2,16(sp)
    80005880:	00813983          	ld	s3,8(sp)
    80005884:	03010113          	addi	sp,sp,48
    80005888:	00008067          	ret
    8000588c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005890:	00098513          	mv	a0,s3
    80005894:	ffffd097          	auipc	ra,0xffffd
    80005898:	e68080e7          	jalr	-408(ra) # 800026fc <_ZdlPv>
    8000589c:	00048513          	mv	a0,s1
    800058a0:	00007097          	auipc	ra,0x7
    800058a4:	5d8080e7          	jalr	1496(ra) # 8000ce78 <_Unwind_Resume>
    800058a8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800058ac:	00098513          	mv	a0,s3
    800058b0:	ffffd097          	auipc	ra,0xffffd
    800058b4:	e4c080e7          	jalr	-436(ra) # 800026fc <_ZdlPv>
    800058b8:	00048513          	mv	a0,s1
    800058bc:	00007097          	auipc	ra,0x7
    800058c0:	5bc080e7          	jalr	1468(ra) # 8000ce78 <_Unwind_Resume>
    800058c4:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800058c8:	00090513          	mv	a0,s2
    800058cc:	ffffd097          	auipc	ra,0xffffd
    800058d0:	e30080e7          	jalr	-464(ra) # 800026fc <_ZdlPv>
    800058d4:	00048513          	mv	a0,s1
    800058d8:	00007097          	auipc	ra,0x7
    800058dc:	5a0080e7          	jalr	1440(ra) # 8000ce78 <_Unwind_Resume>
    800058e0:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800058e4:	00090513          	mv	a0,s2
    800058e8:	ffffd097          	auipc	ra,0xffffd
    800058ec:	e14080e7          	jalr	-492(ra) # 800026fc <_ZdlPv>
    800058f0:	00048513          	mv	a0,s1
    800058f4:	00007097          	auipc	ra,0x7
    800058f8:	584080e7          	jalr	1412(ra) # 8000ce78 <_Unwind_Resume>

00000000800058fc <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800058fc:	fe010113          	addi	sp,sp,-32
    80005900:	00113c23          	sd	ra,24(sp)
    80005904:	00813823          	sd	s0,16(sp)
    80005908:	00913423          	sd	s1,8(sp)
    8000590c:	01213023          	sd	s2,0(sp)
    80005910:	02010413          	addi	s0,sp,32
    80005914:	00050493          	mv	s1,a0
    80005918:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000591c:	01853503          	ld	a0,24(a0)
    80005920:	ffffd097          	auipc	ra,0xffffd
    80005924:	1c4080e7          	jalr	452(ra) # 80002ae4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005928:	0304b503          	ld	a0,48(s1)
    8000592c:	ffffd097          	auipc	ra,0xffffd
    80005930:	1b8080e7          	jalr	440(ra) # 80002ae4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005934:	0084b783          	ld	a5,8(s1)
    80005938:	0144a703          	lw	a4,20(s1)
    8000593c:	00271713          	slli	a4,a4,0x2
    80005940:	00e787b3          	add	a5,a5,a4
    80005944:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005948:	0144a783          	lw	a5,20(s1)
    8000594c:	0017879b          	addiw	a5,a5,1
    80005950:	0004a703          	lw	a4,0(s1)
    80005954:	02e7e7bb          	remw	a5,a5,a4
    80005958:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000595c:	0304b503          	ld	a0,48(s1)
    80005960:	ffffd097          	auipc	ra,0xffffd
    80005964:	1b0080e7          	jalr	432(ra) # 80002b10 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005968:	0204b503          	ld	a0,32(s1)
    8000596c:	ffffd097          	auipc	ra,0xffffd
    80005970:	1a4080e7          	jalr	420(ra) # 80002b10 <_ZN9Semaphore6signalEv>

}
    80005974:	01813083          	ld	ra,24(sp)
    80005978:	01013403          	ld	s0,16(sp)
    8000597c:	00813483          	ld	s1,8(sp)
    80005980:	00013903          	ld	s2,0(sp)
    80005984:	02010113          	addi	sp,sp,32
    80005988:	00008067          	ret

000000008000598c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000598c:	fe010113          	addi	sp,sp,-32
    80005990:	00113c23          	sd	ra,24(sp)
    80005994:	00813823          	sd	s0,16(sp)
    80005998:	00913423          	sd	s1,8(sp)
    8000599c:	01213023          	sd	s2,0(sp)
    800059a0:	02010413          	addi	s0,sp,32
    800059a4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800059a8:	02053503          	ld	a0,32(a0)
    800059ac:	ffffd097          	auipc	ra,0xffffd
    800059b0:	138080e7          	jalr	312(ra) # 80002ae4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800059b4:	0284b503          	ld	a0,40(s1)
    800059b8:	ffffd097          	auipc	ra,0xffffd
    800059bc:	12c080e7          	jalr	300(ra) # 80002ae4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800059c0:	0084b703          	ld	a4,8(s1)
    800059c4:	0104a783          	lw	a5,16(s1)
    800059c8:	00279693          	slli	a3,a5,0x2
    800059cc:	00d70733          	add	a4,a4,a3
    800059d0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800059d4:	0017879b          	addiw	a5,a5,1
    800059d8:	0004a703          	lw	a4,0(s1)
    800059dc:	02e7e7bb          	remw	a5,a5,a4
    800059e0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800059e4:	0284b503          	ld	a0,40(s1)
    800059e8:	ffffd097          	auipc	ra,0xffffd
    800059ec:	128080e7          	jalr	296(ra) # 80002b10 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800059f0:	0184b503          	ld	a0,24(s1)
    800059f4:	ffffd097          	auipc	ra,0xffffd
    800059f8:	11c080e7          	jalr	284(ra) # 80002b10 <_ZN9Semaphore6signalEv>

    return ret;
}
    800059fc:	00090513          	mv	a0,s2
    80005a00:	01813083          	ld	ra,24(sp)
    80005a04:	01013403          	ld	s0,16(sp)
    80005a08:	00813483          	ld	s1,8(sp)
    80005a0c:	00013903          	ld	s2,0(sp)
    80005a10:	02010113          	addi	sp,sp,32
    80005a14:	00008067          	ret

0000000080005a18 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005a18:	fe010113          	addi	sp,sp,-32
    80005a1c:	00113c23          	sd	ra,24(sp)
    80005a20:	00813823          	sd	s0,16(sp)
    80005a24:	00913423          	sd	s1,8(sp)
    80005a28:	01213023          	sd	s2,0(sp)
    80005a2c:	02010413          	addi	s0,sp,32
    80005a30:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005a34:	02853503          	ld	a0,40(a0)
    80005a38:	ffffd097          	auipc	ra,0xffffd
    80005a3c:	0ac080e7          	jalr	172(ra) # 80002ae4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005a40:	0304b503          	ld	a0,48(s1)
    80005a44:	ffffd097          	auipc	ra,0xffffd
    80005a48:	0a0080e7          	jalr	160(ra) # 80002ae4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005a4c:	0144a783          	lw	a5,20(s1)
    80005a50:	0104a903          	lw	s2,16(s1)
    80005a54:	0327ce63          	blt	a5,s2,80005a90 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005a58:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005a5c:	0304b503          	ld	a0,48(s1)
    80005a60:	ffffd097          	auipc	ra,0xffffd
    80005a64:	0b0080e7          	jalr	176(ra) # 80002b10 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005a68:	0284b503          	ld	a0,40(s1)
    80005a6c:	ffffd097          	auipc	ra,0xffffd
    80005a70:	0a4080e7          	jalr	164(ra) # 80002b10 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005a74:	00090513          	mv	a0,s2
    80005a78:	01813083          	ld	ra,24(sp)
    80005a7c:	01013403          	ld	s0,16(sp)
    80005a80:	00813483          	ld	s1,8(sp)
    80005a84:	00013903          	ld	s2,0(sp)
    80005a88:	02010113          	addi	sp,sp,32
    80005a8c:	00008067          	ret
        ret = cap - head + tail;
    80005a90:	0004a703          	lw	a4,0(s1)
    80005a94:	4127093b          	subw	s2,a4,s2
    80005a98:	00f9093b          	addw	s2,s2,a5
    80005a9c:	fc1ff06f          	j	80005a5c <_ZN9BufferCPP6getCntEv+0x44>

0000000080005aa0 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005aa0:	fe010113          	addi	sp,sp,-32
    80005aa4:	00113c23          	sd	ra,24(sp)
    80005aa8:	00813823          	sd	s0,16(sp)
    80005aac:	00913423          	sd	s1,8(sp)
    80005ab0:	02010413          	addi	s0,sp,32
    80005ab4:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005ab8:	00a00513          	li	a0,10
    80005abc:	ffffd097          	auipc	ra,0xffffd
    80005ac0:	110080e7          	jalr	272(ra) # 80002bcc <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005ac4:	00004517          	auipc	a0,0x4
    80005ac8:	aa450513          	addi	a0,a0,-1372 # 80009568 <CONSOLE_STATUS+0x558>
    80005acc:	00000097          	auipc	ra,0x0
    80005ad0:	a0c080e7          	jalr	-1524(ra) # 800054d8 <_Z11printStringPKc>
    while (getCnt()) {
    80005ad4:	00048513          	mv	a0,s1
    80005ad8:	00000097          	auipc	ra,0x0
    80005adc:	f40080e7          	jalr	-192(ra) # 80005a18 <_ZN9BufferCPP6getCntEv>
    80005ae0:	02050c63          	beqz	a0,80005b18 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005ae4:	0084b783          	ld	a5,8(s1)
    80005ae8:	0104a703          	lw	a4,16(s1)
    80005aec:	00271713          	slli	a4,a4,0x2
    80005af0:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005af4:	0007c503          	lbu	a0,0(a5)
    80005af8:	ffffd097          	auipc	ra,0xffffd
    80005afc:	0d4080e7          	jalr	212(ra) # 80002bcc <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005b00:	0104a783          	lw	a5,16(s1)
    80005b04:	0017879b          	addiw	a5,a5,1
    80005b08:	0004a703          	lw	a4,0(s1)
    80005b0c:	02e7e7bb          	remw	a5,a5,a4
    80005b10:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005b14:	fc1ff06f          	j	80005ad4 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005b18:	02100513          	li	a0,33
    80005b1c:	ffffd097          	auipc	ra,0xffffd
    80005b20:	0b0080e7          	jalr	176(ra) # 80002bcc <_ZN7Console4putcEc>
    Console::putc('\n');
    80005b24:	00a00513          	li	a0,10
    80005b28:	ffffd097          	auipc	ra,0xffffd
    80005b2c:	0a4080e7          	jalr	164(ra) # 80002bcc <_ZN7Console4putcEc>
    mem_free(buffer);
    80005b30:	0084b503          	ld	a0,8(s1)
    80005b34:	ffffb097          	auipc	ra,0xffffb
    80005b38:	710080e7          	jalr	1808(ra) # 80001244 <_Z8mem_freePv>
    delete itemAvailable;
    80005b3c:	0204b503          	ld	a0,32(s1)
    80005b40:	00050863          	beqz	a0,80005b50 <_ZN9BufferCPPD1Ev+0xb0>
    80005b44:	00053783          	ld	a5,0(a0)
    80005b48:	0087b783          	ld	a5,8(a5)
    80005b4c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005b50:	0184b503          	ld	a0,24(s1)
    80005b54:	00050863          	beqz	a0,80005b64 <_ZN9BufferCPPD1Ev+0xc4>
    80005b58:	00053783          	ld	a5,0(a0)
    80005b5c:	0087b783          	ld	a5,8(a5)
    80005b60:	000780e7          	jalr	a5
    delete mutexTail;
    80005b64:	0304b503          	ld	a0,48(s1)
    80005b68:	00050863          	beqz	a0,80005b78 <_ZN9BufferCPPD1Ev+0xd8>
    80005b6c:	00053783          	ld	a5,0(a0)
    80005b70:	0087b783          	ld	a5,8(a5)
    80005b74:	000780e7          	jalr	a5
    delete mutexHead;
    80005b78:	0284b503          	ld	a0,40(s1)
    80005b7c:	00050863          	beqz	a0,80005b8c <_ZN9BufferCPPD1Ev+0xec>
    80005b80:	00053783          	ld	a5,0(a0)
    80005b84:	0087b783          	ld	a5,8(a5)
    80005b88:	000780e7          	jalr	a5
}
    80005b8c:	01813083          	ld	ra,24(sp)
    80005b90:	01013403          	ld	s0,16(sp)
    80005b94:	00813483          	ld	s1,8(sp)
    80005b98:	02010113          	addi	sp,sp,32
    80005b9c:	00008067          	ret

0000000080005ba0 <_ZL6workerPv>:
static void busyWait() {
    for (int i = 0; i < 3000; i++) {
    }
}

static void worker(void* arg) {
    80005ba0:	fd010113          	addi	sp,sp,-48
    80005ba4:	02113423          	sd	ra,40(sp)
    80005ba8:	02813023          	sd	s0,32(sp)
    80005bac:	00913c23          	sd	s1,24(sp)
    80005bb0:	01213823          	sd	s2,16(sp)
    80005bb4:	01313423          	sd	s3,8(sp)
    80005bb8:	03010413          	addi	s0,sp,48
    (void)arg;
    int id = getThreadId();
    80005bbc:	ffffc097          	auipc	ra,0xffffc
    80005bc0:	84c080e7          	jalr	-1972(ra) # 80001408 <_Z11getThreadIdv>
    80005bc4:	00050993          	mv	s3,a0
    for (int i = 0; i < 5; i++) {
    80005bc8:	00000493          	li	s1,0
    80005bcc:	00400793          	li	a5,4
    80005bd0:	0897c663          	blt	a5,s1,80005c5c <_ZL6workerPv+0xbc>
        sem_wait(printMutex);
    80005bd4:	00006917          	auipc	s2,0x6
    80005bd8:	1a490913          	addi	s2,s2,420 # 8000bd78 <_ZL10printMutex>
    80005bdc:	00093503          	ld	a0,0(s2)
    80005be0:	ffffc097          	auipc	ra,0xffffc
    80005be4:	8e4080e7          	jalr	-1820(ra) # 800014c4 <_Z8sem_waitP4_sem>
        printString("Thread id = ");
    80005be8:	00004517          	auipc	a0,0x4
    80005bec:	99850513          	addi	a0,a0,-1640 # 80009580 <CONSOLE_STATUS+0x570>
    80005bf0:	00000097          	auipc	ra,0x0
    80005bf4:	8e8080e7          	jalr	-1816(ra) # 800054d8 <_Z11printStringPKc>
        printInt(id);
    80005bf8:	00000613          	li	a2,0
    80005bfc:	00a00593          	li	a1,10
    80005c00:	00098513          	mv	a0,s3
    80005c04:	00000097          	auipc	ra,0x0
    80005c08:	a84080e7          	jalr	-1404(ra) # 80005688 <_Z8printIntiii>
        printString(": Hello! i = ");
    80005c0c:	00004517          	auipc	a0,0x4
    80005c10:	98450513          	addi	a0,a0,-1660 # 80009590 <CONSOLE_STATUS+0x580>
    80005c14:	00000097          	auipc	ra,0x0
    80005c18:	8c4080e7          	jalr	-1852(ra) # 800054d8 <_Z11printStringPKc>
        printInt(i);
    80005c1c:	00000613          	li	a2,0
    80005c20:	00a00593          	li	a1,10
    80005c24:	00048513          	mv	a0,s1
    80005c28:	00000097          	auipc	ra,0x0
    80005c2c:	a60080e7          	jalr	-1440(ra) # 80005688 <_Z8printIntiii>
        printString("\n");
    80005c30:	00003517          	auipc	a0,0x3
    80005c34:	68850513          	addi	a0,a0,1672 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80005c38:	00000097          	auipc	ra,0x0
    80005c3c:	8a0080e7          	jalr	-1888(ra) # 800054d8 <_Z11printStringPKc>
        sem_signal(printMutex);
    80005c40:	00093503          	ld	a0,0(s2)
    80005c44:	ffffc097          	auipc	ra,0xffffc
    80005c48:	8c0080e7          	jalr	-1856(ra) # 80001504 <_Z10sem_signalP4_sem>
        busyWait();
        thread_dispatch();
    80005c4c:	ffffb097          	auipc	ra,0xffffb
    80005c50:	73c080e7          	jalr	1852(ra) # 80001388 <_Z15thread_dispatchv>
    for (int i = 0; i < 5; i++) {
    80005c54:	0014849b          	addiw	s1,s1,1
    80005c58:	f75ff06f          	j	80005bcc <_ZL6workerPv+0x2c>
    }
    sem_signal(doneSem);
    80005c5c:	00006517          	auipc	a0,0x6
    80005c60:	12453503          	ld	a0,292(a0) # 8000bd80 <_ZL7doneSem>
    80005c64:	ffffc097          	auipc	ra,0xffffc
    80005c68:	8a0080e7          	jalr	-1888(ra) # 80001504 <_Z10sem_signalP4_sem>
}
    80005c6c:	02813083          	ld	ra,40(sp)
    80005c70:	02013403          	ld	s0,32(sp)
    80005c74:	01813483          	ld	s1,24(sp)
    80005c78:	01013903          	ld	s2,16(sp)
    80005c7c:	00813983          	ld	s3,8(sp)
    80005c80:	03010113          	addi	sp,sp,48
    80005c84:	00008067          	ret

0000000080005c88 <_Z7modCAPIv>:

void modCAPI() {
    80005c88:	f4010113          	addi	sp,sp,-192
    80005c8c:	0a113c23          	sd	ra,184(sp)
    80005c90:	0a813823          	sd	s0,176(sp)
    80005c94:	0a913423          	sd	s1,168(sp)
    80005c98:	0c010413          	addi	s0,sp,192
    setMaximumThreads(3);
    80005c9c:	00300513          	li	a0,3
    80005ca0:	ffffb097          	auipc	ra,0xffffb
    80005ca4:	7a8080e7          	jalr	1960(ra) # 80001448 <_Z17setMaximumThreadsi>
    sem_open(&printMutex, 1);
    80005ca8:	00100593          	li	a1,1
    80005cac:	00006517          	auipc	a0,0x6
    80005cb0:	0cc50513          	addi	a0,a0,204 # 8000bd78 <_ZL10printMutex>
    80005cb4:	ffffb097          	auipc	ra,0xffffb
    80005cb8:	710080e7          	jalr	1808(ra) # 800013c4 <_Z8sem_openPP4_semj>
    sem_open(&doneSem, 0);
    80005cbc:	00000593          	li	a1,0
    80005cc0:	00006517          	auipc	a0,0x6
    80005cc4:	0c050513          	addi	a0,a0,192 # 8000bd80 <_ZL7doneSem>
    80005cc8:	ffffb097          	auipc	ra,0xffffb
    80005ccc:	6fc080e7          	jalr	1788(ra) # 800013c4 <_Z8sem_openPP4_semj>
    thread_t threads[20];
    for (int i = 0; i < 20; i++) {
    80005cd0:	00000493          	li	s1,0
    80005cd4:	01300793          	li	a5,19
    80005cd8:	0297c663          	blt	a5,s1,80005d04 <_Z7modCAPIv+0x7c>
        thread_create(&threads[i], worker, nullptr);
    80005cdc:	00349793          	slli	a5,s1,0x3
    80005ce0:	00000613          	li	a2,0
    80005ce4:	00000597          	auipc	a1,0x0
    80005ce8:	ebc58593          	addi	a1,a1,-324 # 80005ba0 <_ZL6workerPv>
    80005cec:	f4040513          	addi	a0,s0,-192
    80005cf0:	00f50533          	add	a0,a0,a5
    80005cf4:	ffffb097          	auipc	ra,0xffffb
    80005cf8:	590080e7          	jalr	1424(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < 20; i++) {
    80005cfc:	0014849b          	addiw	s1,s1,1
    80005d00:	fd5ff06f          	j	80005cd4 <_Z7modCAPIv+0x4c>
    }
    for (int i = 0; i < 20; i++) {
    80005d04:	00000493          	li	s1,0
    80005d08:	0180006f          	j	80005d20 <_Z7modCAPIv+0x98>
        sem_wait(doneSem);
    80005d0c:	00006517          	auipc	a0,0x6
    80005d10:	07453503          	ld	a0,116(a0) # 8000bd80 <_ZL7doneSem>
    80005d14:	ffffb097          	auipc	ra,0xffffb
    80005d18:	7b0080e7          	jalr	1968(ra) # 800014c4 <_Z8sem_waitP4_sem>
    for (int i = 0; i < 20; i++) {
    80005d1c:	0014849b          	addiw	s1,s1,1
    80005d20:	01300793          	li	a5,19
    80005d24:	fe97d4e3          	bge	a5,s1,80005d0c <_Z7modCAPIv+0x84>
    }
    80005d28:	0b813083          	ld	ra,184(sp)
    80005d2c:	0b013403          	ld	s0,176(sp)
    80005d30:	0a813483          	ld	s1,168(sp)
    80005d34:	0c010113          	addi	sp,sp,192
    80005d38:	00008067          	ret

0000000080005d3c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005d3c:	fe010113          	addi	sp,sp,-32
    80005d40:	00113c23          	sd	ra,24(sp)
    80005d44:	00813823          	sd	s0,16(sp)
    80005d48:	00913423          	sd	s1,8(sp)
    80005d4c:	01213023          	sd	s2,0(sp)
    80005d50:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005d54:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005d58:	00600493          	li	s1,6
    while (--i > 0) {
    80005d5c:	fff4849b          	addiw	s1,s1,-1
    80005d60:	04905463          	blez	s1,80005da8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005d64:	00004517          	auipc	a0,0x4
    80005d68:	83c50513          	addi	a0,a0,-1988 # 800095a0 <CONSOLE_STATUS+0x590>
    80005d6c:	fffff097          	auipc	ra,0xfffff
    80005d70:	76c080e7          	jalr	1900(ra) # 800054d8 <_Z11printStringPKc>
        printInt(sleep_time);
    80005d74:	00000613          	li	a2,0
    80005d78:	00a00593          	li	a1,10
    80005d7c:	0009051b          	sext.w	a0,s2
    80005d80:	00000097          	auipc	ra,0x0
    80005d84:	908080e7          	jalr	-1784(ra) # 80005688 <_Z8printIntiii>
        printString(" !\n");
    80005d88:	00004517          	auipc	a0,0x4
    80005d8c:	82050513          	addi	a0,a0,-2016 # 800095a8 <CONSOLE_STATUS+0x598>
    80005d90:	fffff097          	auipc	ra,0xfffff
    80005d94:	748080e7          	jalr	1864(ra) # 800054d8 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005d98:	00090513          	mv	a0,s2
    80005d9c:	ffffc097          	auipc	ra,0xffffc
    80005da0:	830080e7          	jalr	-2000(ra) # 800015cc <_Z10time_sleepm>
    while (--i > 0) {
    80005da4:	fb9ff06f          	j	80005d5c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005da8:	00a00793          	li	a5,10
    80005dac:	02f95933          	divu	s2,s2,a5
    80005db0:	fff90913          	addi	s2,s2,-1
    80005db4:	00006797          	auipc	a5,0x6
    80005db8:	fd478793          	addi	a5,a5,-44 # 8000bd88 <_ZL8finished>
    80005dbc:	01278933          	add	s2,a5,s2
    80005dc0:	00100793          	li	a5,1
    80005dc4:	00f90023          	sb	a5,0(s2)
}
    80005dc8:	01813083          	ld	ra,24(sp)
    80005dcc:	01013403          	ld	s0,16(sp)
    80005dd0:	00813483          	ld	s1,8(sp)
    80005dd4:	00013903          	ld	s2,0(sp)
    80005dd8:	02010113          	addi	sp,sp,32
    80005ddc:	00008067          	ret

0000000080005de0 <_Z12testSleepingv>:

void testSleeping() {
    80005de0:	fc010113          	addi	sp,sp,-64
    80005de4:	02113c23          	sd	ra,56(sp)
    80005de8:	02813823          	sd	s0,48(sp)
    80005dec:	02913423          	sd	s1,40(sp)
    80005df0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005df4:	00a00793          	li	a5,10
    80005df8:	fcf43823          	sd	a5,-48(s0)
    80005dfc:	01400793          	li	a5,20
    80005e00:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005e04:	00000493          	li	s1,0
    80005e08:	02c0006f          	j	80005e34 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005e0c:	00349793          	slli	a5,s1,0x3
    80005e10:	fd040613          	addi	a2,s0,-48
    80005e14:	00f60633          	add	a2,a2,a5
    80005e18:	00000597          	auipc	a1,0x0
    80005e1c:	f2458593          	addi	a1,a1,-220 # 80005d3c <_ZL9sleepyRunPv>
    80005e20:	fc040513          	addi	a0,s0,-64
    80005e24:	00f50533          	add	a0,a0,a5
    80005e28:	ffffb097          	auipc	ra,0xffffb
    80005e2c:	45c080e7          	jalr	1116(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005e30:	0014849b          	addiw	s1,s1,1
    80005e34:	00100793          	li	a5,1
    80005e38:	fc97dae3          	bge	a5,s1,80005e0c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005e3c:	00006797          	auipc	a5,0x6
    80005e40:	f4c7c783          	lbu	a5,-180(a5) # 8000bd88 <_ZL8finished>
    80005e44:	fe078ce3          	beqz	a5,80005e3c <_Z12testSleepingv+0x5c>
    80005e48:	00006797          	auipc	a5,0x6
    80005e4c:	f417c783          	lbu	a5,-191(a5) # 8000bd89 <_ZL8finished+0x1>
    80005e50:	fe0786e3          	beqz	a5,80005e3c <_Z12testSleepingv+0x5c>
}
    80005e54:	03813083          	ld	ra,56(sp)
    80005e58:	03013403          	ld	s0,48(sp)
    80005e5c:	02813483          	ld	s1,40(sp)
    80005e60:	04010113          	addi	sp,sp,64
    80005e64:	00008067          	ret

0000000080005e68 <_Z8modCplusv>:

        cppDoneSem->signal();
    }
};

void modCplus() {
    80005e68:	f4010113          	addi	sp,sp,-192
    80005e6c:	0a113c23          	sd	ra,184(sp)
    80005e70:	0a813823          	sd	s0,176(sp)
    80005e74:	0a913423          	sd	s1,168(sp)
    80005e78:	0b213023          	sd	s2,160(sp)
    80005e7c:	0c010413          	addi	s0,sp,192
    printString("Max threads C++ API test started\n");
    80005e80:	00003517          	auipc	a0,0x3
    80005e84:	75050513          	addi	a0,a0,1872 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80005e88:	fffff097          	auipc	ra,0xfffff
    80005e8c:	650080e7          	jalr	1616(ra) # 800054d8 <_Z11printStringPKc>

    Thread::setMaximumThreads(3);
    80005e90:	00300513          	li	a0,3
    80005e94:	ffffd097          	auipc	ra,0xffffd
    80005e98:	bec080e7          	jalr	-1044(ra) # 80002a80 <_ZN6Thread17setMaximumThreadsEi>

    cppPrintMutex = new Semaphore(1);
    80005e9c:	01000513          	li	a0,16
    80005ea0:	ffffd097          	auipc	ra,0xffffd
    80005ea4:	80c080e7          	jalr	-2036(ra) # 800026ac <_Znwm>
    80005ea8:	00050493          	mv	s1,a0
    80005eac:	00100593          	li	a1,1
    80005eb0:	ffffd097          	auipc	ra,0xffffd
    80005eb4:	bf8080e7          	jalr	-1032(ra) # 80002aa8 <_ZN9SemaphoreC1Ej>
    80005eb8:	00006797          	auipc	a5,0x6
    80005ebc:	ec97bc23          	sd	s1,-296(a5) # 8000bd90 <_ZL13cppPrintMutex>
    cppDoneSem = new Semaphore(0);
    80005ec0:	01000513          	li	a0,16
    80005ec4:	ffffc097          	auipc	ra,0xffffc
    80005ec8:	7e8080e7          	jalr	2024(ra) # 800026ac <_Znwm>
    80005ecc:	00050493          	mv	s1,a0
    80005ed0:	00000593          	li	a1,0
    80005ed4:	ffffd097          	auipc	ra,0xffffd
    80005ed8:	bd4080e7          	jalr	-1068(ra) # 80002aa8 <_ZN9SemaphoreC1Ej>
    80005edc:	00006797          	auipc	a5,0x6
    80005ee0:	ea97be23          	sd	s1,-324(a5) # 8000bd98 <_ZL10cppDoneSem>

    Thread* threads[20];

    for (int i = 0; i < 20; i++) {
    80005ee4:	00000913          	li	s2,0
    80005ee8:	0300006f          	j	80005f18 <_Z8modCplusv+0xb0>
    MaxThreadWorker() : Thread() {}
    80005eec:	00006797          	auipc	a5,0x6
    80005ef0:	d6478793          	addi	a5,a5,-668 # 8000bc50 <_ZTV15MaxThreadWorker+0x10>
    80005ef4:	00f4b023          	sd	a5,0(s1)
        threads[i] = new MaxThreadWorker();
    80005ef8:	00391793          	slli	a5,s2,0x3
    80005efc:	fe040713          	addi	a4,s0,-32
    80005f00:	00f707b3          	add	a5,a4,a5
    80005f04:	f697b023          	sd	s1,-160(a5)
        threads[i]->start();
    80005f08:	00048513          	mv	a0,s1
    80005f0c:	ffffd097          	auipc	ra,0xffffd
    80005f10:	aa8080e7          	jalr	-1368(ra) # 800029b4 <_ZN6Thread5startEv>
    for (int i = 0; i < 20; i++) {
    80005f14:	0019091b          	addiw	s2,s2,1
    80005f18:	01300793          	li	a5,19
    80005f1c:	0327c063          	blt	a5,s2,80005f3c <_Z8modCplusv+0xd4>
        threads[i] = new MaxThreadWorker();
    80005f20:	02000513          	li	a0,32
    80005f24:	ffffc097          	auipc	ra,0xffffc
    80005f28:	788080e7          	jalr	1928(ra) # 800026ac <_Znwm>
    80005f2c:	00050493          	mv	s1,a0
    MaxThreadWorker() : Thread() {}
    80005f30:	ffffd097          	auipc	ra,0xffffd
    80005f34:	a54080e7          	jalr	-1452(ra) # 80002984 <_ZN6ThreadC1Ev>
    80005f38:	fb5ff06f          	j	80005eec <_Z8modCplusv+0x84>
    }

    for (int i = 0; i < 20; i++) {
    80005f3c:	00000493          	li	s1,0
    80005f40:	0180006f          	j	80005f58 <_Z8modCplusv+0xf0>
        cppDoneSem->wait();
    80005f44:	00006517          	auipc	a0,0x6
    80005f48:	e5453503          	ld	a0,-428(a0) # 8000bd98 <_ZL10cppDoneSem>
    80005f4c:	ffffd097          	auipc	ra,0xffffd
    80005f50:	b98080e7          	jalr	-1128(ra) # 80002ae4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i < 20; i++) {
    80005f54:	0014849b          	addiw	s1,s1,1
    80005f58:	01300793          	li	a5,19
    80005f5c:	fe97d4e3          	bge	a5,s1,80005f44 <_Z8modCplusv+0xdc>
    }

    for (int i = 0; i < 20; i++) {
    80005f60:	00000493          	li	s1,0
    80005f64:	0080006f          	j	80005f6c <_Z8modCplusv+0x104>
    80005f68:	0014849b          	addiw	s1,s1,1
    80005f6c:	01300793          	li	a5,19
    80005f70:	0297c463          	blt	a5,s1,80005f98 <_Z8modCplusv+0x130>
        delete threads[i];
    80005f74:	00349793          	slli	a5,s1,0x3
    80005f78:	fe040713          	addi	a4,s0,-32
    80005f7c:	00f707b3          	add	a5,a4,a5
    80005f80:	f607b503          	ld	a0,-160(a5)
    80005f84:	fe0502e3          	beqz	a0,80005f68 <_Z8modCplusv+0x100>
    80005f88:	00053783          	ld	a5,0(a0)
    80005f8c:	0087b783          	ld	a5,8(a5)
    80005f90:	000780e7          	jalr	a5
    80005f94:	fd5ff06f          	j	80005f68 <_Z8modCplusv+0x100>
    }

    delete cppPrintMutex;
    80005f98:	00006517          	auipc	a0,0x6
    80005f9c:	df853503          	ld	a0,-520(a0) # 8000bd90 <_ZL13cppPrintMutex>
    80005fa0:	00050863          	beqz	a0,80005fb0 <_Z8modCplusv+0x148>
    80005fa4:	00053783          	ld	a5,0(a0)
    80005fa8:	0087b783          	ld	a5,8(a5)
    80005fac:	000780e7          	jalr	a5
    delete cppDoneSem;
    80005fb0:	00006517          	auipc	a0,0x6
    80005fb4:	de853503          	ld	a0,-536(a0) # 8000bd98 <_ZL10cppDoneSem>
    80005fb8:	00050863          	beqz	a0,80005fc8 <_Z8modCplusv+0x160>
    80005fbc:	00053783          	ld	a5,0(a0)
    80005fc0:	0087b783          	ld	a5,8(a5)
    80005fc4:	000780e7          	jalr	a5

    printString("Max threads C++ API test finished\n");
    80005fc8:	00003517          	auipc	a0,0x3
    80005fcc:	63050513          	addi	a0,a0,1584 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80005fd0:	fffff097          	auipc	ra,0xfffff
    80005fd4:	508080e7          	jalr	1288(ra) # 800054d8 <_Z11printStringPKc>
    80005fd8:	0b813083          	ld	ra,184(sp)
    80005fdc:	0b013403          	ld	s0,176(sp)
    80005fe0:	0a813483          	ld	s1,168(sp)
    80005fe4:	0a013903          	ld	s2,160(sp)
    80005fe8:	0c010113          	addi	sp,sp,192
    80005fec:	00008067          	ret
    80005ff0:	00050913          	mv	s2,a0
    cppPrintMutex = new Semaphore(1);
    80005ff4:	00048513          	mv	a0,s1
    80005ff8:	ffffc097          	auipc	ra,0xffffc
    80005ffc:	704080e7          	jalr	1796(ra) # 800026fc <_ZdlPv>
    80006000:	00090513          	mv	a0,s2
    80006004:	00007097          	auipc	ra,0x7
    80006008:	e74080e7          	jalr	-396(ra) # 8000ce78 <_Unwind_Resume>
    8000600c:	00050913          	mv	s2,a0
    cppDoneSem = new Semaphore(0);
    80006010:	00048513          	mv	a0,s1
    80006014:	ffffc097          	auipc	ra,0xffffc
    80006018:	6e8080e7          	jalr	1768(ra) # 800026fc <_ZdlPv>
    8000601c:	00090513          	mv	a0,s2
    80006020:	00007097          	auipc	ra,0x7
    80006024:	e58080e7          	jalr	-424(ra) # 8000ce78 <_Unwind_Resume>
    80006028:	00050913          	mv	s2,a0
        threads[i] = new MaxThreadWorker();
    8000602c:	00048513          	mv	a0,s1
    80006030:	ffffc097          	auipc	ra,0xffffc
    80006034:	6cc080e7          	jalr	1740(ra) # 800026fc <_ZdlPv>
    80006038:	00090513          	mv	a0,s2
    8000603c:	00007097          	auipc	ra,0x7
    80006040:	e3c080e7          	jalr	-452(ra) # 8000ce78 <_Unwind_Resume>

0000000080006044 <_ZN15MaxThreadWorker3runEv>:
    void run() override {
    80006044:	fd010113          	addi	sp,sp,-48
    80006048:	02113423          	sd	ra,40(sp)
    8000604c:	02813023          	sd	s0,32(sp)
    80006050:	00913c23          	sd	s1,24(sp)
    80006054:	01213823          	sd	s2,16(sp)
    80006058:	01313423          	sd	s3,8(sp)
    8000605c:	03010413          	addi	s0,sp,48
        int id = getThreadId();
    80006060:	ffffd097          	auipc	ra,0xffffd
    80006064:	9f8080e7          	jalr	-1544(ra) # 80002a58 <_ZN6Thread11getThreadIdEv>
    80006068:	00050993          	mv	s3,a0
        for (int i = 0; i < 5; i++) {
    8000606c:	00000493          	li	s1,0
    80006070:	00400793          	li	a5,4
    80006074:	0897c663          	blt	a5,s1,80006100 <_ZN15MaxThreadWorker3runEv+0xbc>
            cppPrintMutex->wait();
    80006078:	00006917          	auipc	s2,0x6
    8000607c:	d1890913          	addi	s2,s2,-744 # 8000bd90 <_ZL13cppPrintMutex>
    80006080:	00093503          	ld	a0,0(s2)
    80006084:	ffffd097          	auipc	ra,0xffffd
    80006088:	a60080e7          	jalr	-1440(ra) # 80002ae4 <_ZN9Semaphore4waitEv>
            printString("Thread id=");
    8000608c:	00003517          	auipc	a0,0x3
    80006090:	52450513          	addi	a0,a0,1316 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80006094:	fffff097          	auipc	ra,0xfffff
    80006098:	444080e7          	jalr	1092(ra) # 800054d8 <_Z11printStringPKc>
            printInt(id);
    8000609c:	00000613          	li	a2,0
    800060a0:	00a00593          	li	a1,10
    800060a4:	00098513          	mv	a0,s3
    800060a8:	fffff097          	auipc	ra,0xfffff
    800060ac:	5e0080e7          	jalr	1504(ra) # 80005688 <_Z8printIntiii>
            printString(": Hello! i=");
    800060b0:	00003517          	auipc	a0,0x3
    800060b4:	51050513          	addi	a0,a0,1296 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800060b8:	fffff097          	auipc	ra,0xfffff
    800060bc:	420080e7          	jalr	1056(ra) # 800054d8 <_Z11printStringPKc>
            printInt(i);
    800060c0:	00000613          	li	a2,0
    800060c4:	00a00593          	li	a1,10
    800060c8:	00048513          	mv	a0,s1
    800060cc:	fffff097          	auipc	ra,0xfffff
    800060d0:	5bc080e7          	jalr	1468(ra) # 80005688 <_Z8printIntiii>
            printString("\n");
    800060d4:	00003517          	auipc	a0,0x3
    800060d8:	1e450513          	addi	a0,a0,484 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800060dc:	fffff097          	auipc	ra,0xfffff
    800060e0:	3fc080e7          	jalr	1020(ra) # 800054d8 <_Z11printStringPKc>
            cppPrintMutex->signal();
    800060e4:	00093503          	ld	a0,0(s2)
    800060e8:	ffffd097          	auipc	ra,0xffffd
    800060ec:	a28080e7          	jalr	-1496(ra) # 80002b10 <_ZN9Semaphore6signalEv>
            Thread::dispatch();
    800060f0:	ffffd097          	auipc	ra,0xffffd
    800060f4:	918080e7          	jalr	-1768(ra) # 80002a08 <_ZN6Thread8dispatchEv>
        for (int i = 0; i < 5; i++) {
    800060f8:	0014849b          	addiw	s1,s1,1
    800060fc:	f75ff06f          	j	80006070 <_ZN15MaxThreadWorker3runEv+0x2c>
        cppDoneSem->signal();
    80006100:	00006517          	auipc	a0,0x6
    80006104:	c9853503          	ld	a0,-872(a0) # 8000bd98 <_ZL10cppDoneSem>
    80006108:	ffffd097          	auipc	ra,0xffffd
    8000610c:	a08080e7          	jalr	-1528(ra) # 80002b10 <_ZN9Semaphore6signalEv>
    }
    80006110:	02813083          	ld	ra,40(sp)
    80006114:	02013403          	ld	s0,32(sp)
    80006118:	01813483          	ld	s1,24(sp)
    8000611c:	01013903          	ld	s2,16(sp)
    80006120:	00813983          	ld	s3,8(sp)
    80006124:	03010113          	addi	sp,sp,48
    80006128:	00008067          	ret

000000008000612c <_ZN15MaxThreadWorkerD1Ev>:
class MaxThreadWorker : public Thread {
    8000612c:	ff010113          	addi	sp,sp,-16
    80006130:	00113423          	sd	ra,8(sp)
    80006134:	00813023          	sd	s0,0(sp)
    80006138:	01010413          	addi	s0,sp,16
    8000613c:	00006797          	auipc	a5,0x6
    80006140:	b1478793          	addi	a5,a5,-1260 # 8000bc50 <_ZTV15MaxThreadWorker+0x10>
    80006144:	00f53023          	sd	a5,0(a0)
    80006148:	ffffc097          	auipc	ra,0xffffc
    8000614c:	718080e7          	jalr	1816(ra) # 80002860 <_ZN6ThreadD1Ev>
    80006150:	00813083          	ld	ra,8(sp)
    80006154:	00013403          	ld	s0,0(sp)
    80006158:	01010113          	addi	sp,sp,16
    8000615c:	00008067          	ret

0000000080006160 <_ZN15MaxThreadWorkerD0Ev>:
    80006160:	fe010113          	addi	sp,sp,-32
    80006164:	00113c23          	sd	ra,24(sp)
    80006168:	00813823          	sd	s0,16(sp)
    8000616c:	00913423          	sd	s1,8(sp)
    80006170:	02010413          	addi	s0,sp,32
    80006174:	00050493          	mv	s1,a0
    80006178:	00006797          	auipc	a5,0x6
    8000617c:	ad878793          	addi	a5,a5,-1320 # 8000bc50 <_ZTV15MaxThreadWorker+0x10>
    80006180:	00f53023          	sd	a5,0(a0)
    80006184:	ffffc097          	auipc	ra,0xffffc
    80006188:	6dc080e7          	jalr	1756(ra) # 80002860 <_ZN6ThreadD1Ev>
    8000618c:	00048513          	mv	a0,s1
    80006190:	ffffc097          	auipc	ra,0xffffc
    80006194:	56c080e7          	jalr	1388(ra) # 800026fc <_ZdlPv>
    80006198:	01813083          	ld	ra,24(sp)
    8000619c:	01013403          	ld	s0,16(sp)
    800061a0:	00813483          	ld	s1,8(sp)
    800061a4:	02010113          	addi	sp,sp,32
    800061a8:	00008067          	ret

00000000800061ac <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800061ac:	fe010113          	addi	sp,sp,-32
    800061b0:	00113c23          	sd	ra,24(sp)
    800061b4:	00813823          	sd	s0,16(sp)
    800061b8:	00913423          	sd	s1,8(sp)
    800061bc:	01213023          	sd	s2,0(sp)
    800061c0:	02010413          	addi	s0,sp,32
    800061c4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800061c8:	00100793          	li	a5,1
    800061cc:	02a7f863          	bgeu	a5,a0,800061fc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800061d0:	00a00793          	li	a5,10
    800061d4:	02f577b3          	remu	a5,a0,a5
    800061d8:	02078e63          	beqz	a5,80006214 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800061dc:	fff48513          	addi	a0,s1,-1
    800061e0:	00000097          	auipc	ra,0x0
    800061e4:	fcc080e7          	jalr	-52(ra) # 800061ac <_ZL9fibonaccim>
    800061e8:	00050913          	mv	s2,a0
    800061ec:	ffe48513          	addi	a0,s1,-2
    800061f0:	00000097          	auipc	ra,0x0
    800061f4:	fbc080e7          	jalr	-68(ra) # 800061ac <_ZL9fibonaccim>
    800061f8:	00a90533          	add	a0,s2,a0
}
    800061fc:	01813083          	ld	ra,24(sp)
    80006200:	01013403          	ld	s0,16(sp)
    80006204:	00813483          	ld	s1,8(sp)
    80006208:	00013903          	ld	s2,0(sp)
    8000620c:	02010113          	addi	sp,sp,32
    80006210:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006214:	ffffb097          	auipc	ra,0xffffb
    80006218:	174080e7          	jalr	372(ra) # 80001388 <_Z15thread_dispatchv>
    8000621c:	fc1ff06f          	j	800061dc <_ZL9fibonaccim+0x30>

0000000080006220 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006220:	fe010113          	addi	sp,sp,-32
    80006224:	00113c23          	sd	ra,24(sp)
    80006228:	00813823          	sd	s0,16(sp)
    8000622c:	00913423          	sd	s1,8(sp)
    80006230:	01213023          	sd	s2,0(sp)
    80006234:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006238:	00a00493          	li	s1,10
    8000623c:	0400006f          	j	8000627c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006240:	00003517          	auipc	a0,0x3
    80006244:	29050513          	addi	a0,a0,656 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80006248:	fffff097          	auipc	ra,0xfffff
    8000624c:	290080e7          	jalr	656(ra) # 800054d8 <_Z11printStringPKc>
    80006250:	00000613          	li	a2,0
    80006254:	00a00593          	li	a1,10
    80006258:	00048513          	mv	a0,s1
    8000625c:	fffff097          	auipc	ra,0xfffff
    80006260:	42c080e7          	jalr	1068(ra) # 80005688 <_Z8printIntiii>
    80006264:	00003517          	auipc	a0,0x3
    80006268:	05450513          	addi	a0,a0,84 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000626c:	fffff097          	auipc	ra,0xfffff
    80006270:	26c080e7          	jalr	620(ra) # 800054d8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006274:	0014849b          	addiw	s1,s1,1
    80006278:	0ff4f493          	andi	s1,s1,255
    8000627c:	00c00793          	li	a5,12
    80006280:	fc97f0e3          	bgeu	a5,s1,80006240 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006284:	00003517          	auipc	a0,0x3
    80006288:	25450513          	addi	a0,a0,596 # 800094d8 <CONSOLE_STATUS+0x4c8>
    8000628c:	fffff097          	auipc	ra,0xfffff
    80006290:	24c080e7          	jalr	588(ra) # 800054d8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006294:	00500313          	li	t1,5
    thread_dispatch();
    80006298:	ffffb097          	auipc	ra,0xffffb
    8000629c:	0f0080e7          	jalr	240(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800062a0:	01000513          	li	a0,16
    800062a4:	00000097          	auipc	ra,0x0
    800062a8:	f08080e7          	jalr	-248(ra) # 800061ac <_ZL9fibonaccim>
    800062ac:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800062b0:	00003517          	auipc	a0,0x3
    800062b4:	23850513          	addi	a0,a0,568 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800062b8:	fffff097          	auipc	ra,0xfffff
    800062bc:	220080e7          	jalr	544(ra) # 800054d8 <_Z11printStringPKc>
    800062c0:	00000613          	li	a2,0
    800062c4:	00a00593          	li	a1,10
    800062c8:	0009051b          	sext.w	a0,s2
    800062cc:	fffff097          	auipc	ra,0xfffff
    800062d0:	3bc080e7          	jalr	956(ra) # 80005688 <_Z8printIntiii>
    800062d4:	00003517          	auipc	a0,0x3
    800062d8:	fe450513          	addi	a0,a0,-28 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800062dc:	fffff097          	auipc	ra,0xfffff
    800062e0:	1fc080e7          	jalr	508(ra) # 800054d8 <_Z11printStringPKc>
    800062e4:	0400006f          	j	80006324 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800062e8:	00003517          	auipc	a0,0x3
    800062ec:	1e850513          	addi	a0,a0,488 # 800094d0 <CONSOLE_STATUS+0x4c0>
    800062f0:	fffff097          	auipc	ra,0xfffff
    800062f4:	1e8080e7          	jalr	488(ra) # 800054d8 <_Z11printStringPKc>
    800062f8:	00000613          	li	a2,0
    800062fc:	00a00593          	li	a1,10
    80006300:	00048513          	mv	a0,s1
    80006304:	fffff097          	auipc	ra,0xfffff
    80006308:	384080e7          	jalr	900(ra) # 80005688 <_Z8printIntiii>
    8000630c:	00003517          	auipc	a0,0x3
    80006310:	fac50513          	addi	a0,a0,-84 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006314:	fffff097          	auipc	ra,0xfffff
    80006318:	1c4080e7          	jalr	452(ra) # 800054d8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000631c:	0014849b          	addiw	s1,s1,1
    80006320:	0ff4f493          	andi	s1,s1,255
    80006324:	00f00793          	li	a5,15
    80006328:	fc97f0e3          	bgeu	a5,s1,800062e8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000632c:	00003517          	auipc	a0,0x3
    80006330:	1cc50513          	addi	a0,a0,460 # 800094f8 <CONSOLE_STATUS+0x4e8>
    80006334:	fffff097          	auipc	ra,0xfffff
    80006338:	1a4080e7          	jalr	420(ra) # 800054d8 <_Z11printStringPKc>
    finishedD = true;
    8000633c:	00100793          	li	a5,1
    80006340:	00006717          	auipc	a4,0x6
    80006344:	a6f70023          	sb	a5,-1440(a4) # 8000bda0 <_ZL9finishedD>
    thread_dispatch();
    80006348:	ffffb097          	auipc	ra,0xffffb
    8000634c:	040080e7          	jalr	64(ra) # 80001388 <_Z15thread_dispatchv>
}
    80006350:	01813083          	ld	ra,24(sp)
    80006354:	01013403          	ld	s0,16(sp)
    80006358:	00813483          	ld	s1,8(sp)
    8000635c:	00013903          	ld	s2,0(sp)
    80006360:	02010113          	addi	sp,sp,32
    80006364:	00008067          	ret

0000000080006368 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006368:	fe010113          	addi	sp,sp,-32
    8000636c:	00113c23          	sd	ra,24(sp)
    80006370:	00813823          	sd	s0,16(sp)
    80006374:	00913423          	sd	s1,8(sp)
    80006378:	01213023          	sd	s2,0(sp)
    8000637c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006380:	00000493          	li	s1,0
    80006384:	0400006f          	j	800063c4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006388:	00003517          	auipc	a0,0x3
    8000638c:	11850513          	addi	a0,a0,280 # 800094a0 <CONSOLE_STATUS+0x490>
    80006390:	fffff097          	auipc	ra,0xfffff
    80006394:	148080e7          	jalr	328(ra) # 800054d8 <_Z11printStringPKc>
    80006398:	00000613          	li	a2,0
    8000639c:	00a00593          	li	a1,10
    800063a0:	00048513          	mv	a0,s1
    800063a4:	fffff097          	auipc	ra,0xfffff
    800063a8:	2e4080e7          	jalr	740(ra) # 80005688 <_Z8printIntiii>
    800063ac:	00003517          	auipc	a0,0x3
    800063b0:	f0c50513          	addi	a0,a0,-244 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800063b4:	fffff097          	auipc	ra,0xfffff
    800063b8:	124080e7          	jalr	292(ra) # 800054d8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800063bc:	0014849b          	addiw	s1,s1,1
    800063c0:	0ff4f493          	andi	s1,s1,255
    800063c4:	00200793          	li	a5,2
    800063c8:	fc97f0e3          	bgeu	a5,s1,80006388 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800063cc:	00003517          	auipc	a0,0x3
    800063d0:	0dc50513          	addi	a0,a0,220 # 800094a8 <CONSOLE_STATUS+0x498>
    800063d4:	fffff097          	auipc	ra,0xfffff
    800063d8:	104080e7          	jalr	260(ra) # 800054d8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800063dc:	00700313          	li	t1,7
    thread_dispatch();
    800063e0:	ffffb097          	auipc	ra,0xffffb
    800063e4:	fa8080e7          	jalr	-88(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800063e8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800063ec:	00003517          	auipc	a0,0x3
    800063f0:	0cc50513          	addi	a0,a0,204 # 800094b8 <CONSOLE_STATUS+0x4a8>
    800063f4:	fffff097          	auipc	ra,0xfffff
    800063f8:	0e4080e7          	jalr	228(ra) # 800054d8 <_Z11printStringPKc>
    800063fc:	00000613          	li	a2,0
    80006400:	00a00593          	li	a1,10
    80006404:	0009051b          	sext.w	a0,s2
    80006408:	fffff097          	auipc	ra,0xfffff
    8000640c:	280080e7          	jalr	640(ra) # 80005688 <_Z8printIntiii>
    80006410:	00003517          	auipc	a0,0x3
    80006414:	ea850513          	addi	a0,a0,-344 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006418:	fffff097          	auipc	ra,0xfffff
    8000641c:	0c0080e7          	jalr	192(ra) # 800054d8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006420:	00c00513          	li	a0,12
    80006424:	00000097          	auipc	ra,0x0
    80006428:	d88080e7          	jalr	-632(ra) # 800061ac <_ZL9fibonaccim>
    8000642c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006430:	00003517          	auipc	a0,0x3
    80006434:	09050513          	addi	a0,a0,144 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80006438:	fffff097          	auipc	ra,0xfffff
    8000643c:	0a0080e7          	jalr	160(ra) # 800054d8 <_Z11printStringPKc>
    80006440:	00000613          	li	a2,0
    80006444:	00a00593          	li	a1,10
    80006448:	0009051b          	sext.w	a0,s2
    8000644c:	fffff097          	auipc	ra,0xfffff
    80006450:	23c080e7          	jalr	572(ra) # 80005688 <_Z8printIntiii>
    80006454:	00003517          	auipc	a0,0x3
    80006458:	e6450513          	addi	a0,a0,-412 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000645c:	fffff097          	auipc	ra,0xfffff
    80006460:	07c080e7          	jalr	124(ra) # 800054d8 <_Z11printStringPKc>
    80006464:	0400006f          	j	800064a4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006468:	00003517          	auipc	a0,0x3
    8000646c:	03850513          	addi	a0,a0,56 # 800094a0 <CONSOLE_STATUS+0x490>
    80006470:	fffff097          	auipc	ra,0xfffff
    80006474:	068080e7          	jalr	104(ra) # 800054d8 <_Z11printStringPKc>
    80006478:	00000613          	li	a2,0
    8000647c:	00a00593          	li	a1,10
    80006480:	00048513          	mv	a0,s1
    80006484:	fffff097          	auipc	ra,0xfffff
    80006488:	204080e7          	jalr	516(ra) # 80005688 <_Z8printIntiii>
    8000648c:	00003517          	auipc	a0,0x3
    80006490:	e2c50513          	addi	a0,a0,-468 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006494:	fffff097          	auipc	ra,0xfffff
    80006498:	044080e7          	jalr	68(ra) # 800054d8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000649c:	0014849b          	addiw	s1,s1,1
    800064a0:	0ff4f493          	andi	s1,s1,255
    800064a4:	00500793          	li	a5,5
    800064a8:	fc97f0e3          	bgeu	a5,s1,80006468 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800064ac:	00003517          	auipc	a0,0x3
    800064b0:	fcc50513          	addi	a0,a0,-52 # 80009478 <CONSOLE_STATUS+0x468>
    800064b4:	fffff097          	auipc	ra,0xfffff
    800064b8:	024080e7          	jalr	36(ra) # 800054d8 <_Z11printStringPKc>
    finishedC = true;
    800064bc:	00100793          	li	a5,1
    800064c0:	00006717          	auipc	a4,0x6
    800064c4:	8ef700a3          	sb	a5,-1823(a4) # 8000bda1 <_ZL9finishedC>
    thread_dispatch();
    800064c8:	ffffb097          	auipc	ra,0xffffb
    800064cc:	ec0080e7          	jalr	-320(ra) # 80001388 <_Z15thread_dispatchv>
}
    800064d0:	01813083          	ld	ra,24(sp)
    800064d4:	01013403          	ld	s0,16(sp)
    800064d8:	00813483          	ld	s1,8(sp)
    800064dc:	00013903          	ld	s2,0(sp)
    800064e0:	02010113          	addi	sp,sp,32
    800064e4:	00008067          	ret

00000000800064e8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800064e8:	fe010113          	addi	sp,sp,-32
    800064ec:	00113c23          	sd	ra,24(sp)
    800064f0:	00813823          	sd	s0,16(sp)
    800064f4:	00913423          	sd	s1,8(sp)
    800064f8:	01213023          	sd	s2,0(sp)
    800064fc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006500:	00000913          	li	s2,0
    80006504:	0400006f          	j	80006544 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006508:	ffffb097          	auipc	ra,0xffffb
    8000650c:	e80080e7          	jalr	-384(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006510:	00148493          	addi	s1,s1,1
    80006514:	000027b7          	lui	a5,0x2
    80006518:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000651c:	0097ee63          	bltu	a5,s1,80006538 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006520:	00000713          	li	a4,0
    80006524:	000077b7          	lui	a5,0x7
    80006528:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000652c:	fce7eee3          	bltu	a5,a4,80006508 <_ZL11workerBodyBPv+0x20>
    80006530:	00170713          	addi	a4,a4,1
    80006534:	ff1ff06f          	j	80006524 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006538:	00a00793          	li	a5,10
    8000653c:	04f90663          	beq	s2,a5,80006588 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006540:	00190913          	addi	s2,s2,1
    80006544:	00f00793          	li	a5,15
    80006548:	0527e463          	bltu	a5,s2,80006590 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    8000654c:	00003517          	auipc	a0,0x3
    80006550:	f3c50513          	addi	a0,a0,-196 # 80009488 <CONSOLE_STATUS+0x478>
    80006554:	fffff097          	auipc	ra,0xfffff
    80006558:	f84080e7          	jalr	-124(ra) # 800054d8 <_Z11printStringPKc>
    8000655c:	00000613          	li	a2,0
    80006560:	00a00593          	li	a1,10
    80006564:	0009051b          	sext.w	a0,s2
    80006568:	fffff097          	auipc	ra,0xfffff
    8000656c:	120080e7          	jalr	288(ra) # 80005688 <_Z8printIntiii>
    80006570:	00003517          	auipc	a0,0x3
    80006574:	d4850513          	addi	a0,a0,-696 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006578:	fffff097          	auipc	ra,0xfffff
    8000657c:	f60080e7          	jalr	-160(ra) # 800054d8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006580:	00000493          	li	s1,0
    80006584:	f91ff06f          	j	80006514 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006588:	14102ff3          	csrr	t6,sepc
    8000658c:	fb5ff06f          	j	80006540 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006590:	00003517          	auipc	a0,0x3
    80006594:	f0050513          	addi	a0,a0,-256 # 80009490 <CONSOLE_STATUS+0x480>
    80006598:	fffff097          	auipc	ra,0xfffff
    8000659c:	f40080e7          	jalr	-192(ra) # 800054d8 <_Z11printStringPKc>
    finishedB = true;
    800065a0:	00100793          	li	a5,1
    800065a4:	00005717          	auipc	a4,0x5
    800065a8:	7ef70f23          	sb	a5,2046(a4) # 8000bda2 <_ZL9finishedB>
    thread_dispatch();
    800065ac:	ffffb097          	auipc	ra,0xffffb
    800065b0:	ddc080e7          	jalr	-548(ra) # 80001388 <_Z15thread_dispatchv>
}
    800065b4:	01813083          	ld	ra,24(sp)
    800065b8:	01013403          	ld	s0,16(sp)
    800065bc:	00813483          	ld	s1,8(sp)
    800065c0:	00013903          	ld	s2,0(sp)
    800065c4:	02010113          	addi	sp,sp,32
    800065c8:	00008067          	ret

00000000800065cc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800065cc:	fe010113          	addi	sp,sp,-32
    800065d0:	00113c23          	sd	ra,24(sp)
    800065d4:	00813823          	sd	s0,16(sp)
    800065d8:	00913423          	sd	s1,8(sp)
    800065dc:	01213023          	sd	s2,0(sp)
    800065e0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800065e4:	00000913          	li	s2,0
    800065e8:	0380006f          	j	80006620 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800065ec:	ffffb097          	auipc	ra,0xffffb
    800065f0:	d9c080e7          	jalr	-612(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800065f4:	00148493          	addi	s1,s1,1
    800065f8:	000027b7          	lui	a5,0x2
    800065fc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006600:	0097ee63          	bltu	a5,s1,8000661c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006604:	00000713          	li	a4,0
    80006608:	000077b7          	lui	a5,0x7
    8000660c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006610:	fce7eee3          	bltu	a5,a4,800065ec <_ZL11workerBodyAPv+0x20>
    80006614:	00170713          	addi	a4,a4,1
    80006618:	ff1ff06f          	j	80006608 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000661c:	00190913          	addi	s2,s2,1
    80006620:	00900793          	li	a5,9
    80006624:	0527e063          	bltu	a5,s2,80006664 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006628:	00003517          	auipc	a0,0x3
    8000662c:	e4850513          	addi	a0,a0,-440 # 80009470 <CONSOLE_STATUS+0x460>
    80006630:	fffff097          	auipc	ra,0xfffff
    80006634:	ea8080e7          	jalr	-344(ra) # 800054d8 <_Z11printStringPKc>
    80006638:	00000613          	li	a2,0
    8000663c:	00a00593          	li	a1,10
    80006640:	0009051b          	sext.w	a0,s2
    80006644:	fffff097          	auipc	ra,0xfffff
    80006648:	044080e7          	jalr	68(ra) # 80005688 <_Z8printIntiii>
    8000664c:	00003517          	auipc	a0,0x3
    80006650:	c6c50513          	addi	a0,a0,-916 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006654:	fffff097          	auipc	ra,0xfffff
    80006658:	e84080e7          	jalr	-380(ra) # 800054d8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000665c:	00000493          	li	s1,0
    80006660:	f99ff06f          	j	800065f8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006664:	00003517          	auipc	a0,0x3
    80006668:	e1450513          	addi	a0,a0,-492 # 80009478 <CONSOLE_STATUS+0x468>
    8000666c:	fffff097          	auipc	ra,0xfffff
    80006670:	e6c080e7          	jalr	-404(ra) # 800054d8 <_Z11printStringPKc>
    finishedA = true;
    80006674:	00100793          	li	a5,1
    80006678:	00005717          	auipc	a4,0x5
    8000667c:	72f705a3          	sb	a5,1835(a4) # 8000bda3 <_ZL9finishedA>
}
    80006680:	01813083          	ld	ra,24(sp)
    80006684:	01013403          	ld	s0,16(sp)
    80006688:	00813483          	ld	s1,8(sp)
    8000668c:	00013903          	ld	s2,0(sp)
    80006690:	02010113          	addi	sp,sp,32
    80006694:	00008067          	ret

0000000080006698 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006698:	fd010113          	addi	sp,sp,-48
    8000669c:	02113423          	sd	ra,40(sp)
    800066a0:	02813023          	sd	s0,32(sp)
    800066a4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800066a8:	00000613          	li	a2,0
    800066ac:	00000597          	auipc	a1,0x0
    800066b0:	f2058593          	addi	a1,a1,-224 # 800065cc <_ZL11workerBodyAPv>
    800066b4:	fd040513          	addi	a0,s0,-48
    800066b8:	ffffb097          	auipc	ra,0xffffb
    800066bc:	bcc080e7          	jalr	-1076(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800066c0:	00003517          	auipc	a0,0x3
    800066c4:	e4850513          	addi	a0,a0,-440 # 80009508 <CONSOLE_STATUS+0x4f8>
    800066c8:	fffff097          	auipc	ra,0xfffff
    800066cc:	e10080e7          	jalr	-496(ra) # 800054d8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800066d0:	00000613          	li	a2,0
    800066d4:	00000597          	auipc	a1,0x0
    800066d8:	e1458593          	addi	a1,a1,-492 # 800064e8 <_ZL11workerBodyBPv>
    800066dc:	fd840513          	addi	a0,s0,-40
    800066e0:	ffffb097          	auipc	ra,0xffffb
    800066e4:	ba4080e7          	jalr	-1116(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800066e8:	00003517          	auipc	a0,0x3
    800066ec:	e3850513          	addi	a0,a0,-456 # 80009520 <CONSOLE_STATUS+0x510>
    800066f0:	fffff097          	auipc	ra,0xfffff
    800066f4:	de8080e7          	jalr	-536(ra) # 800054d8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800066f8:	00000613          	li	a2,0
    800066fc:	00000597          	auipc	a1,0x0
    80006700:	c6c58593          	addi	a1,a1,-916 # 80006368 <_ZL11workerBodyCPv>
    80006704:	fe040513          	addi	a0,s0,-32
    80006708:	ffffb097          	auipc	ra,0xffffb
    8000670c:	b7c080e7          	jalr	-1156(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80006710:	00003517          	auipc	a0,0x3
    80006714:	e2850513          	addi	a0,a0,-472 # 80009538 <CONSOLE_STATUS+0x528>
    80006718:	fffff097          	auipc	ra,0xfffff
    8000671c:	dc0080e7          	jalr	-576(ra) # 800054d8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006720:	00000613          	li	a2,0
    80006724:	00000597          	auipc	a1,0x0
    80006728:	afc58593          	addi	a1,a1,-1284 # 80006220 <_ZL11workerBodyDPv>
    8000672c:	fe840513          	addi	a0,s0,-24
    80006730:	ffffb097          	auipc	ra,0xffffb
    80006734:	b54080e7          	jalr	-1196(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80006738:	00003517          	auipc	a0,0x3
    8000673c:	e1850513          	addi	a0,a0,-488 # 80009550 <CONSOLE_STATUS+0x540>
    80006740:	fffff097          	auipc	ra,0xfffff
    80006744:	d98080e7          	jalr	-616(ra) # 800054d8 <_Z11printStringPKc>
    80006748:	00c0006f          	j	80006754 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000674c:	ffffb097          	auipc	ra,0xffffb
    80006750:	c3c080e7          	jalr	-964(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006754:	00005797          	auipc	a5,0x5
    80006758:	64f7c783          	lbu	a5,1615(a5) # 8000bda3 <_ZL9finishedA>
    8000675c:	fe0788e3          	beqz	a5,8000674c <_Z16System_Mode_testv+0xb4>
    80006760:	00005797          	auipc	a5,0x5
    80006764:	6427c783          	lbu	a5,1602(a5) # 8000bda2 <_ZL9finishedB>
    80006768:	fe0782e3          	beqz	a5,8000674c <_Z16System_Mode_testv+0xb4>
    8000676c:	00005797          	auipc	a5,0x5
    80006770:	6357c783          	lbu	a5,1589(a5) # 8000bda1 <_ZL9finishedC>
    80006774:	fc078ce3          	beqz	a5,8000674c <_Z16System_Mode_testv+0xb4>
    80006778:	00005797          	auipc	a5,0x5
    8000677c:	6287c783          	lbu	a5,1576(a5) # 8000bda0 <_ZL9finishedD>
    80006780:	fc0786e3          	beqz	a5,8000674c <_Z16System_Mode_testv+0xb4>
    }

}
    80006784:	02813083          	ld	ra,40(sp)
    80006788:	02013403          	ld	s0,32(sp)
    8000678c:	03010113          	addi	sp,sp,48
    80006790:	00008067          	ret

0000000080006794 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006794:	fe010113          	addi	sp,sp,-32
    80006798:	00113c23          	sd	ra,24(sp)
    8000679c:	00813823          	sd	s0,16(sp)
    800067a0:	00913423          	sd	s1,8(sp)
    800067a4:	01213023          	sd	s2,0(sp)
    800067a8:	02010413          	addi	s0,sp,32
    800067ac:	00050493          	mv	s1,a0
    800067b0:	00058913          	mv	s2,a1
    800067b4:	0015879b          	addiw	a5,a1,1
    800067b8:	0007851b          	sext.w	a0,a5
    800067bc:	00f4a023          	sw	a5,0(s1)
    800067c0:	0004a823          	sw	zero,16(s1)
    800067c4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800067c8:	00251513          	slli	a0,a0,0x2
    800067cc:	ffffb097          	auipc	ra,0xffffb
    800067d0:	a2c080e7          	jalr	-1492(ra) # 800011f8 <_Z9mem_allocm>
    800067d4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800067d8:	00000593          	li	a1,0
    800067dc:	02048513          	addi	a0,s1,32
    800067e0:	ffffb097          	auipc	ra,0xffffb
    800067e4:	be4080e7          	jalr	-1052(ra) # 800013c4 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800067e8:	00090593          	mv	a1,s2
    800067ec:	01848513          	addi	a0,s1,24
    800067f0:	ffffb097          	auipc	ra,0xffffb
    800067f4:	bd4080e7          	jalr	-1068(ra) # 800013c4 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800067f8:	00100593          	li	a1,1
    800067fc:	02848513          	addi	a0,s1,40
    80006800:	ffffb097          	auipc	ra,0xffffb
    80006804:	bc4080e7          	jalr	-1084(ra) # 800013c4 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006808:	00100593          	li	a1,1
    8000680c:	03048513          	addi	a0,s1,48
    80006810:	ffffb097          	auipc	ra,0xffffb
    80006814:	bb4080e7          	jalr	-1100(ra) # 800013c4 <_Z8sem_openPP4_semj>
}
    80006818:	01813083          	ld	ra,24(sp)
    8000681c:	01013403          	ld	s0,16(sp)
    80006820:	00813483          	ld	s1,8(sp)
    80006824:	00013903          	ld	s2,0(sp)
    80006828:	02010113          	addi	sp,sp,32
    8000682c:	00008067          	ret

0000000080006830 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006830:	fe010113          	addi	sp,sp,-32
    80006834:	00113c23          	sd	ra,24(sp)
    80006838:	00813823          	sd	s0,16(sp)
    8000683c:	00913423          	sd	s1,8(sp)
    80006840:	01213023          	sd	s2,0(sp)
    80006844:	02010413          	addi	s0,sp,32
    80006848:	00050493          	mv	s1,a0
    8000684c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006850:	01853503          	ld	a0,24(a0)
    80006854:	ffffb097          	auipc	ra,0xffffb
    80006858:	c70080e7          	jalr	-912(ra) # 800014c4 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    8000685c:	0304b503          	ld	a0,48(s1)
    80006860:	ffffb097          	auipc	ra,0xffffb
    80006864:	c64080e7          	jalr	-924(ra) # 800014c4 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006868:	0084b783          	ld	a5,8(s1)
    8000686c:	0144a703          	lw	a4,20(s1)
    80006870:	00271713          	slli	a4,a4,0x2
    80006874:	00e787b3          	add	a5,a5,a4
    80006878:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000687c:	0144a783          	lw	a5,20(s1)
    80006880:	0017879b          	addiw	a5,a5,1
    80006884:	0004a703          	lw	a4,0(s1)
    80006888:	02e7e7bb          	remw	a5,a5,a4
    8000688c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006890:	0304b503          	ld	a0,48(s1)
    80006894:	ffffb097          	auipc	ra,0xffffb
    80006898:	c70080e7          	jalr	-912(ra) # 80001504 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    8000689c:	0204b503          	ld	a0,32(s1)
    800068a0:	ffffb097          	auipc	ra,0xffffb
    800068a4:	c64080e7          	jalr	-924(ra) # 80001504 <_Z10sem_signalP4_sem>

}
    800068a8:	01813083          	ld	ra,24(sp)
    800068ac:	01013403          	ld	s0,16(sp)
    800068b0:	00813483          	ld	s1,8(sp)
    800068b4:	00013903          	ld	s2,0(sp)
    800068b8:	02010113          	addi	sp,sp,32
    800068bc:	00008067          	ret

00000000800068c0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800068c0:	fe010113          	addi	sp,sp,-32
    800068c4:	00113c23          	sd	ra,24(sp)
    800068c8:	00813823          	sd	s0,16(sp)
    800068cc:	00913423          	sd	s1,8(sp)
    800068d0:	01213023          	sd	s2,0(sp)
    800068d4:	02010413          	addi	s0,sp,32
    800068d8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800068dc:	02053503          	ld	a0,32(a0)
    800068e0:	ffffb097          	auipc	ra,0xffffb
    800068e4:	be4080e7          	jalr	-1052(ra) # 800014c4 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800068e8:	0284b503          	ld	a0,40(s1)
    800068ec:	ffffb097          	auipc	ra,0xffffb
    800068f0:	bd8080e7          	jalr	-1064(ra) # 800014c4 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    800068f4:	0084b703          	ld	a4,8(s1)
    800068f8:	0104a783          	lw	a5,16(s1)
    800068fc:	00279693          	slli	a3,a5,0x2
    80006900:	00d70733          	add	a4,a4,a3
    80006904:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006908:	0017879b          	addiw	a5,a5,1
    8000690c:	0004a703          	lw	a4,0(s1)
    80006910:	02e7e7bb          	remw	a5,a5,a4
    80006914:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006918:	0284b503          	ld	a0,40(s1)
    8000691c:	ffffb097          	auipc	ra,0xffffb
    80006920:	be8080e7          	jalr	-1048(ra) # 80001504 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006924:	0184b503          	ld	a0,24(s1)
    80006928:	ffffb097          	auipc	ra,0xffffb
    8000692c:	bdc080e7          	jalr	-1060(ra) # 80001504 <_Z10sem_signalP4_sem>

    return ret;
}
    80006930:	00090513          	mv	a0,s2
    80006934:	01813083          	ld	ra,24(sp)
    80006938:	01013403          	ld	s0,16(sp)
    8000693c:	00813483          	ld	s1,8(sp)
    80006940:	00013903          	ld	s2,0(sp)
    80006944:	02010113          	addi	sp,sp,32
    80006948:	00008067          	ret

000000008000694c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000694c:	fe010113          	addi	sp,sp,-32
    80006950:	00113c23          	sd	ra,24(sp)
    80006954:	00813823          	sd	s0,16(sp)
    80006958:	00913423          	sd	s1,8(sp)
    8000695c:	01213023          	sd	s2,0(sp)
    80006960:	02010413          	addi	s0,sp,32
    80006964:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006968:	02853503          	ld	a0,40(a0)
    8000696c:	ffffb097          	auipc	ra,0xffffb
    80006970:	b58080e7          	jalr	-1192(ra) # 800014c4 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006974:	0304b503          	ld	a0,48(s1)
    80006978:	ffffb097          	auipc	ra,0xffffb
    8000697c:	b4c080e7          	jalr	-1204(ra) # 800014c4 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006980:	0144a783          	lw	a5,20(s1)
    80006984:	0104a903          	lw	s2,16(s1)
    80006988:	0327ce63          	blt	a5,s2,800069c4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000698c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006990:	0304b503          	ld	a0,48(s1)
    80006994:	ffffb097          	auipc	ra,0xffffb
    80006998:	b70080e7          	jalr	-1168(ra) # 80001504 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    8000699c:	0284b503          	ld	a0,40(s1)
    800069a0:	ffffb097          	auipc	ra,0xffffb
    800069a4:	b64080e7          	jalr	-1180(ra) # 80001504 <_Z10sem_signalP4_sem>

    return ret;
}
    800069a8:	00090513          	mv	a0,s2
    800069ac:	01813083          	ld	ra,24(sp)
    800069b0:	01013403          	ld	s0,16(sp)
    800069b4:	00813483          	ld	s1,8(sp)
    800069b8:	00013903          	ld	s2,0(sp)
    800069bc:	02010113          	addi	sp,sp,32
    800069c0:	00008067          	ret
        ret = cap - head + tail;
    800069c4:	0004a703          	lw	a4,0(s1)
    800069c8:	4127093b          	subw	s2,a4,s2
    800069cc:	00f9093b          	addw	s2,s2,a5
    800069d0:	fc1ff06f          	j	80006990 <_ZN6Buffer6getCntEv+0x44>

00000000800069d4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800069d4:	fe010113          	addi	sp,sp,-32
    800069d8:	00113c23          	sd	ra,24(sp)
    800069dc:	00813823          	sd	s0,16(sp)
    800069e0:	00913423          	sd	s1,8(sp)
    800069e4:	02010413          	addi	s0,sp,32
    800069e8:	00050493          	mv	s1,a0
    putc('\n');
    800069ec:	00a00513          	li	a0,10
    800069f0:	ffffb097          	auipc	ra,0xffffb
    800069f4:	c5c080e7          	jalr	-932(ra) # 8000164c <_Z4putcc>
    printString("Buffer deleted!\n");
    800069f8:	00003517          	auipc	a0,0x3
    800069fc:	b7050513          	addi	a0,a0,-1168 # 80009568 <CONSOLE_STATUS+0x558>
    80006a00:	fffff097          	auipc	ra,0xfffff
    80006a04:	ad8080e7          	jalr	-1320(ra) # 800054d8 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006a08:	00048513          	mv	a0,s1
    80006a0c:	00000097          	auipc	ra,0x0
    80006a10:	f40080e7          	jalr	-192(ra) # 8000694c <_ZN6Buffer6getCntEv>
    80006a14:	02a05c63          	blez	a0,80006a4c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006a18:	0084b783          	ld	a5,8(s1)
    80006a1c:	0104a703          	lw	a4,16(s1)
    80006a20:	00271713          	slli	a4,a4,0x2
    80006a24:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006a28:	0007c503          	lbu	a0,0(a5)
    80006a2c:	ffffb097          	auipc	ra,0xffffb
    80006a30:	c20080e7          	jalr	-992(ra) # 8000164c <_Z4putcc>
        head = (head + 1) % cap;
    80006a34:	0104a783          	lw	a5,16(s1)
    80006a38:	0017879b          	addiw	a5,a5,1
    80006a3c:	0004a703          	lw	a4,0(s1)
    80006a40:	02e7e7bb          	remw	a5,a5,a4
    80006a44:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006a48:	fc1ff06f          	j	80006a08 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006a4c:	02100513          	li	a0,33
    80006a50:	ffffb097          	auipc	ra,0xffffb
    80006a54:	bfc080e7          	jalr	-1028(ra) # 8000164c <_Z4putcc>
    putc('\n');
    80006a58:	00a00513          	li	a0,10
    80006a5c:	ffffb097          	auipc	ra,0xffffb
    80006a60:	bf0080e7          	jalr	-1040(ra) # 8000164c <_Z4putcc>
    mem_free(buffer);
    80006a64:	0084b503          	ld	a0,8(s1)
    80006a68:	ffffa097          	auipc	ra,0xffffa
    80006a6c:	7dc080e7          	jalr	2012(ra) # 80001244 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006a70:	0204b503          	ld	a0,32(s1)
    80006a74:	ffffb097          	auipc	ra,0xffffb
    80006a78:	a10080e7          	jalr	-1520(ra) # 80001484 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006a7c:	0184b503          	ld	a0,24(s1)
    80006a80:	ffffb097          	auipc	ra,0xffffb
    80006a84:	a04080e7          	jalr	-1532(ra) # 80001484 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006a88:	0304b503          	ld	a0,48(s1)
    80006a8c:	ffffb097          	auipc	ra,0xffffb
    80006a90:	9f8080e7          	jalr	-1544(ra) # 80001484 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006a94:	0284b503          	ld	a0,40(s1)
    80006a98:	ffffb097          	auipc	ra,0xffffb
    80006a9c:	9ec080e7          	jalr	-1556(ra) # 80001484 <_Z9sem_closeP4_sem>
}
    80006aa0:	01813083          	ld	ra,24(sp)
    80006aa4:	01013403          	ld	s0,16(sp)
    80006aa8:	00813483          	ld	s1,8(sp)
    80006aac:	02010113          	addi	sp,sp,32
    80006ab0:	00008067          	ret

0000000080006ab4 <start>:
    80006ab4:	ff010113          	addi	sp,sp,-16
    80006ab8:	00813423          	sd	s0,8(sp)
    80006abc:	01010413          	addi	s0,sp,16
    80006ac0:	300027f3          	csrr	a5,mstatus
    80006ac4:	ffffe737          	lui	a4,0xffffe
    80006ac8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff17ef>
    80006acc:	00e7f7b3          	and	a5,a5,a4
    80006ad0:	00001737          	lui	a4,0x1
    80006ad4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006ad8:	00e7e7b3          	or	a5,a5,a4
    80006adc:	30079073          	csrw	mstatus,a5
    80006ae0:	00000797          	auipc	a5,0x0
    80006ae4:	16078793          	addi	a5,a5,352 # 80006c40 <system_main>
    80006ae8:	34179073          	csrw	mepc,a5
    80006aec:	00000793          	li	a5,0
    80006af0:	18079073          	csrw	satp,a5
    80006af4:	000107b7          	lui	a5,0x10
    80006af8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006afc:	30279073          	csrw	medeleg,a5
    80006b00:	30379073          	csrw	mideleg,a5
    80006b04:	104027f3          	csrr	a5,sie
    80006b08:	2227e793          	ori	a5,a5,546
    80006b0c:	10479073          	csrw	sie,a5
    80006b10:	fff00793          	li	a5,-1
    80006b14:	00a7d793          	srli	a5,a5,0xa
    80006b18:	3b079073          	csrw	pmpaddr0,a5
    80006b1c:	00f00793          	li	a5,15
    80006b20:	3a079073          	csrw	pmpcfg0,a5
    80006b24:	f14027f3          	csrr	a5,mhartid
    80006b28:	0200c737          	lui	a4,0x200c
    80006b2c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006b30:	0007869b          	sext.w	a3,a5
    80006b34:	00269713          	slli	a4,a3,0x2
    80006b38:	000f4637          	lui	a2,0xf4
    80006b3c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006b40:	00d70733          	add	a4,a4,a3
    80006b44:	0037979b          	slliw	a5,a5,0x3
    80006b48:	020046b7          	lui	a3,0x2004
    80006b4c:	00d787b3          	add	a5,a5,a3
    80006b50:	00c585b3          	add	a1,a1,a2
    80006b54:	00371693          	slli	a3,a4,0x3
    80006b58:	00005717          	auipc	a4,0x5
    80006b5c:	25870713          	addi	a4,a4,600 # 8000bdb0 <timer_scratch>
    80006b60:	00b7b023          	sd	a1,0(a5)
    80006b64:	00d70733          	add	a4,a4,a3
    80006b68:	00f73c23          	sd	a5,24(a4)
    80006b6c:	02c73023          	sd	a2,32(a4)
    80006b70:	34071073          	csrw	mscratch,a4
    80006b74:	00000797          	auipc	a5,0x0
    80006b78:	6ec78793          	addi	a5,a5,1772 # 80007260 <timervec>
    80006b7c:	30579073          	csrw	mtvec,a5
    80006b80:	300027f3          	csrr	a5,mstatus
    80006b84:	0087e793          	ori	a5,a5,8
    80006b88:	30079073          	csrw	mstatus,a5
    80006b8c:	304027f3          	csrr	a5,mie
    80006b90:	0807e793          	ori	a5,a5,128
    80006b94:	30479073          	csrw	mie,a5
    80006b98:	f14027f3          	csrr	a5,mhartid
    80006b9c:	0007879b          	sext.w	a5,a5
    80006ba0:	00078213          	mv	tp,a5
    80006ba4:	30200073          	mret
    80006ba8:	00813403          	ld	s0,8(sp)
    80006bac:	01010113          	addi	sp,sp,16
    80006bb0:	00008067          	ret

0000000080006bb4 <timerinit>:
    80006bb4:	ff010113          	addi	sp,sp,-16
    80006bb8:	00813423          	sd	s0,8(sp)
    80006bbc:	01010413          	addi	s0,sp,16
    80006bc0:	f14027f3          	csrr	a5,mhartid
    80006bc4:	0200c737          	lui	a4,0x200c
    80006bc8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006bcc:	0007869b          	sext.w	a3,a5
    80006bd0:	00269713          	slli	a4,a3,0x2
    80006bd4:	000f4637          	lui	a2,0xf4
    80006bd8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006bdc:	00d70733          	add	a4,a4,a3
    80006be0:	0037979b          	slliw	a5,a5,0x3
    80006be4:	020046b7          	lui	a3,0x2004
    80006be8:	00d787b3          	add	a5,a5,a3
    80006bec:	00c585b3          	add	a1,a1,a2
    80006bf0:	00371693          	slli	a3,a4,0x3
    80006bf4:	00005717          	auipc	a4,0x5
    80006bf8:	1bc70713          	addi	a4,a4,444 # 8000bdb0 <timer_scratch>
    80006bfc:	00b7b023          	sd	a1,0(a5)
    80006c00:	00d70733          	add	a4,a4,a3
    80006c04:	00f73c23          	sd	a5,24(a4)
    80006c08:	02c73023          	sd	a2,32(a4)
    80006c0c:	34071073          	csrw	mscratch,a4
    80006c10:	00000797          	auipc	a5,0x0
    80006c14:	65078793          	addi	a5,a5,1616 # 80007260 <timervec>
    80006c18:	30579073          	csrw	mtvec,a5
    80006c1c:	300027f3          	csrr	a5,mstatus
    80006c20:	0087e793          	ori	a5,a5,8
    80006c24:	30079073          	csrw	mstatus,a5
    80006c28:	304027f3          	csrr	a5,mie
    80006c2c:	0807e793          	ori	a5,a5,128
    80006c30:	30479073          	csrw	mie,a5
    80006c34:	00813403          	ld	s0,8(sp)
    80006c38:	01010113          	addi	sp,sp,16
    80006c3c:	00008067          	ret

0000000080006c40 <system_main>:
    80006c40:	fe010113          	addi	sp,sp,-32
    80006c44:	00813823          	sd	s0,16(sp)
    80006c48:	00913423          	sd	s1,8(sp)
    80006c4c:	00113c23          	sd	ra,24(sp)
    80006c50:	02010413          	addi	s0,sp,32
    80006c54:	00000097          	auipc	ra,0x0
    80006c58:	0c4080e7          	jalr	196(ra) # 80006d18 <cpuid>
    80006c5c:	00005497          	auipc	s1,0x5
    80006c60:	06448493          	addi	s1,s1,100 # 8000bcc0 <started>
    80006c64:	02050263          	beqz	a0,80006c88 <system_main+0x48>
    80006c68:	0004a783          	lw	a5,0(s1)
    80006c6c:	0007879b          	sext.w	a5,a5
    80006c70:	fe078ce3          	beqz	a5,80006c68 <system_main+0x28>
    80006c74:	0ff0000f          	fence
    80006c78:	00003517          	auipc	a0,0x3
    80006c7c:	9d850513          	addi	a0,a0,-1576 # 80009650 <CONSOLE_STATUS+0x640>
    80006c80:	00001097          	auipc	ra,0x1
    80006c84:	a7c080e7          	jalr	-1412(ra) # 800076fc <panic>
    80006c88:	00001097          	auipc	ra,0x1
    80006c8c:	9d0080e7          	jalr	-1584(ra) # 80007658 <consoleinit>
    80006c90:	00001097          	auipc	ra,0x1
    80006c94:	15c080e7          	jalr	348(ra) # 80007dec <printfinit>
    80006c98:	00002517          	auipc	a0,0x2
    80006c9c:	62050513          	addi	a0,a0,1568 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006ca0:	00001097          	auipc	ra,0x1
    80006ca4:	ab8080e7          	jalr	-1352(ra) # 80007758 <__printf>
    80006ca8:	00003517          	auipc	a0,0x3
    80006cac:	97850513          	addi	a0,a0,-1672 # 80009620 <CONSOLE_STATUS+0x610>
    80006cb0:	00001097          	auipc	ra,0x1
    80006cb4:	aa8080e7          	jalr	-1368(ra) # 80007758 <__printf>
    80006cb8:	00002517          	auipc	a0,0x2
    80006cbc:	60050513          	addi	a0,a0,1536 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006cc0:	00001097          	auipc	ra,0x1
    80006cc4:	a98080e7          	jalr	-1384(ra) # 80007758 <__printf>
    80006cc8:	00001097          	auipc	ra,0x1
    80006ccc:	4b0080e7          	jalr	1200(ra) # 80008178 <kinit>
    80006cd0:	00000097          	auipc	ra,0x0
    80006cd4:	148080e7          	jalr	328(ra) # 80006e18 <trapinit>
    80006cd8:	00000097          	auipc	ra,0x0
    80006cdc:	16c080e7          	jalr	364(ra) # 80006e44 <trapinithart>
    80006ce0:	00000097          	auipc	ra,0x0
    80006ce4:	5c0080e7          	jalr	1472(ra) # 800072a0 <plicinit>
    80006ce8:	00000097          	auipc	ra,0x0
    80006cec:	5e0080e7          	jalr	1504(ra) # 800072c8 <plicinithart>
    80006cf0:	00000097          	auipc	ra,0x0
    80006cf4:	078080e7          	jalr	120(ra) # 80006d68 <userinit>
    80006cf8:	0ff0000f          	fence
    80006cfc:	00100793          	li	a5,1
    80006d00:	00003517          	auipc	a0,0x3
    80006d04:	93850513          	addi	a0,a0,-1736 # 80009638 <CONSOLE_STATUS+0x628>
    80006d08:	00f4a023          	sw	a5,0(s1)
    80006d0c:	00001097          	auipc	ra,0x1
    80006d10:	a4c080e7          	jalr	-1460(ra) # 80007758 <__printf>
    80006d14:	0000006f          	j	80006d14 <system_main+0xd4>

0000000080006d18 <cpuid>:
    80006d18:	ff010113          	addi	sp,sp,-16
    80006d1c:	00813423          	sd	s0,8(sp)
    80006d20:	01010413          	addi	s0,sp,16
    80006d24:	00020513          	mv	a0,tp
    80006d28:	00813403          	ld	s0,8(sp)
    80006d2c:	0005051b          	sext.w	a0,a0
    80006d30:	01010113          	addi	sp,sp,16
    80006d34:	00008067          	ret

0000000080006d38 <mycpu>:
    80006d38:	ff010113          	addi	sp,sp,-16
    80006d3c:	00813423          	sd	s0,8(sp)
    80006d40:	01010413          	addi	s0,sp,16
    80006d44:	00020793          	mv	a5,tp
    80006d48:	00813403          	ld	s0,8(sp)
    80006d4c:	0007879b          	sext.w	a5,a5
    80006d50:	00779793          	slli	a5,a5,0x7
    80006d54:	00006517          	auipc	a0,0x6
    80006d58:	08c50513          	addi	a0,a0,140 # 8000cde0 <cpus>
    80006d5c:	00f50533          	add	a0,a0,a5
    80006d60:	01010113          	addi	sp,sp,16
    80006d64:	00008067          	ret

0000000080006d68 <userinit>:
    80006d68:	ff010113          	addi	sp,sp,-16
    80006d6c:	00813423          	sd	s0,8(sp)
    80006d70:	01010413          	addi	s0,sp,16
    80006d74:	00813403          	ld	s0,8(sp)
    80006d78:	01010113          	addi	sp,sp,16
    80006d7c:	ffffc317          	auipc	t1,0xffffc
    80006d80:	a0c30067          	jr	-1524(t1) # 80002788 <main>

0000000080006d84 <either_copyout>:
    80006d84:	ff010113          	addi	sp,sp,-16
    80006d88:	00813023          	sd	s0,0(sp)
    80006d8c:	00113423          	sd	ra,8(sp)
    80006d90:	01010413          	addi	s0,sp,16
    80006d94:	02051663          	bnez	a0,80006dc0 <either_copyout+0x3c>
    80006d98:	00058513          	mv	a0,a1
    80006d9c:	00060593          	mv	a1,a2
    80006da0:	0006861b          	sext.w	a2,a3
    80006da4:	00002097          	auipc	ra,0x2
    80006da8:	c60080e7          	jalr	-928(ra) # 80008a04 <__memmove>
    80006dac:	00813083          	ld	ra,8(sp)
    80006db0:	00013403          	ld	s0,0(sp)
    80006db4:	00000513          	li	a0,0
    80006db8:	01010113          	addi	sp,sp,16
    80006dbc:	00008067          	ret
    80006dc0:	00003517          	auipc	a0,0x3
    80006dc4:	8b850513          	addi	a0,a0,-1864 # 80009678 <CONSOLE_STATUS+0x668>
    80006dc8:	00001097          	auipc	ra,0x1
    80006dcc:	934080e7          	jalr	-1740(ra) # 800076fc <panic>

0000000080006dd0 <either_copyin>:
    80006dd0:	ff010113          	addi	sp,sp,-16
    80006dd4:	00813023          	sd	s0,0(sp)
    80006dd8:	00113423          	sd	ra,8(sp)
    80006ddc:	01010413          	addi	s0,sp,16
    80006de0:	02059463          	bnez	a1,80006e08 <either_copyin+0x38>
    80006de4:	00060593          	mv	a1,a2
    80006de8:	0006861b          	sext.w	a2,a3
    80006dec:	00002097          	auipc	ra,0x2
    80006df0:	c18080e7          	jalr	-1000(ra) # 80008a04 <__memmove>
    80006df4:	00813083          	ld	ra,8(sp)
    80006df8:	00013403          	ld	s0,0(sp)
    80006dfc:	00000513          	li	a0,0
    80006e00:	01010113          	addi	sp,sp,16
    80006e04:	00008067          	ret
    80006e08:	00003517          	auipc	a0,0x3
    80006e0c:	89850513          	addi	a0,a0,-1896 # 800096a0 <CONSOLE_STATUS+0x690>
    80006e10:	00001097          	auipc	ra,0x1
    80006e14:	8ec080e7          	jalr	-1812(ra) # 800076fc <panic>

0000000080006e18 <trapinit>:
    80006e18:	ff010113          	addi	sp,sp,-16
    80006e1c:	00813423          	sd	s0,8(sp)
    80006e20:	01010413          	addi	s0,sp,16
    80006e24:	00813403          	ld	s0,8(sp)
    80006e28:	00003597          	auipc	a1,0x3
    80006e2c:	8a058593          	addi	a1,a1,-1888 # 800096c8 <CONSOLE_STATUS+0x6b8>
    80006e30:	00006517          	auipc	a0,0x6
    80006e34:	03050513          	addi	a0,a0,48 # 8000ce60 <tickslock>
    80006e38:	01010113          	addi	sp,sp,16
    80006e3c:	00001317          	auipc	t1,0x1
    80006e40:	5cc30067          	jr	1484(t1) # 80008408 <initlock>

0000000080006e44 <trapinithart>:
    80006e44:	ff010113          	addi	sp,sp,-16
    80006e48:	00813423          	sd	s0,8(sp)
    80006e4c:	01010413          	addi	s0,sp,16
    80006e50:	00000797          	auipc	a5,0x0
    80006e54:	30078793          	addi	a5,a5,768 # 80007150 <kernelvec>
    80006e58:	10579073          	csrw	stvec,a5
    80006e5c:	00813403          	ld	s0,8(sp)
    80006e60:	01010113          	addi	sp,sp,16
    80006e64:	00008067          	ret

0000000080006e68 <usertrap>:
    80006e68:	ff010113          	addi	sp,sp,-16
    80006e6c:	00813423          	sd	s0,8(sp)
    80006e70:	01010413          	addi	s0,sp,16
    80006e74:	00813403          	ld	s0,8(sp)
    80006e78:	01010113          	addi	sp,sp,16
    80006e7c:	00008067          	ret

0000000080006e80 <usertrapret>:
    80006e80:	ff010113          	addi	sp,sp,-16
    80006e84:	00813423          	sd	s0,8(sp)
    80006e88:	01010413          	addi	s0,sp,16
    80006e8c:	00813403          	ld	s0,8(sp)
    80006e90:	01010113          	addi	sp,sp,16
    80006e94:	00008067          	ret

0000000080006e98 <kerneltrap>:
    80006e98:	fe010113          	addi	sp,sp,-32
    80006e9c:	00813823          	sd	s0,16(sp)
    80006ea0:	00113c23          	sd	ra,24(sp)
    80006ea4:	00913423          	sd	s1,8(sp)
    80006ea8:	02010413          	addi	s0,sp,32
    80006eac:	142025f3          	csrr	a1,scause
    80006eb0:	100027f3          	csrr	a5,sstatus
    80006eb4:	0027f793          	andi	a5,a5,2
    80006eb8:	10079c63          	bnez	a5,80006fd0 <kerneltrap+0x138>
    80006ebc:	142027f3          	csrr	a5,scause
    80006ec0:	0207ce63          	bltz	a5,80006efc <kerneltrap+0x64>
    80006ec4:	00003517          	auipc	a0,0x3
    80006ec8:	84c50513          	addi	a0,a0,-1972 # 80009710 <CONSOLE_STATUS+0x700>
    80006ecc:	00001097          	auipc	ra,0x1
    80006ed0:	88c080e7          	jalr	-1908(ra) # 80007758 <__printf>
    80006ed4:	141025f3          	csrr	a1,sepc
    80006ed8:	14302673          	csrr	a2,stval
    80006edc:	00003517          	auipc	a0,0x3
    80006ee0:	84450513          	addi	a0,a0,-1980 # 80009720 <CONSOLE_STATUS+0x710>
    80006ee4:	00001097          	auipc	ra,0x1
    80006ee8:	874080e7          	jalr	-1932(ra) # 80007758 <__printf>
    80006eec:	00003517          	auipc	a0,0x3
    80006ef0:	84c50513          	addi	a0,a0,-1972 # 80009738 <CONSOLE_STATUS+0x728>
    80006ef4:	00001097          	auipc	ra,0x1
    80006ef8:	808080e7          	jalr	-2040(ra) # 800076fc <panic>
    80006efc:	0ff7f713          	andi	a4,a5,255
    80006f00:	00900693          	li	a3,9
    80006f04:	04d70063          	beq	a4,a3,80006f44 <kerneltrap+0xac>
    80006f08:	fff00713          	li	a4,-1
    80006f0c:	03f71713          	slli	a4,a4,0x3f
    80006f10:	00170713          	addi	a4,a4,1
    80006f14:	fae798e3          	bne	a5,a4,80006ec4 <kerneltrap+0x2c>
    80006f18:	00000097          	auipc	ra,0x0
    80006f1c:	e00080e7          	jalr	-512(ra) # 80006d18 <cpuid>
    80006f20:	06050663          	beqz	a0,80006f8c <kerneltrap+0xf4>
    80006f24:	144027f3          	csrr	a5,sip
    80006f28:	ffd7f793          	andi	a5,a5,-3
    80006f2c:	14479073          	csrw	sip,a5
    80006f30:	01813083          	ld	ra,24(sp)
    80006f34:	01013403          	ld	s0,16(sp)
    80006f38:	00813483          	ld	s1,8(sp)
    80006f3c:	02010113          	addi	sp,sp,32
    80006f40:	00008067          	ret
    80006f44:	00000097          	auipc	ra,0x0
    80006f48:	3d0080e7          	jalr	976(ra) # 80007314 <plic_claim>
    80006f4c:	00a00793          	li	a5,10
    80006f50:	00050493          	mv	s1,a0
    80006f54:	06f50863          	beq	a0,a5,80006fc4 <kerneltrap+0x12c>
    80006f58:	fc050ce3          	beqz	a0,80006f30 <kerneltrap+0x98>
    80006f5c:	00050593          	mv	a1,a0
    80006f60:	00002517          	auipc	a0,0x2
    80006f64:	79050513          	addi	a0,a0,1936 # 800096f0 <CONSOLE_STATUS+0x6e0>
    80006f68:	00000097          	auipc	ra,0x0
    80006f6c:	7f0080e7          	jalr	2032(ra) # 80007758 <__printf>
    80006f70:	01013403          	ld	s0,16(sp)
    80006f74:	01813083          	ld	ra,24(sp)
    80006f78:	00048513          	mv	a0,s1
    80006f7c:	00813483          	ld	s1,8(sp)
    80006f80:	02010113          	addi	sp,sp,32
    80006f84:	00000317          	auipc	t1,0x0
    80006f88:	3c830067          	jr	968(t1) # 8000734c <plic_complete>
    80006f8c:	00006517          	auipc	a0,0x6
    80006f90:	ed450513          	addi	a0,a0,-300 # 8000ce60 <tickslock>
    80006f94:	00001097          	auipc	ra,0x1
    80006f98:	498080e7          	jalr	1176(ra) # 8000842c <acquire>
    80006f9c:	00005717          	auipc	a4,0x5
    80006fa0:	d2870713          	addi	a4,a4,-728 # 8000bcc4 <ticks>
    80006fa4:	00072783          	lw	a5,0(a4)
    80006fa8:	00006517          	auipc	a0,0x6
    80006fac:	eb850513          	addi	a0,a0,-328 # 8000ce60 <tickslock>
    80006fb0:	0017879b          	addiw	a5,a5,1
    80006fb4:	00f72023          	sw	a5,0(a4)
    80006fb8:	00001097          	auipc	ra,0x1
    80006fbc:	540080e7          	jalr	1344(ra) # 800084f8 <release>
    80006fc0:	f65ff06f          	j	80006f24 <kerneltrap+0x8c>
    80006fc4:	00001097          	auipc	ra,0x1
    80006fc8:	09c080e7          	jalr	156(ra) # 80008060 <uartintr>
    80006fcc:	fa5ff06f          	j	80006f70 <kerneltrap+0xd8>
    80006fd0:	00002517          	auipc	a0,0x2
    80006fd4:	70050513          	addi	a0,a0,1792 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80006fd8:	00000097          	auipc	ra,0x0
    80006fdc:	724080e7          	jalr	1828(ra) # 800076fc <panic>

0000000080006fe0 <clockintr>:
    80006fe0:	fe010113          	addi	sp,sp,-32
    80006fe4:	00813823          	sd	s0,16(sp)
    80006fe8:	00913423          	sd	s1,8(sp)
    80006fec:	00113c23          	sd	ra,24(sp)
    80006ff0:	02010413          	addi	s0,sp,32
    80006ff4:	00006497          	auipc	s1,0x6
    80006ff8:	e6c48493          	addi	s1,s1,-404 # 8000ce60 <tickslock>
    80006ffc:	00048513          	mv	a0,s1
    80007000:	00001097          	auipc	ra,0x1
    80007004:	42c080e7          	jalr	1068(ra) # 8000842c <acquire>
    80007008:	00005717          	auipc	a4,0x5
    8000700c:	cbc70713          	addi	a4,a4,-836 # 8000bcc4 <ticks>
    80007010:	00072783          	lw	a5,0(a4)
    80007014:	01013403          	ld	s0,16(sp)
    80007018:	01813083          	ld	ra,24(sp)
    8000701c:	00048513          	mv	a0,s1
    80007020:	0017879b          	addiw	a5,a5,1
    80007024:	00813483          	ld	s1,8(sp)
    80007028:	00f72023          	sw	a5,0(a4)
    8000702c:	02010113          	addi	sp,sp,32
    80007030:	00001317          	auipc	t1,0x1
    80007034:	4c830067          	jr	1224(t1) # 800084f8 <release>

0000000080007038 <devintr>:
    80007038:	142027f3          	csrr	a5,scause
    8000703c:	00000513          	li	a0,0
    80007040:	0007c463          	bltz	a5,80007048 <devintr+0x10>
    80007044:	00008067          	ret
    80007048:	fe010113          	addi	sp,sp,-32
    8000704c:	00813823          	sd	s0,16(sp)
    80007050:	00113c23          	sd	ra,24(sp)
    80007054:	00913423          	sd	s1,8(sp)
    80007058:	02010413          	addi	s0,sp,32
    8000705c:	0ff7f713          	andi	a4,a5,255
    80007060:	00900693          	li	a3,9
    80007064:	04d70c63          	beq	a4,a3,800070bc <devintr+0x84>
    80007068:	fff00713          	li	a4,-1
    8000706c:	03f71713          	slli	a4,a4,0x3f
    80007070:	00170713          	addi	a4,a4,1
    80007074:	00e78c63          	beq	a5,a4,8000708c <devintr+0x54>
    80007078:	01813083          	ld	ra,24(sp)
    8000707c:	01013403          	ld	s0,16(sp)
    80007080:	00813483          	ld	s1,8(sp)
    80007084:	02010113          	addi	sp,sp,32
    80007088:	00008067          	ret
    8000708c:	00000097          	auipc	ra,0x0
    80007090:	c8c080e7          	jalr	-884(ra) # 80006d18 <cpuid>
    80007094:	06050663          	beqz	a0,80007100 <devintr+0xc8>
    80007098:	144027f3          	csrr	a5,sip
    8000709c:	ffd7f793          	andi	a5,a5,-3
    800070a0:	14479073          	csrw	sip,a5
    800070a4:	01813083          	ld	ra,24(sp)
    800070a8:	01013403          	ld	s0,16(sp)
    800070ac:	00813483          	ld	s1,8(sp)
    800070b0:	00200513          	li	a0,2
    800070b4:	02010113          	addi	sp,sp,32
    800070b8:	00008067          	ret
    800070bc:	00000097          	auipc	ra,0x0
    800070c0:	258080e7          	jalr	600(ra) # 80007314 <plic_claim>
    800070c4:	00a00793          	li	a5,10
    800070c8:	00050493          	mv	s1,a0
    800070cc:	06f50663          	beq	a0,a5,80007138 <devintr+0x100>
    800070d0:	00100513          	li	a0,1
    800070d4:	fa0482e3          	beqz	s1,80007078 <devintr+0x40>
    800070d8:	00048593          	mv	a1,s1
    800070dc:	00002517          	auipc	a0,0x2
    800070e0:	61450513          	addi	a0,a0,1556 # 800096f0 <CONSOLE_STATUS+0x6e0>
    800070e4:	00000097          	auipc	ra,0x0
    800070e8:	674080e7          	jalr	1652(ra) # 80007758 <__printf>
    800070ec:	00048513          	mv	a0,s1
    800070f0:	00000097          	auipc	ra,0x0
    800070f4:	25c080e7          	jalr	604(ra) # 8000734c <plic_complete>
    800070f8:	00100513          	li	a0,1
    800070fc:	f7dff06f          	j	80007078 <devintr+0x40>
    80007100:	00006517          	auipc	a0,0x6
    80007104:	d6050513          	addi	a0,a0,-672 # 8000ce60 <tickslock>
    80007108:	00001097          	auipc	ra,0x1
    8000710c:	324080e7          	jalr	804(ra) # 8000842c <acquire>
    80007110:	00005717          	auipc	a4,0x5
    80007114:	bb470713          	addi	a4,a4,-1100 # 8000bcc4 <ticks>
    80007118:	00072783          	lw	a5,0(a4)
    8000711c:	00006517          	auipc	a0,0x6
    80007120:	d4450513          	addi	a0,a0,-700 # 8000ce60 <tickslock>
    80007124:	0017879b          	addiw	a5,a5,1
    80007128:	00f72023          	sw	a5,0(a4)
    8000712c:	00001097          	auipc	ra,0x1
    80007130:	3cc080e7          	jalr	972(ra) # 800084f8 <release>
    80007134:	f65ff06f          	j	80007098 <devintr+0x60>
    80007138:	00001097          	auipc	ra,0x1
    8000713c:	f28080e7          	jalr	-216(ra) # 80008060 <uartintr>
    80007140:	fadff06f          	j	800070ec <devintr+0xb4>
	...

0000000080007150 <kernelvec>:
    80007150:	f0010113          	addi	sp,sp,-256
    80007154:	00113023          	sd	ra,0(sp)
    80007158:	00213423          	sd	sp,8(sp)
    8000715c:	00313823          	sd	gp,16(sp)
    80007160:	00413c23          	sd	tp,24(sp)
    80007164:	02513023          	sd	t0,32(sp)
    80007168:	02613423          	sd	t1,40(sp)
    8000716c:	02713823          	sd	t2,48(sp)
    80007170:	02813c23          	sd	s0,56(sp)
    80007174:	04913023          	sd	s1,64(sp)
    80007178:	04a13423          	sd	a0,72(sp)
    8000717c:	04b13823          	sd	a1,80(sp)
    80007180:	04c13c23          	sd	a2,88(sp)
    80007184:	06d13023          	sd	a3,96(sp)
    80007188:	06e13423          	sd	a4,104(sp)
    8000718c:	06f13823          	sd	a5,112(sp)
    80007190:	07013c23          	sd	a6,120(sp)
    80007194:	09113023          	sd	a7,128(sp)
    80007198:	09213423          	sd	s2,136(sp)
    8000719c:	09313823          	sd	s3,144(sp)
    800071a0:	09413c23          	sd	s4,152(sp)
    800071a4:	0b513023          	sd	s5,160(sp)
    800071a8:	0b613423          	sd	s6,168(sp)
    800071ac:	0b713823          	sd	s7,176(sp)
    800071b0:	0b813c23          	sd	s8,184(sp)
    800071b4:	0d913023          	sd	s9,192(sp)
    800071b8:	0da13423          	sd	s10,200(sp)
    800071bc:	0db13823          	sd	s11,208(sp)
    800071c0:	0dc13c23          	sd	t3,216(sp)
    800071c4:	0fd13023          	sd	t4,224(sp)
    800071c8:	0fe13423          	sd	t5,232(sp)
    800071cc:	0ff13823          	sd	t6,240(sp)
    800071d0:	cc9ff0ef          	jal	ra,80006e98 <kerneltrap>
    800071d4:	00013083          	ld	ra,0(sp)
    800071d8:	00813103          	ld	sp,8(sp)
    800071dc:	01013183          	ld	gp,16(sp)
    800071e0:	02013283          	ld	t0,32(sp)
    800071e4:	02813303          	ld	t1,40(sp)
    800071e8:	03013383          	ld	t2,48(sp)
    800071ec:	03813403          	ld	s0,56(sp)
    800071f0:	04013483          	ld	s1,64(sp)
    800071f4:	04813503          	ld	a0,72(sp)
    800071f8:	05013583          	ld	a1,80(sp)
    800071fc:	05813603          	ld	a2,88(sp)
    80007200:	06013683          	ld	a3,96(sp)
    80007204:	06813703          	ld	a4,104(sp)
    80007208:	07013783          	ld	a5,112(sp)
    8000720c:	07813803          	ld	a6,120(sp)
    80007210:	08013883          	ld	a7,128(sp)
    80007214:	08813903          	ld	s2,136(sp)
    80007218:	09013983          	ld	s3,144(sp)
    8000721c:	09813a03          	ld	s4,152(sp)
    80007220:	0a013a83          	ld	s5,160(sp)
    80007224:	0a813b03          	ld	s6,168(sp)
    80007228:	0b013b83          	ld	s7,176(sp)
    8000722c:	0b813c03          	ld	s8,184(sp)
    80007230:	0c013c83          	ld	s9,192(sp)
    80007234:	0c813d03          	ld	s10,200(sp)
    80007238:	0d013d83          	ld	s11,208(sp)
    8000723c:	0d813e03          	ld	t3,216(sp)
    80007240:	0e013e83          	ld	t4,224(sp)
    80007244:	0e813f03          	ld	t5,232(sp)
    80007248:	0f013f83          	ld	t6,240(sp)
    8000724c:	10010113          	addi	sp,sp,256
    80007250:	10200073          	sret
    80007254:	00000013          	nop
    80007258:	00000013          	nop
    8000725c:	00000013          	nop

0000000080007260 <timervec>:
    80007260:	34051573          	csrrw	a0,mscratch,a0
    80007264:	00b53023          	sd	a1,0(a0)
    80007268:	00c53423          	sd	a2,8(a0)
    8000726c:	00d53823          	sd	a3,16(a0)
    80007270:	01853583          	ld	a1,24(a0)
    80007274:	02053603          	ld	a2,32(a0)
    80007278:	0005b683          	ld	a3,0(a1)
    8000727c:	00c686b3          	add	a3,a3,a2
    80007280:	00d5b023          	sd	a3,0(a1)
    80007284:	00200593          	li	a1,2
    80007288:	14459073          	csrw	sip,a1
    8000728c:	01053683          	ld	a3,16(a0)
    80007290:	00853603          	ld	a2,8(a0)
    80007294:	00053583          	ld	a1,0(a0)
    80007298:	34051573          	csrrw	a0,mscratch,a0
    8000729c:	30200073          	mret

00000000800072a0 <plicinit>:
    800072a0:	ff010113          	addi	sp,sp,-16
    800072a4:	00813423          	sd	s0,8(sp)
    800072a8:	01010413          	addi	s0,sp,16
    800072ac:	00813403          	ld	s0,8(sp)
    800072b0:	0c0007b7          	lui	a5,0xc000
    800072b4:	00100713          	li	a4,1
    800072b8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800072bc:	00e7a223          	sw	a4,4(a5)
    800072c0:	01010113          	addi	sp,sp,16
    800072c4:	00008067          	ret

00000000800072c8 <plicinithart>:
    800072c8:	ff010113          	addi	sp,sp,-16
    800072cc:	00813023          	sd	s0,0(sp)
    800072d0:	00113423          	sd	ra,8(sp)
    800072d4:	01010413          	addi	s0,sp,16
    800072d8:	00000097          	auipc	ra,0x0
    800072dc:	a40080e7          	jalr	-1472(ra) # 80006d18 <cpuid>
    800072e0:	0085171b          	slliw	a4,a0,0x8
    800072e4:	0c0027b7          	lui	a5,0xc002
    800072e8:	00e787b3          	add	a5,a5,a4
    800072ec:	40200713          	li	a4,1026
    800072f0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800072f4:	00813083          	ld	ra,8(sp)
    800072f8:	00013403          	ld	s0,0(sp)
    800072fc:	00d5151b          	slliw	a0,a0,0xd
    80007300:	0c2017b7          	lui	a5,0xc201
    80007304:	00a78533          	add	a0,a5,a0
    80007308:	00052023          	sw	zero,0(a0)
    8000730c:	01010113          	addi	sp,sp,16
    80007310:	00008067          	ret

0000000080007314 <plic_claim>:
    80007314:	ff010113          	addi	sp,sp,-16
    80007318:	00813023          	sd	s0,0(sp)
    8000731c:	00113423          	sd	ra,8(sp)
    80007320:	01010413          	addi	s0,sp,16
    80007324:	00000097          	auipc	ra,0x0
    80007328:	9f4080e7          	jalr	-1548(ra) # 80006d18 <cpuid>
    8000732c:	00813083          	ld	ra,8(sp)
    80007330:	00013403          	ld	s0,0(sp)
    80007334:	00d5151b          	slliw	a0,a0,0xd
    80007338:	0c2017b7          	lui	a5,0xc201
    8000733c:	00a78533          	add	a0,a5,a0
    80007340:	00452503          	lw	a0,4(a0)
    80007344:	01010113          	addi	sp,sp,16
    80007348:	00008067          	ret

000000008000734c <plic_complete>:
    8000734c:	fe010113          	addi	sp,sp,-32
    80007350:	00813823          	sd	s0,16(sp)
    80007354:	00913423          	sd	s1,8(sp)
    80007358:	00113c23          	sd	ra,24(sp)
    8000735c:	02010413          	addi	s0,sp,32
    80007360:	00050493          	mv	s1,a0
    80007364:	00000097          	auipc	ra,0x0
    80007368:	9b4080e7          	jalr	-1612(ra) # 80006d18 <cpuid>
    8000736c:	01813083          	ld	ra,24(sp)
    80007370:	01013403          	ld	s0,16(sp)
    80007374:	00d5179b          	slliw	a5,a0,0xd
    80007378:	0c201737          	lui	a4,0xc201
    8000737c:	00f707b3          	add	a5,a4,a5
    80007380:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007384:	00813483          	ld	s1,8(sp)
    80007388:	02010113          	addi	sp,sp,32
    8000738c:	00008067          	ret

0000000080007390 <consolewrite>:
    80007390:	fb010113          	addi	sp,sp,-80
    80007394:	04813023          	sd	s0,64(sp)
    80007398:	04113423          	sd	ra,72(sp)
    8000739c:	02913c23          	sd	s1,56(sp)
    800073a0:	03213823          	sd	s2,48(sp)
    800073a4:	03313423          	sd	s3,40(sp)
    800073a8:	03413023          	sd	s4,32(sp)
    800073ac:	01513c23          	sd	s5,24(sp)
    800073b0:	05010413          	addi	s0,sp,80
    800073b4:	06c05c63          	blez	a2,8000742c <consolewrite+0x9c>
    800073b8:	00060993          	mv	s3,a2
    800073bc:	00050a13          	mv	s4,a0
    800073c0:	00058493          	mv	s1,a1
    800073c4:	00000913          	li	s2,0
    800073c8:	fff00a93          	li	s5,-1
    800073cc:	01c0006f          	j	800073e8 <consolewrite+0x58>
    800073d0:	fbf44503          	lbu	a0,-65(s0)
    800073d4:	0019091b          	addiw	s2,s2,1
    800073d8:	00148493          	addi	s1,s1,1
    800073dc:	00001097          	auipc	ra,0x1
    800073e0:	a9c080e7          	jalr	-1380(ra) # 80007e78 <uartputc>
    800073e4:	03298063          	beq	s3,s2,80007404 <consolewrite+0x74>
    800073e8:	00048613          	mv	a2,s1
    800073ec:	00100693          	li	a3,1
    800073f0:	000a0593          	mv	a1,s4
    800073f4:	fbf40513          	addi	a0,s0,-65
    800073f8:	00000097          	auipc	ra,0x0
    800073fc:	9d8080e7          	jalr	-1576(ra) # 80006dd0 <either_copyin>
    80007400:	fd5518e3          	bne	a0,s5,800073d0 <consolewrite+0x40>
    80007404:	04813083          	ld	ra,72(sp)
    80007408:	04013403          	ld	s0,64(sp)
    8000740c:	03813483          	ld	s1,56(sp)
    80007410:	02813983          	ld	s3,40(sp)
    80007414:	02013a03          	ld	s4,32(sp)
    80007418:	01813a83          	ld	s5,24(sp)
    8000741c:	00090513          	mv	a0,s2
    80007420:	03013903          	ld	s2,48(sp)
    80007424:	05010113          	addi	sp,sp,80
    80007428:	00008067          	ret
    8000742c:	00000913          	li	s2,0
    80007430:	fd5ff06f          	j	80007404 <consolewrite+0x74>

0000000080007434 <consoleread>:
    80007434:	f9010113          	addi	sp,sp,-112
    80007438:	06813023          	sd	s0,96(sp)
    8000743c:	04913c23          	sd	s1,88(sp)
    80007440:	05213823          	sd	s2,80(sp)
    80007444:	05313423          	sd	s3,72(sp)
    80007448:	05413023          	sd	s4,64(sp)
    8000744c:	03513c23          	sd	s5,56(sp)
    80007450:	03613823          	sd	s6,48(sp)
    80007454:	03713423          	sd	s7,40(sp)
    80007458:	03813023          	sd	s8,32(sp)
    8000745c:	06113423          	sd	ra,104(sp)
    80007460:	01913c23          	sd	s9,24(sp)
    80007464:	07010413          	addi	s0,sp,112
    80007468:	00060b93          	mv	s7,a2
    8000746c:	00050913          	mv	s2,a0
    80007470:	00058c13          	mv	s8,a1
    80007474:	00060b1b          	sext.w	s6,a2
    80007478:	00006497          	auipc	s1,0x6
    8000747c:	a1048493          	addi	s1,s1,-1520 # 8000ce88 <cons>
    80007480:	00400993          	li	s3,4
    80007484:	fff00a13          	li	s4,-1
    80007488:	00a00a93          	li	s5,10
    8000748c:	05705e63          	blez	s7,800074e8 <consoleread+0xb4>
    80007490:	09c4a703          	lw	a4,156(s1)
    80007494:	0984a783          	lw	a5,152(s1)
    80007498:	0007071b          	sext.w	a4,a4
    8000749c:	08e78463          	beq	a5,a4,80007524 <consoleread+0xf0>
    800074a0:	07f7f713          	andi	a4,a5,127
    800074a4:	00e48733          	add	a4,s1,a4
    800074a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800074ac:	0017869b          	addiw	a3,a5,1
    800074b0:	08d4ac23          	sw	a3,152(s1)
    800074b4:	00070c9b          	sext.w	s9,a4
    800074b8:	0b370663          	beq	a4,s3,80007564 <consoleread+0x130>
    800074bc:	00100693          	li	a3,1
    800074c0:	f9f40613          	addi	a2,s0,-97
    800074c4:	000c0593          	mv	a1,s8
    800074c8:	00090513          	mv	a0,s2
    800074cc:	f8e40fa3          	sb	a4,-97(s0)
    800074d0:	00000097          	auipc	ra,0x0
    800074d4:	8b4080e7          	jalr	-1868(ra) # 80006d84 <either_copyout>
    800074d8:	01450863          	beq	a0,s4,800074e8 <consoleread+0xb4>
    800074dc:	001c0c13          	addi	s8,s8,1
    800074e0:	fffb8b9b          	addiw	s7,s7,-1
    800074e4:	fb5c94e3          	bne	s9,s5,8000748c <consoleread+0x58>
    800074e8:	000b851b          	sext.w	a0,s7
    800074ec:	06813083          	ld	ra,104(sp)
    800074f0:	06013403          	ld	s0,96(sp)
    800074f4:	05813483          	ld	s1,88(sp)
    800074f8:	05013903          	ld	s2,80(sp)
    800074fc:	04813983          	ld	s3,72(sp)
    80007500:	04013a03          	ld	s4,64(sp)
    80007504:	03813a83          	ld	s5,56(sp)
    80007508:	02813b83          	ld	s7,40(sp)
    8000750c:	02013c03          	ld	s8,32(sp)
    80007510:	01813c83          	ld	s9,24(sp)
    80007514:	40ab053b          	subw	a0,s6,a0
    80007518:	03013b03          	ld	s6,48(sp)
    8000751c:	07010113          	addi	sp,sp,112
    80007520:	00008067          	ret
    80007524:	00001097          	auipc	ra,0x1
    80007528:	1d8080e7          	jalr	472(ra) # 800086fc <push_on>
    8000752c:	0984a703          	lw	a4,152(s1)
    80007530:	09c4a783          	lw	a5,156(s1)
    80007534:	0007879b          	sext.w	a5,a5
    80007538:	fef70ce3          	beq	a4,a5,80007530 <consoleread+0xfc>
    8000753c:	00001097          	auipc	ra,0x1
    80007540:	234080e7          	jalr	564(ra) # 80008770 <pop_on>
    80007544:	0984a783          	lw	a5,152(s1)
    80007548:	07f7f713          	andi	a4,a5,127
    8000754c:	00e48733          	add	a4,s1,a4
    80007550:	01874703          	lbu	a4,24(a4)
    80007554:	0017869b          	addiw	a3,a5,1
    80007558:	08d4ac23          	sw	a3,152(s1)
    8000755c:	00070c9b          	sext.w	s9,a4
    80007560:	f5371ee3          	bne	a4,s3,800074bc <consoleread+0x88>
    80007564:	000b851b          	sext.w	a0,s7
    80007568:	f96bf2e3          	bgeu	s7,s6,800074ec <consoleread+0xb8>
    8000756c:	08f4ac23          	sw	a5,152(s1)
    80007570:	f7dff06f          	j	800074ec <consoleread+0xb8>

0000000080007574 <consputc>:
    80007574:	10000793          	li	a5,256
    80007578:	00f50663          	beq	a0,a5,80007584 <consputc+0x10>
    8000757c:	00001317          	auipc	t1,0x1
    80007580:	9f430067          	jr	-1548(t1) # 80007f70 <uartputc_sync>
    80007584:	ff010113          	addi	sp,sp,-16
    80007588:	00113423          	sd	ra,8(sp)
    8000758c:	00813023          	sd	s0,0(sp)
    80007590:	01010413          	addi	s0,sp,16
    80007594:	00800513          	li	a0,8
    80007598:	00001097          	auipc	ra,0x1
    8000759c:	9d8080e7          	jalr	-1576(ra) # 80007f70 <uartputc_sync>
    800075a0:	02000513          	li	a0,32
    800075a4:	00001097          	auipc	ra,0x1
    800075a8:	9cc080e7          	jalr	-1588(ra) # 80007f70 <uartputc_sync>
    800075ac:	00013403          	ld	s0,0(sp)
    800075b0:	00813083          	ld	ra,8(sp)
    800075b4:	00800513          	li	a0,8
    800075b8:	01010113          	addi	sp,sp,16
    800075bc:	00001317          	auipc	t1,0x1
    800075c0:	9b430067          	jr	-1612(t1) # 80007f70 <uartputc_sync>

00000000800075c4 <consoleintr>:
    800075c4:	fe010113          	addi	sp,sp,-32
    800075c8:	00813823          	sd	s0,16(sp)
    800075cc:	00913423          	sd	s1,8(sp)
    800075d0:	01213023          	sd	s2,0(sp)
    800075d4:	00113c23          	sd	ra,24(sp)
    800075d8:	02010413          	addi	s0,sp,32
    800075dc:	00006917          	auipc	s2,0x6
    800075e0:	8ac90913          	addi	s2,s2,-1876 # 8000ce88 <cons>
    800075e4:	00050493          	mv	s1,a0
    800075e8:	00090513          	mv	a0,s2
    800075ec:	00001097          	auipc	ra,0x1
    800075f0:	e40080e7          	jalr	-448(ra) # 8000842c <acquire>
    800075f4:	02048c63          	beqz	s1,8000762c <consoleintr+0x68>
    800075f8:	0a092783          	lw	a5,160(s2)
    800075fc:	09892703          	lw	a4,152(s2)
    80007600:	07f00693          	li	a3,127
    80007604:	40e7873b          	subw	a4,a5,a4
    80007608:	02e6e263          	bltu	a3,a4,8000762c <consoleintr+0x68>
    8000760c:	00d00713          	li	a4,13
    80007610:	04e48063          	beq	s1,a4,80007650 <consoleintr+0x8c>
    80007614:	07f7f713          	andi	a4,a5,127
    80007618:	00e90733          	add	a4,s2,a4
    8000761c:	0017879b          	addiw	a5,a5,1
    80007620:	0af92023          	sw	a5,160(s2)
    80007624:	00970c23          	sb	s1,24(a4)
    80007628:	08f92e23          	sw	a5,156(s2)
    8000762c:	01013403          	ld	s0,16(sp)
    80007630:	01813083          	ld	ra,24(sp)
    80007634:	00813483          	ld	s1,8(sp)
    80007638:	00013903          	ld	s2,0(sp)
    8000763c:	00006517          	auipc	a0,0x6
    80007640:	84c50513          	addi	a0,a0,-1972 # 8000ce88 <cons>
    80007644:	02010113          	addi	sp,sp,32
    80007648:	00001317          	auipc	t1,0x1
    8000764c:	eb030067          	jr	-336(t1) # 800084f8 <release>
    80007650:	00a00493          	li	s1,10
    80007654:	fc1ff06f          	j	80007614 <consoleintr+0x50>

0000000080007658 <consoleinit>:
    80007658:	fe010113          	addi	sp,sp,-32
    8000765c:	00113c23          	sd	ra,24(sp)
    80007660:	00813823          	sd	s0,16(sp)
    80007664:	00913423          	sd	s1,8(sp)
    80007668:	02010413          	addi	s0,sp,32
    8000766c:	00006497          	auipc	s1,0x6
    80007670:	81c48493          	addi	s1,s1,-2020 # 8000ce88 <cons>
    80007674:	00048513          	mv	a0,s1
    80007678:	00002597          	auipc	a1,0x2
    8000767c:	0d058593          	addi	a1,a1,208 # 80009748 <CONSOLE_STATUS+0x738>
    80007680:	00001097          	auipc	ra,0x1
    80007684:	d88080e7          	jalr	-632(ra) # 80008408 <initlock>
    80007688:	00000097          	auipc	ra,0x0
    8000768c:	7ac080e7          	jalr	1964(ra) # 80007e34 <uartinit>
    80007690:	01813083          	ld	ra,24(sp)
    80007694:	01013403          	ld	s0,16(sp)
    80007698:	00000797          	auipc	a5,0x0
    8000769c:	d9c78793          	addi	a5,a5,-612 # 80007434 <consoleread>
    800076a0:	0af4bc23          	sd	a5,184(s1)
    800076a4:	00000797          	auipc	a5,0x0
    800076a8:	cec78793          	addi	a5,a5,-788 # 80007390 <consolewrite>
    800076ac:	0cf4b023          	sd	a5,192(s1)
    800076b0:	00813483          	ld	s1,8(sp)
    800076b4:	02010113          	addi	sp,sp,32
    800076b8:	00008067          	ret

00000000800076bc <console_read>:
    800076bc:	ff010113          	addi	sp,sp,-16
    800076c0:	00813423          	sd	s0,8(sp)
    800076c4:	01010413          	addi	s0,sp,16
    800076c8:	00813403          	ld	s0,8(sp)
    800076cc:	00006317          	auipc	t1,0x6
    800076d0:	87433303          	ld	t1,-1932(t1) # 8000cf40 <devsw+0x10>
    800076d4:	01010113          	addi	sp,sp,16
    800076d8:	00030067          	jr	t1

00000000800076dc <console_write>:
    800076dc:	ff010113          	addi	sp,sp,-16
    800076e0:	00813423          	sd	s0,8(sp)
    800076e4:	01010413          	addi	s0,sp,16
    800076e8:	00813403          	ld	s0,8(sp)
    800076ec:	00006317          	auipc	t1,0x6
    800076f0:	85c33303          	ld	t1,-1956(t1) # 8000cf48 <devsw+0x18>
    800076f4:	01010113          	addi	sp,sp,16
    800076f8:	00030067          	jr	t1

00000000800076fc <panic>:
    800076fc:	fe010113          	addi	sp,sp,-32
    80007700:	00113c23          	sd	ra,24(sp)
    80007704:	00813823          	sd	s0,16(sp)
    80007708:	00913423          	sd	s1,8(sp)
    8000770c:	02010413          	addi	s0,sp,32
    80007710:	00050493          	mv	s1,a0
    80007714:	00002517          	auipc	a0,0x2
    80007718:	03c50513          	addi	a0,a0,60 # 80009750 <CONSOLE_STATUS+0x740>
    8000771c:	00006797          	auipc	a5,0x6
    80007720:	8c07a623          	sw	zero,-1844(a5) # 8000cfe8 <pr+0x18>
    80007724:	00000097          	auipc	ra,0x0
    80007728:	034080e7          	jalr	52(ra) # 80007758 <__printf>
    8000772c:	00048513          	mv	a0,s1
    80007730:	00000097          	auipc	ra,0x0
    80007734:	028080e7          	jalr	40(ra) # 80007758 <__printf>
    80007738:	00002517          	auipc	a0,0x2
    8000773c:	b8050513          	addi	a0,a0,-1152 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80007740:	00000097          	auipc	ra,0x0
    80007744:	018080e7          	jalr	24(ra) # 80007758 <__printf>
    80007748:	00100793          	li	a5,1
    8000774c:	00004717          	auipc	a4,0x4
    80007750:	56f72e23          	sw	a5,1404(a4) # 8000bcc8 <panicked>
    80007754:	0000006f          	j	80007754 <panic+0x58>

0000000080007758 <__printf>:
    80007758:	f3010113          	addi	sp,sp,-208
    8000775c:	08813023          	sd	s0,128(sp)
    80007760:	07313423          	sd	s3,104(sp)
    80007764:	09010413          	addi	s0,sp,144
    80007768:	05813023          	sd	s8,64(sp)
    8000776c:	08113423          	sd	ra,136(sp)
    80007770:	06913c23          	sd	s1,120(sp)
    80007774:	07213823          	sd	s2,112(sp)
    80007778:	07413023          	sd	s4,96(sp)
    8000777c:	05513c23          	sd	s5,88(sp)
    80007780:	05613823          	sd	s6,80(sp)
    80007784:	05713423          	sd	s7,72(sp)
    80007788:	03913c23          	sd	s9,56(sp)
    8000778c:	03a13823          	sd	s10,48(sp)
    80007790:	03b13423          	sd	s11,40(sp)
    80007794:	00006317          	auipc	t1,0x6
    80007798:	83c30313          	addi	t1,t1,-1988 # 8000cfd0 <pr>
    8000779c:	01832c03          	lw	s8,24(t1)
    800077a0:	00b43423          	sd	a1,8(s0)
    800077a4:	00c43823          	sd	a2,16(s0)
    800077a8:	00d43c23          	sd	a3,24(s0)
    800077ac:	02e43023          	sd	a4,32(s0)
    800077b0:	02f43423          	sd	a5,40(s0)
    800077b4:	03043823          	sd	a6,48(s0)
    800077b8:	03143c23          	sd	a7,56(s0)
    800077bc:	00050993          	mv	s3,a0
    800077c0:	4a0c1663          	bnez	s8,80007c6c <__printf+0x514>
    800077c4:	60098c63          	beqz	s3,80007ddc <__printf+0x684>
    800077c8:	0009c503          	lbu	a0,0(s3)
    800077cc:	00840793          	addi	a5,s0,8
    800077d0:	f6f43c23          	sd	a5,-136(s0)
    800077d4:	00000493          	li	s1,0
    800077d8:	22050063          	beqz	a0,800079f8 <__printf+0x2a0>
    800077dc:	00002a37          	lui	s4,0x2
    800077e0:	00018ab7          	lui	s5,0x18
    800077e4:	000f4b37          	lui	s6,0xf4
    800077e8:	00989bb7          	lui	s7,0x989
    800077ec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800077f0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800077f4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800077f8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800077fc:	00148c9b          	addiw	s9,s1,1
    80007800:	02500793          	li	a5,37
    80007804:	01998933          	add	s2,s3,s9
    80007808:	38f51263          	bne	a0,a5,80007b8c <__printf+0x434>
    8000780c:	00094783          	lbu	a5,0(s2)
    80007810:	00078c9b          	sext.w	s9,a5
    80007814:	1e078263          	beqz	a5,800079f8 <__printf+0x2a0>
    80007818:	0024849b          	addiw	s1,s1,2
    8000781c:	07000713          	li	a4,112
    80007820:	00998933          	add	s2,s3,s1
    80007824:	38e78a63          	beq	a5,a4,80007bb8 <__printf+0x460>
    80007828:	20f76863          	bltu	a4,a5,80007a38 <__printf+0x2e0>
    8000782c:	42a78863          	beq	a5,a0,80007c5c <__printf+0x504>
    80007830:	06400713          	li	a4,100
    80007834:	40e79663          	bne	a5,a4,80007c40 <__printf+0x4e8>
    80007838:	f7843783          	ld	a5,-136(s0)
    8000783c:	0007a603          	lw	a2,0(a5)
    80007840:	00878793          	addi	a5,a5,8
    80007844:	f6f43c23          	sd	a5,-136(s0)
    80007848:	42064a63          	bltz	a2,80007c7c <__printf+0x524>
    8000784c:	00a00713          	li	a4,10
    80007850:	02e677bb          	remuw	a5,a2,a4
    80007854:	00002d97          	auipc	s11,0x2
    80007858:	f24d8d93          	addi	s11,s11,-220 # 80009778 <digits>
    8000785c:	00900593          	li	a1,9
    80007860:	0006051b          	sext.w	a0,a2
    80007864:	00000c93          	li	s9,0
    80007868:	02079793          	slli	a5,a5,0x20
    8000786c:	0207d793          	srli	a5,a5,0x20
    80007870:	00fd87b3          	add	a5,s11,a5
    80007874:	0007c783          	lbu	a5,0(a5)
    80007878:	02e656bb          	divuw	a3,a2,a4
    8000787c:	f8f40023          	sb	a5,-128(s0)
    80007880:	14c5d863          	bge	a1,a2,800079d0 <__printf+0x278>
    80007884:	06300593          	li	a1,99
    80007888:	00100c93          	li	s9,1
    8000788c:	02e6f7bb          	remuw	a5,a3,a4
    80007890:	02079793          	slli	a5,a5,0x20
    80007894:	0207d793          	srli	a5,a5,0x20
    80007898:	00fd87b3          	add	a5,s11,a5
    8000789c:	0007c783          	lbu	a5,0(a5)
    800078a0:	02e6d73b          	divuw	a4,a3,a4
    800078a4:	f8f400a3          	sb	a5,-127(s0)
    800078a8:	12a5f463          	bgeu	a1,a0,800079d0 <__printf+0x278>
    800078ac:	00a00693          	li	a3,10
    800078b0:	00900593          	li	a1,9
    800078b4:	02d777bb          	remuw	a5,a4,a3
    800078b8:	02079793          	slli	a5,a5,0x20
    800078bc:	0207d793          	srli	a5,a5,0x20
    800078c0:	00fd87b3          	add	a5,s11,a5
    800078c4:	0007c503          	lbu	a0,0(a5)
    800078c8:	02d757bb          	divuw	a5,a4,a3
    800078cc:	f8a40123          	sb	a0,-126(s0)
    800078d0:	48e5f263          	bgeu	a1,a4,80007d54 <__printf+0x5fc>
    800078d4:	06300513          	li	a0,99
    800078d8:	02d7f5bb          	remuw	a1,a5,a3
    800078dc:	02059593          	slli	a1,a1,0x20
    800078e0:	0205d593          	srli	a1,a1,0x20
    800078e4:	00bd85b3          	add	a1,s11,a1
    800078e8:	0005c583          	lbu	a1,0(a1)
    800078ec:	02d7d7bb          	divuw	a5,a5,a3
    800078f0:	f8b401a3          	sb	a1,-125(s0)
    800078f4:	48e57263          	bgeu	a0,a4,80007d78 <__printf+0x620>
    800078f8:	3e700513          	li	a0,999
    800078fc:	02d7f5bb          	remuw	a1,a5,a3
    80007900:	02059593          	slli	a1,a1,0x20
    80007904:	0205d593          	srli	a1,a1,0x20
    80007908:	00bd85b3          	add	a1,s11,a1
    8000790c:	0005c583          	lbu	a1,0(a1)
    80007910:	02d7d7bb          	divuw	a5,a5,a3
    80007914:	f8b40223          	sb	a1,-124(s0)
    80007918:	46e57663          	bgeu	a0,a4,80007d84 <__printf+0x62c>
    8000791c:	02d7f5bb          	remuw	a1,a5,a3
    80007920:	02059593          	slli	a1,a1,0x20
    80007924:	0205d593          	srli	a1,a1,0x20
    80007928:	00bd85b3          	add	a1,s11,a1
    8000792c:	0005c583          	lbu	a1,0(a1)
    80007930:	02d7d7bb          	divuw	a5,a5,a3
    80007934:	f8b402a3          	sb	a1,-123(s0)
    80007938:	46ea7863          	bgeu	s4,a4,80007da8 <__printf+0x650>
    8000793c:	02d7f5bb          	remuw	a1,a5,a3
    80007940:	02059593          	slli	a1,a1,0x20
    80007944:	0205d593          	srli	a1,a1,0x20
    80007948:	00bd85b3          	add	a1,s11,a1
    8000794c:	0005c583          	lbu	a1,0(a1)
    80007950:	02d7d7bb          	divuw	a5,a5,a3
    80007954:	f8b40323          	sb	a1,-122(s0)
    80007958:	3eeaf863          	bgeu	s5,a4,80007d48 <__printf+0x5f0>
    8000795c:	02d7f5bb          	remuw	a1,a5,a3
    80007960:	02059593          	slli	a1,a1,0x20
    80007964:	0205d593          	srli	a1,a1,0x20
    80007968:	00bd85b3          	add	a1,s11,a1
    8000796c:	0005c583          	lbu	a1,0(a1)
    80007970:	02d7d7bb          	divuw	a5,a5,a3
    80007974:	f8b403a3          	sb	a1,-121(s0)
    80007978:	42eb7e63          	bgeu	s6,a4,80007db4 <__printf+0x65c>
    8000797c:	02d7f5bb          	remuw	a1,a5,a3
    80007980:	02059593          	slli	a1,a1,0x20
    80007984:	0205d593          	srli	a1,a1,0x20
    80007988:	00bd85b3          	add	a1,s11,a1
    8000798c:	0005c583          	lbu	a1,0(a1)
    80007990:	02d7d7bb          	divuw	a5,a5,a3
    80007994:	f8b40423          	sb	a1,-120(s0)
    80007998:	42ebfc63          	bgeu	s7,a4,80007dd0 <__printf+0x678>
    8000799c:	02079793          	slli	a5,a5,0x20
    800079a0:	0207d793          	srli	a5,a5,0x20
    800079a4:	00fd8db3          	add	s11,s11,a5
    800079a8:	000dc703          	lbu	a4,0(s11)
    800079ac:	00a00793          	li	a5,10
    800079b0:	00900c93          	li	s9,9
    800079b4:	f8e404a3          	sb	a4,-119(s0)
    800079b8:	00065c63          	bgez	a2,800079d0 <__printf+0x278>
    800079bc:	f9040713          	addi	a4,s0,-112
    800079c0:	00f70733          	add	a4,a4,a5
    800079c4:	02d00693          	li	a3,45
    800079c8:	fed70823          	sb	a3,-16(a4)
    800079cc:	00078c93          	mv	s9,a5
    800079d0:	f8040793          	addi	a5,s0,-128
    800079d4:	01978cb3          	add	s9,a5,s9
    800079d8:	f7f40d13          	addi	s10,s0,-129
    800079dc:	000cc503          	lbu	a0,0(s9)
    800079e0:	fffc8c93          	addi	s9,s9,-1
    800079e4:	00000097          	auipc	ra,0x0
    800079e8:	b90080e7          	jalr	-1136(ra) # 80007574 <consputc>
    800079ec:	ffac98e3          	bne	s9,s10,800079dc <__printf+0x284>
    800079f0:	00094503          	lbu	a0,0(s2)
    800079f4:	e00514e3          	bnez	a0,800077fc <__printf+0xa4>
    800079f8:	1a0c1663          	bnez	s8,80007ba4 <__printf+0x44c>
    800079fc:	08813083          	ld	ra,136(sp)
    80007a00:	08013403          	ld	s0,128(sp)
    80007a04:	07813483          	ld	s1,120(sp)
    80007a08:	07013903          	ld	s2,112(sp)
    80007a0c:	06813983          	ld	s3,104(sp)
    80007a10:	06013a03          	ld	s4,96(sp)
    80007a14:	05813a83          	ld	s5,88(sp)
    80007a18:	05013b03          	ld	s6,80(sp)
    80007a1c:	04813b83          	ld	s7,72(sp)
    80007a20:	04013c03          	ld	s8,64(sp)
    80007a24:	03813c83          	ld	s9,56(sp)
    80007a28:	03013d03          	ld	s10,48(sp)
    80007a2c:	02813d83          	ld	s11,40(sp)
    80007a30:	0d010113          	addi	sp,sp,208
    80007a34:	00008067          	ret
    80007a38:	07300713          	li	a4,115
    80007a3c:	1ce78a63          	beq	a5,a4,80007c10 <__printf+0x4b8>
    80007a40:	07800713          	li	a4,120
    80007a44:	1ee79e63          	bne	a5,a4,80007c40 <__printf+0x4e8>
    80007a48:	f7843783          	ld	a5,-136(s0)
    80007a4c:	0007a703          	lw	a4,0(a5)
    80007a50:	00878793          	addi	a5,a5,8
    80007a54:	f6f43c23          	sd	a5,-136(s0)
    80007a58:	28074263          	bltz	a4,80007cdc <__printf+0x584>
    80007a5c:	00002d97          	auipc	s11,0x2
    80007a60:	d1cd8d93          	addi	s11,s11,-740 # 80009778 <digits>
    80007a64:	00f77793          	andi	a5,a4,15
    80007a68:	00fd87b3          	add	a5,s11,a5
    80007a6c:	0007c683          	lbu	a3,0(a5)
    80007a70:	00f00613          	li	a2,15
    80007a74:	0007079b          	sext.w	a5,a4
    80007a78:	f8d40023          	sb	a3,-128(s0)
    80007a7c:	0047559b          	srliw	a1,a4,0x4
    80007a80:	0047569b          	srliw	a3,a4,0x4
    80007a84:	00000c93          	li	s9,0
    80007a88:	0ee65063          	bge	a2,a4,80007b68 <__printf+0x410>
    80007a8c:	00f6f693          	andi	a3,a3,15
    80007a90:	00dd86b3          	add	a3,s11,a3
    80007a94:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007a98:	0087d79b          	srliw	a5,a5,0x8
    80007a9c:	00100c93          	li	s9,1
    80007aa0:	f8d400a3          	sb	a3,-127(s0)
    80007aa4:	0cb67263          	bgeu	a2,a1,80007b68 <__printf+0x410>
    80007aa8:	00f7f693          	andi	a3,a5,15
    80007aac:	00dd86b3          	add	a3,s11,a3
    80007ab0:	0006c583          	lbu	a1,0(a3)
    80007ab4:	00f00613          	li	a2,15
    80007ab8:	0047d69b          	srliw	a3,a5,0x4
    80007abc:	f8b40123          	sb	a1,-126(s0)
    80007ac0:	0047d593          	srli	a1,a5,0x4
    80007ac4:	28f67e63          	bgeu	a2,a5,80007d60 <__printf+0x608>
    80007ac8:	00f6f693          	andi	a3,a3,15
    80007acc:	00dd86b3          	add	a3,s11,a3
    80007ad0:	0006c503          	lbu	a0,0(a3)
    80007ad4:	0087d813          	srli	a6,a5,0x8
    80007ad8:	0087d69b          	srliw	a3,a5,0x8
    80007adc:	f8a401a3          	sb	a0,-125(s0)
    80007ae0:	28b67663          	bgeu	a2,a1,80007d6c <__printf+0x614>
    80007ae4:	00f6f693          	andi	a3,a3,15
    80007ae8:	00dd86b3          	add	a3,s11,a3
    80007aec:	0006c583          	lbu	a1,0(a3)
    80007af0:	00c7d513          	srli	a0,a5,0xc
    80007af4:	00c7d69b          	srliw	a3,a5,0xc
    80007af8:	f8b40223          	sb	a1,-124(s0)
    80007afc:	29067a63          	bgeu	a2,a6,80007d90 <__printf+0x638>
    80007b00:	00f6f693          	andi	a3,a3,15
    80007b04:	00dd86b3          	add	a3,s11,a3
    80007b08:	0006c583          	lbu	a1,0(a3)
    80007b0c:	0107d813          	srli	a6,a5,0x10
    80007b10:	0107d69b          	srliw	a3,a5,0x10
    80007b14:	f8b402a3          	sb	a1,-123(s0)
    80007b18:	28a67263          	bgeu	a2,a0,80007d9c <__printf+0x644>
    80007b1c:	00f6f693          	andi	a3,a3,15
    80007b20:	00dd86b3          	add	a3,s11,a3
    80007b24:	0006c683          	lbu	a3,0(a3)
    80007b28:	0147d79b          	srliw	a5,a5,0x14
    80007b2c:	f8d40323          	sb	a3,-122(s0)
    80007b30:	21067663          	bgeu	a2,a6,80007d3c <__printf+0x5e4>
    80007b34:	02079793          	slli	a5,a5,0x20
    80007b38:	0207d793          	srli	a5,a5,0x20
    80007b3c:	00fd8db3          	add	s11,s11,a5
    80007b40:	000dc683          	lbu	a3,0(s11)
    80007b44:	00800793          	li	a5,8
    80007b48:	00700c93          	li	s9,7
    80007b4c:	f8d403a3          	sb	a3,-121(s0)
    80007b50:	00075c63          	bgez	a4,80007b68 <__printf+0x410>
    80007b54:	f9040713          	addi	a4,s0,-112
    80007b58:	00f70733          	add	a4,a4,a5
    80007b5c:	02d00693          	li	a3,45
    80007b60:	fed70823          	sb	a3,-16(a4)
    80007b64:	00078c93          	mv	s9,a5
    80007b68:	f8040793          	addi	a5,s0,-128
    80007b6c:	01978cb3          	add	s9,a5,s9
    80007b70:	f7f40d13          	addi	s10,s0,-129
    80007b74:	000cc503          	lbu	a0,0(s9)
    80007b78:	fffc8c93          	addi	s9,s9,-1
    80007b7c:	00000097          	auipc	ra,0x0
    80007b80:	9f8080e7          	jalr	-1544(ra) # 80007574 <consputc>
    80007b84:	ff9d18e3          	bne	s10,s9,80007b74 <__printf+0x41c>
    80007b88:	0100006f          	j	80007b98 <__printf+0x440>
    80007b8c:	00000097          	auipc	ra,0x0
    80007b90:	9e8080e7          	jalr	-1560(ra) # 80007574 <consputc>
    80007b94:	000c8493          	mv	s1,s9
    80007b98:	00094503          	lbu	a0,0(s2)
    80007b9c:	c60510e3          	bnez	a0,800077fc <__printf+0xa4>
    80007ba0:	e40c0ee3          	beqz	s8,800079fc <__printf+0x2a4>
    80007ba4:	00005517          	auipc	a0,0x5
    80007ba8:	42c50513          	addi	a0,a0,1068 # 8000cfd0 <pr>
    80007bac:	00001097          	auipc	ra,0x1
    80007bb0:	94c080e7          	jalr	-1716(ra) # 800084f8 <release>
    80007bb4:	e49ff06f          	j	800079fc <__printf+0x2a4>
    80007bb8:	f7843783          	ld	a5,-136(s0)
    80007bbc:	03000513          	li	a0,48
    80007bc0:	01000d13          	li	s10,16
    80007bc4:	00878713          	addi	a4,a5,8
    80007bc8:	0007bc83          	ld	s9,0(a5)
    80007bcc:	f6e43c23          	sd	a4,-136(s0)
    80007bd0:	00000097          	auipc	ra,0x0
    80007bd4:	9a4080e7          	jalr	-1628(ra) # 80007574 <consputc>
    80007bd8:	07800513          	li	a0,120
    80007bdc:	00000097          	auipc	ra,0x0
    80007be0:	998080e7          	jalr	-1640(ra) # 80007574 <consputc>
    80007be4:	00002d97          	auipc	s11,0x2
    80007be8:	b94d8d93          	addi	s11,s11,-1132 # 80009778 <digits>
    80007bec:	03ccd793          	srli	a5,s9,0x3c
    80007bf0:	00fd87b3          	add	a5,s11,a5
    80007bf4:	0007c503          	lbu	a0,0(a5)
    80007bf8:	fffd0d1b          	addiw	s10,s10,-1
    80007bfc:	004c9c93          	slli	s9,s9,0x4
    80007c00:	00000097          	auipc	ra,0x0
    80007c04:	974080e7          	jalr	-1676(ra) # 80007574 <consputc>
    80007c08:	fe0d12e3          	bnez	s10,80007bec <__printf+0x494>
    80007c0c:	f8dff06f          	j	80007b98 <__printf+0x440>
    80007c10:	f7843783          	ld	a5,-136(s0)
    80007c14:	0007bc83          	ld	s9,0(a5)
    80007c18:	00878793          	addi	a5,a5,8
    80007c1c:	f6f43c23          	sd	a5,-136(s0)
    80007c20:	000c9a63          	bnez	s9,80007c34 <__printf+0x4dc>
    80007c24:	1080006f          	j	80007d2c <__printf+0x5d4>
    80007c28:	001c8c93          	addi	s9,s9,1
    80007c2c:	00000097          	auipc	ra,0x0
    80007c30:	948080e7          	jalr	-1720(ra) # 80007574 <consputc>
    80007c34:	000cc503          	lbu	a0,0(s9)
    80007c38:	fe0518e3          	bnez	a0,80007c28 <__printf+0x4d0>
    80007c3c:	f5dff06f          	j	80007b98 <__printf+0x440>
    80007c40:	02500513          	li	a0,37
    80007c44:	00000097          	auipc	ra,0x0
    80007c48:	930080e7          	jalr	-1744(ra) # 80007574 <consputc>
    80007c4c:	000c8513          	mv	a0,s9
    80007c50:	00000097          	auipc	ra,0x0
    80007c54:	924080e7          	jalr	-1756(ra) # 80007574 <consputc>
    80007c58:	f41ff06f          	j	80007b98 <__printf+0x440>
    80007c5c:	02500513          	li	a0,37
    80007c60:	00000097          	auipc	ra,0x0
    80007c64:	914080e7          	jalr	-1772(ra) # 80007574 <consputc>
    80007c68:	f31ff06f          	j	80007b98 <__printf+0x440>
    80007c6c:	00030513          	mv	a0,t1
    80007c70:	00000097          	auipc	ra,0x0
    80007c74:	7bc080e7          	jalr	1980(ra) # 8000842c <acquire>
    80007c78:	b4dff06f          	j	800077c4 <__printf+0x6c>
    80007c7c:	40c0053b          	negw	a0,a2
    80007c80:	00a00713          	li	a4,10
    80007c84:	02e576bb          	remuw	a3,a0,a4
    80007c88:	00002d97          	auipc	s11,0x2
    80007c8c:	af0d8d93          	addi	s11,s11,-1296 # 80009778 <digits>
    80007c90:	ff700593          	li	a1,-9
    80007c94:	02069693          	slli	a3,a3,0x20
    80007c98:	0206d693          	srli	a3,a3,0x20
    80007c9c:	00dd86b3          	add	a3,s11,a3
    80007ca0:	0006c683          	lbu	a3,0(a3)
    80007ca4:	02e557bb          	divuw	a5,a0,a4
    80007ca8:	f8d40023          	sb	a3,-128(s0)
    80007cac:	10b65e63          	bge	a2,a1,80007dc8 <__printf+0x670>
    80007cb0:	06300593          	li	a1,99
    80007cb4:	02e7f6bb          	remuw	a3,a5,a4
    80007cb8:	02069693          	slli	a3,a3,0x20
    80007cbc:	0206d693          	srli	a3,a3,0x20
    80007cc0:	00dd86b3          	add	a3,s11,a3
    80007cc4:	0006c683          	lbu	a3,0(a3)
    80007cc8:	02e7d73b          	divuw	a4,a5,a4
    80007ccc:	00200793          	li	a5,2
    80007cd0:	f8d400a3          	sb	a3,-127(s0)
    80007cd4:	bca5ece3          	bltu	a1,a0,800078ac <__printf+0x154>
    80007cd8:	ce5ff06f          	j	800079bc <__printf+0x264>
    80007cdc:	40e007bb          	negw	a5,a4
    80007ce0:	00002d97          	auipc	s11,0x2
    80007ce4:	a98d8d93          	addi	s11,s11,-1384 # 80009778 <digits>
    80007ce8:	00f7f693          	andi	a3,a5,15
    80007cec:	00dd86b3          	add	a3,s11,a3
    80007cf0:	0006c583          	lbu	a1,0(a3)
    80007cf4:	ff100613          	li	a2,-15
    80007cf8:	0047d69b          	srliw	a3,a5,0x4
    80007cfc:	f8b40023          	sb	a1,-128(s0)
    80007d00:	0047d59b          	srliw	a1,a5,0x4
    80007d04:	0ac75e63          	bge	a4,a2,80007dc0 <__printf+0x668>
    80007d08:	00f6f693          	andi	a3,a3,15
    80007d0c:	00dd86b3          	add	a3,s11,a3
    80007d10:	0006c603          	lbu	a2,0(a3)
    80007d14:	00f00693          	li	a3,15
    80007d18:	0087d79b          	srliw	a5,a5,0x8
    80007d1c:	f8c400a3          	sb	a2,-127(s0)
    80007d20:	d8b6e4e3          	bltu	a3,a1,80007aa8 <__printf+0x350>
    80007d24:	00200793          	li	a5,2
    80007d28:	e2dff06f          	j	80007b54 <__printf+0x3fc>
    80007d2c:	00002c97          	auipc	s9,0x2
    80007d30:	a2cc8c93          	addi	s9,s9,-1492 # 80009758 <CONSOLE_STATUS+0x748>
    80007d34:	02800513          	li	a0,40
    80007d38:	ef1ff06f          	j	80007c28 <__printf+0x4d0>
    80007d3c:	00700793          	li	a5,7
    80007d40:	00600c93          	li	s9,6
    80007d44:	e0dff06f          	j	80007b50 <__printf+0x3f8>
    80007d48:	00700793          	li	a5,7
    80007d4c:	00600c93          	li	s9,6
    80007d50:	c69ff06f          	j	800079b8 <__printf+0x260>
    80007d54:	00300793          	li	a5,3
    80007d58:	00200c93          	li	s9,2
    80007d5c:	c5dff06f          	j	800079b8 <__printf+0x260>
    80007d60:	00300793          	li	a5,3
    80007d64:	00200c93          	li	s9,2
    80007d68:	de9ff06f          	j	80007b50 <__printf+0x3f8>
    80007d6c:	00400793          	li	a5,4
    80007d70:	00300c93          	li	s9,3
    80007d74:	dddff06f          	j	80007b50 <__printf+0x3f8>
    80007d78:	00400793          	li	a5,4
    80007d7c:	00300c93          	li	s9,3
    80007d80:	c39ff06f          	j	800079b8 <__printf+0x260>
    80007d84:	00500793          	li	a5,5
    80007d88:	00400c93          	li	s9,4
    80007d8c:	c2dff06f          	j	800079b8 <__printf+0x260>
    80007d90:	00500793          	li	a5,5
    80007d94:	00400c93          	li	s9,4
    80007d98:	db9ff06f          	j	80007b50 <__printf+0x3f8>
    80007d9c:	00600793          	li	a5,6
    80007da0:	00500c93          	li	s9,5
    80007da4:	dadff06f          	j	80007b50 <__printf+0x3f8>
    80007da8:	00600793          	li	a5,6
    80007dac:	00500c93          	li	s9,5
    80007db0:	c09ff06f          	j	800079b8 <__printf+0x260>
    80007db4:	00800793          	li	a5,8
    80007db8:	00700c93          	li	s9,7
    80007dbc:	bfdff06f          	j	800079b8 <__printf+0x260>
    80007dc0:	00100793          	li	a5,1
    80007dc4:	d91ff06f          	j	80007b54 <__printf+0x3fc>
    80007dc8:	00100793          	li	a5,1
    80007dcc:	bf1ff06f          	j	800079bc <__printf+0x264>
    80007dd0:	00900793          	li	a5,9
    80007dd4:	00800c93          	li	s9,8
    80007dd8:	be1ff06f          	j	800079b8 <__printf+0x260>
    80007ddc:	00002517          	auipc	a0,0x2
    80007de0:	98450513          	addi	a0,a0,-1660 # 80009760 <CONSOLE_STATUS+0x750>
    80007de4:	00000097          	auipc	ra,0x0
    80007de8:	918080e7          	jalr	-1768(ra) # 800076fc <panic>

0000000080007dec <printfinit>:
    80007dec:	fe010113          	addi	sp,sp,-32
    80007df0:	00813823          	sd	s0,16(sp)
    80007df4:	00913423          	sd	s1,8(sp)
    80007df8:	00113c23          	sd	ra,24(sp)
    80007dfc:	02010413          	addi	s0,sp,32
    80007e00:	00005497          	auipc	s1,0x5
    80007e04:	1d048493          	addi	s1,s1,464 # 8000cfd0 <pr>
    80007e08:	00048513          	mv	a0,s1
    80007e0c:	00002597          	auipc	a1,0x2
    80007e10:	96458593          	addi	a1,a1,-1692 # 80009770 <CONSOLE_STATUS+0x760>
    80007e14:	00000097          	auipc	ra,0x0
    80007e18:	5f4080e7          	jalr	1524(ra) # 80008408 <initlock>
    80007e1c:	01813083          	ld	ra,24(sp)
    80007e20:	01013403          	ld	s0,16(sp)
    80007e24:	0004ac23          	sw	zero,24(s1)
    80007e28:	00813483          	ld	s1,8(sp)
    80007e2c:	02010113          	addi	sp,sp,32
    80007e30:	00008067          	ret

0000000080007e34 <uartinit>:
    80007e34:	ff010113          	addi	sp,sp,-16
    80007e38:	00813423          	sd	s0,8(sp)
    80007e3c:	01010413          	addi	s0,sp,16
    80007e40:	100007b7          	lui	a5,0x10000
    80007e44:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007e48:	f8000713          	li	a4,-128
    80007e4c:	00e781a3          	sb	a4,3(a5)
    80007e50:	00300713          	li	a4,3
    80007e54:	00e78023          	sb	a4,0(a5)
    80007e58:	000780a3          	sb	zero,1(a5)
    80007e5c:	00e781a3          	sb	a4,3(a5)
    80007e60:	00700693          	li	a3,7
    80007e64:	00d78123          	sb	a3,2(a5)
    80007e68:	00e780a3          	sb	a4,1(a5)
    80007e6c:	00813403          	ld	s0,8(sp)
    80007e70:	01010113          	addi	sp,sp,16
    80007e74:	00008067          	ret

0000000080007e78 <uartputc>:
    80007e78:	00004797          	auipc	a5,0x4
    80007e7c:	e507a783          	lw	a5,-432(a5) # 8000bcc8 <panicked>
    80007e80:	00078463          	beqz	a5,80007e88 <uartputc+0x10>
    80007e84:	0000006f          	j	80007e84 <uartputc+0xc>
    80007e88:	fd010113          	addi	sp,sp,-48
    80007e8c:	02813023          	sd	s0,32(sp)
    80007e90:	00913c23          	sd	s1,24(sp)
    80007e94:	01213823          	sd	s2,16(sp)
    80007e98:	01313423          	sd	s3,8(sp)
    80007e9c:	02113423          	sd	ra,40(sp)
    80007ea0:	03010413          	addi	s0,sp,48
    80007ea4:	00004917          	auipc	s2,0x4
    80007ea8:	e2c90913          	addi	s2,s2,-468 # 8000bcd0 <uart_tx_r>
    80007eac:	00093783          	ld	a5,0(s2)
    80007eb0:	00004497          	auipc	s1,0x4
    80007eb4:	e2848493          	addi	s1,s1,-472 # 8000bcd8 <uart_tx_w>
    80007eb8:	0004b703          	ld	a4,0(s1)
    80007ebc:	02078693          	addi	a3,a5,32
    80007ec0:	00050993          	mv	s3,a0
    80007ec4:	02e69c63          	bne	a3,a4,80007efc <uartputc+0x84>
    80007ec8:	00001097          	auipc	ra,0x1
    80007ecc:	834080e7          	jalr	-1996(ra) # 800086fc <push_on>
    80007ed0:	00093783          	ld	a5,0(s2)
    80007ed4:	0004b703          	ld	a4,0(s1)
    80007ed8:	02078793          	addi	a5,a5,32
    80007edc:	00e79463          	bne	a5,a4,80007ee4 <uartputc+0x6c>
    80007ee0:	0000006f          	j	80007ee0 <uartputc+0x68>
    80007ee4:	00001097          	auipc	ra,0x1
    80007ee8:	88c080e7          	jalr	-1908(ra) # 80008770 <pop_on>
    80007eec:	00093783          	ld	a5,0(s2)
    80007ef0:	0004b703          	ld	a4,0(s1)
    80007ef4:	02078693          	addi	a3,a5,32
    80007ef8:	fce688e3          	beq	a3,a4,80007ec8 <uartputc+0x50>
    80007efc:	01f77693          	andi	a3,a4,31
    80007f00:	00005597          	auipc	a1,0x5
    80007f04:	0f058593          	addi	a1,a1,240 # 8000cff0 <uart_tx_buf>
    80007f08:	00d586b3          	add	a3,a1,a3
    80007f0c:	00170713          	addi	a4,a4,1
    80007f10:	01368023          	sb	s3,0(a3)
    80007f14:	00e4b023          	sd	a4,0(s1)
    80007f18:	10000637          	lui	a2,0x10000
    80007f1c:	02f71063          	bne	a4,a5,80007f3c <uartputc+0xc4>
    80007f20:	0340006f          	j	80007f54 <uartputc+0xdc>
    80007f24:	00074703          	lbu	a4,0(a4)
    80007f28:	00f93023          	sd	a5,0(s2)
    80007f2c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007f30:	00093783          	ld	a5,0(s2)
    80007f34:	0004b703          	ld	a4,0(s1)
    80007f38:	00f70e63          	beq	a4,a5,80007f54 <uartputc+0xdc>
    80007f3c:	00564683          	lbu	a3,5(a2)
    80007f40:	01f7f713          	andi	a4,a5,31
    80007f44:	00e58733          	add	a4,a1,a4
    80007f48:	0206f693          	andi	a3,a3,32
    80007f4c:	00178793          	addi	a5,a5,1
    80007f50:	fc069ae3          	bnez	a3,80007f24 <uartputc+0xac>
    80007f54:	02813083          	ld	ra,40(sp)
    80007f58:	02013403          	ld	s0,32(sp)
    80007f5c:	01813483          	ld	s1,24(sp)
    80007f60:	01013903          	ld	s2,16(sp)
    80007f64:	00813983          	ld	s3,8(sp)
    80007f68:	03010113          	addi	sp,sp,48
    80007f6c:	00008067          	ret

0000000080007f70 <uartputc_sync>:
    80007f70:	ff010113          	addi	sp,sp,-16
    80007f74:	00813423          	sd	s0,8(sp)
    80007f78:	01010413          	addi	s0,sp,16
    80007f7c:	00004717          	auipc	a4,0x4
    80007f80:	d4c72703          	lw	a4,-692(a4) # 8000bcc8 <panicked>
    80007f84:	02071663          	bnez	a4,80007fb0 <uartputc_sync+0x40>
    80007f88:	00050793          	mv	a5,a0
    80007f8c:	100006b7          	lui	a3,0x10000
    80007f90:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007f94:	02077713          	andi	a4,a4,32
    80007f98:	fe070ce3          	beqz	a4,80007f90 <uartputc_sync+0x20>
    80007f9c:	0ff7f793          	andi	a5,a5,255
    80007fa0:	00f68023          	sb	a5,0(a3)
    80007fa4:	00813403          	ld	s0,8(sp)
    80007fa8:	01010113          	addi	sp,sp,16
    80007fac:	00008067          	ret
    80007fb0:	0000006f          	j	80007fb0 <uartputc_sync+0x40>

0000000080007fb4 <uartstart>:
    80007fb4:	ff010113          	addi	sp,sp,-16
    80007fb8:	00813423          	sd	s0,8(sp)
    80007fbc:	01010413          	addi	s0,sp,16
    80007fc0:	00004617          	auipc	a2,0x4
    80007fc4:	d1060613          	addi	a2,a2,-752 # 8000bcd0 <uart_tx_r>
    80007fc8:	00004517          	auipc	a0,0x4
    80007fcc:	d1050513          	addi	a0,a0,-752 # 8000bcd8 <uart_tx_w>
    80007fd0:	00063783          	ld	a5,0(a2)
    80007fd4:	00053703          	ld	a4,0(a0)
    80007fd8:	04f70263          	beq	a4,a5,8000801c <uartstart+0x68>
    80007fdc:	100005b7          	lui	a1,0x10000
    80007fe0:	00005817          	auipc	a6,0x5
    80007fe4:	01080813          	addi	a6,a6,16 # 8000cff0 <uart_tx_buf>
    80007fe8:	01c0006f          	j	80008004 <uartstart+0x50>
    80007fec:	0006c703          	lbu	a4,0(a3)
    80007ff0:	00f63023          	sd	a5,0(a2)
    80007ff4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007ff8:	00063783          	ld	a5,0(a2)
    80007ffc:	00053703          	ld	a4,0(a0)
    80008000:	00f70e63          	beq	a4,a5,8000801c <uartstart+0x68>
    80008004:	01f7f713          	andi	a4,a5,31
    80008008:	00e806b3          	add	a3,a6,a4
    8000800c:	0055c703          	lbu	a4,5(a1)
    80008010:	00178793          	addi	a5,a5,1
    80008014:	02077713          	andi	a4,a4,32
    80008018:	fc071ae3          	bnez	a4,80007fec <uartstart+0x38>
    8000801c:	00813403          	ld	s0,8(sp)
    80008020:	01010113          	addi	sp,sp,16
    80008024:	00008067          	ret

0000000080008028 <uartgetc>:
    80008028:	ff010113          	addi	sp,sp,-16
    8000802c:	00813423          	sd	s0,8(sp)
    80008030:	01010413          	addi	s0,sp,16
    80008034:	10000737          	lui	a4,0x10000
    80008038:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000803c:	0017f793          	andi	a5,a5,1
    80008040:	00078c63          	beqz	a5,80008058 <uartgetc+0x30>
    80008044:	00074503          	lbu	a0,0(a4)
    80008048:	0ff57513          	andi	a0,a0,255
    8000804c:	00813403          	ld	s0,8(sp)
    80008050:	01010113          	addi	sp,sp,16
    80008054:	00008067          	ret
    80008058:	fff00513          	li	a0,-1
    8000805c:	ff1ff06f          	j	8000804c <uartgetc+0x24>

0000000080008060 <uartintr>:
    80008060:	100007b7          	lui	a5,0x10000
    80008064:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008068:	0017f793          	andi	a5,a5,1
    8000806c:	0a078463          	beqz	a5,80008114 <uartintr+0xb4>
    80008070:	fe010113          	addi	sp,sp,-32
    80008074:	00813823          	sd	s0,16(sp)
    80008078:	00913423          	sd	s1,8(sp)
    8000807c:	00113c23          	sd	ra,24(sp)
    80008080:	02010413          	addi	s0,sp,32
    80008084:	100004b7          	lui	s1,0x10000
    80008088:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000808c:	0ff57513          	andi	a0,a0,255
    80008090:	fffff097          	auipc	ra,0xfffff
    80008094:	534080e7          	jalr	1332(ra) # 800075c4 <consoleintr>
    80008098:	0054c783          	lbu	a5,5(s1)
    8000809c:	0017f793          	andi	a5,a5,1
    800080a0:	fe0794e3          	bnez	a5,80008088 <uartintr+0x28>
    800080a4:	00004617          	auipc	a2,0x4
    800080a8:	c2c60613          	addi	a2,a2,-980 # 8000bcd0 <uart_tx_r>
    800080ac:	00004517          	auipc	a0,0x4
    800080b0:	c2c50513          	addi	a0,a0,-980 # 8000bcd8 <uart_tx_w>
    800080b4:	00063783          	ld	a5,0(a2)
    800080b8:	00053703          	ld	a4,0(a0)
    800080bc:	04f70263          	beq	a4,a5,80008100 <uartintr+0xa0>
    800080c0:	100005b7          	lui	a1,0x10000
    800080c4:	00005817          	auipc	a6,0x5
    800080c8:	f2c80813          	addi	a6,a6,-212 # 8000cff0 <uart_tx_buf>
    800080cc:	01c0006f          	j	800080e8 <uartintr+0x88>
    800080d0:	0006c703          	lbu	a4,0(a3)
    800080d4:	00f63023          	sd	a5,0(a2)
    800080d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800080dc:	00063783          	ld	a5,0(a2)
    800080e0:	00053703          	ld	a4,0(a0)
    800080e4:	00f70e63          	beq	a4,a5,80008100 <uartintr+0xa0>
    800080e8:	01f7f713          	andi	a4,a5,31
    800080ec:	00e806b3          	add	a3,a6,a4
    800080f0:	0055c703          	lbu	a4,5(a1)
    800080f4:	00178793          	addi	a5,a5,1
    800080f8:	02077713          	andi	a4,a4,32
    800080fc:	fc071ae3          	bnez	a4,800080d0 <uartintr+0x70>
    80008100:	01813083          	ld	ra,24(sp)
    80008104:	01013403          	ld	s0,16(sp)
    80008108:	00813483          	ld	s1,8(sp)
    8000810c:	02010113          	addi	sp,sp,32
    80008110:	00008067          	ret
    80008114:	00004617          	auipc	a2,0x4
    80008118:	bbc60613          	addi	a2,a2,-1092 # 8000bcd0 <uart_tx_r>
    8000811c:	00004517          	auipc	a0,0x4
    80008120:	bbc50513          	addi	a0,a0,-1092 # 8000bcd8 <uart_tx_w>
    80008124:	00063783          	ld	a5,0(a2)
    80008128:	00053703          	ld	a4,0(a0)
    8000812c:	04f70263          	beq	a4,a5,80008170 <uartintr+0x110>
    80008130:	100005b7          	lui	a1,0x10000
    80008134:	00005817          	auipc	a6,0x5
    80008138:	ebc80813          	addi	a6,a6,-324 # 8000cff0 <uart_tx_buf>
    8000813c:	01c0006f          	j	80008158 <uartintr+0xf8>
    80008140:	0006c703          	lbu	a4,0(a3)
    80008144:	00f63023          	sd	a5,0(a2)
    80008148:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000814c:	00063783          	ld	a5,0(a2)
    80008150:	00053703          	ld	a4,0(a0)
    80008154:	02f70063          	beq	a4,a5,80008174 <uartintr+0x114>
    80008158:	01f7f713          	andi	a4,a5,31
    8000815c:	00e806b3          	add	a3,a6,a4
    80008160:	0055c703          	lbu	a4,5(a1)
    80008164:	00178793          	addi	a5,a5,1
    80008168:	02077713          	andi	a4,a4,32
    8000816c:	fc071ae3          	bnez	a4,80008140 <uartintr+0xe0>
    80008170:	00008067          	ret
    80008174:	00008067          	ret

0000000080008178 <kinit>:
    80008178:	fc010113          	addi	sp,sp,-64
    8000817c:	02913423          	sd	s1,40(sp)
    80008180:	fffff7b7          	lui	a5,0xfffff
    80008184:	00006497          	auipc	s1,0x6
    80008188:	e8b48493          	addi	s1,s1,-373 # 8000e00f <end+0xfff>
    8000818c:	02813823          	sd	s0,48(sp)
    80008190:	01313c23          	sd	s3,24(sp)
    80008194:	00f4f4b3          	and	s1,s1,a5
    80008198:	02113c23          	sd	ra,56(sp)
    8000819c:	03213023          	sd	s2,32(sp)
    800081a0:	01413823          	sd	s4,16(sp)
    800081a4:	01513423          	sd	s5,8(sp)
    800081a8:	04010413          	addi	s0,sp,64
    800081ac:	000017b7          	lui	a5,0x1
    800081b0:	01100993          	li	s3,17
    800081b4:	00f487b3          	add	a5,s1,a5
    800081b8:	01b99993          	slli	s3,s3,0x1b
    800081bc:	06f9e063          	bltu	s3,a5,8000821c <kinit+0xa4>
    800081c0:	00005a97          	auipc	s5,0x5
    800081c4:	e50a8a93          	addi	s5,s5,-432 # 8000d010 <end>
    800081c8:	0754ec63          	bltu	s1,s5,80008240 <kinit+0xc8>
    800081cc:	0734fa63          	bgeu	s1,s3,80008240 <kinit+0xc8>
    800081d0:	00088a37          	lui	s4,0x88
    800081d4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800081d8:	00004917          	auipc	s2,0x4
    800081dc:	b0890913          	addi	s2,s2,-1272 # 8000bce0 <kmem>
    800081e0:	00ca1a13          	slli	s4,s4,0xc
    800081e4:	0140006f          	j	800081f8 <kinit+0x80>
    800081e8:	000017b7          	lui	a5,0x1
    800081ec:	00f484b3          	add	s1,s1,a5
    800081f0:	0554e863          	bltu	s1,s5,80008240 <kinit+0xc8>
    800081f4:	0534f663          	bgeu	s1,s3,80008240 <kinit+0xc8>
    800081f8:	00001637          	lui	a2,0x1
    800081fc:	00100593          	li	a1,1
    80008200:	00048513          	mv	a0,s1
    80008204:	00000097          	auipc	ra,0x0
    80008208:	5e4080e7          	jalr	1508(ra) # 800087e8 <__memset>
    8000820c:	00093783          	ld	a5,0(s2)
    80008210:	00f4b023          	sd	a5,0(s1)
    80008214:	00993023          	sd	s1,0(s2)
    80008218:	fd4498e3          	bne	s1,s4,800081e8 <kinit+0x70>
    8000821c:	03813083          	ld	ra,56(sp)
    80008220:	03013403          	ld	s0,48(sp)
    80008224:	02813483          	ld	s1,40(sp)
    80008228:	02013903          	ld	s2,32(sp)
    8000822c:	01813983          	ld	s3,24(sp)
    80008230:	01013a03          	ld	s4,16(sp)
    80008234:	00813a83          	ld	s5,8(sp)
    80008238:	04010113          	addi	sp,sp,64
    8000823c:	00008067          	ret
    80008240:	00001517          	auipc	a0,0x1
    80008244:	55050513          	addi	a0,a0,1360 # 80009790 <digits+0x18>
    80008248:	fffff097          	auipc	ra,0xfffff
    8000824c:	4b4080e7          	jalr	1204(ra) # 800076fc <panic>

0000000080008250 <freerange>:
    80008250:	fc010113          	addi	sp,sp,-64
    80008254:	000017b7          	lui	a5,0x1
    80008258:	02913423          	sd	s1,40(sp)
    8000825c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008260:	009504b3          	add	s1,a0,s1
    80008264:	fffff537          	lui	a0,0xfffff
    80008268:	02813823          	sd	s0,48(sp)
    8000826c:	02113c23          	sd	ra,56(sp)
    80008270:	03213023          	sd	s2,32(sp)
    80008274:	01313c23          	sd	s3,24(sp)
    80008278:	01413823          	sd	s4,16(sp)
    8000827c:	01513423          	sd	s5,8(sp)
    80008280:	01613023          	sd	s6,0(sp)
    80008284:	04010413          	addi	s0,sp,64
    80008288:	00a4f4b3          	and	s1,s1,a0
    8000828c:	00f487b3          	add	a5,s1,a5
    80008290:	06f5e463          	bltu	a1,a5,800082f8 <freerange+0xa8>
    80008294:	00005a97          	auipc	s5,0x5
    80008298:	d7ca8a93          	addi	s5,s5,-644 # 8000d010 <end>
    8000829c:	0954e263          	bltu	s1,s5,80008320 <freerange+0xd0>
    800082a0:	01100993          	li	s3,17
    800082a4:	01b99993          	slli	s3,s3,0x1b
    800082a8:	0734fc63          	bgeu	s1,s3,80008320 <freerange+0xd0>
    800082ac:	00058a13          	mv	s4,a1
    800082b0:	00004917          	auipc	s2,0x4
    800082b4:	a3090913          	addi	s2,s2,-1488 # 8000bce0 <kmem>
    800082b8:	00002b37          	lui	s6,0x2
    800082bc:	0140006f          	j	800082d0 <freerange+0x80>
    800082c0:	000017b7          	lui	a5,0x1
    800082c4:	00f484b3          	add	s1,s1,a5
    800082c8:	0554ec63          	bltu	s1,s5,80008320 <freerange+0xd0>
    800082cc:	0534fa63          	bgeu	s1,s3,80008320 <freerange+0xd0>
    800082d0:	00001637          	lui	a2,0x1
    800082d4:	00100593          	li	a1,1
    800082d8:	00048513          	mv	a0,s1
    800082dc:	00000097          	auipc	ra,0x0
    800082e0:	50c080e7          	jalr	1292(ra) # 800087e8 <__memset>
    800082e4:	00093703          	ld	a4,0(s2)
    800082e8:	016487b3          	add	a5,s1,s6
    800082ec:	00e4b023          	sd	a4,0(s1)
    800082f0:	00993023          	sd	s1,0(s2)
    800082f4:	fcfa76e3          	bgeu	s4,a5,800082c0 <freerange+0x70>
    800082f8:	03813083          	ld	ra,56(sp)
    800082fc:	03013403          	ld	s0,48(sp)
    80008300:	02813483          	ld	s1,40(sp)
    80008304:	02013903          	ld	s2,32(sp)
    80008308:	01813983          	ld	s3,24(sp)
    8000830c:	01013a03          	ld	s4,16(sp)
    80008310:	00813a83          	ld	s5,8(sp)
    80008314:	00013b03          	ld	s6,0(sp)
    80008318:	04010113          	addi	sp,sp,64
    8000831c:	00008067          	ret
    80008320:	00001517          	auipc	a0,0x1
    80008324:	47050513          	addi	a0,a0,1136 # 80009790 <digits+0x18>
    80008328:	fffff097          	auipc	ra,0xfffff
    8000832c:	3d4080e7          	jalr	980(ra) # 800076fc <panic>

0000000080008330 <kfree>:
    80008330:	fe010113          	addi	sp,sp,-32
    80008334:	00813823          	sd	s0,16(sp)
    80008338:	00113c23          	sd	ra,24(sp)
    8000833c:	00913423          	sd	s1,8(sp)
    80008340:	02010413          	addi	s0,sp,32
    80008344:	03451793          	slli	a5,a0,0x34
    80008348:	04079c63          	bnez	a5,800083a0 <kfree+0x70>
    8000834c:	00005797          	auipc	a5,0x5
    80008350:	cc478793          	addi	a5,a5,-828 # 8000d010 <end>
    80008354:	00050493          	mv	s1,a0
    80008358:	04f56463          	bltu	a0,a5,800083a0 <kfree+0x70>
    8000835c:	01100793          	li	a5,17
    80008360:	01b79793          	slli	a5,a5,0x1b
    80008364:	02f57e63          	bgeu	a0,a5,800083a0 <kfree+0x70>
    80008368:	00001637          	lui	a2,0x1
    8000836c:	00100593          	li	a1,1
    80008370:	00000097          	auipc	ra,0x0
    80008374:	478080e7          	jalr	1144(ra) # 800087e8 <__memset>
    80008378:	00004797          	auipc	a5,0x4
    8000837c:	96878793          	addi	a5,a5,-1688 # 8000bce0 <kmem>
    80008380:	0007b703          	ld	a4,0(a5)
    80008384:	01813083          	ld	ra,24(sp)
    80008388:	01013403          	ld	s0,16(sp)
    8000838c:	00e4b023          	sd	a4,0(s1)
    80008390:	0097b023          	sd	s1,0(a5)
    80008394:	00813483          	ld	s1,8(sp)
    80008398:	02010113          	addi	sp,sp,32
    8000839c:	00008067          	ret
    800083a0:	00001517          	auipc	a0,0x1
    800083a4:	3f050513          	addi	a0,a0,1008 # 80009790 <digits+0x18>
    800083a8:	fffff097          	auipc	ra,0xfffff
    800083ac:	354080e7          	jalr	852(ra) # 800076fc <panic>

00000000800083b0 <kalloc>:
    800083b0:	fe010113          	addi	sp,sp,-32
    800083b4:	00813823          	sd	s0,16(sp)
    800083b8:	00913423          	sd	s1,8(sp)
    800083bc:	00113c23          	sd	ra,24(sp)
    800083c0:	02010413          	addi	s0,sp,32
    800083c4:	00004797          	auipc	a5,0x4
    800083c8:	91c78793          	addi	a5,a5,-1764 # 8000bce0 <kmem>
    800083cc:	0007b483          	ld	s1,0(a5)
    800083d0:	02048063          	beqz	s1,800083f0 <kalloc+0x40>
    800083d4:	0004b703          	ld	a4,0(s1)
    800083d8:	00001637          	lui	a2,0x1
    800083dc:	00500593          	li	a1,5
    800083e0:	00048513          	mv	a0,s1
    800083e4:	00e7b023          	sd	a4,0(a5)
    800083e8:	00000097          	auipc	ra,0x0
    800083ec:	400080e7          	jalr	1024(ra) # 800087e8 <__memset>
    800083f0:	01813083          	ld	ra,24(sp)
    800083f4:	01013403          	ld	s0,16(sp)
    800083f8:	00048513          	mv	a0,s1
    800083fc:	00813483          	ld	s1,8(sp)
    80008400:	02010113          	addi	sp,sp,32
    80008404:	00008067          	ret

0000000080008408 <initlock>:
    80008408:	ff010113          	addi	sp,sp,-16
    8000840c:	00813423          	sd	s0,8(sp)
    80008410:	01010413          	addi	s0,sp,16
    80008414:	00813403          	ld	s0,8(sp)
    80008418:	00b53423          	sd	a1,8(a0)
    8000841c:	00052023          	sw	zero,0(a0)
    80008420:	00053823          	sd	zero,16(a0)
    80008424:	01010113          	addi	sp,sp,16
    80008428:	00008067          	ret

000000008000842c <acquire>:
    8000842c:	fe010113          	addi	sp,sp,-32
    80008430:	00813823          	sd	s0,16(sp)
    80008434:	00913423          	sd	s1,8(sp)
    80008438:	00113c23          	sd	ra,24(sp)
    8000843c:	01213023          	sd	s2,0(sp)
    80008440:	02010413          	addi	s0,sp,32
    80008444:	00050493          	mv	s1,a0
    80008448:	10002973          	csrr	s2,sstatus
    8000844c:	100027f3          	csrr	a5,sstatus
    80008450:	ffd7f793          	andi	a5,a5,-3
    80008454:	10079073          	csrw	sstatus,a5
    80008458:	fffff097          	auipc	ra,0xfffff
    8000845c:	8e0080e7          	jalr	-1824(ra) # 80006d38 <mycpu>
    80008460:	07852783          	lw	a5,120(a0)
    80008464:	06078e63          	beqz	a5,800084e0 <acquire+0xb4>
    80008468:	fffff097          	auipc	ra,0xfffff
    8000846c:	8d0080e7          	jalr	-1840(ra) # 80006d38 <mycpu>
    80008470:	07852783          	lw	a5,120(a0)
    80008474:	0004a703          	lw	a4,0(s1)
    80008478:	0017879b          	addiw	a5,a5,1
    8000847c:	06f52c23          	sw	a5,120(a0)
    80008480:	04071063          	bnez	a4,800084c0 <acquire+0x94>
    80008484:	00100713          	li	a4,1
    80008488:	00070793          	mv	a5,a4
    8000848c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008490:	0007879b          	sext.w	a5,a5
    80008494:	fe079ae3          	bnez	a5,80008488 <acquire+0x5c>
    80008498:	0ff0000f          	fence
    8000849c:	fffff097          	auipc	ra,0xfffff
    800084a0:	89c080e7          	jalr	-1892(ra) # 80006d38 <mycpu>
    800084a4:	01813083          	ld	ra,24(sp)
    800084a8:	01013403          	ld	s0,16(sp)
    800084ac:	00a4b823          	sd	a0,16(s1)
    800084b0:	00013903          	ld	s2,0(sp)
    800084b4:	00813483          	ld	s1,8(sp)
    800084b8:	02010113          	addi	sp,sp,32
    800084bc:	00008067          	ret
    800084c0:	0104b903          	ld	s2,16(s1)
    800084c4:	fffff097          	auipc	ra,0xfffff
    800084c8:	874080e7          	jalr	-1932(ra) # 80006d38 <mycpu>
    800084cc:	faa91ce3          	bne	s2,a0,80008484 <acquire+0x58>
    800084d0:	00001517          	auipc	a0,0x1
    800084d4:	2c850513          	addi	a0,a0,712 # 80009798 <digits+0x20>
    800084d8:	fffff097          	auipc	ra,0xfffff
    800084dc:	224080e7          	jalr	548(ra) # 800076fc <panic>
    800084e0:	00195913          	srli	s2,s2,0x1
    800084e4:	fffff097          	auipc	ra,0xfffff
    800084e8:	854080e7          	jalr	-1964(ra) # 80006d38 <mycpu>
    800084ec:	00197913          	andi	s2,s2,1
    800084f0:	07252e23          	sw	s2,124(a0)
    800084f4:	f75ff06f          	j	80008468 <acquire+0x3c>

00000000800084f8 <release>:
    800084f8:	fe010113          	addi	sp,sp,-32
    800084fc:	00813823          	sd	s0,16(sp)
    80008500:	00113c23          	sd	ra,24(sp)
    80008504:	00913423          	sd	s1,8(sp)
    80008508:	01213023          	sd	s2,0(sp)
    8000850c:	02010413          	addi	s0,sp,32
    80008510:	00052783          	lw	a5,0(a0)
    80008514:	00079a63          	bnez	a5,80008528 <release+0x30>
    80008518:	00001517          	auipc	a0,0x1
    8000851c:	28850513          	addi	a0,a0,648 # 800097a0 <digits+0x28>
    80008520:	fffff097          	auipc	ra,0xfffff
    80008524:	1dc080e7          	jalr	476(ra) # 800076fc <panic>
    80008528:	01053903          	ld	s2,16(a0)
    8000852c:	00050493          	mv	s1,a0
    80008530:	fffff097          	auipc	ra,0xfffff
    80008534:	808080e7          	jalr	-2040(ra) # 80006d38 <mycpu>
    80008538:	fea910e3          	bne	s2,a0,80008518 <release+0x20>
    8000853c:	0004b823          	sd	zero,16(s1)
    80008540:	0ff0000f          	fence
    80008544:	0f50000f          	fence	iorw,ow
    80008548:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000854c:	ffffe097          	auipc	ra,0xffffe
    80008550:	7ec080e7          	jalr	2028(ra) # 80006d38 <mycpu>
    80008554:	100027f3          	csrr	a5,sstatus
    80008558:	0027f793          	andi	a5,a5,2
    8000855c:	04079a63          	bnez	a5,800085b0 <release+0xb8>
    80008560:	07852783          	lw	a5,120(a0)
    80008564:	02f05e63          	blez	a5,800085a0 <release+0xa8>
    80008568:	fff7871b          	addiw	a4,a5,-1
    8000856c:	06e52c23          	sw	a4,120(a0)
    80008570:	00071c63          	bnez	a4,80008588 <release+0x90>
    80008574:	07c52783          	lw	a5,124(a0)
    80008578:	00078863          	beqz	a5,80008588 <release+0x90>
    8000857c:	100027f3          	csrr	a5,sstatus
    80008580:	0027e793          	ori	a5,a5,2
    80008584:	10079073          	csrw	sstatus,a5
    80008588:	01813083          	ld	ra,24(sp)
    8000858c:	01013403          	ld	s0,16(sp)
    80008590:	00813483          	ld	s1,8(sp)
    80008594:	00013903          	ld	s2,0(sp)
    80008598:	02010113          	addi	sp,sp,32
    8000859c:	00008067          	ret
    800085a0:	00001517          	auipc	a0,0x1
    800085a4:	22050513          	addi	a0,a0,544 # 800097c0 <digits+0x48>
    800085a8:	fffff097          	auipc	ra,0xfffff
    800085ac:	154080e7          	jalr	340(ra) # 800076fc <panic>
    800085b0:	00001517          	auipc	a0,0x1
    800085b4:	1f850513          	addi	a0,a0,504 # 800097a8 <digits+0x30>
    800085b8:	fffff097          	auipc	ra,0xfffff
    800085bc:	144080e7          	jalr	324(ra) # 800076fc <panic>

00000000800085c0 <holding>:
    800085c0:	00052783          	lw	a5,0(a0)
    800085c4:	00079663          	bnez	a5,800085d0 <holding+0x10>
    800085c8:	00000513          	li	a0,0
    800085cc:	00008067          	ret
    800085d0:	fe010113          	addi	sp,sp,-32
    800085d4:	00813823          	sd	s0,16(sp)
    800085d8:	00913423          	sd	s1,8(sp)
    800085dc:	00113c23          	sd	ra,24(sp)
    800085e0:	02010413          	addi	s0,sp,32
    800085e4:	01053483          	ld	s1,16(a0)
    800085e8:	ffffe097          	auipc	ra,0xffffe
    800085ec:	750080e7          	jalr	1872(ra) # 80006d38 <mycpu>
    800085f0:	01813083          	ld	ra,24(sp)
    800085f4:	01013403          	ld	s0,16(sp)
    800085f8:	40a48533          	sub	a0,s1,a0
    800085fc:	00153513          	seqz	a0,a0
    80008600:	00813483          	ld	s1,8(sp)
    80008604:	02010113          	addi	sp,sp,32
    80008608:	00008067          	ret

000000008000860c <push_off>:
    8000860c:	fe010113          	addi	sp,sp,-32
    80008610:	00813823          	sd	s0,16(sp)
    80008614:	00113c23          	sd	ra,24(sp)
    80008618:	00913423          	sd	s1,8(sp)
    8000861c:	02010413          	addi	s0,sp,32
    80008620:	100024f3          	csrr	s1,sstatus
    80008624:	100027f3          	csrr	a5,sstatus
    80008628:	ffd7f793          	andi	a5,a5,-3
    8000862c:	10079073          	csrw	sstatus,a5
    80008630:	ffffe097          	auipc	ra,0xffffe
    80008634:	708080e7          	jalr	1800(ra) # 80006d38 <mycpu>
    80008638:	07852783          	lw	a5,120(a0)
    8000863c:	02078663          	beqz	a5,80008668 <push_off+0x5c>
    80008640:	ffffe097          	auipc	ra,0xffffe
    80008644:	6f8080e7          	jalr	1784(ra) # 80006d38 <mycpu>
    80008648:	07852783          	lw	a5,120(a0)
    8000864c:	01813083          	ld	ra,24(sp)
    80008650:	01013403          	ld	s0,16(sp)
    80008654:	0017879b          	addiw	a5,a5,1
    80008658:	06f52c23          	sw	a5,120(a0)
    8000865c:	00813483          	ld	s1,8(sp)
    80008660:	02010113          	addi	sp,sp,32
    80008664:	00008067          	ret
    80008668:	0014d493          	srli	s1,s1,0x1
    8000866c:	ffffe097          	auipc	ra,0xffffe
    80008670:	6cc080e7          	jalr	1740(ra) # 80006d38 <mycpu>
    80008674:	0014f493          	andi	s1,s1,1
    80008678:	06952e23          	sw	s1,124(a0)
    8000867c:	fc5ff06f          	j	80008640 <push_off+0x34>

0000000080008680 <pop_off>:
    80008680:	ff010113          	addi	sp,sp,-16
    80008684:	00813023          	sd	s0,0(sp)
    80008688:	00113423          	sd	ra,8(sp)
    8000868c:	01010413          	addi	s0,sp,16
    80008690:	ffffe097          	auipc	ra,0xffffe
    80008694:	6a8080e7          	jalr	1704(ra) # 80006d38 <mycpu>
    80008698:	100027f3          	csrr	a5,sstatus
    8000869c:	0027f793          	andi	a5,a5,2
    800086a0:	04079663          	bnez	a5,800086ec <pop_off+0x6c>
    800086a4:	07852783          	lw	a5,120(a0)
    800086a8:	02f05a63          	blez	a5,800086dc <pop_off+0x5c>
    800086ac:	fff7871b          	addiw	a4,a5,-1
    800086b0:	06e52c23          	sw	a4,120(a0)
    800086b4:	00071c63          	bnez	a4,800086cc <pop_off+0x4c>
    800086b8:	07c52783          	lw	a5,124(a0)
    800086bc:	00078863          	beqz	a5,800086cc <pop_off+0x4c>
    800086c0:	100027f3          	csrr	a5,sstatus
    800086c4:	0027e793          	ori	a5,a5,2
    800086c8:	10079073          	csrw	sstatus,a5
    800086cc:	00813083          	ld	ra,8(sp)
    800086d0:	00013403          	ld	s0,0(sp)
    800086d4:	01010113          	addi	sp,sp,16
    800086d8:	00008067          	ret
    800086dc:	00001517          	auipc	a0,0x1
    800086e0:	0e450513          	addi	a0,a0,228 # 800097c0 <digits+0x48>
    800086e4:	fffff097          	auipc	ra,0xfffff
    800086e8:	018080e7          	jalr	24(ra) # 800076fc <panic>
    800086ec:	00001517          	auipc	a0,0x1
    800086f0:	0bc50513          	addi	a0,a0,188 # 800097a8 <digits+0x30>
    800086f4:	fffff097          	auipc	ra,0xfffff
    800086f8:	008080e7          	jalr	8(ra) # 800076fc <panic>

00000000800086fc <push_on>:
    800086fc:	fe010113          	addi	sp,sp,-32
    80008700:	00813823          	sd	s0,16(sp)
    80008704:	00113c23          	sd	ra,24(sp)
    80008708:	00913423          	sd	s1,8(sp)
    8000870c:	02010413          	addi	s0,sp,32
    80008710:	100024f3          	csrr	s1,sstatus
    80008714:	100027f3          	csrr	a5,sstatus
    80008718:	0027e793          	ori	a5,a5,2
    8000871c:	10079073          	csrw	sstatus,a5
    80008720:	ffffe097          	auipc	ra,0xffffe
    80008724:	618080e7          	jalr	1560(ra) # 80006d38 <mycpu>
    80008728:	07852783          	lw	a5,120(a0)
    8000872c:	02078663          	beqz	a5,80008758 <push_on+0x5c>
    80008730:	ffffe097          	auipc	ra,0xffffe
    80008734:	608080e7          	jalr	1544(ra) # 80006d38 <mycpu>
    80008738:	07852783          	lw	a5,120(a0)
    8000873c:	01813083          	ld	ra,24(sp)
    80008740:	01013403          	ld	s0,16(sp)
    80008744:	0017879b          	addiw	a5,a5,1
    80008748:	06f52c23          	sw	a5,120(a0)
    8000874c:	00813483          	ld	s1,8(sp)
    80008750:	02010113          	addi	sp,sp,32
    80008754:	00008067          	ret
    80008758:	0014d493          	srli	s1,s1,0x1
    8000875c:	ffffe097          	auipc	ra,0xffffe
    80008760:	5dc080e7          	jalr	1500(ra) # 80006d38 <mycpu>
    80008764:	0014f493          	andi	s1,s1,1
    80008768:	06952e23          	sw	s1,124(a0)
    8000876c:	fc5ff06f          	j	80008730 <push_on+0x34>

0000000080008770 <pop_on>:
    80008770:	ff010113          	addi	sp,sp,-16
    80008774:	00813023          	sd	s0,0(sp)
    80008778:	00113423          	sd	ra,8(sp)
    8000877c:	01010413          	addi	s0,sp,16
    80008780:	ffffe097          	auipc	ra,0xffffe
    80008784:	5b8080e7          	jalr	1464(ra) # 80006d38 <mycpu>
    80008788:	100027f3          	csrr	a5,sstatus
    8000878c:	0027f793          	andi	a5,a5,2
    80008790:	04078463          	beqz	a5,800087d8 <pop_on+0x68>
    80008794:	07852783          	lw	a5,120(a0)
    80008798:	02f05863          	blez	a5,800087c8 <pop_on+0x58>
    8000879c:	fff7879b          	addiw	a5,a5,-1
    800087a0:	06f52c23          	sw	a5,120(a0)
    800087a4:	07853783          	ld	a5,120(a0)
    800087a8:	00079863          	bnez	a5,800087b8 <pop_on+0x48>
    800087ac:	100027f3          	csrr	a5,sstatus
    800087b0:	ffd7f793          	andi	a5,a5,-3
    800087b4:	10079073          	csrw	sstatus,a5
    800087b8:	00813083          	ld	ra,8(sp)
    800087bc:	00013403          	ld	s0,0(sp)
    800087c0:	01010113          	addi	sp,sp,16
    800087c4:	00008067          	ret
    800087c8:	00001517          	auipc	a0,0x1
    800087cc:	02050513          	addi	a0,a0,32 # 800097e8 <digits+0x70>
    800087d0:	fffff097          	auipc	ra,0xfffff
    800087d4:	f2c080e7          	jalr	-212(ra) # 800076fc <panic>
    800087d8:	00001517          	auipc	a0,0x1
    800087dc:	ff050513          	addi	a0,a0,-16 # 800097c8 <digits+0x50>
    800087e0:	fffff097          	auipc	ra,0xfffff
    800087e4:	f1c080e7          	jalr	-228(ra) # 800076fc <panic>

00000000800087e8 <__memset>:
    800087e8:	ff010113          	addi	sp,sp,-16
    800087ec:	00813423          	sd	s0,8(sp)
    800087f0:	01010413          	addi	s0,sp,16
    800087f4:	1a060e63          	beqz	a2,800089b0 <__memset+0x1c8>
    800087f8:	40a007b3          	neg	a5,a0
    800087fc:	0077f793          	andi	a5,a5,7
    80008800:	00778693          	addi	a3,a5,7
    80008804:	00b00813          	li	a6,11
    80008808:	0ff5f593          	andi	a1,a1,255
    8000880c:	fff6071b          	addiw	a4,a2,-1
    80008810:	1b06e663          	bltu	a3,a6,800089bc <__memset+0x1d4>
    80008814:	1cd76463          	bltu	a4,a3,800089dc <__memset+0x1f4>
    80008818:	1a078e63          	beqz	a5,800089d4 <__memset+0x1ec>
    8000881c:	00b50023          	sb	a1,0(a0)
    80008820:	00100713          	li	a4,1
    80008824:	1ae78463          	beq	a5,a4,800089cc <__memset+0x1e4>
    80008828:	00b500a3          	sb	a1,1(a0)
    8000882c:	00200713          	li	a4,2
    80008830:	1ae78a63          	beq	a5,a4,800089e4 <__memset+0x1fc>
    80008834:	00b50123          	sb	a1,2(a0)
    80008838:	00300713          	li	a4,3
    8000883c:	18e78463          	beq	a5,a4,800089c4 <__memset+0x1dc>
    80008840:	00b501a3          	sb	a1,3(a0)
    80008844:	00400713          	li	a4,4
    80008848:	1ae78263          	beq	a5,a4,800089ec <__memset+0x204>
    8000884c:	00b50223          	sb	a1,4(a0)
    80008850:	00500713          	li	a4,5
    80008854:	1ae78063          	beq	a5,a4,800089f4 <__memset+0x20c>
    80008858:	00b502a3          	sb	a1,5(a0)
    8000885c:	00700713          	li	a4,7
    80008860:	18e79e63          	bne	a5,a4,800089fc <__memset+0x214>
    80008864:	00b50323          	sb	a1,6(a0)
    80008868:	00700e93          	li	t4,7
    8000886c:	00859713          	slli	a4,a1,0x8
    80008870:	00e5e733          	or	a4,a1,a4
    80008874:	01059e13          	slli	t3,a1,0x10
    80008878:	01c76e33          	or	t3,a4,t3
    8000887c:	01859313          	slli	t1,a1,0x18
    80008880:	006e6333          	or	t1,t3,t1
    80008884:	02059893          	slli	a7,a1,0x20
    80008888:	40f60e3b          	subw	t3,a2,a5
    8000888c:	011368b3          	or	a7,t1,a7
    80008890:	02859813          	slli	a6,a1,0x28
    80008894:	0108e833          	or	a6,a7,a6
    80008898:	03059693          	slli	a3,a1,0x30
    8000889c:	003e589b          	srliw	a7,t3,0x3
    800088a0:	00d866b3          	or	a3,a6,a3
    800088a4:	03859713          	slli	a4,a1,0x38
    800088a8:	00389813          	slli	a6,a7,0x3
    800088ac:	00f507b3          	add	a5,a0,a5
    800088b0:	00e6e733          	or	a4,a3,a4
    800088b4:	000e089b          	sext.w	a7,t3
    800088b8:	00f806b3          	add	a3,a6,a5
    800088bc:	00e7b023          	sd	a4,0(a5)
    800088c0:	00878793          	addi	a5,a5,8
    800088c4:	fed79ce3          	bne	a5,a3,800088bc <__memset+0xd4>
    800088c8:	ff8e7793          	andi	a5,t3,-8
    800088cc:	0007871b          	sext.w	a4,a5
    800088d0:	01d787bb          	addw	a5,a5,t4
    800088d4:	0ce88e63          	beq	a7,a4,800089b0 <__memset+0x1c8>
    800088d8:	00f50733          	add	a4,a0,a5
    800088dc:	00b70023          	sb	a1,0(a4)
    800088e0:	0017871b          	addiw	a4,a5,1
    800088e4:	0cc77663          	bgeu	a4,a2,800089b0 <__memset+0x1c8>
    800088e8:	00e50733          	add	a4,a0,a4
    800088ec:	00b70023          	sb	a1,0(a4)
    800088f0:	0027871b          	addiw	a4,a5,2
    800088f4:	0ac77e63          	bgeu	a4,a2,800089b0 <__memset+0x1c8>
    800088f8:	00e50733          	add	a4,a0,a4
    800088fc:	00b70023          	sb	a1,0(a4)
    80008900:	0037871b          	addiw	a4,a5,3
    80008904:	0ac77663          	bgeu	a4,a2,800089b0 <__memset+0x1c8>
    80008908:	00e50733          	add	a4,a0,a4
    8000890c:	00b70023          	sb	a1,0(a4)
    80008910:	0047871b          	addiw	a4,a5,4
    80008914:	08c77e63          	bgeu	a4,a2,800089b0 <__memset+0x1c8>
    80008918:	00e50733          	add	a4,a0,a4
    8000891c:	00b70023          	sb	a1,0(a4)
    80008920:	0057871b          	addiw	a4,a5,5
    80008924:	08c77663          	bgeu	a4,a2,800089b0 <__memset+0x1c8>
    80008928:	00e50733          	add	a4,a0,a4
    8000892c:	00b70023          	sb	a1,0(a4)
    80008930:	0067871b          	addiw	a4,a5,6
    80008934:	06c77e63          	bgeu	a4,a2,800089b0 <__memset+0x1c8>
    80008938:	00e50733          	add	a4,a0,a4
    8000893c:	00b70023          	sb	a1,0(a4)
    80008940:	0077871b          	addiw	a4,a5,7
    80008944:	06c77663          	bgeu	a4,a2,800089b0 <__memset+0x1c8>
    80008948:	00e50733          	add	a4,a0,a4
    8000894c:	00b70023          	sb	a1,0(a4)
    80008950:	0087871b          	addiw	a4,a5,8
    80008954:	04c77e63          	bgeu	a4,a2,800089b0 <__memset+0x1c8>
    80008958:	00e50733          	add	a4,a0,a4
    8000895c:	00b70023          	sb	a1,0(a4)
    80008960:	0097871b          	addiw	a4,a5,9
    80008964:	04c77663          	bgeu	a4,a2,800089b0 <__memset+0x1c8>
    80008968:	00e50733          	add	a4,a0,a4
    8000896c:	00b70023          	sb	a1,0(a4)
    80008970:	00a7871b          	addiw	a4,a5,10
    80008974:	02c77e63          	bgeu	a4,a2,800089b0 <__memset+0x1c8>
    80008978:	00e50733          	add	a4,a0,a4
    8000897c:	00b70023          	sb	a1,0(a4)
    80008980:	00b7871b          	addiw	a4,a5,11
    80008984:	02c77663          	bgeu	a4,a2,800089b0 <__memset+0x1c8>
    80008988:	00e50733          	add	a4,a0,a4
    8000898c:	00b70023          	sb	a1,0(a4)
    80008990:	00c7871b          	addiw	a4,a5,12
    80008994:	00c77e63          	bgeu	a4,a2,800089b0 <__memset+0x1c8>
    80008998:	00e50733          	add	a4,a0,a4
    8000899c:	00b70023          	sb	a1,0(a4)
    800089a0:	00d7879b          	addiw	a5,a5,13
    800089a4:	00c7f663          	bgeu	a5,a2,800089b0 <__memset+0x1c8>
    800089a8:	00f507b3          	add	a5,a0,a5
    800089ac:	00b78023          	sb	a1,0(a5)
    800089b0:	00813403          	ld	s0,8(sp)
    800089b4:	01010113          	addi	sp,sp,16
    800089b8:	00008067          	ret
    800089bc:	00b00693          	li	a3,11
    800089c0:	e55ff06f          	j	80008814 <__memset+0x2c>
    800089c4:	00300e93          	li	t4,3
    800089c8:	ea5ff06f          	j	8000886c <__memset+0x84>
    800089cc:	00100e93          	li	t4,1
    800089d0:	e9dff06f          	j	8000886c <__memset+0x84>
    800089d4:	00000e93          	li	t4,0
    800089d8:	e95ff06f          	j	8000886c <__memset+0x84>
    800089dc:	00000793          	li	a5,0
    800089e0:	ef9ff06f          	j	800088d8 <__memset+0xf0>
    800089e4:	00200e93          	li	t4,2
    800089e8:	e85ff06f          	j	8000886c <__memset+0x84>
    800089ec:	00400e93          	li	t4,4
    800089f0:	e7dff06f          	j	8000886c <__memset+0x84>
    800089f4:	00500e93          	li	t4,5
    800089f8:	e75ff06f          	j	8000886c <__memset+0x84>
    800089fc:	00600e93          	li	t4,6
    80008a00:	e6dff06f          	j	8000886c <__memset+0x84>

0000000080008a04 <__memmove>:
    80008a04:	ff010113          	addi	sp,sp,-16
    80008a08:	00813423          	sd	s0,8(sp)
    80008a0c:	01010413          	addi	s0,sp,16
    80008a10:	0e060863          	beqz	a2,80008b00 <__memmove+0xfc>
    80008a14:	fff6069b          	addiw	a3,a2,-1
    80008a18:	0006881b          	sext.w	a6,a3
    80008a1c:	0ea5e863          	bltu	a1,a0,80008b0c <__memmove+0x108>
    80008a20:	00758713          	addi	a4,a1,7
    80008a24:	00a5e7b3          	or	a5,a1,a0
    80008a28:	40a70733          	sub	a4,a4,a0
    80008a2c:	0077f793          	andi	a5,a5,7
    80008a30:	00f73713          	sltiu	a4,a4,15
    80008a34:	00174713          	xori	a4,a4,1
    80008a38:	0017b793          	seqz	a5,a5
    80008a3c:	00e7f7b3          	and	a5,a5,a4
    80008a40:	10078863          	beqz	a5,80008b50 <__memmove+0x14c>
    80008a44:	00900793          	li	a5,9
    80008a48:	1107f463          	bgeu	a5,a6,80008b50 <__memmove+0x14c>
    80008a4c:	0036581b          	srliw	a6,a2,0x3
    80008a50:	fff8081b          	addiw	a6,a6,-1
    80008a54:	02081813          	slli	a6,a6,0x20
    80008a58:	01d85893          	srli	a7,a6,0x1d
    80008a5c:	00858813          	addi	a6,a1,8
    80008a60:	00058793          	mv	a5,a1
    80008a64:	00050713          	mv	a4,a0
    80008a68:	01088833          	add	a6,a7,a6
    80008a6c:	0007b883          	ld	a7,0(a5)
    80008a70:	00878793          	addi	a5,a5,8
    80008a74:	00870713          	addi	a4,a4,8
    80008a78:	ff173c23          	sd	a7,-8(a4)
    80008a7c:	ff0798e3          	bne	a5,a6,80008a6c <__memmove+0x68>
    80008a80:	ff867713          	andi	a4,a2,-8
    80008a84:	02071793          	slli	a5,a4,0x20
    80008a88:	0207d793          	srli	a5,a5,0x20
    80008a8c:	00f585b3          	add	a1,a1,a5
    80008a90:	40e686bb          	subw	a3,a3,a4
    80008a94:	00f507b3          	add	a5,a0,a5
    80008a98:	06e60463          	beq	a2,a4,80008b00 <__memmove+0xfc>
    80008a9c:	0005c703          	lbu	a4,0(a1)
    80008aa0:	00e78023          	sb	a4,0(a5)
    80008aa4:	04068e63          	beqz	a3,80008b00 <__memmove+0xfc>
    80008aa8:	0015c603          	lbu	a2,1(a1)
    80008aac:	00100713          	li	a4,1
    80008ab0:	00c780a3          	sb	a2,1(a5)
    80008ab4:	04e68663          	beq	a3,a4,80008b00 <__memmove+0xfc>
    80008ab8:	0025c603          	lbu	a2,2(a1)
    80008abc:	00200713          	li	a4,2
    80008ac0:	00c78123          	sb	a2,2(a5)
    80008ac4:	02e68e63          	beq	a3,a4,80008b00 <__memmove+0xfc>
    80008ac8:	0035c603          	lbu	a2,3(a1)
    80008acc:	00300713          	li	a4,3
    80008ad0:	00c781a3          	sb	a2,3(a5)
    80008ad4:	02e68663          	beq	a3,a4,80008b00 <__memmove+0xfc>
    80008ad8:	0045c603          	lbu	a2,4(a1)
    80008adc:	00400713          	li	a4,4
    80008ae0:	00c78223          	sb	a2,4(a5)
    80008ae4:	00e68e63          	beq	a3,a4,80008b00 <__memmove+0xfc>
    80008ae8:	0055c603          	lbu	a2,5(a1)
    80008aec:	00500713          	li	a4,5
    80008af0:	00c782a3          	sb	a2,5(a5)
    80008af4:	00e68663          	beq	a3,a4,80008b00 <__memmove+0xfc>
    80008af8:	0065c703          	lbu	a4,6(a1)
    80008afc:	00e78323          	sb	a4,6(a5)
    80008b00:	00813403          	ld	s0,8(sp)
    80008b04:	01010113          	addi	sp,sp,16
    80008b08:	00008067          	ret
    80008b0c:	02061713          	slli	a4,a2,0x20
    80008b10:	02075713          	srli	a4,a4,0x20
    80008b14:	00e587b3          	add	a5,a1,a4
    80008b18:	f0f574e3          	bgeu	a0,a5,80008a20 <__memmove+0x1c>
    80008b1c:	02069613          	slli	a2,a3,0x20
    80008b20:	02065613          	srli	a2,a2,0x20
    80008b24:	fff64613          	not	a2,a2
    80008b28:	00e50733          	add	a4,a0,a4
    80008b2c:	00c78633          	add	a2,a5,a2
    80008b30:	fff7c683          	lbu	a3,-1(a5)
    80008b34:	fff78793          	addi	a5,a5,-1
    80008b38:	fff70713          	addi	a4,a4,-1
    80008b3c:	00d70023          	sb	a3,0(a4)
    80008b40:	fec798e3          	bne	a5,a2,80008b30 <__memmove+0x12c>
    80008b44:	00813403          	ld	s0,8(sp)
    80008b48:	01010113          	addi	sp,sp,16
    80008b4c:	00008067          	ret
    80008b50:	02069713          	slli	a4,a3,0x20
    80008b54:	02075713          	srli	a4,a4,0x20
    80008b58:	00170713          	addi	a4,a4,1
    80008b5c:	00e50733          	add	a4,a0,a4
    80008b60:	00050793          	mv	a5,a0
    80008b64:	0005c683          	lbu	a3,0(a1)
    80008b68:	00178793          	addi	a5,a5,1
    80008b6c:	00158593          	addi	a1,a1,1
    80008b70:	fed78fa3          	sb	a3,-1(a5)
    80008b74:	fee798e3          	bne	a5,a4,80008b64 <__memmove+0x160>
    80008b78:	f89ff06f          	j	80008b00 <__memmove+0xfc>

0000000080008b7c <__putc>:
    80008b7c:	fe010113          	addi	sp,sp,-32
    80008b80:	00813823          	sd	s0,16(sp)
    80008b84:	00113c23          	sd	ra,24(sp)
    80008b88:	02010413          	addi	s0,sp,32
    80008b8c:	00050793          	mv	a5,a0
    80008b90:	fef40593          	addi	a1,s0,-17
    80008b94:	00100613          	li	a2,1
    80008b98:	00000513          	li	a0,0
    80008b9c:	fef407a3          	sb	a5,-17(s0)
    80008ba0:	fffff097          	auipc	ra,0xfffff
    80008ba4:	b3c080e7          	jalr	-1220(ra) # 800076dc <console_write>
    80008ba8:	01813083          	ld	ra,24(sp)
    80008bac:	01013403          	ld	s0,16(sp)
    80008bb0:	02010113          	addi	sp,sp,32
    80008bb4:	00008067          	ret

0000000080008bb8 <__getc>:
    80008bb8:	fe010113          	addi	sp,sp,-32
    80008bbc:	00813823          	sd	s0,16(sp)
    80008bc0:	00113c23          	sd	ra,24(sp)
    80008bc4:	02010413          	addi	s0,sp,32
    80008bc8:	fe840593          	addi	a1,s0,-24
    80008bcc:	00100613          	li	a2,1
    80008bd0:	00000513          	li	a0,0
    80008bd4:	fffff097          	auipc	ra,0xfffff
    80008bd8:	ae8080e7          	jalr	-1304(ra) # 800076bc <console_read>
    80008bdc:	fe844503          	lbu	a0,-24(s0)
    80008be0:	01813083          	ld	ra,24(sp)
    80008be4:	01013403          	ld	s0,16(sp)
    80008be8:	02010113          	addi	sp,sp,32
    80008bec:	00008067          	ret

0000000080008bf0 <console_handler>:
    80008bf0:	fe010113          	addi	sp,sp,-32
    80008bf4:	00813823          	sd	s0,16(sp)
    80008bf8:	00113c23          	sd	ra,24(sp)
    80008bfc:	00913423          	sd	s1,8(sp)
    80008c00:	02010413          	addi	s0,sp,32
    80008c04:	14202773          	csrr	a4,scause
    80008c08:	100027f3          	csrr	a5,sstatus
    80008c0c:	0027f793          	andi	a5,a5,2
    80008c10:	06079e63          	bnez	a5,80008c8c <console_handler+0x9c>
    80008c14:	00074c63          	bltz	a4,80008c2c <console_handler+0x3c>
    80008c18:	01813083          	ld	ra,24(sp)
    80008c1c:	01013403          	ld	s0,16(sp)
    80008c20:	00813483          	ld	s1,8(sp)
    80008c24:	02010113          	addi	sp,sp,32
    80008c28:	00008067          	ret
    80008c2c:	0ff77713          	andi	a4,a4,255
    80008c30:	00900793          	li	a5,9
    80008c34:	fef712e3          	bne	a4,a5,80008c18 <console_handler+0x28>
    80008c38:	ffffe097          	auipc	ra,0xffffe
    80008c3c:	6dc080e7          	jalr	1756(ra) # 80007314 <plic_claim>
    80008c40:	00a00793          	li	a5,10
    80008c44:	00050493          	mv	s1,a0
    80008c48:	02f50c63          	beq	a0,a5,80008c80 <console_handler+0x90>
    80008c4c:	fc0506e3          	beqz	a0,80008c18 <console_handler+0x28>
    80008c50:	00050593          	mv	a1,a0
    80008c54:	00001517          	auipc	a0,0x1
    80008c58:	a9c50513          	addi	a0,a0,-1380 # 800096f0 <CONSOLE_STATUS+0x6e0>
    80008c5c:	fffff097          	auipc	ra,0xfffff
    80008c60:	afc080e7          	jalr	-1284(ra) # 80007758 <__printf>
    80008c64:	01013403          	ld	s0,16(sp)
    80008c68:	01813083          	ld	ra,24(sp)
    80008c6c:	00048513          	mv	a0,s1
    80008c70:	00813483          	ld	s1,8(sp)
    80008c74:	02010113          	addi	sp,sp,32
    80008c78:	ffffe317          	auipc	t1,0xffffe
    80008c7c:	6d430067          	jr	1748(t1) # 8000734c <plic_complete>
    80008c80:	fffff097          	auipc	ra,0xfffff
    80008c84:	3e0080e7          	jalr	992(ra) # 80008060 <uartintr>
    80008c88:	fddff06f          	j	80008c64 <console_handler+0x74>
    80008c8c:	00001517          	auipc	a0,0x1
    80008c90:	b6450513          	addi	a0,a0,-1180 # 800097f0 <digits+0x78>
    80008c94:	fffff097          	auipc	ra,0xfffff
    80008c98:	a68080e7          	jalr	-1432(ra) # 800076fc <panic>
	...
