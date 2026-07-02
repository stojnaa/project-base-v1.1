
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	c1013103          	ld	sp,-1008(sp) # 8000bc10 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	291060ef          	jal	ra,80006aac <start>

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
    80001090:	31d000ef          	jal	ra,80001bac <handleSupervisorTrap>

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

0000000080001408 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    80001408:	ff010113          	addi	sp,sp,-16
    8000140c:	00113423          	sd	ra,8(sp)
    80001410:	00813023          	sd	s0,0(sp)
    80001414:	01010413          	addi	s0,sp,16
    80001418:	00050593          	mv	a1,a0
    return (int)doSyscall(0x22, (uint64)handle);
    8000141c:	00000713          	li	a4,0
    80001420:	00000693          	li	a3,0
    80001424:	00000613          	li	a2,0
    80001428:	02200513          	li	a0,34
    8000142c:	00000097          	auipc	ra,0x0
    80001430:	d98080e7          	jalr	-616(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001434:	0005051b          	sext.w	a0,a0
    80001438:	00813083          	ld	ra,8(sp)
    8000143c:	00013403          	ld	s0,0(sp)
    80001440:	01010113          	addi	sp,sp,16
    80001444:	00008067          	ret

0000000080001448 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    80001448:	ff010113          	addi	sp,sp,-16
    8000144c:	00113423          	sd	ra,8(sp)
    80001450:	00813023          	sd	s0,0(sp)
    80001454:	01010413          	addi	s0,sp,16
    80001458:	00050593          	mv	a1,a0
    return (int)doSyscall(0x23, (uint64)id);
    8000145c:	00000713          	li	a4,0
    80001460:	00000693          	li	a3,0
    80001464:	00000613          	li	a2,0
    80001468:	02300513          	li	a0,35
    8000146c:	00000097          	auipc	ra,0x0
    80001470:	d58080e7          	jalr	-680(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001474:	0005051b          	sext.w	a0,a0
    80001478:	00813083          	ld	ra,8(sp)
    8000147c:	00013403          	ld	s0,0(sp)
    80001480:	01010113          	addi	sp,sp,16
    80001484:	00008067          	ret

0000000080001488 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    80001488:	ff010113          	addi	sp,sp,-16
    8000148c:	00113423          	sd	ra,8(sp)
    80001490:	00813023          	sd	s0,0(sp)
    80001494:	01010413          	addi	s0,sp,16
    80001498:	00050593          	mv	a1,a0
    return (int)doSyscall(0x24, (uint64)id);
    8000149c:	00000713          	li	a4,0
    800014a0:	00000693          	li	a3,0
    800014a4:	00000613          	li	a2,0
    800014a8:	02400513          	li	a0,36
    800014ac:	00000097          	auipc	ra,0x0
    800014b0:	d18080e7          	jalr	-744(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800014b4:	0005051b          	sext.w	a0,a0
    800014b8:	00813083          	ld	ra,8(sp)
    800014bc:	00013403          	ld	s0,0(sp)
    800014c0:	01010113          	addi	sp,sp,16
    800014c4:	00008067          	ret

00000000800014c8 <_Z10sem_wait_nP4_semj>:

int sem_wait_n(sem_t id, unsigned n) {
    800014c8:	ff010113          	addi	sp,sp,-16
    800014cc:	00113423          	sd	ra,8(sp)
    800014d0:	00813023          	sd	s0,0(sp)
    800014d4:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x25, (uint64)id, (uint64)n);
    800014d8:	00000713          	li	a4,0
    800014dc:	00000693          	li	a3,0
    800014e0:	02059613          	slli	a2,a1,0x20
    800014e4:	02065613          	srli	a2,a2,0x20
    800014e8:	00050593          	mv	a1,a0
    800014ec:	02500513          	li	a0,37
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	cd4080e7          	jalr	-812(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800014f8:	0005051b          	sext.w	a0,a0
    800014fc:	00813083          	ld	ra,8(sp)
    80001500:	00013403          	ld	s0,0(sp)
    80001504:	01010113          	addi	sp,sp,16
    80001508:	00008067          	ret

000000008000150c <_Z12sem_signal_nP4_semj>:

int sem_signal_n(sem_t id, unsigned n) {
    8000150c:	ff010113          	addi	sp,sp,-16
    80001510:	00113423          	sd	ra,8(sp)
    80001514:	00813023          	sd	s0,0(sp)
    80001518:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x26, (uint64)id, (uint64)n);
    8000151c:	00000713          	li	a4,0
    80001520:	00000693          	li	a3,0
    80001524:	02059613          	slli	a2,a1,0x20
    80001528:	02065613          	srli	a2,a2,0x20
    8000152c:	00050593          	mv	a1,a0
    80001530:	02600513          	li	a0,38
    80001534:	00000097          	auipc	ra,0x0
    80001538:	c90080e7          	jalr	-880(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    8000153c:	0005051b          	sext.w	a0,a0
    80001540:	00813083          	ld	ra,8(sp)
    80001544:	00013403          	ld	s0,0(sp)
    80001548:	01010113          	addi	sp,sp,16
    8000154c:	00008067          	ret

0000000080001550 <_Z10time_sleepm>:
int time_sleep(time_t time) {
    80001550:	ff010113          	addi	sp,sp,-16
    80001554:	00113423          	sd	ra,8(sp)
    80001558:	00813023          	sd	s0,0(sp)
    8000155c:	01010413          	addi	s0,sp,16
    80001560:	00050593          	mv	a1,a0
    return (int)doSyscall(0x31, (uint64)time);
    80001564:	00000713          	li	a4,0
    80001568:	00000693          	li	a3,0
    8000156c:	00000613          	li	a2,0
    80001570:	03100513          	li	a0,49
    80001574:	00000097          	auipc	ra,0x0
    80001578:	c50080e7          	jalr	-944(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    8000157c:	0005051b          	sext.w	a0,a0
    80001580:	00813083          	ld	ra,8(sp)
    80001584:	00013403          	ld	s0,0(sp)
    80001588:	01010113          	addi	sp,sp,16
    8000158c:	00008067          	ret

0000000080001590 <_Z4getcv>:

char getc() {
    80001590:	ff010113          	addi	sp,sp,-16
    80001594:	00113423          	sd	ra,8(sp)
    80001598:	00813023          	sd	s0,0(sp)
    8000159c:	01010413          	addi	s0,sp,16
    return (char)doSyscall(0x41);
    800015a0:	00000713          	li	a4,0
    800015a4:	00000693          	li	a3,0
    800015a8:	00000613          	li	a2,0
    800015ac:	00000593          	li	a1,0
    800015b0:	04100513          	li	a0,65
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	c10080e7          	jalr	-1008(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800015bc:	0ff57513          	andi	a0,a0,255
    800015c0:	00813083          	ld	ra,8(sp)
    800015c4:	00013403          	ld	s0,0(sp)
    800015c8:	01010113          	addi	sp,sp,16
    800015cc:	00008067          	ret

00000000800015d0 <_Z4putcc>:

void putc(char c) {
    800015d0:	ff010113          	addi	sp,sp,-16
    800015d4:	00113423          	sd	ra,8(sp)
    800015d8:	00813023          	sd	s0,0(sp)
    800015dc:	01010413          	addi	s0,sp,16
    800015e0:	00050593          	mv	a1,a0
    doSyscall(0x42, (uint64)c);
    800015e4:	00000713          	li	a4,0
    800015e8:	00000693          	li	a3,0
    800015ec:	00000613          	li	a2,0
    800015f0:	04200513          	li	a0,66
    800015f4:	00000097          	auipc	ra,0x0
    800015f8:	bd0080e7          	jalr	-1072(ra) # 800011c4 <_ZL9doSyscallmmmmm>
    800015fc:	00813083          	ld	ra,8(sp)
    80001600:	00013403          	ld	s0,0(sp)
    80001604:	01010113          	addi	sp,sp,16
    80001608:	00008067          	ret

000000008000160c <_ZL23blocksForBytesSemaphorem>:
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../test/printing.hpp"
_sem* _sem::allHead = nullptr;
_sem* _sem::allTail = nullptr;
static size_t blocksForBytesSemaphore(size_t bytes) {
    8000160c:	ff010113          	addi	sp,sp,-16
    80001610:	00813423          	sd	s0,8(sp)
    80001614:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001618:	03f50513          	addi	a0,a0,63 # 103f <_entry-0x7fffefc1>
}
    8000161c:	00655513          	srli	a0,a0,0x6
    80001620:	00813403          	ld	s0,8(sp)
    80001624:	01010113          	addi	sp,sp,16
    80001628:	00008067          	ret

000000008000162c <_ZN4_semnwEm>:

void* _sem::operator new(size_t size) {
    8000162c:	fe010113          	addi	sp,sp,-32
    80001630:	00113c23          	sd	ra,24(sp)
    80001634:	00813823          	sd	s0,16(sp)
    80001638:	00913423          	sd	s1,8(sp)
    8000163c:	01213023          	sd	s2,0(sp)
    80001640:	02010413          	addi	s0,sp,32
    80001644:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytesSemaphore(size));
    80001648:	00001097          	auipc	ra,0x1
    8000164c:	600080e7          	jalr	1536(ra) # 80002c48 <_ZN15MemoryAllocator11getInstanceEv>
    80001650:	00050493          	mv	s1,a0
    80001654:	00090513          	mv	a0,s2
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	fb4080e7          	jalr	-76(ra) # 8000160c <_ZL23blocksForBytesSemaphorem>
    80001660:	00050593          	mv	a1,a0
    80001664:	00048513          	mv	a0,s1
    80001668:	00001097          	auipc	ra,0x1
    8000166c:	660080e7          	jalr	1632(ra) # 80002cc8 <_ZN15MemoryAllocator6mallocEm>
}
    80001670:	01813083          	ld	ra,24(sp)
    80001674:	01013403          	ld	s0,16(sp)
    80001678:	00813483          	ld	s1,8(sp)
    8000167c:	00013903          	ld	s2,0(sp)
    80001680:	02010113          	addi	sp,sp,32
    80001684:	00008067          	ret

0000000080001688 <_ZN4_semdlEPv>:

void _sem::operator delete(void* ptr) {
    if (ptr == nullptr) {
    80001688:	04050263          	beqz	a0,800016cc <_ZN4_semdlEPv+0x44>
void _sem::operator delete(void* ptr) {
    8000168c:	fe010113          	addi	sp,sp,-32
    80001690:	00113c23          	sd	ra,24(sp)
    80001694:	00813823          	sd	s0,16(sp)
    80001698:	00913423          	sd	s1,8(sp)
    8000169c:	02010413          	addi	s0,sp,32
    800016a0:	00050493          	mv	s1,a0
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
    800016a4:	00001097          	auipc	ra,0x1
    800016a8:	5a4080e7          	jalr	1444(ra) # 80002c48 <_ZN15MemoryAllocator11getInstanceEv>
    800016ac:	00048593          	mv	a1,s1
    800016b0:	00001097          	auipc	ra,0x1
    800016b4:	774080e7          	jalr	1908(ra) # 80002e24 <_ZN15MemoryAllocator4freeEPv>
}
    800016b8:	01813083          	ld	ra,24(sp)
    800016bc:	01013403          	ld	s0,16(sp)
    800016c0:	00813483          	ld	s1,8(sp)
    800016c4:	02010113          	addi	sp,sp,32
    800016c8:	00008067          	ret
    800016cc:	00008067          	ret

00000000800016d0 <_ZN4_semC1Ej>:

_sem::_sem(unsigned init) {
    800016d0:	ff010113          	addi	sp,sp,-16
    800016d4:	00813423          	sd	s0,8(sp)
    800016d8:	01010413          	addi	s0,sp,16
    val = (int)init;
    800016dc:	00b52023          	sw	a1,0(a0)
    closed = false;
    800016e0:	00050223          	sb	zero,4(a0)

    head = nullptr;
    800016e4:	00053423          	sd	zero,8(a0)
    tail = nullptr;
    800016e8:	00053823          	sd	zero,16(a0)

    allNext = nullptr;
    800016ec:	00053c23          	sd	zero,24(a0)

    if (allHead == nullptr) {
    800016f0:	0000a797          	auipc	a5,0xa
    800016f4:	5807b783          	ld	a5,1408(a5) # 8000bc70 <_ZN4_sem7allHeadE>
    800016f8:	02078263          	beqz	a5,8000171c <_ZN4_semC1Ej+0x4c>
        allHead = this;
        allTail = this;
    } else {
        allTail->allNext = this;
    800016fc:	0000a797          	auipc	a5,0xa
    80001700:	57478793          	addi	a5,a5,1396 # 8000bc70 <_ZN4_sem7allHeadE>
    80001704:	0087b703          	ld	a4,8(a5)
    80001708:	00a73c23          	sd	a0,24(a4) # 1018 <_entry-0x7fffefe8>
        allTail = this;
    8000170c:	00a7b423          	sd	a0,8(a5)
    }
}
    80001710:	00813403          	ld	s0,8(sp)
    80001714:	01010113          	addi	sp,sp,16
    80001718:	00008067          	ret
        allHead = this;
    8000171c:	0000a797          	auipc	a5,0xa
    80001720:	55478793          	addi	a5,a5,1364 # 8000bc70 <_ZN4_sem7allHeadE>
    80001724:	00a7b023          	sd	a0,0(a5)
        allTail = this;
    80001728:	00a7b423          	sd	a0,8(a5)
    8000172c:	fe5ff06f          	j	80001710 <_ZN4_semC1Ej+0x40>

0000000080001730 <_ZN4_sem13removeFromAllEPS_>:
void _sem::removeFromAll(_sem* sem) {
    80001730:	ff010113          	addi	sp,sp,-16
    80001734:	00813423          	sd	s0,8(sp)
    80001738:	01010413          	addi	s0,sp,16
    if (sem == nullptr) {
    8000173c:	04050263          	beqz	a0,80001780 <_ZN4_sem13removeFromAllEPS_+0x50>
        return;
    }

    _sem* prev = nullptr;
    _sem* curr = allHead;
    80001740:	0000a797          	auipc	a5,0xa
    80001744:	5307b783          	ld	a5,1328(a5) # 8000bc70 <_ZN4_sem7allHeadE>
    _sem* prev = nullptr;
    80001748:	00000713          	li	a4,0

    while (curr != nullptr && curr != sem) {
    8000174c:	00078a63          	beqz	a5,80001760 <_ZN4_sem13removeFromAllEPS_+0x30>
    80001750:	00a78863          	beq	a5,a0,80001760 <_ZN4_sem13removeFromAllEPS_+0x30>
        prev = curr;
    80001754:	00078713          	mv	a4,a5
        curr = curr->allNext;
    80001758:	0187b783          	ld	a5,24(a5)
    while (curr != nullptr && curr != sem) {
    8000175c:	ff1ff06f          	j	8000174c <_ZN4_sem13removeFromAllEPS_+0x1c>
    }

    if (curr == nullptr) {
    80001760:	02078063          	beqz	a5,80001780 <_ZN4_sem13removeFromAllEPS_+0x50>
        return;
    }

    if (prev == nullptr) {
    80001764:	02070463          	beqz	a4,8000178c <_ZN4_sem13removeFromAllEPS_+0x5c>
        allHead = curr->allNext;
    } else {
        prev->allNext = curr->allNext;
    80001768:	0187b683          	ld	a3,24(a5)
    8000176c:	00d73c23          	sd	a3,24(a4)
    }

    if (allTail == curr) {
    80001770:	0000a697          	auipc	a3,0xa
    80001774:	5086b683          	ld	a3,1288(a3) # 8000bc78 <_ZN4_sem7allTailE>
    80001778:	02f68263          	beq	a3,a5,8000179c <_ZN4_sem13removeFromAllEPS_+0x6c>
        allTail = prev;
    }

    curr->allNext = nullptr;
    8000177c:	0007bc23          	sd	zero,24(a5)
}
    80001780:	00813403          	ld	s0,8(sp)
    80001784:	01010113          	addi	sp,sp,16
    80001788:	00008067          	ret
        allHead = curr->allNext;
    8000178c:	0187b683          	ld	a3,24(a5)
    80001790:	0000a617          	auipc	a2,0xa
    80001794:	4ed63023          	sd	a3,1248(a2) # 8000bc70 <_ZN4_sem7allHeadE>
    80001798:	fd9ff06f          	j	80001770 <_ZN4_sem13removeFromAllEPS_+0x40>
        allTail = prev;
    8000179c:	0000a697          	auipc	a3,0xa
    800017a0:	4ce6be23          	sd	a4,1244(a3) # 8000bc78 <_ZN4_sem7allTailE>
    800017a4:	fd9ff06f          	j	8000177c <_ZN4_sem13removeFromAllEPS_+0x4c>

00000000800017a8 <_ZN4_sem15createSemaphoreEj>:
_sem* _sem::createSemaphore(unsigned init) {
    800017a8:	fe010113          	addi	sp,sp,-32
    800017ac:	00113c23          	sd	ra,24(sp)
    800017b0:	00813823          	sd	s0,16(sp)
    800017b4:	00913423          	sd	s1,8(sp)
    800017b8:	01213023          	sd	s2,0(sp)
    800017bc:	02010413          	addi	s0,sp,32
    800017c0:	00050913          	mv	s2,a0
    return new _sem(init);
    800017c4:	02000513          	li	a0,32
    800017c8:	00000097          	auipc	ra,0x0
    800017cc:	e64080e7          	jalr	-412(ra) # 8000162c <_ZN4_semnwEm>
    800017d0:	00050493          	mv	s1,a0
    800017d4:	00090593          	mv	a1,s2
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	ef8080e7          	jalr	-264(ra) # 800016d0 <_ZN4_semC1Ej>
}
    800017e0:	00048513          	mv	a0,s1
    800017e4:	01813083          	ld	ra,24(sp)
    800017e8:	01013403          	ld	s0,16(sp)
    800017ec:	00813483          	ld	s1,8(sp)
    800017f0:	00013903          	ld	s2,0(sp)
    800017f4:	02010113          	addi	sp,sp,32
    800017f8:	00008067          	ret

00000000800017fc <_ZN4_sem16destroySemaphoreEPS_>:

int _sem::destroySemaphore(_sem* sem) {
    if (sem == nullptr) {
    800017fc:	04050463          	beqz	a0,80001844 <_ZN4_sem16destroySemaphoreEPS_+0x48>
int _sem::destroySemaphore(_sem* sem) {
    80001800:	fe010113          	addi	sp,sp,-32
    80001804:	00113c23          	sd	ra,24(sp)
    80001808:	00813823          	sd	s0,16(sp)
    8000180c:	00913423          	sd	s1,8(sp)
    80001810:	02010413          	addi	s0,sp,32
    80001814:	00050493          	mv	s1,a0
        return -1;
    }
    removeFromAll(sem);
    80001818:	00000097          	auipc	ra,0x0
    8000181c:	f18080e7          	jalr	-232(ra) # 80001730 <_ZN4_sem13removeFromAllEPS_>

    delete sem;
    80001820:	00048513          	mv	a0,s1
    80001824:	00000097          	auipc	ra,0x0
    80001828:	e64080e7          	jalr	-412(ra) # 80001688 <_ZN4_semdlEPv>
    return 0;
    8000182c:	00000513          	li	a0,0
}
    80001830:	01813083          	ld	ra,24(sp)
    80001834:	01013403          	ld	s0,16(sp)
    80001838:	00813483          	ld	s1,8(sp)
    8000183c:	02010113          	addi	sp,sp,32
    80001840:	00008067          	ret
        return -1;
    80001844:	fff00513          	li	a0,-1
}
    80001848:	00008067          	ret

000000008000184c <_ZN4_sem5blockEPNS_11BlockedNodeE>:
    unblockReady();

    return 0;
}

void _sem::block(BlockedNode* node) {
    8000184c:	ff010113          	addi	sp,sp,-16
    80001850:	00813423          	sd	s0,8(sp)
    80001854:	01010413          	addi	s0,sp,16
    if (node == nullptr) {
    80001858:	00058e63          	beqz	a1,80001874 <_ZN4_sem5blockEPNS_11BlockedNodeE+0x28>
        return;
    }

    node->next = nullptr;
    8000185c:	0005b823          	sd	zero,16(a1)

    if (head == nullptr) {
    80001860:	00853783          	ld	a5,8(a0)
    80001864:	00078e63          	beqz	a5,80001880 <_ZN4_sem5blockEPNS_11BlockedNodeE+0x34>
        head = node;
        tail = node;
    } else {
        tail->next = node;
    80001868:	01053783          	ld	a5,16(a0)
    8000186c:	00b7b823          	sd	a1,16(a5)
        tail = node;
    80001870:	00b53823          	sd	a1,16(a0)
    }
}
    80001874:	00813403          	ld	s0,8(sp)
    80001878:	01010113          	addi	sp,sp,16
    8000187c:	00008067          	ret
        head = node;
    80001880:	00b53423          	sd	a1,8(a0)
        tail = node;
    80001884:	00b53823          	sd	a1,16(a0)
    80001888:	fedff06f          	j	80001874 <_ZN4_sem5blockEPNS_11BlockedNodeE+0x28>

000000008000188c <_ZN4_sem5waitNEj>:
    if (_thread::running == nullptr) {
    8000188c:	0000a797          	auipc	a5,0xa
    80001890:	3747b783          	ld	a5,884(a5) # 8000bc00 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001894:	0007b783          	ld	a5,0(a5)
    80001898:	08078a63          	beqz	a5,8000192c <_ZN4_sem5waitNEj+0xa0>
    if (closed) {
    8000189c:	00454703          	lbu	a4,4(a0)
    800018a0:	08071a63          	bnez	a4,80001934 <_ZN4_sem5waitNEj+0xa8>
    if (n == 0) {
    800018a4:	08058c63          	beqz	a1,8000193c <_ZN4_sem5waitNEj+0xb0>
    if (head == nullptr && val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
    800018a8:	00853703          	ld	a4,8(a0)
    800018ac:	06070263          	beqz	a4,80001910 <_ZN4_sem5waitNEj+0x84>
int _sem::waitN(unsigned n) {
    800018b0:	fd010113          	addi	sp,sp,-48
    800018b4:	02113423          	sd	ra,40(sp)
    800018b8:	02813023          	sd	s0,32(sp)
    800018bc:	03010413          	addi	s0,sp,48
    node.thread = _thread::running;
    800018c0:	fcf43c23          	sd	a5,-40(s0)
    node.requested = n;
    800018c4:	feb42023          	sw	a1,-32(s0)
    node.status = 0;
    800018c8:	fe042223          	sw	zero,-28(s0)
    node.next = nullptr;
    800018cc:	fe043423          	sd	zero,-24(s0)
    block(&node);
    800018d0:	fd840593          	addi	a1,s0,-40
    800018d4:	00000097          	auipc	ra,0x0
    800018d8:	f78080e7          	jalr	-136(ra) # 8000184c <_ZN4_sem5blockEPNS_11BlockedNodeE>
    _thread::running->setState(_thread::BLOCKED);
    800018dc:	00300593          	li	a1,3
    800018e0:	0000a797          	auipc	a5,0xa
    800018e4:	3207b783          	ld	a5,800(a5) # 8000bc00 <_GLOBAL_OFFSET_TABLE_+0x18>
    800018e8:	0007b503          	ld	a0,0(a5)
    800018ec:	00001097          	auipc	ra,0x1
    800018f0:	ab8080e7          	jalr	-1352(ra) # 800023a4 <_ZN7_thread8setStateENS_5StateE>
    _thread::dispatch();
    800018f4:	00001097          	auipc	ra,0x1
    800018f8:	934080e7          	jalr	-1740(ra) # 80002228 <_ZN7_thread8dispatchEv>
    return node.status;
    800018fc:	fe442503          	lw	a0,-28(s0)
}
    80001900:	02813083          	ld	ra,40(sp)
    80001904:	02013403          	ld	s0,32(sp)
    80001908:	03010113          	addi	sp,sp,48
    8000190c:	00008067          	ret
    if (head == nullptr && val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
    80001910:	00052703          	lw	a4,0(a0)
    80001914:	0005869b          	sext.w	a3,a1
    80001918:	f8d74ce3          	blt	a4,a3,800018b0 <_ZN4_sem5waitNEj+0x24>
        val -= (int)n;
    8000191c:	40d7073b          	subw	a4,a4,a3
    80001920:	00e52023          	sw	a4,0(a0)
        return 0;
    80001924:	00000513          	li	a0,0
    80001928:	00008067          	ret
        return -1;
    8000192c:	fff00513          	li	a0,-1
    80001930:	00008067          	ret
        return -1;
    80001934:	fff00513          	li	a0,-1
    80001938:	00008067          	ret
        return 0;
    8000193c:	00000513          	li	a0,0
}
    80001940:	00008067          	ret

0000000080001944 <_ZN4_sem4waitEv>:
int _sem::wait() {
    80001944:	ff010113          	addi	sp,sp,-16
    80001948:	00113423          	sd	ra,8(sp)
    8000194c:	00813023          	sd	s0,0(sp)
    80001950:	01010413          	addi	s0,sp,16
    return waitN(1);
    80001954:	00100593          	li	a1,1
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	f34080e7          	jalr	-204(ra) # 8000188c <_ZN4_sem5waitNEj>
}
    80001960:	00813083          	ld	ra,8(sp)
    80001964:	00013403          	ld	s0,0(sp)
    80001968:	01010113          	addi	sp,sp,16
    8000196c:	00008067          	ret

0000000080001970 <_ZN4_sem12unblockReadyEv>:

void _sem::unblockReady() {
    80001970:	fe010113          	addi	sp,sp,-32
    80001974:	00113c23          	sd	ra,24(sp)
    80001978:	00813823          	sd	s0,16(sp)
    8000197c:	00913423          	sd	s1,8(sp)
    80001980:	01213023          	sd	s2,0(sp)
    80001984:	02010413          	addi	s0,sp,32
    80001988:	00050913          	mv	s2,a0
    8000198c:	0240006f          	j	800019b0 <_ZN4_sem12unblockReadyEv+0x40>
        BlockedNode* node = head;

        head = head->next;

        if (head == nullptr) {
            tail = nullptr;
    80001990:	00093823          	sd	zero,16(s2)
        }

        val -= (int)node->requested;
    80001994:	0084a703          	lw	a4,8(s1)
    80001998:	40e787bb          	subw	a5,a5,a4
    8000199c:	00f92023          	sw	a5,0(s2)

        node->status = 0;//znaci da ce waitN vratiti 0
    800019a0:	0004a623          	sw	zero,12(s1)
        node->next = nullptr;
    800019a4:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    800019a8:	0004b503          	ld	a0,0(s1)
    800019ac:	02051463          	bnez	a0,800019d4 <_ZN4_sem12unblockReadyEv+0x64>
    while (head != nullptr && val >= (int)head->requested) {
    800019b0:	00893483          	ld	s1,8(s2)
    800019b4:	02048e63          	beqz	s1,800019f0 <_ZN4_sem12unblockReadyEv+0x80>
    800019b8:	00092783          	lw	a5,0(s2)
    800019bc:	0084a703          	lw	a4,8(s1)
    800019c0:	02e7c863          	blt	a5,a4,800019f0 <_ZN4_sem12unblockReadyEv+0x80>
        head = head->next;
    800019c4:	0104b703          	ld	a4,16(s1)
    800019c8:	00e93423          	sd	a4,8(s2)
        if (head == nullptr) {
    800019cc:	fc0714e3          	bnez	a4,80001994 <_ZN4_sem12unblockReadyEv+0x24>
    800019d0:	fc1ff06f          	j	80001990 <_ZN4_sem12unblockReadyEv+0x20>
            node->thread->setState(_thread::READY);
    800019d4:	00100593          	li	a1,1
    800019d8:	00001097          	auipc	ra,0x1
    800019dc:	9cc080e7          	jalr	-1588(ra) # 800023a4 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    800019e0:	0004b503          	ld	a0,0(s1)
    800019e4:	00001097          	auipc	ra,0x1
    800019e8:	b6c080e7          	jalr	-1172(ra) # 80002550 <_ZN9Scheduler3putEP7_thread>
    800019ec:	fc5ff06f          	j	800019b0 <_ZN4_sem12unblockReadyEv+0x40>
        }
    }
}
    800019f0:	01813083          	ld	ra,24(sp)
    800019f4:	01013403          	ld	s0,16(sp)
    800019f8:	00813483          	ld	s1,8(sp)
    800019fc:	00013903          	ld	s2,0(sp)
    80001a00:	02010113          	addi	sp,sp,32
    80001a04:	00008067          	ret

0000000080001a08 <_ZN4_sem7signalNEj>:
    if (closed) {
    80001a08:	00454783          	lbu	a5,4(a0)
    80001a0c:	04079463          	bnez	a5,80001a54 <_ZN4_sem7signalNEj+0x4c>
    if (n == 0) {
    80001a10:	00059663          	bnez	a1,80001a1c <_ZN4_sem7signalNEj+0x14>
        return 0;
    80001a14:	00000513          	li	a0,0
}
    80001a18:	00008067          	ret
int _sem::signalN(unsigned n) {
    80001a1c:	ff010113          	addi	sp,sp,-16
    80001a20:	00113423          	sd	ra,8(sp)
    80001a24:	00813023          	sd	s0,0(sp)
    80001a28:	01010413          	addi	s0,sp,16
    val += (int)n;
    80001a2c:	00052783          	lw	a5,0(a0)
    80001a30:	00b785bb          	addw	a1,a5,a1
    80001a34:	00b52023          	sw	a1,0(a0)
    unblockReady();
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	f38080e7          	jalr	-200(ra) # 80001970 <_ZN4_sem12unblockReadyEv>
    return 0;
    80001a40:	00000513          	li	a0,0
}
    80001a44:	00813083          	ld	ra,8(sp)
    80001a48:	00013403          	ld	s0,0(sp)
    80001a4c:	01010113          	addi	sp,sp,16
    80001a50:	00008067          	ret
        return -1;
    80001a54:	fff00513          	li	a0,-1
    80001a58:	00008067          	ret

0000000080001a5c <_ZN4_sem6signalEv>:
int _sem::signal() {
    80001a5c:	ff010113          	addi	sp,sp,-16
    80001a60:	00113423          	sd	ra,8(sp)
    80001a64:	00813023          	sd	s0,0(sp)
    80001a68:	01010413          	addi	s0,sp,16
    return signalN(1);
    80001a6c:	00100593          	li	a1,1
    80001a70:	00000097          	auipc	ra,0x0
    80001a74:	f98080e7          	jalr	-104(ra) # 80001a08 <_ZN4_sem7signalNEj>
}
    80001a78:	00813083          	ld	ra,8(sp)
    80001a7c:	00013403          	ld	s0,0(sp)
    80001a80:	01010113          	addi	sp,sp,16
    80001a84:	00008067          	ret

0000000080001a88 <_ZN4_sem10unblockOneEv>:
void _sem::unblockOne() {
    80001a88:	fe010113          	addi	sp,sp,-32
    80001a8c:	00113c23          	sd	ra,24(sp)
    80001a90:	00813823          	sd	s0,16(sp)
    80001a94:	00913423          	sd	s1,8(sp)
    80001a98:	02010413          	addi	s0,sp,32
    _sem* curr = allHead;
    80001a9c:	0000a497          	auipc	s1,0xa
    80001aa0:	1d44b483          	ld	s1,468(s1) # 8000bc70 <_ZN4_sem7allHeadE>
    80001aa4:	0080006f          	j	80001aac <_ZN4_sem10unblockOneEv+0x24>
        curr = curr->allNext;
    80001aa8:	0184b483          	ld	s1,24(s1)
    while (curr != nullptr) {
    80001aac:	02048863          	beqz	s1,80001adc <_ZN4_sem10unblockOneEv+0x54>
        if (!curr->closed && curr->head != nullptr) {
    80001ab0:	0044c783          	lbu	a5,4(s1)
    80001ab4:	fe079ae3          	bnez	a5,80001aa8 <_ZN4_sem10unblockOneEv+0x20>
    80001ab8:	0084b783          	ld	a5,8(s1)
    80001abc:	fe0786e3          	beqz	a5,80001aa8 <_ZN4_sem10unblockOneEv+0x20>
            printString("unblockOne found blocked thread\n");
    80001ac0:	00007517          	auipc	a0,0x7
    80001ac4:	56050513          	addi	a0,a0,1376 # 80009020 <CONSOLE_STATUS+0x10>
    80001ac8:	00004097          	auipc	ra,0x4
    80001acc:	ee8080e7          	jalr	-280(ra) # 800059b0 <_Z11printStringPKc>
            curr->signal();
    80001ad0:	00048513          	mv	a0,s1
    80001ad4:	00000097          	auipc	ra,0x0
    80001ad8:	f88080e7          	jalr	-120(ra) # 80001a5c <_ZN4_sem6signalEv>
}
    80001adc:	01813083          	ld	ra,24(sp)
    80001ae0:	01013403          	ld	s0,16(sp)
    80001ae4:	00813483          	ld	s1,8(sp)
    80001ae8:	02010113          	addi	sp,sp,32
    80001aec:	00008067          	ret

0000000080001af0 <_ZN4_sem10unblockAllEv>:

void _sem::unblockAll() {
    80001af0:	fe010113          	addi	sp,sp,-32
    80001af4:	00113c23          	sd	ra,24(sp)
    80001af8:	00813823          	sd	s0,16(sp)
    80001afc:	00913423          	sd	s1,8(sp)
    80001b00:	01213023          	sd	s2,0(sp)
    80001b04:	02010413          	addi	s0,sp,32
    80001b08:	00050913          	mv	s2,a0
    while (head != nullptr) {
    80001b0c:	00893483          	ld	s1,8(s2)
    80001b10:	02048e63          	beqz	s1,80001b4c <_ZN4_sem10unblockAllEv+0x5c>
        BlockedNode* node = head;

        head = head->next;
    80001b14:	0104b783          	ld	a5,16(s1)
    80001b18:	00f93423          	sd	a5,8(s2)

        node->status = -1;
    80001b1c:	fff00793          	li	a5,-1
    80001b20:	00f4a623          	sw	a5,12(s1)
        node->next = nullptr;
    80001b24:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    80001b28:	0004b503          	ld	a0,0(s1)
    80001b2c:	fe0500e3          	beqz	a0,80001b0c <_ZN4_sem10unblockAllEv+0x1c>
            node->thread->setState(_thread::READY);
    80001b30:	00100593          	li	a1,1
    80001b34:	00001097          	auipc	ra,0x1
    80001b38:	870080e7          	jalr	-1936(ra) # 800023a4 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001b3c:	0004b503          	ld	a0,0(s1)
    80001b40:	00001097          	auipc	ra,0x1
    80001b44:	a10080e7          	jalr	-1520(ra) # 80002550 <_ZN9Scheduler3putEP7_thread>
    80001b48:	fc5ff06f          	j	80001b0c <_ZN4_sem10unblockAllEv+0x1c>
        }
    }

    tail = nullptr;
    80001b4c:	00093823          	sd	zero,16(s2)
    80001b50:	01813083          	ld	ra,24(sp)
    80001b54:	01013403          	ld	s0,16(sp)
    80001b58:	00813483          	ld	s1,8(sp)
    80001b5c:	00013903          	ld	s2,0(sp)
    80001b60:	02010113          	addi	sp,sp,32
    80001b64:	00008067          	ret

0000000080001b68 <_ZN4_sem5closeEv>:
    if (closed) {
    80001b68:	00454783          	lbu	a5,4(a0)
    80001b6c:	02079c63          	bnez	a5,80001ba4 <_ZN4_sem5closeEv+0x3c>
int _sem::close() {
    80001b70:	ff010113          	addi	sp,sp,-16
    80001b74:	00113423          	sd	ra,8(sp)
    80001b78:	00813023          	sd	s0,0(sp)
    80001b7c:	01010413          	addi	s0,sp,16
    closed = true;
    80001b80:	00100793          	li	a5,1
    80001b84:	00f50223          	sb	a5,4(a0)
    unblockAll();
    80001b88:	00000097          	auipc	ra,0x0
    80001b8c:	f68080e7          	jalr	-152(ra) # 80001af0 <_ZN4_sem10unblockAllEv>
    return 0;
    80001b90:	00000513          	li	a0,0
}
    80001b94:	00813083          	ld	ra,8(sp)
    80001b98:	00013403          	ld	s0,0(sp)
    80001b9c:	01010113          	addi	sp,sp,16
    80001ba0:	00008067          	ret
        return -1;
    80001ba4:	fff00513          	li	a0,-1
}
    80001ba8:	00008067          	ret

0000000080001bac <handleSupervisorTrap>:
#include "../lib/console.h"
#include "../test/printing.hpp"

extern "C" void handleSupervisorTrap(TrapFrame* frame);

extern "C" void handleSupervisorTrap(TrapFrame* frame) {
    80001bac:	fd010113          	addi	sp,sp,-48
    80001bb0:	02113423          	sd	ra,40(sp)
    80001bb4:	02813023          	sd	s0,32(sp)
    80001bb8:	00913c23          	sd	s1,24(sp)
    80001bbc:	01213823          	sd	s2,16(sp)
    80001bc0:	01313423          	sd	s3,8(sp)
    80001bc4:	03010413          	addi	s0,sp,48
    80001bc8:	00050493          	mv	s1,a0
    static const uint64 SSTATUS_SPIE = (1UL << 5);
    static const uint64 SSTATUS_SPP = (1UL << 8);

    static uint64 r_scause() {
        uint64 x;
        asm volatile("csrr %0, scause" : "=r"(x));//upis vrednosti scause u x
    80001bcc:	14202973          	csrr	s2,scause
    uint64 scause = Riscv::r_scause();

    if (scause == 8 || scause == 9) {
    80001bd0:	ff890713          	addi	a4,s2,-8
    80001bd4:	00100793          	li	a5,1
    80001bd8:	02e7f863          	bgeu	a5,a4,80001c08 <handleSupervisorTrap+0x5c>

        frame->sepc += 4;
        return;
    }

    if (scause == 0x8000000000000001UL) {
    80001bdc:	fff00793          	li	a5,-1
    80001be0:	03f79793          	slli	a5,a5,0x3f
    80001be4:	00178793          	addi	a5,a5,1
    80001be8:	28f90663          	beq	s2,a5,80001e74 <handleSupervisorTrap+0x2c8>
        Riscv::mc_sip(Riscv::SIP_SSIP);//birsanje pending bita
        return;
    }

    if (scause == 0x8000000000000009UL) {//spoljasnji hardverski prekid 9
    80001bec:	fff00793          	li	a5,-1
    80001bf0:	03f79793          	slli	a5,a5,0x3f
    80001bf4:	00978793          	addi	a5,a5,9
    80001bf8:	28f90463          	beq	s2,a5,80001e80 <handleSupervisorTrap+0x2d4>
        console_handler();
        return;
    }
    if (scause == 2) { // illegal instruction
    80001bfc:	00200793          	li	a5,2
    80001c00:	28f90663          	beq	s2,a5,80001e8c <handleSupervisorTrap+0x2e0>
        frame->sepc += 4;
        Riscv::w_sepc(frame->sepc);
        return;
    }

    while (true) {}
    80001c04:	0000006f          	j	80001c04 <handleSupervisorTrap+0x58>
        uint64 syscallCode = frame->a0;
    80001c08:	04053783          	ld	a5,64(a0)
        uint64 arg1 = frame->a1;
    80001c0c:	04853903          	ld	s2,72(a0)
        uint64 arg2 = frame->a2;
    80001c10:	05053503          	ld	a0,80(a0)
        uint64 arg3 = frame->a3;
    80001c14:	0584b583          	ld	a1,88(s1)
        uint64 arg4 = frame->a4;
    80001c18:	0604b603          	ld	a2,96(s1)
        switch (syscallCode) {
    80001c1c:	04200713          	li	a4,66
    80001c20:	24f76463          	bltu	a4,a5,80001e68 <handleSupervisorTrap+0x2bc>
    80001c24:	00279793          	slli	a5,a5,0x2
    80001c28:	00007717          	auipc	a4,0x7
    80001c2c:	43870713          	addi	a4,a4,1080 # 80009060 <CONSOLE_STATUS+0x50>
    80001c30:	00e787b3          	add	a5,a5,a4
    80001c34:	0007a783          	lw	a5,0(a5)
    80001c38:	00e787b3          	add	a5,a5,a4
    80001c3c:	00078067          	jr	a5
                frame->a0 = (uint64)MemoryAllocator::getInstance().malloc((size_t)arg1);
    80001c40:	00001097          	auipc	ra,0x1
    80001c44:	008080e7          	jalr	8(ra) # 80002c48 <_ZN15MemoryAllocator11getInstanceEv>
    80001c48:	00090593          	mv	a1,s2
    80001c4c:	00001097          	auipc	ra,0x1
    80001c50:	07c080e7          	jalr	124(ra) # 80002cc8 <_ZN15MemoryAllocator6mallocEm>
    80001c54:	04a4b023          	sd	a0,64(s1)
        frame->sepc += 4;
    80001c58:	0f04b783          	ld	a5,240(s1)
    80001c5c:	00478793          	addi	a5,a5,4
    80001c60:	0ef4b823          	sd	a5,240(s1)
    80001c64:	02813083          	ld	ra,40(sp)
    80001c68:	02013403          	ld	s0,32(sp)
    80001c6c:	01813483          	ld	s1,24(sp)
    80001c70:	01013903          	ld	s2,16(sp)
    80001c74:	00813983          	ld	s3,8(sp)
    80001c78:	03010113          	addi	sp,sp,48
    80001c7c:	00008067          	ret
                frame->a0 = (uint64)MemoryAllocator::getInstance().free((void*)arg1);
    80001c80:	00001097          	auipc	ra,0x1
    80001c84:	fc8080e7          	jalr	-56(ra) # 80002c48 <_ZN15MemoryAllocator11getInstanceEv>
    80001c88:	00090593          	mv	a1,s2
    80001c8c:	00001097          	auipc	ra,0x1
    80001c90:	198080e7          	jalr	408(ra) # 80002e24 <_ZN15MemoryAllocator4freeEPv>
    80001c94:	04a4b023          	sd	a0,64(s1)
                break;
    80001c98:	fc1ff06f          	j	80001c58 <handleSupervisorTrap+0xac>
                if (handle == nullptr || body == nullptr || stackSpace == nullptr) {
    80001c9c:	00090663          	beqz	s2,80001ca8 <handleSupervisorTrap+0xfc>
    80001ca0:	00050463          	beqz	a0,80001ca8 <handleSupervisorTrap+0xfc>
    80001ca4:	00061863          	bnez	a2,80001cb4 <handleSupervisorTrap+0x108>
                    frame->a0 = (uint64)-1;
    80001ca8:	fff00793          	li	a5,-1
    80001cac:	04f4b023          	sd	a5,64(s1)
                    break;
    80001cb0:	fa9ff06f          	j	80001c58 <handleSupervisorTrap+0xac>
                _thread* thread = _thread::createThread(body, arg, stackSpace);
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	49c080e7          	jalr	1180(ra) # 80002150 <_ZN7_thread12createThreadEPFvPvES0_S0_>
                if (thread == nullptr) {
    80001cbc:	00050c63          	beqz	a0,80001cd4 <handleSupervisorTrap+0x128>
                *handle = thread;//korisnik dobija rucku nove niti
    80001cc0:	00a93023          	sd	a0,0(s2)
                Scheduler::put(thread);
    80001cc4:	00001097          	auipc	ra,0x1
    80001cc8:	88c080e7          	jalr	-1908(ra) # 80002550 <_ZN9Scheduler3putEP7_thread>
                frame->a0 = 0;
    80001ccc:	0404b023          	sd	zero,64(s1)
                break;
    80001cd0:	f89ff06f          	j	80001c58 <handleSupervisorTrap+0xac>
                    frame->a0 = (uint64)-1;
    80001cd4:	fff00793          	li	a5,-1
    80001cd8:	04f4b023          	sd	a5,64(s1)
                    break;
    80001cdc:	f7dff06f          	j	80001c58 <handleSupervisorTrap+0xac>
                frame->sepc += 4;
    80001ce0:	0f04b783          	ld	a5,240(s1)
    80001ce4:	00478793          	addi	a5,a5,4
    80001ce8:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)_thread::exit();
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	5e4080e7          	jalr	1508(ra) # 800022d0 <_ZN7_thread4exitEv>
    80001cf4:	04a4b023          	sd	a0,64(s1)
                return;
    80001cf8:	f6dff06f          	j	80001c64 <handleSupervisorTrap+0xb8>
                frame->sepc += 4;
    80001cfc:	0f04b783          	ld	a5,240(s1)
    80001d00:	00478793          	addi	a5,a5,4
    80001d04:	0ef4b823          	sd	a5,240(s1)
                _thread::dispatch();//nismo frame->a0 jer dispatch nema povratnu value
    80001d08:	00000097          	auipc	ra,0x0
    80001d0c:	520080e7          	jalr	1312(ra) # 80002228 <_ZN7_thread8dispatchEv>
                return;
    80001d10:	f55ff06f          	j	80001c64 <handleSupervisorTrap+0xb8>
                unsigned init = (unsigned)arg2;
    80001d14:	0005051b          	sext.w	a0,a0
                if (handle == nullptr) {
    80001d18:	00091863          	bnez	s2,80001d28 <handleSupervisorTrap+0x17c>
                    frame->a0 = (uint64)-1;
    80001d1c:	fff00793          	li	a5,-1
    80001d20:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d24:	f35ff06f          	j	80001c58 <handleSupervisorTrap+0xac>
                _sem* sem = _sem::createSemaphore(init);
    80001d28:	00000097          	auipc	ra,0x0
    80001d2c:	a80080e7          	jalr	-1408(ra) # 800017a8 <_ZN4_sem15createSemaphoreEj>
                if (sem == nullptr) {
    80001d30:	00050863          	beqz	a0,80001d40 <handleSupervisorTrap+0x194>
                *handle = sem;
    80001d34:	00a93023          	sd	a0,0(s2)
                frame->a0 = 0;
    80001d38:	0404b023          	sd	zero,64(s1)
                break;
    80001d3c:	f1dff06f          	j	80001c58 <handleSupervisorTrap+0xac>
                    frame->a0 = (uint64)-1;
    80001d40:	fff00793          	li	a5,-1
    80001d44:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d48:	f11ff06f          	j	80001c58 <handleSupervisorTrap+0xac>
                if (sem == nullptr) {
    80001d4c:	00091863          	bnez	s2,80001d5c <handleSupervisorTrap+0x1b0>
                    frame->a0 = (uint64)-1;
    80001d50:	fff00793          	li	a5,-1
    80001d54:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d58:	f01ff06f          	j	80001c58 <handleSupervisorTrap+0xac>
                int ret = sem->close();
    80001d5c:	00090513          	mv	a0,s2
    80001d60:	00000097          	auipc	ra,0x0
    80001d64:	e08080e7          	jalr	-504(ra) # 80001b68 <_ZN4_sem5closeEv>
    80001d68:	00050993          	mv	s3,a0
                if (ret == 0) {
    80001d6c:	00050663          	beqz	a0,80001d78 <handleSupervisorTrap+0x1cc>
                frame->a0 = (uint64)ret;
    80001d70:	0534b023          	sd	s3,64(s1)
                break;
    80001d74:	ee5ff06f          	j	80001c58 <handleSupervisorTrap+0xac>
                    _sem::destroySemaphore(sem);
    80001d78:	00090513          	mv	a0,s2
    80001d7c:	00000097          	auipc	ra,0x0
    80001d80:	a80080e7          	jalr	-1408(ra) # 800017fc <_ZN4_sem16destroySemaphoreEPS_>
    80001d84:	fedff06f          	j	80001d70 <handleSupervisorTrap+0x1c4>
                if (sem == nullptr) {
    80001d88:	00091863          	bnez	s2,80001d98 <handleSupervisorTrap+0x1ec>
                    frame->a0 = (uint64)-1;
    80001d8c:	fff00793          	li	a5,-1
    80001d90:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d94:	ec5ff06f          	j	80001c58 <handleSupervisorTrap+0xac>
                frame->sepc += 4;
    80001d98:	0f04b783          	ld	a5,240(s1)
    80001d9c:	00478793          	addi	a5,a5,4
    80001da0:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->wait();
    80001da4:	00090513          	mv	a0,s2
    80001da8:	00000097          	auipc	ra,0x0
    80001dac:	b9c080e7          	jalr	-1124(ra) # 80001944 <_ZN4_sem4waitEv>
    80001db0:	04a4b023          	sd	a0,64(s1)
                return;
    80001db4:	eb1ff06f          	j	80001c64 <handleSupervisorTrap+0xb8>
                if (sem == nullptr) {
    80001db8:	00091863          	bnez	s2,80001dc8 <handleSupervisorTrap+0x21c>
                    frame->a0 = (uint64)-1;
    80001dbc:	fff00793          	li	a5,-1
    80001dc0:	04f4b023          	sd	a5,64(s1)
                    break;
    80001dc4:	e95ff06f          	j	80001c58 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)sem->signal();
    80001dc8:	00090513          	mv	a0,s2
    80001dcc:	00000097          	auipc	ra,0x0
    80001dd0:	c90080e7          	jalr	-880(ra) # 80001a5c <_ZN4_sem6signalEv>
    80001dd4:	04a4b023          	sd	a0,64(s1)
                break;
    80001dd8:	e81ff06f          	j	80001c58 <handleSupervisorTrap+0xac>
                unsigned n = (unsigned)arg2;
    80001ddc:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001de0:	00091863          	bnez	s2,80001df0 <handleSupervisorTrap+0x244>
                    frame->a0 = (uint64)-1;
    80001de4:	fff00793          	li	a5,-1
    80001de8:	04f4b023          	sd	a5,64(s1)
                    break;
    80001dec:	e6dff06f          	j	80001c58 <handleSupervisorTrap+0xac>
                frame->sepc += 4;
    80001df0:	0f04b783          	ld	a5,240(s1)
    80001df4:	00478793          	addi	a5,a5,4
    80001df8:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->waitN(n);
    80001dfc:	00090513          	mv	a0,s2
    80001e00:	00000097          	auipc	ra,0x0
    80001e04:	a8c080e7          	jalr	-1396(ra) # 8000188c <_ZN4_sem5waitNEj>
    80001e08:	04a4b023          	sd	a0,64(s1)
                return;
    80001e0c:	e59ff06f          	j	80001c64 <handleSupervisorTrap+0xb8>
                unsigned n = (unsigned)arg2;
    80001e10:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001e14:	00091863          	bnez	s2,80001e24 <handleSupervisorTrap+0x278>
                    frame->a0 = (uint64)-1;
    80001e18:	fff00793          	li	a5,-1
    80001e1c:	04f4b023          	sd	a5,64(s1)
                    break;
    80001e20:	e39ff06f          	j	80001c58 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)sem->signalN(n);
    80001e24:	00090513          	mv	a0,s2
    80001e28:	00000097          	auipc	ra,0x0
    80001e2c:	be0080e7          	jalr	-1056(ra) # 80001a08 <_ZN4_sem7signalNEj>
    80001e30:	04a4b023          	sd	a0,64(s1)
                break;
    80001e34:	e25ff06f          	j	80001c58 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)-1;
    80001e38:	fff00793          	li	a5,-1
    80001e3c:	04f4b023          	sd	a5,64(s1)
                break;
    80001e40:	e19ff06f          	j	80001c58 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)__getc();
    80001e44:	00007097          	auipc	ra,0x7
    80001e48:	d64080e7          	jalr	-668(ra) # 80008ba8 <__getc>
    80001e4c:	04a4b023          	sd	a0,64(s1)
                break;
    80001e50:	e09ff06f          	j	80001c58 <handleSupervisorTrap+0xac>
                __putc((char)arg1);
    80001e54:	0ff97513          	andi	a0,s2,255
    80001e58:	00007097          	auipc	ra,0x7
    80001e5c:	d14080e7          	jalr	-748(ra) # 80008b6c <__putc>
                frame->a0 = 0;
    80001e60:	0404b023          	sd	zero,64(s1)
                break;
    80001e64:	df5ff06f          	j	80001c58 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)-1;
    80001e68:	fff00793          	li	a5,-1
    80001e6c:	04f4b023          	sd	a5,64(s1)
                break;
    80001e70:	de9ff06f          	j	80001c58 <handleSupervisorTrap+0xac>

    static void mc_sstatus(uint64 mask) {
        asm volatile("csrc sstatus, %0" : : "r"(mask));//vrati prekide
    }
    static void mc_sip(uint64 mask) {
        asm volatile("csrc sip, %0" : : "r"(mask));
    80001e74:	00200793          	li	a5,2
    80001e78:	1447b073          	csrc	sip,a5
        return;
    80001e7c:	de9ff06f          	j	80001c64 <handleSupervisorTrap+0xb8>
        console_handler();
    80001e80:	00007097          	auipc	ra,0x7
    80001e84:	d60080e7          	jalr	-672(ra) # 80008be0 <console_handler>
        return;
    80001e88:	dddff06f          	j	80001c64 <handleSupervisorTrap+0xb8>
        printString("ERROR, scause: ");
    80001e8c:	00007517          	auipc	a0,0x7
    80001e90:	1bc50513          	addi	a0,a0,444 # 80009048 <CONSOLE_STATUS+0x38>
    80001e94:	00004097          	auipc	ra,0x4
    80001e98:	b1c080e7          	jalr	-1252(ra) # 800059b0 <_Z11printStringPKc>
        printInt(scause);
    80001e9c:	00000613          	li	a2,0
    80001ea0:	00a00593          	li	a1,10
    80001ea4:	0009051b          	sext.w	a0,s2
    80001ea8:	00004097          	auipc	ra,0x4
    80001eac:	cb8080e7          	jalr	-840(ra) # 80005b60 <_Z8printIntiii>
        printString(",sepc ");
    80001eb0:	00007517          	auipc	a0,0x7
    80001eb4:	1a850513          	addi	a0,a0,424 # 80009058 <CONSOLE_STATUS+0x48>
    80001eb8:	00004097          	auipc	ra,0x4
    80001ebc:	af8080e7          	jalr	-1288(ra) # 800059b0 <_Z11printStringPKc>
        printInt(frame->sepc);
    80001ec0:	00000613          	li	a2,0
    80001ec4:	00a00593          	li	a1,10
    80001ec8:	0f04a503          	lw	a0,240(s1)
    80001ecc:	00004097          	auipc	ra,0x4
    80001ed0:	c94080e7          	jalr	-876(ra) # 80005b60 <_Z8printIntiii>
        printString("\n");
    80001ed4:	00007517          	auipc	a0,0x7
    80001ed8:	40c50513          	addi	a0,a0,1036 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80001edc:	00004097          	auipc	ra,0x4
    80001ee0:	ad4080e7          	jalr	-1324(ra) # 800059b0 <_Z11printStringPKc>
        frame->sepc += 4;
    80001ee4:	0f04b783          	ld	a5,240(s1)
    80001ee8:	00478793          	addi	a5,a5,4
    80001eec:	0ef4b823          	sd	a5,240(s1)
        asm volatile("csrw sepc, %0" : : "r"(x));//upis u sepc
    80001ef0:	14179073          	csrw	sepc,a5
        return;
    80001ef4:	d71ff06f          	j	80001c64 <handleSupervisorTrap+0xb8>

0000000080001ef8 <_ZL14blocksForBytesm>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"

_thread* _thread::running = nullptr;

static size_t blocksForBytes(size_t bytes) {
    80001ef8:	ff010113          	addi	sp,sp,-16
    80001efc:	00813423          	sd	s0,8(sp)
    80001f00:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001f04:	03f50513          	addi	a0,a0,63
}
    80001f08:	00655513          	srli	a0,a0,0x6
    80001f0c:	00813403          	ld	s0,8(sp)
    80001f10:	01010113          	addi	sp,sp,16
    80001f14:	00008067          	ret

0000000080001f18 <_ZN7_thread13threadWrapperEv>:

uint64 _thread::getTimeSlice() const {
    return timeSlice;
}

void _thread::threadWrapper() {
    80001f18:	ff010113          	addi	sp,sp,-16
    80001f1c:	00113423          	sd	ra,8(sp)
    80001f20:	00813023          	sd	s0,0(sp)
    80001f24:	01010413          	addi	s0,sp,16
    }
    static void popSppSpie() {
        uint64 target;

        asm volatile("la %0, 1f" : "=r"(target));//skoci na adresu odmah posle sret-a, labela 1
    80001f28:	0000a797          	auipc	a5,0xa
    80001f2c:	cc87b783          	ld	a5,-824(a5) # 8000bbf0 <_GLOBAL_OFFSET_TABLE_+0x8>

        asm volatile("csrw sepc, %0" : : "r"(target));
    80001f30:	14179073          	csrw	sepc,a5
        asm volatile("csrc sstatus, %0" : : "r"(SSTATUS_SPP));//vrati se u user mode
    80001f34:	10000793          	li	a5,256
    80001f38:	1007b073          	csrc	sstatus,a5
        asm volatile("csrs sstatus, %0" : : "r"(SSTATUS_SPIE));//enable prekide posle sret-a
    80001f3c:	02000793          	li	a5,32
    80001f40:	1007a073          	csrs	sstatus,a5

        asm volatile(
            "sret\n"//sret menja rezim
            "1:\n"//procesor posle sret skoci ovde, da bi se vratio u threadWrapper
        );
    80001f44:	10200073          	sret
    Riscv::popSppSpie();

    if (running != nullptr && running->body != nullptr) {
    80001f48:	0000a797          	auipc	a5,0xa
    80001f4c:	d387b783          	ld	a5,-712(a5) # 8000bc80 <_ZN7_thread7runningE>
    80001f50:	00078a63          	beqz	a5,80001f64 <_ZN7_thread13threadWrapperEv+0x4c>
    80001f54:	0007b703          	ld	a4,0(a5)
    80001f58:	00070663          	beqz	a4,80001f64 <_ZN7_thread13threadWrapperEv+0x4c>
        running->body(running->arg);
    80001f5c:	0087b503          	ld	a0,8(a5)
    80001f60:	000700e7          	jalr	a4
    }

    thread_exit();
    80001f64:	fffff097          	auipc	ra,0xfffff
    80001f68:	3e4080e7          	jalr	996(ra) # 80001348 <_Z11thread_exitv>
    80001f6c:	00813083          	ld	ra,8(sp)
    80001f70:	00013403          	ld	s0,0(sp)
    80001f74:	01010113          	addi	sp,sp,16
    80001f78:	00008067          	ret

0000000080001f7c <_ZN7_threadnwEm>:
void* _thread::operator new(size_t size) {
    80001f7c:	fe010113          	addi	sp,sp,-32
    80001f80:	00113c23          	sd	ra,24(sp)
    80001f84:	00813823          	sd	s0,16(sp)
    80001f88:	00913423          	sd	s1,8(sp)
    80001f8c:	01213023          	sd	s2,0(sp)
    80001f90:	02010413          	addi	s0,sp,32
    80001f94:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001f98:	00001097          	auipc	ra,0x1
    80001f9c:	cb0080e7          	jalr	-848(ra) # 80002c48 <_ZN15MemoryAllocator11getInstanceEv>
    80001fa0:	00050493          	mv	s1,a0
    80001fa4:	00090513          	mv	a0,s2
    80001fa8:	00000097          	auipc	ra,0x0
    80001fac:	f50080e7          	jalr	-176(ra) # 80001ef8 <_ZL14blocksForBytesm>
    80001fb0:	00050593          	mv	a1,a0
    80001fb4:	00048513          	mv	a0,s1
    80001fb8:	00001097          	auipc	ra,0x1
    80001fbc:	d10080e7          	jalr	-752(ra) # 80002cc8 <_ZN15MemoryAllocator6mallocEm>
}
    80001fc0:	01813083          	ld	ra,24(sp)
    80001fc4:	01013403          	ld	s0,16(sp)
    80001fc8:	00813483          	ld	s1,8(sp)
    80001fcc:	00013903          	ld	s2,0(sp)
    80001fd0:	02010113          	addi	sp,sp,32
    80001fd4:	00008067          	ret

0000000080001fd8 <_ZN7_threadnaEm>:
void* _thread::operator new[](size_t size) {
    80001fd8:	fe010113          	addi	sp,sp,-32
    80001fdc:	00113c23          	sd	ra,24(sp)
    80001fe0:	00813823          	sd	s0,16(sp)
    80001fe4:	00913423          	sd	s1,8(sp)
    80001fe8:	01213023          	sd	s2,0(sp)
    80001fec:	02010413          	addi	s0,sp,32
    80001ff0:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001ff4:	00001097          	auipc	ra,0x1
    80001ff8:	c54080e7          	jalr	-940(ra) # 80002c48 <_ZN15MemoryAllocator11getInstanceEv>
    80001ffc:	00050493          	mv	s1,a0
    80002000:	00090513          	mv	a0,s2
    80002004:	00000097          	auipc	ra,0x0
    80002008:	ef4080e7          	jalr	-268(ra) # 80001ef8 <_ZL14blocksForBytesm>
    8000200c:	00050593          	mv	a1,a0
    80002010:	00048513          	mv	a0,s1
    80002014:	00001097          	auipc	ra,0x1
    80002018:	cb4080e7          	jalr	-844(ra) # 80002cc8 <_ZN15MemoryAllocator6mallocEm>
}
    8000201c:	01813083          	ld	ra,24(sp)
    80002020:	01013403          	ld	s0,16(sp)
    80002024:	00813483          	ld	s1,8(sp)
    80002028:	00013903          	ld	s2,0(sp)
    8000202c:	02010113          	addi	sp,sp,32
    80002030:	00008067          	ret

0000000080002034 <_ZN7_threaddlEPv>:
    if (ptr == nullptr) {
    80002034:	04050263          	beqz	a0,80002078 <_ZN7_threaddlEPv+0x44>
void _thread::operator delete(void* ptr) {
    80002038:	fe010113          	addi	sp,sp,-32
    8000203c:	00113c23          	sd	ra,24(sp)
    80002040:	00813823          	sd	s0,16(sp)
    80002044:	00913423          	sd	s1,8(sp)
    80002048:	02010413          	addi	s0,sp,32
    8000204c:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance().free(ptr);
    80002050:	00001097          	auipc	ra,0x1
    80002054:	bf8080e7          	jalr	-1032(ra) # 80002c48 <_ZN15MemoryAllocator11getInstanceEv>
    80002058:	00048593          	mv	a1,s1
    8000205c:	00001097          	auipc	ra,0x1
    80002060:	dc8080e7          	jalr	-568(ra) # 80002e24 <_ZN15MemoryAllocator4freeEPv>
}
    80002064:	01813083          	ld	ra,24(sp)
    80002068:	01013403          	ld	s0,16(sp)
    8000206c:	00813483          	ld	s1,8(sp)
    80002070:	02010113          	addi	sp,sp,32
    80002074:	00008067          	ret
    80002078:	00008067          	ret

000000008000207c <_ZN7_threaddaEPv>:
    if (ptr == nullptr) {
    8000207c:	04050263          	beqz	a0,800020c0 <_ZN7_threaddaEPv+0x44>
void _thread::operator delete[](void* ptr) {
    80002080:	fe010113          	addi	sp,sp,-32
    80002084:	00113c23          	sd	ra,24(sp)
    80002088:	00813823          	sd	s0,16(sp)
    8000208c:	00913423          	sd	s1,8(sp)
    80002090:	02010413          	addi	s0,sp,32
    80002094:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance().free(ptr);
    80002098:	00001097          	auipc	ra,0x1
    8000209c:	bb0080e7          	jalr	-1104(ra) # 80002c48 <_ZN15MemoryAllocator11getInstanceEv>
    800020a0:	00048593          	mv	a1,s1
    800020a4:	00001097          	auipc	ra,0x1
    800020a8:	d80080e7          	jalr	-640(ra) # 80002e24 <_ZN15MemoryAllocator4freeEPv>
}
    800020ac:	01813083          	ld	ra,24(sp)
    800020b0:	01013403          	ld	s0,16(sp)
    800020b4:	00813483          	ld	s1,8(sp)
    800020b8:	02010113          	addi	sp,sp,32
    800020bc:	00008067          	ret
    800020c0:	00008067          	ret

00000000800020c4 <_ZN7_threadC1EPFvPvES0_S0_>:
_thread::_thread(Body body, void* arg, void* stackSpace) {
    800020c4:	ff010113          	addi	sp,sp,-16
    800020c8:	00813423          	sd	s0,8(sp)
    800020cc:	01010413          	addi	s0,sp,16
    this->body = body;
    800020d0:	00b53023          	sd	a1,0(a0)
    this->arg = arg;
    800020d4:	00c53423          	sd	a2,8(a0)
    if (stackSpace != nullptr) {
    800020d8:	06068663          	beqz	a3,80002144 <_ZN7_threadC1EPFvPvES0_S0_+0x80>
        this->stack = (void*)((uint64)stackSpace - DEFAULT_STACK_SIZE);
    800020dc:	fffff7b7          	lui	a5,0xfffff
    800020e0:	00f687b3          	add	a5,a3,a5
    800020e4:	00f53823          	sd	a5,16(a0)
        this->context.sp = (uint64)stackSpace;
    800020e8:	02d53023          	sd	a3,32(a0)
    this->context.s0 = 0;
    800020ec:	02053423          	sd	zero,40(a0)
    this->context.s1 = 0;
    800020f0:	02053823          	sd	zero,48(a0)
    this->context.s2 = 0;
    800020f4:	02053c23          	sd	zero,56(a0)
    this->context.s3 = 0;
    800020f8:	04053023          	sd	zero,64(a0)
    this->context.s4 = 0;
    800020fc:	04053423          	sd	zero,72(a0)
    this->context.s5 = 0;
    80002100:	04053823          	sd	zero,80(a0)
    this->context.s6 = 0;
    80002104:	04053c23          	sd	zero,88(a0)
    this->context.s7 = 0;
    80002108:	06053023          	sd	zero,96(a0)
    this->context.s8 = 0;
    8000210c:	06053423          	sd	zero,104(a0)
    this->context.s9 = 0;
    80002110:	06053823          	sd	zero,112(a0)
    this->context.s10 = 0;
    80002114:	06053c23          	sd	zero,120(a0)
    this->context.s11 = 0;
    80002118:	08053023          	sd	zero,128(a0)
    this->context.ra = (uint64)&_thread::threadWrapper;//nit nigde nije radila pa upisujemo povratnu adresu
    8000211c:	00000797          	auipc	a5,0x0
    80002120:	dfc78793          	addi	a5,a5,-516 # 80001f18 <_ZN7_thread13threadWrapperEv>
    80002124:	00f53c23          	sd	a5,24(a0)
    this->timeSlice = DEFAULT_TIME_SLICE;
    80002128:	00200793          	li	a5,2
    8000212c:	08f53423          	sd	a5,136(a0)
    this->state = CREATED;//nakon ovoga u trap.cpp radimo ready
    80002130:	08052823          	sw	zero,144(a0)
    this->next = nullptr;
    80002134:	08053c23          	sd	zero,152(a0)
}
    80002138:	00813403          	ld	s0,8(sp)
    8000213c:	01010113          	addi	sp,sp,16
    80002140:	00008067          	ret
        this->stack = nullptr;
    80002144:	00053823          	sd	zero,16(a0)
        this->context.sp = 0;
    80002148:	02053023          	sd	zero,32(a0)
    8000214c:	fa1ff06f          	j	800020ec <_ZN7_threadC1EPFvPvES0_S0_+0x28>

0000000080002150 <_ZN7_thread12createThreadEPFvPvES0_S0_>:
_thread* _thread::createThread(Body body, void* arg, void* stackSpace) {
    80002150:	fd010113          	addi	sp,sp,-48
    80002154:	02113423          	sd	ra,40(sp)
    80002158:	02813023          	sd	s0,32(sp)
    8000215c:	00913c23          	sd	s1,24(sp)
    80002160:	01213823          	sd	s2,16(sp)
    80002164:	01313423          	sd	s3,8(sp)
    80002168:	01413023          	sd	s4,0(sp)
    8000216c:	03010413          	addi	s0,sp,48
    80002170:	00050913          	mv	s2,a0
    80002174:	00058993          	mv	s3,a1
    80002178:	00060a13          	mv	s4,a2
    return new _thread(body, arg, stackSpace);
    8000217c:	0a000513          	li	a0,160
    80002180:	00000097          	auipc	ra,0x0
    80002184:	dfc080e7          	jalr	-516(ra) # 80001f7c <_ZN7_threadnwEm>
    80002188:	00050493          	mv	s1,a0
    8000218c:	000a0693          	mv	a3,s4
    80002190:	00098613          	mv	a2,s3
    80002194:	00090593          	mv	a1,s2
    80002198:	00000097          	auipc	ra,0x0
    8000219c:	f2c080e7          	jalr	-212(ra) # 800020c4 <_ZN7_threadC1EPFvPvES0_S0_>
}
    800021a0:	00048513          	mv	a0,s1
    800021a4:	02813083          	ld	ra,40(sp)
    800021a8:	02013403          	ld	s0,32(sp)
    800021ac:	01813483          	ld	s1,24(sp)
    800021b0:	01013903          	ld	s2,16(sp)
    800021b4:	00813983          	ld	s3,8(sp)
    800021b8:	00013a03          	ld	s4,0(sp)
    800021bc:	03010113          	addi	sp,sp,48
    800021c0:	00008067          	ret

00000000800021c4 <_ZN7_thread13destroyThreadEPS_>:
    if (thread == nullptr) {
    800021c4:	04050e63          	beqz	a0,80002220 <_ZN7_thread13destroyThreadEPS_+0x5c>
int _thread::destroyThread(_thread* thread) {
    800021c8:	fe010113          	addi	sp,sp,-32
    800021cc:	00113c23          	sd	ra,24(sp)
    800021d0:	00813823          	sd	s0,16(sp)
    800021d4:	00913423          	sd	s1,8(sp)
    800021d8:	02010413          	addi	s0,sp,32
    800021dc:	00050493          	mv	s1,a0
    if (thread->stack != nullptr) {
    800021e0:	01053783          	ld	a5,16(a0)
    800021e4:	00078c63          	beqz	a5,800021fc <_ZN7_thread13destroyThreadEPS_+0x38>
        MemoryAllocator::getInstance().free(thread->stack);
    800021e8:	00001097          	auipc	ra,0x1
    800021ec:	a60080e7          	jalr	-1440(ra) # 80002c48 <_ZN15MemoryAllocator11getInstanceEv>
    800021f0:	0104b583          	ld	a1,16(s1)
    800021f4:	00001097          	auipc	ra,0x1
    800021f8:	c30080e7          	jalr	-976(ra) # 80002e24 <_ZN15MemoryAllocator4freeEPv>
    delete thread;
    800021fc:	00048513          	mv	a0,s1
    80002200:	00000097          	auipc	ra,0x0
    80002204:	e34080e7          	jalr	-460(ra) # 80002034 <_ZN7_threaddlEPv>
    return 0;
    80002208:	00000513          	li	a0,0
}
    8000220c:	01813083          	ld	ra,24(sp)
    80002210:	01013403          	ld	s0,16(sp)
    80002214:	00813483          	ld	s1,8(sp)
    80002218:	02010113          	addi	sp,sp,32
    8000221c:	00008067          	ret
        return -1;
    80002220:	fff00513          	li	a0,-1
}
    80002224:	00008067          	ret

0000000080002228 <_ZN7_thread8dispatchEv>:
void _thread::dispatch() {
    80002228:	fe010113          	addi	sp,sp,-32
    8000222c:	00113c23          	sd	ra,24(sp)
    80002230:	00813823          	sd	s0,16(sp)
    80002234:	00913423          	sd	s1,8(sp)
    80002238:	02010413          	addi	s0,sp,32
    _thread* old = running;
    8000223c:	0000a497          	auipc	s1,0xa
    80002240:	a444b483          	ld	s1,-1468(s1) # 8000bc80 <_ZN7_thread7runningE>
    if (old != nullptr && old->state != FINISHED && old->state != BLOCKED) {
    80002244:	00048c63          	beqz	s1,8000225c <_ZN7_thread8dispatchEv+0x34>
    80002248:	0904a783          	lw	a5,144(s1)
    8000224c:	00400713          	li	a4,4
    80002250:	00e78663          	beq	a5,a4,8000225c <_ZN7_thread8dispatchEv+0x34>
    80002254:	00300713          	li	a4,3
    80002258:	04e79663          	bne	a5,a4,800022a4 <_ZN7_thread8dispatchEv+0x7c>
    _thread* next = Scheduler::get();
    8000225c:	00000097          	auipc	ra,0x0
    80002260:	360080e7          	jalr	864(ra) # 800025bc <_ZN9Scheduler3getEv>
    if (next == nullptr) {
    80002264:	04050863          	beqz	a0,800022b4 <_ZN7_thread8dispatchEv+0x8c>
    running = next;
    80002268:	0000a797          	auipc	a5,0xa
    8000226c:	a0a7bc23          	sd	a0,-1512(a5) # 8000bc80 <_ZN7_thread7runningE>
    running->state = RUNNING;
    80002270:	00200793          	li	a5,2
    80002274:	08f52823          	sw	a5,144(a0)
    if (old != nullptr && old != running) {//ako je scheduler vratio istu nit ne treba contextswitch
    80002278:	00048c63          	beqz	s1,80002290 <_ZN7_thread8dispatchEv+0x68>
    8000227c:	00a48a63          	beq	s1,a0,80002290 <_ZN7_thread8dispatchEv+0x68>
        contextSwitch(&old->context, &running->context);
    80002280:	01850593          	addi	a1,a0,24
    80002284:	01848513          	addi	a0,s1,24
    80002288:	fffff097          	auipc	ra,0xfffff
    8000228c:	ea8080e7          	jalr	-344(ra) # 80001130 <contextSwitch>
}
    80002290:	01813083          	ld	ra,24(sp)
    80002294:	01013403          	ld	s0,16(sp)
    80002298:	00813483          	ld	s1,8(sp)
    8000229c:	02010113          	addi	sp,sp,32
    800022a0:	00008067          	ret
        Scheduler::put(old);
    800022a4:	00048513          	mv	a0,s1
    800022a8:	00000097          	auipc	ra,0x0
    800022ac:	2a8080e7          	jalr	680(ra) # 80002550 <_ZN9Scheduler3putEP7_thread>
    800022b0:	fadff06f          	j	8000225c <_ZN7_thread8dispatchEv+0x34>
        if (old != nullptr && old->state == RUNNING) {
    800022b4:	fc048ee3          	beqz	s1,80002290 <_ZN7_thread8dispatchEv+0x68>
    800022b8:	0904a703          	lw	a4,144(s1)
    800022bc:	00200793          	li	a5,2
    800022c0:	fcf718e3          	bne	a4,a5,80002290 <_ZN7_thread8dispatchEv+0x68>
            running = old;
    800022c4:	0000a797          	auipc	a5,0xa
    800022c8:	9a97be23          	sd	s1,-1604(a5) # 8000bc80 <_ZN7_thread7runningE>
        return;
    800022cc:	fc5ff06f          	j	80002290 <_ZN7_thread8dispatchEv+0x68>

00000000800022d0 <_ZN7_thread4exitEv>:
    if (running == nullptr) {
    800022d0:	0000a797          	auipc	a5,0xa
    800022d4:	9b07b783          	ld	a5,-1616(a5) # 8000bc80 <_ZN7_thread7runningE>
    800022d8:	02078c63          	beqz	a5,80002310 <_ZN7_thread4exitEv+0x40>
int _thread::exit() {
    800022dc:	ff010113          	addi	sp,sp,-16
    800022e0:	00113423          	sd	ra,8(sp)
    800022e4:	00813023          	sd	s0,0(sp)
    800022e8:	01010413          	addi	s0,sp,16
    running->state = FINISHED;
    800022ec:	00400713          	li	a4,4
    800022f0:	08e7a823          	sw	a4,144(a5)
    dispatch();
    800022f4:	00000097          	auipc	ra,0x0
    800022f8:	f34080e7          	jalr	-204(ra) # 80002228 <_ZN7_thread8dispatchEv>
    return 0;
    800022fc:	00000513          	li	a0,0
}
    80002300:	00813083          	ld	ra,8(sp)
    80002304:	00013403          	ld	s0,0(sp)
    80002308:	01010113          	addi	sp,sp,16
    8000230c:	00008067          	ret
        return -1;
    80002310:	fff00513          	li	a0,-1
}
    80002314:	00008067          	ret

0000000080002318 <_ZNK7_thread7getBodyEv>:
_thread::Body _thread::getBody() const {
    80002318:	ff010113          	addi	sp,sp,-16
    8000231c:	00813423          	sd	s0,8(sp)
    80002320:	01010413          	addi	s0,sp,16
}
    80002324:	00053503          	ld	a0,0(a0)
    80002328:	00813403          	ld	s0,8(sp)
    8000232c:	01010113          	addi	sp,sp,16
    80002330:	00008067          	ret

0000000080002334 <_ZNK7_thread6getArgEv>:
void* _thread::getArg() const {
    80002334:	ff010113          	addi	sp,sp,-16
    80002338:	00813423          	sd	s0,8(sp)
    8000233c:	01010413          	addi	s0,sp,16
}
    80002340:	00853503          	ld	a0,8(a0)
    80002344:	00813403          	ld	s0,8(sp)
    80002348:	01010113          	addi	sp,sp,16
    8000234c:	00008067          	ret

0000000080002350 <_ZNK7_thread8getStackEv>:
void* _thread::getStack() const {
    80002350:	ff010113          	addi	sp,sp,-16
    80002354:	00813423          	sd	s0,8(sp)
    80002358:	01010413          	addi	s0,sp,16
}
    8000235c:	01053503          	ld	a0,16(a0)
    80002360:	00813403          	ld	s0,8(sp)
    80002364:	01010113          	addi	sp,sp,16
    80002368:	00008067          	ret

000000008000236c <_ZN7_thread10getContextEv>:
_thread::Context* _thread::getContext() {
    8000236c:	ff010113          	addi	sp,sp,-16
    80002370:	00813423          	sd	s0,8(sp)
    80002374:	01010413          	addi	s0,sp,16
}
    80002378:	01850513          	addi	a0,a0,24
    8000237c:	00813403          	ld	s0,8(sp)
    80002380:	01010113          	addi	sp,sp,16
    80002384:	00008067          	ret

0000000080002388 <_ZNK7_thread8getStateEv>:
_thread::State _thread::getState() const {
    80002388:	ff010113          	addi	sp,sp,-16
    8000238c:	00813423          	sd	s0,8(sp)
    80002390:	01010413          	addi	s0,sp,16
}
    80002394:	09052503          	lw	a0,144(a0)
    80002398:	00813403          	ld	s0,8(sp)
    8000239c:	01010113          	addi	sp,sp,16
    800023a0:	00008067          	ret

00000000800023a4 <_ZN7_thread8setStateENS_5StateE>:
void _thread::setState(State state) {
    800023a4:	ff010113          	addi	sp,sp,-16
    800023a8:	00813423          	sd	s0,8(sp)
    800023ac:	01010413          	addi	s0,sp,16
    this->state = state;
    800023b0:	08b52823          	sw	a1,144(a0)
}
    800023b4:	00813403          	ld	s0,8(sp)
    800023b8:	01010113          	addi	sp,sp,16
    800023bc:	00008067          	ret

00000000800023c0 <_ZNK7_thread12getTimeSliceEv>:
uint64 _thread::getTimeSlice() const {
    800023c0:	ff010113          	addi	sp,sp,-16
    800023c4:	00813423          	sd	s0,8(sp)
    800023c8:	01010413          	addi	s0,sp,16
}
    800023cc:	08853503          	ld	a0,136(a0)
    800023d0:	00813403          	ld	s0,8(sp)
    800023d4:	01010113          	addi	sp,sp,16
    800023d8:	00008067          	ret

00000000800023dc <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800023dc:	fe010113          	addi	sp,sp,-32
    800023e0:	00113c23          	sd	ra,24(sp)
    800023e4:	00813823          	sd	s0,16(sp)
    800023e8:	00913423          	sd	s1,8(sp)
    800023ec:	01213023          	sd	s2,0(sp)
    800023f0:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800023f4:	00007517          	auipc	a0,0x7
    800023f8:	d7c50513          	addi	a0,a0,-644 # 80009170 <CONSOLE_STATUS+0x160>
    800023fc:	00003097          	auipc	ra,0x3
    80002400:	5b4080e7          	jalr	1460(ra) # 800059b0 <_Z11printStringPKc>
    int test = getc() - '0';
    80002404:	fffff097          	auipc	ra,0xfffff
    80002408:	18c080e7          	jalr	396(ra) # 80001590 <_Z4getcv>
    8000240c:	00050913          	mv	s2,a0
    80002410:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80002414:	fffff097          	auipc	ra,0xfffff
    80002418:	17c080e7          	jalr	380(ra) # 80001590 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    8000241c:	fcb9091b          	addiw	s2,s2,-53
    80002420:	00100793          	li	a5,1
    80002424:	0327f463          	bgeu	a5,s2,8000244c <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80002428:	00800793          	li	a5,8
    8000242c:	1097e863          	bltu	a5,s1,8000253c <_Z8userMainv+0x160>
    80002430:	00249493          	slli	s1,s1,0x2
    80002434:	00007717          	auipc	a4,0x7
    80002438:	f5470713          	addi	a4,a4,-172 # 80009388 <CONSOLE_STATUS+0x378>
    8000243c:	00e484b3          	add	s1,s1,a4
    80002440:	0004a783          	lw	a5,0(s1)
    80002444:	00e787b3          	add	a5,a5,a4
    80002448:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    8000244c:	00007517          	auipc	a0,0x7
    80002450:	d4450513          	addi	a0,a0,-700 # 80009190 <CONSOLE_STATUS+0x180>
    80002454:	00003097          	auipc	ra,0x3
    80002458:	55c080e7          	jalr	1372(ra) # 800059b0 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8000245c:	01813083          	ld	ra,24(sp)
    80002460:	01013403          	ld	s0,16(sp)
    80002464:	00813483          	ld	s1,8(sp)
    80002468:	00013903          	ld	s2,0(sp)
    8000246c:	02010113          	addi	sp,sp,32
    80002470:	00008067          	ret
            Threads_C_API_test();
    80002474:	00003097          	auipc	ra,0x3
    80002478:	bb4080e7          	jalr	-1100(ra) # 80005028 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000247c:	00007517          	auipc	a0,0x7
    80002480:	d4450513          	addi	a0,a0,-700 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80002484:	00003097          	auipc	ra,0x3
    80002488:	52c080e7          	jalr	1324(ra) # 800059b0 <_Z11printStringPKc>
            break;
    8000248c:	fd1ff06f          	j	8000245c <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80002490:	00002097          	auipc	ra,0x2
    80002494:	d28080e7          	jalr	-728(ra) # 800041b8 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80002498:	00007517          	auipc	a0,0x7
    8000249c:	d6850513          	addi	a0,a0,-664 # 80009200 <CONSOLE_STATUS+0x1f0>
    800024a0:	00003097          	auipc	ra,0x3
    800024a4:	510080e7          	jalr	1296(ra) # 800059b0 <_Z11printStringPKc>
            break;
    800024a8:	fb5ff06f          	j	8000245c <_Z8userMainv+0x80>
            producerConsumer_C_API();
    800024ac:	00001097          	auipc	ra,0x1
    800024b0:	560080e7          	jalr	1376(ra) # 80003a0c <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800024b4:	00007517          	auipc	a0,0x7
    800024b8:	d8c50513          	addi	a0,a0,-628 # 80009240 <CONSOLE_STATUS+0x230>
    800024bc:	00003097          	auipc	ra,0x3
    800024c0:	4f4080e7          	jalr	1268(ra) # 800059b0 <_Z11printStringPKc>
            break;
    800024c4:	f99ff06f          	j	8000245c <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    800024c8:	00003097          	auipc	ra,0x3
    800024cc:	ea4080e7          	jalr	-348(ra) # 8000536c <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800024d0:	00007517          	auipc	a0,0x7
    800024d4:	dc050513          	addi	a0,a0,-576 # 80009290 <CONSOLE_STATUS+0x280>
    800024d8:	00003097          	auipc	ra,0x3
    800024dc:	4d8080e7          	jalr	1240(ra) # 800059b0 <_Z11printStringPKc>
            break;
    800024e0:	f7dff06f          	j	8000245c <_Z8userMainv+0x80>
            System_Mode_test();
    800024e4:	00004097          	auipc	ra,0x4
    800024e8:	1ac080e7          	jalr	428(ra) # 80006690 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800024ec:	00007517          	auipc	a0,0x7
    800024f0:	dfc50513          	addi	a0,a0,-516 # 800092e8 <CONSOLE_STATUS+0x2d8>
    800024f4:	00003097          	auipc	ra,0x3
    800024f8:	4bc080e7          	jalr	1212(ra) # 800059b0 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800024fc:	00007517          	auipc	a0,0x7
    80002500:	e0c50513          	addi	a0,a0,-500 # 80009308 <CONSOLE_STATUS+0x2f8>
    80002504:	00003097          	auipc	ra,0x3
    80002508:	4ac080e7          	jalr	1196(ra) # 800059b0 <_Z11printStringPKc>
            break;
    8000250c:	f51ff06f          	j	8000245c <_Z8userMainv+0x80>
            deadlockBreakTest();
    80002510:	00001097          	auipc	ra,0x1
    80002514:	ab4080e7          	jalr	-1356(ra) # 80002fc4 <_Z17deadlockBreakTestv>
            printString("Test se nije uspesno zavrsio\n");
    80002518:	00007517          	auipc	a0,0x7
    8000251c:	dd050513          	addi	a0,a0,-560 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80002520:	00003097          	auipc	ra,0x3
    80002524:	490080e7          	jalr	1168(ra) # 800059b0 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80002528:	00007517          	auipc	a0,0x7
    8000252c:	de050513          	addi	a0,a0,-544 # 80009308 <CONSOLE_STATUS+0x2f8>
    80002530:	00003097          	auipc	ra,0x3
    80002534:	480080e7          	jalr	1152(ra) # 800059b0 <_Z11printStringPKc>
            break;
    80002538:	f25ff06f          	j	8000245c <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    8000253c:	00007517          	auipc	a0,0x7
    80002540:	e2450513          	addi	a0,a0,-476 # 80009360 <CONSOLE_STATUS+0x350>
    80002544:	00003097          	auipc	ra,0x3
    80002548:	46c080e7          	jalr	1132(ra) # 800059b0 <_Z11printStringPKc>
    8000254c:	f11ff06f          	j	8000245c <_Z8userMainv+0x80>

0000000080002550 <_ZN9Scheduler3putEP7_thread>:
#include "../h/Semaphore.hpp"

_thread* Scheduler::head = nullptr;
_thread* Scheduler::tail = nullptr;

void Scheduler::put(_thread* thread) {
    80002550:	ff010113          	addi	sp,sp,-16
    80002554:	00813423          	sd	s0,8(sp)
    80002558:	01010413          	addi	s0,sp,16
    if (thread == nullptr) {
    8000255c:	04050063          	beqz	a0,8000259c <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    if (thread->state == _thread::FINISHED || thread->state == _thread::BLOCKED) {
    80002560:	09052783          	lw	a5,144(a0)
    80002564:	ffd7879b          	addiw	a5,a5,-3
    80002568:	00100713          	li	a4,1
    8000256c:	02f77863          	bgeu	a4,a5,8000259c <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    thread->state = _thread::READY;
    80002570:	00100793          	li	a5,1
    80002574:	08f52823          	sw	a5,144(a0)
    thread->next = nullptr;
    80002578:	08053c23          	sd	zero,152(a0)

    if (head == nullptr) {
    8000257c:	00009797          	auipc	a5,0x9
    80002580:	70c7b783          	ld	a5,1804(a5) # 8000bc88 <_ZN9Scheduler4headE>
    80002584:	02078263          	beqz	a5,800025a8 <_ZN9Scheduler3putEP7_thread+0x58>
        head = thread;
        tail = thread;
    } else {
        tail->next = thread;
    80002588:	00009797          	auipc	a5,0x9
    8000258c:	70078793          	addi	a5,a5,1792 # 8000bc88 <_ZN9Scheduler4headE>
    80002590:	0087b703          	ld	a4,8(a5)
    80002594:	08a73c23          	sd	a0,152(a4)
        tail = thread;
    80002598:	00a7b423          	sd	a0,8(a5)
    }
}
    8000259c:	00813403          	ld	s0,8(sp)
    800025a0:	01010113          	addi	sp,sp,16
    800025a4:	00008067          	ret
        head = thread;
    800025a8:	00009797          	auipc	a5,0x9
    800025ac:	6e078793          	addi	a5,a5,1760 # 8000bc88 <_ZN9Scheduler4headE>
    800025b0:	00a7b023          	sd	a0,0(a5)
        tail = thread;
    800025b4:	00a7b423          	sd	a0,8(a5)
    800025b8:	fe5ff06f          	j	8000259c <_ZN9Scheduler3putEP7_thread+0x4c>

00000000800025bc <_ZN9Scheduler3getEv>:


_thread* Scheduler::get() {
    800025bc:	fe010113          	addi	sp,sp,-32
    800025c0:	00113c23          	sd	ra,24(sp)
    800025c4:	00813823          	sd	s0,16(sp)
    800025c8:	00913423          	sd	s1,8(sp)
    800025cc:	02010413          	addi	s0,sp,32
    if (head == nullptr) {
    800025d0:	00009797          	auipc	a5,0x9
    800025d4:	6b87b783          	ld	a5,1720(a5) # 8000bc88 <_ZN9Scheduler4headE>
    800025d8:	02078c63          	beqz	a5,80002610 <_ZN9Scheduler3getEv+0x54>
        if (head == nullptr) {
            return nullptr;
        }
    }

    _thread* thread = head;
    800025dc:	00009717          	auipc	a4,0x9
    800025e0:	6ac70713          	addi	a4,a4,1708 # 8000bc88 <_ZN9Scheduler4headE>
    800025e4:	00073483          	ld	s1,0(a4)

    head = head->next;
    800025e8:	0984b783          	ld	a5,152(s1)
    800025ec:	00f73023          	sd	a5,0(a4)

    if (head == nullptr) {
    800025f0:	02078c63          	beqz	a5,80002628 <_ZN9Scheduler3getEv+0x6c>
        tail = nullptr;
        _sem::unblockOne();
    }

    thread->next = nullptr;
    800025f4:	0804bc23          	sd	zero,152(s1)

    return thread;
}
    800025f8:	00048513          	mv	a0,s1
    800025fc:	01813083          	ld	ra,24(sp)
    80002600:	01013403          	ld	s0,16(sp)
    80002604:	00813483          	ld	s1,8(sp)
    80002608:	02010113          	addi	sp,sp,32
    8000260c:	00008067          	ret
        _sem::unblockOne();
    80002610:	fffff097          	auipc	ra,0xfffff
    80002614:	478080e7          	jalr	1144(ra) # 80001a88 <_ZN4_sem10unblockOneEv>
        if (head == nullptr) {
    80002618:	00009497          	auipc	s1,0x9
    8000261c:	6704b483          	ld	s1,1648(s1) # 8000bc88 <_ZN9Scheduler4headE>
    80002620:	fa049ee3          	bnez	s1,800025dc <_ZN9Scheduler3getEv+0x20>
    80002624:	fd5ff06f          	j	800025f8 <_ZN9Scheduler3getEv+0x3c>
        tail = nullptr;
    80002628:	00009797          	auipc	a5,0x9
    8000262c:	6607b423          	sd	zero,1640(a5) # 8000bc90 <_ZN9Scheduler4tailE>
        _sem::unblockOne();
    80002630:	fffff097          	auipc	ra,0xfffff
    80002634:	458080e7          	jalr	1112(ra) # 80001a88 <_ZN4_sem10unblockOneEv>
    80002638:	fbdff06f          	j	800025f4 <_ZN9Scheduler3getEv+0x38>

000000008000263c <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    8000263c:	ff010113          	addi	sp,sp,-16
    80002640:	00813423          	sd	s0,8(sp)
    80002644:	01010413          	addi	s0,sp,16
    return head == nullptr;
    80002648:	00009517          	auipc	a0,0x9
    8000264c:	64053503          	ld	a0,1600(a0) # 8000bc88 <_ZN9Scheduler4headE>
    80002650:	00153513          	seqz	a0,a0
    80002654:	00813403          	ld	s0,8(sp)
    80002658:	01010113          	addi	sp,sp,16
    8000265c:	00008067          	ret

0000000080002660 <_Znwm>:
#include "../h/new.hpp"
#include "../h/syscall_c.hpp"

void* operator new(size_t size) {
    80002660:	ff010113          	addi	sp,sp,-16
    80002664:	00113423          	sd	ra,8(sp)
    80002668:	00813023          	sd	s0,0(sp)
    8000266c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002670:	fffff097          	auipc	ra,0xfffff
    80002674:	b88080e7          	jalr	-1144(ra) # 800011f8 <_Z9mem_allocm>
}
    80002678:	00813083          	ld	ra,8(sp)
    8000267c:	00013403          	ld	s0,0(sp)
    80002680:	01010113          	addi	sp,sp,16
    80002684:	00008067          	ret

0000000080002688 <_Znam>:

void* operator new[](size_t size) {
    80002688:	ff010113          	addi	sp,sp,-16
    8000268c:	00113423          	sd	ra,8(sp)
    80002690:	00813023          	sd	s0,0(sp)
    80002694:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002698:	fffff097          	auipc	ra,0xfffff
    8000269c:	b60080e7          	jalr	-1184(ra) # 800011f8 <_Z9mem_allocm>
}
    800026a0:	00813083          	ld	ra,8(sp)
    800026a4:	00013403          	ld	s0,0(sp)
    800026a8:	01010113          	addi	sp,sp,16
    800026ac:	00008067          	ret

00000000800026b0 <_ZdlPv>:

void operator delete(void* ptr) {
    800026b0:	ff010113          	addi	sp,sp,-16
    800026b4:	00113423          	sd	ra,8(sp)
    800026b8:	00813023          	sd	s0,0(sp)
    800026bc:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800026c0:	fffff097          	auipc	ra,0xfffff
    800026c4:	b84080e7          	jalr	-1148(ra) # 80001244 <_Z8mem_freePv>
}
    800026c8:	00813083          	ld	ra,8(sp)
    800026cc:	00013403          	ld	s0,0(sp)
    800026d0:	01010113          	addi	sp,sp,16
    800026d4:	00008067          	ret

00000000800026d8 <_ZdaPv>:

void operator delete[](void* ptr) {
    800026d8:	ff010113          	addi	sp,sp,-16
    800026dc:	00113423          	sd	ra,8(sp)
    800026e0:	00813023          	sd	s0,0(sp)
    800026e4:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800026e8:	fffff097          	auipc	ra,0xfffff
    800026ec:	b5c080e7          	jalr	-1188(ra) # 80001244 <_Z8mem_freePv>
    800026f0:	00813083          	ld	ra,8(sp)
    800026f4:	00013403          	ld	s0,0(sp)
    800026f8:	01010113          	addi	sp,sp,16
    800026fc:	00008067          	ret

0000000080002700 <_ZL15userMainWrapperPv>:
extern "C" void supervisorTrap();
extern void userMain();

static volatile bool userMainFinished = false;

static void userMainWrapper(void*) {
    80002700:	ff010113          	addi	sp,sp,-16
    80002704:	00113423          	sd	ra,8(sp)
    80002708:	00813023          	sd	s0,0(sp)
    8000270c:	01010413          	addi	s0,sp,16
    userMain();
    80002710:	00000097          	auipc	ra,0x0
    80002714:	ccc080e7          	jalr	-820(ra) # 800023dc <_Z8userMainv>
    userMainFinished = true;
    80002718:	00100793          	li	a5,1
    8000271c:	00009717          	auipc	a4,0x9
    80002720:	56f70e23          	sb	a5,1404(a4) # 8000bc98 <_ZL16userMainFinished>
    thread_exit();
    80002724:	fffff097          	auipc	ra,0xfffff
    80002728:	c24080e7          	jalr	-988(ra) # 80001348 <_Z11thread_exitv>
}
    8000272c:	00813083          	ld	ra,8(sp)
    80002730:	00013403          	ld	s0,0(sp)
    80002734:	01010113          	addi	sp,sp,16
    80002738:	00008067          	ret

000000008000273c <main>:

int main() {
    8000273c:	f3010113          	addi	sp,sp,-208
    80002740:	0c113423          	sd	ra,200(sp)
    80002744:	0c813023          	sd	s0,192(sp)
    80002748:	0a913c23          	sd	s1,184(sp)
    8000274c:	0d010413          	addi	s0,sp,208
    Riscv::w_stvec((uint64)&supervisorTrap);
    80002750:	00009797          	auipc	a5,0x9
    80002754:	4b87b783          	ld	a5,1208(a5) # 8000bc08 <_GLOBAL_OFFSET_TABLE_+0x20>
        asm volatile("csrw stvec, %0" : : "r"(x));//adresa prekidne rutine, da bi skocilo na supervisorTrap
    80002758:	10579073          	csrw	stvec,a5
        asm volatile("csrs sstatus, %0" : : "r"(mask));//omoguci prekide
    8000275c:	00200793          	li	a5,2
    80002760:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    _thread mainThread(nullptr, nullptr, nullptr);//poziv konstruktora
    80002764:	00000693          	li	a3,0
    80002768:	00000613          	li	a2,0
    8000276c:	00000593          	li	a1,0
    80002770:	f4040493          	addi	s1,s0,-192
    80002774:	00048513          	mv	a0,s1
    80002778:	00000097          	auipc	ra,0x0
    8000277c:	94c080e7          	jalr	-1716(ra) # 800020c4 <_ZN7_threadC1EPFvPvES0_S0_>
    mainThread.setState(_thread::RUNNING);
    80002780:	00200593          	li	a1,2
    80002784:	00048513          	mv	a0,s1
    80002788:	00000097          	auipc	ra,0x0
    8000278c:	c1c080e7          	jalr	-996(ra) # 800023a4 <_ZN7_thread8setStateENS_5StateE>
    _thread::running = &mainThread;//pravimo main nit zbog dispatch-a, jer nemamo running na pocetku, i scheduler radi samo sa _thread
    80002790:	00009797          	auipc	a5,0x9
    80002794:	4707b783          	ld	a5,1136(a5) # 8000bc00 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002798:	0097b023          	sd	s1,0(a5)

    thread_t userThread = nullptr;
    8000279c:	f2043c23          	sd	zero,-200(s0)
    int ret = thread_create(&userThread, userMainWrapper, nullptr);
    800027a0:	00000613          	li	a2,0
    800027a4:	00000597          	auipc	a1,0x0
    800027a8:	f5c58593          	addi	a1,a1,-164 # 80002700 <_ZL15userMainWrapperPv>
    800027ac:	f3840513          	addi	a0,s0,-200
    800027b0:	fffff097          	auipc	ra,0xfffff
    800027b4:	ad4080e7          	jalr	-1324(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>

    if (ret < 0 || userThread == nullptr) {
    800027b8:	00054663          	bltz	a0,800027c4 <main+0x88>
    800027bc:	f3843783          	ld	a5,-200(s0)
    800027c0:	02079063          	bnez	a5,800027e0 <main+0xa4>
        volatile uint32* qemu = (uint32*)0x100000;
        *qemu = 0x5555;
    800027c4:	00100737          	lui	a4,0x100
    800027c8:	000057b7          	lui	a5,0x5
    800027cc:	5557879b          	addiw	a5,a5,1365
    800027d0:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
        return ret;
    800027d4:	02c0006f          	j	80002800 <main+0xc4>
    }

    while (!userMainFinished) {
        thread_dispatch();
    800027d8:	fffff097          	auipc	ra,0xfffff
    800027dc:	bb0080e7          	jalr	-1104(ra) # 80001388 <_Z15thread_dispatchv>
    while (!userMainFinished) {
    800027e0:	00009797          	auipc	a5,0x9
    800027e4:	4b87c783          	lbu	a5,1208(a5) # 8000bc98 <_ZL16userMainFinished>
    800027e8:	fe0788e3          	beqz	a5,800027d8 <main+0x9c>
    }

    volatile uint32* qemu = (uint32*)0x100000;
    *qemu = 0x5555;
    800027ec:	00100737          	lui	a4,0x100
    800027f0:	000057b7          	lui	a5,0x5
    800027f4:	5557879b          	addiw	a5,a5,1365
    800027f8:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>

    return 0;
    800027fc:	00000513          	li	a0,0
}
    80002800:	0c813083          	ld	ra,200(sp)
    80002804:	0c013403          	ld	s0,192(sp)
    80002808:	0b813483          	ld	s1,184(sp)
    8000280c:	0d010113          	addi	sp,sp,208
    80002810:	00008067          	ret

0000000080002814 <_ZN6ThreadD1Ev>:
    this->myHandle = nullptr;
    this->body = nullptr;
    this->arg = nullptr;
}

Thread::~Thread() {
    80002814:	ff010113          	addi	sp,sp,-16
    80002818:	00813423          	sd	s0,8(sp)
    8000281c:	01010413          	addi	s0,sp,16
}
    80002820:	00813403          	ld	s0,8(sp)
    80002824:	01010113          	addi	sp,sp,16
    80002828:	00008067          	ret

000000008000282c <_ZN6Thread13threadWrapperEPv>:
}

void Thread::threadWrapper(void* thread) {
    Thread* t = (Thread*)thread;

    if (t != nullptr) {
    8000282c:	02050863          	beqz	a0,8000285c <_ZN6Thread13threadWrapperEPv+0x30>
void Thread::threadWrapper(void* thread) {
    80002830:	ff010113          	addi	sp,sp,-16
    80002834:	00113423          	sd	ra,8(sp)
    80002838:	00813023          	sd	s0,0(sp)
    8000283c:	01010413          	addi	s0,sp,16
        t->run();
    80002840:	00053783          	ld	a5,0(a0)
    80002844:	0107b783          	ld	a5,16(a5) # 5010 <_entry-0x7fffaff0>
    80002848:	000780e7          	jalr	a5
    }
}
    8000284c:	00813083          	ld	ra,8(sp)
    80002850:	00013403          	ld	s0,0(sp)
    80002854:	01010113          	addi	sp,sp,16
    80002858:	00008067          	ret
    8000285c:	00008067          	ret

0000000080002860 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002860:	ff010113          	addi	sp,sp,-16
    80002864:	00113423          	sd	ra,8(sp)
    80002868:	00813023          	sd	s0,0(sp)
    8000286c:	01010413          	addi	s0,sp,16
}
    80002870:	00000097          	auipc	ra,0x0
    80002874:	e40080e7          	jalr	-448(ra) # 800026b0 <_ZdlPv>
    80002878:	00813083          	ld	ra,8(sp)
    8000287c:	00013403          	ld	s0,0(sp)
    80002880:	01010113          	addi	sp,sp,16
    80002884:	00008067          	ret

0000000080002888 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80002888:	00009797          	auipc	a5,0x9
    8000288c:	1a078793          	addi	a5,a5,416 # 8000ba28 <_ZTV9Semaphore+0x10>
    80002890:	00f53023          	sd	a5,0(a0)
    if (myHandle != nullptr) {
    80002894:	00853503          	ld	a0,8(a0)
    80002898:	02050663          	beqz	a0,800028c4 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    8000289c:	ff010113          	addi	sp,sp,-16
    800028a0:	00113423          	sd	ra,8(sp)
    800028a4:	00813023          	sd	s0,0(sp)
    800028a8:	01010413          	addi	s0,sp,16
        sem_close(myHandle);
    800028ac:	fffff097          	auipc	ra,0xfffff
    800028b0:	b5c080e7          	jalr	-1188(ra) # 80001408 <_Z9sem_closeP4_sem>
    }
}
    800028b4:	00813083          	ld	ra,8(sp)
    800028b8:	00013403          	ld	s0,0(sp)
    800028bc:	01010113          	addi	sp,sp,16
    800028c0:	00008067          	ret
    800028c4:	00008067          	ret

00000000800028c8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800028c8:	fe010113          	addi	sp,sp,-32
    800028cc:	00113c23          	sd	ra,24(sp)
    800028d0:	00813823          	sd	s0,16(sp)
    800028d4:	00913423          	sd	s1,8(sp)
    800028d8:	02010413          	addi	s0,sp,32
    800028dc:	00050493          	mv	s1,a0
}
    800028e0:	00000097          	auipc	ra,0x0
    800028e4:	fa8080e7          	jalr	-88(ra) # 80002888 <_ZN9SemaphoreD1Ev>
    800028e8:	00048513          	mv	a0,s1
    800028ec:	00000097          	auipc	ra,0x0
    800028f0:	dc4080e7          	jalr	-572(ra) # 800026b0 <_ZdlPv>
    800028f4:	01813083          	ld	ra,24(sp)
    800028f8:	01013403          	ld	s0,16(sp)
    800028fc:	00813483          	ld	s1,8(sp)
    80002900:	02010113          	addi	sp,sp,32
    80002904:	00008067          	ret

0000000080002908 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    80002908:	ff010113          	addi	sp,sp,-16
    8000290c:	00813423          	sd	s0,8(sp)
    80002910:	01010413          	addi	s0,sp,16
    80002914:	00009797          	auipc	a5,0x9
    80002918:	0ec78793          	addi	a5,a5,236 # 8000ba00 <_ZTV6Thread+0x10>
    8000291c:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80002920:	00053423          	sd	zero,8(a0)
    this->body = body;
    80002924:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80002928:	00c53c23          	sd	a2,24(a0)
}
    8000292c:	00813403          	ld	s0,8(sp)
    80002930:	01010113          	addi	sp,sp,16
    80002934:	00008067          	ret

0000000080002938 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002938:	ff010113          	addi	sp,sp,-16
    8000293c:	00813423          	sd	s0,8(sp)
    80002940:	01010413          	addi	s0,sp,16
    80002944:	00009797          	auipc	a5,0x9
    80002948:	0bc78793          	addi	a5,a5,188 # 8000ba00 <_ZTV6Thread+0x10>
    8000294c:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80002950:	00053423          	sd	zero,8(a0)
    this->body = nullptr;
    80002954:	00053823          	sd	zero,16(a0)
    this->arg = nullptr;
    80002958:	00053c23          	sd	zero,24(a0)
}
    8000295c:	00813403          	ld	s0,8(sp)
    80002960:	01010113          	addi	sp,sp,16
    80002964:	00008067          	ret

0000000080002968 <_ZN6Thread5startEv>:
int Thread::start() {
    80002968:	ff010113          	addi	sp,sp,-16
    8000296c:	00113423          	sd	ra,8(sp)
    80002970:	00813023          	sd	s0,0(sp)
    80002974:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    80002978:	01053583          	ld	a1,16(a0)
    8000297c:	02058263          	beqz	a1,800029a0 <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    80002980:	01853603          	ld	a2,24(a0)
    80002984:	00850513          	addi	a0,a0,8
    80002988:	fffff097          	auipc	ra,0xfffff
    8000298c:	8fc080e7          	jalr	-1796(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80002990:	00813083          	ld	ra,8(sp)
    80002994:	00013403          	ld	s0,0(sp)
    80002998:	01010113          	addi	sp,sp,16
    8000299c:	00008067          	ret
    return thread_create(&myHandle, Thread::threadWrapper, this);//kada korisnik ocekuje da se izvrsi run(), pa se u thread wrapper poziva run
    800029a0:	00050613          	mv	a2,a0
    800029a4:	00000597          	auipc	a1,0x0
    800029a8:	e8858593          	addi	a1,a1,-376 # 8000282c <_ZN6Thread13threadWrapperEPv>
    800029ac:	00850513          	addi	a0,a0,8
    800029b0:	fffff097          	auipc	ra,0xfffff
    800029b4:	8d4080e7          	jalr	-1836(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    800029b8:	fd9ff06f          	j	80002990 <_ZN6Thread5startEv+0x28>

00000000800029bc <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800029bc:	ff010113          	addi	sp,sp,-16
    800029c0:	00113423          	sd	ra,8(sp)
    800029c4:	00813023          	sd	s0,0(sp)
    800029c8:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800029cc:	fffff097          	auipc	ra,0xfffff
    800029d0:	9bc080e7          	jalr	-1604(ra) # 80001388 <_Z15thread_dispatchv>
}
    800029d4:	00813083          	ld	ra,8(sp)
    800029d8:	00013403          	ld	s0,0(sp)
    800029dc:	01010113          	addi	sp,sp,16
    800029e0:	00008067          	ret

00000000800029e4 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800029e4:	ff010113          	addi	sp,sp,-16
    800029e8:	00113423          	sd	ra,8(sp)
    800029ec:	00813023          	sd	s0,0(sp)
    800029f0:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800029f4:	fffff097          	auipc	ra,0xfffff
    800029f8:	b5c080e7          	jalr	-1188(ra) # 80001550 <_Z10time_sleepm>
}
    800029fc:	00813083          	ld	ra,8(sp)
    80002a00:	00013403          	ld	s0,0(sp)
    80002a04:	01010113          	addi	sp,sp,16
    80002a08:	00008067          	ret

0000000080002a0c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80002a0c:	ff010113          	addi	sp,sp,-16
    80002a10:	00113423          	sd	ra,8(sp)
    80002a14:	00813023          	sd	s0,0(sp)
    80002a18:	01010413          	addi	s0,sp,16
    80002a1c:	00009797          	auipc	a5,0x9
    80002a20:	00c78793          	addi	a5,a5,12 # 8000ba28 <_ZTV9Semaphore+0x10>
    80002a24:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002a28:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002a2c:	00850513          	addi	a0,a0,8
    80002a30:	fffff097          	auipc	ra,0xfffff
    80002a34:	994080e7          	jalr	-1644(ra) # 800013c4 <_Z8sem_openPP4_semj>
}
    80002a38:	00813083          	ld	ra,8(sp)
    80002a3c:	00013403          	ld	s0,0(sp)
    80002a40:	01010113          	addi	sp,sp,16
    80002a44:	00008067          	ret

0000000080002a48 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002a48:	ff010113          	addi	sp,sp,-16
    80002a4c:	00113423          	sd	ra,8(sp)
    80002a50:	00813023          	sd	s0,0(sp)
    80002a54:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002a58:	00853503          	ld	a0,8(a0)
    80002a5c:	fffff097          	auipc	ra,0xfffff
    80002a60:	9ec080e7          	jalr	-1556(ra) # 80001448 <_Z8sem_waitP4_sem>
}
    80002a64:	00813083          	ld	ra,8(sp)
    80002a68:	00013403          	ld	s0,0(sp)
    80002a6c:	01010113          	addi	sp,sp,16
    80002a70:	00008067          	ret

0000000080002a74 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002a74:	ff010113          	addi	sp,sp,-16
    80002a78:	00113423          	sd	ra,8(sp)
    80002a7c:	00813023          	sd	s0,0(sp)
    80002a80:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002a84:	00853503          	ld	a0,8(a0)
    80002a88:	fffff097          	auipc	ra,0xfffff
    80002a8c:	a00080e7          	jalr	-1536(ra) # 80001488 <_Z10sem_signalP4_sem>
}
    80002a90:	00813083          	ld	ra,8(sp)
    80002a94:	00013403          	ld	s0,0(sp)
    80002a98:	01010113          	addi	sp,sp,16
    80002a9c:	00008067          	ret

0000000080002aa0 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    80002aa0:	fe010113          	addi	sp,sp,-32
    80002aa4:	00113c23          	sd	ra,24(sp)
    80002aa8:	00813823          	sd	s0,16(sp)
    80002aac:	00913423          	sd	s1,8(sp)
    80002ab0:	01213023          	sd	s2,0(sp)
    80002ab4:	02010413          	addi	s0,sp,32
    80002ab8:	00050493          	mv	s1,a0
    80002abc:	00058913          	mv	s2,a1
    80002ac0:	00000097          	auipc	ra,0x0
    80002ac4:	e78080e7          	jalr	-392(ra) # 80002938 <_ZN6ThreadC1Ev>
    80002ac8:	00009797          	auipc	a5,0x9
    80002acc:	f0878793          	addi	a5,a5,-248 # 8000b9d0 <_ZTV14PeriodicThread+0x10>
    80002ad0:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80002ad4:	0324b023          	sd	s2,32(s1)
}
    80002ad8:	01813083          	ld	ra,24(sp)
    80002adc:	01013403          	ld	s0,16(sp)
    80002ae0:	00813483          	ld	s1,8(sp)
    80002ae4:	00013903          	ld	s2,0(sp)
    80002ae8:	02010113          	addi	sp,sp,32
    80002aec:	00008067          	ret

0000000080002af0 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002af0:	ff010113          	addi	sp,sp,-16
    80002af4:	00813423          	sd	s0,8(sp)
    80002af8:	01010413          	addi	s0,sp,16
    /*
     * PeriodicThread je deo zadatka 4.
     * Pošto ga ne radiš, ovo ostaje prazno.
     */
}
    80002afc:	00813403          	ld	s0,8(sp)
    80002b00:	01010113          	addi	sp,sp,16
    80002b04:	00008067          	ret

0000000080002b08 <_ZN7Console4getcEv>:

char Console::getc() {
    80002b08:	ff010113          	addi	sp,sp,-16
    80002b0c:	00113423          	sd	ra,8(sp)
    80002b10:	00813023          	sd	s0,0(sp)
    80002b14:	01010413          	addi	s0,sp,16
    return ::getc();
    80002b18:	fffff097          	auipc	ra,0xfffff
    80002b1c:	a78080e7          	jalr	-1416(ra) # 80001590 <_Z4getcv>
}
    80002b20:	00813083          	ld	ra,8(sp)
    80002b24:	00013403          	ld	s0,0(sp)
    80002b28:	01010113          	addi	sp,sp,16
    80002b2c:	00008067          	ret

0000000080002b30 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002b30:	ff010113          	addi	sp,sp,-16
    80002b34:	00113423          	sd	ra,8(sp)
    80002b38:	00813023          	sd	s0,0(sp)
    80002b3c:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002b40:	fffff097          	auipc	ra,0xfffff
    80002b44:	a90080e7          	jalr	-1392(ra) # 800015d0 <_Z4putcc>
    80002b48:	00813083          	ld	ra,8(sp)
    80002b4c:	00013403          	ld	s0,0(sp)
    80002b50:	01010113          	addi	sp,sp,16
    80002b54:	00008067          	ret

0000000080002b58 <_ZN6Thread3runEv>:
    static int sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80002b58:	ff010113          	addi	sp,sp,-16
    80002b5c:	00813423          	sd	s0,8(sp)
    80002b60:	01010413          	addi	s0,sp,16
    80002b64:	00813403          	ld	s0,8(sp)
    80002b68:	01010113          	addi	sp,sp,16
    80002b6c:	00008067          	ret

0000000080002b70 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate();

protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    80002b70:	ff010113          	addi	sp,sp,-16
    80002b74:	00813423          	sd	s0,8(sp)
    80002b78:	01010413          	addi	s0,sp,16
    80002b7c:	00813403          	ld	s0,8(sp)
    80002b80:	01010113          	addi	sp,sp,16
    80002b84:	00008067          	ret

0000000080002b88 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002b88:	ff010113          	addi	sp,sp,-16
    80002b8c:	00813423          	sd	s0,8(sp)
    80002b90:	01010413          	addi	s0,sp,16
    80002b94:	00009797          	auipc	a5,0x9
    80002b98:	e3c78793          	addi	a5,a5,-452 # 8000b9d0 <_ZTV14PeriodicThread+0x10>
    80002b9c:	00f53023          	sd	a5,0(a0)
    80002ba0:	00813403          	ld	s0,8(sp)
    80002ba4:	01010113          	addi	sp,sp,16
    80002ba8:	00008067          	ret

0000000080002bac <_ZN14PeriodicThreadD0Ev>:
    80002bac:	ff010113          	addi	sp,sp,-16
    80002bb0:	00113423          	sd	ra,8(sp)
    80002bb4:	00813023          	sd	s0,0(sp)
    80002bb8:	01010413          	addi	s0,sp,16
    80002bbc:	00009797          	auipc	a5,0x9
    80002bc0:	e1478793          	addi	a5,a5,-492 # 8000b9d0 <_ZTV14PeriodicThread+0x10>
    80002bc4:	00f53023          	sd	a5,0(a0)
    80002bc8:	00000097          	auipc	ra,0x0
    80002bcc:	ae8080e7          	jalr	-1304(ra) # 800026b0 <_ZdlPv>
    80002bd0:	00813083          	ld	ra,8(sp)
    80002bd4:	00013403          	ld	s0,0(sp)
    80002bd8:	01010113          	addi	sp,sp,16
    80002bdc:	00008067          	ret

0000000080002be0 <_ZN15MemoryAllocatorC1Ev>:
#include "../h/MemoryAllocator.hpp"

MemoryAllocator::MemoryAllocator() : freeHead(nullptr), initialized(false) {}
    80002be0:	ff010113          	addi	sp,sp,-16
    80002be4:	00813423          	sd	s0,8(sp)
    80002be8:	01010413          	addi	s0,sp,16
    80002bec:	00053023          	sd	zero,0(a0)
    80002bf0:	00050423          	sb	zero,8(a0)
    80002bf4:	00813403          	ld	s0,8(sp)
    80002bf8:	01010113          	addi	sp,sp,16
    80002bfc:	00008067          	ret

0000000080002c00 <_Z41__static_initialization_and_destruction_0ii>:
            block->next->prev = block;
        }
        nextBlock->next = nullptr;
        nextBlock->prev = nullptr;
    }
    80002c00:	00100793          	li	a5,1
    80002c04:	00f50463          	beq	a0,a5,80002c0c <_Z41__static_initialization_and_destruction_0ii+0xc>
    80002c08:	00008067          	ret
    80002c0c:	000107b7          	lui	a5,0x10
    80002c10:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002c14:	fef59ae3          	bne	a1,a5,80002c08 <_Z41__static_initialization_and_destruction_0ii+0x8>
    80002c18:	ff010113          	addi	sp,sp,-16
    80002c1c:	00113423          	sd	ra,8(sp)
    80002c20:	00813023          	sd	s0,0(sp)
    80002c24:	01010413          	addi	s0,sp,16
MemoryAllocator MemoryAllocator::instance;
    80002c28:	00009517          	auipc	a0,0x9
    80002c2c:	07850513          	addi	a0,a0,120 # 8000bca0 <_ZN15MemoryAllocator8instanceE>
    80002c30:	00000097          	auipc	ra,0x0
    80002c34:	fb0080e7          	jalr	-80(ra) # 80002be0 <_ZN15MemoryAllocatorC1Ev>
    80002c38:	00813083          	ld	ra,8(sp)
    80002c3c:	00013403          	ld	s0,0(sp)
    80002c40:	01010113          	addi	sp,sp,16
    80002c44:	00008067          	ret

0000000080002c48 <_ZN15MemoryAllocator11getInstanceEv>:
MemoryAllocator& MemoryAllocator::getInstance() {
    80002c48:	ff010113          	addi	sp,sp,-16
    80002c4c:	00813423          	sd	s0,8(sp)
    80002c50:	01010413          	addi	s0,sp,16
}
    80002c54:	00009517          	auipc	a0,0x9
    80002c58:	04c50513          	addi	a0,a0,76 # 8000bca0 <_ZN15MemoryAllocator8instanceE>
    80002c5c:	00813403          	ld	s0,8(sp)
    80002c60:	01010113          	addi	sp,sp,16
    80002c64:	00008067          	ret

0000000080002c68 <_ZN15MemoryAllocator4initEv>:
void MemoryAllocator::init() {
    80002c68:	ff010113          	addi	sp,sp,-16
    80002c6c:	00813423          	sd	s0,8(sp)
    80002c70:	01010413          	addi	s0,sp,16
    if (initialized) return;
    80002c74:	00854783          	lbu	a5,8(a0)
    80002c78:	04079263          	bnez	a5,80002cbc <_ZN15MemoryAllocator4initEv+0x54>
    uint64 heapStart = (uint64) HEAP_START_ADDR;
    80002c7c:	00009797          	auipc	a5,0x9
    80002c80:	f7c7b783          	ld	a5,-132(a5) # 8000bbf8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002c84:	0007b703          	ld	a4,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002c88:	00009797          	auipc	a5,0x9
    80002c8c:	f907b783          	ld	a5,-112(a5) # 8000bc18 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002c90:	0007b783          	ld	a5,0(a5)
    size_t heapSize = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002c94:	40e787b3          	sub	a5,a5,a4
    80002c98:	0067d793          	srli	a5,a5,0x6
    freeHead = (FreeBlock*) heapStart;
    80002c9c:	00e53023          	sd	a4,0(a0)
    freeHead->size = heapSize;
    80002ca0:	00f73023          	sd	a5,0(a4)
    freeHead->next = nullptr;
    80002ca4:	00053783          	ld	a5,0(a0)
    80002ca8:	0007b423          	sd	zero,8(a5)
    freeHead->prev = nullptr;
    80002cac:	00053783          	ld	a5,0(a0)
    80002cb0:	0007b823          	sd	zero,16(a5)
    initialized = true;
    80002cb4:	00100793          	li	a5,1
    80002cb8:	00f50423          	sb	a5,8(a0)
}
    80002cbc:	00813403          	ld	s0,8(sp)
    80002cc0:	01010113          	addi	sp,sp,16
    80002cc4:	00008067          	ret

0000000080002cc8 <_ZN15MemoryAllocator6mallocEm>:
void* MemoryAllocator::malloc(size_t numBlocks) {
    80002cc8:	fe010113          	addi	sp,sp,-32
    80002ccc:	00113c23          	sd	ra,24(sp)
    80002cd0:	00813823          	sd	s0,16(sp)
    80002cd4:	00913423          	sd	s1,8(sp)
    80002cd8:	01213023          	sd	s2,0(sp)
    80002cdc:	02010413          	addi	s0,sp,32
    80002ce0:	00050913          	mv	s2,a0
    80002ce4:	00058493          	mv	s1,a1
    init();
    80002ce8:	00000097          	auipc	ra,0x0
    80002cec:	f80080e7          	jalr	-128(ra) # 80002c68 <_ZN15MemoryAllocator4initEv>
    if (numBlocks == 0) return nullptr;
    80002cf0:	0c048863          	beqz	s1,80002dc0 <_ZN15MemoryAllocator6mallocEm+0xf8>
    size_t neededBlocks = numBlocks + 1;
    80002cf4:	00148593          	addi	a1,s1,1
    FreeBlock* current = freeHead;
    80002cf8:	00093503          	ld	a0,0(s2)
    while(current != nullptr && current->size < neededBlocks){
    80002cfc:	00050a63          	beqz	a0,80002d10 <_ZN15MemoryAllocator6mallocEm+0x48>
    80002d00:	00053783          	ld	a5,0(a0)
    80002d04:	00b7f663          	bgeu	a5,a1,80002d10 <_ZN15MemoryAllocator6mallocEm+0x48>
        current = current->next;
    80002d08:	00853503          	ld	a0,8(a0)
    while(current != nullptr && current->size < neededBlocks){
    80002d0c:	ff1ff06f          	j	80002cfc <_ZN15MemoryAllocator6mallocEm+0x34>
    if (current == nullptr){
    80002d10:	04050063          	beqz	a0,80002d50 <_ZN15MemoryAllocator6mallocEm+0x88>
    size_t remainingBlocks = current->size - neededBlocks;
    80002d14:	00053783          	ld	a5,0(a0)
    80002d18:	40b787b3          	sub	a5,a5,a1
    if (remainingBlocks >= 2){
    80002d1c:	00100713          	li	a4,1
    80002d20:	04f76463          	bltu	a4,a5,80002d68 <_ZN15MemoryAllocator6mallocEm+0xa0>
    if (current->prev != nullptr){
    80002d24:	01053783          	ld	a5,16(a0)
    80002d28:	08078663          	beqz	a5,80002db4 <_ZN15MemoryAllocator6mallocEm+0xec>
        current->prev->next = current->next;
    80002d2c:	00853703          	ld	a4,8(a0)
    80002d30:	00e7b423          	sd	a4,8(a5)
    if (current->next != nullptr){
    80002d34:	00853783          	ld	a5,8(a0)
    80002d38:	00078663          	beqz	a5,80002d44 <_ZN15MemoryAllocator6mallocEm+0x7c>
        current->next->prev = current->prev;
    80002d3c:	01053703          	ld	a4,16(a0)
    80002d40:	00e7b823          	sd	a4,16(a5)
    current->next = nullptr;
    80002d44:	00053423          	sd	zero,8(a0)
    current->prev = nullptr;
    80002d48:	00053823          	sd	zero,16(a0)
    return (void*) ((char*) current +MEM_BLOCK_SIZE);
    80002d4c:	04050513          	addi	a0,a0,64
}
    80002d50:	01813083          	ld	ra,24(sp)
    80002d54:	01013403          	ld	s0,16(sp)
    80002d58:	00813483          	ld	s1,8(sp)
    80002d5c:	00013903          	ld	s2,0(sp)
    80002d60:	02010113          	addi	sp,sp,32
    80002d64:	00008067          	ret
        FreeBlock* newFree = (FreeBlock*) ((char*) current + neededBlocks * MEM_BLOCK_SIZE);
    80002d68:	00659713          	slli	a4,a1,0x6
    80002d6c:	00e50733          	add	a4,a0,a4
        newFree->size = remainingBlocks;
    80002d70:	00f73023          	sd	a5,0(a4)
        newFree->next = current->next;
    80002d74:	00853783          	ld	a5,8(a0)
    80002d78:	00f73423          	sd	a5,8(a4)
        newFree->prev = current->prev;
    80002d7c:	01053783          	ld	a5,16(a0)
    80002d80:	00f73823          	sd	a5,16(a4)
        if (current->prev != nullptr){
    80002d84:	02078463          	beqz	a5,80002dac <_ZN15MemoryAllocator6mallocEm+0xe4>
            current->prev->next = newFree;
    80002d88:	00e7b423          	sd	a4,8(a5)
        if (current->next != nullptr){
    80002d8c:	00853783          	ld	a5,8(a0)
    80002d90:	00078463          	beqz	a5,80002d98 <_ZN15MemoryAllocator6mallocEm+0xd0>
            current->next->prev = newFree;
    80002d94:	00e7b823          	sd	a4,16(a5)
        current->size = neededBlocks;
    80002d98:	00b53023          	sd	a1,0(a0)
        current->next = nullptr;
    80002d9c:	00053423          	sd	zero,8(a0)
        current->prev = nullptr;
    80002da0:	00053823          	sd	zero,16(a0)
        return (void*) ((char*) current + MEM_BLOCK_SIZE);
    80002da4:	04050513          	addi	a0,a0,64
    80002da8:	fa9ff06f          	j	80002d50 <_ZN15MemoryAllocator6mallocEm+0x88>
            freeHead = newFree;
    80002dac:	00e93023          	sd	a4,0(s2)
    80002db0:	fddff06f          	j	80002d8c <_ZN15MemoryAllocator6mallocEm+0xc4>
        freeHead = current->next;
    80002db4:	00853783          	ld	a5,8(a0)
    80002db8:	00f93023          	sd	a5,0(s2)
    80002dbc:	f79ff06f          	j	80002d34 <_ZN15MemoryAllocator6mallocEm+0x6c>
    if (numBlocks == 0) return nullptr;
    80002dc0:	00000513          	li	a0,0
    80002dc4:	f8dff06f          	j	80002d50 <_ZN15MemoryAllocator6mallocEm+0x88>

0000000080002dc8 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>:
void MemoryAllocator::tryToJoin(FreeBlock *block) {
    80002dc8:	ff010113          	addi	sp,sp,-16
    80002dcc:	00813423          	sd	s0,8(sp)
    80002dd0:	01010413          	addi	s0,sp,16
    if (block == nullptr || block->next == nullptr) return;
    80002dd4:	00058e63          	beqz	a1,80002df0 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    80002dd8:	0085b783          	ld	a5,8(a1)
    80002ddc:	00078a63          	beqz	a5,80002df0 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    char* endOfBlock = (char*) block + block->size * MEM_BLOCK_SIZE;
    80002de0:	0005b683          	ld	a3,0(a1)
    80002de4:	00669713          	slli	a4,a3,0x6
    80002de8:	00e58733          	add	a4,a1,a4
    if (endOfBlock == (char*) block->next){
    80002dec:	00e78863          	beq	a5,a4,80002dfc <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x34>
    80002df0:	00813403          	ld	s0,8(sp)
    80002df4:	01010113          	addi	sp,sp,16
    80002df8:	00008067          	ret
        block->size += nextBlock->size;
    80002dfc:	0007b703          	ld	a4,0(a5)
    80002e00:	00e686b3          	add	a3,a3,a4
    80002e04:	00d5b023          	sd	a3,0(a1)
        block->next = nextBlock->next;
    80002e08:	0087b703          	ld	a4,8(a5)
    80002e0c:	00e5b423          	sd	a4,8(a1)
        if (block->next != nullptr){
    80002e10:	00070463          	beqz	a4,80002e18 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x50>
            block->next->prev = block;
    80002e14:	00b73823          	sd	a1,16(a4)
        nextBlock->next = nullptr;
    80002e18:	0007b423          	sd	zero,8(a5)
        nextBlock->prev = nullptr;
    80002e1c:	0007b823          	sd	zero,16(a5)
    80002e20:	fd1ff06f          	j	80002df0 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>

0000000080002e24 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void* ptr){
    80002e24:	fd010113          	addi	sp,sp,-48
    80002e28:	02113423          	sd	ra,40(sp)
    80002e2c:	02813023          	sd	s0,32(sp)
    80002e30:	00913c23          	sd	s1,24(sp)
    80002e34:	01213823          	sd	s2,16(sp)
    80002e38:	01313423          	sd	s3,8(sp)
    80002e3c:	03010413          	addi	s0,sp,48
    80002e40:	00050993          	mv	s3,a0
    80002e44:	00058913          	mv	s2,a1
    init();
    80002e48:	00000097          	auipc	ra,0x0
    80002e4c:	e20080e7          	jalr	-480(ra) # 80002c68 <_ZN15MemoryAllocator4initEv>
    if (ptr == nullptr) return -1;
    80002e50:	0e090863          	beqz	s2,80002f40 <_ZN15MemoryAllocator4freeEPv+0x11c>
    uint64 heapStart = (uint64)HEAP_START_ADDR;
    80002e54:	00009797          	auipc	a5,0x9
    80002e58:	da47b783          	ld	a5,-604(a5) # 8000bbf8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002e5c:	0007b683          	ld	a3,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002e60:	00009797          	auipc	a5,0x9
    80002e64:	db87b783          	ld	a5,-584(a5) # 8000bc18 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002e68:	0007b603          	ld	a2,0(a5)
    if (ptrAddr < heapStart + MEM_BLOCK_SIZE || ptrAddr >= heapEnd){
    80002e6c:	04068793          	addi	a5,a3,64
    80002e70:	0cf96c63          	bltu	s2,a5,80002f48 <_ZN15MemoryAllocator4freeEPv+0x124>
    80002e74:	0cc97e63          	bgeu	s2,a2,80002f50 <_ZN15MemoryAllocator4freeEPv+0x12c>
    if ((ptrAddr - heapStart) % MEM_BLOCK_SIZE != 0){
    80002e78:	40d907b3          	sub	a5,s2,a3
    80002e7c:	03f7f793          	andi	a5,a5,63
    80002e80:	0c079c63          	bnez	a5,80002f58 <_ZN15MemoryAllocator4freeEPv+0x134>
    FreeBlock* block = (FreeBlock*) ((char*) ptr - MEM_BLOCK_SIZE);
    80002e84:	fc090593          	addi	a1,s2,-64
    if (block->size < 2){
    80002e88:	fc093783          	ld	a5,-64(s2)
    80002e8c:	00100713          	li	a4,1
    80002e90:	0cf77863          	bgeu	a4,a5,80002f60 <_ZN15MemoryAllocator4freeEPv+0x13c>
    if ((uint64) block < heapStart){
    80002e94:	00058713          	mv	a4,a1
    80002e98:	0cd5e863          	bltu	a1,a3,80002f68 <_ZN15MemoryAllocator4freeEPv+0x144>
    if ((uint64) block + block->size * MEM_BLOCK_SIZE > heapEnd){
    80002e9c:	00679793          	slli	a5,a5,0x6
    80002ea0:	00f586b3          	add	a3,a1,a5
    80002ea4:	0cd66663          	bltu	a2,a3,80002f70 <_ZN15MemoryAllocator4freeEPv+0x14c>
    FreeBlock* current = freeHead;
    80002ea8:	0009b783          	ld	a5,0(s3)
    FreeBlock* prev = nullptr;
    80002eac:	00000493          	li	s1,0
    while (current != nullptr && (uint64) current < (uint64) block){
    80002eb0:	00078a63          	beqz	a5,80002ec4 <_ZN15MemoryAllocator4freeEPv+0xa0>
    80002eb4:	00e7f863          	bgeu	a5,a4,80002ec4 <_ZN15MemoryAllocator4freeEPv+0xa0>
        prev = current;
    80002eb8:	00078493          	mv	s1,a5
        current = current->next;
    80002ebc:	0087b783          	ld	a5,8(a5)
    while (current != nullptr && (uint64) current < (uint64) block){
    80002ec0:	ff1ff06f          	j	80002eb0 <_ZN15MemoryAllocator4freeEPv+0x8c>
    if (prev != nullptr &&
    80002ec4:	00048a63          	beqz	s1,80002ed8 <_ZN15MemoryAllocator4freeEPv+0xb4>
        (uint64) prev + prev->size * MEM_BLOCK_SIZE > (uint64) block) {
    80002ec8:	0004b603          	ld	a2,0(s1)
    80002ecc:	00661613          	slli	a2,a2,0x6
    80002ed0:	00c48633          	add	a2,s1,a2
    if (prev != nullptr &&
    80002ed4:	0ac76263          	bltu	a4,a2,80002f78 <_ZN15MemoryAllocator4freeEPv+0x154>
    if (current!= nullptr && (uint64)block + block->size * MEM_BLOCK_SIZE > (uint64) current){
    80002ed8:	00078463          	beqz	a5,80002ee0 <_ZN15MemoryAllocator4freeEPv+0xbc>
    80002edc:	0ad7e263          	bltu	a5,a3,80002f80 <_ZN15MemoryAllocator4freeEPv+0x15c>
    block->prev = prev;
    80002ee0:	fc993823          	sd	s1,-48(s2)
    block->next = current;
    80002ee4:	fcf93423          	sd	a5,-56(s2)
    if (prev != nullptr){
    80002ee8:	04048863          	beqz	s1,80002f38 <_ZN15MemoryAllocator4freeEPv+0x114>
        prev->next = block;
    80002eec:	00b4b423          	sd	a1,8(s1)
    if (current != nullptr){
    80002ef0:	00078463          	beqz	a5,80002ef8 <_ZN15MemoryAllocator4freeEPv+0xd4>
        current->prev = block;
    80002ef4:	00b7b823          	sd	a1,16(a5)
    tryToJoin(block);
    80002ef8:	00098513          	mv	a0,s3
    80002efc:	00000097          	auipc	ra,0x0
    80002f00:	ecc080e7          	jalr	-308(ra) # 80002dc8 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    if (prev != nullptr){
    80002f04:	08048263          	beqz	s1,80002f88 <_ZN15MemoryAllocator4freeEPv+0x164>
        tryToJoin(prev);
    80002f08:	00048593          	mv	a1,s1
    80002f0c:	00098513          	mv	a0,s3
    80002f10:	00000097          	auipc	ra,0x0
    80002f14:	eb8080e7          	jalr	-328(ra) # 80002dc8 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    return 0;
    80002f18:	00000513          	li	a0,0
}
    80002f1c:	02813083          	ld	ra,40(sp)
    80002f20:	02013403          	ld	s0,32(sp)
    80002f24:	01813483          	ld	s1,24(sp)
    80002f28:	01013903          	ld	s2,16(sp)
    80002f2c:	00813983          	ld	s3,8(sp)
    80002f30:	03010113          	addi	sp,sp,48
    80002f34:	00008067          	ret
        freeHead = block;
    80002f38:	00b9b023          	sd	a1,0(s3)
    80002f3c:	fb5ff06f          	j	80002ef0 <_ZN15MemoryAllocator4freeEPv+0xcc>
    if (ptr == nullptr) return -1;
    80002f40:	fff00513          	li	a0,-1
    80002f44:	fd9ff06f          	j	80002f1c <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002f48:	fff00513          	li	a0,-1
    80002f4c:	fd1ff06f          	j	80002f1c <_ZN15MemoryAllocator4freeEPv+0xf8>
    80002f50:	fff00513          	li	a0,-1
    80002f54:	fc9ff06f          	j	80002f1c <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002f58:	fff00513          	li	a0,-1
    80002f5c:	fc1ff06f          	j	80002f1c <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002f60:	fff00513          	li	a0,-1
    80002f64:	fb9ff06f          	j	80002f1c <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002f68:	fff00513          	li	a0,-1
    80002f6c:	fb1ff06f          	j	80002f1c <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002f70:	fff00513          	li	a0,-1
    80002f74:	fa9ff06f          	j	80002f1c <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002f78:	fff00513          	li	a0,-1
    80002f7c:	fa1ff06f          	j	80002f1c <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002f80:	fff00513          	li	a0,-1
    80002f84:	f99ff06f          	j	80002f1c <_ZN15MemoryAllocator4freeEPv+0xf8>
    return 0;
    80002f88:	00000513          	li	a0,0
    80002f8c:	f91ff06f          	j	80002f1c <_ZN15MemoryAllocator4freeEPv+0xf8>

0000000080002f90 <_GLOBAL__sub_I__ZN15MemoryAllocatorC2Ev>:
    80002f90:	ff010113          	addi	sp,sp,-16
    80002f94:	00113423          	sd	ra,8(sp)
    80002f98:	00813023          	sd	s0,0(sp)
    80002f9c:	01010413          	addi	s0,sp,16
    80002fa0:	000105b7          	lui	a1,0x10
    80002fa4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002fa8:	00100513          	li	a0,1
    80002fac:	00000097          	auipc	ra,0x0
    80002fb0:	c54080e7          	jalr	-940(ra) # 80002c00 <_Z41__static_initialization_and_destruction_0ii>
    80002fb4:	00813083          	ld	ra,8(sp)
    80002fb8:	00013403          	ld	s0,0(sp)
    80002fbc:	01010113          	addi	sp,sp,16
    80002fc0:	00008067          	ret

0000000080002fc4 <_Z17deadlockBreakTestv>:
        printString("D finished\n");
        finishedD = true;
    }
};

void deadlockBreakTest() {
    80002fc4:	fc010113          	addi	sp,sp,-64
    80002fc8:	02113c23          	sd	ra,56(sp)
    80002fcc:	02813823          	sd	s0,48(sp)
    80002fd0:	02913423          	sd	s1,40(sp)
    80002fd4:	03213023          	sd	s2,32(sp)
    80002fd8:	04010413          	addi	s0,sp,64
    printString("Deadlock break simple test started\n");
    80002fdc:	00006517          	auipc	a0,0x6
    80002fe0:	4b450513          	addi	a0,a0,1204 # 80009490 <CONSOLE_STATUS+0x480>
    80002fe4:	00003097          	auipc	ra,0x3
    80002fe8:	9cc080e7          	jalr	-1588(ra) # 800059b0 <_Z11printStringPKc>

    sem = new Semaphore(0);
    80002fec:	01000513          	li	a0,16
    80002ff0:	fffff097          	auipc	ra,0xfffff
    80002ff4:	670080e7          	jalr	1648(ra) # 80002660 <_Znwm>
    80002ff8:	00050493          	mv	s1,a0
    80002ffc:	00000593          	li	a1,0
    80003000:	00000097          	auipc	ra,0x0
    80003004:	a0c080e7          	jalr	-1524(ra) # 80002a0c <_ZN9SemaphoreC1Ej>
    80003008:	00009797          	auipc	a5,0x9
    8000300c:	ca97b823          	sd	s1,-848(a5) # 8000bcb8 <_ZL3sem>

    Thread* threads[4];

    threads[0] = new WorkerA();
    80003010:	02000513          	li	a0,32
    80003014:	fffff097          	auipc	ra,0xfffff
    80003018:	64c080e7          	jalr	1612(ra) # 80002660 <_Znwm>
    8000301c:	00050493          	mv	s1,a0
    WorkerA() : Thread() {}
    80003020:	00000097          	auipc	ra,0x0
    80003024:	918080e7          	jalr	-1768(ra) # 80002938 <_ZN6ThreadC1Ev>
    80003028:	00009797          	auipc	a5,0x9
    8000302c:	a2878793          	addi	a5,a5,-1496 # 8000ba50 <_ZTV7WorkerA+0x10>
    80003030:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003034:	fc943023          	sd	s1,-64(s0)
    threads[1] = new WorkerB();
    80003038:	02000513          	li	a0,32
    8000303c:	fffff097          	auipc	ra,0xfffff
    80003040:	624080e7          	jalr	1572(ra) # 80002660 <_Znwm>
    80003044:	00050493          	mv	s1,a0
    WorkerB() : Thread() {}
    80003048:	00000097          	auipc	ra,0x0
    8000304c:	8f0080e7          	jalr	-1808(ra) # 80002938 <_ZN6ThreadC1Ev>
    80003050:	00009797          	auipc	a5,0x9
    80003054:	a2878793          	addi	a5,a5,-1496 # 8000ba78 <_ZTV7WorkerB+0x10>
    80003058:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8000305c:	fc943423          	sd	s1,-56(s0)
    threads[2] = new WorkerC();
    80003060:	02000513          	li	a0,32
    80003064:	fffff097          	auipc	ra,0xfffff
    80003068:	5fc080e7          	jalr	1532(ra) # 80002660 <_Znwm>
    8000306c:	00050493          	mv	s1,a0
    WorkerC() : Thread() {}
    80003070:	00000097          	auipc	ra,0x0
    80003074:	8c8080e7          	jalr	-1848(ra) # 80002938 <_ZN6ThreadC1Ev>
    80003078:	00009797          	auipc	a5,0x9
    8000307c:	a2878793          	addi	a5,a5,-1496 # 8000baa0 <_ZTV7WorkerC+0x10>
    80003080:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003084:	fc943823          	sd	s1,-48(s0)
    threads[3] = new WorkerD();
    80003088:	02000513          	li	a0,32
    8000308c:	fffff097          	auipc	ra,0xfffff
    80003090:	5d4080e7          	jalr	1492(ra) # 80002660 <_Znwm>
    80003094:	00050493          	mv	s1,a0
    WorkerD() : Thread() {}
    80003098:	00000097          	auipc	ra,0x0
    8000309c:	8a0080e7          	jalr	-1888(ra) # 80002938 <_ZN6ThreadC1Ev>
    800030a0:	00009797          	auipc	a5,0x9
    800030a4:	a2878793          	addi	a5,a5,-1496 # 8000bac8 <_ZTV7WorkerD+0x10>
    800030a8:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800030ac:	fc943c23          	sd	s1,-40(s0)

    for (int i = 0; i < 4; i++) {
    800030b0:	00000493          	li	s1,0
    800030b4:	00300793          	li	a5,3
    800030b8:	0297c263          	blt	a5,s1,800030dc <_Z17deadlockBreakTestv+0x118>
        threads[i]->start();
    800030bc:	00349793          	slli	a5,s1,0x3
    800030c0:	fe040713          	addi	a4,s0,-32
    800030c4:	00f707b3          	add	a5,a4,a5
    800030c8:	fe07b503          	ld	a0,-32(a5)
    800030cc:	00000097          	auipc	ra,0x0
    800030d0:	89c080e7          	jalr	-1892(ra) # 80002968 <_ZN6Thread5startEv>
    for (int i = 0; i < 4; i++) {
    800030d4:	0014849b          	addiw	s1,s1,1
    800030d8:	fddff06f          	j	800030b4 <_Z17deadlockBreakTestv+0xf0>
    }

    while (waitingCount < 4) {
    800030dc:	00009717          	auipc	a4,0x9
    800030e0:	bd472703          	lw	a4,-1068(a4) # 8000bcb0 <_ZL12waitingCount>
    800030e4:	00300793          	li	a5,3
    800030e8:	00e7c863          	blt	a5,a4,800030f8 <_Z17deadlockBreakTestv+0x134>
        Thread::dispatch();
    800030ec:	00000097          	auipc	ra,0x0
    800030f0:	8d0080e7          	jalr	-1840(ra) # 800029bc <_ZN6Thread8dispatchEv>
    800030f4:	fe9ff06f          	j	800030dc <_Z17deadlockBreakTestv+0x118>
    }

    printString("Main also waits on sem\n");
    800030f8:	00006517          	auipc	a0,0x6
    800030fc:	3c050513          	addi	a0,a0,960 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80003100:	00003097          	auipc	ra,0x3
    80003104:	8b0080e7          	jalr	-1872(ra) # 800059b0 <_Z11printStringPKc>

    sem->wait();
    80003108:	00009497          	auipc	s1,0x9
    8000310c:	ba848493          	addi	s1,s1,-1112 # 8000bcb0 <_ZL12waitingCount>
    80003110:	0084b503          	ld	a0,8(s1)
    80003114:	00000097          	auipc	ra,0x0
    80003118:	934080e7          	jalr	-1740(ra) # 80002a48 <_ZN9Semaphore4waitEv>

    printString("Main passed wait\n");
    8000311c:	00006517          	auipc	a0,0x6
    80003120:	3b450513          	addi	a0,a0,948 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80003124:	00003097          	auipc	ra,0x3
    80003128:	88c080e7          	jalr	-1908(ra) # 800059b0 <_Z11printStringPKc>

    sem->signal();
    8000312c:	0084b503          	ld	a0,8(s1)
    80003130:	00000097          	auipc	ra,0x0
    80003134:	944080e7          	jalr	-1724(ra) # 80002a74 <_ZN9Semaphore6signalEv>
    80003138:	00c0006f          	j	80003144 <_Z17deadlockBreakTestv+0x180>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000313c:	00000097          	auipc	ra,0x0
    80003140:	880080e7          	jalr	-1920(ra) # 800029bc <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003144:	00009797          	auipc	a5,0x9
    80003148:	b7c7c783          	lbu	a5,-1156(a5) # 8000bcc0 <_ZL9finishedA>
    8000314c:	fe0788e3          	beqz	a5,8000313c <_Z17deadlockBreakTestv+0x178>
    80003150:	00009797          	auipc	a5,0x9
    80003154:	b717c783          	lbu	a5,-1167(a5) # 8000bcc1 <_ZL9finishedB>
    80003158:	fe0782e3          	beqz	a5,8000313c <_Z17deadlockBreakTestv+0x178>
    8000315c:	00009797          	auipc	a5,0x9
    80003160:	b667c783          	lbu	a5,-1178(a5) # 8000bcc2 <_ZL9finishedC>
    80003164:	fc078ce3          	beqz	a5,8000313c <_Z17deadlockBreakTestv+0x178>
    80003168:	00009797          	auipc	a5,0x9
    8000316c:	b5b7c783          	lbu	a5,-1189(a5) # 8000bcc3 <_ZL9finishedD>
    80003170:	fc0786e3          	beqz	a5,8000313c <_Z17deadlockBreakTestv+0x178>
    80003174:	00000493          	li	s1,0
    80003178:	0080006f          	j	80003180 <_Z17deadlockBreakTestv+0x1bc>
    }

    for (int i = 0; i < 4; i++) {
    8000317c:	0014849b          	addiw	s1,s1,1
    80003180:	00300793          	li	a5,3
    80003184:	0297c463          	blt	a5,s1,800031ac <_Z17deadlockBreakTestv+0x1e8>
        delete threads[i];
    80003188:	00349793          	slli	a5,s1,0x3
    8000318c:	fe040713          	addi	a4,s0,-32
    80003190:	00f707b3          	add	a5,a4,a5
    80003194:	fe07b503          	ld	a0,-32(a5)
    80003198:	fe0502e3          	beqz	a0,8000317c <_Z17deadlockBreakTestv+0x1b8>
    8000319c:	00053783          	ld	a5,0(a0)
    800031a0:	0087b783          	ld	a5,8(a5)
    800031a4:	000780e7          	jalr	a5
    800031a8:	fd5ff06f          	j	8000317c <_Z17deadlockBreakTestv+0x1b8>
    }

    delete sem;
    800031ac:	00009517          	auipc	a0,0x9
    800031b0:	b0c53503          	ld	a0,-1268(a0) # 8000bcb8 <_ZL3sem>
    800031b4:	00050863          	beqz	a0,800031c4 <_Z17deadlockBreakTestv+0x200>
    800031b8:	00053783          	ld	a5,0(a0)
    800031bc:	0087b783          	ld	a5,8(a5)
    800031c0:	000780e7          	jalr	a5

    printString("Deadlock break simple test finished\n");
    800031c4:	00006517          	auipc	a0,0x6
    800031c8:	32450513          	addi	a0,a0,804 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800031cc:	00002097          	auipc	ra,0x2
    800031d0:	7e4080e7          	jalr	2020(ra) # 800059b0 <_Z11printStringPKc>
    800031d4:	03813083          	ld	ra,56(sp)
    800031d8:	03013403          	ld	s0,48(sp)
    800031dc:	02813483          	ld	s1,40(sp)
    800031e0:	02013903          	ld	s2,32(sp)
    800031e4:	04010113          	addi	sp,sp,64
    800031e8:	00008067          	ret
    800031ec:	00050913          	mv	s2,a0
    sem = new Semaphore(0);
    800031f0:	00048513          	mv	a0,s1
    800031f4:	fffff097          	auipc	ra,0xfffff
    800031f8:	4bc080e7          	jalr	1212(ra) # 800026b0 <_ZdlPv>
    800031fc:	00090513          	mv	a0,s2
    80003200:	0000a097          	auipc	ra,0xa
    80003204:	be8080e7          	jalr	-1048(ra) # 8000cde8 <_Unwind_Resume>
    80003208:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    8000320c:	00048513          	mv	a0,s1
    80003210:	fffff097          	auipc	ra,0xfffff
    80003214:	4a0080e7          	jalr	1184(ra) # 800026b0 <_ZdlPv>
    80003218:	00090513          	mv	a0,s2
    8000321c:	0000a097          	auipc	ra,0xa
    80003220:	bcc080e7          	jalr	-1076(ra) # 8000cde8 <_Unwind_Resume>
    80003224:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003228:	00048513          	mv	a0,s1
    8000322c:	fffff097          	auipc	ra,0xfffff
    80003230:	484080e7          	jalr	1156(ra) # 800026b0 <_ZdlPv>
    80003234:	00090513          	mv	a0,s2
    80003238:	0000a097          	auipc	ra,0xa
    8000323c:	bb0080e7          	jalr	-1104(ra) # 8000cde8 <_Unwind_Resume>
    80003240:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003244:	00048513          	mv	a0,s1
    80003248:	fffff097          	auipc	ra,0xfffff
    8000324c:	468080e7          	jalr	1128(ra) # 800026b0 <_ZdlPv>
    80003250:	00090513          	mv	a0,s2
    80003254:	0000a097          	auipc	ra,0xa
    80003258:	b94080e7          	jalr	-1132(ra) # 8000cde8 <_Unwind_Resume>
    8000325c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003260:	00048513          	mv	a0,s1
    80003264:	fffff097          	auipc	ra,0xfffff
    80003268:	44c080e7          	jalr	1100(ra) # 800026b0 <_ZdlPv>
    8000326c:	00090513          	mv	a0,s2
    80003270:	0000a097          	auipc	ra,0xa
    80003274:	b78080e7          	jalr	-1160(ra) # 8000cde8 <_Unwind_Resume>

0000000080003278 <_ZN7WorkerA3runEv>:
    void run() override {
    80003278:	fe010113          	addi	sp,sp,-32
    8000327c:	00113c23          	sd	ra,24(sp)
    80003280:	00813823          	sd	s0,16(sp)
    80003284:	00913423          	sd	s1,8(sp)
    80003288:	02010413          	addi	s0,sp,32
        for (int i = 0; i < 5; i++) {
    8000328c:	00000493          	li	s1,0
    80003290:	00400793          	li	a5,4
    80003294:	0497c463          	blt	a5,s1,800032dc <_ZN7WorkerA3runEv+0x64>
            printString("A: i=");
    80003298:	00006517          	auipc	a0,0x6
    8000329c:	11850513          	addi	a0,a0,280 # 800093b0 <CONSOLE_STATUS+0x3a0>
    800032a0:	00002097          	auipc	ra,0x2
    800032a4:	710080e7          	jalr	1808(ra) # 800059b0 <_Z11printStringPKc>
            printInt(i);
    800032a8:	00000613          	li	a2,0
    800032ac:	00a00593          	li	a1,10
    800032b0:	00048513          	mv	a0,s1
    800032b4:	00003097          	auipc	ra,0x3
    800032b8:	8ac080e7          	jalr	-1876(ra) # 80005b60 <_Z8printIntiii>
            printString("\n");
    800032bc:	00006517          	auipc	a0,0x6
    800032c0:	02450513          	addi	a0,a0,36 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800032c4:	00002097          	auipc	ra,0x2
    800032c8:	6ec080e7          	jalr	1772(ra) # 800059b0 <_Z11printStringPKc>
            Thread::dispatch();
    800032cc:	fffff097          	auipc	ra,0xfffff
    800032d0:	6f0080e7          	jalr	1776(ra) # 800029bc <_ZN6Thread8dispatchEv>
        for (int i = 0; i < 5; i++) {
    800032d4:	0014849b          	addiw	s1,s1,1
    800032d8:	fb9ff06f          	j	80003290 <_ZN7WorkerA3runEv+0x18>
        printString("A waits on sem\n");
    800032dc:	00006517          	auipc	a0,0x6
    800032e0:	0dc50513          	addi	a0,a0,220 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800032e4:	00002097          	auipc	ra,0x2
    800032e8:	6cc080e7          	jalr	1740(ra) # 800059b0 <_Z11printStringPKc>
        waitingCount++;
    800032ec:	00009497          	auipc	s1,0x9
    800032f0:	9c448493          	addi	s1,s1,-1596 # 8000bcb0 <_ZL12waitingCount>
    800032f4:	0004a783          	lw	a5,0(s1)
    800032f8:	0017879b          	addiw	a5,a5,1
    800032fc:	00f4a023          	sw	a5,0(s1)
        sem->wait();
    80003300:	0084b503          	ld	a0,8(s1)
    80003304:	fffff097          	auipc	ra,0xfffff
    80003308:	744080e7          	jalr	1860(ra) # 80002a48 <_ZN9Semaphore4waitEv>
        printString("A passed wait\n");
    8000330c:	00006517          	auipc	a0,0x6
    80003310:	0bc50513          	addi	a0,a0,188 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80003314:	00002097          	auipc	ra,0x2
    80003318:	69c080e7          	jalr	1692(ra) # 800059b0 <_Z11printStringPKc>
        sem->signal();
    8000331c:	0084b503          	ld	a0,8(s1)
    80003320:	fffff097          	auipc	ra,0xfffff
    80003324:	754080e7          	jalr	1876(ra) # 80002a74 <_ZN9Semaphore6signalEv>
        printString("A finished\n");
    80003328:	00006517          	auipc	a0,0x6
    8000332c:	0b050513          	addi	a0,a0,176 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80003330:	00002097          	auipc	ra,0x2
    80003334:	680080e7          	jalr	1664(ra) # 800059b0 <_Z11printStringPKc>
        finishedA = true;
    80003338:	00100793          	li	a5,1
    8000333c:	00f48823          	sb	a5,16(s1)
    }
    80003340:	01813083          	ld	ra,24(sp)
    80003344:	01013403          	ld	s0,16(sp)
    80003348:	00813483          	ld	s1,8(sp)
    8000334c:	02010113          	addi	sp,sp,32
    80003350:	00008067          	ret

0000000080003354 <_ZN7WorkerB3runEv>:
    void run() override {
    80003354:	fe010113          	addi	sp,sp,-32
    80003358:	00113c23          	sd	ra,24(sp)
    8000335c:	00813823          	sd	s0,16(sp)
    80003360:	00913423          	sd	s1,8(sp)
    80003364:	02010413          	addi	s0,sp,32
        for (int i = 0; i < 5; i++) {
    80003368:	00000493          	li	s1,0
    8000336c:	00400793          	li	a5,4
    80003370:	0497c463          	blt	a5,s1,800033b8 <_ZN7WorkerB3runEv+0x64>
            printString("B: i=");
    80003374:	00006517          	auipc	a0,0x6
    80003378:	07450513          	addi	a0,a0,116 # 800093e8 <CONSOLE_STATUS+0x3d8>
    8000337c:	00002097          	auipc	ra,0x2
    80003380:	634080e7          	jalr	1588(ra) # 800059b0 <_Z11printStringPKc>
            printInt(i);
    80003384:	00000613          	li	a2,0
    80003388:	00a00593          	li	a1,10
    8000338c:	00048513          	mv	a0,s1
    80003390:	00002097          	auipc	ra,0x2
    80003394:	7d0080e7          	jalr	2000(ra) # 80005b60 <_Z8printIntiii>
            printString("\n");
    80003398:	00006517          	auipc	a0,0x6
    8000339c:	f4850513          	addi	a0,a0,-184 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800033a0:	00002097          	auipc	ra,0x2
    800033a4:	610080e7          	jalr	1552(ra) # 800059b0 <_Z11printStringPKc>
            Thread::dispatch();
    800033a8:	fffff097          	auipc	ra,0xfffff
    800033ac:	614080e7          	jalr	1556(ra) # 800029bc <_ZN6Thread8dispatchEv>
        for (int i = 0; i < 5; i++) {
    800033b0:	0014849b          	addiw	s1,s1,1
    800033b4:	fb9ff06f          	j	8000336c <_ZN7WorkerB3runEv+0x18>
        printString("B waits on sem\n");
    800033b8:	00006517          	auipc	a0,0x6
    800033bc:	03850513          	addi	a0,a0,56 # 800093f0 <CONSOLE_STATUS+0x3e0>
    800033c0:	00002097          	auipc	ra,0x2
    800033c4:	5f0080e7          	jalr	1520(ra) # 800059b0 <_Z11printStringPKc>
        waitingCount++;
    800033c8:	00009497          	auipc	s1,0x9
    800033cc:	8e848493          	addi	s1,s1,-1816 # 8000bcb0 <_ZL12waitingCount>
    800033d0:	0004a783          	lw	a5,0(s1)
    800033d4:	0017879b          	addiw	a5,a5,1
    800033d8:	00f4a023          	sw	a5,0(s1)
        sem->wait();
    800033dc:	0084b503          	ld	a0,8(s1)
    800033e0:	fffff097          	auipc	ra,0xfffff
    800033e4:	668080e7          	jalr	1640(ra) # 80002a48 <_ZN9Semaphore4waitEv>
        printString("B passed wait\n");
    800033e8:	00006517          	auipc	a0,0x6
    800033ec:	01850513          	addi	a0,a0,24 # 80009400 <CONSOLE_STATUS+0x3f0>
    800033f0:	00002097          	auipc	ra,0x2
    800033f4:	5c0080e7          	jalr	1472(ra) # 800059b0 <_Z11printStringPKc>
        sem->signal();
    800033f8:	0084b503          	ld	a0,8(s1)
    800033fc:	fffff097          	auipc	ra,0xfffff
    80003400:	678080e7          	jalr	1656(ra) # 80002a74 <_ZN9Semaphore6signalEv>
        printString("B finished\n");
    80003404:	00006517          	auipc	a0,0x6
    80003408:	00c50513          	addi	a0,a0,12 # 80009410 <CONSOLE_STATUS+0x400>
    8000340c:	00002097          	auipc	ra,0x2
    80003410:	5a4080e7          	jalr	1444(ra) # 800059b0 <_Z11printStringPKc>
        finishedB = true;
    80003414:	00100793          	li	a5,1
    80003418:	00f488a3          	sb	a5,17(s1)
    }
    8000341c:	01813083          	ld	ra,24(sp)
    80003420:	01013403          	ld	s0,16(sp)
    80003424:	00813483          	ld	s1,8(sp)
    80003428:	02010113          	addi	sp,sp,32
    8000342c:	00008067          	ret

0000000080003430 <_ZN7WorkerC3runEv>:
    void run() override {
    80003430:	fe010113          	addi	sp,sp,-32
    80003434:	00113c23          	sd	ra,24(sp)
    80003438:	00813823          	sd	s0,16(sp)
    8000343c:	00913423          	sd	s1,8(sp)
    80003440:	02010413          	addi	s0,sp,32
        for (int i = 0; i < 5; i++) {
    80003444:	00000493          	li	s1,0
    80003448:	00400793          	li	a5,4
    8000344c:	0497c463          	blt	a5,s1,80003494 <_ZN7WorkerC3runEv+0x64>
            printString("C: i=");
    80003450:	00006517          	auipc	a0,0x6
    80003454:	fd050513          	addi	a0,a0,-48 # 80009420 <CONSOLE_STATUS+0x410>
    80003458:	00002097          	auipc	ra,0x2
    8000345c:	558080e7          	jalr	1368(ra) # 800059b0 <_Z11printStringPKc>
            printInt(i);
    80003460:	00000613          	li	a2,0
    80003464:	00a00593          	li	a1,10
    80003468:	00048513          	mv	a0,s1
    8000346c:	00002097          	auipc	ra,0x2
    80003470:	6f4080e7          	jalr	1780(ra) # 80005b60 <_Z8printIntiii>
            printString("\n");
    80003474:	00006517          	auipc	a0,0x6
    80003478:	e6c50513          	addi	a0,a0,-404 # 800092e0 <CONSOLE_STATUS+0x2d0>
    8000347c:	00002097          	auipc	ra,0x2
    80003480:	534080e7          	jalr	1332(ra) # 800059b0 <_Z11printStringPKc>
            Thread::dispatch();
    80003484:	fffff097          	auipc	ra,0xfffff
    80003488:	538080e7          	jalr	1336(ra) # 800029bc <_ZN6Thread8dispatchEv>
        for (int i = 0; i < 5; i++) {
    8000348c:	0014849b          	addiw	s1,s1,1
    80003490:	fb9ff06f          	j	80003448 <_ZN7WorkerC3runEv+0x18>
        printString("C waits on sem\n");
    80003494:	00006517          	auipc	a0,0x6
    80003498:	f9450513          	addi	a0,a0,-108 # 80009428 <CONSOLE_STATUS+0x418>
    8000349c:	00002097          	auipc	ra,0x2
    800034a0:	514080e7          	jalr	1300(ra) # 800059b0 <_Z11printStringPKc>
        waitingCount++;
    800034a4:	00009497          	auipc	s1,0x9
    800034a8:	80c48493          	addi	s1,s1,-2036 # 8000bcb0 <_ZL12waitingCount>
    800034ac:	0004a783          	lw	a5,0(s1)
    800034b0:	0017879b          	addiw	a5,a5,1
    800034b4:	00f4a023          	sw	a5,0(s1)
        sem->wait();
    800034b8:	0084b503          	ld	a0,8(s1)
    800034bc:	fffff097          	auipc	ra,0xfffff
    800034c0:	58c080e7          	jalr	1420(ra) # 80002a48 <_ZN9Semaphore4waitEv>
        printString("C passed wait\n");
    800034c4:	00006517          	auipc	a0,0x6
    800034c8:	f7450513          	addi	a0,a0,-140 # 80009438 <CONSOLE_STATUS+0x428>
    800034cc:	00002097          	auipc	ra,0x2
    800034d0:	4e4080e7          	jalr	1252(ra) # 800059b0 <_Z11printStringPKc>
        sem->signal();
    800034d4:	0084b503          	ld	a0,8(s1)
    800034d8:	fffff097          	auipc	ra,0xfffff
    800034dc:	59c080e7          	jalr	1436(ra) # 80002a74 <_ZN9Semaphore6signalEv>
        printString("C finished\n");
    800034e0:	00006517          	auipc	a0,0x6
    800034e4:	f6850513          	addi	a0,a0,-152 # 80009448 <CONSOLE_STATUS+0x438>
    800034e8:	00002097          	auipc	ra,0x2
    800034ec:	4c8080e7          	jalr	1224(ra) # 800059b0 <_Z11printStringPKc>
        finishedC = true;
    800034f0:	00100793          	li	a5,1
    800034f4:	00f48923          	sb	a5,18(s1)
    }
    800034f8:	01813083          	ld	ra,24(sp)
    800034fc:	01013403          	ld	s0,16(sp)
    80003500:	00813483          	ld	s1,8(sp)
    80003504:	02010113          	addi	sp,sp,32
    80003508:	00008067          	ret

000000008000350c <_ZN7WorkerD3runEv>:
    void run() override {
    8000350c:	fe010113          	addi	sp,sp,-32
    80003510:	00113c23          	sd	ra,24(sp)
    80003514:	00813823          	sd	s0,16(sp)
    80003518:	00913423          	sd	s1,8(sp)
    8000351c:	02010413          	addi	s0,sp,32
        for (int i = 0; i < 5; i++) {
    80003520:	00000493          	li	s1,0
    80003524:	00400793          	li	a5,4
    80003528:	0497c463          	blt	a5,s1,80003570 <_ZN7WorkerD3runEv+0x64>
            printString("D: i=");
    8000352c:	00006517          	auipc	a0,0x6
    80003530:	f2c50513          	addi	a0,a0,-212 # 80009458 <CONSOLE_STATUS+0x448>
    80003534:	00002097          	auipc	ra,0x2
    80003538:	47c080e7          	jalr	1148(ra) # 800059b0 <_Z11printStringPKc>
            printInt(i);
    8000353c:	00000613          	li	a2,0
    80003540:	00a00593          	li	a1,10
    80003544:	00048513          	mv	a0,s1
    80003548:	00002097          	auipc	ra,0x2
    8000354c:	618080e7          	jalr	1560(ra) # 80005b60 <_Z8printIntiii>
            printString("\n");
    80003550:	00006517          	auipc	a0,0x6
    80003554:	d9050513          	addi	a0,a0,-624 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003558:	00002097          	auipc	ra,0x2
    8000355c:	458080e7          	jalr	1112(ra) # 800059b0 <_Z11printStringPKc>
            Thread::dispatch();
    80003560:	fffff097          	auipc	ra,0xfffff
    80003564:	45c080e7          	jalr	1116(ra) # 800029bc <_ZN6Thread8dispatchEv>
        for (int i = 0; i < 5; i++) {
    80003568:	0014849b          	addiw	s1,s1,1
    8000356c:	fb9ff06f          	j	80003524 <_ZN7WorkerD3runEv+0x18>
        printString("D waits on sem\n");
    80003570:	00006517          	auipc	a0,0x6
    80003574:	ef050513          	addi	a0,a0,-272 # 80009460 <CONSOLE_STATUS+0x450>
    80003578:	00002097          	auipc	ra,0x2
    8000357c:	438080e7          	jalr	1080(ra) # 800059b0 <_Z11printStringPKc>
        waitingCount++;
    80003580:	00008497          	auipc	s1,0x8
    80003584:	73048493          	addi	s1,s1,1840 # 8000bcb0 <_ZL12waitingCount>
    80003588:	0004a783          	lw	a5,0(s1)
    8000358c:	0017879b          	addiw	a5,a5,1
    80003590:	00f4a023          	sw	a5,0(s1)
        sem->wait();
    80003594:	0084b503          	ld	a0,8(s1)
    80003598:	fffff097          	auipc	ra,0xfffff
    8000359c:	4b0080e7          	jalr	1200(ra) # 80002a48 <_ZN9Semaphore4waitEv>
        printString("D passed wait\n");
    800035a0:	00006517          	auipc	a0,0x6
    800035a4:	ed050513          	addi	a0,a0,-304 # 80009470 <CONSOLE_STATUS+0x460>
    800035a8:	00002097          	auipc	ra,0x2
    800035ac:	408080e7          	jalr	1032(ra) # 800059b0 <_Z11printStringPKc>
        sem->signal();
    800035b0:	0084b503          	ld	a0,8(s1)
    800035b4:	fffff097          	auipc	ra,0xfffff
    800035b8:	4c0080e7          	jalr	1216(ra) # 80002a74 <_ZN9Semaphore6signalEv>
        printString("D finished\n");
    800035bc:	00006517          	auipc	a0,0x6
    800035c0:	ec450513          	addi	a0,a0,-316 # 80009480 <CONSOLE_STATUS+0x470>
    800035c4:	00002097          	auipc	ra,0x2
    800035c8:	3ec080e7          	jalr	1004(ra) # 800059b0 <_Z11printStringPKc>
        finishedD = true;
    800035cc:	00100793          	li	a5,1
    800035d0:	00f489a3          	sb	a5,19(s1)
    }
    800035d4:	01813083          	ld	ra,24(sp)
    800035d8:	01013403          	ld	s0,16(sp)
    800035dc:	00813483          	ld	s1,8(sp)
    800035e0:	02010113          	addi	sp,sp,32
    800035e4:	00008067          	ret

00000000800035e8 <_ZN7WorkerAD1Ev>:
class WorkerA : public Thread {
    800035e8:	ff010113          	addi	sp,sp,-16
    800035ec:	00113423          	sd	ra,8(sp)
    800035f0:	00813023          	sd	s0,0(sp)
    800035f4:	01010413          	addi	s0,sp,16
    800035f8:	00008797          	auipc	a5,0x8
    800035fc:	45878793          	addi	a5,a5,1112 # 8000ba50 <_ZTV7WorkerA+0x10>
    80003600:	00f53023          	sd	a5,0(a0)
    80003604:	fffff097          	auipc	ra,0xfffff
    80003608:	210080e7          	jalr	528(ra) # 80002814 <_ZN6ThreadD1Ev>
    8000360c:	00813083          	ld	ra,8(sp)
    80003610:	00013403          	ld	s0,0(sp)
    80003614:	01010113          	addi	sp,sp,16
    80003618:	00008067          	ret

000000008000361c <_ZN7WorkerAD0Ev>:
    8000361c:	fe010113          	addi	sp,sp,-32
    80003620:	00113c23          	sd	ra,24(sp)
    80003624:	00813823          	sd	s0,16(sp)
    80003628:	00913423          	sd	s1,8(sp)
    8000362c:	02010413          	addi	s0,sp,32
    80003630:	00050493          	mv	s1,a0
    80003634:	00008797          	auipc	a5,0x8
    80003638:	41c78793          	addi	a5,a5,1052 # 8000ba50 <_ZTV7WorkerA+0x10>
    8000363c:	00f53023          	sd	a5,0(a0)
    80003640:	fffff097          	auipc	ra,0xfffff
    80003644:	1d4080e7          	jalr	468(ra) # 80002814 <_ZN6ThreadD1Ev>
    80003648:	00048513          	mv	a0,s1
    8000364c:	fffff097          	auipc	ra,0xfffff
    80003650:	064080e7          	jalr	100(ra) # 800026b0 <_ZdlPv>
    80003654:	01813083          	ld	ra,24(sp)
    80003658:	01013403          	ld	s0,16(sp)
    8000365c:	00813483          	ld	s1,8(sp)
    80003660:	02010113          	addi	sp,sp,32
    80003664:	00008067          	ret

0000000080003668 <_ZN7WorkerBD1Ev>:
class WorkerB : public Thread {
    80003668:	ff010113          	addi	sp,sp,-16
    8000366c:	00113423          	sd	ra,8(sp)
    80003670:	00813023          	sd	s0,0(sp)
    80003674:	01010413          	addi	s0,sp,16
    80003678:	00008797          	auipc	a5,0x8
    8000367c:	40078793          	addi	a5,a5,1024 # 8000ba78 <_ZTV7WorkerB+0x10>
    80003680:	00f53023          	sd	a5,0(a0)
    80003684:	fffff097          	auipc	ra,0xfffff
    80003688:	190080e7          	jalr	400(ra) # 80002814 <_ZN6ThreadD1Ev>
    8000368c:	00813083          	ld	ra,8(sp)
    80003690:	00013403          	ld	s0,0(sp)
    80003694:	01010113          	addi	sp,sp,16
    80003698:	00008067          	ret

000000008000369c <_ZN7WorkerBD0Ev>:
    8000369c:	fe010113          	addi	sp,sp,-32
    800036a0:	00113c23          	sd	ra,24(sp)
    800036a4:	00813823          	sd	s0,16(sp)
    800036a8:	00913423          	sd	s1,8(sp)
    800036ac:	02010413          	addi	s0,sp,32
    800036b0:	00050493          	mv	s1,a0
    800036b4:	00008797          	auipc	a5,0x8
    800036b8:	3c478793          	addi	a5,a5,964 # 8000ba78 <_ZTV7WorkerB+0x10>
    800036bc:	00f53023          	sd	a5,0(a0)
    800036c0:	fffff097          	auipc	ra,0xfffff
    800036c4:	154080e7          	jalr	340(ra) # 80002814 <_ZN6ThreadD1Ev>
    800036c8:	00048513          	mv	a0,s1
    800036cc:	fffff097          	auipc	ra,0xfffff
    800036d0:	fe4080e7          	jalr	-28(ra) # 800026b0 <_ZdlPv>
    800036d4:	01813083          	ld	ra,24(sp)
    800036d8:	01013403          	ld	s0,16(sp)
    800036dc:	00813483          	ld	s1,8(sp)
    800036e0:	02010113          	addi	sp,sp,32
    800036e4:	00008067          	ret

00000000800036e8 <_ZN7WorkerCD1Ev>:
class WorkerC : public Thread {
    800036e8:	ff010113          	addi	sp,sp,-16
    800036ec:	00113423          	sd	ra,8(sp)
    800036f0:	00813023          	sd	s0,0(sp)
    800036f4:	01010413          	addi	s0,sp,16
    800036f8:	00008797          	auipc	a5,0x8
    800036fc:	3a878793          	addi	a5,a5,936 # 8000baa0 <_ZTV7WorkerC+0x10>
    80003700:	00f53023          	sd	a5,0(a0)
    80003704:	fffff097          	auipc	ra,0xfffff
    80003708:	110080e7          	jalr	272(ra) # 80002814 <_ZN6ThreadD1Ev>
    8000370c:	00813083          	ld	ra,8(sp)
    80003710:	00013403          	ld	s0,0(sp)
    80003714:	01010113          	addi	sp,sp,16
    80003718:	00008067          	ret

000000008000371c <_ZN7WorkerCD0Ev>:
    8000371c:	fe010113          	addi	sp,sp,-32
    80003720:	00113c23          	sd	ra,24(sp)
    80003724:	00813823          	sd	s0,16(sp)
    80003728:	00913423          	sd	s1,8(sp)
    8000372c:	02010413          	addi	s0,sp,32
    80003730:	00050493          	mv	s1,a0
    80003734:	00008797          	auipc	a5,0x8
    80003738:	36c78793          	addi	a5,a5,876 # 8000baa0 <_ZTV7WorkerC+0x10>
    8000373c:	00f53023          	sd	a5,0(a0)
    80003740:	fffff097          	auipc	ra,0xfffff
    80003744:	0d4080e7          	jalr	212(ra) # 80002814 <_ZN6ThreadD1Ev>
    80003748:	00048513          	mv	a0,s1
    8000374c:	fffff097          	auipc	ra,0xfffff
    80003750:	f64080e7          	jalr	-156(ra) # 800026b0 <_ZdlPv>
    80003754:	01813083          	ld	ra,24(sp)
    80003758:	01013403          	ld	s0,16(sp)
    8000375c:	00813483          	ld	s1,8(sp)
    80003760:	02010113          	addi	sp,sp,32
    80003764:	00008067          	ret

0000000080003768 <_ZN7WorkerDD1Ev>:
class WorkerD : public Thread {
    80003768:	ff010113          	addi	sp,sp,-16
    8000376c:	00113423          	sd	ra,8(sp)
    80003770:	00813023          	sd	s0,0(sp)
    80003774:	01010413          	addi	s0,sp,16
    80003778:	00008797          	auipc	a5,0x8
    8000377c:	35078793          	addi	a5,a5,848 # 8000bac8 <_ZTV7WorkerD+0x10>
    80003780:	00f53023          	sd	a5,0(a0)
    80003784:	fffff097          	auipc	ra,0xfffff
    80003788:	090080e7          	jalr	144(ra) # 80002814 <_ZN6ThreadD1Ev>
    8000378c:	00813083          	ld	ra,8(sp)
    80003790:	00013403          	ld	s0,0(sp)
    80003794:	01010113          	addi	sp,sp,16
    80003798:	00008067          	ret

000000008000379c <_ZN7WorkerDD0Ev>:
    8000379c:	fe010113          	addi	sp,sp,-32
    800037a0:	00113c23          	sd	ra,24(sp)
    800037a4:	00813823          	sd	s0,16(sp)
    800037a8:	00913423          	sd	s1,8(sp)
    800037ac:	02010413          	addi	s0,sp,32
    800037b0:	00050493          	mv	s1,a0
    800037b4:	00008797          	auipc	a5,0x8
    800037b8:	31478793          	addi	a5,a5,788 # 8000bac8 <_ZTV7WorkerD+0x10>
    800037bc:	00f53023          	sd	a5,0(a0)
    800037c0:	fffff097          	auipc	ra,0xfffff
    800037c4:	054080e7          	jalr	84(ra) # 80002814 <_ZN6ThreadD1Ev>
    800037c8:	00048513          	mv	a0,s1
    800037cc:	fffff097          	auipc	ra,0xfffff
    800037d0:	ee4080e7          	jalr	-284(ra) # 800026b0 <_ZdlPv>
    800037d4:	01813083          	ld	ra,24(sp)
    800037d8:	01013403          	ld	s0,16(sp)
    800037dc:	00813483          	ld	s1,8(sp)
    800037e0:	02010113          	addi	sp,sp,32
    800037e4:	00008067          	ret

00000000800037e8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800037e8:	fe010113          	addi	sp,sp,-32
    800037ec:	00113c23          	sd	ra,24(sp)
    800037f0:	00813823          	sd	s0,16(sp)
    800037f4:	00913423          	sd	s1,8(sp)
    800037f8:	01213023          	sd	s2,0(sp)
    800037fc:	02010413          	addi	s0,sp,32
    80003800:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003804:	00000913          	li	s2,0
    80003808:	00c0006f          	j	80003814 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000380c:	ffffe097          	auipc	ra,0xffffe
    80003810:	b7c080e7          	jalr	-1156(ra) # 80001388 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003814:	ffffe097          	auipc	ra,0xffffe
    80003818:	d7c080e7          	jalr	-644(ra) # 80001590 <_Z4getcv>
    8000381c:	0005059b          	sext.w	a1,a0
    80003820:	01b00793          	li	a5,27
    80003824:	02f58a63          	beq	a1,a5,80003858 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003828:	0084b503          	ld	a0,8(s1)
    8000382c:	00003097          	auipc	ra,0x3
    80003830:	ffc080e7          	jalr	-4(ra) # 80006828 <_ZN6Buffer3putEi>
        i++;
    80003834:	0019071b          	addiw	a4,s2,1
    80003838:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000383c:	0004a683          	lw	a3,0(s1)
    80003840:	0026979b          	slliw	a5,a3,0x2
    80003844:	00d787bb          	addw	a5,a5,a3
    80003848:	0017979b          	slliw	a5,a5,0x1
    8000384c:	02f767bb          	remw	a5,a4,a5
    80003850:	fc0792e3          	bnez	a5,80003814 <_ZL16producerKeyboardPv+0x2c>
    80003854:	fb9ff06f          	j	8000380c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003858:	00100793          	li	a5,1
    8000385c:	00008717          	auipc	a4,0x8
    80003860:	46f72623          	sw	a5,1132(a4) # 8000bcc8 <_ZL9threadEnd>
    data->buffer->put('!');
    80003864:	02100593          	li	a1,33
    80003868:	0084b503          	ld	a0,8(s1)
    8000386c:	00003097          	auipc	ra,0x3
    80003870:	fbc080e7          	jalr	-68(ra) # 80006828 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003874:	0104b503          	ld	a0,16(s1)
    80003878:	ffffe097          	auipc	ra,0xffffe
    8000387c:	c10080e7          	jalr	-1008(ra) # 80001488 <_Z10sem_signalP4_sem>
}
    80003880:	01813083          	ld	ra,24(sp)
    80003884:	01013403          	ld	s0,16(sp)
    80003888:	00813483          	ld	s1,8(sp)
    8000388c:	00013903          	ld	s2,0(sp)
    80003890:	02010113          	addi	sp,sp,32
    80003894:	00008067          	ret

0000000080003898 <_ZL8producerPv>:

static void producer(void *arg) {
    80003898:	fe010113          	addi	sp,sp,-32
    8000389c:	00113c23          	sd	ra,24(sp)
    800038a0:	00813823          	sd	s0,16(sp)
    800038a4:	00913423          	sd	s1,8(sp)
    800038a8:	01213023          	sd	s2,0(sp)
    800038ac:	02010413          	addi	s0,sp,32
    800038b0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800038b4:	00000913          	li	s2,0
    800038b8:	00c0006f          	j	800038c4 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800038bc:	ffffe097          	auipc	ra,0xffffe
    800038c0:	acc080e7          	jalr	-1332(ra) # 80001388 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800038c4:	00008797          	auipc	a5,0x8
    800038c8:	4047a783          	lw	a5,1028(a5) # 8000bcc8 <_ZL9threadEnd>
    800038cc:	02079e63          	bnez	a5,80003908 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800038d0:	0004a583          	lw	a1,0(s1)
    800038d4:	0305859b          	addiw	a1,a1,48
    800038d8:	0084b503          	ld	a0,8(s1)
    800038dc:	00003097          	auipc	ra,0x3
    800038e0:	f4c080e7          	jalr	-180(ra) # 80006828 <_ZN6Buffer3putEi>
        i++;
    800038e4:	0019071b          	addiw	a4,s2,1
    800038e8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800038ec:	0004a683          	lw	a3,0(s1)
    800038f0:	0026979b          	slliw	a5,a3,0x2
    800038f4:	00d787bb          	addw	a5,a5,a3
    800038f8:	0017979b          	slliw	a5,a5,0x1
    800038fc:	02f767bb          	remw	a5,a4,a5
    80003900:	fc0792e3          	bnez	a5,800038c4 <_ZL8producerPv+0x2c>
    80003904:	fb9ff06f          	j	800038bc <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003908:	0104b503          	ld	a0,16(s1)
    8000390c:	ffffe097          	auipc	ra,0xffffe
    80003910:	b7c080e7          	jalr	-1156(ra) # 80001488 <_Z10sem_signalP4_sem>
}
    80003914:	01813083          	ld	ra,24(sp)
    80003918:	01013403          	ld	s0,16(sp)
    8000391c:	00813483          	ld	s1,8(sp)
    80003920:	00013903          	ld	s2,0(sp)
    80003924:	02010113          	addi	sp,sp,32
    80003928:	00008067          	ret

000000008000392c <_ZL8consumerPv>:

static void consumer(void *arg) {
    8000392c:	fd010113          	addi	sp,sp,-48
    80003930:	02113423          	sd	ra,40(sp)
    80003934:	02813023          	sd	s0,32(sp)
    80003938:	00913c23          	sd	s1,24(sp)
    8000393c:	01213823          	sd	s2,16(sp)
    80003940:	01313423          	sd	s3,8(sp)
    80003944:	03010413          	addi	s0,sp,48
    80003948:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000394c:	00000993          	li	s3,0
    80003950:	01c0006f          	j	8000396c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003954:	ffffe097          	auipc	ra,0xffffe
    80003958:	a34080e7          	jalr	-1484(ra) # 80001388 <_Z15thread_dispatchv>
    8000395c:	0500006f          	j	800039ac <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003960:	00a00513          	li	a0,10
    80003964:	ffffe097          	auipc	ra,0xffffe
    80003968:	c6c080e7          	jalr	-916(ra) # 800015d0 <_Z4putcc>
    while (!threadEnd) {
    8000396c:	00008797          	auipc	a5,0x8
    80003970:	35c7a783          	lw	a5,860(a5) # 8000bcc8 <_ZL9threadEnd>
    80003974:	06079063          	bnez	a5,800039d4 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003978:	00893503          	ld	a0,8(s2)
    8000397c:	00003097          	auipc	ra,0x3
    80003980:	f3c080e7          	jalr	-196(ra) # 800068b8 <_ZN6Buffer3getEv>
        i++;
    80003984:	0019849b          	addiw	s1,s3,1
    80003988:	0004899b          	sext.w	s3,s1
        putc(key);
    8000398c:	0ff57513          	andi	a0,a0,255
    80003990:	ffffe097          	auipc	ra,0xffffe
    80003994:	c40080e7          	jalr	-960(ra) # 800015d0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003998:	00092703          	lw	a4,0(s2)
    8000399c:	0027179b          	slliw	a5,a4,0x2
    800039a0:	00e787bb          	addw	a5,a5,a4
    800039a4:	02f4e7bb          	remw	a5,s1,a5
    800039a8:	fa0786e3          	beqz	a5,80003954 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800039ac:	05000793          	li	a5,80
    800039b0:	02f4e4bb          	remw	s1,s1,a5
    800039b4:	fa049ce3          	bnez	s1,8000396c <_ZL8consumerPv+0x40>
    800039b8:	fa9ff06f          	j	80003960 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800039bc:	00893503          	ld	a0,8(s2)
    800039c0:	00003097          	auipc	ra,0x3
    800039c4:	ef8080e7          	jalr	-264(ra) # 800068b8 <_ZN6Buffer3getEv>
        putc(key);
    800039c8:	0ff57513          	andi	a0,a0,255
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	c04080e7          	jalr	-1020(ra) # 800015d0 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800039d4:	00893503          	ld	a0,8(s2)
    800039d8:	00003097          	auipc	ra,0x3
    800039dc:	f6c080e7          	jalr	-148(ra) # 80006944 <_ZN6Buffer6getCntEv>
    800039e0:	fca04ee3          	bgtz	a0,800039bc <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800039e4:	01093503          	ld	a0,16(s2)
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	aa0080e7          	jalr	-1376(ra) # 80001488 <_Z10sem_signalP4_sem>
}
    800039f0:	02813083          	ld	ra,40(sp)
    800039f4:	02013403          	ld	s0,32(sp)
    800039f8:	01813483          	ld	s1,24(sp)
    800039fc:	01013903          	ld	s2,16(sp)
    80003a00:	00813983          	ld	s3,8(sp)
    80003a04:	03010113          	addi	sp,sp,48
    80003a08:	00008067          	ret

0000000080003a0c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003a0c:	f9010113          	addi	sp,sp,-112
    80003a10:	06113423          	sd	ra,104(sp)
    80003a14:	06813023          	sd	s0,96(sp)
    80003a18:	04913c23          	sd	s1,88(sp)
    80003a1c:	05213823          	sd	s2,80(sp)
    80003a20:	05313423          	sd	s3,72(sp)
    80003a24:	05413023          	sd	s4,64(sp)
    80003a28:	03513c23          	sd	s5,56(sp)
    80003a2c:	03613823          	sd	s6,48(sp)
    80003a30:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003a34:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003a38:	00006517          	auipc	a0,0x6
    80003a3c:	ad850513          	addi	a0,a0,-1320 # 80009510 <CONSOLE_STATUS+0x500>
    80003a40:	00002097          	auipc	ra,0x2
    80003a44:	f70080e7          	jalr	-144(ra) # 800059b0 <_Z11printStringPKc>
    getString(input, 30);
    80003a48:	01e00593          	li	a1,30
    80003a4c:	fa040493          	addi	s1,s0,-96
    80003a50:	00048513          	mv	a0,s1
    80003a54:	00002097          	auipc	ra,0x2
    80003a58:	fe4080e7          	jalr	-28(ra) # 80005a38 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003a5c:	00048513          	mv	a0,s1
    80003a60:	00002097          	auipc	ra,0x2
    80003a64:	0b0080e7          	jalr	176(ra) # 80005b10 <_Z11stringToIntPKc>
    80003a68:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003a6c:	00006517          	auipc	a0,0x6
    80003a70:	ac450513          	addi	a0,a0,-1340 # 80009530 <CONSOLE_STATUS+0x520>
    80003a74:	00002097          	auipc	ra,0x2
    80003a78:	f3c080e7          	jalr	-196(ra) # 800059b0 <_Z11printStringPKc>
    getString(input, 30);
    80003a7c:	01e00593          	li	a1,30
    80003a80:	00048513          	mv	a0,s1
    80003a84:	00002097          	auipc	ra,0x2
    80003a88:	fb4080e7          	jalr	-76(ra) # 80005a38 <_Z9getStringPci>
    n = stringToInt(input);
    80003a8c:	00048513          	mv	a0,s1
    80003a90:	00002097          	auipc	ra,0x2
    80003a94:	080080e7          	jalr	128(ra) # 80005b10 <_Z11stringToIntPKc>
    80003a98:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003a9c:	00006517          	auipc	a0,0x6
    80003aa0:	ab450513          	addi	a0,a0,-1356 # 80009550 <CONSOLE_STATUS+0x540>
    80003aa4:	00002097          	auipc	ra,0x2
    80003aa8:	f0c080e7          	jalr	-244(ra) # 800059b0 <_Z11printStringPKc>
    80003aac:	00000613          	li	a2,0
    80003ab0:	00a00593          	li	a1,10
    80003ab4:	00090513          	mv	a0,s2
    80003ab8:	00002097          	auipc	ra,0x2
    80003abc:	0a8080e7          	jalr	168(ra) # 80005b60 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003ac0:	00006517          	auipc	a0,0x6
    80003ac4:	aa850513          	addi	a0,a0,-1368 # 80009568 <CONSOLE_STATUS+0x558>
    80003ac8:	00002097          	auipc	ra,0x2
    80003acc:	ee8080e7          	jalr	-280(ra) # 800059b0 <_Z11printStringPKc>
    80003ad0:	00000613          	li	a2,0
    80003ad4:	00a00593          	li	a1,10
    80003ad8:	00048513          	mv	a0,s1
    80003adc:	00002097          	auipc	ra,0x2
    80003ae0:	084080e7          	jalr	132(ra) # 80005b60 <_Z8printIntiii>
    printString(".\n");
    80003ae4:	00006517          	auipc	a0,0x6
    80003ae8:	a9c50513          	addi	a0,a0,-1380 # 80009580 <CONSOLE_STATUS+0x570>
    80003aec:	00002097          	auipc	ra,0x2
    80003af0:	ec4080e7          	jalr	-316(ra) # 800059b0 <_Z11printStringPKc>
    if(threadNum > n) {
    80003af4:	0324c463          	blt	s1,s2,80003b1c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003af8:	03205c63          	blez	s2,80003b30 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003afc:	03800513          	li	a0,56
    80003b00:	fffff097          	auipc	ra,0xfffff
    80003b04:	b60080e7          	jalr	-1184(ra) # 80002660 <_Znwm>
    80003b08:	00050a13          	mv	s4,a0
    80003b0c:	00048593          	mv	a1,s1
    80003b10:	00003097          	auipc	ra,0x3
    80003b14:	c7c080e7          	jalr	-900(ra) # 8000678c <_ZN6BufferC1Ei>
    80003b18:	0300006f          	j	80003b48 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003b1c:	00006517          	auipc	a0,0x6
    80003b20:	a6c50513          	addi	a0,a0,-1428 # 80009588 <CONSOLE_STATUS+0x578>
    80003b24:	00002097          	auipc	ra,0x2
    80003b28:	e8c080e7          	jalr	-372(ra) # 800059b0 <_Z11printStringPKc>
        return;
    80003b2c:	0140006f          	j	80003b40 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003b30:	00006517          	auipc	a0,0x6
    80003b34:	a9850513          	addi	a0,a0,-1384 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80003b38:	00002097          	auipc	ra,0x2
    80003b3c:	e78080e7          	jalr	-392(ra) # 800059b0 <_Z11printStringPKc>
        return;
    80003b40:	000b0113          	mv	sp,s6
    80003b44:	1500006f          	j	80003c94 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003b48:	00000593          	li	a1,0
    80003b4c:	00008517          	auipc	a0,0x8
    80003b50:	18450513          	addi	a0,a0,388 # 8000bcd0 <_ZL10waitForAll>
    80003b54:	ffffe097          	auipc	ra,0xffffe
    80003b58:	870080e7          	jalr	-1936(ra) # 800013c4 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003b5c:	00391793          	slli	a5,s2,0x3
    80003b60:	00f78793          	addi	a5,a5,15
    80003b64:	ff07f793          	andi	a5,a5,-16
    80003b68:	40f10133          	sub	sp,sp,a5
    80003b6c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003b70:	0019071b          	addiw	a4,s2,1
    80003b74:	00171793          	slli	a5,a4,0x1
    80003b78:	00e787b3          	add	a5,a5,a4
    80003b7c:	00379793          	slli	a5,a5,0x3
    80003b80:	00f78793          	addi	a5,a5,15
    80003b84:	ff07f793          	andi	a5,a5,-16
    80003b88:	40f10133          	sub	sp,sp,a5
    80003b8c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003b90:	00191613          	slli	a2,s2,0x1
    80003b94:	012607b3          	add	a5,a2,s2
    80003b98:	00379793          	slli	a5,a5,0x3
    80003b9c:	00f987b3          	add	a5,s3,a5
    80003ba0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003ba4:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003ba8:	00008717          	auipc	a4,0x8
    80003bac:	12873703          	ld	a4,296(a4) # 8000bcd0 <_ZL10waitForAll>
    80003bb0:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003bb4:	00078613          	mv	a2,a5
    80003bb8:	00000597          	auipc	a1,0x0
    80003bbc:	d7458593          	addi	a1,a1,-652 # 8000392c <_ZL8consumerPv>
    80003bc0:	f9840513          	addi	a0,s0,-104
    80003bc4:	ffffd097          	auipc	ra,0xffffd
    80003bc8:	6c0080e7          	jalr	1728(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003bcc:	00000493          	li	s1,0
    80003bd0:	0280006f          	j	80003bf8 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003bd4:	00000597          	auipc	a1,0x0
    80003bd8:	c1458593          	addi	a1,a1,-1004 # 800037e8 <_ZL16producerKeyboardPv>
                      data + i);
    80003bdc:	00179613          	slli	a2,a5,0x1
    80003be0:	00f60633          	add	a2,a2,a5
    80003be4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003be8:	00c98633          	add	a2,s3,a2
    80003bec:	ffffd097          	auipc	ra,0xffffd
    80003bf0:	698080e7          	jalr	1688(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003bf4:	0014849b          	addiw	s1,s1,1
    80003bf8:	0524d263          	bge	s1,s2,80003c3c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003bfc:	00149793          	slli	a5,s1,0x1
    80003c00:	009787b3          	add	a5,a5,s1
    80003c04:	00379793          	slli	a5,a5,0x3
    80003c08:	00f987b3          	add	a5,s3,a5
    80003c0c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003c10:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003c14:	00008717          	auipc	a4,0x8
    80003c18:	0bc73703          	ld	a4,188(a4) # 8000bcd0 <_ZL10waitForAll>
    80003c1c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003c20:	00048793          	mv	a5,s1
    80003c24:	00349513          	slli	a0,s1,0x3
    80003c28:	00aa8533          	add	a0,s5,a0
    80003c2c:	fa9054e3          	blez	s1,80003bd4 <_Z22producerConsumer_C_APIv+0x1c8>
    80003c30:	00000597          	auipc	a1,0x0
    80003c34:	c6858593          	addi	a1,a1,-920 # 80003898 <_ZL8producerPv>
    80003c38:	fa5ff06f          	j	80003bdc <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003c3c:	ffffd097          	auipc	ra,0xffffd
    80003c40:	74c080e7          	jalr	1868(ra) # 80001388 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003c44:	00000493          	li	s1,0
    80003c48:	00994e63          	blt	s2,s1,80003c64 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003c4c:	00008517          	auipc	a0,0x8
    80003c50:	08453503          	ld	a0,132(a0) # 8000bcd0 <_ZL10waitForAll>
    80003c54:	ffffd097          	auipc	ra,0xffffd
    80003c58:	7f4080e7          	jalr	2036(ra) # 80001448 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003c5c:	0014849b          	addiw	s1,s1,1
    80003c60:	fe9ff06f          	j	80003c48 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003c64:	00008517          	auipc	a0,0x8
    80003c68:	06c53503          	ld	a0,108(a0) # 8000bcd0 <_ZL10waitForAll>
    80003c6c:	ffffd097          	auipc	ra,0xffffd
    80003c70:	79c080e7          	jalr	1948(ra) # 80001408 <_Z9sem_closeP4_sem>
    delete buffer;
    80003c74:	000a0e63          	beqz	s4,80003c90 <_Z22producerConsumer_C_APIv+0x284>
    80003c78:	000a0513          	mv	a0,s4
    80003c7c:	00003097          	auipc	ra,0x3
    80003c80:	d50080e7          	jalr	-688(ra) # 800069cc <_ZN6BufferD1Ev>
    80003c84:	000a0513          	mv	a0,s4
    80003c88:	fffff097          	auipc	ra,0xfffff
    80003c8c:	a28080e7          	jalr	-1496(ra) # 800026b0 <_ZdlPv>
    80003c90:	000b0113          	mv	sp,s6

}
    80003c94:	f9040113          	addi	sp,s0,-112
    80003c98:	06813083          	ld	ra,104(sp)
    80003c9c:	06013403          	ld	s0,96(sp)
    80003ca0:	05813483          	ld	s1,88(sp)
    80003ca4:	05013903          	ld	s2,80(sp)
    80003ca8:	04813983          	ld	s3,72(sp)
    80003cac:	04013a03          	ld	s4,64(sp)
    80003cb0:	03813a83          	ld	s5,56(sp)
    80003cb4:	03013b03          	ld	s6,48(sp)
    80003cb8:	07010113          	addi	sp,sp,112
    80003cbc:	00008067          	ret
    80003cc0:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003cc4:	000a0513          	mv	a0,s4
    80003cc8:	fffff097          	auipc	ra,0xfffff
    80003ccc:	9e8080e7          	jalr	-1560(ra) # 800026b0 <_ZdlPv>
    80003cd0:	00048513          	mv	a0,s1
    80003cd4:	00009097          	auipc	ra,0x9
    80003cd8:	114080e7          	jalr	276(ra) # 8000cde8 <_Unwind_Resume>

0000000080003cdc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003cdc:	fe010113          	addi	sp,sp,-32
    80003ce0:	00113c23          	sd	ra,24(sp)
    80003ce4:	00813823          	sd	s0,16(sp)
    80003ce8:	00913423          	sd	s1,8(sp)
    80003cec:	01213023          	sd	s2,0(sp)
    80003cf0:	02010413          	addi	s0,sp,32
    80003cf4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003cf8:	00100793          	li	a5,1
    80003cfc:	02a7f863          	bgeu	a5,a0,80003d2c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003d00:	00a00793          	li	a5,10
    80003d04:	02f577b3          	remu	a5,a0,a5
    80003d08:	02078e63          	beqz	a5,80003d44 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003d0c:	fff48513          	addi	a0,s1,-1
    80003d10:	00000097          	auipc	ra,0x0
    80003d14:	fcc080e7          	jalr	-52(ra) # 80003cdc <_ZL9fibonaccim>
    80003d18:	00050913          	mv	s2,a0
    80003d1c:	ffe48513          	addi	a0,s1,-2
    80003d20:	00000097          	auipc	ra,0x0
    80003d24:	fbc080e7          	jalr	-68(ra) # 80003cdc <_ZL9fibonaccim>
    80003d28:	00a90533          	add	a0,s2,a0
}
    80003d2c:	01813083          	ld	ra,24(sp)
    80003d30:	01013403          	ld	s0,16(sp)
    80003d34:	00813483          	ld	s1,8(sp)
    80003d38:	00013903          	ld	s2,0(sp)
    80003d3c:	02010113          	addi	sp,sp,32
    80003d40:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003d44:	ffffd097          	auipc	ra,0xffffd
    80003d48:	644080e7          	jalr	1604(ra) # 80001388 <_Z15thread_dispatchv>
    80003d4c:	fc1ff06f          	j	80003d0c <_ZL9fibonaccim+0x30>

0000000080003d50 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003d50:	fe010113          	addi	sp,sp,-32
    80003d54:	00113c23          	sd	ra,24(sp)
    80003d58:	00813823          	sd	s0,16(sp)
    80003d5c:	00913423          	sd	s1,8(sp)
    80003d60:	01213023          	sd	s2,0(sp)
    80003d64:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003d68:	00000913          	li	s2,0
    80003d6c:	0380006f          	j	80003da4 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003d70:	ffffd097          	auipc	ra,0xffffd
    80003d74:	618080e7          	jalr	1560(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003d78:	00148493          	addi	s1,s1,1
    80003d7c:	000027b7          	lui	a5,0x2
    80003d80:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003d84:	0097ee63          	bltu	a5,s1,80003da0 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003d88:	00000713          	li	a4,0
    80003d8c:	000077b7          	lui	a5,0x7
    80003d90:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003d94:	fce7eee3          	bltu	a5,a4,80003d70 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003d98:	00170713          	addi	a4,a4,1
    80003d9c:	ff1ff06f          	j	80003d8c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003da0:	00190913          	addi	s2,s2,1
    80003da4:	00900793          	li	a5,9
    80003da8:	0527e063          	bltu	a5,s2,80003de8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003dac:	00005517          	auipc	a0,0x5
    80003db0:	60450513          	addi	a0,a0,1540 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80003db4:	00002097          	auipc	ra,0x2
    80003db8:	bfc080e7          	jalr	-1028(ra) # 800059b0 <_Z11printStringPKc>
    80003dbc:	00000613          	li	a2,0
    80003dc0:	00a00593          	li	a1,10
    80003dc4:	0009051b          	sext.w	a0,s2
    80003dc8:	00002097          	auipc	ra,0x2
    80003dcc:	d98080e7          	jalr	-616(ra) # 80005b60 <_Z8printIntiii>
    80003dd0:	00005517          	auipc	a0,0x5
    80003dd4:	51050513          	addi	a0,a0,1296 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003dd8:	00002097          	auipc	ra,0x2
    80003ddc:	bd8080e7          	jalr	-1064(ra) # 800059b0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003de0:	00000493          	li	s1,0
    80003de4:	f99ff06f          	j	80003d7c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003de8:	00006517          	auipc	a0,0x6
    80003dec:	81050513          	addi	a0,a0,-2032 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80003df0:	00002097          	auipc	ra,0x2
    80003df4:	bc0080e7          	jalr	-1088(ra) # 800059b0 <_Z11printStringPKc>
    finishedA = true;
    80003df8:	00100793          	li	a5,1
    80003dfc:	00008717          	auipc	a4,0x8
    80003e00:	ecf70e23          	sb	a5,-292(a4) # 8000bcd8 <_ZL9finishedA>
}
    80003e04:	01813083          	ld	ra,24(sp)
    80003e08:	01013403          	ld	s0,16(sp)
    80003e0c:	00813483          	ld	s1,8(sp)
    80003e10:	00013903          	ld	s2,0(sp)
    80003e14:	02010113          	addi	sp,sp,32
    80003e18:	00008067          	ret

0000000080003e1c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003e1c:	fe010113          	addi	sp,sp,-32
    80003e20:	00113c23          	sd	ra,24(sp)
    80003e24:	00813823          	sd	s0,16(sp)
    80003e28:	00913423          	sd	s1,8(sp)
    80003e2c:	01213023          	sd	s2,0(sp)
    80003e30:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003e34:	00000913          	li	s2,0
    80003e38:	0380006f          	j	80003e70 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003e3c:	ffffd097          	auipc	ra,0xffffd
    80003e40:	54c080e7          	jalr	1356(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003e44:	00148493          	addi	s1,s1,1
    80003e48:	000027b7          	lui	a5,0x2
    80003e4c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003e50:	0097ee63          	bltu	a5,s1,80003e6c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003e54:	00000713          	li	a4,0
    80003e58:	000077b7          	lui	a5,0x7
    80003e5c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003e60:	fce7eee3          	bltu	a5,a4,80003e3c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003e64:	00170713          	addi	a4,a4,1
    80003e68:	ff1ff06f          	j	80003e58 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003e6c:	00190913          	addi	s2,s2,1
    80003e70:	00f00793          	li	a5,15
    80003e74:	0527e063          	bltu	a5,s2,80003eb4 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003e78:	00005517          	auipc	a0,0x5
    80003e7c:	57050513          	addi	a0,a0,1392 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80003e80:	00002097          	auipc	ra,0x2
    80003e84:	b30080e7          	jalr	-1232(ra) # 800059b0 <_Z11printStringPKc>
    80003e88:	00000613          	li	a2,0
    80003e8c:	00a00593          	li	a1,10
    80003e90:	0009051b          	sext.w	a0,s2
    80003e94:	00002097          	auipc	ra,0x2
    80003e98:	ccc080e7          	jalr	-820(ra) # 80005b60 <_Z8printIntiii>
    80003e9c:	00005517          	auipc	a0,0x5
    80003ea0:	44450513          	addi	a0,a0,1092 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003ea4:	00002097          	auipc	ra,0x2
    80003ea8:	b0c080e7          	jalr	-1268(ra) # 800059b0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003eac:	00000493          	li	s1,0
    80003eb0:	f99ff06f          	j	80003e48 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003eb4:	00005517          	auipc	a0,0x5
    80003eb8:	75450513          	addi	a0,a0,1876 # 80009608 <CONSOLE_STATUS+0x5f8>
    80003ebc:	00002097          	auipc	ra,0x2
    80003ec0:	af4080e7          	jalr	-1292(ra) # 800059b0 <_Z11printStringPKc>
    finishedB = true;
    80003ec4:	00100793          	li	a5,1
    80003ec8:	00008717          	auipc	a4,0x8
    80003ecc:	e0f708a3          	sb	a5,-495(a4) # 8000bcd9 <_ZL9finishedB>
    thread_dispatch();
    80003ed0:	ffffd097          	auipc	ra,0xffffd
    80003ed4:	4b8080e7          	jalr	1208(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003ed8:	01813083          	ld	ra,24(sp)
    80003edc:	01013403          	ld	s0,16(sp)
    80003ee0:	00813483          	ld	s1,8(sp)
    80003ee4:	00013903          	ld	s2,0(sp)
    80003ee8:	02010113          	addi	sp,sp,32
    80003eec:	00008067          	ret

0000000080003ef0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003ef0:	fe010113          	addi	sp,sp,-32
    80003ef4:	00113c23          	sd	ra,24(sp)
    80003ef8:	00813823          	sd	s0,16(sp)
    80003efc:	00913423          	sd	s1,8(sp)
    80003f00:	01213023          	sd	s2,0(sp)
    80003f04:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003f08:	00000493          	li	s1,0
    80003f0c:	0400006f          	j	80003f4c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003f10:	00005517          	auipc	a0,0x5
    80003f14:	51050513          	addi	a0,a0,1296 # 80009420 <CONSOLE_STATUS+0x410>
    80003f18:	00002097          	auipc	ra,0x2
    80003f1c:	a98080e7          	jalr	-1384(ra) # 800059b0 <_Z11printStringPKc>
    80003f20:	00000613          	li	a2,0
    80003f24:	00a00593          	li	a1,10
    80003f28:	00048513          	mv	a0,s1
    80003f2c:	00002097          	auipc	ra,0x2
    80003f30:	c34080e7          	jalr	-972(ra) # 80005b60 <_Z8printIntiii>
    80003f34:	00005517          	auipc	a0,0x5
    80003f38:	3ac50513          	addi	a0,a0,940 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003f3c:	00002097          	auipc	ra,0x2
    80003f40:	a74080e7          	jalr	-1420(ra) # 800059b0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003f44:	0014849b          	addiw	s1,s1,1
    80003f48:	0ff4f493          	andi	s1,s1,255
    80003f4c:	00200793          	li	a5,2
    80003f50:	fc97f0e3          	bgeu	a5,s1,80003f10 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003f54:	00005517          	auipc	a0,0x5
    80003f58:	6c450513          	addi	a0,a0,1732 # 80009618 <CONSOLE_STATUS+0x608>
    80003f5c:	00002097          	auipc	ra,0x2
    80003f60:	a54080e7          	jalr	-1452(ra) # 800059b0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003f64:	00700313          	li	t1,7
    thread_dispatch();
    80003f68:	ffffd097          	auipc	ra,0xffffd
    80003f6c:	420080e7          	jalr	1056(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003f70:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003f74:	00005517          	auipc	a0,0x5
    80003f78:	6b450513          	addi	a0,a0,1716 # 80009628 <CONSOLE_STATUS+0x618>
    80003f7c:	00002097          	auipc	ra,0x2
    80003f80:	a34080e7          	jalr	-1484(ra) # 800059b0 <_Z11printStringPKc>
    80003f84:	00000613          	li	a2,0
    80003f88:	00a00593          	li	a1,10
    80003f8c:	0009051b          	sext.w	a0,s2
    80003f90:	00002097          	auipc	ra,0x2
    80003f94:	bd0080e7          	jalr	-1072(ra) # 80005b60 <_Z8printIntiii>
    80003f98:	00005517          	auipc	a0,0x5
    80003f9c:	34850513          	addi	a0,a0,840 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003fa0:	00002097          	auipc	ra,0x2
    80003fa4:	a10080e7          	jalr	-1520(ra) # 800059b0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003fa8:	00c00513          	li	a0,12
    80003fac:	00000097          	auipc	ra,0x0
    80003fb0:	d30080e7          	jalr	-720(ra) # 80003cdc <_ZL9fibonaccim>
    80003fb4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003fb8:	00005517          	auipc	a0,0x5
    80003fbc:	67850513          	addi	a0,a0,1656 # 80009630 <CONSOLE_STATUS+0x620>
    80003fc0:	00002097          	auipc	ra,0x2
    80003fc4:	9f0080e7          	jalr	-1552(ra) # 800059b0 <_Z11printStringPKc>
    80003fc8:	00000613          	li	a2,0
    80003fcc:	00a00593          	li	a1,10
    80003fd0:	0009051b          	sext.w	a0,s2
    80003fd4:	00002097          	auipc	ra,0x2
    80003fd8:	b8c080e7          	jalr	-1140(ra) # 80005b60 <_Z8printIntiii>
    80003fdc:	00005517          	auipc	a0,0x5
    80003fe0:	30450513          	addi	a0,a0,772 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003fe4:	00002097          	auipc	ra,0x2
    80003fe8:	9cc080e7          	jalr	-1588(ra) # 800059b0 <_Z11printStringPKc>
    80003fec:	0400006f          	j	8000402c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003ff0:	00005517          	auipc	a0,0x5
    80003ff4:	43050513          	addi	a0,a0,1072 # 80009420 <CONSOLE_STATUS+0x410>
    80003ff8:	00002097          	auipc	ra,0x2
    80003ffc:	9b8080e7          	jalr	-1608(ra) # 800059b0 <_Z11printStringPKc>
    80004000:	00000613          	li	a2,0
    80004004:	00a00593          	li	a1,10
    80004008:	00048513          	mv	a0,s1
    8000400c:	00002097          	auipc	ra,0x2
    80004010:	b54080e7          	jalr	-1196(ra) # 80005b60 <_Z8printIntiii>
    80004014:	00005517          	auipc	a0,0x5
    80004018:	2cc50513          	addi	a0,a0,716 # 800092e0 <CONSOLE_STATUS+0x2d0>
    8000401c:	00002097          	auipc	ra,0x2
    80004020:	994080e7          	jalr	-1644(ra) # 800059b0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004024:	0014849b          	addiw	s1,s1,1
    80004028:	0ff4f493          	andi	s1,s1,255
    8000402c:	00500793          	li	a5,5
    80004030:	fc97f0e3          	bgeu	a5,s1,80003ff0 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80004034:	00005517          	auipc	a0,0x5
    80004038:	5c450513          	addi	a0,a0,1476 # 800095f8 <CONSOLE_STATUS+0x5e8>
    8000403c:	00002097          	auipc	ra,0x2
    80004040:	974080e7          	jalr	-1676(ra) # 800059b0 <_Z11printStringPKc>
    finishedC = true;
    80004044:	00100793          	li	a5,1
    80004048:	00008717          	auipc	a4,0x8
    8000404c:	c8f70923          	sb	a5,-878(a4) # 8000bcda <_ZL9finishedC>
    thread_dispatch();
    80004050:	ffffd097          	auipc	ra,0xffffd
    80004054:	338080e7          	jalr	824(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004058:	01813083          	ld	ra,24(sp)
    8000405c:	01013403          	ld	s0,16(sp)
    80004060:	00813483          	ld	s1,8(sp)
    80004064:	00013903          	ld	s2,0(sp)
    80004068:	02010113          	addi	sp,sp,32
    8000406c:	00008067          	ret

0000000080004070 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004070:	fe010113          	addi	sp,sp,-32
    80004074:	00113c23          	sd	ra,24(sp)
    80004078:	00813823          	sd	s0,16(sp)
    8000407c:	00913423          	sd	s1,8(sp)
    80004080:	01213023          	sd	s2,0(sp)
    80004084:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004088:	00a00493          	li	s1,10
    8000408c:	0400006f          	j	800040cc <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004090:	00005517          	auipc	a0,0x5
    80004094:	3c850513          	addi	a0,a0,968 # 80009458 <CONSOLE_STATUS+0x448>
    80004098:	00002097          	auipc	ra,0x2
    8000409c:	918080e7          	jalr	-1768(ra) # 800059b0 <_Z11printStringPKc>
    800040a0:	00000613          	li	a2,0
    800040a4:	00a00593          	li	a1,10
    800040a8:	00048513          	mv	a0,s1
    800040ac:	00002097          	auipc	ra,0x2
    800040b0:	ab4080e7          	jalr	-1356(ra) # 80005b60 <_Z8printIntiii>
    800040b4:	00005517          	auipc	a0,0x5
    800040b8:	22c50513          	addi	a0,a0,556 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800040bc:	00002097          	auipc	ra,0x2
    800040c0:	8f4080e7          	jalr	-1804(ra) # 800059b0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800040c4:	0014849b          	addiw	s1,s1,1
    800040c8:	0ff4f493          	andi	s1,s1,255
    800040cc:	00c00793          	li	a5,12
    800040d0:	fc97f0e3          	bgeu	a5,s1,80004090 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800040d4:	00005517          	auipc	a0,0x5
    800040d8:	56c50513          	addi	a0,a0,1388 # 80009640 <CONSOLE_STATUS+0x630>
    800040dc:	00002097          	auipc	ra,0x2
    800040e0:	8d4080e7          	jalr	-1836(ra) # 800059b0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800040e4:	00500313          	li	t1,5
    thread_dispatch();
    800040e8:	ffffd097          	auipc	ra,0xffffd
    800040ec:	2a0080e7          	jalr	672(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800040f0:	01000513          	li	a0,16
    800040f4:	00000097          	auipc	ra,0x0
    800040f8:	be8080e7          	jalr	-1048(ra) # 80003cdc <_ZL9fibonaccim>
    800040fc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004100:	00005517          	auipc	a0,0x5
    80004104:	55050513          	addi	a0,a0,1360 # 80009650 <CONSOLE_STATUS+0x640>
    80004108:	00002097          	auipc	ra,0x2
    8000410c:	8a8080e7          	jalr	-1880(ra) # 800059b0 <_Z11printStringPKc>
    80004110:	00000613          	li	a2,0
    80004114:	00a00593          	li	a1,10
    80004118:	0009051b          	sext.w	a0,s2
    8000411c:	00002097          	auipc	ra,0x2
    80004120:	a44080e7          	jalr	-1468(ra) # 80005b60 <_Z8printIntiii>
    80004124:	00005517          	auipc	a0,0x5
    80004128:	1bc50513          	addi	a0,a0,444 # 800092e0 <CONSOLE_STATUS+0x2d0>
    8000412c:	00002097          	auipc	ra,0x2
    80004130:	884080e7          	jalr	-1916(ra) # 800059b0 <_Z11printStringPKc>
    80004134:	0400006f          	j	80004174 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004138:	00005517          	auipc	a0,0x5
    8000413c:	32050513          	addi	a0,a0,800 # 80009458 <CONSOLE_STATUS+0x448>
    80004140:	00002097          	auipc	ra,0x2
    80004144:	870080e7          	jalr	-1936(ra) # 800059b0 <_Z11printStringPKc>
    80004148:	00000613          	li	a2,0
    8000414c:	00a00593          	li	a1,10
    80004150:	00048513          	mv	a0,s1
    80004154:	00002097          	auipc	ra,0x2
    80004158:	a0c080e7          	jalr	-1524(ra) # 80005b60 <_Z8printIntiii>
    8000415c:	00005517          	auipc	a0,0x5
    80004160:	18450513          	addi	a0,a0,388 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004164:	00002097          	auipc	ra,0x2
    80004168:	84c080e7          	jalr	-1972(ra) # 800059b0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000416c:	0014849b          	addiw	s1,s1,1
    80004170:	0ff4f493          	andi	s1,s1,255
    80004174:	00f00793          	li	a5,15
    80004178:	fc97f0e3          	bgeu	a5,s1,80004138 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000417c:	00005517          	auipc	a0,0x5
    80004180:	4e450513          	addi	a0,a0,1252 # 80009660 <CONSOLE_STATUS+0x650>
    80004184:	00002097          	auipc	ra,0x2
    80004188:	82c080e7          	jalr	-2004(ra) # 800059b0 <_Z11printStringPKc>
    finishedD = true;
    8000418c:	00100793          	li	a5,1
    80004190:	00008717          	auipc	a4,0x8
    80004194:	b4f705a3          	sb	a5,-1205(a4) # 8000bcdb <_ZL9finishedD>
    thread_dispatch();
    80004198:	ffffd097          	auipc	ra,0xffffd
    8000419c:	1f0080e7          	jalr	496(ra) # 80001388 <_Z15thread_dispatchv>
}
    800041a0:	01813083          	ld	ra,24(sp)
    800041a4:	01013403          	ld	s0,16(sp)
    800041a8:	00813483          	ld	s1,8(sp)
    800041ac:	00013903          	ld	s2,0(sp)
    800041b0:	02010113          	addi	sp,sp,32
    800041b4:	00008067          	ret

00000000800041b8 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800041b8:	fc010113          	addi	sp,sp,-64
    800041bc:	02113c23          	sd	ra,56(sp)
    800041c0:	02813823          	sd	s0,48(sp)
    800041c4:	02913423          	sd	s1,40(sp)
    800041c8:	03213023          	sd	s2,32(sp)
    800041cc:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800041d0:	02000513          	li	a0,32
    800041d4:	ffffe097          	auipc	ra,0xffffe
    800041d8:	48c080e7          	jalr	1164(ra) # 80002660 <_Znwm>
    800041dc:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800041e0:	ffffe097          	auipc	ra,0xffffe
    800041e4:	758080e7          	jalr	1880(ra) # 80002938 <_ZN6ThreadC1Ev>
    800041e8:	00008797          	auipc	a5,0x8
    800041ec:	86878793          	addi	a5,a5,-1944 # 8000ba50 <_ZTV7WorkerA+0x10>
    800041f0:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800041f4:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800041f8:	00005517          	auipc	a0,0x5
    800041fc:	47850513          	addi	a0,a0,1144 # 80009670 <CONSOLE_STATUS+0x660>
    80004200:	00001097          	auipc	ra,0x1
    80004204:	7b0080e7          	jalr	1968(ra) # 800059b0 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004208:	02000513          	li	a0,32
    8000420c:	ffffe097          	auipc	ra,0xffffe
    80004210:	454080e7          	jalr	1108(ra) # 80002660 <_Znwm>
    80004214:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004218:	ffffe097          	auipc	ra,0xffffe
    8000421c:	720080e7          	jalr	1824(ra) # 80002938 <_ZN6ThreadC1Ev>
    80004220:	00008797          	auipc	a5,0x8
    80004224:	85878793          	addi	a5,a5,-1960 # 8000ba78 <_ZTV7WorkerB+0x10>
    80004228:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8000422c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004230:	00005517          	auipc	a0,0x5
    80004234:	45850513          	addi	a0,a0,1112 # 80009688 <CONSOLE_STATUS+0x678>
    80004238:	00001097          	auipc	ra,0x1
    8000423c:	778080e7          	jalr	1912(ra) # 800059b0 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004240:	02000513          	li	a0,32
    80004244:	ffffe097          	auipc	ra,0xffffe
    80004248:	41c080e7          	jalr	1052(ra) # 80002660 <_Znwm>
    8000424c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80004250:	ffffe097          	auipc	ra,0xffffe
    80004254:	6e8080e7          	jalr	1768(ra) # 80002938 <_ZN6ThreadC1Ev>
    80004258:	00008797          	auipc	a5,0x8
    8000425c:	84878793          	addi	a5,a5,-1976 # 8000baa0 <_ZTV7WorkerC+0x10>
    80004260:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004264:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004268:	00005517          	auipc	a0,0x5
    8000426c:	43850513          	addi	a0,a0,1080 # 800096a0 <CONSOLE_STATUS+0x690>
    80004270:	00001097          	auipc	ra,0x1
    80004274:	740080e7          	jalr	1856(ra) # 800059b0 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004278:	02000513          	li	a0,32
    8000427c:	ffffe097          	auipc	ra,0xffffe
    80004280:	3e4080e7          	jalr	996(ra) # 80002660 <_Znwm>
    80004284:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004288:	ffffe097          	auipc	ra,0xffffe
    8000428c:	6b0080e7          	jalr	1712(ra) # 80002938 <_ZN6ThreadC1Ev>
    80004290:	00008797          	auipc	a5,0x8
    80004294:	83878793          	addi	a5,a5,-1992 # 8000bac8 <_ZTV7WorkerD+0x10>
    80004298:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000429c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800042a0:	00005517          	auipc	a0,0x5
    800042a4:	41850513          	addi	a0,a0,1048 # 800096b8 <CONSOLE_STATUS+0x6a8>
    800042a8:	00001097          	auipc	ra,0x1
    800042ac:	708080e7          	jalr	1800(ra) # 800059b0 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800042b0:	00000493          	li	s1,0
    800042b4:	00300793          	li	a5,3
    800042b8:	0297c663          	blt	a5,s1,800042e4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800042bc:	00349793          	slli	a5,s1,0x3
    800042c0:	fe040713          	addi	a4,s0,-32
    800042c4:	00f707b3          	add	a5,a4,a5
    800042c8:	fe07b503          	ld	a0,-32(a5)
    800042cc:	ffffe097          	auipc	ra,0xffffe
    800042d0:	69c080e7          	jalr	1692(ra) # 80002968 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800042d4:	0014849b          	addiw	s1,s1,1
    800042d8:	fddff06f          	j	800042b4 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800042dc:	ffffe097          	auipc	ra,0xffffe
    800042e0:	6e0080e7          	jalr	1760(ra) # 800029bc <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800042e4:	00008797          	auipc	a5,0x8
    800042e8:	9f47c783          	lbu	a5,-1548(a5) # 8000bcd8 <_ZL9finishedA>
    800042ec:	fe0788e3          	beqz	a5,800042dc <_Z20Threads_CPP_API_testv+0x124>
    800042f0:	00008797          	auipc	a5,0x8
    800042f4:	9e97c783          	lbu	a5,-1559(a5) # 8000bcd9 <_ZL9finishedB>
    800042f8:	fe0782e3          	beqz	a5,800042dc <_Z20Threads_CPP_API_testv+0x124>
    800042fc:	00008797          	auipc	a5,0x8
    80004300:	9de7c783          	lbu	a5,-1570(a5) # 8000bcda <_ZL9finishedC>
    80004304:	fc078ce3          	beqz	a5,800042dc <_Z20Threads_CPP_API_testv+0x124>
    80004308:	00008797          	auipc	a5,0x8
    8000430c:	9d37c783          	lbu	a5,-1581(a5) # 8000bcdb <_ZL9finishedD>
    80004310:	fc0786e3          	beqz	a5,800042dc <_Z20Threads_CPP_API_testv+0x124>
    80004314:	fc040493          	addi	s1,s0,-64
    80004318:	0080006f          	j	80004320 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    8000431c:	00848493          	addi	s1,s1,8
    80004320:	fe040793          	addi	a5,s0,-32
    80004324:	08f48663          	beq	s1,a5,800043b0 <_Z20Threads_CPP_API_testv+0x1f8>
    80004328:	0004b503          	ld	a0,0(s1)
    8000432c:	fe0508e3          	beqz	a0,8000431c <_Z20Threads_CPP_API_testv+0x164>
    80004330:	00053783          	ld	a5,0(a0)
    80004334:	0087b783          	ld	a5,8(a5)
    80004338:	000780e7          	jalr	a5
    8000433c:	fe1ff06f          	j	8000431c <_Z20Threads_CPP_API_testv+0x164>
    80004340:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004344:	00048513          	mv	a0,s1
    80004348:	ffffe097          	auipc	ra,0xffffe
    8000434c:	368080e7          	jalr	872(ra) # 800026b0 <_ZdlPv>
    80004350:	00090513          	mv	a0,s2
    80004354:	00009097          	auipc	ra,0x9
    80004358:	a94080e7          	jalr	-1388(ra) # 8000cde8 <_Unwind_Resume>
    8000435c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004360:	00048513          	mv	a0,s1
    80004364:	ffffe097          	auipc	ra,0xffffe
    80004368:	34c080e7          	jalr	844(ra) # 800026b0 <_ZdlPv>
    8000436c:	00090513          	mv	a0,s2
    80004370:	00009097          	auipc	ra,0x9
    80004374:	a78080e7          	jalr	-1416(ra) # 8000cde8 <_Unwind_Resume>
    80004378:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000437c:	00048513          	mv	a0,s1
    80004380:	ffffe097          	auipc	ra,0xffffe
    80004384:	330080e7          	jalr	816(ra) # 800026b0 <_ZdlPv>
    80004388:	00090513          	mv	a0,s2
    8000438c:	00009097          	auipc	ra,0x9
    80004390:	a5c080e7          	jalr	-1444(ra) # 8000cde8 <_Unwind_Resume>
    80004394:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004398:	00048513          	mv	a0,s1
    8000439c:	ffffe097          	auipc	ra,0xffffe
    800043a0:	314080e7          	jalr	788(ra) # 800026b0 <_ZdlPv>
    800043a4:	00090513          	mv	a0,s2
    800043a8:	00009097          	auipc	ra,0x9
    800043ac:	a40080e7          	jalr	-1472(ra) # 8000cde8 <_Unwind_Resume>
}
    800043b0:	03813083          	ld	ra,56(sp)
    800043b4:	03013403          	ld	s0,48(sp)
    800043b8:	02813483          	ld	s1,40(sp)
    800043bc:	02013903          	ld	s2,32(sp)
    800043c0:	04010113          	addi	sp,sp,64
    800043c4:	00008067          	ret

00000000800043c8 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800043c8:	f8010113          	addi	sp,sp,-128
    800043cc:	06113c23          	sd	ra,120(sp)
    800043d0:	06813823          	sd	s0,112(sp)
    800043d4:	06913423          	sd	s1,104(sp)
    800043d8:	07213023          	sd	s2,96(sp)
    800043dc:	05313c23          	sd	s3,88(sp)
    800043e0:	05413823          	sd	s4,80(sp)
    800043e4:	05513423          	sd	s5,72(sp)
    800043e8:	05613023          	sd	s6,64(sp)
    800043ec:	03713c23          	sd	s7,56(sp)
    800043f0:	03813823          	sd	s8,48(sp)
    800043f4:	03913423          	sd	s9,40(sp)
    800043f8:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800043fc:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004400:	00005517          	auipc	a0,0x5
    80004404:	11050513          	addi	a0,a0,272 # 80009510 <CONSOLE_STATUS+0x500>
    80004408:	00001097          	auipc	ra,0x1
    8000440c:	5a8080e7          	jalr	1448(ra) # 800059b0 <_Z11printStringPKc>
    getString(input, 30);
    80004410:	01e00593          	li	a1,30
    80004414:	f8040493          	addi	s1,s0,-128
    80004418:	00048513          	mv	a0,s1
    8000441c:	00001097          	auipc	ra,0x1
    80004420:	61c080e7          	jalr	1564(ra) # 80005a38 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004424:	00048513          	mv	a0,s1
    80004428:	00001097          	auipc	ra,0x1
    8000442c:	6e8080e7          	jalr	1768(ra) # 80005b10 <_Z11stringToIntPKc>
    80004430:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004434:	00005517          	auipc	a0,0x5
    80004438:	0fc50513          	addi	a0,a0,252 # 80009530 <CONSOLE_STATUS+0x520>
    8000443c:	00001097          	auipc	ra,0x1
    80004440:	574080e7          	jalr	1396(ra) # 800059b0 <_Z11printStringPKc>
    getString(input, 30);
    80004444:	01e00593          	li	a1,30
    80004448:	00048513          	mv	a0,s1
    8000444c:	00001097          	auipc	ra,0x1
    80004450:	5ec080e7          	jalr	1516(ra) # 80005a38 <_Z9getStringPci>
    n = stringToInt(input);
    80004454:	00048513          	mv	a0,s1
    80004458:	00001097          	auipc	ra,0x1
    8000445c:	6b8080e7          	jalr	1720(ra) # 80005b10 <_Z11stringToIntPKc>
    80004460:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004464:	00005517          	auipc	a0,0x5
    80004468:	0ec50513          	addi	a0,a0,236 # 80009550 <CONSOLE_STATUS+0x540>
    8000446c:	00001097          	auipc	ra,0x1
    80004470:	544080e7          	jalr	1348(ra) # 800059b0 <_Z11printStringPKc>
    printInt(threadNum);
    80004474:	00000613          	li	a2,0
    80004478:	00a00593          	li	a1,10
    8000447c:	00098513          	mv	a0,s3
    80004480:	00001097          	auipc	ra,0x1
    80004484:	6e0080e7          	jalr	1760(ra) # 80005b60 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004488:	00005517          	auipc	a0,0x5
    8000448c:	0e050513          	addi	a0,a0,224 # 80009568 <CONSOLE_STATUS+0x558>
    80004490:	00001097          	auipc	ra,0x1
    80004494:	520080e7          	jalr	1312(ra) # 800059b0 <_Z11printStringPKc>
    printInt(n);
    80004498:	00000613          	li	a2,0
    8000449c:	00a00593          	li	a1,10
    800044a0:	00048513          	mv	a0,s1
    800044a4:	00001097          	auipc	ra,0x1
    800044a8:	6bc080e7          	jalr	1724(ra) # 80005b60 <_Z8printIntiii>
    printString(".\n");
    800044ac:	00005517          	auipc	a0,0x5
    800044b0:	0d450513          	addi	a0,a0,212 # 80009580 <CONSOLE_STATUS+0x570>
    800044b4:	00001097          	auipc	ra,0x1
    800044b8:	4fc080e7          	jalr	1276(ra) # 800059b0 <_Z11printStringPKc>
    if (threadNum > n) {
    800044bc:	0334c463          	blt	s1,s3,800044e4 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800044c0:	03305c63          	blez	s3,800044f8 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800044c4:	03800513          	li	a0,56
    800044c8:	ffffe097          	auipc	ra,0xffffe
    800044cc:	198080e7          	jalr	408(ra) # 80002660 <_Znwm>
    800044d0:	00050a93          	mv	s5,a0
    800044d4:	00048593          	mv	a1,s1
    800044d8:	00001097          	auipc	ra,0x1
    800044dc:	7a8080e7          	jalr	1960(ra) # 80005c80 <_ZN9BufferCPPC1Ei>
    800044e0:	0300006f          	j	80004510 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800044e4:	00005517          	auipc	a0,0x5
    800044e8:	0a450513          	addi	a0,a0,164 # 80009588 <CONSOLE_STATUS+0x578>
    800044ec:	00001097          	auipc	ra,0x1
    800044f0:	4c4080e7          	jalr	1220(ra) # 800059b0 <_Z11printStringPKc>
        return;
    800044f4:	0140006f          	j	80004508 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800044f8:	00005517          	auipc	a0,0x5
    800044fc:	0d050513          	addi	a0,a0,208 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80004500:	00001097          	auipc	ra,0x1
    80004504:	4b0080e7          	jalr	1200(ra) # 800059b0 <_Z11printStringPKc>
        return;
    80004508:	000c0113          	mv	sp,s8
    8000450c:	2140006f          	j	80004720 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004510:	01000513          	li	a0,16
    80004514:	ffffe097          	auipc	ra,0xffffe
    80004518:	14c080e7          	jalr	332(ra) # 80002660 <_Znwm>
    8000451c:	00050913          	mv	s2,a0
    80004520:	00000593          	li	a1,0
    80004524:	ffffe097          	auipc	ra,0xffffe
    80004528:	4e8080e7          	jalr	1256(ra) # 80002a0c <_ZN9SemaphoreC1Ej>
    8000452c:	00007797          	auipc	a5,0x7
    80004530:	7b27be23          	sd	s2,1980(a5) # 8000bce8 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004534:	00399793          	slli	a5,s3,0x3
    80004538:	00f78793          	addi	a5,a5,15
    8000453c:	ff07f793          	andi	a5,a5,-16
    80004540:	40f10133          	sub	sp,sp,a5
    80004544:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004548:	0019871b          	addiw	a4,s3,1
    8000454c:	00171793          	slli	a5,a4,0x1
    80004550:	00e787b3          	add	a5,a5,a4
    80004554:	00379793          	slli	a5,a5,0x3
    80004558:	00f78793          	addi	a5,a5,15
    8000455c:	ff07f793          	andi	a5,a5,-16
    80004560:	40f10133          	sub	sp,sp,a5
    80004564:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004568:	00199493          	slli	s1,s3,0x1
    8000456c:	013484b3          	add	s1,s1,s3
    80004570:	00349493          	slli	s1,s1,0x3
    80004574:	009b04b3          	add	s1,s6,s1
    80004578:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    8000457c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004580:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004584:	02800513          	li	a0,40
    80004588:	ffffe097          	auipc	ra,0xffffe
    8000458c:	0d8080e7          	jalr	216(ra) # 80002660 <_Znwm>
    80004590:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004594:	ffffe097          	auipc	ra,0xffffe
    80004598:	3a4080e7          	jalr	932(ra) # 80002938 <_ZN6ThreadC1Ev>
    8000459c:	00007797          	auipc	a5,0x7
    800045a0:	5a478793          	addi	a5,a5,1444 # 8000bb40 <_ZTV8Consumer+0x10>
    800045a4:	00fbb023          	sd	a5,0(s7)
    800045a8:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800045ac:	000b8513          	mv	a0,s7
    800045b0:	ffffe097          	auipc	ra,0xffffe
    800045b4:	3b8080e7          	jalr	952(ra) # 80002968 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800045b8:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800045bc:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800045c0:	00007797          	auipc	a5,0x7
    800045c4:	7287b783          	ld	a5,1832(a5) # 8000bce8 <_ZL10waitForAll>
    800045c8:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800045cc:	02800513          	li	a0,40
    800045d0:	ffffe097          	auipc	ra,0xffffe
    800045d4:	090080e7          	jalr	144(ra) # 80002660 <_Znwm>
    800045d8:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800045dc:	ffffe097          	auipc	ra,0xffffe
    800045e0:	35c080e7          	jalr	860(ra) # 80002938 <_ZN6ThreadC1Ev>
    800045e4:	00007797          	auipc	a5,0x7
    800045e8:	50c78793          	addi	a5,a5,1292 # 8000baf0 <_ZTV16ProducerKeyborad+0x10>
    800045ec:	00f4b023          	sd	a5,0(s1)
    800045f0:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800045f4:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800045f8:	00048513          	mv	a0,s1
    800045fc:	ffffe097          	auipc	ra,0xffffe
    80004600:	36c080e7          	jalr	876(ra) # 80002968 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004604:	00100913          	li	s2,1
    80004608:	0300006f          	j	80004638 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000460c:	00007797          	auipc	a5,0x7
    80004610:	50c78793          	addi	a5,a5,1292 # 8000bb18 <_ZTV8Producer+0x10>
    80004614:	00fcb023          	sd	a5,0(s9)
    80004618:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    8000461c:	00391793          	slli	a5,s2,0x3
    80004620:	00fa07b3          	add	a5,s4,a5
    80004624:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004628:	000c8513          	mv	a0,s9
    8000462c:	ffffe097          	auipc	ra,0xffffe
    80004630:	33c080e7          	jalr	828(ra) # 80002968 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004634:	0019091b          	addiw	s2,s2,1
    80004638:	05395263          	bge	s2,s3,8000467c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    8000463c:	00191493          	slli	s1,s2,0x1
    80004640:	012484b3          	add	s1,s1,s2
    80004644:	00349493          	slli	s1,s1,0x3
    80004648:	009b04b3          	add	s1,s6,s1
    8000464c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004650:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004654:	00007797          	auipc	a5,0x7
    80004658:	6947b783          	ld	a5,1684(a5) # 8000bce8 <_ZL10waitForAll>
    8000465c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004660:	02800513          	li	a0,40
    80004664:	ffffe097          	auipc	ra,0xffffe
    80004668:	ffc080e7          	jalr	-4(ra) # 80002660 <_Znwm>
    8000466c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004670:	ffffe097          	auipc	ra,0xffffe
    80004674:	2c8080e7          	jalr	712(ra) # 80002938 <_ZN6ThreadC1Ev>
    80004678:	f95ff06f          	j	8000460c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    8000467c:	ffffe097          	auipc	ra,0xffffe
    80004680:	340080e7          	jalr	832(ra) # 800029bc <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004684:	00000493          	li	s1,0
    80004688:	0099ce63          	blt	s3,s1,800046a4 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    8000468c:	00007517          	auipc	a0,0x7
    80004690:	65c53503          	ld	a0,1628(a0) # 8000bce8 <_ZL10waitForAll>
    80004694:	ffffe097          	auipc	ra,0xffffe
    80004698:	3b4080e7          	jalr	948(ra) # 80002a48 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000469c:	0014849b          	addiw	s1,s1,1
    800046a0:	fe9ff06f          	j	80004688 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800046a4:	00007517          	auipc	a0,0x7
    800046a8:	64453503          	ld	a0,1604(a0) # 8000bce8 <_ZL10waitForAll>
    800046ac:	00050863          	beqz	a0,800046bc <_Z20testConsumerProducerv+0x2f4>
    800046b0:	00053783          	ld	a5,0(a0)
    800046b4:	0087b783          	ld	a5,8(a5)
    800046b8:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800046bc:	00000493          	li	s1,0
    800046c0:	0080006f          	j	800046c8 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800046c4:	0014849b          	addiw	s1,s1,1
    800046c8:	0334d263          	bge	s1,s3,800046ec <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800046cc:	00349793          	slli	a5,s1,0x3
    800046d0:	00fa07b3          	add	a5,s4,a5
    800046d4:	0007b503          	ld	a0,0(a5)
    800046d8:	fe0506e3          	beqz	a0,800046c4 <_Z20testConsumerProducerv+0x2fc>
    800046dc:	00053783          	ld	a5,0(a0)
    800046e0:	0087b783          	ld	a5,8(a5)
    800046e4:	000780e7          	jalr	a5
    800046e8:	fddff06f          	j	800046c4 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800046ec:	000b8a63          	beqz	s7,80004700 <_Z20testConsumerProducerv+0x338>
    800046f0:	000bb783          	ld	a5,0(s7)
    800046f4:	0087b783          	ld	a5,8(a5)
    800046f8:	000b8513          	mv	a0,s7
    800046fc:	000780e7          	jalr	a5
    delete buffer;
    80004700:	000a8e63          	beqz	s5,8000471c <_Z20testConsumerProducerv+0x354>
    80004704:	000a8513          	mv	a0,s5
    80004708:	00002097          	auipc	ra,0x2
    8000470c:	870080e7          	jalr	-1936(ra) # 80005f78 <_ZN9BufferCPPD1Ev>
    80004710:	000a8513          	mv	a0,s5
    80004714:	ffffe097          	auipc	ra,0xffffe
    80004718:	f9c080e7          	jalr	-100(ra) # 800026b0 <_ZdlPv>
    8000471c:	000c0113          	mv	sp,s8
}
    80004720:	f8040113          	addi	sp,s0,-128
    80004724:	07813083          	ld	ra,120(sp)
    80004728:	07013403          	ld	s0,112(sp)
    8000472c:	06813483          	ld	s1,104(sp)
    80004730:	06013903          	ld	s2,96(sp)
    80004734:	05813983          	ld	s3,88(sp)
    80004738:	05013a03          	ld	s4,80(sp)
    8000473c:	04813a83          	ld	s5,72(sp)
    80004740:	04013b03          	ld	s6,64(sp)
    80004744:	03813b83          	ld	s7,56(sp)
    80004748:	03013c03          	ld	s8,48(sp)
    8000474c:	02813c83          	ld	s9,40(sp)
    80004750:	08010113          	addi	sp,sp,128
    80004754:	00008067          	ret
    80004758:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000475c:	000a8513          	mv	a0,s5
    80004760:	ffffe097          	auipc	ra,0xffffe
    80004764:	f50080e7          	jalr	-176(ra) # 800026b0 <_ZdlPv>
    80004768:	00048513          	mv	a0,s1
    8000476c:	00008097          	auipc	ra,0x8
    80004770:	67c080e7          	jalr	1660(ra) # 8000cde8 <_Unwind_Resume>
    80004774:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004778:	00090513          	mv	a0,s2
    8000477c:	ffffe097          	auipc	ra,0xffffe
    80004780:	f34080e7          	jalr	-204(ra) # 800026b0 <_ZdlPv>
    80004784:	00048513          	mv	a0,s1
    80004788:	00008097          	auipc	ra,0x8
    8000478c:	660080e7          	jalr	1632(ra) # 8000cde8 <_Unwind_Resume>
    80004790:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004794:	000b8513          	mv	a0,s7
    80004798:	ffffe097          	auipc	ra,0xffffe
    8000479c:	f18080e7          	jalr	-232(ra) # 800026b0 <_ZdlPv>
    800047a0:	00048513          	mv	a0,s1
    800047a4:	00008097          	auipc	ra,0x8
    800047a8:	644080e7          	jalr	1604(ra) # 8000cde8 <_Unwind_Resume>
    800047ac:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800047b0:	00048513          	mv	a0,s1
    800047b4:	ffffe097          	auipc	ra,0xffffe
    800047b8:	efc080e7          	jalr	-260(ra) # 800026b0 <_ZdlPv>
    800047bc:	00090513          	mv	a0,s2
    800047c0:	00008097          	auipc	ra,0x8
    800047c4:	628080e7          	jalr	1576(ra) # 8000cde8 <_Unwind_Resume>
    800047c8:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800047cc:	000c8513          	mv	a0,s9
    800047d0:	ffffe097          	auipc	ra,0xffffe
    800047d4:	ee0080e7          	jalr	-288(ra) # 800026b0 <_ZdlPv>
    800047d8:	00048513          	mv	a0,s1
    800047dc:	00008097          	auipc	ra,0x8
    800047e0:	60c080e7          	jalr	1548(ra) # 8000cde8 <_Unwind_Resume>

00000000800047e4 <_ZN8Consumer3runEv>:
    void run() override {
    800047e4:	fd010113          	addi	sp,sp,-48
    800047e8:	02113423          	sd	ra,40(sp)
    800047ec:	02813023          	sd	s0,32(sp)
    800047f0:	00913c23          	sd	s1,24(sp)
    800047f4:	01213823          	sd	s2,16(sp)
    800047f8:	01313423          	sd	s3,8(sp)
    800047fc:	03010413          	addi	s0,sp,48
    80004800:	00050913          	mv	s2,a0
        int i = 0;
    80004804:	00000993          	li	s3,0
    80004808:	0100006f          	j	80004818 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000480c:	00a00513          	li	a0,10
    80004810:	ffffe097          	auipc	ra,0xffffe
    80004814:	320080e7          	jalr	800(ra) # 80002b30 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004818:	00007797          	auipc	a5,0x7
    8000481c:	4c87a783          	lw	a5,1224(a5) # 8000bce0 <_ZL9threadEnd>
    80004820:	04079a63          	bnez	a5,80004874 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004824:	02093783          	ld	a5,32(s2)
    80004828:	0087b503          	ld	a0,8(a5)
    8000482c:	00001097          	auipc	ra,0x1
    80004830:	638080e7          	jalr	1592(ra) # 80005e64 <_ZN9BufferCPP3getEv>
            i++;
    80004834:	0019849b          	addiw	s1,s3,1
    80004838:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    8000483c:	0ff57513          	andi	a0,a0,255
    80004840:	ffffe097          	auipc	ra,0xffffe
    80004844:	2f0080e7          	jalr	752(ra) # 80002b30 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004848:	05000793          	li	a5,80
    8000484c:	02f4e4bb          	remw	s1,s1,a5
    80004850:	fc0494e3          	bnez	s1,80004818 <_ZN8Consumer3runEv+0x34>
    80004854:	fb9ff06f          	j	8000480c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004858:	02093783          	ld	a5,32(s2)
    8000485c:	0087b503          	ld	a0,8(a5)
    80004860:	00001097          	auipc	ra,0x1
    80004864:	604080e7          	jalr	1540(ra) # 80005e64 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004868:	0ff57513          	andi	a0,a0,255
    8000486c:	ffffe097          	auipc	ra,0xffffe
    80004870:	2c4080e7          	jalr	708(ra) # 80002b30 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004874:	02093783          	ld	a5,32(s2)
    80004878:	0087b503          	ld	a0,8(a5)
    8000487c:	00001097          	auipc	ra,0x1
    80004880:	674080e7          	jalr	1652(ra) # 80005ef0 <_ZN9BufferCPP6getCntEv>
    80004884:	fca04ae3          	bgtz	a0,80004858 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004888:	02093783          	ld	a5,32(s2)
    8000488c:	0107b503          	ld	a0,16(a5)
    80004890:	ffffe097          	auipc	ra,0xffffe
    80004894:	1e4080e7          	jalr	484(ra) # 80002a74 <_ZN9Semaphore6signalEv>
    }
    80004898:	02813083          	ld	ra,40(sp)
    8000489c:	02013403          	ld	s0,32(sp)
    800048a0:	01813483          	ld	s1,24(sp)
    800048a4:	01013903          	ld	s2,16(sp)
    800048a8:	00813983          	ld	s3,8(sp)
    800048ac:	03010113          	addi	sp,sp,48
    800048b0:	00008067          	ret

00000000800048b4 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800048b4:	ff010113          	addi	sp,sp,-16
    800048b8:	00113423          	sd	ra,8(sp)
    800048bc:	00813023          	sd	s0,0(sp)
    800048c0:	01010413          	addi	s0,sp,16
    800048c4:	00007797          	auipc	a5,0x7
    800048c8:	27c78793          	addi	a5,a5,636 # 8000bb40 <_ZTV8Consumer+0x10>
    800048cc:	00f53023          	sd	a5,0(a0)
    800048d0:	ffffe097          	auipc	ra,0xffffe
    800048d4:	f44080e7          	jalr	-188(ra) # 80002814 <_ZN6ThreadD1Ev>
    800048d8:	00813083          	ld	ra,8(sp)
    800048dc:	00013403          	ld	s0,0(sp)
    800048e0:	01010113          	addi	sp,sp,16
    800048e4:	00008067          	ret

00000000800048e8 <_ZN8ConsumerD0Ev>:
    800048e8:	fe010113          	addi	sp,sp,-32
    800048ec:	00113c23          	sd	ra,24(sp)
    800048f0:	00813823          	sd	s0,16(sp)
    800048f4:	00913423          	sd	s1,8(sp)
    800048f8:	02010413          	addi	s0,sp,32
    800048fc:	00050493          	mv	s1,a0
    80004900:	00007797          	auipc	a5,0x7
    80004904:	24078793          	addi	a5,a5,576 # 8000bb40 <_ZTV8Consumer+0x10>
    80004908:	00f53023          	sd	a5,0(a0)
    8000490c:	ffffe097          	auipc	ra,0xffffe
    80004910:	f08080e7          	jalr	-248(ra) # 80002814 <_ZN6ThreadD1Ev>
    80004914:	00048513          	mv	a0,s1
    80004918:	ffffe097          	auipc	ra,0xffffe
    8000491c:	d98080e7          	jalr	-616(ra) # 800026b0 <_ZdlPv>
    80004920:	01813083          	ld	ra,24(sp)
    80004924:	01013403          	ld	s0,16(sp)
    80004928:	00813483          	ld	s1,8(sp)
    8000492c:	02010113          	addi	sp,sp,32
    80004930:	00008067          	ret

0000000080004934 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004934:	ff010113          	addi	sp,sp,-16
    80004938:	00113423          	sd	ra,8(sp)
    8000493c:	00813023          	sd	s0,0(sp)
    80004940:	01010413          	addi	s0,sp,16
    80004944:	00007797          	auipc	a5,0x7
    80004948:	1ac78793          	addi	a5,a5,428 # 8000baf0 <_ZTV16ProducerKeyborad+0x10>
    8000494c:	00f53023          	sd	a5,0(a0)
    80004950:	ffffe097          	auipc	ra,0xffffe
    80004954:	ec4080e7          	jalr	-316(ra) # 80002814 <_ZN6ThreadD1Ev>
    80004958:	00813083          	ld	ra,8(sp)
    8000495c:	00013403          	ld	s0,0(sp)
    80004960:	01010113          	addi	sp,sp,16
    80004964:	00008067          	ret

0000000080004968 <_ZN16ProducerKeyboradD0Ev>:
    80004968:	fe010113          	addi	sp,sp,-32
    8000496c:	00113c23          	sd	ra,24(sp)
    80004970:	00813823          	sd	s0,16(sp)
    80004974:	00913423          	sd	s1,8(sp)
    80004978:	02010413          	addi	s0,sp,32
    8000497c:	00050493          	mv	s1,a0
    80004980:	00007797          	auipc	a5,0x7
    80004984:	17078793          	addi	a5,a5,368 # 8000baf0 <_ZTV16ProducerKeyborad+0x10>
    80004988:	00f53023          	sd	a5,0(a0)
    8000498c:	ffffe097          	auipc	ra,0xffffe
    80004990:	e88080e7          	jalr	-376(ra) # 80002814 <_ZN6ThreadD1Ev>
    80004994:	00048513          	mv	a0,s1
    80004998:	ffffe097          	auipc	ra,0xffffe
    8000499c:	d18080e7          	jalr	-744(ra) # 800026b0 <_ZdlPv>
    800049a0:	01813083          	ld	ra,24(sp)
    800049a4:	01013403          	ld	s0,16(sp)
    800049a8:	00813483          	ld	s1,8(sp)
    800049ac:	02010113          	addi	sp,sp,32
    800049b0:	00008067          	ret

00000000800049b4 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800049b4:	ff010113          	addi	sp,sp,-16
    800049b8:	00113423          	sd	ra,8(sp)
    800049bc:	00813023          	sd	s0,0(sp)
    800049c0:	01010413          	addi	s0,sp,16
    800049c4:	00007797          	auipc	a5,0x7
    800049c8:	15478793          	addi	a5,a5,340 # 8000bb18 <_ZTV8Producer+0x10>
    800049cc:	00f53023          	sd	a5,0(a0)
    800049d0:	ffffe097          	auipc	ra,0xffffe
    800049d4:	e44080e7          	jalr	-444(ra) # 80002814 <_ZN6ThreadD1Ev>
    800049d8:	00813083          	ld	ra,8(sp)
    800049dc:	00013403          	ld	s0,0(sp)
    800049e0:	01010113          	addi	sp,sp,16
    800049e4:	00008067          	ret

00000000800049e8 <_ZN8ProducerD0Ev>:
    800049e8:	fe010113          	addi	sp,sp,-32
    800049ec:	00113c23          	sd	ra,24(sp)
    800049f0:	00813823          	sd	s0,16(sp)
    800049f4:	00913423          	sd	s1,8(sp)
    800049f8:	02010413          	addi	s0,sp,32
    800049fc:	00050493          	mv	s1,a0
    80004a00:	00007797          	auipc	a5,0x7
    80004a04:	11878793          	addi	a5,a5,280 # 8000bb18 <_ZTV8Producer+0x10>
    80004a08:	00f53023          	sd	a5,0(a0)
    80004a0c:	ffffe097          	auipc	ra,0xffffe
    80004a10:	e08080e7          	jalr	-504(ra) # 80002814 <_ZN6ThreadD1Ev>
    80004a14:	00048513          	mv	a0,s1
    80004a18:	ffffe097          	auipc	ra,0xffffe
    80004a1c:	c98080e7          	jalr	-872(ra) # 800026b0 <_ZdlPv>
    80004a20:	01813083          	ld	ra,24(sp)
    80004a24:	01013403          	ld	s0,16(sp)
    80004a28:	00813483          	ld	s1,8(sp)
    80004a2c:	02010113          	addi	sp,sp,32
    80004a30:	00008067          	ret

0000000080004a34 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004a34:	fe010113          	addi	sp,sp,-32
    80004a38:	00113c23          	sd	ra,24(sp)
    80004a3c:	00813823          	sd	s0,16(sp)
    80004a40:	00913423          	sd	s1,8(sp)
    80004a44:	02010413          	addi	s0,sp,32
    80004a48:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004a4c:	ffffd097          	auipc	ra,0xffffd
    80004a50:	b44080e7          	jalr	-1212(ra) # 80001590 <_Z4getcv>
    80004a54:	0005059b          	sext.w	a1,a0
    80004a58:	01b00793          	li	a5,27
    80004a5c:	00f58c63          	beq	a1,a5,80004a74 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004a60:	0204b783          	ld	a5,32(s1)
    80004a64:	0087b503          	ld	a0,8(a5)
    80004a68:	00001097          	auipc	ra,0x1
    80004a6c:	36c080e7          	jalr	876(ra) # 80005dd4 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004a70:	fddff06f          	j	80004a4c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004a74:	00100793          	li	a5,1
    80004a78:	00007717          	auipc	a4,0x7
    80004a7c:	26f72423          	sw	a5,616(a4) # 8000bce0 <_ZL9threadEnd>
        td->buffer->put('!');
    80004a80:	0204b783          	ld	a5,32(s1)
    80004a84:	02100593          	li	a1,33
    80004a88:	0087b503          	ld	a0,8(a5)
    80004a8c:	00001097          	auipc	ra,0x1
    80004a90:	348080e7          	jalr	840(ra) # 80005dd4 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004a94:	0204b783          	ld	a5,32(s1)
    80004a98:	0107b503          	ld	a0,16(a5)
    80004a9c:	ffffe097          	auipc	ra,0xffffe
    80004aa0:	fd8080e7          	jalr	-40(ra) # 80002a74 <_ZN9Semaphore6signalEv>
    }
    80004aa4:	01813083          	ld	ra,24(sp)
    80004aa8:	01013403          	ld	s0,16(sp)
    80004aac:	00813483          	ld	s1,8(sp)
    80004ab0:	02010113          	addi	sp,sp,32
    80004ab4:	00008067          	ret

0000000080004ab8 <_ZN8Producer3runEv>:
    void run() override {
    80004ab8:	fe010113          	addi	sp,sp,-32
    80004abc:	00113c23          	sd	ra,24(sp)
    80004ac0:	00813823          	sd	s0,16(sp)
    80004ac4:	00913423          	sd	s1,8(sp)
    80004ac8:	01213023          	sd	s2,0(sp)
    80004acc:	02010413          	addi	s0,sp,32
    80004ad0:	00050493          	mv	s1,a0
        int i = 0;
    80004ad4:	00000913          	li	s2,0
        while (!threadEnd) {
    80004ad8:	00007797          	auipc	a5,0x7
    80004adc:	2087a783          	lw	a5,520(a5) # 8000bce0 <_ZL9threadEnd>
    80004ae0:	04079263          	bnez	a5,80004b24 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004ae4:	0204b783          	ld	a5,32(s1)
    80004ae8:	0007a583          	lw	a1,0(a5)
    80004aec:	0305859b          	addiw	a1,a1,48
    80004af0:	0087b503          	ld	a0,8(a5)
    80004af4:	00001097          	auipc	ra,0x1
    80004af8:	2e0080e7          	jalr	736(ra) # 80005dd4 <_ZN9BufferCPP3putEi>
            i++;
    80004afc:	0019071b          	addiw	a4,s2,1
    80004b00:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004b04:	0204b783          	ld	a5,32(s1)
    80004b08:	0007a783          	lw	a5,0(a5)
    80004b0c:	00e787bb          	addw	a5,a5,a4
    80004b10:	00500513          	li	a0,5
    80004b14:	02a7e53b          	remw	a0,a5,a0
    80004b18:	ffffe097          	auipc	ra,0xffffe
    80004b1c:	ecc080e7          	jalr	-308(ra) # 800029e4 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004b20:	fb9ff06f          	j	80004ad8 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004b24:	0204b783          	ld	a5,32(s1)
    80004b28:	0107b503          	ld	a0,16(a5)
    80004b2c:	ffffe097          	auipc	ra,0xffffe
    80004b30:	f48080e7          	jalr	-184(ra) # 80002a74 <_ZN9Semaphore6signalEv>
    }
    80004b34:	01813083          	ld	ra,24(sp)
    80004b38:	01013403          	ld	s0,16(sp)
    80004b3c:	00813483          	ld	s1,8(sp)
    80004b40:	00013903          	ld	s2,0(sp)
    80004b44:	02010113          	addi	sp,sp,32
    80004b48:	00008067          	ret

0000000080004b4c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004b4c:	fe010113          	addi	sp,sp,-32
    80004b50:	00113c23          	sd	ra,24(sp)
    80004b54:	00813823          	sd	s0,16(sp)
    80004b58:	00913423          	sd	s1,8(sp)
    80004b5c:	01213023          	sd	s2,0(sp)
    80004b60:	02010413          	addi	s0,sp,32
    80004b64:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004b68:	00100793          	li	a5,1
    80004b6c:	02a7f863          	bgeu	a5,a0,80004b9c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004b70:	00a00793          	li	a5,10
    80004b74:	02f577b3          	remu	a5,a0,a5
    80004b78:	02078e63          	beqz	a5,80004bb4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004b7c:	fff48513          	addi	a0,s1,-1
    80004b80:	00000097          	auipc	ra,0x0
    80004b84:	fcc080e7          	jalr	-52(ra) # 80004b4c <_ZL9fibonaccim>
    80004b88:	00050913          	mv	s2,a0
    80004b8c:	ffe48513          	addi	a0,s1,-2
    80004b90:	00000097          	auipc	ra,0x0
    80004b94:	fbc080e7          	jalr	-68(ra) # 80004b4c <_ZL9fibonaccim>
    80004b98:	00a90533          	add	a0,s2,a0
}
    80004b9c:	01813083          	ld	ra,24(sp)
    80004ba0:	01013403          	ld	s0,16(sp)
    80004ba4:	00813483          	ld	s1,8(sp)
    80004ba8:	00013903          	ld	s2,0(sp)
    80004bac:	02010113          	addi	sp,sp,32
    80004bb0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004bb4:	ffffc097          	auipc	ra,0xffffc
    80004bb8:	7d4080e7          	jalr	2004(ra) # 80001388 <_Z15thread_dispatchv>
    80004bbc:	fc1ff06f          	j	80004b7c <_ZL9fibonaccim+0x30>

0000000080004bc0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004bc0:	fe010113          	addi	sp,sp,-32
    80004bc4:	00113c23          	sd	ra,24(sp)
    80004bc8:	00813823          	sd	s0,16(sp)
    80004bcc:	00913423          	sd	s1,8(sp)
    80004bd0:	01213023          	sd	s2,0(sp)
    80004bd4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004bd8:	00a00493          	li	s1,10
    80004bdc:	0400006f          	j	80004c1c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004be0:	00005517          	auipc	a0,0x5
    80004be4:	87850513          	addi	a0,a0,-1928 # 80009458 <CONSOLE_STATUS+0x448>
    80004be8:	00001097          	auipc	ra,0x1
    80004bec:	dc8080e7          	jalr	-568(ra) # 800059b0 <_Z11printStringPKc>
    80004bf0:	00000613          	li	a2,0
    80004bf4:	00a00593          	li	a1,10
    80004bf8:	00048513          	mv	a0,s1
    80004bfc:	00001097          	auipc	ra,0x1
    80004c00:	f64080e7          	jalr	-156(ra) # 80005b60 <_Z8printIntiii>
    80004c04:	00004517          	auipc	a0,0x4
    80004c08:	6dc50513          	addi	a0,a0,1756 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004c0c:	00001097          	auipc	ra,0x1
    80004c10:	da4080e7          	jalr	-604(ra) # 800059b0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004c14:	0014849b          	addiw	s1,s1,1
    80004c18:	0ff4f493          	andi	s1,s1,255
    80004c1c:	00c00793          	li	a5,12
    80004c20:	fc97f0e3          	bgeu	a5,s1,80004be0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004c24:	00005517          	auipc	a0,0x5
    80004c28:	a1c50513          	addi	a0,a0,-1508 # 80009640 <CONSOLE_STATUS+0x630>
    80004c2c:	00001097          	auipc	ra,0x1
    80004c30:	d84080e7          	jalr	-636(ra) # 800059b0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004c34:	00500313          	li	t1,5
    thread_dispatch();
    80004c38:	ffffc097          	auipc	ra,0xffffc
    80004c3c:	750080e7          	jalr	1872(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004c40:	01000513          	li	a0,16
    80004c44:	00000097          	auipc	ra,0x0
    80004c48:	f08080e7          	jalr	-248(ra) # 80004b4c <_ZL9fibonaccim>
    80004c4c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004c50:	00005517          	auipc	a0,0x5
    80004c54:	a0050513          	addi	a0,a0,-1536 # 80009650 <CONSOLE_STATUS+0x640>
    80004c58:	00001097          	auipc	ra,0x1
    80004c5c:	d58080e7          	jalr	-680(ra) # 800059b0 <_Z11printStringPKc>
    80004c60:	00000613          	li	a2,0
    80004c64:	00a00593          	li	a1,10
    80004c68:	0009051b          	sext.w	a0,s2
    80004c6c:	00001097          	auipc	ra,0x1
    80004c70:	ef4080e7          	jalr	-268(ra) # 80005b60 <_Z8printIntiii>
    80004c74:	00004517          	auipc	a0,0x4
    80004c78:	66c50513          	addi	a0,a0,1644 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004c7c:	00001097          	auipc	ra,0x1
    80004c80:	d34080e7          	jalr	-716(ra) # 800059b0 <_Z11printStringPKc>
    80004c84:	0400006f          	j	80004cc4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004c88:	00004517          	auipc	a0,0x4
    80004c8c:	7d050513          	addi	a0,a0,2000 # 80009458 <CONSOLE_STATUS+0x448>
    80004c90:	00001097          	auipc	ra,0x1
    80004c94:	d20080e7          	jalr	-736(ra) # 800059b0 <_Z11printStringPKc>
    80004c98:	00000613          	li	a2,0
    80004c9c:	00a00593          	li	a1,10
    80004ca0:	00048513          	mv	a0,s1
    80004ca4:	00001097          	auipc	ra,0x1
    80004ca8:	ebc080e7          	jalr	-324(ra) # 80005b60 <_Z8printIntiii>
    80004cac:	00004517          	auipc	a0,0x4
    80004cb0:	63450513          	addi	a0,a0,1588 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004cb4:	00001097          	auipc	ra,0x1
    80004cb8:	cfc080e7          	jalr	-772(ra) # 800059b0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004cbc:	0014849b          	addiw	s1,s1,1
    80004cc0:	0ff4f493          	andi	s1,s1,255
    80004cc4:	00f00793          	li	a5,15
    80004cc8:	fc97f0e3          	bgeu	a5,s1,80004c88 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004ccc:	00005517          	auipc	a0,0x5
    80004cd0:	99450513          	addi	a0,a0,-1644 # 80009660 <CONSOLE_STATUS+0x650>
    80004cd4:	00001097          	auipc	ra,0x1
    80004cd8:	cdc080e7          	jalr	-804(ra) # 800059b0 <_Z11printStringPKc>
    finishedD = true;
    80004cdc:	00100793          	li	a5,1
    80004ce0:	00007717          	auipc	a4,0x7
    80004ce4:	00f70823          	sb	a5,16(a4) # 8000bcf0 <_ZL9finishedD>
    thread_dispatch();
    80004ce8:	ffffc097          	auipc	ra,0xffffc
    80004cec:	6a0080e7          	jalr	1696(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004cf0:	01813083          	ld	ra,24(sp)
    80004cf4:	01013403          	ld	s0,16(sp)
    80004cf8:	00813483          	ld	s1,8(sp)
    80004cfc:	00013903          	ld	s2,0(sp)
    80004d00:	02010113          	addi	sp,sp,32
    80004d04:	00008067          	ret

0000000080004d08 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004d08:	fe010113          	addi	sp,sp,-32
    80004d0c:	00113c23          	sd	ra,24(sp)
    80004d10:	00813823          	sd	s0,16(sp)
    80004d14:	00913423          	sd	s1,8(sp)
    80004d18:	01213023          	sd	s2,0(sp)
    80004d1c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004d20:	00000493          	li	s1,0
    80004d24:	0400006f          	j	80004d64 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004d28:	00004517          	auipc	a0,0x4
    80004d2c:	6f850513          	addi	a0,a0,1784 # 80009420 <CONSOLE_STATUS+0x410>
    80004d30:	00001097          	auipc	ra,0x1
    80004d34:	c80080e7          	jalr	-896(ra) # 800059b0 <_Z11printStringPKc>
    80004d38:	00000613          	li	a2,0
    80004d3c:	00a00593          	li	a1,10
    80004d40:	00048513          	mv	a0,s1
    80004d44:	00001097          	auipc	ra,0x1
    80004d48:	e1c080e7          	jalr	-484(ra) # 80005b60 <_Z8printIntiii>
    80004d4c:	00004517          	auipc	a0,0x4
    80004d50:	59450513          	addi	a0,a0,1428 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004d54:	00001097          	auipc	ra,0x1
    80004d58:	c5c080e7          	jalr	-932(ra) # 800059b0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004d5c:	0014849b          	addiw	s1,s1,1
    80004d60:	0ff4f493          	andi	s1,s1,255
    80004d64:	00200793          	li	a5,2
    80004d68:	fc97f0e3          	bgeu	a5,s1,80004d28 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004d6c:	00005517          	auipc	a0,0x5
    80004d70:	8ac50513          	addi	a0,a0,-1876 # 80009618 <CONSOLE_STATUS+0x608>
    80004d74:	00001097          	auipc	ra,0x1
    80004d78:	c3c080e7          	jalr	-964(ra) # 800059b0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004d7c:	00700313          	li	t1,7
    thread_dispatch();
    80004d80:	ffffc097          	auipc	ra,0xffffc
    80004d84:	608080e7          	jalr	1544(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004d88:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004d8c:	00005517          	auipc	a0,0x5
    80004d90:	89c50513          	addi	a0,a0,-1892 # 80009628 <CONSOLE_STATUS+0x618>
    80004d94:	00001097          	auipc	ra,0x1
    80004d98:	c1c080e7          	jalr	-996(ra) # 800059b0 <_Z11printStringPKc>
    80004d9c:	00000613          	li	a2,0
    80004da0:	00a00593          	li	a1,10
    80004da4:	0009051b          	sext.w	a0,s2
    80004da8:	00001097          	auipc	ra,0x1
    80004dac:	db8080e7          	jalr	-584(ra) # 80005b60 <_Z8printIntiii>
    80004db0:	00004517          	auipc	a0,0x4
    80004db4:	53050513          	addi	a0,a0,1328 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004db8:	00001097          	auipc	ra,0x1
    80004dbc:	bf8080e7          	jalr	-1032(ra) # 800059b0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004dc0:	00c00513          	li	a0,12
    80004dc4:	00000097          	auipc	ra,0x0
    80004dc8:	d88080e7          	jalr	-632(ra) # 80004b4c <_ZL9fibonaccim>
    80004dcc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004dd0:	00005517          	auipc	a0,0x5
    80004dd4:	86050513          	addi	a0,a0,-1952 # 80009630 <CONSOLE_STATUS+0x620>
    80004dd8:	00001097          	auipc	ra,0x1
    80004ddc:	bd8080e7          	jalr	-1064(ra) # 800059b0 <_Z11printStringPKc>
    80004de0:	00000613          	li	a2,0
    80004de4:	00a00593          	li	a1,10
    80004de8:	0009051b          	sext.w	a0,s2
    80004dec:	00001097          	auipc	ra,0x1
    80004df0:	d74080e7          	jalr	-652(ra) # 80005b60 <_Z8printIntiii>
    80004df4:	00004517          	auipc	a0,0x4
    80004df8:	4ec50513          	addi	a0,a0,1260 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004dfc:	00001097          	auipc	ra,0x1
    80004e00:	bb4080e7          	jalr	-1100(ra) # 800059b0 <_Z11printStringPKc>
    80004e04:	0400006f          	j	80004e44 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004e08:	00004517          	auipc	a0,0x4
    80004e0c:	61850513          	addi	a0,a0,1560 # 80009420 <CONSOLE_STATUS+0x410>
    80004e10:	00001097          	auipc	ra,0x1
    80004e14:	ba0080e7          	jalr	-1120(ra) # 800059b0 <_Z11printStringPKc>
    80004e18:	00000613          	li	a2,0
    80004e1c:	00a00593          	li	a1,10
    80004e20:	00048513          	mv	a0,s1
    80004e24:	00001097          	auipc	ra,0x1
    80004e28:	d3c080e7          	jalr	-708(ra) # 80005b60 <_Z8printIntiii>
    80004e2c:	00004517          	auipc	a0,0x4
    80004e30:	4b450513          	addi	a0,a0,1204 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004e34:	00001097          	auipc	ra,0x1
    80004e38:	b7c080e7          	jalr	-1156(ra) # 800059b0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004e3c:	0014849b          	addiw	s1,s1,1
    80004e40:	0ff4f493          	andi	s1,s1,255
    80004e44:	00500793          	li	a5,5
    80004e48:	fc97f0e3          	bgeu	a5,s1,80004e08 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004e4c:	00004517          	auipc	a0,0x4
    80004e50:	7ac50513          	addi	a0,a0,1964 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80004e54:	00001097          	auipc	ra,0x1
    80004e58:	b5c080e7          	jalr	-1188(ra) # 800059b0 <_Z11printStringPKc>
    finishedC = true;
    80004e5c:	00100793          	li	a5,1
    80004e60:	00007717          	auipc	a4,0x7
    80004e64:	e8f708a3          	sb	a5,-367(a4) # 8000bcf1 <_ZL9finishedC>
    thread_dispatch();
    80004e68:	ffffc097          	auipc	ra,0xffffc
    80004e6c:	520080e7          	jalr	1312(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004e70:	01813083          	ld	ra,24(sp)
    80004e74:	01013403          	ld	s0,16(sp)
    80004e78:	00813483          	ld	s1,8(sp)
    80004e7c:	00013903          	ld	s2,0(sp)
    80004e80:	02010113          	addi	sp,sp,32
    80004e84:	00008067          	ret

0000000080004e88 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004e88:	fe010113          	addi	sp,sp,-32
    80004e8c:	00113c23          	sd	ra,24(sp)
    80004e90:	00813823          	sd	s0,16(sp)
    80004e94:	00913423          	sd	s1,8(sp)
    80004e98:	01213023          	sd	s2,0(sp)
    80004e9c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004ea0:	00000913          	li	s2,0
    80004ea4:	0380006f          	j	80004edc <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004ea8:	ffffc097          	auipc	ra,0xffffc
    80004eac:	4e0080e7          	jalr	1248(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004eb0:	00148493          	addi	s1,s1,1
    80004eb4:	000027b7          	lui	a5,0x2
    80004eb8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004ebc:	0097ee63          	bltu	a5,s1,80004ed8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004ec0:	00000713          	li	a4,0
    80004ec4:	000077b7          	lui	a5,0x7
    80004ec8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004ecc:	fce7eee3          	bltu	a5,a4,80004ea8 <_ZL11workerBodyBPv+0x20>
    80004ed0:	00170713          	addi	a4,a4,1
    80004ed4:	ff1ff06f          	j	80004ec4 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004ed8:	00190913          	addi	s2,s2,1
    80004edc:	00f00793          	li	a5,15
    80004ee0:	0527e063          	bltu	a5,s2,80004f20 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004ee4:	00004517          	auipc	a0,0x4
    80004ee8:	50450513          	addi	a0,a0,1284 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80004eec:	00001097          	auipc	ra,0x1
    80004ef0:	ac4080e7          	jalr	-1340(ra) # 800059b0 <_Z11printStringPKc>
    80004ef4:	00000613          	li	a2,0
    80004ef8:	00a00593          	li	a1,10
    80004efc:	0009051b          	sext.w	a0,s2
    80004f00:	00001097          	auipc	ra,0x1
    80004f04:	c60080e7          	jalr	-928(ra) # 80005b60 <_Z8printIntiii>
    80004f08:	00004517          	auipc	a0,0x4
    80004f0c:	3d850513          	addi	a0,a0,984 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004f10:	00001097          	auipc	ra,0x1
    80004f14:	aa0080e7          	jalr	-1376(ra) # 800059b0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004f18:	00000493          	li	s1,0
    80004f1c:	f99ff06f          	j	80004eb4 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004f20:	00004517          	auipc	a0,0x4
    80004f24:	6e850513          	addi	a0,a0,1768 # 80009608 <CONSOLE_STATUS+0x5f8>
    80004f28:	00001097          	auipc	ra,0x1
    80004f2c:	a88080e7          	jalr	-1400(ra) # 800059b0 <_Z11printStringPKc>
    finishedB = true;
    80004f30:	00100793          	li	a5,1
    80004f34:	00007717          	auipc	a4,0x7
    80004f38:	daf70f23          	sb	a5,-578(a4) # 8000bcf2 <_ZL9finishedB>
    thread_dispatch();
    80004f3c:	ffffc097          	auipc	ra,0xffffc
    80004f40:	44c080e7          	jalr	1100(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004f44:	01813083          	ld	ra,24(sp)
    80004f48:	01013403          	ld	s0,16(sp)
    80004f4c:	00813483          	ld	s1,8(sp)
    80004f50:	00013903          	ld	s2,0(sp)
    80004f54:	02010113          	addi	sp,sp,32
    80004f58:	00008067          	ret

0000000080004f5c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004f5c:	fe010113          	addi	sp,sp,-32
    80004f60:	00113c23          	sd	ra,24(sp)
    80004f64:	00813823          	sd	s0,16(sp)
    80004f68:	00913423          	sd	s1,8(sp)
    80004f6c:	01213023          	sd	s2,0(sp)
    80004f70:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004f74:	00000913          	li	s2,0
    80004f78:	0380006f          	j	80004fb0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004f7c:	ffffc097          	auipc	ra,0xffffc
    80004f80:	40c080e7          	jalr	1036(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004f84:	00148493          	addi	s1,s1,1
    80004f88:	000027b7          	lui	a5,0x2
    80004f8c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004f90:	0097ee63          	bltu	a5,s1,80004fac <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004f94:	00000713          	li	a4,0
    80004f98:	000077b7          	lui	a5,0x7
    80004f9c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004fa0:	fce7eee3          	bltu	a5,a4,80004f7c <_ZL11workerBodyAPv+0x20>
    80004fa4:	00170713          	addi	a4,a4,1
    80004fa8:	ff1ff06f          	j	80004f98 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004fac:	00190913          	addi	s2,s2,1
    80004fb0:	00900793          	li	a5,9
    80004fb4:	0527e063          	bltu	a5,s2,80004ff4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004fb8:	00004517          	auipc	a0,0x4
    80004fbc:	3f850513          	addi	a0,a0,1016 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80004fc0:	00001097          	auipc	ra,0x1
    80004fc4:	9f0080e7          	jalr	-1552(ra) # 800059b0 <_Z11printStringPKc>
    80004fc8:	00000613          	li	a2,0
    80004fcc:	00a00593          	li	a1,10
    80004fd0:	0009051b          	sext.w	a0,s2
    80004fd4:	00001097          	auipc	ra,0x1
    80004fd8:	b8c080e7          	jalr	-1140(ra) # 80005b60 <_Z8printIntiii>
    80004fdc:	00004517          	auipc	a0,0x4
    80004fe0:	30450513          	addi	a0,a0,772 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004fe4:	00001097          	auipc	ra,0x1
    80004fe8:	9cc080e7          	jalr	-1588(ra) # 800059b0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004fec:	00000493          	li	s1,0
    80004ff0:	f99ff06f          	j	80004f88 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004ff4:	00004517          	auipc	a0,0x4
    80004ff8:	60450513          	addi	a0,a0,1540 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80004ffc:	00001097          	auipc	ra,0x1
    80005000:	9b4080e7          	jalr	-1612(ra) # 800059b0 <_Z11printStringPKc>
    finishedA = true;
    80005004:	00100793          	li	a5,1
    80005008:	00007717          	auipc	a4,0x7
    8000500c:	cef705a3          	sb	a5,-789(a4) # 8000bcf3 <_ZL9finishedA>
}
    80005010:	01813083          	ld	ra,24(sp)
    80005014:	01013403          	ld	s0,16(sp)
    80005018:	00813483          	ld	s1,8(sp)
    8000501c:	00013903          	ld	s2,0(sp)
    80005020:	02010113          	addi	sp,sp,32
    80005024:	00008067          	ret

0000000080005028 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005028:	fd010113          	addi	sp,sp,-48
    8000502c:	02113423          	sd	ra,40(sp)
    80005030:	02813023          	sd	s0,32(sp)
    80005034:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005038:	00000613          	li	a2,0
    8000503c:	00000597          	auipc	a1,0x0
    80005040:	f2058593          	addi	a1,a1,-224 # 80004f5c <_ZL11workerBodyAPv>
    80005044:	fd040513          	addi	a0,s0,-48
    80005048:	ffffc097          	auipc	ra,0xffffc
    8000504c:	23c080e7          	jalr	572(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80005050:	00004517          	auipc	a0,0x4
    80005054:	62050513          	addi	a0,a0,1568 # 80009670 <CONSOLE_STATUS+0x660>
    80005058:	00001097          	auipc	ra,0x1
    8000505c:	958080e7          	jalr	-1704(ra) # 800059b0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005060:	00000613          	li	a2,0
    80005064:	00000597          	auipc	a1,0x0
    80005068:	e2458593          	addi	a1,a1,-476 # 80004e88 <_ZL11workerBodyBPv>
    8000506c:	fd840513          	addi	a0,s0,-40
    80005070:	ffffc097          	auipc	ra,0xffffc
    80005074:	214080e7          	jalr	532(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80005078:	00004517          	auipc	a0,0x4
    8000507c:	61050513          	addi	a0,a0,1552 # 80009688 <CONSOLE_STATUS+0x678>
    80005080:	00001097          	auipc	ra,0x1
    80005084:	930080e7          	jalr	-1744(ra) # 800059b0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005088:	00000613          	li	a2,0
    8000508c:	00000597          	auipc	a1,0x0
    80005090:	c7c58593          	addi	a1,a1,-900 # 80004d08 <_ZL11workerBodyCPv>
    80005094:	fe040513          	addi	a0,s0,-32
    80005098:	ffffc097          	auipc	ra,0xffffc
    8000509c:	1ec080e7          	jalr	492(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800050a0:	00004517          	auipc	a0,0x4
    800050a4:	60050513          	addi	a0,a0,1536 # 800096a0 <CONSOLE_STATUS+0x690>
    800050a8:	00001097          	auipc	ra,0x1
    800050ac:	908080e7          	jalr	-1784(ra) # 800059b0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800050b0:	00000613          	li	a2,0
    800050b4:	00000597          	auipc	a1,0x0
    800050b8:	b0c58593          	addi	a1,a1,-1268 # 80004bc0 <_ZL11workerBodyDPv>
    800050bc:	fe840513          	addi	a0,s0,-24
    800050c0:	ffffc097          	auipc	ra,0xffffc
    800050c4:	1c4080e7          	jalr	452(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800050c8:	00004517          	auipc	a0,0x4
    800050cc:	5f050513          	addi	a0,a0,1520 # 800096b8 <CONSOLE_STATUS+0x6a8>
    800050d0:	00001097          	auipc	ra,0x1
    800050d4:	8e0080e7          	jalr	-1824(ra) # 800059b0 <_Z11printStringPKc>
    800050d8:	00c0006f          	j	800050e4 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800050dc:	ffffc097          	auipc	ra,0xffffc
    800050e0:	2ac080e7          	jalr	684(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800050e4:	00007797          	auipc	a5,0x7
    800050e8:	c0f7c783          	lbu	a5,-1009(a5) # 8000bcf3 <_ZL9finishedA>
    800050ec:	fe0788e3          	beqz	a5,800050dc <_Z18Threads_C_API_testv+0xb4>
    800050f0:	00007797          	auipc	a5,0x7
    800050f4:	c027c783          	lbu	a5,-1022(a5) # 8000bcf2 <_ZL9finishedB>
    800050f8:	fe0782e3          	beqz	a5,800050dc <_Z18Threads_C_API_testv+0xb4>
    800050fc:	00007797          	auipc	a5,0x7
    80005100:	bf57c783          	lbu	a5,-1035(a5) # 8000bcf1 <_ZL9finishedC>
    80005104:	fc078ce3          	beqz	a5,800050dc <_Z18Threads_C_API_testv+0xb4>
    80005108:	00007797          	auipc	a5,0x7
    8000510c:	be87c783          	lbu	a5,-1048(a5) # 8000bcf0 <_ZL9finishedD>
    80005110:	fc0786e3          	beqz	a5,800050dc <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005114:	02813083          	ld	ra,40(sp)
    80005118:	02013403          	ld	s0,32(sp)
    8000511c:	03010113          	addi	sp,sp,48
    80005120:	00008067          	ret

0000000080005124 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005124:	fd010113          	addi	sp,sp,-48
    80005128:	02113423          	sd	ra,40(sp)
    8000512c:	02813023          	sd	s0,32(sp)
    80005130:	00913c23          	sd	s1,24(sp)
    80005134:	01213823          	sd	s2,16(sp)
    80005138:	01313423          	sd	s3,8(sp)
    8000513c:	03010413          	addi	s0,sp,48
    80005140:	00050993          	mv	s3,a0
    80005144:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005148:	00000913          	li	s2,0
    8000514c:	00c0006f          	j	80005158 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005150:	ffffe097          	auipc	ra,0xffffe
    80005154:	86c080e7          	jalr	-1940(ra) # 800029bc <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005158:	ffffc097          	auipc	ra,0xffffc
    8000515c:	438080e7          	jalr	1080(ra) # 80001590 <_Z4getcv>
    80005160:	0005059b          	sext.w	a1,a0
    80005164:	01b00793          	li	a5,27
    80005168:	02f58a63          	beq	a1,a5,8000519c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000516c:	0084b503          	ld	a0,8(s1)
    80005170:	00001097          	auipc	ra,0x1
    80005174:	c64080e7          	jalr	-924(ra) # 80005dd4 <_ZN9BufferCPP3putEi>
        i++;
    80005178:	0019071b          	addiw	a4,s2,1
    8000517c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005180:	0004a683          	lw	a3,0(s1)
    80005184:	0026979b          	slliw	a5,a3,0x2
    80005188:	00d787bb          	addw	a5,a5,a3
    8000518c:	0017979b          	slliw	a5,a5,0x1
    80005190:	02f767bb          	remw	a5,a4,a5
    80005194:	fc0792e3          	bnez	a5,80005158 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005198:	fb9ff06f          	j	80005150 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    8000519c:	00100793          	li	a5,1
    800051a0:	00007717          	auipc	a4,0x7
    800051a4:	b4f72c23          	sw	a5,-1192(a4) # 8000bcf8 <_ZL9threadEnd>
    td->buffer->put('!');
    800051a8:	0209b783          	ld	a5,32(s3)
    800051ac:	02100593          	li	a1,33
    800051b0:	0087b503          	ld	a0,8(a5)
    800051b4:	00001097          	auipc	ra,0x1
    800051b8:	c20080e7          	jalr	-992(ra) # 80005dd4 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800051bc:	0104b503          	ld	a0,16(s1)
    800051c0:	ffffe097          	auipc	ra,0xffffe
    800051c4:	8b4080e7          	jalr	-1868(ra) # 80002a74 <_ZN9Semaphore6signalEv>
}
    800051c8:	02813083          	ld	ra,40(sp)
    800051cc:	02013403          	ld	s0,32(sp)
    800051d0:	01813483          	ld	s1,24(sp)
    800051d4:	01013903          	ld	s2,16(sp)
    800051d8:	00813983          	ld	s3,8(sp)
    800051dc:	03010113          	addi	sp,sp,48
    800051e0:	00008067          	ret

00000000800051e4 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800051e4:	fe010113          	addi	sp,sp,-32
    800051e8:	00113c23          	sd	ra,24(sp)
    800051ec:	00813823          	sd	s0,16(sp)
    800051f0:	00913423          	sd	s1,8(sp)
    800051f4:	01213023          	sd	s2,0(sp)
    800051f8:	02010413          	addi	s0,sp,32
    800051fc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005200:	00000913          	li	s2,0
    80005204:	00c0006f          	j	80005210 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005208:	ffffd097          	auipc	ra,0xffffd
    8000520c:	7b4080e7          	jalr	1972(ra) # 800029bc <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005210:	00007797          	auipc	a5,0x7
    80005214:	ae87a783          	lw	a5,-1304(a5) # 8000bcf8 <_ZL9threadEnd>
    80005218:	02079e63          	bnez	a5,80005254 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    8000521c:	0004a583          	lw	a1,0(s1)
    80005220:	0305859b          	addiw	a1,a1,48
    80005224:	0084b503          	ld	a0,8(s1)
    80005228:	00001097          	auipc	ra,0x1
    8000522c:	bac080e7          	jalr	-1108(ra) # 80005dd4 <_ZN9BufferCPP3putEi>
        i++;
    80005230:	0019071b          	addiw	a4,s2,1
    80005234:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005238:	0004a683          	lw	a3,0(s1)
    8000523c:	0026979b          	slliw	a5,a3,0x2
    80005240:	00d787bb          	addw	a5,a5,a3
    80005244:	0017979b          	slliw	a5,a5,0x1
    80005248:	02f767bb          	remw	a5,a4,a5
    8000524c:	fc0792e3          	bnez	a5,80005210 <_ZN12ProducerSync8producerEPv+0x2c>
    80005250:	fb9ff06f          	j	80005208 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005254:	0104b503          	ld	a0,16(s1)
    80005258:	ffffe097          	auipc	ra,0xffffe
    8000525c:	81c080e7          	jalr	-2020(ra) # 80002a74 <_ZN9Semaphore6signalEv>
}
    80005260:	01813083          	ld	ra,24(sp)
    80005264:	01013403          	ld	s0,16(sp)
    80005268:	00813483          	ld	s1,8(sp)
    8000526c:	00013903          	ld	s2,0(sp)
    80005270:	02010113          	addi	sp,sp,32
    80005274:	00008067          	ret

0000000080005278 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005278:	fd010113          	addi	sp,sp,-48
    8000527c:	02113423          	sd	ra,40(sp)
    80005280:	02813023          	sd	s0,32(sp)
    80005284:	00913c23          	sd	s1,24(sp)
    80005288:	01213823          	sd	s2,16(sp)
    8000528c:	01313423          	sd	s3,8(sp)
    80005290:	01413023          	sd	s4,0(sp)
    80005294:	03010413          	addi	s0,sp,48
    80005298:	00050993          	mv	s3,a0
    8000529c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800052a0:	00000a13          	li	s4,0
    800052a4:	01c0006f          	j	800052c0 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800052a8:	ffffd097          	auipc	ra,0xffffd
    800052ac:	714080e7          	jalr	1812(ra) # 800029bc <_ZN6Thread8dispatchEv>
    800052b0:	0500006f          	j	80005300 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800052b4:	00a00513          	li	a0,10
    800052b8:	ffffc097          	auipc	ra,0xffffc
    800052bc:	318080e7          	jalr	792(ra) # 800015d0 <_Z4putcc>
    while (!threadEnd) {
    800052c0:	00007797          	auipc	a5,0x7
    800052c4:	a387a783          	lw	a5,-1480(a5) # 8000bcf8 <_ZL9threadEnd>
    800052c8:	06079263          	bnez	a5,8000532c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800052cc:	00893503          	ld	a0,8(s2)
    800052d0:	00001097          	auipc	ra,0x1
    800052d4:	b94080e7          	jalr	-1132(ra) # 80005e64 <_ZN9BufferCPP3getEv>
        i++;
    800052d8:	001a049b          	addiw	s1,s4,1
    800052dc:	00048a1b          	sext.w	s4,s1
        putc(key);
    800052e0:	0ff57513          	andi	a0,a0,255
    800052e4:	ffffc097          	auipc	ra,0xffffc
    800052e8:	2ec080e7          	jalr	748(ra) # 800015d0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800052ec:	00092703          	lw	a4,0(s2)
    800052f0:	0027179b          	slliw	a5,a4,0x2
    800052f4:	00e787bb          	addw	a5,a5,a4
    800052f8:	02f4e7bb          	remw	a5,s1,a5
    800052fc:	fa0786e3          	beqz	a5,800052a8 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005300:	05000793          	li	a5,80
    80005304:	02f4e4bb          	remw	s1,s1,a5
    80005308:	fa049ce3          	bnez	s1,800052c0 <_ZN12ConsumerSync8consumerEPv+0x48>
    8000530c:	fa9ff06f          	j	800052b4 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005310:	0209b783          	ld	a5,32(s3)
    80005314:	0087b503          	ld	a0,8(a5)
    80005318:	00001097          	auipc	ra,0x1
    8000531c:	b4c080e7          	jalr	-1204(ra) # 80005e64 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005320:	0ff57513          	andi	a0,a0,255
    80005324:	ffffe097          	auipc	ra,0xffffe
    80005328:	80c080e7          	jalr	-2036(ra) # 80002b30 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    8000532c:	0209b783          	ld	a5,32(s3)
    80005330:	0087b503          	ld	a0,8(a5)
    80005334:	00001097          	auipc	ra,0x1
    80005338:	bbc080e7          	jalr	-1092(ra) # 80005ef0 <_ZN9BufferCPP6getCntEv>
    8000533c:	fca04ae3          	bgtz	a0,80005310 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005340:	01093503          	ld	a0,16(s2)
    80005344:	ffffd097          	auipc	ra,0xffffd
    80005348:	730080e7          	jalr	1840(ra) # 80002a74 <_ZN9Semaphore6signalEv>
}
    8000534c:	02813083          	ld	ra,40(sp)
    80005350:	02013403          	ld	s0,32(sp)
    80005354:	01813483          	ld	s1,24(sp)
    80005358:	01013903          	ld	s2,16(sp)
    8000535c:	00813983          	ld	s3,8(sp)
    80005360:	00013a03          	ld	s4,0(sp)
    80005364:	03010113          	addi	sp,sp,48
    80005368:	00008067          	ret

000000008000536c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    8000536c:	f8010113          	addi	sp,sp,-128
    80005370:	06113c23          	sd	ra,120(sp)
    80005374:	06813823          	sd	s0,112(sp)
    80005378:	06913423          	sd	s1,104(sp)
    8000537c:	07213023          	sd	s2,96(sp)
    80005380:	05313c23          	sd	s3,88(sp)
    80005384:	05413823          	sd	s4,80(sp)
    80005388:	05513423          	sd	s5,72(sp)
    8000538c:	05613023          	sd	s6,64(sp)
    80005390:	03713c23          	sd	s7,56(sp)
    80005394:	03813823          	sd	s8,48(sp)
    80005398:	03913423          	sd	s9,40(sp)
    8000539c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800053a0:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800053a4:	00004517          	auipc	a0,0x4
    800053a8:	16c50513          	addi	a0,a0,364 # 80009510 <CONSOLE_STATUS+0x500>
    800053ac:	00000097          	auipc	ra,0x0
    800053b0:	604080e7          	jalr	1540(ra) # 800059b0 <_Z11printStringPKc>
    getString(input, 30);
    800053b4:	01e00593          	li	a1,30
    800053b8:	f8040493          	addi	s1,s0,-128
    800053bc:	00048513          	mv	a0,s1
    800053c0:	00000097          	auipc	ra,0x0
    800053c4:	678080e7          	jalr	1656(ra) # 80005a38 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800053c8:	00048513          	mv	a0,s1
    800053cc:	00000097          	auipc	ra,0x0
    800053d0:	744080e7          	jalr	1860(ra) # 80005b10 <_Z11stringToIntPKc>
    800053d4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800053d8:	00004517          	auipc	a0,0x4
    800053dc:	15850513          	addi	a0,a0,344 # 80009530 <CONSOLE_STATUS+0x520>
    800053e0:	00000097          	auipc	ra,0x0
    800053e4:	5d0080e7          	jalr	1488(ra) # 800059b0 <_Z11printStringPKc>
    getString(input, 30);
    800053e8:	01e00593          	li	a1,30
    800053ec:	00048513          	mv	a0,s1
    800053f0:	00000097          	auipc	ra,0x0
    800053f4:	648080e7          	jalr	1608(ra) # 80005a38 <_Z9getStringPci>
    n = stringToInt(input);
    800053f8:	00048513          	mv	a0,s1
    800053fc:	00000097          	auipc	ra,0x0
    80005400:	714080e7          	jalr	1812(ra) # 80005b10 <_Z11stringToIntPKc>
    80005404:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005408:	00004517          	auipc	a0,0x4
    8000540c:	14850513          	addi	a0,a0,328 # 80009550 <CONSOLE_STATUS+0x540>
    80005410:	00000097          	auipc	ra,0x0
    80005414:	5a0080e7          	jalr	1440(ra) # 800059b0 <_Z11printStringPKc>
    80005418:	00000613          	li	a2,0
    8000541c:	00a00593          	li	a1,10
    80005420:	00090513          	mv	a0,s2
    80005424:	00000097          	auipc	ra,0x0
    80005428:	73c080e7          	jalr	1852(ra) # 80005b60 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000542c:	00004517          	auipc	a0,0x4
    80005430:	13c50513          	addi	a0,a0,316 # 80009568 <CONSOLE_STATUS+0x558>
    80005434:	00000097          	auipc	ra,0x0
    80005438:	57c080e7          	jalr	1404(ra) # 800059b0 <_Z11printStringPKc>
    8000543c:	00000613          	li	a2,0
    80005440:	00a00593          	li	a1,10
    80005444:	00048513          	mv	a0,s1
    80005448:	00000097          	auipc	ra,0x0
    8000544c:	718080e7          	jalr	1816(ra) # 80005b60 <_Z8printIntiii>
    printString(".\n");
    80005450:	00004517          	auipc	a0,0x4
    80005454:	13050513          	addi	a0,a0,304 # 80009580 <CONSOLE_STATUS+0x570>
    80005458:	00000097          	auipc	ra,0x0
    8000545c:	558080e7          	jalr	1368(ra) # 800059b0 <_Z11printStringPKc>
    if(threadNum > n) {
    80005460:	0324c463          	blt	s1,s2,80005488 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005464:	03205c63          	blez	s2,8000549c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005468:	03800513          	li	a0,56
    8000546c:	ffffd097          	auipc	ra,0xffffd
    80005470:	1f4080e7          	jalr	500(ra) # 80002660 <_Znwm>
    80005474:	00050a93          	mv	s5,a0
    80005478:	00048593          	mv	a1,s1
    8000547c:	00001097          	auipc	ra,0x1
    80005480:	804080e7          	jalr	-2044(ra) # 80005c80 <_ZN9BufferCPPC1Ei>
    80005484:	0300006f          	j	800054b4 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005488:	00004517          	auipc	a0,0x4
    8000548c:	10050513          	addi	a0,a0,256 # 80009588 <CONSOLE_STATUS+0x578>
    80005490:	00000097          	auipc	ra,0x0
    80005494:	520080e7          	jalr	1312(ra) # 800059b0 <_Z11printStringPKc>
        return;
    80005498:	0140006f          	j	800054ac <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000549c:	00004517          	auipc	a0,0x4
    800054a0:	12c50513          	addi	a0,a0,300 # 800095c8 <CONSOLE_STATUS+0x5b8>
    800054a4:	00000097          	auipc	ra,0x0
    800054a8:	50c080e7          	jalr	1292(ra) # 800059b0 <_Z11printStringPKc>
        return;
    800054ac:	000b8113          	mv	sp,s7
    800054b0:	2380006f          	j	800056e8 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800054b4:	01000513          	li	a0,16
    800054b8:	ffffd097          	auipc	ra,0xffffd
    800054bc:	1a8080e7          	jalr	424(ra) # 80002660 <_Znwm>
    800054c0:	00050493          	mv	s1,a0
    800054c4:	00000593          	li	a1,0
    800054c8:	ffffd097          	auipc	ra,0xffffd
    800054cc:	544080e7          	jalr	1348(ra) # 80002a0c <_ZN9SemaphoreC1Ej>
    800054d0:	00007797          	auipc	a5,0x7
    800054d4:	8297b823          	sd	s1,-2000(a5) # 8000bd00 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800054d8:	00391793          	slli	a5,s2,0x3
    800054dc:	00f78793          	addi	a5,a5,15
    800054e0:	ff07f793          	andi	a5,a5,-16
    800054e4:	40f10133          	sub	sp,sp,a5
    800054e8:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800054ec:	0019071b          	addiw	a4,s2,1
    800054f0:	00171793          	slli	a5,a4,0x1
    800054f4:	00e787b3          	add	a5,a5,a4
    800054f8:	00379793          	slli	a5,a5,0x3
    800054fc:	00f78793          	addi	a5,a5,15
    80005500:	ff07f793          	andi	a5,a5,-16
    80005504:	40f10133          	sub	sp,sp,a5
    80005508:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    8000550c:	00191c13          	slli	s8,s2,0x1
    80005510:	012c07b3          	add	a5,s8,s2
    80005514:	00379793          	slli	a5,a5,0x3
    80005518:	00fa07b3          	add	a5,s4,a5
    8000551c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005520:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005524:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005528:	02800513          	li	a0,40
    8000552c:	ffffd097          	auipc	ra,0xffffd
    80005530:	134080e7          	jalr	308(ra) # 80002660 <_Znwm>
    80005534:	00050b13          	mv	s6,a0
    80005538:	012c0c33          	add	s8,s8,s2
    8000553c:	003c1c13          	slli	s8,s8,0x3
    80005540:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005544:	ffffd097          	auipc	ra,0xffffd
    80005548:	3f4080e7          	jalr	1012(ra) # 80002938 <_ZN6ThreadC1Ev>
    8000554c:	00006797          	auipc	a5,0x6
    80005550:	66c78793          	addi	a5,a5,1644 # 8000bbb8 <_ZTV12ConsumerSync+0x10>
    80005554:	00fb3023          	sd	a5,0(s6)
    80005558:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    8000555c:	000b0513          	mv	a0,s6
    80005560:	ffffd097          	auipc	ra,0xffffd
    80005564:	408080e7          	jalr	1032(ra) # 80002968 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005568:	00000493          	li	s1,0
    8000556c:	0380006f          	j	800055a4 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005570:	00006797          	auipc	a5,0x6
    80005574:	62078793          	addi	a5,a5,1568 # 8000bb90 <_ZTV12ProducerSync+0x10>
    80005578:	00fcb023          	sd	a5,0(s9)
    8000557c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005580:	00349793          	slli	a5,s1,0x3
    80005584:	00f987b3          	add	a5,s3,a5
    80005588:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    8000558c:	00349793          	slli	a5,s1,0x3
    80005590:	00f987b3          	add	a5,s3,a5
    80005594:	0007b503          	ld	a0,0(a5)
    80005598:	ffffd097          	auipc	ra,0xffffd
    8000559c:	3d0080e7          	jalr	976(ra) # 80002968 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800055a0:	0014849b          	addiw	s1,s1,1
    800055a4:	0b24d063          	bge	s1,s2,80005644 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800055a8:	00149793          	slli	a5,s1,0x1
    800055ac:	009787b3          	add	a5,a5,s1
    800055b0:	00379793          	slli	a5,a5,0x3
    800055b4:	00fa07b3          	add	a5,s4,a5
    800055b8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800055bc:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800055c0:	00006717          	auipc	a4,0x6
    800055c4:	74073703          	ld	a4,1856(a4) # 8000bd00 <_ZL10waitForAll>
    800055c8:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800055cc:	02905863          	blez	s1,800055fc <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800055d0:	02800513          	li	a0,40
    800055d4:	ffffd097          	auipc	ra,0xffffd
    800055d8:	08c080e7          	jalr	140(ra) # 80002660 <_Znwm>
    800055dc:	00050c93          	mv	s9,a0
    800055e0:	00149c13          	slli	s8,s1,0x1
    800055e4:	009c0c33          	add	s8,s8,s1
    800055e8:	003c1c13          	slli	s8,s8,0x3
    800055ec:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800055f0:	ffffd097          	auipc	ra,0xffffd
    800055f4:	348080e7          	jalr	840(ra) # 80002938 <_ZN6ThreadC1Ev>
    800055f8:	f79ff06f          	j	80005570 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800055fc:	02800513          	li	a0,40
    80005600:	ffffd097          	auipc	ra,0xffffd
    80005604:	060080e7          	jalr	96(ra) # 80002660 <_Znwm>
    80005608:	00050c93          	mv	s9,a0
    8000560c:	00149c13          	slli	s8,s1,0x1
    80005610:	009c0c33          	add	s8,s8,s1
    80005614:	003c1c13          	slli	s8,s8,0x3
    80005618:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    8000561c:	ffffd097          	auipc	ra,0xffffd
    80005620:	31c080e7          	jalr	796(ra) # 80002938 <_ZN6ThreadC1Ev>
    80005624:	00006797          	auipc	a5,0x6
    80005628:	54478793          	addi	a5,a5,1348 # 8000bb68 <_ZTV16ProducerKeyboard+0x10>
    8000562c:	00fcb023          	sd	a5,0(s9)
    80005630:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005634:	00349793          	slli	a5,s1,0x3
    80005638:	00f987b3          	add	a5,s3,a5
    8000563c:	0197b023          	sd	s9,0(a5)
    80005640:	f4dff06f          	j	8000558c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005644:	ffffd097          	auipc	ra,0xffffd
    80005648:	378080e7          	jalr	888(ra) # 800029bc <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    8000564c:	00000493          	li	s1,0
    80005650:	00994e63          	blt	s2,s1,8000566c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005654:	00006517          	auipc	a0,0x6
    80005658:	6ac53503          	ld	a0,1708(a0) # 8000bd00 <_ZL10waitForAll>
    8000565c:	ffffd097          	auipc	ra,0xffffd
    80005660:	3ec080e7          	jalr	1004(ra) # 80002a48 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005664:	0014849b          	addiw	s1,s1,1
    80005668:	fe9ff06f          	j	80005650 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    8000566c:	00000493          	li	s1,0
    80005670:	0080006f          	j	80005678 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005674:	0014849b          	addiw	s1,s1,1
    80005678:	0324d263          	bge	s1,s2,8000569c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    8000567c:	00349793          	slli	a5,s1,0x3
    80005680:	00f987b3          	add	a5,s3,a5
    80005684:	0007b503          	ld	a0,0(a5)
    80005688:	fe0506e3          	beqz	a0,80005674 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    8000568c:	00053783          	ld	a5,0(a0)
    80005690:	0087b783          	ld	a5,8(a5)
    80005694:	000780e7          	jalr	a5
    80005698:	fddff06f          	j	80005674 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    8000569c:	000b0a63          	beqz	s6,800056b0 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800056a0:	000b3783          	ld	a5,0(s6)
    800056a4:	0087b783          	ld	a5,8(a5)
    800056a8:	000b0513          	mv	a0,s6
    800056ac:	000780e7          	jalr	a5
    delete waitForAll;
    800056b0:	00006517          	auipc	a0,0x6
    800056b4:	65053503          	ld	a0,1616(a0) # 8000bd00 <_ZL10waitForAll>
    800056b8:	00050863          	beqz	a0,800056c8 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800056bc:	00053783          	ld	a5,0(a0)
    800056c0:	0087b783          	ld	a5,8(a5)
    800056c4:	000780e7          	jalr	a5
    delete buffer;
    800056c8:	000a8e63          	beqz	s5,800056e4 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800056cc:	000a8513          	mv	a0,s5
    800056d0:	00001097          	auipc	ra,0x1
    800056d4:	8a8080e7          	jalr	-1880(ra) # 80005f78 <_ZN9BufferCPPD1Ev>
    800056d8:	000a8513          	mv	a0,s5
    800056dc:	ffffd097          	auipc	ra,0xffffd
    800056e0:	fd4080e7          	jalr	-44(ra) # 800026b0 <_ZdlPv>
    800056e4:	000b8113          	mv	sp,s7

}
    800056e8:	f8040113          	addi	sp,s0,-128
    800056ec:	07813083          	ld	ra,120(sp)
    800056f0:	07013403          	ld	s0,112(sp)
    800056f4:	06813483          	ld	s1,104(sp)
    800056f8:	06013903          	ld	s2,96(sp)
    800056fc:	05813983          	ld	s3,88(sp)
    80005700:	05013a03          	ld	s4,80(sp)
    80005704:	04813a83          	ld	s5,72(sp)
    80005708:	04013b03          	ld	s6,64(sp)
    8000570c:	03813b83          	ld	s7,56(sp)
    80005710:	03013c03          	ld	s8,48(sp)
    80005714:	02813c83          	ld	s9,40(sp)
    80005718:	08010113          	addi	sp,sp,128
    8000571c:	00008067          	ret
    80005720:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005724:	000a8513          	mv	a0,s5
    80005728:	ffffd097          	auipc	ra,0xffffd
    8000572c:	f88080e7          	jalr	-120(ra) # 800026b0 <_ZdlPv>
    80005730:	00048513          	mv	a0,s1
    80005734:	00007097          	auipc	ra,0x7
    80005738:	6b4080e7          	jalr	1716(ra) # 8000cde8 <_Unwind_Resume>
    8000573c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005740:	00048513          	mv	a0,s1
    80005744:	ffffd097          	auipc	ra,0xffffd
    80005748:	f6c080e7          	jalr	-148(ra) # 800026b0 <_ZdlPv>
    8000574c:	00090513          	mv	a0,s2
    80005750:	00007097          	auipc	ra,0x7
    80005754:	698080e7          	jalr	1688(ra) # 8000cde8 <_Unwind_Resume>
    80005758:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    8000575c:	000b0513          	mv	a0,s6
    80005760:	ffffd097          	auipc	ra,0xffffd
    80005764:	f50080e7          	jalr	-176(ra) # 800026b0 <_ZdlPv>
    80005768:	00048513          	mv	a0,s1
    8000576c:	00007097          	auipc	ra,0x7
    80005770:	67c080e7          	jalr	1660(ra) # 8000cde8 <_Unwind_Resume>
    80005774:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005778:	000c8513          	mv	a0,s9
    8000577c:	ffffd097          	auipc	ra,0xffffd
    80005780:	f34080e7          	jalr	-204(ra) # 800026b0 <_ZdlPv>
    80005784:	00048513          	mv	a0,s1
    80005788:	00007097          	auipc	ra,0x7
    8000578c:	660080e7          	jalr	1632(ra) # 8000cde8 <_Unwind_Resume>
    80005790:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005794:	000c8513          	mv	a0,s9
    80005798:	ffffd097          	auipc	ra,0xffffd
    8000579c:	f18080e7          	jalr	-232(ra) # 800026b0 <_ZdlPv>
    800057a0:	00048513          	mv	a0,s1
    800057a4:	00007097          	auipc	ra,0x7
    800057a8:	644080e7          	jalr	1604(ra) # 8000cde8 <_Unwind_Resume>

00000000800057ac <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800057ac:	ff010113          	addi	sp,sp,-16
    800057b0:	00113423          	sd	ra,8(sp)
    800057b4:	00813023          	sd	s0,0(sp)
    800057b8:	01010413          	addi	s0,sp,16
    800057bc:	00006797          	auipc	a5,0x6
    800057c0:	3fc78793          	addi	a5,a5,1020 # 8000bbb8 <_ZTV12ConsumerSync+0x10>
    800057c4:	00f53023          	sd	a5,0(a0)
    800057c8:	ffffd097          	auipc	ra,0xffffd
    800057cc:	04c080e7          	jalr	76(ra) # 80002814 <_ZN6ThreadD1Ev>
    800057d0:	00813083          	ld	ra,8(sp)
    800057d4:	00013403          	ld	s0,0(sp)
    800057d8:	01010113          	addi	sp,sp,16
    800057dc:	00008067          	ret

00000000800057e0 <_ZN12ConsumerSyncD0Ev>:
    800057e0:	fe010113          	addi	sp,sp,-32
    800057e4:	00113c23          	sd	ra,24(sp)
    800057e8:	00813823          	sd	s0,16(sp)
    800057ec:	00913423          	sd	s1,8(sp)
    800057f0:	02010413          	addi	s0,sp,32
    800057f4:	00050493          	mv	s1,a0
    800057f8:	00006797          	auipc	a5,0x6
    800057fc:	3c078793          	addi	a5,a5,960 # 8000bbb8 <_ZTV12ConsumerSync+0x10>
    80005800:	00f53023          	sd	a5,0(a0)
    80005804:	ffffd097          	auipc	ra,0xffffd
    80005808:	010080e7          	jalr	16(ra) # 80002814 <_ZN6ThreadD1Ev>
    8000580c:	00048513          	mv	a0,s1
    80005810:	ffffd097          	auipc	ra,0xffffd
    80005814:	ea0080e7          	jalr	-352(ra) # 800026b0 <_ZdlPv>
    80005818:	01813083          	ld	ra,24(sp)
    8000581c:	01013403          	ld	s0,16(sp)
    80005820:	00813483          	ld	s1,8(sp)
    80005824:	02010113          	addi	sp,sp,32
    80005828:	00008067          	ret

000000008000582c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    8000582c:	ff010113          	addi	sp,sp,-16
    80005830:	00113423          	sd	ra,8(sp)
    80005834:	00813023          	sd	s0,0(sp)
    80005838:	01010413          	addi	s0,sp,16
    8000583c:	00006797          	auipc	a5,0x6
    80005840:	35478793          	addi	a5,a5,852 # 8000bb90 <_ZTV12ProducerSync+0x10>
    80005844:	00f53023          	sd	a5,0(a0)
    80005848:	ffffd097          	auipc	ra,0xffffd
    8000584c:	fcc080e7          	jalr	-52(ra) # 80002814 <_ZN6ThreadD1Ev>
    80005850:	00813083          	ld	ra,8(sp)
    80005854:	00013403          	ld	s0,0(sp)
    80005858:	01010113          	addi	sp,sp,16
    8000585c:	00008067          	ret

0000000080005860 <_ZN12ProducerSyncD0Ev>:
    80005860:	fe010113          	addi	sp,sp,-32
    80005864:	00113c23          	sd	ra,24(sp)
    80005868:	00813823          	sd	s0,16(sp)
    8000586c:	00913423          	sd	s1,8(sp)
    80005870:	02010413          	addi	s0,sp,32
    80005874:	00050493          	mv	s1,a0
    80005878:	00006797          	auipc	a5,0x6
    8000587c:	31878793          	addi	a5,a5,792 # 8000bb90 <_ZTV12ProducerSync+0x10>
    80005880:	00f53023          	sd	a5,0(a0)
    80005884:	ffffd097          	auipc	ra,0xffffd
    80005888:	f90080e7          	jalr	-112(ra) # 80002814 <_ZN6ThreadD1Ev>
    8000588c:	00048513          	mv	a0,s1
    80005890:	ffffd097          	auipc	ra,0xffffd
    80005894:	e20080e7          	jalr	-480(ra) # 800026b0 <_ZdlPv>
    80005898:	01813083          	ld	ra,24(sp)
    8000589c:	01013403          	ld	s0,16(sp)
    800058a0:	00813483          	ld	s1,8(sp)
    800058a4:	02010113          	addi	sp,sp,32
    800058a8:	00008067          	ret

00000000800058ac <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800058ac:	ff010113          	addi	sp,sp,-16
    800058b0:	00113423          	sd	ra,8(sp)
    800058b4:	00813023          	sd	s0,0(sp)
    800058b8:	01010413          	addi	s0,sp,16
    800058bc:	00006797          	auipc	a5,0x6
    800058c0:	2ac78793          	addi	a5,a5,684 # 8000bb68 <_ZTV16ProducerKeyboard+0x10>
    800058c4:	00f53023          	sd	a5,0(a0)
    800058c8:	ffffd097          	auipc	ra,0xffffd
    800058cc:	f4c080e7          	jalr	-180(ra) # 80002814 <_ZN6ThreadD1Ev>
    800058d0:	00813083          	ld	ra,8(sp)
    800058d4:	00013403          	ld	s0,0(sp)
    800058d8:	01010113          	addi	sp,sp,16
    800058dc:	00008067          	ret

00000000800058e0 <_ZN16ProducerKeyboardD0Ev>:
    800058e0:	fe010113          	addi	sp,sp,-32
    800058e4:	00113c23          	sd	ra,24(sp)
    800058e8:	00813823          	sd	s0,16(sp)
    800058ec:	00913423          	sd	s1,8(sp)
    800058f0:	02010413          	addi	s0,sp,32
    800058f4:	00050493          	mv	s1,a0
    800058f8:	00006797          	auipc	a5,0x6
    800058fc:	27078793          	addi	a5,a5,624 # 8000bb68 <_ZTV16ProducerKeyboard+0x10>
    80005900:	00f53023          	sd	a5,0(a0)
    80005904:	ffffd097          	auipc	ra,0xffffd
    80005908:	f10080e7          	jalr	-240(ra) # 80002814 <_ZN6ThreadD1Ev>
    8000590c:	00048513          	mv	a0,s1
    80005910:	ffffd097          	auipc	ra,0xffffd
    80005914:	da0080e7          	jalr	-608(ra) # 800026b0 <_ZdlPv>
    80005918:	01813083          	ld	ra,24(sp)
    8000591c:	01013403          	ld	s0,16(sp)
    80005920:	00813483          	ld	s1,8(sp)
    80005924:	02010113          	addi	sp,sp,32
    80005928:	00008067          	ret

000000008000592c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    8000592c:	ff010113          	addi	sp,sp,-16
    80005930:	00113423          	sd	ra,8(sp)
    80005934:	00813023          	sd	s0,0(sp)
    80005938:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    8000593c:	02053583          	ld	a1,32(a0)
    80005940:	fffff097          	auipc	ra,0xfffff
    80005944:	7e4080e7          	jalr	2020(ra) # 80005124 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005948:	00813083          	ld	ra,8(sp)
    8000594c:	00013403          	ld	s0,0(sp)
    80005950:	01010113          	addi	sp,sp,16
    80005954:	00008067          	ret

0000000080005958 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005958:	ff010113          	addi	sp,sp,-16
    8000595c:	00113423          	sd	ra,8(sp)
    80005960:	00813023          	sd	s0,0(sp)
    80005964:	01010413          	addi	s0,sp,16
        producer(td);
    80005968:	02053583          	ld	a1,32(a0)
    8000596c:	00000097          	auipc	ra,0x0
    80005970:	878080e7          	jalr	-1928(ra) # 800051e4 <_ZN12ProducerSync8producerEPv>
    }
    80005974:	00813083          	ld	ra,8(sp)
    80005978:	00013403          	ld	s0,0(sp)
    8000597c:	01010113          	addi	sp,sp,16
    80005980:	00008067          	ret

0000000080005984 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005984:	ff010113          	addi	sp,sp,-16
    80005988:	00113423          	sd	ra,8(sp)
    8000598c:	00813023          	sd	s0,0(sp)
    80005990:	01010413          	addi	s0,sp,16
        consumer(td);
    80005994:	02053583          	ld	a1,32(a0)
    80005998:	00000097          	auipc	ra,0x0
    8000599c:	8e0080e7          	jalr	-1824(ra) # 80005278 <_ZN12ConsumerSync8consumerEPv>
    }
    800059a0:	00813083          	ld	ra,8(sp)
    800059a4:	00013403          	ld	s0,0(sp)
    800059a8:	01010113          	addi	sp,sp,16
    800059ac:	00008067          	ret

00000000800059b0 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800059b0:	fe010113          	addi	sp,sp,-32
    800059b4:	00113c23          	sd	ra,24(sp)
    800059b8:	00813823          	sd	s0,16(sp)
    800059bc:	00913423          	sd	s1,8(sp)
    800059c0:	02010413          	addi	s0,sp,32
    800059c4:	00050493          	mv	s1,a0
    LOCK();
    800059c8:	00100613          	li	a2,1
    800059cc:	00000593          	li	a1,0
    800059d0:	00006517          	auipc	a0,0x6
    800059d4:	33850513          	addi	a0,a0,824 # 8000bd08 <lockPrint>
    800059d8:	ffffb097          	auipc	ra,0xffffb
    800059dc:	7cc080e7          	jalr	1996(ra) # 800011a4 <copy_and_swap>
    800059e0:	00050863          	beqz	a0,800059f0 <_Z11printStringPKc+0x40>
    800059e4:	ffffc097          	auipc	ra,0xffffc
    800059e8:	9a4080e7          	jalr	-1628(ra) # 80001388 <_Z15thread_dispatchv>
    800059ec:	fddff06f          	j	800059c8 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800059f0:	0004c503          	lbu	a0,0(s1)
    800059f4:	00050a63          	beqz	a0,80005a08 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800059f8:	ffffc097          	auipc	ra,0xffffc
    800059fc:	bd8080e7          	jalr	-1064(ra) # 800015d0 <_Z4putcc>
        string++;
    80005a00:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005a04:	fedff06f          	j	800059f0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005a08:	00000613          	li	a2,0
    80005a0c:	00100593          	li	a1,1
    80005a10:	00006517          	auipc	a0,0x6
    80005a14:	2f850513          	addi	a0,a0,760 # 8000bd08 <lockPrint>
    80005a18:	ffffb097          	auipc	ra,0xffffb
    80005a1c:	78c080e7          	jalr	1932(ra) # 800011a4 <copy_and_swap>
    80005a20:	fe0514e3          	bnez	a0,80005a08 <_Z11printStringPKc+0x58>
}
    80005a24:	01813083          	ld	ra,24(sp)
    80005a28:	01013403          	ld	s0,16(sp)
    80005a2c:	00813483          	ld	s1,8(sp)
    80005a30:	02010113          	addi	sp,sp,32
    80005a34:	00008067          	ret

0000000080005a38 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005a38:	fd010113          	addi	sp,sp,-48
    80005a3c:	02113423          	sd	ra,40(sp)
    80005a40:	02813023          	sd	s0,32(sp)
    80005a44:	00913c23          	sd	s1,24(sp)
    80005a48:	01213823          	sd	s2,16(sp)
    80005a4c:	01313423          	sd	s3,8(sp)
    80005a50:	01413023          	sd	s4,0(sp)
    80005a54:	03010413          	addi	s0,sp,48
    80005a58:	00050993          	mv	s3,a0
    80005a5c:	00058a13          	mv	s4,a1
    LOCK();
    80005a60:	00100613          	li	a2,1
    80005a64:	00000593          	li	a1,0
    80005a68:	00006517          	auipc	a0,0x6
    80005a6c:	2a050513          	addi	a0,a0,672 # 8000bd08 <lockPrint>
    80005a70:	ffffb097          	auipc	ra,0xffffb
    80005a74:	734080e7          	jalr	1844(ra) # 800011a4 <copy_and_swap>
    80005a78:	00050863          	beqz	a0,80005a88 <_Z9getStringPci+0x50>
    80005a7c:	ffffc097          	auipc	ra,0xffffc
    80005a80:	90c080e7          	jalr	-1780(ra) # 80001388 <_Z15thread_dispatchv>
    80005a84:	fddff06f          	j	80005a60 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005a88:	00000913          	li	s2,0
    80005a8c:	00090493          	mv	s1,s2
    80005a90:	0019091b          	addiw	s2,s2,1
    80005a94:	03495a63          	bge	s2,s4,80005ac8 <_Z9getStringPci+0x90>
        cc = getc();
    80005a98:	ffffc097          	auipc	ra,0xffffc
    80005a9c:	af8080e7          	jalr	-1288(ra) # 80001590 <_Z4getcv>
        if(cc < 1)
    80005aa0:	02050463          	beqz	a0,80005ac8 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005aa4:	009984b3          	add	s1,s3,s1
    80005aa8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005aac:	00a00793          	li	a5,10
    80005ab0:	00f50a63          	beq	a0,a5,80005ac4 <_Z9getStringPci+0x8c>
    80005ab4:	00d00793          	li	a5,13
    80005ab8:	fcf51ae3          	bne	a0,a5,80005a8c <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005abc:	00090493          	mv	s1,s2
    80005ac0:	0080006f          	j	80005ac8 <_Z9getStringPci+0x90>
    80005ac4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005ac8:	009984b3          	add	s1,s3,s1
    80005acc:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005ad0:	00000613          	li	a2,0
    80005ad4:	00100593          	li	a1,1
    80005ad8:	00006517          	auipc	a0,0x6
    80005adc:	23050513          	addi	a0,a0,560 # 8000bd08 <lockPrint>
    80005ae0:	ffffb097          	auipc	ra,0xffffb
    80005ae4:	6c4080e7          	jalr	1732(ra) # 800011a4 <copy_and_swap>
    80005ae8:	fe0514e3          	bnez	a0,80005ad0 <_Z9getStringPci+0x98>
    return buf;
}
    80005aec:	00098513          	mv	a0,s3
    80005af0:	02813083          	ld	ra,40(sp)
    80005af4:	02013403          	ld	s0,32(sp)
    80005af8:	01813483          	ld	s1,24(sp)
    80005afc:	01013903          	ld	s2,16(sp)
    80005b00:	00813983          	ld	s3,8(sp)
    80005b04:	00013a03          	ld	s4,0(sp)
    80005b08:	03010113          	addi	sp,sp,48
    80005b0c:	00008067          	ret

0000000080005b10 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005b10:	ff010113          	addi	sp,sp,-16
    80005b14:	00813423          	sd	s0,8(sp)
    80005b18:	01010413          	addi	s0,sp,16
    80005b1c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005b20:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005b24:	0006c603          	lbu	a2,0(a3)
    80005b28:	fd06071b          	addiw	a4,a2,-48
    80005b2c:	0ff77713          	andi	a4,a4,255
    80005b30:	00900793          	li	a5,9
    80005b34:	02e7e063          	bltu	a5,a4,80005b54 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005b38:	0025179b          	slliw	a5,a0,0x2
    80005b3c:	00a787bb          	addw	a5,a5,a0
    80005b40:	0017979b          	slliw	a5,a5,0x1
    80005b44:	00168693          	addi	a3,a3,1
    80005b48:	00c787bb          	addw	a5,a5,a2
    80005b4c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005b50:	fd5ff06f          	j	80005b24 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005b54:	00813403          	ld	s0,8(sp)
    80005b58:	01010113          	addi	sp,sp,16
    80005b5c:	00008067          	ret

0000000080005b60 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005b60:	fc010113          	addi	sp,sp,-64
    80005b64:	02113c23          	sd	ra,56(sp)
    80005b68:	02813823          	sd	s0,48(sp)
    80005b6c:	02913423          	sd	s1,40(sp)
    80005b70:	03213023          	sd	s2,32(sp)
    80005b74:	01313c23          	sd	s3,24(sp)
    80005b78:	04010413          	addi	s0,sp,64
    80005b7c:	00050493          	mv	s1,a0
    80005b80:	00058913          	mv	s2,a1
    80005b84:	00060993          	mv	s3,a2
    LOCK();
    80005b88:	00100613          	li	a2,1
    80005b8c:	00000593          	li	a1,0
    80005b90:	00006517          	auipc	a0,0x6
    80005b94:	17850513          	addi	a0,a0,376 # 8000bd08 <lockPrint>
    80005b98:	ffffb097          	auipc	ra,0xffffb
    80005b9c:	60c080e7          	jalr	1548(ra) # 800011a4 <copy_and_swap>
    80005ba0:	00050863          	beqz	a0,80005bb0 <_Z8printIntiii+0x50>
    80005ba4:	ffffb097          	auipc	ra,0xffffb
    80005ba8:	7e4080e7          	jalr	2020(ra) # 80001388 <_Z15thread_dispatchv>
    80005bac:	fddff06f          	j	80005b88 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005bb0:	00098463          	beqz	s3,80005bb8 <_Z8printIntiii+0x58>
    80005bb4:	0804c463          	bltz	s1,80005c3c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005bb8:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005bbc:	00000593          	li	a1,0
    }

    i = 0;
    80005bc0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005bc4:	0009079b          	sext.w	a5,s2
    80005bc8:	0325773b          	remuw	a4,a0,s2
    80005bcc:	00048613          	mv	a2,s1
    80005bd0:	0014849b          	addiw	s1,s1,1
    80005bd4:	02071693          	slli	a3,a4,0x20
    80005bd8:	0206d693          	srli	a3,a3,0x20
    80005bdc:	00006717          	auipc	a4,0x6
    80005be0:	ff470713          	addi	a4,a4,-12 # 8000bbd0 <digits>
    80005be4:	00d70733          	add	a4,a4,a3
    80005be8:	00074683          	lbu	a3,0(a4)
    80005bec:	fd040713          	addi	a4,s0,-48
    80005bf0:	00c70733          	add	a4,a4,a2
    80005bf4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005bf8:	0005071b          	sext.w	a4,a0
    80005bfc:	0325553b          	divuw	a0,a0,s2
    80005c00:	fcf772e3          	bgeu	a4,a5,80005bc4 <_Z8printIntiii+0x64>
    if(neg)
    80005c04:	00058c63          	beqz	a1,80005c1c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005c08:	fd040793          	addi	a5,s0,-48
    80005c0c:	009784b3          	add	s1,a5,s1
    80005c10:	02d00793          	li	a5,45
    80005c14:	fef48823          	sb	a5,-16(s1)
    80005c18:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005c1c:	fff4849b          	addiw	s1,s1,-1
    80005c20:	0204c463          	bltz	s1,80005c48 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005c24:	fd040793          	addi	a5,s0,-48
    80005c28:	009787b3          	add	a5,a5,s1
    80005c2c:	ff07c503          	lbu	a0,-16(a5)
    80005c30:	ffffc097          	auipc	ra,0xffffc
    80005c34:	9a0080e7          	jalr	-1632(ra) # 800015d0 <_Z4putcc>
    80005c38:	fe5ff06f          	j	80005c1c <_Z8printIntiii+0xbc>
        x = -xx;
    80005c3c:	4090053b          	negw	a0,s1
        neg = 1;
    80005c40:	00100593          	li	a1,1
        x = -xx;
    80005c44:	f7dff06f          	j	80005bc0 <_Z8printIntiii+0x60>

    UNLOCK();
    80005c48:	00000613          	li	a2,0
    80005c4c:	00100593          	li	a1,1
    80005c50:	00006517          	auipc	a0,0x6
    80005c54:	0b850513          	addi	a0,a0,184 # 8000bd08 <lockPrint>
    80005c58:	ffffb097          	auipc	ra,0xffffb
    80005c5c:	54c080e7          	jalr	1356(ra) # 800011a4 <copy_and_swap>
    80005c60:	fe0514e3          	bnez	a0,80005c48 <_Z8printIntiii+0xe8>
    80005c64:	03813083          	ld	ra,56(sp)
    80005c68:	03013403          	ld	s0,48(sp)
    80005c6c:	02813483          	ld	s1,40(sp)
    80005c70:	02013903          	ld	s2,32(sp)
    80005c74:	01813983          	ld	s3,24(sp)
    80005c78:	04010113          	addi	sp,sp,64
    80005c7c:	00008067          	ret

0000000080005c80 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005c80:	fd010113          	addi	sp,sp,-48
    80005c84:	02113423          	sd	ra,40(sp)
    80005c88:	02813023          	sd	s0,32(sp)
    80005c8c:	00913c23          	sd	s1,24(sp)
    80005c90:	01213823          	sd	s2,16(sp)
    80005c94:	01313423          	sd	s3,8(sp)
    80005c98:	03010413          	addi	s0,sp,48
    80005c9c:	00050493          	mv	s1,a0
    80005ca0:	00058913          	mv	s2,a1
    80005ca4:	0015879b          	addiw	a5,a1,1
    80005ca8:	0007851b          	sext.w	a0,a5
    80005cac:	00f4a023          	sw	a5,0(s1)
    80005cb0:	0004a823          	sw	zero,16(s1)
    80005cb4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005cb8:	00251513          	slli	a0,a0,0x2
    80005cbc:	ffffb097          	auipc	ra,0xffffb
    80005cc0:	53c080e7          	jalr	1340(ra) # 800011f8 <_Z9mem_allocm>
    80005cc4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005cc8:	01000513          	li	a0,16
    80005ccc:	ffffd097          	auipc	ra,0xffffd
    80005cd0:	994080e7          	jalr	-1644(ra) # 80002660 <_Znwm>
    80005cd4:	00050993          	mv	s3,a0
    80005cd8:	00000593          	li	a1,0
    80005cdc:	ffffd097          	auipc	ra,0xffffd
    80005ce0:	d30080e7          	jalr	-720(ra) # 80002a0c <_ZN9SemaphoreC1Ej>
    80005ce4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005ce8:	01000513          	li	a0,16
    80005cec:	ffffd097          	auipc	ra,0xffffd
    80005cf0:	974080e7          	jalr	-1676(ra) # 80002660 <_Znwm>
    80005cf4:	00050993          	mv	s3,a0
    80005cf8:	00090593          	mv	a1,s2
    80005cfc:	ffffd097          	auipc	ra,0xffffd
    80005d00:	d10080e7          	jalr	-752(ra) # 80002a0c <_ZN9SemaphoreC1Ej>
    80005d04:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005d08:	01000513          	li	a0,16
    80005d0c:	ffffd097          	auipc	ra,0xffffd
    80005d10:	954080e7          	jalr	-1708(ra) # 80002660 <_Znwm>
    80005d14:	00050913          	mv	s2,a0
    80005d18:	00100593          	li	a1,1
    80005d1c:	ffffd097          	auipc	ra,0xffffd
    80005d20:	cf0080e7          	jalr	-784(ra) # 80002a0c <_ZN9SemaphoreC1Ej>
    80005d24:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005d28:	01000513          	li	a0,16
    80005d2c:	ffffd097          	auipc	ra,0xffffd
    80005d30:	934080e7          	jalr	-1740(ra) # 80002660 <_Znwm>
    80005d34:	00050913          	mv	s2,a0
    80005d38:	00100593          	li	a1,1
    80005d3c:	ffffd097          	auipc	ra,0xffffd
    80005d40:	cd0080e7          	jalr	-816(ra) # 80002a0c <_ZN9SemaphoreC1Ej>
    80005d44:	0324b823          	sd	s2,48(s1)
}
    80005d48:	02813083          	ld	ra,40(sp)
    80005d4c:	02013403          	ld	s0,32(sp)
    80005d50:	01813483          	ld	s1,24(sp)
    80005d54:	01013903          	ld	s2,16(sp)
    80005d58:	00813983          	ld	s3,8(sp)
    80005d5c:	03010113          	addi	sp,sp,48
    80005d60:	00008067          	ret
    80005d64:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005d68:	00098513          	mv	a0,s3
    80005d6c:	ffffd097          	auipc	ra,0xffffd
    80005d70:	944080e7          	jalr	-1724(ra) # 800026b0 <_ZdlPv>
    80005d74:	00048513          	mv	a0,s1
    80005d78:	00007097          	auipc	ra,0x7
    80005d7c:	070080e7          	jalr	112(ra) # 8000cde8 <_Unwind_Resume>
    80005d80:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005d84:	00098513          	mv	a0,s3
    80005d88:	ffffd097          	auipc	ra,0xffffd
    80005d8c:	928080e7          	jalr	-1752(ra) # 800026b0 <_ZdlPv>
    80005d90:	00048513          	mv	a0,s1
    80005d94:	00007097          	auipc	ra,0x7
    80005d98:	054080e7          	jalr	84(ra) # 8000cde8 <_Unwind_Resume>
    80005d9c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005da0:	00090513          	mv	a0,s2
    80005da4:	ffffd097          	auipc	ra,0xffffd
    80005da8:	90c080e7          	jalr	-1780(ra) # 800026b0 <_ZdlPv>
    80005dac:	00048513          	mv	a0,s1
    80005db0:	00007097          	auipc	ra,0x7
    80005db4:	038080e7          	jalr	56(ra) # 8000cde8 <_Unwind_Resume>
    80005db8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005dbc:	00090513          	mv	a0,s2
    80005dc0:	ffffd097          	auipc	ra,0xffffd
    80005dc4:	8f0080e7          	jalr	-1808(ra) # 800026b0 <_ZdlPv>
    80005dc8:	00048513          	mv	a0,s1
    80005dcc:	00007097          	auipc	ra,0x7
    80005dd0:	01c080e7          	jalr	28(ra) # 8000cde8 <_Unwind_Resume>

0000000080005dd4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005dd4:	fe010113          	addi	sp,sp,-32
    80005dd8:	00113c23          	sd	ra,24(sp)
    80005ddc:	00813823          	sd	s0,16(sp)
    80005de0:	00913423          	sd	s1,8(sp)
    80005de4:	01213023          	sd	s2,0(sp)
    80005de8:	02010413          	addi	s0,sp,32
    80005dec:	00050493          	mv	s1,a0
    80005df0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005df4:	01853503          	ld	a0,24(a0)
    80005df8:	ffffd097          	auipc	ra,0xffffd
    80005dfc:	c50080e7          	jalr	-944(ra) # 80002a48 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005e00:	0304b503          	ld	a0,48(s1)
    80005e04:	ffffd097          	auipc	ra,0xffffd
    80005e08:	c44080e7          	jalr	-956(ra) # 80002a48 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005e0c:	0084b783          	ld	a5,8(s1)
    80005e10:	0144a703          	lw	a4,20(s1)
    80005e14:	00271713          	slli	a4,a4,0x2
    80005e18:	00e787b3          	add	a5,a5,a4
    80005e1c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005e20:	0144a783          	lw	a5,20(s1)
    80005e24:	0017879b          	addiw	a5,a5,1
    80005e28:	0004a703          	lw	a4,0(s1)
    80005e2c:	02e7e7bb          	remw	a5,a5,a4
    80005e30:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005e34:	0304b503          	ld	a0,48(s1)
    80005e38:	ffffd097          	auipc	ra,0xffffd
    80005e3c:	c3c080e7          	jalr	-964(ra) # 80002a74 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005e40:	0204b503          	ld	a0,32(s1)
    80005e44:	ffffd097          	auipc	ra,0xffffd
    80005e48:	c30080e7          	jalr	-976(ra) # 80002a74 <_ZN9Semaphore6signalEv>

}
    80005e4c:	01813083          	ld	ra,24(sp)
    80005e50:	01013403          	ld	s0,16(sp)
    80005e54:	00813483          	ld	s1,8(sp)
    80005e58:	00013903          	ld	s2,0(sp)
    80005e5c:	02010113          	addi	sp,sp,32
    80005e60:	00008067          	ret

0000000080005e64 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005e64:	fe010113          	addi	sp,sp,-32
    80005e68:	00113c23          	sd	ra,24(sp)
    80005e6c:	00813823          	sd	s0,16(sp)
    80005e70:	00913423          	sd	s1,8(sp)
    80005e74:	01213023          	sd	s2,0(sp)
    80005e78:	02010413          	addi	s0,sp,32
    80005e7c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005e80:	02053503          	ld	a0,32(a0)
    80005e84:	ffffd097          	auipc	ra,0xffffd
    80005e88:	bc4080e7          	jalr	-1084(ra) # 80002a48 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005e8c:	0284b503          	ld	a0,40(s1)
    80005e90:	ffffd097          	auipc	ra,0xffffd
    80005e94:	bb8080e7          	jalr	-1096(ra) # 80002a48 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005e98:	0084b703          	ld	a4,8(s1)
    80005e9c:	0104a783          	lw	a5,16(s1)
    80005ea0:	00279693          	slli	a3,a5,0x2
    80005ea4:	00d70733          	add	a4,a4,a3
    80005ea8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005eac:	0017879b          	addiw	a5,a5,1
    80005eb0:	0004a703          	lw	a4,0(s1)
    80005eb4:	02e7e7bb          	remw	a5,a5,a4
    80005eb8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005ebc:	0284b503          	ld	a0,40(s1)
    80005ec0:	ffffd097          	auipc	ra,0xffffd
    80005ec4:	bb4080e7          	jalr	-1100(ra) # 80002a74 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005ec8:	0184b503          	ld	a0,24(s1)
    80005ecc:	ffffd097          	auipc	ra,0xffffd
    80005ed0:	ba8080e7          	jalr	-1112(ra) # 80002a74 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005ed4:	00090513          	mv	a0,s2
    80005ed8:	01813083          	ld	ra,24(sp)
    80005edc:	01013403          	ld	s0,16(sp)
    80005ee0:	00813483          	ld	s1,8(sp)
    80005ee4:	00013903          	ld	s2,0(sp)
    80005ee8:	02010113          	addi	sp,sp,32
    80005eec:	00008067          	ret

0000000080005ef0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005ef0:	fe010113          	addi	sp,sp,-32
    80005ef4:	00113c23          	sd	ra,24(sp)
    80005ef8:	00813823          	sd	s0,16(sp)
    80005efc:	00913423          	sd	s1,8(sp)
    80005f00:	01213023          	sd	s2,0(sp)
    80005f04:	02010413          	addi	s0,sp,32
    80005f08:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005f0c:	02853503          	ld	a0,40(a0)
    80005f10:	ffffd097          	auipc	ra,0xffffd
    80005f14:	b38080e7          	jalr	-1224(ra) # 80002a48 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005f18:	0304b503          	ld	a0,48(s1)
    80005f1c:	ffffd097          	auipc	ra,0xffffd
    80005f20:	b2c080e7          	jalr	-1236(ra) # 80002a48 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005f24:	0144a783          	lw	a5,20(s1)
    80005f28:	0104a903          	lw	s2,16(s1)
    80005f2c:	0327ce63          	blt	a5,s2,80005f68 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005f30:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005f34:	0304b503          	ld	a0,48(s1)
    80005f38:	ffffd097          	auipc	ra,0xffffd
    80005f3c:	b3c080e7          	jalr	-1220(ra) # 80002a74 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005f40:	0284b503          	ld	a0,40(s1)
    80005f44:	ffffd097          	auipc	ra,0xffffd
    80005f48:	b30080e7          	jalr	-1232(ra) # 80002a74 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005f4c:	00090513          	mv	a0,s2
    80005f50:	01813083          	ld	ra,24(sp)
    80005f54:	01013403          	ld	s0,16(sp)
    80005f58:	00813483          	ld	s1,8(sp)
    80005f5c:	00013903          	ld	s2,0(sp)
    80005f60:	02010113          	addi	sp,sp,32
    80005f64:	00008067          	ret
        ret = cap - head + tail;
    80005f68:	0004a703          	lw	a4,0(s1)
    80005f6c:	4127093b          	subw	s2,a4,s2
    80005f70:	00f9093b          	addw	s2,s2,a5
    80005f74:	fc1ff06f          	j	80005f34 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005f78 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005f78:	fe010113          	addi	sp,sp,-32
    80005f7c:	00113c23          	sd	ra,24(sp)
    80005f80:	00813823          	sd	s0,16(sp)
    80005f84:	00913423          	sd	s1,8(sp)
    80005f88:	02010413          	addi	s0,sp,32
    80005f8c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005f90:	00a00513          	li	a0,10
    80005f94:	ffffd097          	auipc	ra,0xffffd
    80005f98:	b9c080e7          	jalr	-1124(ra) # 80002b30 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005f9c:	00003517          	auipc	a0,0x3
    80005fa0:	73450513          	addi	a0,a0,1844 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80005fa4:	00000097          	auipc	ra,0x0
    80005fa8:	a0c080e7          	jalr	-1524(ra) # 800059b0 <_Z11printStringPKc>
    while (getCnt()) {
    80005fac:	00048513          	mv	a0,s1
    80005fb0:	00000097          	auipc	ra,0x0
    80005fb4:	f40080e7          	jalr	-192(ra) # 80005ef0 <_ZN9BufferCPP6getCntEv>
    80005fb8:	02050c63          	beqz	a0,80005ff0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005fbc:	0084b783          	ld	a5,8(s1)
    80005fc0:	0104a703          	lw	a4,16(s1)
    80005fc4:	00271713          	slli	a4,a4,0x2
    80005fc8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005fcc:	0007c503          	lbu	a0,0(a5)
    80005fd0:	ffffd097          	auipc	ra,0xffffd
    80005fd4:	b60080e7          	jalr	-1184(ra) # 80002b30 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005fd8:	0104a783          	lw	a5,16(s1)
    80005fdc:	0017879b          	addiw	a5,a5,1
    80005fe0:	0004a703          	lw	a4,0(s1)
    80005fe4:	02e7e7bb          	remw	a5,a5,a4
    80005fe8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005fec:	fc1ff06f          	j	80005fac <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005ff0:	02100513          	li	a0,33
    80005ff4:	ffffd097          	auipc	ra,0xffffd
    80005ff8:	b3c080e7          	jalr	-1220(ra) # 80002b30 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005ffc:	00a00513          	li	a0,10
    80006000:	ffffd097          	auipc	ra,0xffffd
    80006004:	b30080e7          	jalr	-1232(ra) # 80002b30 <_ZN7Console4putcEc>
    mem_free(buffer);
    80006008:	0084b503          	ld	a0,8(s1)
    8000600c:	ffffb097          	auipc	ra,0xffffb
    80006010:	238080e7          	jalr	568(ra) # 80001244 <_Z8mem_freePv>
    delete itemAvailable;
    80006014:	0204b503          	ld	a0,32(s1)
    80006018:	00050863          	beqz	a0,80006028 <_ZN9BufferCPPD1Ev+0xb0>
    8000601c:	00053783          	ld	a5,0(a0)
    80006020:	0087b783          	ld	a5,8(a5)
    80006024:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006028:	0184b503          	ld	a0,24(s1)
    8000602c:	00050863          	beqz	a0,8000603c <_ZN9BufferCPPD1Ev+0xc4>
    80006030:	00053783          	ld	a5,0(a0)
    80006034:	0087b783          	ld	a5,8(a5)
    80006038:	000780e7          	jalr	a5
    delete mutexTail;
    8000603c:	0304b503          	ld	a0,48(s1)
    80006040:	00050863          	beqz	a0,80006050 <_ZN9BufferCPPD1Ev+0xd8>
    80006044:	00053783          	ld	a5,0(a0)
    80006048:	0087b783          	ld	a5,8(a5)
    8000604c:	000780e7          	jalr	a5
    delete mutexHead;
    80006050:	0284b503          	ld	a0,40(s1)
    80006054:	00050863          	beqz	a0,80006064 <_ZN9BufferCPPD1Ev+0xec>
    80006058:	00053783          	ld	a5,0(a0)
    8000605c:	0087b783          	ld	a5,8(a5)
    80006060:	000780e7          	jalr	a5
}
    80006064:	01813083          	ld	ra,24(sp)
    80006068:	01013403          	ld	s0,16(sp)
    8000606c:	00813483          	ld	s1,8(sp)
    80006070:	02010113          	addi	sp,sp,32
    80006074:	00008067          	ret

0000000080006078 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006078:	fe010113          	addi	sp,sp,-32
    8000607c:	00113c23          	sd	ra,24(sp)
    80006080:	00813823          	sd	s0,16(sp)
    80006084:	00913423          	sd	s1,8(sp)
    80006088:	01213023          	sd	s2,0(sp)
    8000608c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006090:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006094:	00600493          	li	s1,6
    while (--i > 0) {
    80006098:	fff4849b          	addiw	s1,s1,-1
    8000609c:	04905463          	blez	s1,800060e4 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800060a0:	00003517          	auipc	a0,0x3
    800060a4:	64850513          	addi	a0,a0,1608 # 800096e8 <CONSOLE_STATUS+0x6d8>
    800060a8:	00000097          	auipc	ra,0x0
    800060ac:	908080e7          	jalr	-1784(ra) # 800059b0 <_Z11printStringPKc>
        printInt(sleep_time);
    800060b0:	00000613          	li	a2,0
    800060b4:	00a00593          	li	a1,10
    800060b8:	0009051b          	sext.w	a0,s2
    800060bc:	00000097          	auipc	ra,0x0
    800060c0:	aa4080e7          	jalr	-1372(ra) # 80005b60 <_Z8printIntiii>
        printString(" !\n");
    800060c4:	00003517          	auipc	a0,0x3
    800060c8:	62c50513          	addi	a0,a0,1580 # 800096f0 <CONSOLE_STATUS+0x6e0>
    800060cc:	00000097          	auipc	ra,0x0
    800060d0:	8e4080e7          	jalr	-1820(ra) # 800059b0 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800060d4:	00090513          	mv	a0,s2
    800060d8:	ffffb097          	auipc	ra,0xffffb
    800060dc:	478080e7          	jalr	1144(ra) # 80001550 <_Z10time_sleepm>
    while (--i > 0) {
    800060e0:	fb9ff06f          	j	80006098 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800060e4:	00a00793          	li	a5,10
    800060e8:	02f95933          	divu	s2,s2,a5
    800060ec:	fff90913          	addi	s2,s2,-1
    800060f0:	00006797          	auipc	a5,0x6
    800060f4:	c2078793          	addi	a5,a5,-992 # 8000bd10 <_ZL8finished>
    800060f8:	01278933          	add	s2,a5,s2
    800060fc:	00100793          	li	a5,1
    80006100:	00f90023          	sb	a5,0(s2)
}
    80006104:	01813083          	ld	ra,24(sp)
    80006108:	01013403          	ld	s0,16(sp)
    8000610c:	00813483          	ld	s1,8(sp)
    80006110:	00013903          	ld	s2,0(sp)
    80006114:	02010113          	addi	sp,sp,32
    80006118:	00008067          	ret

000000008000611c <_Z12testSleepingv>:

void testSleeping() {
    8000611c:	fc010113          	addi	sp,sp,-64
    80006120:	02113c23          	sd	ra,56(sp)
    80006124:	02813823          	sd	s0,48(sp)
    80006128:	02913423          	sd	s1,40(sp)
    8000612c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006130:	00a00793          	li	a5,10
    80006134:	fcf43823          	sd	a5,-48(s0)
    80006138:	01400793          	li	a5,20
    8000613c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006140:	00000493          	li	s1,0
    80006144:	02c0006f          	j	80006170 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006148:	00349793          	slli	a5,s1,0x3
    8000614c:	fd040613          	addi	a2,s0,-48
    80006150:	00f60633          	add	a2,a2,a5
    80006154:	00000597          	auipc	a1,0x0
    80006158:	f2458593          	addi	a1,a1,-220 # 80006078 <_ZL9sleepyRunPv>
    8000615c:	fc040513          	addi	a0,s0,-64
    80006160:	00f50533          	add	a0,a0,a5
    80006164:	ffffb097          	auipc	ra,0xffffb
    80006168:	120080e7          	jalr	288(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000616c:	0014849b          	addiw	s1,s1,1
    80006170:	00100793          	li	a5,1
    80006174:	fc97dae3          	bge	a5,s1,80006148 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006178:	00006797          	auipc	a5,0x6
    8000617c:	b987c783          	lbu	a5,-1128(a5) # 8000bd10 <_ZL8finished>
    80006180:	fe078ce3          	beqz	a5,80006178 <_Z12testSleepingv+0x5c>
    80006184:	00006797          	auipc	a5,0x6
    80006188:	b8d7c783          	lbu	a5,-1139(a5) # 8000bd11 <_ZL8finished+0x1>
    8000618c:	fe0786e3          	beqz	a5,80006178 <_Z12testSleepingv+0x5c>
}
    80006190:	03813083          	ld	ra,56(sp)
    80006194:	03013403          	ld	s0,48(sp)
    80006198:	02813483          	ld	s1,40(sp)
    8000619c:	04010113          	addi	sp,sp,64
    800061a0:	00008067          	ret

00000000800061a4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800061a4:	fe010113          	addi	sp,sp,-32
    800061a8:	00113c23          	sd	ra,24(sp)
    800061ac:	00813823          	sd	s0,16(sp)
    800061b0:	00913423          	sd	s1,8(sp)
    800061b4:	01213023          	sd	s2,0(sp)
    800061b8:	02010413          	addi	s0,sp,32
    800061bc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800061c0:	00100793          	li	a5,1
    800061c4:	02a7f863          	bgeu	a5,a0,800061f4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800061c8:	00a00793          	li	a5,10
    800061cc:	02f577b3          	remu	a5,a0,a5
    800061d0:	02078e63          	beqz	a5,8000620c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800061d4:	fff48513          	addi	a0,s1,-1
    800061d8:	00000097          	auipc	ra,0x0
    800061dc:	fcc080e7          	jalr	-52(ra) # 800061a4 <_ZL9fibonaccim>
    800061e0:	00050913          	mv	s2,a0
    800061e4:	ffe48513          	addi	a0,s1,-2
    800061e8:	00000097          	auipc	ra,0x0
    800061ec:	fbc080e7          	jalr	-68(ra) # 800061a4 <_ZL9fibonaccim>
    800061f0:	00a90533          	add	a0,s2,a0
}
    800061f4:	01813083          	ld	ra,24(sp)
    800061f8:	01013403          	ld	s0,16(sp)
    800061fc:	00813483          	ld	s1,8(sp)
    80006200:	00013903          	ld	s2,0(sp)
    80006204:	02010113          	addi	sp,sp,32
    80006208:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000620c:	ffffb097          	auipc	ra,0xffffb
    80006210:	17c080e7          	jalr	380(ra) # 80001388 <_Z15thread_dispatchv>
    80006214:	fc1ff06f          	j	800061d4 <_ZL9fibonaccim+0x30>

0000000080006218 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006218:	fe010113          	addi	sp,sp,-32
    8000621c:	00113c23          	sd	ra,24(sp)
    80006220:	00813823          	sd	s0,16(sp)
    80006224:	00913423          	sd	s1,8(sp)
    80006228:	01213023          	sd	s2,0(sp)
    8000622c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006230:	00a00493          	li	s1,10
    80006234:	0400006f          	j	80006274 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006238:	00003517          	auipc	a0,0x3
    8000623c:	22050513          	addi	a0,a0,544 # 80009458 <CONSOLE_STATUS+0x448>
    80006240:	fffff097          	auipc	ra,0xfffff
    80006244:	770080e7          	jalr	1904(ra) # 800059b0 <_Z11printStringPKc>
    80006248:	00000613          	li	a2,0
    8000624c:	00a00593          	li	a1,10
    80006250:	00048513          	mv	a0,s1
    80006254:	00000097          	auipc	ra,0x0
    80006258:	90c080e7          	jalr	-1780(ra) # 80005b60 <_Z8printIntiii>
    8000625c:	00003517          	auipc	a0,0x3
    80006260:	08450513          	addi	a0,a0,132 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80006264:	fffff097          	auipc	ra,0xfffff
    80006268:	74c080e7          	jalr	1868(ra) # 800059b0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000626c:	0014849b          	addiw	s1,s1,1
    80006270:	0ff4f493          	andi	s1,s1,255
    80006274:	00c00793          	li	a5,12
    80006278:	fc97f0e3          	bgeu	a5,s1,80006238 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000627c:	00003517          	auipc	a0,0x3
    80006280:	3c450513          	addi	a0,a0,964 # 80009640 <CONSOLE_STATUS+0x630>
    80006284:	fffff097          	auipc	ra,0xfffff
    80006288:	72c080e7          	jalr	1836(ra) # 800059b0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000628c:	00500313          	li	t1,5
    thread_dispatch();
    80006290:	ffffb097          	auipc	ra,0xffffb
    80006294:	0f8080e7          	jalr	248(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006298:	01000513          	li	a0,16
    8000629c:	00000097          	auipc	ra,0x0
    800062a0:	f08080e7          	jalr	-248(ra) # 800061a4 <_ZL9fibonaccim>
    800062a4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800062a8:	00003517          	auipc	a0,0x3
    800062ac:	3a850513          	addi	a0,a0,936 # 80009650 <CONSOLE_STATUS+0x640>
    800062b0:	fffff097          	auipc	ra,0xfffff
    800062b4:	700080e7          	jalr	1792(ra) # 800059b0 <_Z11printStringPKc>
    800062b8:	00000613          	li	a2,0
    800062bc:	00a00593          	li	a1,10
    800062c0:	0009051b          	sext.w	a0,s2
    800062c4:	00000097          	auipc	ra,0x0
    800062c8:	89c080e7          	jalr	-1892(ra) # 80005b60 <_Z8printIntiii>
    800062cc:	00003517          	auipc	a0,0x3
    800062d0:	01450513          	addi	a0,a0,20 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800062d4:	fffff097          	auipc	ra,0xfffff
    800062d8:	6dc080e7          	jalr	1756(ra) # 800059b0 <_Z11printStringPKc>
    800062dc:	0400006f          	j	8000631c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800062e0:	00003517          	auipc	a0,0x3
    800062e4:	17850513          	addi	a0,a0,376 # 80009458 <CONSOLE_STATUS+0x448>
    800062e8:	fffff097          	auipc	ra,0xfffff
    800062ec:	6c8080e7          	jalr	1736(ra) # 800059b0 <_Z11printStringPKc>
    800062f0:	00000613          	li	a2,0
    800062f4:	00a00593          	li	a1,10
    800062f8:	00048513          	mv	a0,s1
    800062fc:	00000097          	auipc	ra,0x0
    80006300:	864080e7          	jalr	-1948(ra) # 80005b60 <_Z8printIntiii>
    80006304:	00003517          	auipc	a0,0x3
    80006308:	fdc50513          	addi	a0,a0,-36 # 800092e0 <CONSOLE_STATUS+0x2d0>
    8000630c:	fffff097          	auipc	ra,0xfffff
    80006310:	6a4080e7          	jalr	1700(ra) # 800059b0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006314:	0014849b          	addiw	s1,s1,1
    80006318:	0ff4f493          	andi	s1,s1,255
    8000631c:	00f00793          	li	a5,15
    80006320:	fc97f0e3          	bgeu	a5,s1,800062e0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006324:	00003517          	auipc	a0,0x3
    80006328:	33c50513          	addi	a0,a0,828 # 80009660 <CONSOLE_STATUS+0x650>
    8000632c:	fffff097          	auipc	ra,0xfffff
    80006330:	684080e7          	jalr	1668(ra) # 800059b0 <_Z11printStringPKc>
    finishedD = true;
    80006334:	00100793          	li	a5,1
    80006338:	00006717          	auipc	a4,0x6
    8000633c:	9cf70d23          	sb	a5,-1574(a4) # 8000bd12 <_ZL9finishedD>
    thread_dispatch();
    80006340:	ffffb097          	auipc	ra,0xffffb
    80006344:	048080e7          	jalr	72(ra) # 80001388 <_Z15thread_dispatchv>
}
    80006348:	01813083          	ld	ra,24(sp)
    8000634c:	01013403          	ld	s0,16(sp)
    80006350:	00813483          	ld	s1,8(sp)
    80006354:	00013903          	ld	s2,0(sp)
    80006358:	02010113          	addi	sp,sp,32
    8000635c:	00008067          	ret

0000000080006360 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006360:	fe010113          	addi	sp,sp,-32
    80006364:	00113c23          	sd	ra,24(sp)
    80006368:	00813823          	sd	s0,16(sp)
    8000636c:	00913423          	sd	s1,8(sp)
    80006370:	01213023          	sd	s2,0(sp)
    80006374:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006378:	00000493          	li	s1,0
    8000637c:	0400006f          	j	800063bc <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006380:	00003517          	auipc	a0,0x3
    80006384:	0a050513          	addi	a0,a0,160 # 80009420 <CONSOLE_STATUS+0x410>
    80006388:	fffff097          	auipc	ra,0xfffff
    8000638c:	628080e7          	jalr	1576(ra) # 800059b0 <_Z11printStringPKc>
    80006390:	00000613          	li	a2,0
    80006394:	00a00593          	li	a1,10
    80006398:	00048513          	mv	a0,s1
    8000639c:	fffff097          	auipc	ra,0xfffff
    800063a0:	7c4080e7          	jalr	1988(ra) # 80005b60 <_Z8printIntiii>
    800063a4:	00003517          	auipc	a0,0x3
    800063a8:	f3c50513          	addi	a0,a0,-196 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800063ac:	fffff097          	auipc	ra,0xfffff
    800063b0:	604080e7          	jalr	1540(ra) # 800059b0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800063b4:	0014849b          	addiw	s1,s1,1
    800063b8:	0ff4f493          	andi	s1,s1,255
    800063bc:	00200793          	li	a5,2
    800063c0:	fc97f0e3          	bgeu	a5,s1,80006380 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800063c4:	00003517          	auipc	a0,0x3
    800063c8:	25450513          	addi	a0,a0,596 # 80009618 <CONSOLE_STATUS+0x608>
    800063cc:	fffff097          	auipc	ra,0xfffff
    800063d0:	5e4080e7          	jalr	1508(ra) # 800059b0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800063d4:	00700313          	li	t1,7
    thread_dispatch();
    800063d8:	ffffb097          	auipc	ra,0xffffb
    800063dc:	fb0080e7          	jalr	-80(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800063e0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800063e4:	00003517          	auipc	a0,0x3
    800063e8:	24450513          	addi	a0,a0,580 # 80009628 <CONSOLE_STATUS+0x618>
    800063ec:	fffff097          	auipc	ra,0xfffff
    800063f0:	5c4080e7          	jalr	1476(ra) # 800059b0 <_Z11printStringPKc>
    800063f4:	00000613          	li	a2,0
    800063f8:	00a00593          	li	a1,10
    800063fc:	0009051b          	sext.w	a0,s2
    80006400:	fffff097          	auipc	ra,0xfffff
    80006404:	760080e7          	jalr	1888(ra) # 80005b60 <_Z8printIntiii>
    80006408:	00003517          	auipc	a0,0x3
    8000640c:	ed850513          	addi	a0,a0,-296 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80006410:	fffff097          	auipc	ra,0xfffff
    80006414:	5a0080e7          	jalr	1440(ra) # 800059b0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006418:	00c00513          	li	a0,12
    8000641c:	00000097          	auipc	ra,0x0
    80006420:	d88080e7          	jalr	-632(ra) # 800061a4 <_ZL9fibonaccim>
    80006424:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006428:	00003517          	auipc	a0,0x3
    8000642c:	20850513          	addi	a0,a0,520 # 80009630 <CONSOLE_STATUS+0x620>
    80006430:	fffff097          	auipc	ra,0xfffff
    80006434:	580080e7          	jalr	1408(ra) # 800059b0 <_Z11printStringPKc>
    80006438:	00000613          	li	a2,0
    8000643c:	00a00593          	li	a1,10
    80006440:	0009051b          	sext.w	a0,s2
    80006444:	fffff097          	auipc	ra,0xfffff
    80006448:	71c080e7          	jalr	1820(ra) # 80005b60 <_Z8printIntiii>
    8000644c:	00003517          	auipc	a0,0x3
    80006450:	e9450513          	addi	a0,a0,-364 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80006454:	fffff097          	auipc	ra,0xfffff
    80006458:	55c080e7          	jalr	1372(ra) # 800059b0 <_Z11printStringPKc>
    8000645c:	0400006f          	j	8000649c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006460:	00003517          	auipc	a0,0x3
    80006464:	fc050513          	addi	a0,a0,-64 # 80009420 <CONSOLE_STATUS+0x410>
    80006468:	fffff097          	auipc	ra,0xfffff
    8000646c:	548080e7          	jalr	1352(ra) # 800059b0 <_Z11printStringPKc>
    80006470:	00000613          	li	a2,0
    80006474:	00a00593          	li	a1,10
    80006478:	00048513          	mv	a0,s1
    8000647c:	fffff097          	auipc	ra,0xfffff
    80006480:	6e4080e7          	jalr	1764(ra) # 80005b60 <_Z8printIntiii>
    80006484:	00003517          	auipc	a0,0x3
    80006488:	e5c50513          	addi	a0,a0,-420 # 800092e0 <CONSOLE_STATUS+0x2d0>
    8000648c:	fffff097          	auipc	ra,0xfffff
    80006490:	524080e7          	jalr	1316(ra) # 800059b0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006494:	0014849b          	addiw	s1,s1,1
    80006498:	0ff4f493          	andi	s1,s1,255
    8000649c:	00500793          	li	a5,5
    800064a0:	fc97f0e3          	bgeu	a5,s1,80006460 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800064a4:	00003517          	auipc	a0,0x3
    800064a8:	15450513          	addi	a0,a0,340 # 800095f8 <CONSOLE_STATUS+0x5e8>
    800064ac:	fffff097          	auipc	ra,0xfffff
    800064b0:	504080e7          	jalr	1284(ra) # 800059b0 <_Z11printStringPKc>
    finishedC = true;
    800064b4:	00100793          	li	a5,1
    800064b8:	00006717          	auipc	a4,0x6
    800064bc:	84f70da3          	sb	a5,-1957(a4) # 8000bd13 <_ZL9finishedC>
    thread_dispatch();
    800064c0:	ffffb097          	auipc	ra,0xffffb
    800064c4:	ec8080e7          	jalr	-312(ra) # 80001388 <_Z15thread_dispatchv>
}
    800064c8:	01813083          	ld	ra,24(sp)
    800064cc:	01013403          	ld	s0,16(sp)
    800064d0:	00813483          	ld	s1,8(sp)
    800064d4:	00013903          	ld	s2,0(sp)
    800064d8:	02010113          	addi	sp,sp,32
    800064dc:	00008067          	ret

00000000800064e0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800064e0:	fe010113          	addi	sp,sp,-32
    800064e4:	00113c23          	sd	ra,24(sp)
    800064e8:	00813823          	sd	s0,16(sp)
    800064ec:	00913423          	sd	s1,8(sp)
    800064f0:	01213023          	sd	s2,0(sp)
    800064f4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800064f8:	00000913          	li	s2,0
    800064fc:	0400006f          	j	8000653c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006500:	ffffb097          	auipc	ra,0xffffb
    80006504:	e88080e7          	jalr	-376(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006508:	00148493          	addi	s1,s1,1
    8000650c:	000027b7          	lui	a5,0x2
    80006510:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006514:	0097ee63          	bltu	a5,s1,80006530 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006518:	00000713          	li	a4,0
    8000651c:	000077b7          	lui	a5,0x7
    80006520:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006524:	fce7eee3          	bltu	a5,a4,80006500 <_ZL11workerBodyBPv+0x20>
    80006528:	00170713          	addi	a4,a4,1
    8000652c:	ff1ff06f          	j	8000651c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006530:	00a00793          	li	a5,10
    80006534:	04f90663          	beq	s2,a5,80006580 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006538:	00190913          	addi	s2,s2,1
    8000653c:	00f00793          	li	a5,15
    80006540:	0527e463          	bltu	a5,s2,80006588 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006544:	00003517          	auipc	a0,0x3
    80006548:	ea450513          	addi	a0,a0,-348 # 800093e8 <CONSOLE_STATUS+0x3d8>
    8000654c:	fffff097          	auipc	ra,0xfffff
    80006550:	464080e7          	jalr	1124(ra) # 800059b0 <_Z11printStringPKc>
    80006554:	00000613          	li	a2,0
    80006558:	00a00593          	li	a1,10
    8000655c:	0009051b          	sext.w	a0,s2
    80006560:	fffff097          	auipc	ra,0xfffff
    80006564:	600080e7          	jalr	1536(ra) # 80005b60 <_Z8printIntiii>
    80006568:	00003517          	auipc	a0,0x3
    8000656c:	d7850513          	addi	a0,a0,-648 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80006570:	fffff097          	auipc	ra,0xfffff
    80006574:	440080e7          	jalr	1088(ra) # 800059b0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006578:	00000493          	li	s1,0
    8000657c:	f91ff06f          	j	8000650c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006580:	14102ff3          	csrr	t6,sepc
    80006584:	fb5ff06f          	j	80006538 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006588:	00003517          	auipc	a0,0x3
    8000658c:	08050513          	addi	a0,a0,128 # 80009608 <CONSOLE_STATUS+0x5f8>
    80006590:	fffff097          	auipc	ra,0xfffff
    80006594:	420080e7          	jalr	1056(ra) # 800059b0 <_Z11printStringPKc>
    finishedB = true;
    80006598:	00100793          	li	a5,1
    8000659c:	00005717          	auipc	a4,0x5
    800065a0:	76f70c23          	sb	a5,1912(a4) # 8000bd14 <_ZL9finishedB>
    thread_dispatch();
    800065a4:	ffffb097          	auipc	ra,0xffffb
    800065a8:	de4080e7          	jalr	-540(ra) # 80001388 <_Z15thread_dispatchv>
}
    800065ac:	01813083          	ld	ra,24(sp)
    800065b0:	01013403          	ld	s0,16(sp)
    800065b4:	00813483          	ld	s1,8(sp)
    800065b8:	00013903          	ld	s2,0(sp)
    800065bc:	02010113          	addi	sp,sp,32
    800065c0:	00008067          	ret

00000000800065c4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800065c4:	fe010113          	addi	sp,sp,-32
    800065c8:	00113c23          	sd	ra,24(sp)
    800065cc:	00813823          	sd	s0,16(sp)
    800065d0:	00913423          	sd	s1,8(sp)
    800065d4:	01213023          	sd	s2,0(sp)
    800065d8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800065dc:	00000913          	li	s2,0
    800065e0:	0380006f          	j	80006618 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800065e4:	ffffb097          	auipc	ra,0xffffb
    800065e8:	da4080e7          	jalr	-604(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800065ec:	00148493          	addi	s1,s1,1
    800065f0:	000027b7          	lui	a5,0x2
    800065f4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800065f8:	0097ee63          	bltu	a5,s1,80006614 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800065fc:	00000713          	li	a4,0
    80006600:	000077b7          	lui	a5,0x7
    80006604:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006608:	fce7eee3          	bltu	a5,a4,800065e4 <_ZL11workerBodyAPv+0x20>
    8000660c:	00170713          	addi	a4,a4,1
    80006610:	ff1ff06f          	j	80006600 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006614:	00190913          	addi	s2,s2,1
    80006618:	00900793          	li	a5,9
    8000661c:	0527e063          	bltu	a5,s2,8000665c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006620:	00003517          	auipc	a0,0x3
    80006624:	d9050513          	addi	a0,a0,-624 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80006628:	fffff097          	auipc	ra,0xfffff
    8000662c:	388080e7          	jalr	904(ra) # 800059b0 <_Z11printStringPKc>
    80006630:	00000613          	li	a2,0
    80006634:	00a00593          	li	a1,10
    80006638:	0009051b          	sext.w	a0,s2
    8000663c:	fffff097          	auipc	ra,0xfffff
    80006640:	524080e7          	jalr	1316(ra) # 80005b60 <_Z8printIntiii>
    80006644:	00003517          	auipc	a0,0x3
    80006648:	c9c50513          	addi	a0,a0,-868 # 800092e0 <CONSOLE_STATUS+0x2d0>
    8000664c:	fffff097          	auipc	ra,0xfffff
    80006650:	364080e7          	jalr	868(ra) # 800059b0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006654:	00000493          	li	s1,0
    80006658:	f99ff06f          	j	800065f0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000665c:	00003517          	auipc	a0,0x3
    80006660:	f9c50513          	addi	a0,a0,-100 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80006664:	fffff097          	auipc	ra,0xfffff
    80006668:	34c080e7          	jalr	844(ra) # 800059b0 <_Z11printStringPKc>
    finishedA = true;
    8000666c:	00100793          	li	a5,1
    80006670:	00005717          	auipc	a4,0x5
    80006674:	6af702a3          	sb	a5,1701(a4) # 8000bd15 <_ZL9finishedA>
}
    80006678:	01813083          	ld	ra,24(sp)
    8000667c:	01013403          	ld	s0,16(sp)
    80006680:	00813483          	ld	s1,8(sp)
    80006684:	00013903          	ld	s2,0(sp)
    80006688:	02010113          	addi	sp,sp,32
    8000668c:	00008067          	ret

0000000080006690 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006690:	fd010113          	addi	sp,sp,-48
    80006694:	02113423          	sd	ra,40(sp)
    80006698:	02813023          	sd	s0,32(sp)
    8000669c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800066a0:	00000613          	li	a2,0
    800066a4:	00000597          	auipc	a1,0x0
    800066a8:	f2058593          	addi	a1,a1,-224 # 800065c4 <_ZL11workerBodyAPv>
    800066ac:	fd040513          	addi	a0,s0,-48
    800066b0:	ffffb097          	auipc	ra,0xffffb
    800066b4:	bd4080e7          	jalr	-1068(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800066b8:	00003517          	auipc	a0,0x3
    800066bc:	fb850513          	addi	a0,a0,-72 # 80009670 <CONSOLE_STATUS+0x660>
    800066c0:	fffff097          	auipc	ra,0xfffff
    800066c4:	2f0080e7          	jalr	752(ra) # 800059b0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800066c8:	00000613          	li	a2,0
    800066cc:	00000597          	auipc	a1,0x0
    800066d0:	e1458593          	addi	a1,a1,-492 # 800064e0 <_ZL11workerBodyBPv>
    800066d4:	fd840513          	addi	a0,s0,-40
    800066d8:	ffffb097          	auipc	ra,0xffffb
    800066dc:	bac080e7          	jalr	-1108(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800066e0:	00003517          	auipc	a0,0x3
    800066e4:	fa850513          	addi	a0,a0,-88 # 80009688 <CONSOLE_STATUS+0x678>
    800066e8:	fffff097          	auipc	ra,0xfffff
    800066ec:	2c8080e7          	jalr	712(ra) # 800059b0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800066f0:	00000613          	li	a2,0
    800066f4:	00000597          	auipc	a1,0x0
    800066f8:	c6c58593          	addi	a1,a1,-916 # 80006360 <_ZL11workerBodyCPv>
    800066fc:	fe040513          	addi	a0,s0,-32
    80006700:	ffffb097          	auipc	ra,0xffffb
    80006704:	b84080e7          	jalr	-1148(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80006708:	00003517          	auipc	a0,0x3
    8000670c:	f9850513          	addi	a0,a0,-104 # 800096a0 <CONSOLE_STATUS+0x690>
    80006710:	fffff097          	auipc	ra,0xfffff
    80006714:	2a0080e7          	jalr	672(ra) # 800059b0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006718:	00000613          	li	a2,0
    8000671c:	00000597          	auipc	a1,0x0
    80006720:	afc58593          	addi	a1,a1,-1284 # 80006218 <_ZL11workerBodyDPv>
    80006724:	fe840513          	addi	a0,s0,-24
    80006728:	ffffb097          	auipc	ra,0xffffb
    8000672c:	b5c080e7          	jalr	-1188(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80006730:	00003517          	auipc	a0,0x3
    80006734:	f8850513          	addi	a0,a0,-120 # 800096b8 <CONSOLE_STATUS+0x6a8>
    80006738:	fffff097          	auipc	ra,0xfffff
    8000673c:	278080e7          	jalr	632(ra) # 800059b0 <_Z11printStringPKc>
    80006740:	00c0006f          	j	8000674c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006744:	ffffb097          	auipc	ra,0xffffb
    80006748:	c44080e7          	jalr	-956(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000674c:	00005797          	auipc	a5,0x5
    80006750:	5c97c783          	lbu	a5,1481(a5) # 8000bd15 <_ZL9finishedA>
    80006754:	fe0788e3          	beqz	a5,80006744 <_Z16System_Mode_testv+0xb4>
    80006758:	00005797          	auipc	a5,0x5
    8000675c:	5bc7c783          	lbu	a5,1468(a5) # 8000bd14 <_ZL9finishedB>
    80006760:	fe0782e3          	beqz	a5,80006744 <_Z16System_Mode_testv+0xb4>
    80006764:	00005797          	auipc	a5,0x5
    80006768:	5af7c783          	lbu	a5,1455(a5) # 8000bd13 <_ZL9finishedC>
    8000676c:	fc078ce3          	beqz	a5,80006744 <_Z16System_Mode_testv+0xb4>
    80006770:	00005797          	auipc	a5,0x5
    80006774:	5a27c783          	lbu	a5,1442(a5) # 8000bd12 <_ZL9finishedD>
    80006778:	fc0786e3          	beqz	a5,80006744 <_Z16System_Mode_testv+0xb4>
    }

}
    8000677c:	02813083          	ld	ra,40(sp)
    80006780:	02013403          	ld	s0,32(sp)
    80006784:	03010113          	addi	sp,sp,48
    80006788:	00008067          	ret

000000008000678c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000678c:	fe010113          	addi	sp,sp,-32
    80006790:	00113c23          	sd	ra,24(sp)
    80006794:	00813823          	sd	s0,16(sp)
    80006798:	00913423          	sd	s1,8(sp)
    8000679c:	01213023          	sd	s2,0(sp)
    800067a0:	02010413          	addi	s0,sp,32
    800067a4:	00050493          	mv	s1,a0
    800067a8:	00058913          	mv	s2,a1
    800067ac:	0015879b          	addiw	a5,a1,1
    800067b0:	0007851b          	sext.w	a0,a5
    800067b4:	00f4a023          	sw	a5,0(s1)
    800067b8:	0004a823          	sw	zero,16(s1)
    800067bc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800067c0:	00251513          	slli	a0,a0,0x2
    800067c4:	ffffb097          	auipc	ra,0xffffb
    800067c8:	a34080e7          	jalr	-1484(ra) # 800011f8 <_Z9mem_allocm>
    800067cc:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800067d0:	00000593          	li	a1,0
    800067d4:	02048513          	addi	a0,s1,32
    800067d8:	ffffb097          	auipc	ra,0xffffb
    800067dc:	bec080e7          	jalr	-1044(ra) # 800013c4 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800067e0:	00090593          	mv	a1,s2
    800067e4:	01848513          	addi	a0,s1,24
    800067e8:	ffffb097          	auipc	ra,0xffffb
    800067ec:	bdc080e7          	jalr	-1060(ra) # 800013c4 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800067f0:	00100593          	li	a1,1
    800067f4:	02848513          	addi	a0,s1,40
    800067f8:	ffffb097          	auipc	ra,0xffffb
    800067fc:	bcc080e7          	jalr	-1076(ra) # 800013c4 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006800:	00100593          	li	a1,1
    80006804:	03048513          	addi	a0,s1,48
    80006808:	ffffb097          	auipc	ra,0xffffb
    8000680c:	bbc080e7          	jalr	-1092(ra) # 800013c4 <_Z8sem_openPP4_semj>
}
    80006810:	01813083          	ld	ra,24(sp)
    80006814:	01013403          	ld	s0,16(sp)
    80006818:	00813483          	ld	s1,8(sp)
    8000681c:	00013903          	ld	s2,0(sp)
    80006820:	02010113          	addi	sp,sp,32
    80006824:	00008067          	ret

0000000080006828 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006828:	fe010113          	addi	sp,sp,-32
    8000682c:	00113c23          	sd	ra,24(sp)
    80006830:	00813823          	sd	s0,16(sp)
    80006834:	00913423          	sd	s1,8(sp)
    80006838:	01213023          	sd	s2,0(sp)
    8000683c:	02010413          	addi	s0,sp,32
    80006840:	00050493          	mv	s1,a0
    80006844:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006848:	01853503          	ld	a0,24(a0)
    8000684c:	ffffb097          	auipc	ra,0xffffb
    80006850:	bfc080e7          	jalr	-1028(ra) # 80001448 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006854:	0304b503          	ld	a0,48(s1)
    80006858:	ffffb097          	auipc	ra,0xffffb
    8000685c:	bf0080e7          	jalr	-1040(ra) # 80001448 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006860:	0084b783          	ld	a5,8(s1)
    80006864:	0144a703          	lw	a4,20(s1)
    80006868:	00271713          	slli	a4,a4,0x2
    8000686c:	00e787b3          	add	a5,a5,a4
    80006870:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006874:	0144a783          	lw	a5,20(s1)
    80006878:	0017879b          	addiw	a5,a5,1
    8000687c:	0004a703          	lw	a4,0(s1)
    80006880:	02e7e7bb          	remw	a5,a5,a4
    80006884:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006888:	0304b503          	ld	a0,48(s1)
    8000688c:	ffffb097          	auipc	ra,0xffffb
    80006890:	bfc080e7          	jalr	-1028(ra) # 80001488 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006894:	0204b503          	ld	a0,32(s1)
    80006898:	ffffb097          	auipc	ra,0xffffb
    8000689c:	bf0080e7          	jalr	-1040(ra) # 80001488 <_Z10sem_signalP4_sem>

}
    800068a0:	01813083          	ld	ra,24(sp)
    800068a4:	01013403          	ld	s0,16(sp)
    800068a8:	00813483          	ld	s1,8(sp)
    800068ac:	00013903          	ld	s2,0(sp)
    800068b0:	02010113          	addi	sp,sp,32
    800068b4:	00008067          	ret

00000000800068b8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800068b8:	fe010113          	addi	sp,sp,-32
    800068bc:	00113c23          	sd	ra,24(sp)
    800068c0:	00813823          	sd	s0,16(sp)
    800068c4:	00913423          	sd	s1,8(sp)
    800068c8:	01213023          	sd	s2,0(sp)
    800068cc:	02010413          	addi	s0,sp,32
    800068d0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800068d4:	02053503          	ld	a0,32(a0)
    800068d8:	ffffb097          	auipc	ra,0xffffb
    800068dc:	b70080e7          	jalr	-1168(ra) # 80001448 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800068e0:	0284b503          	ld	a0,40(s1)
    800068e4:	ffffb097          	auipc	ra,0xffffb
    800068e8:	b64080e7          	jalr	-1180(ra) # 80001448 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    800068ec:	0084b703          	ld	a4,8(s1)
    800068f0:	0104a783          	lw	a5,16(s1)
    800068f4:	00279693          	slli	a3,a5,0x2
    800068f8:	00d70733          	add	a4,a4,a3
    800068fc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006900:	0017879b          	addiw	a5,a5,1
    80006904:	0004a703          	lw	a4,0(s1)
    80006908:	02e7e7bb          	remw	a5,a5,a4
    8000690c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006910:	0284b503          	ld	a0,40(s1)
    80006914:	ffffb097          	auipc	ra,0xffffb
    80006918:	b74080e7          	jalr	-1164(ra) # 80001488 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    8000691c:	0184b503          	ld	a0,24(s1)
    80006920:	ffffb097          	auipc	ra,0xffffb
    80006924:	b68080e7          	jalr	-1176(ra) # 80001488 <_Z10sem_signalP4_sem>

    return ret;
}
    80006928:	00090513          	mv	a0,s2
    8000692c:	01813083          	ld	ra,24(sp)
    80006930:	01013403          	ld	s0,16(sp)
    80006934:	00813483          	ld	s1,8(sp)
    80006938:	00013903          	ld	s2,0(sp)
    8000693c:	02010113          	addi	sp,sp,32
    80006940:	00008067          	ret

0000000080006944 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006944:	fe010113          	addi	sp,sp,-32
    80006948:	00113c23          	sd	ra,24(sp)
    8000694c:	00813823          	sd	s0,16(sp)
    80006950:	00913423          	sd	s1,8(sp)
    80006954:	01213023          	sd	s2,0(sp)
    80006958:	02010413          	addi	s0,sp,32
    8000695c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006960:	02853503          	ld	a0,40(a0)
    80006964:	ffffb097          	auipc	ra,0xffffb
    80006968:	ae4080e7          	jalr	-1308(ra) # 80001448 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    8000696c:	0304b503          	ld	a0,48(s1)
    80006970:	ffffb097          	auipc	ra,0xffffb
    80006974:	ad8080e7          	jalr	-1320(ra) # 80001448 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006978:	0144a783          	lw	a5,20(s1)
    8000697c:	0104a903          	lw	s2,16(s1)
    80006980:	0327ce63          	blt	a5,s2,800069bc <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006984:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006988:	0304b503          	ld	a0,48(s1)
    8000698c:	ffffb097          	auipc	ra,0xffffb
    80006990:	afc080e7          	jalr	-1284(ra) # 80001488 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006994:	0284b503          	ld	a0,40(s1)
    80006998:	ffffb097          	auipc	ra,0xffffb
    8000699c:	af0080e7          	jalr	-1296(ra) # 80001488 <_Z10sem_signalP4_sem>

    return ret;
}
    800069a0:	00090513          	mv	a0,s2
    800069a4:	01813083          	ld	ra,24(sp)
    800069a8:	01013403          	ld	s0,16(sp)
    800069ac:	00813483          	ld	s1,8(sp)
    800069b0:	00013903          	ld	s2,0(sp)
    800069b4:	02010113          	addi	sp,sp,32
    800069b8:	00008067          	ret
        ret = cap - head + tail;
    800069bc:	0004a703          	lw	a4,0(s1)
    800069c0:	4127093b          	subw	s2,a4,s2
    800069c4:	00f9093b          	addw	s2,s2,a5
    800069c8:	fc1ff06f          	j	80006988 <_ZN6Buffer6getCntEv+0x44>

00000000800069cc <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800069cc:	fe010113          	addi	sp,sp,-32
    800069d0:	00113c23          	sd	ra,24(sp)
    800069d4:	00813823          	sd	s0,16(sp)
    800069d8:	00913423          	sd	s1,8(sp)
    800069dc:	02010413          	addi	s0,sp,32
    800069e0:	00050493          	mv	s1,a0
    putc('\n');
    800069e4:	00a00513          	li	a0,10
    800069e8:	ffffb097          	auipc	ra,0xffffb
    800069ec:	be8080e7          	jalr	-1048(ra) # 800015d0 <_Z4putcc>
    printString("Buffer deleted!\n");
    800069f0:	00003517          	auipc	a0,0x3
    800069f4:	ce050513          	addi	a0,a0,-800 # 800096d0 <CONSOLE_STATUS+0x6c0>
    800069f8:	fffff097          	auipc	ra,0xfffff
    800069fc:	fb8080e7          	jalr	-72(ra) # 800059b0 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006a00:	00048513          	mv	a0,s1
    80006a04:	00000097          	auipc	ra,0x0
    80006a08:	f40080e7          	jalr	-192(ra) # 80006944 <_ZN6Buffer6getCntEv>
    80006a0c:	02a05c63          	blez	a0,80006a44 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006a10:	0084b783          	ld	a5,8(s1)
    80006a14:	0104a703          	lw	a4,16(s1)
    80006a18:	00271713          	slli	a4,a4,0x2
    80006a1c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006a20:	0007c503          	lbu	a0,0(a5)
    80006a24:	ffffb097          	auipc	ra,0xffffb
    80006a28:	bac080e7          	jalr	-1108(ra) # 800015d0 <_Z4putcc>
        head = (head + 1) % cap;
    80006a2c:	0104a783          	lw	a5,16(s1)
    80006a30:	0017879b          	addiw	a5,a5,1
    80006a34:	0004a703          	lw	a4,0(s1)
    80006a38:	02e7e7bb          	remw	a5,a5,a4
    80006a3c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006a40:	fc1ff06f          	j	80006a00 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006a44:	02100513          	li	a0,33
    80006a48:	ffffb097          	auipc	ra,0xffffb
    80006a4c:	b88080e7          	jalr	-1144(ra) # 800015d0 <_Z4putcc>
    putc('\n');
    80006a50:	00a00513          	li	a0,10
    80006a54:	ffffb097          	auipc	ra,0xffffb
    80006a58:	b7c080e7          	jalr	-1156(ra) # 800015d0 <_Z4putcc>
    mem_free(buffer);
    80006a5c:	0084b503          	ld	a0,8(s1)
    80006a60:	ffffa097          	auipc	ra,0xffffa
    80006a64:	7e4080e7          	jalr	2020(ra) # 80001244 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006a68:	0204b503          	ld	a0,32(s1)
    80006a6c:	ffffb097          	auipc	ra,0xffffb
    80006a70:	99c080e7          	jalr	-1636(ra) # 80001408 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006a74:	0184b503          	ld	a0,24(s1)
    80006a78:	ffffb097          	auipc	ra,0xffffb
    80006a7c:	990080e7          	jalr	-1648(ra) # 80001408 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006a80:	0304b503          	ld	a0,48(s1)
    80006a84:	ffffb097          	auipc	ra,0xffffb
    80006a88:	984080e7          	jalr	-1660(ra) # 80001408 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006a8c:	0284b503          	ld	a0,40(s1)
    80006a90:	ffffb097          	auipc	ra,0xffffb
    80006a94:	978080e7          	jalr	-1672(ra) # 80001408 <_Z9sem_closeP4_sem>
}
    80006a98:	01813083          	ld	ra,24(sp)
    80006a9c:	01013403          	ld	s0,16(sp)
    80006aa0:	00813483          	ld	s1,8(sp)
    80006aa4:	02010113          	addi	sp,sp,32
    80006aa8:	00008067          	ret

0000000080006aac <start>:
    80006aac:	ff010113          	addi	sp,sp,-16
    80006ab0:	00813423          	sd	s0,8(sp)
    80006ab4:	01010413          	addi	s0,sp,16
    80006ab8:	300027f3          	csrr	a5,mstatus
    80006abc:	ffffe737          	lui	a4,0xffffe
    80006ac0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff187f>
    80006ac4:	00e7f7b3          	and	a5,a5,a4
    80006ac8:	00001737          	lui	a4,0x1
    80006acc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006ad0:	00e7e7b3          	or	a5,a5,a4
    80006ad4:	30079073          	csrw	mstatus,a5
    80006ad8:	00000797          	auipc	a5,0x0
    80006adc:	16078793          	addi	a5,a5,352 # 80006c38 <system_main>
    80006ae0:	34179073          	csrw	mepc,a5
    80006ae4:	00000793          	li	a5,0
    80006ae8:	18079073          	csrw	satp,a5
    80006aec:	000107b7          	lui	a5,0x10
    80006af0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006af4:	30279073          	csrw	medeleg,a5
    80006af8:	30379073          	csrw	mideleg,a5
    80006afc:	104027f3          	csrr	a5,sie
    80006b00:	2227e793          	ori	a5,a5,546
    80006b04:	10479073          	csrw	sie,a5
    80006b08:	fff00793          	li	a5,-1
    80006b0c:	00a7d793          	srli	a5,a5,0xa
    80006b10:	3b079073          	csrw	pmpaddr0,a5
    80006b14:	00f00793          	li	a5,15
    80006b18:	3a079073          	csrw	pmpcfg0,a5
    80006b1c:	f14027f3          	csrr	a5,mhartid
    80006b20:	0200c737          	lui	a4,0x200c
    80006b24:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006b28:	0007869b          	sext.w	a3,a5
    80006b2c:	00269713          	slli	a4,a3,0x2
    80006b30:	000f4637          	lui	a2,0xf4
    80006b34:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006b38:	00d70733          	add	a4,a4,a3
    80006b3c:	0037979b          	slliw	a5,a5,0x3
    80006b40:	020046b7          	lui	a3,0x2004
    80006b44:	00d787b3          	add	a5,a5,a3
    80006b48:	00c585b3          	add	a1,a1,a2
    80006b4c:	00371693          	slli	a3,a4,0x3
    80006b50:	00005717          	auipc	a4,0x5
    80006b54:	1d070713          	addi	a4,a4,464 # 8000bd20 <timer_scratch>
    80006b58:	00b7b023          	sd	a1,0(a5)
    80006b5c:	00d70733          	add	a4,a4,a3
    80006b60:	00f73c23          	sd	a5,24(a4)
    80006b64:	02c73023          	sd	a2,32(a4)
    80006b68:	34071073          	csrw	mscratch,a4
    80006b6c:	00000797          	auipc	a5,0x0
    80006b70:	6e478793          	addi	a5,a5,1764 # 80007250 <timervec>
    80006b74:	30579073          	csrw	mtvec,a5
    80006b78:	300027f3          	csrr	a5,mstatus
    80006b7c:	0087e793          	ori	a5,a5,8
    80006b80:	30079073          	csrw	mstatus,a5
    80006b84:	304027f3          	csrr	a5,mie
    80006b88:	0807e793          	ori	a5,a5,128
    80006b8c:	30479073          	csrw	mie,a5
    80006b90:	f14027f3          	csrr	a5,mhartid
    80006b94:	0007879b          	sext.w	a5,a5
    80006b98:	00078213          	mv	tp,a5
    80006b9c:	30200073          	mret
    80006ba0:	00813403          	ld	s0,8(sp)
    80006ba4:	01010113          	addi	sp,sp,16
    80006ba8:	00008067          	ret

0000000080006bac <timerinit>:
    80006bac:	ff010113          	addi	sp,sp,-16
    80006bb0:	00813423          	sd	s0,8(sp)
    80006bb4:	01010413          	addi	s0,sp,16
    80006bb8:	f14027f3          	csrr	a5,mhartid
    80006bbc:	0200c737          	lui	a4,0x200c
    80006bc0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006bc4:	0007869b          	sext.w	a3,a5
    80006bc8:	00269713          	slli	a4,a3,0x2
    80006bcc:	000f4637          	lui	a2,0xf4
    80006bd0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006bd4:	00d70733          	add	a4,a4,a3
    80006bd8:	0037979b          	slliw	a5,a5,0x3
    80006bdc:	020046b7          	lui	a3,0x2004
    80006be0:	00d787b3          	add	a5,a5,a3
    80006be4:	00c585b3          	add	a1,a1,a2
    80006be8:	00371693          	slli	a3,a4,0x3
    80006bec:	00005717          	auipc	a4,0x5
    80006bf0:	13470713          	addi	a4,a4,308 # 8000bd20 <timer_scratch>
    80006bf4:	00b7b023          	sd	a1,0(a5)
    80006bf8:	00d70733          	add	a4,a4,a3
    80006bfc:	00f73c23          	sd	a5,24(a4)
    80006c00:	02c73023          	sd	a2,32(a4)
    80006c04:	34071073          	csrw	mscratch,a4
    80006c08:	00000797          	auipc	a5,0x0
    80006c0c:	64878793          	addi	a5,a5,1608 # 80007250 <timervec>
    80006c10:	30579073          	csrw	mtvec,a5
    80006c14:	300027f3          	csrr	a5,mstatus
    80006c18:	0087e793          	ori	a5,a5,8
    80006c1c:	30079073          	csrw	mstatus,a5
    80006c20:	304027f3          	csrr	a5,mie
    80006c24:	0807e793          	ori	a5,a5,128
    80006c28:	30479073          	csrw	mie,a5
    80006c2c:	00813403          	ld	s0,8(sp)
    80006c30:	01010113          	addi	sp,sp,16
    80006c34:	00008067          	ret

0000000080006c38 <system_main>:
    80006c38:	fe010113          	addi	sp,sp,-32
    80006c3c:	00813823          	sd	s0,16(sp)
    80006c40:	00913423          	sd	s1,8(sp)
    80006c44:	00113c23          	sd	ra,24(sp)
    80006c48:	02010413          	addi	s0,sp,32
    80006c4c:	00000097          	auipc	ra,0x0
    80006c50:	0c4080e7          	jalr	196(ra) # 80006d10 <cpuid>
    80006c54:	00005497          	auipc	s1,0x5
    80006c58:	fec48493          	addi	s1,s1,-20 # 8000bc40 <started>
    80006c5c:	02050263          	beqz	a0,80006c80 <system_main+0x48>
    80006c60:	0004a783          	lw	a5,0(s1)
    80006c64:	0007879b          	sext.w	a5,a5
    80006c68:	fe078ce3          	beqz	a5,80006c60 <system_main+0x28>
    80006c6c:	0ff0000f          	fence
    80006c70:	00003517          	auipc	a0,0x3
    80006c74:	ab850513          	addi	a0,a0,-1352 # 80009728 <CONSOLE_STATUS+0x718>
    80006c78:	00001097          	auipc	ra,0x1
    80006c7c:	a74080e7          	jalr	-1420(ra) # 800076ec <panic>
    80006c80:	00001097          	auipc	ra,0x1
    80006c84:	9c8080e7          	jalr	-1592(ra) # 80007648 <consoleinit>
    80006c88:	00001097          	auipc	ra,0x1
    80006c8c:	154080e7          	jalr	340(ra) # 80007ddc <printfinit>
    80006c90:	00002517          	auipc	a0,0x2
    80006c94:	65050513          	addi	a0,a0,1616 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80006c98:	00001097          	auipc	ra,0x1
    80006c9c:	ab0080e7          	jalr	-1360(ra) # 80007748 <__printf>
    80006ca0:	00003517          	auipc	a0,0x3
    80006ca4:	a5850513          	addi	a0,a0,-1448 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80006ca8:	00001097          	auipc	ra,0x1
    80006cac:	aa0080e7          	jalr	-1376(ra) # 80007748 <__printf>
    80006cb0:	00002517          	auipc	a0,0x2
    80006cb4:	63050513          	addi	a0,a0,1584 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80006cb8:	00001097          	auipc	ra,0x1
    80006cbc:	a90080e7          	jalr	-1392(ra) # 80007748 <__printf>
    80006cc0:	00001097          	auipc	ra,0x1
    80006cc4:	4a8080e7          	jalr	1192(ra) # 80008168 <kinit>
    80006cc8:	00000097          	auipc	ra,0x0
    80006ccc:	148080e7          	jalr	328(ra) # 80006e10 <trapinit>
    80006cd0:	00000097          	auipc	ra,0x0
    80006cd4:	16c080e7          	jalr	364(ra) # 80006e3c <trapinithart>
    80006cd8:	00000097          	auipc	ra,0x0
    80006cdc:	5b8080e7          	jalr	1464(ra) # 80007290 <plicinit>
    80006ce0:	00000097          	auipc	ra,0x0
    80006ce4:	5d8080e7          	jalr	1496(ra) # 800072b8 <plicinithart>
    80006ce8:	00000097          	auipc	ra,0x0
    80006cec:	078080e7          	jalr	120(ra) # 80006d60 <userinit>
    80006cf0:	0ff0000f          	fence
    80006cf4:	00100793          	li	a5,1
    80006cf8:	00003517          	auipc	a0,0x3
    80006cfc:	a1850513          	addi	a0,a0,-1512 # 80009710 <CONSOLE_STATUS+0x700>
    80006d00:	00f4a023          	sw	a5,0(s1)
    80006d04:	00001097          	auipc	ra,0x1
    80006d08:	a44080e7          	jalr	-1468(ra) # 80007748 <__printf>
    80006d0c:	0000006f          	j	80006d0c <system_main+0xd4>

0000000080006d10 <cpuid>:
    80006d10:	ff010113          	addi	sp,sp,-16
    80006d14:	00813423          	sd	s0,8(sp)
    80006d18:	01010413          	addi	s0,sp,16
    80006d1c:	00020513          	mv	a0,tp
    80006d20:	00813403          	ld	s0,8(sp)
    80006d24:	0005051b          	sext.w	a0,a0
    80006d28:	01010113          	addi	sp,sp,16
    80006d2c:	00008067          	ret

0000000080006d30 <mycpu>:
    80006d30:	ff010113          	addi	sp,sp,-16
    80006d34:	00813423          	sd	s0,8(sp)
    80006d38:	01010413          	addi	s0,sp,16
    80006d3c:	00020793          	mv	a5,tp
    80006d40:	00813403          	ld	s0,8(sp)
    80006d44:	0007879b          	sext.w	a5,a5
    80006d48:	00779793          	slli	a5,a5,0x7
    80006d4c:	00006517          	auipc	a0,0x6
    80006d50:	00450513          	addi	a0,a0,4 # 8000cd50 <cpus>
    80006d54:	00f50533          	add	a0,a0,a5
    80006d58:	01010113          	addi	sp,sp,16
    80006d5c:	00008067          	ret

0000000080006d60 <userinit>:
    80006d60:	ff010113          	addi	sp,sp,-16
    80006d64:	00813423          	sd	s0,8(sp)
    80006d68:	01010413          	addi	s0,sp,16
    80006d6c:	00813403          	ld	s0,8(sp)
    80006d70:	01010113          	addi	sp,sp,16
    80006d74:	ffffc317          	auipc	t1,0xffffc
    80006d78:	9c830067          	jr	-1592(t1) # 8000273c <main>

0000000080006d7c <either_copyout>:
    80006d7c:	ff010113          	addi	sp,sp,-16
    80006d80:	00813023          	sd	s0,0(sp)
    80006d84:	00113423          	sd	ra,8(sp)
    80006d88:	01010413          	addi	s0,sp,16
    80006d8c:	02051663          	bnez	a0,80006db8 <either_copyout+0x3c>
    80006d90:	00058513          	mv	a0,a1
    80006d94:	00060593          	mv	a1,a2
    80006d98:	0006861b          	sext.w	a2,a3
    80006d9c:	00002097          	auipc	ra,0x2
    80006da0:	c58080e7          	jalr	-936(ra) # 800089f4 <__memmove>
    80006da4:	00813083          	ld	ra,8(sp)
    80006da8:	00013403          	ld	s0,0(sp)
    80006dac:	00000513          	li	a0,0
    80006db0:	01010113          	addi	sp,sp,16
    80006db4:	00008067          	ret
    80006db8:	00003517          	auipc	a0,0x3
    80006dbc:	99850513          	addi	a0,a0,-1640 # 80009750 <CONSOLE_STATUS+0x740>
    80006dc0:	00001097          	auipc	ra,0x1
    80006dc4:	92c080e7          	jalr	-1748(ra) # 800076ec <panic>

0000000080006dc8 <either_copyin>:
    80006dc8:	ff010113          	addi	sp,sp,-16
    80006dcc:	00813023          	sd	s0,0(sp)
    80006dd0:	00113423          	sd	ra,8(sp)
    80006dd4:	01010413          	addi	s0,sp,16
    80006dd8:	02059463          	bnez	a1,80006e00 <either_copyin+0x38>
    80006ddc:	00060593          	mv	a1,a2
    80006de0:	0006861b          	sext.w	a2,a3
    80006de4:	00002097          	auipc	ra,0x2
    80006de8:	c10080e7          	jalr	-1008(ra) # 800089f4 <__memmove>
    80006dec:	00813083          	ld	ra,8(sp)
    80006df0:	00013403          	ld	s0,0(sp)
    80006df4:	00000513          	li	a0,0
    80006df8:	01010113          	addi	sp,sp,16
    80006dfc:	00008067          	ret
    80006e00:	00003517          	auipc	a0,0x3
    80006e04:	97850513          	addi	a0,a0,-1672 # 80009778 <CONSOLE_STATUS+0x768>
    80006e08:	00001097          	auipc	ra,0x1
    80006e0c:	8e4080e7          	jalr	-1820(ra) # 800076ec <panic>

0000000080006e10 <trapinit>:
    80006e10:	ff010113          	addi	sp,sp,-16
    80006e14:	00813423          	sd	s0,8(sp)
    80006e18:	01010413          	addi	s0,sp,16
    80006e1c:	00813403          	ld	s0,8(sp)
    80006e20:	00003597          	auipc	a1,0x3
    80006e24:	98058593          	addi	a1,a1,-1664 # 800097a0 <CONSOLE_STATUS+0x790>
    80006e28:	00006517          	auipc	a0,0x6
    80006e2c:	fa850513          	addi	a0,a0,-88 # 8000cdd0 <tickslock>
    80006e30:	01010113          	addi	sp,sp,16
    80006e34:	00001317          	auipc	t1,0x1
    80006e38:	5c430067          	jr	1476(t1) # 800083f8 <initlock>

0000000080006e3c <trapinithart>:
    80006e3c:	ff010113          	addi	sp,sp,-16
    80006e40:	00813423          	sd	s0,8(sp)
    80006e44:	01010413          	addi	s0,sp,16
    80006e48:	00000797          	auipc	a5,0x0
    80006e4c:	2f878793          	addi	a5,a5,760 # 80007140 <kernelvec>
    80006e50:	10579073          	csrw	stvec,a5
    80006e54:	00813403          	ld	s0,8(sp)
    80006e58:	01010113          	addi	sp,sp,16
    80006e5c:	00008067          	ret

0000000080006e60 <usertrap>:
    80006e60:	ff010113          	addi	sp,sp,-16
    80006e64:	00813423          	sd	s0,8(sp)
    80006e68:	01010413          	addi	s0,sp,16
    80006e6c:	00813403          	ld	s0,8(sp)
    80006e70:	01010113          	addi	sp,sp,16
    80006e74:	00008067          	ret

0000000080006e78 <usertrapret>:
    80006e78:	ff010113          	addi	sp,sp,-16
    80006e7c:	00813423          	sd	s0,8(sp)
    80006e80:	01010413          	addi	s0,sp,16
    80006e84:	00813403          	ld	s0,8(sp)
    80006e88:	01010113          	addi	sp,sp,16
    80006e8c:	00008067          	ret

0000000080006e90 <kerneltrap>:
    80006e90:	fe010113          	addi	sp,sp,-32
    80006e94:	00813823          	sd	s0,16(sp)
    80006e98:	00113c23          	sd	ra,24(sp)
    80006e9c:	00913423          	sd	s1,8(sp)
    80006ea0:	02010413          	addi	s0,sp,32
    80006ea4:	142025f3          	csrr	a1,scause
    80006ea8:	100027f3          	csrr	a5,sstatus
    80006eac:	0027f793          	andi	a5,a5,2
    80006eb0:	10079c63          	bnez	a5,80006fc8 <kerneltrap+0x138>
    80006eb4:	142027f3          	csrr	a5,scause
    80006eb8:	0207ce63          	bltz	a5,80006ef4 <kerneltrap+0x64>
    80006ebc:	00003517          	auipc	a0,0x3
    80006ec0:	92c50513          	addi	a0,a0,-1748 # 800097e8 <CONSOLE_STATUS+0x7d8>
    80006ec4:	00001097          	auipc	ra,0x1
    80006ec8:	884080e7          	jalr	-1916(ra) # 80007748 <__printf>
    80006ecc:	141025f3          	csrr	a1,sepc
    80006ed0:	14302673          	csrr	a2,stval
    80006ed4:	00003517          	auipc	a0,0x3
    80006ed8:	92450513          	addi	a0,a0,-1756 # 800097f8 <CONSOLE_STATUS+0x7e8>
    80006edc:	00001097          	auipc	ra,0x1
    80006ee0:	86c080e7          	jalr	-1940(ra) # 80007748 <__printf>
    80006ee4:	00003517          	auipc	a0,0x3
    80006ee8:	92c50513          	addi	a0,a0,-1748 # 80009810 <CONSOLE_STATUS+0x800>
    80006eec:	00001097          	auipc	ra,0x1
    80006ef0:	800080e7          	jalr	-2048(ra) # 800076ec <panic>
    80006ef4:	0ff7f713          	andi	a4,a5,255
    80006ef8:	00900693          	li	a3,9
    80006efc:	04d70063          	beq	a4,a3,80006f3c <kerneltrap+0xac>
    80006f00:	fff00713          	li	a4,-1
    80006f04:	03f71713          	slli	a4,a4,0x3f
    80006f08:	00170713          	addi	a4,a4,1
    80006f0c:	fae798e3          	bne	a5,a4,80006ebc <kerneltrap+0x2c>
    80006f10:	00000097          	auipc	ra,0x0
    80006f14:	e00080e7          	jalr	-512(ra) # 80006d10 <cpuid>
    80006f18:	06050663          	beqz	a0,80006f84 <kerneltrap+0xf4>
    80006f1c:	144027f3          	csrr	a5,sip
    80006f20:	ffd7f793          	andi	a5,a5,-3
    80006f24:	14479073          	csrw	sip,a5
    80006f28:	01813083          	ld	ra,24(sp)
    80006f2c:	01013403          	ld	s0,16(sp)
    80006f30:	00813483          	ld	s1,8(sp)
    80006f34:	02010113          	addi	sp,sp,32
    80006f38:	00008067          	ret
    80006f3c:	00000097          	auipc	ra,0x0
    80006f40:	3c8080e7          	jalr	968(ra) # 80007304 <plic_claim>
    80006f44:	00a00793          	li	a5,10
    80006f48:	00050493          	mv	s1,a0
    80006f4c:	06f50863          	beq	a0,a5,80006fbc <kerneltrap+0x12c>
    80006f50:	fc050ce3          	beqz	a0,80006f28 <kerneltrap+0x98>
    80006f54:	00050593          	mv	a1,a0
    80006f58:	00003517          	auipc	a0,0x3
    80006f5c:	87050513          	addi	a0,a0,-1936 # 800097c8 <CONSOLE_STATUS+0x7b8>
    80006f60:	00000097          	auipc	ra,0x0
    80006f64:	7e8080e7          	jalr	2024(ra) # 80007748 <__printf>
    80006f68:	01013403          	ld	s0,16(sp)
    80006f6c:	01813083          	ld	ra,24(sp)
    80006f70:	00048513          	mv	a0,s1
    80006f74:	00813483          	ld	s1,8(sp)
    80006f78:	02010113          	addi	sp,sp,32
    80006f7c:	00000317          	auipc	t1,0x0
    80006f80:	3c030067          	jr	960(t1) # 8000733c <plic_complete>
    80006f84:	00006517          	auipc	a0,0x6
    80006f88:	e4c50513          	addi	a0,a0,-436 # 8000cdd0 <tickslock>
    80006f8c:	00001097          	auipc	ra,0x1
    80006f90:	490080e7          	jalr	1168(ra) # 8000841c <acquire>
    80006f94:	00005717          	auipc	a4,0x5
    80006f98:	cb070713          	addi	a4,a4,-848 # 8000bc44 <ticks>
    80006f9c:	00072783          	lw	a5,0(a4)
    80006fa0:	00006517          	auipc	a0,0x6
    80006fa4:	e3050513          	addi	a0,a0,-464 # 8000cdd0 <tickslock>
    80006fa8:	0017879b          	addiw	a5,a5,1
    80006fac:	00f72023          	sw	a5,0(a4)
    80006fb0:	00001097          	auipc	ra,0x1
    80006fb4:	538080e7          	jalr	1336(ra) # 800084e8 <release>
    80006fb8:	f65ff06f          	j	80006f1c <kerneltrap+0x8c>
    80006fbc:	00001097          	auipc	ra,0x1
    80006fc0:	094080e7          	jalr	148(ra) # 80008050 <uartintr>
    80006fc4:	fa5ff06f          	j	80006f68 <kerneltrap+0xd8>
    80006fc8:	00002517          	auipc	a0,0x2
    80006fcc:	7e050513          	addi	a0,a0,2016 # 800097a8 <CONSOLE_STATUS+0x798>
    80006fd0:	00000097          	auipc	ra,0x0
    80006fd4:	71c080e7          	jalr	1820(ra) # 800076ec <panic>

0000000080006fd8 <clockintr>:
    80006fd8:	fe010113          	addi	sp,sp,-32
    80006fdc:	00813823          	sd	s0,16(sp)
    80006fe0:	00913423          	sd	s1,8(sp)
    80006fe4:	00113c23          	sd	ra,24(sp)
    80006fe8:	02010413          	addi	s0,sp,32
    80006fec:	00006497          	auipc	s1,0x6
    80006ff0:	de448493          	addi	s1,s1,-540 # 8000cdd0 <tickslock>
    80006ff4:	00048513          	mv	a0,s1
    80006ff8:	00001097          	auipc	ra,0x1
    80006ffc:	424080e7          	jalr	1060(ra) # 8000841c <acquire>
    80007000:	00005717          	auipc	a4,0x5
    80007004:	c4470713          	addi	a4,a4,-956 # 8000bc44 <ticks>
    80007008:	00072783          	lw	a5,0(a4)
    8000700c:	01013403          	ld	s0,16(sp)
    80007010:	01813083          	ld	ra,24(sp)
    80007014:	00048513          	mv	a0,s1
    80007018:	0017879b          	addiw	a5,a5,1
    8000701c:	00813483          	ld	s1,8(sp)
    80007020:	00f72023          	sw	a5,0(a4)
    80007024:	02010113          	addi	sp,sp,32
    80007028:	00001317          	auipc	t1,0x1
    8000702c:	4c030067          	jr	1216(t1) # 800084e8 <release>

0000000080007030 <devintr>:
    80007030:	142027f3          	csrr	a5,scause
    80007034:	00000513          	li	a0,0
    80007038:	0007c463          	bltz	a5,80007040 <devintr+0x10>
    8000703c:	00008067          	ret
    80007040:	fe010113          	addi	sp,sp,-32
    80007044:	00813823          	sd	s0,16(sp)
    80007048:	00113c23          	sd	ra,24(sp)
    8000704c:	00913423          	sd	s1,8(sp)
    80007050:	02010413          	addi	s0,sp,32
    80007054:	0ff7f713          	andi	a4,a5,255
    80007058:	00900693          	li	a3,9
    8000705c:	04d70c63          	beq	a4,a3,800070b4 <devintr+0x84>
    80007060:	fff00713          	li	a4,-1
    80007064:	03f71713          	slli	a4,a4,0x3f
    80007068:	00170713          	addi	a4,a4,1
    8000706c:	00e78c63          	beq	a5,a4,80007084 <devintr+0x54>
    80007070:	01813083          	ld	ra,24(sp)
    80007074:	01013403          	ld	s0,16(sp)
    80007078:	00813483          	ld	s1,8(sp)
    8000707c:	02010113          	addi	sp,sp,32
    80007080:	00008067          	ret
    80007084:	00000097          	auipc	ra,0x0
    80007088:	c8c080e7          	jalr	-884(ra) # 80006d10 <cpuid>
    8000708c:	06050663          	beqz	a0,800070f8 <devintr+0xc8>
    80007090:	144027f3          	csrr	a5,sip
    80007094:	ffd7f793          	andi	a5,a5,-3
    80007098:	14479073          	csrw	sip,a5
    8000709c:	01813083          	ld	ra,24(sp)
    800070a0:	01013403          	ld	s0,16(sp)
    800070a4:	00813483          	ld	s1,8(sp)
    800070a8:	00200513          	li	a0,2
    800070ac:	02010113          	addi	sp,sp,32
    800070b0:	00008067          	ret
    800070b4:	00000097          	auipc	ra,0x0
    800070b8:	250080e7          	jalr	592(ra) # 80007304 <plic_claim>
    800070bc:	00a00793          	li	a5,10
    800070c0:	00050493          	mv	s1,a0
    800070c4:	06f50663          	beq	a0,a5,80007130 <devintr+0x100>
    800070c8:	00100513          	li	a0,1
    800070cc:	fa0482e3          	beqz	s1,80007070 <devintr+0x40>
    800070d0:	00048593          	mv	a1,s1
    800070d4:	00002517          	auipc	a0,0x2
    800070d8:	6f450513          	addi	a0,a0,1780 # 800097c8 <CONSOLE_STATUS+0x7b8>
    800070dc:	00000097          	auipc	ra,0x0
    800070e0:	66c080e7          	jalr	1644(ra) # 80007748 <__printf>
    800070e4:	00048513          	mv	a0,s1
    800070e8:	00000097          	auipc	ra,0x0
    800070ec:	254080e7          	jalr	596(ra) # 8000733c <plic_complete>
    800070f0:	00100513          	li	a0,1
    800070f4:	f7dff06f          	j	80007070 <devintr+0x40>
    800070f8:	00006517          	auipc	a0,0x6
    800070fc:	cd850513          	addi	a0,a0,-808 # 8000cdd0 <tickslock>
    80007100:	00001097          	auipc	ra,0x1
    80007104:	31c080e7          	jalr	796(ra) # 8000841c <acquire>
    80007108:	00005717          	auipc	a4,0x5
    8000710c:	b3c70713          	addi	a4,a4,-1220 # 8000bc44 <ticks>
    80007110:	00072783          	lw	a5,0(a4)
    80007114:	00006517          	auipc	a0,0x6
    80007118:	cbc50513          	addi	a0,a0,-836 # 8000cdd0 <tickslock>
    8000711c:	0017879b          	addiw	a5,a5,1
    80007120:	00f72023          	sw	a5,0(a4)
    80007124:	00001097          	auipc	ra,0x1
    80007128:	3c4080e7          	jalr	964(ra) # 800084e8 <release>
    8000712c:	f65ff06f          	j	80007090 <devintr+0x60>
    80007130:	00001097          	auipc	ra,0x1
    80007134:	f20080e7          	jalr	-224(ra) # 80008050 <uartintr>
    80007138:	fadff06f          	j	800070e4 <devintr+0xb4>
    8000713c:	0000                	unimp
	...

0000000080007140 <kernelvec>:
    80007140:	f0010113          	addi	sp,sp,-256
    80007144:	00113023          	sd	ra,0(sp)
    80007148:	00213423          	sd	sp,8(sp)
    8000714c:	00313823          	sd	gp,16(sp)
    80007150:	00413c23          	sd	tp,24(sp)
    80007154:	02513023          	sd	t0,32(sp)
    80007158:	02613423          	sd	t1,40(sp)
    8000715c:	02713823          	sd	t2,48(sp)
    80007160:	02813c23          	sd	s0,56(sp)
    80007164:	04913023          	sd	s1,64(sp)
    80007168:	04a13423          	sd	a0,72(sp)
    8000716c:	04b13823          	sd	a1,80(sp)
    80007170:	04c13c23          	sd	a2,88(sp)
    80007174:	06d13023          	sd	a3,96(sp)
    80007178:	06e13423          	sd	a4,104(sp)
    8000717c:	06f13823          	sd	a5,112(sp)
    80007180:	07013c23          	sd	a6,120(sp)
    80007184:	09113023          	sd	a7,128(sp)
    80007188:	09213423          	sd	s2,136(sp)
    8000718c:	09313823          	sd	s3,144(sp)
    80007190:	09413c23          	sd	s4,152(sp)
    80007194:	0b513023          	sd	s5,160(sp)
    80007198:	0b613423          	sd	s6,168(sp)
    8000719c:	0b713823          	sd	s7,176(sp)
    800071a0:	0b813c23          	sd	s8,184(sp)
    800071a4:	0d913023          	sd	s9,192(sp)
    800071a8:	0da13423          	sd	s10,200(sp)
    800071ac:	0db13823          	sd	s11,208(sp)
    800071b0:	0dc13c23          	sd	t3,216(sp)
    800071b4:	0fd13023          	sd	t4,224(sp)
    800071b8:	0fe13423          	sd	t5,232(sp)
    800071bc:	0ff13823          	sd	t6,240(sp)
    800071c0:	cd1ff0ef          	jal	ra,80006e90 <kerneltrap>
    800071c4:	00013083          	ld	ra,0(sp)
    800071c8:	00813103          	ld	sp,8(sp)
    800071cc:	01013183          	ld	gp,16(sp)
    800071d0:	02013283          	ld	t0,32(sp)
    800071d4:	02813303          	ld	t1,40(sp)
    800071d8:	03013383          	ld	t2,48(sp)
    800071dc:	03813403          	ld	s0,56(sp)
    800071e0:	04013483          	ld	s1,64(sp)
    800071e4:	04813503          	ld	a0,72(sp)
    800071e8:	05013583          	ld	a1,80(sp)
    800071ec:	05813603          	ld	a2,88(sp)
    800071f0:	06013683          	ld	a3,96(sp)
    800071f4:	06813703          	ld	a4,104(sp)
    800071f8:	07013783          	ld	a5,112(sp)
    800071fc:	07813803          	ld	a6,120(sp)
    80007200:	08013883          	ld	a7,128(sp)
    80007204:	08813903          	ld	s2,136(sp)
    80007208:	09013983          	ld	s3,144(sp)
    8000720c:	09813a03          	ld	s4,152(sp)
    80007210:	0a013a83          	ld	s5,160(sp)
    80007214:	0a813b03          	ld	s6,168(sp)
    80007218:	0b013b83          	ld	s7,176(sp)
    8000721c:	0b813c03          	ld	s8,184(sp)
    80007220:	0c013c83          	ld	s9,192(sp)
    80007224:	0c813d03          	ld	s10,200(sp)
    80007228:	0d013d83          	ld	s11,208(sp)
    8000722c:	0d813e03          	ld	t3,216(sp)
    80007230:	0e013e83          	ld	t4,224(sp)
    80007234:	0e813f03          	ld	t5,232(sp)
    80007238:	0f013f83          	ld	t6,240(sp)
    8000723c:	10010113          	addi	sp,sp,256
    80007240:	10200073          	sret
    80007244:	00000013          	nop
    80007248:	00000013          	nop
    8000724c:	00000013          	nop

0000000080007250 <timervec>:
    80007250:	34051573          	csrrw	a0,mscratch,a0
    80007254:	00b53023          	sd	a1,0(a0)
    80007258:	00c53423          	sd	a2,8(a0)
    8000725c:	00d53823          	sd	a3,16(a0)
    80007260:	01853583          	ld	a1,24(a0)
    80007264:	02053603          	ld	a2,32(a0)
    80007268:	0005b683          	ld	a3,0(a1)
    8000726c:	00c686b3          	add	a3,a3,a2
    80007270:	00d5b023          	sd	a3,0(a1)
    80007274:	00200593          	li	a1,2
    80007278:	14459073          	csrw	sip,a1
    8000727c:	01053683          	ld	a3,16(a0)
    80007280:	00853603          	ld	a2,8(a0)
    80007284:	00053583          	ld	a1,0(a0)
    80007288:	34051573          	csrrw	a0,mscratch,a0
    8000728c:	30200073          	mret

0000000080007290 <plicinit>:
    80007290:	ff010113          	addi	sp,sp,-16
    80007294:	00813423          	sd	s0,8(sp)
    80007298:	01010413          	addi	s0,sp,16
    8000729c:	00813403          	ld	s0,8(sp)
    800072a0:	0c0007b7          	lui	a5,0xc000
    800072a4:	00100713          	li	a4,1
    800072a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800072ac:	00e7a223          	sw	a4,4(a5)
    800072b0:	01010113          	addi	sp,sp,16
    800072b4:	00008067          	ret

00000000800072b8 <plicinithart>:
    800072b8:	ff010113          	addi	sp,sp,-16
    800072bc:	00813023          	sd	s0,0(sp)
    800072c0:	00113423          	sd	ra,8(sp)
    800072c4:	01010413          	addi	s0,sp,16
    800072c8:	00000097          	auipc	ra,0x0
    800072cc:	a48080e7          	jalr	-1464(ra) # 80006d10 <cpuid>
    800072d0:	0085171b          	slliw	a4,a0,0x8
    800072d4:	0c0027b7          	lui	a5,0xc002
    800072d8:	00e787b3          	add	a5,a5,a4
    800072dc:	40200713          	li	a4,1026
    800072e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800072e4:	00813083          	ld	ra,8(sp)
    800072e8:	00013403          	ld	s0,0(sp)
    800072ec:	00d5151b          	slliw	a0,a0,0xd
    800072f0:	0c2017b7          	lui	a5,0xc201
    800072f4:	00a78533          	add	a0,a5,a0
    800072f8:	00052023          	sw	zero,0(a0)
    800072fc:	01010113          	addi	sp,sp,16
    80007300:	00008067          	ret

0000000080007304 <plic_claim>:
    80007304:	ff010113          	addi	sp,sp,-16
    80007308:	00813023          	sd	s0,0(sp)
    8000730c:	00113423          	sd	ra,8(sp)
    80007310:	01010413          	addi	s0,sp,16
    80007314:	00000097          	auipc	ra,0x0
    80007318:	9fc080e7          	jalr	-1540(ra) # 80006d10 <cpuid>
    8000731c:	00813083          	ld	ra,8(sp)
    80007320:	00013403          	ld	s0,0(sp)
    80007324:	00d5151b          	slliw	a0,a0,0xd
    80007328:	0c2017b7          	lui	a5,0xc201
    8000732c:	00a78533          	add	a0,a5,a0
    80007330:	00452503          	lw	a0,4(a0)
    80007334:	01010113          	addi	sp,sp,16
    80007338:	00008067          	ret

000000008000733c <plic_complete>:
    8000733c:	fe010113          	addi	sp,sp,-32
    80007340:	00813823          	sd	s0,16(sp)
    80007344:	00913423          	sd	s1,8(sp)
    80007348:	00113c23          	sd	ra,24(sp)
    8000734c:	02010413          	addi	s0,sp,32
    80007350:	00050493          	mv	s1,a0
    80007354:	00000097          	auipc	ra,0x0
    80007358:	9bc080e7          	jalr	-1604(ra) # 80006d10 <cpuid>
    8000735c:	01813083          	ld	ra,24(sp)
    80007360:	01013403          	ld	s0,16(sp)
    80007364:	00d5179b          	slliw	a5,a0,0xd
    80007368:	0c201737          	lui	a4,0xc201
    8000736c:	00f707b3          	add	a5,a4,a5
    80007370:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007374:	00813483          	ld	s1,8(sp)
    80007378:	02010113          	addi	sp,sp,32
    8000737c:	00008067          	ret

0000000080007380 <consolewrite>:
    80007380:	fb010113          	addi	sp,sp,-80
    80007384:	04813023          	sd	s0,64(sp)
    80007388:	04113423          	sd	ra,72(sp)
    8000738c:	02913c23          	sd	s1,56(sp)
    80007390:	03213823          	sd	s2,48(sp)
    80007394:	03313423          	sd	s3,40(sp)
    80007398:	03413023          	sd	s4,32(sp)
    8000739c:	01513c23          	sd	s5,24(sp)
    800073a0:	05010413          	addi	s0,sp,80
    800073a4:	06c05c63          	blez	a2,8000741c <consolewrite+0x9c>
    800073a8:	00060993          	mv	s3,a2
    800073ac:	00050a13          	mv	s4,a0
    800073b0:	00058493          	mv	s1,a1
    800073b4:	00000913          	li	s2,0
    800073b8:	fff00a93          	li	s5,-1
    800073bc:	01c0006f          	j	800073d8 <consolewrite+0x58>
    800073c0:	fbf44503          	lbu	a0,-65(s0)
    800073c4:	0019091b          	addiw	s2,s2,1
    800073c8:	00148493          	addi	s1,s1,1
    800073cc:	00001097          	auipc	ra,0x1
    800073d0:	a9c080e7          	jalr	-1380(ra) # 80007e68 <uartputc>
    800073d4:	03298063          	beq	s3,s2,800073f4 <consolewrite+0x74>
    800073d8:	00048613          	mv	a2,s1
    800073dc:	00100693          	li	a3,1
    800073e0:	000a0593          	mv	a1,s4
    800073e4:	fbf40513          	addi	a0,s0,-65
    800073e8:	00000097          	auipc	ra,0x0
    800073ec:	9e0080e7          	jalr	-1568(ra) # 80006dc8 <either_copyin>
    800073f0:	fd5518e3          	bne	a0,s5,800073c0 <consolewrite+0x40>
    800073f4:	04813083          	ld	ra,72(sp)
    800073f8:	04013403          	ld	s0,64(sp)
    800073fc:	03813483          	ld	s1,56(sp)
    80007400:	02813983          	ld	s3,40(sp)
    80007404:	02013a03          	ld	s4,32(sp)
    80007408:	01813a83          	ld	s5,24(sp)
    8000740c:	00090513          	mv	a0,s2
    80007410:	03013903          	ld	s2,48(sp)
    80007414:	05010113          	addi	sp,sp,80
    80007418:	00008067          	ret
    8000741c:	00000913          	li	s2,0
    80007420:	fd5ff06f          	j	800073f4 <consolewrite+0x74>

0000000080007424 <consoleread>:
    80007424:	f9010113          	addi	sp,sp,-112
    80007428:	06813023          	sd	s0,96(sp)
    8000742c:	04913c23          	sd	s1,88(sp)
    80007430:	05213823          	sd	s2,80(sp)
    80007434:	05313423          	sd	s3,72(sp)
    80007438:	05413023          	sd	s4,64(sp)
    8000743c:	03513c23          	sd	s5,56(sp)
    80007440:	03613823          	sd	s6,48(sp)
    80007444:	03713423          	sd	s7,40(sp)
    80007448:	03813023          	sd	s8,32(sp)
    8000744c:	06113423          	sd	ra,104(sp)
    80007450:	01913c23          	sd	s9,24(sp)
    80007454:	07010413          	addi	s0,sp,112
    80007458:	00060b93          	mv	s7,a2
    8000745c:	00050913          	mv	s2,a0
    80007460:	00058c13          	mv	s8,a1
    80007464:	00060b1b          	sext.w	s6,a2
    80007468:	00006497          	auipc	s1,0x6
    8000746c:	99048493          	addi	s1,s1,-1648 # 8000cdf8 <cons>
    80007470:	00400993          	li	s3,4
    80007474:	fff00a13          	li	s4,-1
    80007478:	00a00a93          	li	s5,10
    8000747c:	05705e63          	blez	s7,800074d8 <consoleread+0xb4>
    80007480:	09c4a703          	lw	a4,156(s1)
    80007484:	0984a783          	lw	a5,152(s1)
    80007488:	0007071b          	sext.w	a4,a4
    8000748c:	08e78463          	beq	a5,a4,80007514 <consoleread+0xf0>
    80007490:	07f7f713          	andi	a4,a5,127
    80007494:	00e48733          	add	a4,s1,a4
    80007498:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000749c:	0017869b          	addiw	a3,a5,1
    800074a0:	08d4ac23          	sw	a3,152(s1)
    800074a4:	00070c9b          	sext.w	s9,a4
    800074a8:	0b370663          	beq	a4,s3,80007554 <consoleread+0x130>
    800074ac:	00100693          	li	a3,1
    800074b0:	f9f40613          	addi	a2,s0,-97
    800074b4:	000c0593          	mv	a1,s8
    800074b8:	00090513          	mv	a0,s2
    800074bc:	f8e40fa3          	sb	a4,-97(s0)
    800074c0:	00000097          	auipc	ra,0x0
    800074c4:	8bc080e7          	jalr	-1860(ra) # 80006d7c <either_copyout>
    800074c8:	01450863          	beq	a0,s4,800074d8 <consoleread+0xb4>
    800074cc:	001c0c13          	addi	s8,s8,1
    800074d0:	fffb8b9b          	addiw	s7,s7,-1
    800074d4:	fb5c94e3          	bne	s9,s5,8000747c <consoleread+0x58>
    800074d8:	000b851b          	sext.w	a0,s7
    800074dc:	06813083          	ld	ra,104(sp)
    800074e0:	06013403          	ld	s0,96(sp)
    800074e4:	05813483          	ld	s1,88(sp)
    800074e8:	05013903          	ld	s2,80(sp)
    800074ec:	04813983          	ld	s3,72(sp)
    800074f0:	04013a03          	ld	s4,64(sp)
    800074f4:	03813a83          	ld	s5,56(sp)
    800074f8:	02813b83          	ld	s7,40(sp)
    800074fc:	02013c03          	ld	s8,32(sp)
    80007500:	01813c83          	ld	s9,24(sp)
    80007504:	40ab053b          	subw	a0,s6,a0
    80007508:	03013b03          	ld	s6,48(sp)
    8000750c:	07010113          	addi	sp,sp,112
    80007510:	00008067          	ret
    80007514:	00001097          	auipc	ra,0x1
    80007518:	1d8080e7          	jalr	472(ra) # 800086ec <push_on>
    8000751c:	0984a703          	lw	a4,152(s1)
    80007520:	09c4a783          	lw	a5,156(s1)
    80007524:	0007879b          	sext.w	a5,a5
    80007528:	fef70ce3          	beq	a4,a5,80007520 <consoleread+0xfc>
    8000752c:	00001097          	auipc	ra,0x1
    80007530:	234080e7          	jalr	564(ra) # 80008760 <pop_on>
    80007534:	0984a783          	lw	a5,152(s1)
    80007538:	07f7f713          	andi	a4,a5,127
    8000753c:	00e48733          	add	a4,s1,a4
    80007540:	01874703          	lbu	a4,24(a4)
    80007544:	0017869b          	addiw	a3,a5,1
    80007548:	08d4ac23          	sw	a3,152(s1)
    8000754c:	00070c9b          	sext.w	s9,a4
    80007550:	f5371ee3          	bne	a4,s3,800074ac <consoleread+0x88>
    80007554:	000b851b          	sext.w	a0,s7
    80007558:	f96bf2e3          	bgeu	s7,s6,800074dc <consoleread+0xb8>
    8000755c:	08f4ac23          	sw	a5,152(s1)
    80007560:	f7dff06f          	j	800074dc <consoleread+0xb8>

0000000080007564 <consputc>:
    80007564:	10000793          	li	a5,256
    80007568:	00f50663          	beq	a0,a5,80007574 <consputc+0x10>
    8000756c:	00001317          	auipc	t1,0x1
    80007570:	9f430067          	jr	-1548(t1) # 80007f60 <uartputc_sync>
    80007574:	ff010113          	addi	sp,sp,-16
    80007578:	00113423          	sd	ra,8(sp)
    8000757c:	00813023          	sd	s0,0(sp)
    80007580:	01010413          	addi	s0,sp,16
    80007584:	00800513          	li	a0,8
    80007588:	00001097          	auipc	ra,0x1
    8000758c:	9d8080e7          	jalr	-1576(ra) # 80007f60 <uartputc_sync>
    80007590:	02000513          	li	a0,32
    80007594:	00001097          	auipc	ra,0x1
    80007598:	9cc080e7          	jalr	-1588(ra) # 80007f60 <uartputc_sync>
    8000759c:	00013403          	ld	s0,0(sp)
    800075a0:	00813083          	ld	ra,8(sp)
    800075a4:	00800513          	li	a0,8
    800075a8:	01010113          	addi	sp,sp,16
    800075ac:	00001317          	auipc	t1,0x1
    800075b0:	9b430067          	jr	-1612(t1) # 80007f60 <uartputc_sync>

00000000800075b4 <consoleintr>:
    800075b4:	fe010113          	addi	sp,sp,-32
    800075b8:	00813823          	sd	s0,16(sp)
    800075bc:	00913423          	sd	s1,8(sp)
    800075c0:	01213023          	sd	s2,0(sp)
    800075c4:	00113c23          	sd	ra,24(sp)
    800075c8:	02010413          	addi	s0,sp,32
    800075cc:	00006917          	auipc	s2,0x6
    800075d0:	82c90913          	addi	s2,s2,-2004 # 8000cdf8 <cons>
    800075d4:	00050493          	mv	s1,a0
    800075d8:	00090513          	mv	a0,s2
    800075dc:	00001097          	auipc	ra,0x1
    800075e0:	e40080e7          	jalr	-448(ra) # 8000841c <acquire>
    800075e4:	02048c63          	beqz	s1,8000761c <consoleintr+0x68>
    800075e8:	0a092783          	lw	a5,160(s2)
    800075ec:	09892703          	lw	a4,152(s2)
    800075f0:	07f00693          	li	a3,127
    800075f4:	40e7873b          	subw	a4,a5,a4
    800075f8:	02e6e263          	bltu	a3,a4,8000761c <consoleintr+0x68>
    800075fc:	00d00713          	li	a4,13
    80007600:	04e48063          	beq	s1,a4,80007640 <consoleintr+0x8c>
    80007604:	07f7f713          	andi	a4,a5,127
    80007608:	00e90733          	add	a4,s2,a4
    8000760c:	0017879b          	addiw	a5,a5,1
    80007610:	0af92023          	sw	a5,160(s2)
    80007614:	00970c23          	sb	s1,24(a4)
    80007618:	08f92e23          	sw	a5,156(s2)
    8000761c:	01013403          	ld	s0,16(sp)
    80007620:	01813083          	ld	ra,24(sp)
    80007624:	00813483          	ld	s1,8(sp)
    80007628:	00013903          	ld	s2,0(sp)
    8000762c:	00005517          	auipc	a0,0x5
    80007630:	7cc50513          	addi	a0,a0,1996 # 8000cdf8 <cons>
    80007634:	02010113          	addi	sp,sp,32
    80007638:	00001317          	auipc	t1,0x1
    8000763c:	eb030067          	jr	-336(t1) # 800084e8 <release>
    80007640:	00a00493          	li	s1,10
    80007644:	fc1ff06f          	j	80007604 <consoleintr+0x50>

0000000080007648 <consoleinit>:
    80007648:	fe010113          	addi	sp,sp,-32
    8000764c:	00113c23          	sd	ra,24(sp)
    80007650:	00813823          	sd	s0,16(sp)
    80007654:	00913423          	sd	s1,8(sp)
    80007658:	02010413          	addi	s0,sp,32
    8000765c:	00005497          	auipc	s1,0x5
    80007660:	79c48493          	addi	s1,s1,1948 # 8000cdf8 <cons>
    80007664:	00048513          	mv	a0,s1
    80007668:	00002597          	auipc	a1,0x2
    8000766c:	1b858593          	addi	a1,a1,440 # 80009820 <CONSOLE_STATUS+0x810>
    80007670:	00001097          	auipc	ra,0x1
    80007674:	d88080e7          	jalr	-632(ra) # 800083f8 <initlock>
    80007678:	00000097          	auipc	ra,0x0
    8000767c:	7ac080e7          	jalr	1964(ra) # 80007e24 <uartinit>
    80007680:	01813083          	ld	ra,24(sp)
    80007684:	01013403          	ld	s0,16(sp)
    80007688:	00000797          	auipc	a5,0x0
    8000768c:	d9c78793          	addi	a5,a5,-612 # 80007424 <consoleread>
    80007690:	0af4bc23          	sd	a5,184(s1)
    80007694:	00000797          	auipc	a5,0x0
    80007698:	cec78793          	addi	a5,a5,-788 # 80007380 <consolewrite>
    8000769c:	0cf4b023          	sd	a5,192(s1)
    800076a0:	00813483          	ld	s1,8(sp)
    800076a4:	02010113          	addi	sp,sp,32
    800076a8:	00008067          	ret

00000000800076ac <console_read>:
    800076ac:	ff010113          	addi	sp,sp,-16
    800076b0:	00813423          	sd	s0,8(sp)
    800076b4:	01010413          	addi	s0,sp,16
    800076b8:	00813403          	ld	s0,8(sp)
    800076bc:	00005317          	auipc	t1,0x5
    800076c0:	7f433303          	ld	t1,2036(t1) # 8000ceb0 <devsw+0x10>
    800076c4:	01010113          	addi	sp,sp,16
    800076c8:	00030067          	jr	t1

00000000800076cc <console_write>:
    800076cc:	ff010113          	addi	sp,sp,-16
    800076d0:	00813423          	sd	s0,8(sp)
    800076d4:	01010413          	addi	s0,sp,16
    800076d8:	00813403          	ld	s0,8(sp)
    800076dc:	00005317          	auipc	t1,0x5
    800076e0:	7dc33303          	ld	t1,2012(t1) # 8000ceb8 <devsw+0x18>
    800076e4:	01010113          	addi	sp,sp,16
    800076e8:	00030067          	jr	t1

00000000800076ec <panic>:
    800076ec:	fe010113          	addi	sp,sp,-32
    800076f0:	00113c23          	sd	ra,24(sp)
    800076f4:	00813823          	sd	s0,16(sp)
    800076f8:	00913423          	sd	s1,8(sp)
    800076fc:	02010413          	addi	s0,sp,32
    80007700:	00050493          	mv	s1,a0
    80007704:	00002517          	auipc	a0,0x2
    80007708:	12450513          	addi	a0,a0,292 # 80009828 <CONSOLE_STATUS+0x818>
    8000770c:	00006797          	auipc	a5,0x6
    80007710:	8407a623          	sw	zero,-1972(a5) # 8000cf58 <pr+0x18>
    80007714:	00000097          	auipc	ra,0x0
    80007718:	034080e7          	jalr	52(ra) # 80007748 <__printf>
    8000771c:	00048513          	mv	a0,s1
    80007720:	00000097          	auipc	ra,0x0
    80007724:	028080e7          	jalr	40(ra) # 80007748 <__printf>
    80007728:	00002517          	auipc	a0,0x2
    8000772c:	bb850513          	addi	a0,a0,-1096 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80007730:	00000097          	auipc	ra,0x0
    80007734:	018080e7          	jalr	24(ra) # 80007748 <__printf>
    80007738:	00100793          	li	a5,1
    8000773c:	00004717          	auipc	a4,0x4
    80007740:	50f72623          	sw	a5,1292(a4) # 8000bc48 <panicked>
    80007744:	0000006f          	j	80007744 <panic+0x58>

0000000080007748 <__printf>:
    80007748:	f3010113          	addi	sp,sp,-208
    8000774c:	08813023          	sd	s0,128(sp)
    80007750:	07313423          	sd	s3,104(sp)
    80007754:	09010413          	addi	s0,sp,144
    80007758:	05813023          	sd	s8,64(sp)
    8000775c:	08113423          	sd	ra,136(sp)
    80007760:	06913c23          	sd	s1,120(sp)
    80007764:	07213823          	sd	s2,112(sp)
    80007768:	07413023          	sd	s4,96(sp)
    8000776c:	05513c23          	sd	s5,88(sp)
    80007770:	05613823          	sd	s6,80(sp)
    80007774:	05713423          	sd	s7,72(sp)
    80007778:	03913c23          	sd	s9,56(sp)
    8000777c:	03a13823          	sd	s10,48(sp)
    80007780:	03b13423          	sd	s11,40(sp)
    80007784:	00005317          	auipc	t1,0x5
    80007788:	7bc30313          	addi	t1,t1,1980 # 8000cf40 <pr>
    8000778c:	01832c03          	lw	s8,24(t1)
    80007790:	00b43423          	sd	a1,8(s0)
    80007794:	00c43823          	sd	a2,16(s0)
    80007798:	00d43c23          	sd	a3,24(s0)
    8000779c:	02e43023          	sd	a4,32(s0)
    800077a0:	02f43423          	sd	a5,40(s0)
    800077a4:	03043823          	sd	a6,48(s0)
    800077a8:	03143c23          	sd	a7,56(s0)
    800077ac:	00050993          	mv	s3,a0
    800077b0:	4a0c1663          	bnez	s8,80007c5c <__printf+0x514>
    800077b4:	60098c63          	beqz	s3,80007dcc <__printf+0x684>
    800077b8:	0009c503          	lbu	a0,0(s3)
    800077bc:	00840793          	addi	a5,s0,8
    800077c0:	f6f43c23          	sd	a5,-136(s0)
    800077c4:	00000493          	li	s1,0
    800077c8:	22050063          	beqz	a0,800079e8 <__printf+0x2a0>
    800077cc:	00002a37          	lui	s4,0x2
    800077d0:	00018ab7          	lui	s5,0x18
    800077d4:	000f4b37          	lui	s6,0xf4
    800077d8:	00989bb7          	lui	s7,0x989
    800077dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800077e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800077e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800077e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800077ec:	00148c9b          	addiw	s9,s1,1
    800077f0:	02500793          	li	a5,37
    800077f4:	01998933          	add	s2,s3,s9
    800077f8:	38f51263          	bne	a0,a5,80007b7c <__printf+0x434>
    800077fc:	00094783          	lbu	a5,0(s2)
    80007800:	00078c9b          	sext.w	s9,a5
    80007804:	1e078263          	beqz	a5,800079e8 <__printf+0x2a0>
    80007808:	0024849b          	addiw	s1,s1,2
    8000780c:	07000713          	li	a4,112
    80007810:	00998933          	add	s2,s3,s1
    80007814:	38e78a63          	beq	a5,a4,80007ba8 <__printf+0x460>
    80007818:	20f76863          	bltu	a4,a5,80007a28 <__printf+0x2e0>
    8000781c:	42a78863          	beq	a5,a0,80007c4c <__printf+0x504>
    80007820:	06400713          	li	a4,100
    80007824:	40e79663          	bne	a5,a4,80007c30 <__printf+0x4e8>
    80007828:	f7843783          	ld	a5,-136(s0)
    8000782c:	0007a603          	lw	a2,0(a5)
    80007830:	00878793          	addi	a5,a5,8
    80007834:	f6f43c23          	sd	a5,-136(s0)
    80007838:	42064a63          	bltz	a2,80007c6c <__printf+0x524>
    8000783c:	00a00713          	li	a4,10
    80007840:	02e677bb          	remuw	a5,a2,a4
    80007844:	00002d97          	auipc	s11,0x2
    80007848:	00cd8d93          	addi	s11,s11,12 # 80009850 <digits>
    8000784c:	00900593          	li	a1,9
    80007850:	0006051b          	sext.w	a0,a2
    80007854:	00000c93          	li	s9,0
    80007858:	02079793          	slli	a5,a5,0x20
    8000785c:	0207d793          	srli	a5,a5,0x20
    80007860:	00fd87b3          	add	a5,s11,a5
    80007864:	0007c783          	lbu	a5,0(a5)
    80007868:	02e656bb          	divuw	a3,a2,a4
    8000786c:	f8f40023          	sb	a5,-128(s0)
    80007870:	14c5d863          	bge	a1,a2,800079c0 <__printf+0x278>
    80007874:	06300593          	li	a1,99
    80007878:	00100c93          	li	s9,1
    8000787c:	02e6f7bb          	remuw	a5,a3,a4
    80007880:	02079793          	slli	a5,a5,0x20
    80007884:	0207d793          	srli	a5,a5,0x20
    80007888:	00fd87b3          	add	a5,s11,a5
    8000788c:	0007c783          	lbu	a5,0(a5)
    80007890:	02e6d73b          	divuw	a4,a3,a4
    80007894:	f8f400a3          	sb	a5,-127(s0)
    80007898:	12a5f463          	bgeu	a1,a0,800079c0 <__printf+0x278>
    8000789c:	00a00693          	li	a3,10
    800078a0:	00900593          	li	a1,9
    800078a4:	02d777bb          	remuw	a5,a4,a3
    800078a8:	02079793          	slli	a5,a5,0x20
    800078ac:	0207d793          	srli	a5,a5,0x20
    800078b0:	00fd87b3          	add	a5,s11,a5
    800078b4:	0007c503          	lbu	a0,0(a5)
    800078b8:	02d757bb          	divuw	a5,a4,a3
    800078bc:	f8a40123          	sb	a0,-126(s0)
    800078c0:	48e5f263          	bgeu	a1,a4,80007d44 <__printf+0x5fc>
    800078c4:	06300513          	li	a0,99
    800078c8:	02d7f5bb          	remuw	a1,a5,a3
    800078cc:	02059593          	slli	a1,a1,0x20
    800078d0:	0205d593          	srli	a1,a1,0x20
    800078d4:	00bd85b3          	add	a1,s11,a1
    800078d8:	0005c583          	lbu	a1,0(a1)
    800078dc:	02d7d7bb          	divuw	a5,a5,a3
    800078e0:	f8b401a3          	sb	a1,-125(s0)
    800078e4:	48e57263          	bgeu	a0,a4,80007d68 <__printf+0x620>
    800078e8:	3e700513          	li	a0,999
    800078ec:	02d7f5bb          	remuw	a1,a5,a3
    800078f0:	02059593          	slli	a1,a1,0x20
    800078f4:	0205d593          	srli	a1,a1,0x20
    800078f8:	00bd85b3          	add	a1,s11,a1
    800078fc:	0005c583          	lbu	a1,0(a1)
    80007900:	02d7d7bb          	divuw	a5,a5,a3
    80007904:	f8b40223          	sb	a1,-124(s0)
    80007908:	46e57663          	bgeu	a0,a4,80007d74 <__printf+0x62c>
    8000790c:	02d7f5bb          	remuw	a1,a5,a3
    80007910:	02059593          	slli	a1,a1,0x20
    80007914:	0205d593          	srli	a1,a1,0x20
    80007918:	00bd85b3          	add	a1,s11,a1
    8000791c:	0005c583          	lbu	a1,0(a1)
    80007920:	02d7d7bb          	divuw	a5,a5,a3
    80007924:	f8b402a3          	sb	a1,-123(s0)
    80007928:	46ea7863          	bgeu	s4,a4,80007d98 <__printf+0x650>
    8000792c:	02d7f5bb          	remuw	a1,a5,a3
    80007930:	02059593          	slli	a1,a1,0x20
    80007934:	0205d593          	srli	a1,a1,0x20
    80007938:	00bd85b3          	add	a1,s11,a1
    8000793c:	0005c583          	lbu	a1,0(a1)
    80007940:	02d7d7bb          	divuw	a5,a5,a3
    80007944:	f8b40323          	sb	a1,-122(s0)
    80007948:	3eeaf863          	bgeu	s5,a4,80007d38 <__printf+0x5f0>
    8000794c:	02d7f5bb          	remuw	a1,a5,a3
    80007950:	02059593          	slli	a1,a1,0x20
    80007954:	0205d593          	srli	a1,a1,0x20
    80007958:	00bd85b3          	add	a1,s11,a1
    8000795c:	0005c583          	lbu	a1,0(a1)
    80007960:	02d7d7bb          	divuw	a5,a5,a3
    80007964:	f8b403a3          	sb	a1,-121(s0)
    80007968:	42eb7e63          	bgeu	s6,a4,80007da4 <__printf+0x65c>
    8000796c:	02d7f5bb          	remuw	a1,a5,a3
    80007970:	02059593          	slli	a1,a1,0x20
    80007974:	0205d593          	srli	a1,a1,0x20
    80007978:	00bd85b3          	add	a1,s11,a1
    8000797c:	0005c583          	lbu	a1,0(a1)
    80007980:	02d7d7bb          	divuw	a5,a5,a3
    80007984:	f8b40423          	sb	a1,-120(s0)
    80007988:	42ebfc63          	bgeu	s7,a4,80007dc0 <__printf+0x678>
    8000798c:	02079793          	slli	a5,a5,0x20
    80007990:	0207d793          	srli	a5,a5,0x20
    80007994:	00fd8db3          	add	s11,s11,a5
    80007998:	000dc703          	lbu	a4,0(s11)
    8000799c:	00a00793          	li	a5,10
    800079a0:	00900c93          	li	s9,9
    800079a4:	f8e404a3          	sb	a4,-119(s0)
    800079a8:	00065c63          	bgez	a2,800079c0 <__printf+0x278>
    800079ac:	f9040713          	addi	a4,s0,-112
    800079b0:	00f70733          	add	a4,a4,a5
    800079b4:	02d00693          	li	a3,45
    800079b8:	fed70823          	sb	a3,-16(a4)
    800079bc:	00078c93          	mv	s9,a5
    800079c0:	f8040793          	addi	a5,s0,-128
    800079c4:	01978cb3          	add	s9,a5,s9
    800079c8:	f7f40d13          	addi	s10,s0,-129
    800079cc:	000cc503          	lbu	a0,0(s9)
    800079d0:	fffc8c93          	addi	s9,s9,-1
    800079d4:	00000097          	auipc	ra,0x0
    800079d8:	b90080e7          	jalr	-1136(ra) # 80007564 <consputc>
    800079dc:	ffac98e3          	bne	s9,s10,800079cc <__printf+0x284>
    800079e0:	00094503          	lbu	a0,0(s2)
    800079e4:	e00514e3          	bnez	a0,800077ec <__printf+0xa4>
    800079e8:	1a0c1663          	bnez	s8,80007b94 <__printf+0x44c>
    800079ec:	08813083          	ld	ra,136(sp)
    800079f0:	08013403          	ld	s0,128(sp)
    800079f4:	07813483          	ld	s1,120(sp)
    800079f8:	07013903          	ld	s2,112(sp)
    800079fc:	06813983          	ld	s3,104(sp)
    80007a00:	06013a03          	ld	s4,96(sp)
    80007a04:	05813a83          	ld	s5,88(sp)
    80007a08:	05013b03          	ld	s6,80(sp)
    80007a0c:	04813b83          	ld	s7,72(sp)
    80007a10:	04013c03          	ld	s8,64(sp)
    80007a14:	03813c83          	ld	s9,56(sp)
    80007a18:	03013d03          	ld	s10,48(sp)
    80007a1c:	02813d83          	ld	s11,40(sp)
    80007a20:	0d010113          	addi	sp,sp,208
    80007a24:	00008067          	ret
    80007a28:	07300713          	li	a4,115
    80007a2c:	1ce78a63          	beq	a5,a4,80007c00 <__printf+0x4b8>
    80007a30:	07800713          	li	a4,120
    80007a34:	1ee79e63          	bne	a5,a4,80007c30 <__printf+0x4e8>
    80007a38:	f7843783          	ld	a5,-136(s0)
    80007a3c:	0007a703          	lw	a4,0(a5)
    80007a40:	00878793          	addi	a5,a5,8
    80007a44:	f6f43c23          	sd	a5,-136(s0)
    80007a48:	28074263          	bltz	a4,80007ccc <__printf+0x584>
    80007a4c:	00002d97          	auipc	s11,0x2
    80007a50:	e04d8d93          	addi	s11,s11,-508 # 80009850 <digits>
    80007a54:	00f77793          	andi	a5,a4,15
    80007a58:	00fd87b3          	add	a5,s11,a5
    80007a5c:	0007c683          	lbu	a3,0(a5)
    80007a60:	00f00613          	li	a2,15
    80007a64:	0007079b          	sext.w	a5,a4
    80007a68:	f8d40023          	sb	a3,-128(s0)
    80007a6c:	0047559b          	srliw	a1,a4,0x4
    80007a70:	0047569b          	srliw	a3,a4,0x4
    80007a74:	00000c93          	li	s9,0
    80007a78:	0ee65063          	bge	a2,a4,80007b58 <__printf+0x410>
    80007a7c:	00f6f693          	andi	a3,a3,15
    80007a80:	00dd86b3          	add	a3,s11,a3
    80007a84:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007a88:	0087d79b          	srliw	a5,a5,0x8
    80007a8c:	00100c93          	li	s9,1
    80007a90:	f8d400a3          	sb	a3,-127(s0)
    80007a94:	0cb67263          	bgeu	a2,a1,80007b58 <__printf+0x410>
    80007a98:	00f7f693          	andi	a3,a5,15
    80007a9c:	00dd86b3          	add	a3,s11,a3
    80007aa0:	0006c583          	lbu	a1,0(a3)
    80007aa4:	00f00613          	li	a2,15
    80007aa8:	0047d69b          	srliw	a3,a5,0x4
    80007aac:	f8b40123          	sb	a1,-126(s0)
    80007ab0:	0047d593          	srli	a1,a5,0x4
    80007ab4:	28f67e63          	bgeu	a2,a5,80007d50 <__printf+0x608>
    80007ab8:	00f6f693          	andi	a3,a3,15
    80007abc:	00dd86b3          	add	a3,s11,a3
    80007ac0:	0006c503          	lbu	a0,0(a3)
    80007ac4:	0087d813          	srli	a6,a5,0x8
    80007ac8:	0087d69b          	srliw	a3,a5,0x8
    80007acc:	f8a401a3          	sb	a0,-125(s0)
    80007ad0:	28b67663          	bgeu	a2,a1,80007d5c <__printf+0x614>
    80007ad4:	00f6f693          	andi	a3,a3,15
    80007ad8:	00dd86b3          	add	a3,s11,a3
    80007adc:	0006c583          	lbu	a1,0(a3)
    80007ae0:	00c7d513          	srli	a0,a5,0xc
    80007ae4:	00c7d69b          	srliw	a3,a5,0xc
    80007ae8:	f8b40223          	sb	a1,-124(s0)
    80007aec:	29067a63          	bgeu	a2,a6,80007d80 <__printf+0x638>
    80007af0:	00f6f693          	andi	a3,a3,15
    80007af4:	00dd86b3          	add	a3,s11,a3
    80007af8:	0006c583          	lbu	a1,0(a3)
    80007afc:	0107d813          	srli	a6,a5,0x10
    80007b00:	0107d69b          	srliw	a3,a5,0x10
    80007b04:	f8b402a3          	sb	a1,-123(s0)
    80007b08:	28a67263          	bgeu	a2,a0,80007d8c <__printf+0x644>
    80007b0c:	00f6f693          	andi	a3,a3,15
    80007b10:	00dd86b3          	add	a3,s11,a3
    80007b14:	0006c683          	lbu	a3,0(a3)
    80007b18:	0147d79b          	srliw	a5,a5,0x14
    80007b1c:	f8d40323          	sb	a3,-122(s0)
    80007b20:	21067663          	bgeu	a2,a6,80007d2c <__printf+0x5e4>
    80007b24:	02079793          	slli	a5,a5,0x20
    80007b28:	0207d793          	srli	a5,a5,0x20
    80007b2c:	00fd8db3          	add	s11,s11,a5
    80007b30:	000dc683          	lbu	a3,0(s11)
    80007b34:	00800793          	li	a5,8
    80007b38:	00700c93          	li	s9,7
    80007b3c:	f8d403a3          	sb	a3,-121(s0)
    80007b40:	00075c63          	bgez	a4,80007b58 <__printf+0x410>
    80007b44:	f9040713          	addi	a4,s0,-112
    80007b48:	00f70733          	add	a4,a4,a5
    80007b4c:	02d00693          	li	a3,45
    80007b50:	fed70823          	sb	a3,-16(a4)
    80007b54:	00078c93          	mv	s9,a5
    80007b58:	f8040793          	addi	a5,s0,-128
    80007b5c:	01978cb3          	add	s9,a5,s9
    80007b60:	f7f40d13          	addi	s10,s0,-129
    80007b64:	000cc503          	lbu	a0,0(s9)
    80007b68:	fffc8c93          	addi	s9,s9,-1
    80007b6c:	00000097          	auipc	ra,0x0
    80007b70:	9f8080e7          	jalr	-1544(ra) # 80007564 <consputc>
    80007b74:	ff9d18e3          	bne	s10,s9,80007b64 <__printf+0x41c>
    80007b78:	0100006f          	j	80007b88 <__printf+0x440>
    80007b7c:	00000097          	auipc	ra,0x0
    80007b80:	9e8080e7          	jalr	-1560(ra) # 80007564 <consputc>
    80007b84:	000c8493          	mv	s1,s9
    80007b88:	00094503          	lbu	a0,0(s2)
    80007b8c:	c60510e3          	bnez	a0,800077ec <__printf+0xa4>
    80007b90:	e40c0ee3          	beqz	s8,800079ec <__printf+0x2a4>
    80007b94:	00005517          	auipc	a0,0x5
    80007b98:	3ac50513          	addi	a0,a0,940 # 8000cf40 <pr>
    80007b9c:	00001097          	auipc	ra,0x1
    80007ba0:	94c080e7          	jalr	-1716(ra) # 800084e8 <release>
    80007ba4:	e49ff06f          	j	800079ec <__printf+0x2a4>
    80007ba8:	f7843783          	ld	a5,-136(s0)
    80007bac:	03000513          	li	a0,48
    80007bb0:	01000d13          	li	s10,16
    80007bb4:	00878713          	addi	a4,a5,8
    80007bb8:	0007bc83          	ld	s9,0(a5)
    80007bbc:	f6e43c23          	sd	a4,-136(s0)
    80007bc0:	00000097          	auipc	ra,0x0
    80007bc4:	9a4080e7          	jalr	-1628(ra) # 80007564 <consputc>
    80007bc8:	07800513          	li	a0,120
    80007bcc:	00000097          	auipc	ra,0x0
    80007bd0:	998080e7          	jalr	-1640(ra) # 80007564 <consputc>
    80007bd4:	00002d97          	auipc	s11,0x2
    80007bd8:	c7cd8d93          	addi	s11,s11,-900 # 80009850 <digits>
    80007bdc:	03ccd793          	srli	a5,s9,0x3c
    80007be0:	00fd87b3          	add	a5,s11,a5
    80007be4:	0007c503          	lbu	a0,0(a5)
    80007be8:	fffd0d1b          	addiw	s10,s10,-1
    80007bec:	004c9c93          	slli	s9,s9,0x4
    80007bf0:	00000097          	auipc	ra,0x0
    80007bf4:	974080e7          	jalr	-1676(ra) # 80007564 <consputc>
    80007bf8:	fe0d12e3          	bnez	s10,80007bdc <__printf+0x494>
    80007bfc:	f8dff06f          	j	80007b88 <__printf+0x440>
    80007c00:	f7843783          	ld	a5,-136(s0)
    80007c04:	0007bc83          	ld	s9,0(a5)
    80007c08:	00878793          	addi	a5,a5,8
    80007c0c:	f6f43c23          	sd	a5,-136(s0)
    80007c10:	000c9a63          	bnez	s9,80007c24 <__printf+0x4dc>
    80007c14:	1080006f          	j	80007d1c <__printf+0x5d4>
    80007c18:	001c8c93          	addi	s9,s9,1
    80007c1c:	00000097          	auipc	ra,0x0
    80007c20:	948080e7          	jalr	-1720(ra) # 80007564 <consputc>
    80007c24:	000cc503          	lbu	a0,0(s9)
    80007c28:	fe0518e3          	bnez	a0,80007c18 <__printf+0x4d0>
    80007c2c:	f5dff06f          	j	80007b88 <__printf+0x440>
    80007c30:	02500513          	li	a0,37
    80007c34:	00000097          	auipc	ra,0x0
    80007c38:	930080e7          	jalr	-1744(ra) # 80007564 <consputc>
    80007c3c:	000c8513          	mv	a0,s9
    80007c40:	00000097          	auipc	ra,0x0
    80007c44:	924080e7          	jalr	-1756(ra) # 80007564 <consputc>
    80007c48:	f41ff06f          	j	80007b88 <__printf+0x440>
    80007c4c:	02500513          	li	a0,37
    80007c50:	00000097          	auipc	ra,0x0
    80007c54:	914080e7          	jalr	-1772(ra) # 80007564 <consputc>
    80007c58:	f31ff06f          	j	80007b88 <__printf+0x440>
    80007c5c:	00030513          	mv	a0,t1
    80007c60:	00000097          	auipc	ra,0x0
    80007c64:	7bc080e7          	jalr	1980(ra) # 8000841c <acquire>
    80007c68:	b4dff06f          	j	800077b4 <__printf+0x6c>
    80007c6c:	40c0053b          	negw	a0,a2
    80007c70:	00a00713          	li	a4,10
    80007c74:	02e576bb          	remuw	a3,a0,a4
    80007c78:	00002d97          	auipc	s11,0x2
    80007c7c:	bd8d8d93          	addi	s11,s11,-1064 # 80009850 <digits>
    80007c80:	ff700593          	li	a1,-9
    80007c84:	02069693          	slli	a3,a3,0x20
    80007c88:	0206d693          	srli	a3,a3,0x20
    80007c8c:	00dd86b3          	add	a3,s11,a3
    80007c90:	0006c683          	lbu	a3,0(a3)
    80007c94:	02e557bb          	divuw	a5,a0,a4
    80007c98:	f8d40023          	sb	a3,-128(s0)
    80007c9c:	10b65e63          	bge	a2,a1,80007db8 <__printf+0x670>
    80007ca0:	06300593          	li	a1,99
    80007ca4:	02e7f6bb          	remuw	a3,a5,a4
    80007ca8:	02069693          	slli	a3,a3,0x20
    80007cac:	0206d693          	srli	a3,a3,0x20
    80007cb0:	00dd86b3          	add	a3,s11,a3
    80007cb4:	0006c683          	lbu	a3,0(a3)
    80007cb8:	02e7d73b          	divuw	a4,a5,a4
    80007cbc:	00200793          	li	a5,2
    80007cc0:	f8d400a3          	sb	a3,-127(s0)
    80007cc4:	bca5ece3          	bltu	a1,a0,8000789c <__printf+0x154>
    80007cc8:	ce5ff06f          	j	800079ac <__printf+0x264>
    80007ccc:	40e007bb          	negw	a5,a4
    80007cd0:	00002d97          	auipc	s11,0x2
    80007cd4:	b80d8d93          	addi	s11,s11,-1152 # 80009850 <digits>
    80007cd8:	00f7f693          	andi	a3,a5,15
    80007cdc:	00dd86b3          	add	a3,s11,a3
    80007ce0:	0006c583          	lbu	a1,0(a3)
    80007ce4:	ff100613          	li	a2,-15
    80007ce8:	0047d69b          	srliw	a3,a5,0x4
    80007cec:	f8b40023          	sb	a1,-128(s0)
    80007cf0:	0047d59b          	srliw	a1,a5,0x4
    80007cf4:	0ac75e63          	bge	a4,a2,80007db0 <__printf+0x668>
    80007cf8:	00f6f693          	andi	a3,a3,15
    80007cfc:	00dd86b3          	add	a3,s11,a3
    80007d00:	0006c603          	lbu	a2,0(a3)
    80007d04:	00f00693          	li	a3,15
    80007d08:	0087d79b          	srliw	a5,a5,0x8
    80007d0c:	f8c400a3          	sb	a2,-127(s0)
    80007d10:	d8b6e4e3          	bltu	a3,a1,80007a98 <__printf+0x350>
    80007d14:	00200793          	li	a5,2
    80007d18:	e2dff06f          	j	80007b44 <__printf+0x3fc>
    80007d1c:	00002c97          	auipc	s9,0x2
    80007d20:	b14c8c93          	addi	s9,s9,-1260 # 80009830 <CONSOLE_STATUS+0x820>
    80007d24:	02800513          	li	a0,40
    80007d28:	ef1ff06f          	j	80007c18 <__printf+0x4d0>
    80007d2c:	00700793          	li	a5,7
    80007d30:	00600c93          	li	s9,6
    80007d34:	e0dff06f          	j	80007b40 <__printf+0x3f8>
    80007d38:	00700793          	li	a5,7
    80007d3c:	00600c93          	li	s9,6
    80007d40:	c69ff06f          	j	800079a8 <__printf+0x260>
    80007d44:	00300793          	li	a5,3
    80007d48:	00200c93          	li	s9,2
    80007d4c:	c5dff06f          	j	800079a8 <__printf+0x260>
    80007d50:	00300793          	li	a5,3
    80007d54:	00200c93          	li	s9,2
    80007d58:	de9ff06f          	j	80007b40 <__printf+0x3f8>
    80007d5c:	00400793          	li	a5,4
    80007d60:	00300c93          	li	s9,3
    80007d64:	dddff06f          	j	80007b40 <__printf+0x3f8>
    80007d68:	00400793          	li	a5,4
    80007d6c:	00300c93          	li	s9,3
    80007d70:	c39ff06f          	j	800079a8 <__printf+0x260>
    80007d74:	00500793          	li	a5,5
    80007d78:	00400c93          	li	s9,4
    80007d7c:	c2dff06f          	j	800079a8 <__printf+0x260>
    80007d80:	00500793          	li	a5,5
    80007d84:	00400c93          	li	s9,4
    80007d88:	db9ff06f          	j	80007b40 <__printf+0x3f8>
    80007d8c:	00600793          	li	a5,6
    80007d90:	00500c93          	li	s9,5
    80007d94:	dadff06f          	j	80007b40 <__printf+0x3f8>
    80007d98:	00600793          	li	a5,6
    80007d9c:	00500c93          	li	s9,5
    80007da0:	c09ff06f          	j	800079a8 <__printf+0x260>
    80007da4:	00800793          	li	a5,8
    80007da8:	00700c93          	li	s9,7
    80007dac:	bfdff06f          	j	800079a8 <__printf+0x260>
    80007db0:	00100793          	li	a5,1
    80007db4:	d91ff06f          	j	80007b44 <__printf+0x3fc>
    80007db8:	00100793          	li	a5,1
    80007dbc:	bf1ff06f          	j	800079ac <__printf+0x264>
    80007dc0:	00900793          	li	a5,9
    80007dc4:	00800c93          	li	s9,8
    80007dc8:	be1ff06f          	j	800079a8 <__printf+0x260>
    80007dcc:	00002517          	auipc	a0,0x2
    80007dd0:	a6c50513          	addi	a0,a0,-1428 # 80009838 <CONSOLE_STATUS+0x828>
    80007dd4:	00000097          	auipc	ra,0x0
    80007dd8:	918080e7          	jalr	-1768(ra) # 800076ec <panic>

0000000080007ddc <printfinit>:
    80007ddc:	fe010113          	addi	sp,sp,-32
    80007de0:	00813823          	sd	s0,16(sp)
    80007de4:	00913423          	sd	s1,8(sp)
    80007de8:	00113c23          	sd	ra,24(sp)
    80007dec:	02010413          	addi	s0,sp,32
    80007df0:	00005497          	auipc	s1,0x5
    80007df4:	15048493          	addi	s1,s1,336 # 8000cf40 <pr>
    80007df8:	00048513          	mv	a0,s1
    80007dfc:	00002597          	auipc	a1,0x2
    80007e00:	a4c58593          	addi	a1,a1,-1460 # 80009848 <CONSOLE_STATUS+0x838>
    80007e04:	00000097          	auipc	ra,0x0
    80007e08:	5f4080e7          	jalr	1524(ra) # 800083f8 <initlock>
    80007e0c:	01813083          	ld	ra,24(sp)
    80007e10:	01013403          	ld	s0,16(sp)
    80007e14:	0004ac23          	sw	zero,24(s1)
    80007e18:	00813483          	ld	s1,8(sp)
    80007e1c:	02010113          	addi	sp,sp,32
    80007e20:	00008067          	ret

0000000080007e24 <uartinit>:
    80007e24:	ff010113          	addi	sp,sp,-16
    80007e28:	00813423          	sd	s0,8(sp)
    80007e2c:	01010413          	addi	s0,sp,16
    80007e30:	100007b7          	lui	a5,0x10000
    80007e34:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007e38:	f8000713          	li	a4,-128
    80007e3c:	00e781a3          	sb	a4,3(a5)
    80007e40:	00300713          	li	a4,3
    80007e44:	00e78023          	sb	a4,0(a5)
    80007e48:	000780a3          	sb	zero,1(a5)
    80007e4c:	00e781a3          	sb	a4,3(a5)
    80007e50:	00700693          	li	a3,7
    80007e54:	00d78123          	sb	a3,2(a5)
    80007e58:	00e780a3          	sb	a4,1(a5)
    80007e5c:	00813403          	ld	s0,8(sp)
    80007e60:	01010113          	addi	sp,sp,16
    80007e64:	00008067          	ret

0000000080007e68 <uartputc>:
    80007e68:	00004797          	auipc	a5,0x4
    80007e6c:	de07a783          	lw	a5,-544(a5) # 8000bc48 <panicked>
    80007e70:	00078463          	beqz	a5,80007e78 <uartputc+0x10>
    80007e74:	0000006f          	j	80007e74 <uartputc+0xc>
    80007e78:	fd010113          	addi	sp,sp,-48
    80007e7c:	02813023          	sd	s0,32(sp)
    80007e80:	00913c23          	sd	s1,24(sp)
    80007e84:	01213823          	sd	s2,16(sp)
    80007e88:	01313423          	sd	s3,8(sp)
    80007e8c:	02113423          	sd	ra,40(sp)
    80007e90:	03010413          	addi	s0,sp,48
    80007e94:	00004917          	auipc	s2,0x4
    80007e98:	dbc90913          	addi	s2,s2,-580 # 8000bc50 <uart_tx_r>
    80007e9c:	00093783          	ld	a5,0(s2)
    80007ea0:	00004497          	auipc	s1,0x4
    80007ea4:	db848493          	addi	s1,s1,-584 # 8000bc58 <uart_tx_w>
    80007ea8:	0004b703          	ld	a4,0(s1)
    80007eac:	02078693          	addi	a3,a5,32
    80007eb0:	00050993          	mv	s3,a0
    80007eb4:	02e69c63          	bne	a3,a4,80007eec <uartputc+0x84>
    80007eb8:	00001097          	auipc	ra,0x1
    80007ebc:	834080e7          	jalr	-1996(ra) # 800086ec <push_on>
    80007ec0:	00093783          	ld	a5,0(s2)
    80007ec4:	0004b703          	ld	a4,0(s1)
    80007ec8:	02078793          	addi	a5,a5,32
    80007ecc:	00e79463          	bne	a5,a4,80007ed4 <uartputc+0x6c>
    80007ed0:	0000006f          	j	80007ed0 <uartputc+0x68>
    80007ed4:	00001097          	auipc	ra,0x1
    80007ed8:	88c080e7          	jalr	-1908(ra) # 80008760 <pop_on>
    80007edc:	00093783          	ld	a5,0(s2)
    80007ee0:	0004b703          	ld	a4,0(s1)
    80007ee4:	02078693          	addi	a3,a5,32
    80007ee8:	fce688e3          	beq	a3,a4,80007eb8 <uartputc+0x50>
    80007eec:	01f77693          	andi	a3,a4,31
    80007ef0:	00005597          	auipc	a1,0x5
    80007ef4:	07058593          	addi	a1,a1,112 # 8000cf60 <uart_tx_buf>
    80007ef8:	00d586b3          	add	a3,a1,a3
    80007efc:	00170713          	addi	a4,a4,1
    80007f00:	01368023          	sb	s3,0(a3)
    80007f04:	00e4b023          	sd	a4,0(s1)
    80007f08:	10000637          	lui	a2,0x10000
    80007f0c:	02f71063          	bne	a4,a5,80007f2c <uartputc+0xc4>
    80007f10:	0340006f          	j	80007f44 <uartputc+0xdc>
    80007f14:	00074703          	lbu	a4,0(a4)
    80007f18:	00f93023          	sd	a5,0(s2)
    80007f1c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007f20:	00093783          	ld	a5,0(s2)
    80007f24:	0004b703          	ld	a4,0(s1)
    80007f28:	00f70e63          	beq	a4,a5,80007f44 <uartputc+0xdc>
    80007f2c:	00564683          	lbu	a3,5(a2)
    80007f30:	01f7f713          	andi	a4,a5,31
    80007f34:	00e58733          	add	a4,a1,a4
    80007f38:	0206f693          	andi	a3,a3,32
    80007f3c:	00178793          	addi	a5,a5,1
    80007f40:	fc069ae3          	bnez	a3,80007f14 <uartputc+0xac>
    80007f44:	02813083          	ld	ra,40(sp)
    80007f48:	02013403          	ld	s0,32(sp)
    80007f4c:	01813483          	ld	s1,24(sp)
    80007f50:	01013903          	ld	s2,16(sp)
    80007f54:	00813983          	ld	s3,8(sp)
    80007f58:	03010113          	addi	sp,sp,48
    80007f5c:	00008067          	ret

0000000080007f60 <uartputc_sync>:
    80007f60:	ff010113          	addi	sp,sp,-16
    80007f64:	00813423          	sd	s0,8(sp)
    80007f68:	01010413          	addi	s0,sp,16
    80007f6c:	00004717          	auipc	a4,0x4
    80007f70:	cdc72703          	lw	a4,-804(a4) # 8000bc48 <panicked>
    80007f74:	02071663          	bnez	a4,80007fa0 <uartputc_sync+0x40>
    80007f78:	00050793          	mv	a5,a0
    80007f7c:	100006b7          	lui	a3,0x10000
    80007f80:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007f84:	02077713          	andi	a4,a4,32
    80007f88:	fe070ce3          	beqz	a4,80007f80 <uartputc_sync+0x20>
    80007f8c:	0ff7f793          	andi	a5,a5,255
    80007f90:	00f68023          	sb	a5,0(a3)
    80007f94:	00813403          	ld	s0,8(sp)
    80007f98:	01010113          	addi	sp,sp,16
    80007f9c:	00008067          	ret
    80007fa0:	0000006f          	j	80007fa0 <uartputc_sync+0x40>

0000000080007fa4 <uartstart>:
    80007fa4:	ff010113          	addi	sp,sp,-16
    80007fa8:	00813423          	sd	s0,8(sp)
    80007fac:	01010413          	addi	s0,sp,16
    80007fb0:	00004617          	auipc	a2,0x4
    80007fb4:	ca060613          	addi	a2,a2,-864 # 8000bc50 <uart_tx_r>
    80007fb8:	00004517          	auipc	a0,0x4
    80007fbc:	ca050513          	addi	a0,a0,-864 # 8000bc58 <uart_tx_w>
    80007fc0:	00063783          	ld	a5,0(a2)
    80007fc4:	00053703          	ld	a4,0(a0)
    80007fc8:	04f70263          	beq	a4,a5,8000800c <uartstart+0x68>
    80007fcc:	100005b7          	lui	a1,0x10000
    80007fd0:	00005817          	auipc	a6,0x5
    80007fd4:	f9080813          	addi	a6,a6,-112 # 8000cf60 <uart_tx_buf>
    80007fd8:	01c0006f          	j	80007ff4 <uartstart+0x50>
    80007fdc:	0006c703          	lbu	a4,0(a3)
    80007fe0:	00f63023          	sd	a5,0(a2)
    80007fe4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007fe8:	00063783          	ld	a5,0(a2)
    80007fec:	00053703          	ld	a4,0(a0)
    80007ff0:	00f70e63          	beq	a4,a5,8000800c <uartstart+0x68>
    80007ff4:	01f7f713          	andi	a4,a5,31
    80007ff8:	00e806b3          	add	a3,a6,a4
    80007ffc:	0055c703          	lbu	a4,5(a1)
    80008000:	00178793          	addi	a5,a5,1
    80008004:	02077713          	andi	a4,a4,32
    80008008:	fc071ae3          	bnez	a4,80007fdc <uartstart+0x38>
    8000800c:	00813403          	ld	s0,8(sp)
    80008010:	01010113          	addi	sp,sp,16
    80008014:	00008067          	ret

0000000080008018 <uartgetc>:
    80008018:	ff010113          	addi	sp,sp,-16
    8000801c:	00813423          	sd	s0,8(sp)
    80008020:	01010413          	addi	s0,sp,16
    80008024:	10000737          	lui	a4,0x10000
    80008028:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000802c:	0017f793          	andi	a5,a5,1
    80008030:	00078c63          	beqz	a5,80008048 <uartgetc+0x30>
    80008034:	00074503          	lbu	a0,0(a4)
    80008038:	0ff57513          	andi	a0,a0,255
    8000803c:	00813403          	ld	s0,8(sp)
    80008040:	01010113          	addi	sp,sp,16
    80008044:	00008067          	ret
    80008048:	fff00513          	li	a0,-1
    8000804c:	ff1ff06f          	j	8000803c <uartgetc+0x24>

0000000080008050 <uartintr>:
    80008050:	100007b7          	lui	a5,0x10000
    80008054:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008058:	0017f793          	andi	a5,a5,1
    8000805c:	0a078463          	beqz	a5,80008104 <uartintr+0xb4>
    80008060:	fe010113          	addi	sp,sp,-32
    80008064:	00813823          	sd	s0,16(sp)
    80008068:	00913423          	sd	s1,8(sp)
    8000806c:	00113c23          	sd	ra,24(sp)
    80008070:	02010413          	addi	s0,sp,32
    80008074:	100004b7          	lui	s1,0x10000
    80008078:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000807c:	0ff57513          	andi	a0,a0,255
    80008080:	fffff097          	auipc	ra,0xfffff
    80008084:	534080e7          	jalr	1332(ra) # 800075b4 <consoleintr>
    80008088:	0054c783          	lbu	a5,5(s1)
    8000808c:	0017f793          	andi	a5,a5,1
    80008090:	fe0794e3          	bnez	a5,80008078 <uartintr+0x28>
    80008094:	00004617          	auipc	a2,0x4
    80008098:	bbc60613          	addi	a2,a2,-1092 # 8000bc50 <uart_tx_r>
    8000809c:	00004517          	auipc	a0,0x4
    800080a0:	bbc50513          	addi	a0,a0,-1092 # 8000bc58 <uart_tx_w>
    800080a4:	00063783          	ld	a5,0(a2)
    800080a8:	00053703          	ld	a4,0(a0)
    800080ac:	04f70263          	beq	a4,a5,800080f0 <uartintr+0xa0>
    800080b0:	100005b7          	lui	a1,0x10000
    800080b4:	00005817          	auipc	a6,0x5
    800080b8:	eac80813          	addi	a6,a6,-340 # 8000cf60 <uart_tx_buf>
    800080bc:	01c0006f          	j	800080d8 <uartintr+0x88>
    800080c0:	0006c703          	lbu	a4,0(a3)
    800080c4:	00f63023          	sd	a5,0(a2)
    800080c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800080cc:	00063783          	ld	a5,0(a2)
    800080d0:	00053703          	ld	a4,0(a0)
    800080d4:	00f70e63          	beq	a4,a5,800080f0 <uartintr+0xa0>
    800080d8:	01f7f713          	andi	a4,a5,31
    800080dc:	00e806b3          	add	a3,a6,a4
    800080e0:	0055c703          	lbu	a4,5(a1)
    800080e4:	00178793          	addi	a5,a5,1
    800080e8:	02077713          	andi	a4,a4,32
    800080ec:	fc071ae3          	bnez	a4,800080c0 <uartintr+0x70>
    800080f0:	01813083          	ld	ra,24(sp)
    800080f4:	01013403          	ld	s0,16(sp)
    800080f8:	00813483          	ld	s1,8(sp)
    800080fc:	02010113          	addi	sp,sp,32
    80008100:	00008067          	ret
    80008104:	00004617          	auipc	a2,0x4
    80008108:	b4c60613          	addi	a2,a2,-1204 # 8000bc50 <uart_tx_r>
    8000810c:	00004517          	auipc	a0,0x4
    80008110:	b4c50513          	addi	a0,a0,-1204 # 8000bc58 <uart_tx_w>
    80008114:	00063783          	ld	a5,0(a2)
    80008118:	00053703          	ld	a4,0(a0)
    8000811c:	04f70263          	beq	a4,a5,80008160 <uartintr+0x110>
    80008120:	100005b7          	lui	a1,0x10000
    80008124:	00005817          	auipc	a6,0x5
    80008128:	e3c80813          	addi	a6,a6,-452 # 8000cf60 <uart_tx_buf>
    8000812c:	01c0006f          	j	80008148 <uartintr+0xf8>
    80008130:	0006c703          	lbu	a4,0(a3)
    80008134:	00f63023          	sd	a5,0(a2)
    80008138:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000813c:	00063783          	ld	a5,0(a2)
    80008140:	00053703          	ld	a4,0(a0)
    80008144:	02f70063          	beq	a4,a5,80008164 <uartintr+0x114>
    80008148:	01f7f713          	andi	a4,a5,31
    8000814c:	00e806b3          	add	a3,a6,a4
    80008150:	0055c703          	lbu	a4,5(a1)
    80008154:	00178793          	addi	a5,a5,1
    80008158:	02077713          	andi	a4,a4,32
    8000815c:	fc071ae3          	bnez	a4,80008130 <uartintr+0xe0>
    80008160:	00008067          	ret
    80008164:	00008067          	ret

0000000080008168 <kinit>:
    80008168:	fc010113          	addi	sp,sp,-64
    8000816c:	02913423          	sd	s1,40(sp)
    80008170:	fffff7b7          	lui	a5,0xfffff
    80008174:	00006497          	auipc	s1,0x6
    80008178:	e0b48493          	addi	s1,s1,-501 # 8000df7f <end+0xfff>
    8000817c:	02813823          	sd	s0,48(sp)
    80008180:	01313c23          	sd	s3,24(sp)
    80008184:	00f4f4b3          	and	s1,s1,a5
    80008188:	02113c23          	sd	ra,56(sp)
    8000818c:	03213023          	sd	s2,32(sp)
    80008190:	01413823          	sd	s4,16(sp)
    80008194:	01513423          	sd	s5,8(sp)
    80008198:	04010413          	addi	s0,sp,64
    8000819c:	000017b7          	lui	a5,0x1
    800081a0:	01100993          	li	s3,17
    800081a4:	00f487b3          	add	a5,s1,a5
    800081a8:	01b99993          	slli	s3,s3,0x1b
    800081ac:	06f9e063          	bltu	s3,a5,8000820c <kinit+0xa4>
    800081b0:	00005a97          	auipc	s5,0x5
    800081b4:	dd0a8a93          	addi	s5,s5,-560 # 8000cf80 <end>
    800081b8:	0754ec63          	bltu	s1,s5,80008230 <kinit+0xc8>
    800081bc:	0734fa63          	bgeu	s1,s3,80008230 <kinit+0xc8>
    800081c0:	00088a37          	lui	s4,0x88
    800081c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800081c8:	00004917          	auipc	s2,0x4
    800081cc:	a9890913          	addi	s2,s2,-1384 # 8000bc60 <kmem>
    800081d0:	00ca1a13          	slli	s4,s4,0xc
    800081d4:	0140006f          	j	800081e8 <kinit+0x80>
    800081d8:	000017b7          	lui	a5,0x1
    800081dc:	00f484b3          	add	s1,s1,a5
    800081e0:	0554e863          	bltu	s1,s5,80008230 <kinit+0xc8>
    800081e4:	0534f663          	bgeu	s1,s3,80008230 <kinit+0xc8>
    800081e8:	00001637          	lui	a2,0x1
    800081ec:	00100593          	li	a1,1
    800081f0:	00048513          	mv	a0,s1
    800081f4:	00000097          	auipc	ra,0x0
    800081f8:	5e4080e7          	jalr	1508(ra) # 800087d8 <__memset>
    800081fc:	00093783          	ld	a5,0(s2)
    80008200:	00f4b023          	sd	a5,0(s1)
    80008204:	00993023          	sd	s1,0(s2)
    80008208:	fd4498e3          	bne	s1,s4,800081d8 <kinit+0x70>
    8000820c:	03813083          	ld	ra,56(sp)
    80008210:	03013403          	ld	s0,48(sp)
    80008214:	02813483          	ld	s1,40(sp)
    80008218:	02013903          	ld	s2,32(sp)
    8000821c:	01813983          	ld	s3,24(sp)
    80008220:	01013a03          	ld	s4,16(sp)
    80008224:	00813a83          	ld	s5,8(sp)
    80008228:	04010113          	addi	sp,sp,64
    8000822c:	00008067          	ret
    80008230:	00001517          	auipc	a0,0x1
    80008234:	63850513          	addi	a0,a0,1592 # 80009868 <digits+0x18>
    80008238:	fffff097          	auipc	ra,0xfffff
    8000823c:	4b4080e7          	jalr	1204(ra) # 800076ec <panic>

0000000080008240 <freerange>:
    80008240:	fc010113          	addi	sp,sp,-64
    80008244:	000017b7          	lui	a5,0x1
    80008248:	02913423          	sd	s1,40(sp)
    8000824c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008250:	009504b3          	add	s1,a0,s1
    80008254:	fffff537          	lui	a0,0xfffff
    80008258:	02813823          	sd	s0,48(sp)
    8000825c:	02113c23          	sd	ra,56(sp)
    80008260:	03213023          	sd	s2,32(sp)
    80008264:	01313c23          	sd	s3,24(sp)
    80008268:	01413823          	sd	s4,16(sp)
    8000826c:	01513423          	sd	s5,8(sp)
    80008270:	01613023          	sd	s6,0(sp)
    80008274:	04010413          	addi	s0,sp,64
    80008278:	00a4f4b3          	and	s1,s1,a0
    8000827c:	00f487b3          	add	a5,s1,a5
    80008280:	06f5e463          	bltu	a1,a5,800082e8 <freerange+0xa8>
    80008284:	00005a97          	auipc	s5,0x5
    80008288:	cfca8a93          	addi	s5,s5,-772 # 8000cf80 <end>
    8000828c:	0954e263          	bltu	s1,s5,80008310 <freerange+0xd0>
    80008290:	01100993          	li	s3,17
    80008294:	01b99993          	slli	s3,s3,0x1b
    80008298:	0734fc63          	bgeu	s1,s3,80008310 <freerange+0xd0>
    8000829c:	00058a13          	mv	s4,a1
    800082a0:	00004917          	auipc	s2,0x4
    800082a4:	9c090913          	addi	s2,s2,-1600 # 8000bc60 <kmem>
    800082a8:	00002b37          	lui	s6,0x2
    800082ac:	0140006f          	j	800082c0 <freerange+0x80>
    800082b0:	000017b7          	lui	a5,0x1
    800082b4:	00f484b3          	add	s1,s1,a5
    800082b8:	0554ec63          	bltu	s1,s5,80008310 <freerange+0xd0>
    800082bc:	0534fa63          	bgeu	s1,s3,80008310 <freerange+0xd0>
    800082c0:	00001637          	lui	a2,0x1
    800082c4:	00100593          	li	a1,1
    800082c8:	00048513          	mv	a0,s1
    800082cc:	00000097          	auipc	ra,0x0
    800082d0:	50c080e7          	jalr	1292(ra) # 800087d8 <__memset>
    800082d4:	00093703          	ld	a4,0(s2)
    800082d8:	016487b3          	add	a5,s1,s6
    800082dc:	00e4b023          	sd	a4,0(s1)
    800082e0:	00993023          	sd	s1,0(s2)
    800082e4:	fcfa76e3          	bgeu	s4,a5,800082b0 <freerange+0x70>
    800082e8:	03813083          	ld	ra,56(sp)
    800082ec:	03013403          	ld	s0,48(sp)
    800082f0:	02813483          	ld	s1,40(sp)
    800082f4:	02013903          	ld	s2,32(sp)
    800082f8:	01813983          	ld	s3,24(sp)
    800082fc:	01013a03          	ld	s4,16(sp)
    80008300:	00813a83          	ld	s5,8(sp)
    80008304:	00013b03          	ld	s6,0(sp)
    80008308:	04010113          	addi	sp,sp,64
    8000830c:	00008067          	ret
    80008310:	00001517          	auipc	a0,0x1
    80008314:	55850513          	addi	a0,a0,1368 # 80009868 <digits+0x18>
    80008318:	fffff097          	auipc	ra,0xfffff
    8000831c:	3d4080e7          	jalr	980(ra) # 800076ec <panic>

0000000080008320 <kfree>:
    80008320:	fe010113          	addi	sp,sp,-32
    80008324:	00813823          	sd	s0,16(sp)
    80008328:	00113c23          	sd	ra,24(sp)
    8000832c:	00913423          	sd	s1,8(sp)
    80008330:	02010413          	addi	s0,sp,32
    80008334:	03451793          	slli	a5,a0,0x34
    80008338:	04079c63          	bnez	a5,80008390 <kfree+0x70>
    8000833c:	00005797          	auipc	a5,0x5
    80008340:	c4478793          	addi	a5,a5,-956 # 8000cf80 <end>
    80008344:	00050493          	mv	s1,a0
    80008348:	04f56463          	bltu	a0,a5,80008390 <kfree+0x70>
    8000834c:	01100793          	li	a5,17
    80008350:	01b79793          	slli	a5,a5,0x1b
    80008354:	02f57e63          	bgeu	a0,a5,80008390 <kfree+0x70>
    80008358:	00001637          	lui	a2,0x1
    8000835c:	00100593          	li	a1,1
    80008360:	00000097          	auipc	ra,0x0
    80008364:	478080e7          	jalr	1144(ra) # 800087d8 <__memset>
    80008368:	00004797          	auipc	a5,0x4
    8000836c:	8f878793          	addi	a5,a5,-1800 # 8000bc60 <kmem>
    80008370:	0007b703          	ld	a4,0(a5)
    80008374:	01813083          	ld	ra,24(sp)
    80008378:	01013403          	ld	s0,16(sp)
    8000837c:	00e4b023          	sd	a4,0(s1)
    80008380:	0097b023          	sd	s1,0(a5)
    80008384:	00813483          	ld	s1,8(sp)
    80008388:	02010113          	addi	sp,sp,32
    8000838c:	00008067          	ret
    80008390:	00001517          	auipc	a0,0x1
    80008394:	4d850513          	addi	a0,a0,1240 # 80009868 <digits+0x18>
    80008398:	fffff097          	auipc	ra,0xfffff
    8000839c:	354080e7          	jalr	852(ra) # 800076ec <panic>

00000000800083a0 <kalloc>:
    800083a0:	fe010113          	addi	sp,sp,-32
    800083a4:	00813823          	sd	s0,16(sp)
    800083a8:	00913423          	sd	s1,8(sp)
    800083ac:	00113c23          	sd	ra,24(sp)
    800083b0:	02010413          	addi	s0,sp,32
    800083b4:	00004797          	auipc	a5,0x4
    800083b8:	8ac78793          	addi	a5,a5,-1876 # 8000bc60 <kmem>
    800083bc:	0007b483          	ld	s1,0(a5)
    800083c0:	02048063          	beqz	s1,800083e0 <kalloc+0x40>
    800083c4:	0004b703          	ld	a4,0(s1)
    800083c8:	00001637          	lui	a2,0x1
    800083cc:	00500593          	li	a1,5
    800083d0:	00048513          	mv	a0,s1
    800083d4:	00e7b023          	sd	a4,0(a5)
    800083d8:	00000097          	auipc	ra,0x0
    800083dc:	400080e7          	jalr	1024(ra) # 800087d8 <__memset>
    800083e0:	01813083          	ld	ra,24(sp)
    800083e4:	01013403          	ld	s0,16(sp)
    800083e8:	00048513          	mv	a0,s1
    800083ec:	00813483          	ld	s1,8(sp)
    800083f0:	02010113          	addi	sp,sp,32
    800083f4:	00008067          	ret

00000000800083f8 <initlock>:
    800083f8:	ff010113          	addi	sp,sp,-16
    800083fc:	00813423          	sd	s0,8(sp)
    80008400:	01010413          	addi	s0,sp,16
    80008404:	00813403          	ld	s0,8(sp)
    80008408:	00b53423          	sd	a1,8(a0)
    8000840c:	00052023          	sw	zero,0(a0)
    80008410:	00053823          	sd	zero,16(a0)
    80008414:	01010113          	addi	sp,sp,16
    80008418:	00008067          	ret

000000008000841c <acquire>:
    8000841c:	fe010113          	addi	sp,sp,-32
    80008420:	00813823          	sd	s0,16(sp)
    80008424:	00913423          	sd	s1,8(sp)
    80008428:	00113c23          	sd	ra,24(sp)
    8000842c:	01213023          	sd	s2,0(sp)
    80008430:	02010413          	addi	s0,sp,32
    80008434:	00050493          	mv	s1,a0
    80008438:	10002973          	csrr	s2,sstatus
    8000843c:	100027f3          	csrr	a5,sstatus
    80008440:	ffd7f793          	andi	a5,a5,-3
    80008444:	10079073          	csrw	sstatus,a5
    80008448:	fffff097          	auipc	ra,0xfffff
    8000844c:	8e8080e7          	jalr	-1816(ra) # 80006d30 <mycpu>
    80008450:	07852783          	lw	a5,120(a0)
    80008454:	06078e63          	beqz	a5,800084d0 <acquire+0xb4>
    80008458:	fffff097          	auipc	ra,0xfffff
    8000845c:	8d8080e7          	jalr	-1832(ra) # 80006d30 <mycpu>
    80008460:	07852783          	lw	a5,120(a0)
    80008464:	0004a703          	lw	a4,0(s1)
    80008468:	0017879b          	addiw	a5,a5,1
    8000846c:	06f52c23          	sw	a5,120(a0)
    80008470:	04071063          	bnez	a4,800084b0 <acquire+0x94>
    80008474:	00100713          	li	a4,1
    80008478:	00070793          	mv	a5,a4
    8000847c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008480:	0007879b          	sext.w	a5,a5
    80008484:	fe079ae3          	bnez	a5,80008478 <acquire+0x5c>
    80008488:	0ff0000f          	fence
    8000848c:	fffff097          	auipc	ra,0xfffff
    80008490:	8a4080e7          	jalr	-1884(ra) # 80006d30 <mycpu>
    80008494:	01813083          	ld	ra,24(sp)
    80008498:	01013403          	ld	s0,16(sp)
    8000849c:	00a4b823          	sd	a0,16(s1)
    800084a0:	00013903          	ld	s2,0(sp)
    800084a4:	00813483          	ld	s1,8(sp)
    800084a8:	02010113          	addi	sp,sp,32
    800084ac:	00008067          	ret
    800084b0:	0104b903          	ld	s2,16(s1)
    800084b4:	fffff097          	auipc	ra,0xfffff
    800084b8:	87c080e7          	jalr	-1924(ra) # 80006d30 <mycpu>
    800084bc:	faa91ce3          	bne	s2,a0,80008474 <acquire+0x58>
    800084c0:	00001517          	auipc	a0,0x1
    800084c4:	3b050513          	addi	a0,a0,944 # 80009870 <digits+0x20>
    800084c8:	fffff097          	auipc	ra,0xfffff
    800084cc:	224080e7          	jalr	548(ra) # 800076ec <panic>
    800084d0:	00195913          	srli	s2,s2,0x1
    800084d4:	fffff097          	auipc	ra,0xfffff
    800084d8:	85c080e7          	jalr	-1956(ra) # 80006d30 <mycpu>
    800084dc:	00197913          	andi	s2,s2,1
    800084e0:	07252e23          	sw	s2,124(a0)
    800084e4:	f75ff06f          	j	80008458 <acquire+0x3c>

00000000800084e8 <release>:
    800084e8:	fe010113          	addi	sp,sp,-32
    800084ec:	00813823          	sd	s0,16(sp)
    800084f0:	00113c23          	sd	ra,24(sp)
    800084f4:	00913423          	sd	s1,8(sp)
    800084f8:	01213023          	sd	s2,0(sp)
    800084fc:	02010413          	addi	s0,sp,32
    80008500:	00052783          	lw	a5,0(a0)
    80008504:	00079a63          	bnez	a5,80008518 <release+0x30>
    80008508:	00001517          	auipc	a0,0x1
    8000850c:	37050513          	addi	a0,a0,880 # 80009878 <digits+0x28>
    80008510:	fffff097          	auipc	ra,0xfffff
    80008514:	1dc080e7          	jalr	476(ra) # 800076ec <panic>
    80008518:	01053903          	ld	s2,16(a0)
    8000851c:	00050493          	mv	s1,a0
    80008520:	fffff097          	auipc	ra,0xfffff
    80008524:	810080e7          	jalr	-2032(ra) # 80006d30 <mycpu>
    80008528:	fea910e3          	bne	s2,a0,80008508 <release+0x20>
    8000852c:	0004b823          	sd	zero,16(s1)
    80008530:	0ff0000f          	fence
    80008534:	0f50000f          	fence	iorw,ow
    80008538:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000853c:	ffffe097          	auipc	ra,0xffffe
    80008540:	7f4080e7          	jalr	2036(ra) # 80006d30 <mycpu>
    80008544:	100027f3          	csrr	a5,sstatus
    80008548:	0027f793          	andi	a5,a5,2
    8000854c:	04079a63          	bnez	a5,800085a0 <release+0xb8>
    80008550:	07852783          	lw	a5,120(a0)
    80008554:	02f05e63          	blez	a5,80008590 <release+0xa8>
    80008558:	fff7871b          	addiw	a4,a5,-1
    8000855c:	06e52c23          	sw	a4,120(a0)
    80008560:	00071c63          	bnez	a4,80008578 <release+0x90>
    80008564:	07c52783          	lw	a5,124(a0)
    80008568:	00078863          	beqz	a5,80008578 <release+0x90>
    8000856c:	100027f3          	csrr	a5,sstatus
    80008570:	0027e793          	ori	a5,a5,2
    80008574:	10079073          	csrw	sstatus,a5
    80008578:	01813083          	ld	ra,24(sp)
    8000857c:	01013403          	ld	s0,16(sp)
    80008580:	00813483          	ld	s1,8(sp)
    80008584:	00013903          	ld	s2,0(sp)
    80008588:	02010113          	addi	sp,sp,32
    8000858c:	00008067          	ret
    80008590:	00001517          	auipc	a0,0x1
    80008594:	30850513          	addi	a0,a0,776 # 80009898 <digits+0x48>
    80008598:	fffff097          	auipc	ra,0xfffff
    8000859c:	154080e7          	jalr	340(ra) # 800076ec <panic>
    800085a0:	00001517          	auipc	a0,0x1
    800085a4:	2e050513          	addi	a0,a0,736 # 80009880 <digits+0x30>
    800085a8:	fffff097          	auipc	ra,0xfffff
    800085ac:	144080e7          	jalr	324(ra) # 800076ec <panic>

00000000800085b0 <holding>:
    800085b0:	00052783          	lw	a5,0(a0)
    800085b4:	00079663          	bnez	a5,800085c0 <holding+0x10>
    800085b8:	00000513          	li	a0,0
    800085bc:	00008067          	ret
    800085c0:	fe010113          	addi	sp,sp,-32
    800085c4:	00813823          	sd	s0,16(sp)
    800085c8:	00913423          	sd	s1,8(sp)
    800085cc:	00113c23          	sd	ra,24(sp)
    800085d0:	02010413          	addi	s0,sp,32
    800085d4:	01053483          	ld	s1,16(a0)
    800085d8:	ffffe097          	auipc	ra,0xffffe
    800085dc:	758080e7          	jalr	1880(ra) # 80006d30 <mycpu>
    800085e0:	01813083          	ld	ra,24(sp)
    800085e4:	01013403          	ld	s0,16(sp)
    800085e8:	40a48533          	sub	a0,s1,a0
    800085ec:	00153513          	seqz	a0,a0
    800085f0:	00813483          	ld	s1,8(sp)
    800085f4:	02010113          	addi	sp,sp,32
    800085f8:	00008067          	ret

00000000800085fc <push_off>:
    800085fc:	fe010113          	addi	sp,sp,-32
    80008600:	00813823          	sd	s0,16(sp)
    80008604:	00113c23          	sd	ra,24(sp)
    80008608:	00913423          	sd	s1,8(sp)
    8000860c:	02010413          	addi	s0,sp,32
    80008610:	100024f3          	csrr	s1,sstatus
    80008614:	100027f3          	csrr	a5,sstatus
    80008618:	ffd7f793          	andi	a5,a5,-3
    8000861c:	10079073          	csrw	sstatus,a5
    80008620:	ffffe097          	auipc	ra,0xffffe
    80008624:	710080e7          	jalr	1808(ra) # 80006d30 <mycpu>
    80008628:	07852783          	lw	a5,120(a0)
    8000862c:	02078663          	beqz	a5,80008658 <push_off+0x5c>
    80008630:	ffffe097          	auipc	ra,0xffffe
    80008634:	700080e7          	jalr	1792(ra) # 80006d30 <mycpu>
    80008638:	07852783          	lw	a5,120(a0)
    8000863c:	01813083          	ld	ra,24(sp)
    80008640:	01013403          	ld	s0,16(sp)
    80008644:	0017879b          	addiw	a5,a5,1
    80008648:	06f52c23          	sw	a5,120(a0)
    8000864c:	00813483          	ld	s1,8(sp)
    80008650:	02010113          	addi	sp,sp,32
    80008654:	00008067          	ret
    80008658:	0014d493          	srli	s1,s1,0x1
    8000865c:	ffffe097          	auipc	ra,0xffffe
    80008660:	6d4080e7          	jalr	1748(ra) # 80006d30 <mycpu>
    80008664:	0014f493          	andi	s1,s1,1
    80008668:	06952e23          	sw	s1,124(a0)
    8000866c:	fc5ff06f          	j	80008630 <push_off+0x34>

0000000080008670 <pop_off>:
    80008670:	ff010113          	addi	sp,sp,-16
    80008674:	00813023          	sd	s0,0(sp)
    80008678:	00113423          	sd	ra,8(sp)
    8000867c:	01010413          	addi	s0,sp,16
    80008680:	ffffe097          	auipc	ra,0xffffe
    80008684:	6b0080e7          	jalr	1712(ra) # 80006d30 <mycpu>
    80008688:	100027f3          	csrr	a5,sstatus
    8000868c:	0027f793          	andi	a5,a5,2
    80008690:	04079663          	bnez	a5,800086dc <pop_off+0x6c>
    80008694:	07852783          	lw	a5,120(a0)
    80008698:	02f05a63          	blez	a5,800086cc <pop_off+0x5c>
    8000869c:	fff7871b          	addiw	a4,a5,-1
    800086a0:	06e52c23          	sw	a4,120(a0)
    800086a4:	00071c63          	bnez	a4,800086bc <pop_off+0x4c>
    800086a8:	07c52783          	lw	a5,124(a0)
    800086ac:	00078863          	beqz	a5,800086bc <pop_off+0x4c>
    800086b0:	100027f3          	csrr	a5,sstatus
    800086b4:	0027e793          	ori	a5,a5,2
    800086b8:	10079073          	csrw	sstatus,a5
    800086bc:	00813083          	ld	ra,8(sp)
    800086c0:	00013403          	ld	s0,0(sp)
    800086c4:	01010113          	addi	sp,sp,16
    800086c8:	00008067          	ret
    800086cc:	00001517          	auipc	a0,0x1
    800086d0:	1cc50513          	addi	a0,a0,460 # 80009898 <digits+0x48>
    800086d4:	fffff097          	auipc	ra,0xfffff
    800086d8:	018080e7          	jalr	24(ra) # 800076ec <panic>
    800086dc:	00001517          	auipc	a0,0x1
    800086e0:	1a450513          	addi	a0,a0,420 # 80009880 <digits+0x30>
    800086e4:	fffff097          	auipc	ra,0xfffff
    800086e8:	008080e7          	jalr	8(ra) # 800076ec <panic>

00000000800086ec <push_on>:
    800086ec:	fe010113          	addi	sp,sp,-32
    800086f0:	00813823          	sd	s0,16(sp)
    800086f4:	00113c23          	sd	ra,24(sp)
    800086f8:	00913423          	sd	s1,8(sp)
    800086fc:	02010413          	addi	s0,sp,32
    80008700:	100024f3          	csrr	s1,sstatus
    80008704:	100027f3          	csrr	a5,sstatus
    80008708:	0027e793          	ori	a5,a5,2
    8000870c:	10079073          	csrw	sstatus,a5
    80008710:	ffffe097          	auipc	ra,0xffffe
    80008714:	620080e7          	jalr	1568(ra) # 80006d30 <mycpu>
    80008718:	07852783          	lw	a5,120(a0)
    8000871c:	02078663          	beqz	a5,80008748 <push_on+0x5c>
    80008720:	ffffe097          	auipc	ra,0xffffe
    80008724:	610080e7          	jalr	1552(ra) # 80006d30 <mycpu>
    80008728:	07852783          	lw	a5,120(a0)
    8000872c:	01813083          	ld	ra,24(sp)
    80008730:	01013403          	ld	s0,16(sp)
    80008734:	0017879b          	addiw	a5,a5,1
    80008738:	06f52c23          	sw	a5,120(a0)
    8000873c:	00813483          	ld	s1,8(sp)
    80008740:	02010113          	addi	sp,sp,32
    80008744:	00008067          	ret
    80008748:	0014d493          	srli	s1,s1,0x1
    8000874c:	ffffe097          	auipc	ra,0xffffe
    80008750:	5e4080e7          	jalr	1508(ra) # 80006d30 <mycpu>
    80008754:	0014f493          	andi	s1,s1,1
    80008758:	06952e23          	sw	s1,124(a0)
    8000875c:	fc5ff06f          	j	80008720 <push_on+0x34>

0000000080008760 <pop_on>:
    80008760:	ff010113          	addi	sp,sp,-16
    80008764:	00813023          	sd	s0,0(sp)
    80008768:	00113423          	sd	ra,8(sp)
    8000876c:	01010413          	addi	s0,sp,16
    80008770:	ffffe097          	auipc	ra,0xffffe
    80008774:	5c0080e7          	jalr	1472(ra) # 80006d30 <mycpu>
    80008778:	100027f3          	csrr	a5,sstatus
    8000877c:	0027f793          	andi	a5,a5,2
    80008780:	04078463          	beqz	a5,800087c8 <pop_on+0x68>
    80008784:	07852783          	lw	a5,120(a0)
    80008788:	02f05863          	blez	a5,800087b8 <pop_on+0x58>
    8000878c:	fff7879b          	addiw	a5,a5,-1
    80008790:	06f52c23          	sw	a5,120(a0)
    80008794:	07853783          	ld	a5,120(a0)
    80008798:	00079863          	bnez	a5,800087a8 <pop_on+0x48>
    8000879c:	100027f3          	csrr	a5,sstatus
    800087a0:	ffd7f793          	andi	a5,a5,-3
    800087a4:	10079073          	csrw	sstatus,a5
    800087a8:	00813083          	ld	ra,8(sp)
    800087ac:	00013403          	ld	s0,0(sp)
    800087b0:	01010113          	addi	sp,sp,16
    800087b4:	00008067          	ret
    800087b8:	00001517          	auipc	a0,0x1
    800087bc:	10850513          	addi	a0,a0,264 # 800098c0 <digits+0x70>
    800087c0:	fffff097          	auipc	ra,0xfffff
    800087c4:	f2c080e7          	jalr	-212(ra) # 800076ec <panic>
    800087c8:	00001517          	auipc	a0,0x1
    800087cc:	0d850513          	addi	a0,a0,216 # 800098a0 <digits+0x50>
    800087d0:	fffff097          	auipc	ra,0xfffff
    800087d4:	f1c080e7          	jalr	-228(ra) # 800076ec <panic>

00000000800087d8 <__memset>:
    800087d8:	ff010113          	addi	sp,sp,-16
    800087dc:	00813423          	sd	s0,8(sp)
    800087e0:	01010413          	addi	s0,sp,16
    800087e4:	1a060e63          	beqz	a2,800089a0 <__memset+0x1c8>
    800087e8:	40a007b3          	neg	a5,a0
    800087ec:	0077f793          	andi	a5,a5,7
    800087f0:	00778693          	addi	a3,a5,7
    800087f4:	00b00813          	li	a6,11
    800087f8:	0ff5f593          	andi	a1,a1,255
    800087fc:	fff6071b          	addiw	a4,a2,-1
    80008800:	1b06e663          	bltu	a3,a6,800089ac <__memset+0x1d4>
    80008804:	1cd76463          	bltu	a4,a3,800089cc <__memset+0x1f4>
    80008808:	1a078e63          	beqz	a5,800089c4 <__memset+0x1ec>
    8000880c:	00b50023          	sb	a1,0(a0)
    80008810:	00100713          	li	a4,1
    80008814:	1ae78463          	beq	a5,a4,800089bc <__memset+0x1e4>
    80008818:	00b500a3          	sb	a1,1(a0)
    8000881c:	00200713          	li	a4,2
    80008820:	1ae78a63          	beq	a5,a4,800089d4 <__memset+0x1fc>
    80008824:	00b50123          	sb	a1,2(a0)
    80008828:	00300713          	li	a4,3
    8000882c:	18e78463          	beq	a5,a4,800089b4 <__memset+0x1dc>
    80008830:	00b501a3          	sb	a1,3(a0)
    80008834:	00400713          	li	a4,4
    80008838:	1ae78263          	beq	a5,a4,800089dc <__memset+0x204>
    8000883c:	00b50223          	sb	a1,4(a0)
    80008840:	00500713          	li	a4,5
    80008844:	1ae78063          	beq	a5,a4,800089e4 <__memset+0x20c>
    80008848:	00b502a3          	sb	a1,5(a0)
    8000884c:	00700713          	li	a4,7
    80008850:	18e79e63          	bne	a5,a4,800089ec <__memset+0x214>
    80008854:	00b50323          	sb	a1,6(a0)
    80008858:	00700e93          	li	t4,7
    8000885c:	00859713          	slli	a4,a1,0x8
    80008860:	00e5e733          	or	a4,a1,a4
    80008864:	01059e13          	slli	t3,a1,0x10
    80008868:	01c76e33          	or	t3,a4,t3
    8000886c:	01859313          	slli	t1,a1,0x18
    80008870:	006e6333          	or	t1,t3,t1
    80008874:	02059893          	slli	a7,a1,0x20
    80008878:	40f60e3b          	subw	t3,a2,a5
    8000887c:	011368b3          	or	a7,t1,a7
    80008880:	02859813          	slli	a6,a1,0x28
    80008884:	0108e833          	or	a6,a7,a6
    80008888:	03059693          	slli	a3,a1,0x30
    8000888c:	003e589b          	srliw	a7,t3,0x3
    80008890:	00d866b3          	or	a3,a6,a3
    80008894:	03859713          	slli	a4,a1,0x38
    80008898:	00389813          	slli	a6,a7,0x3
    8000889c:	00f507b3          	add	a5,a0,a5
    800088a0:	00e6e733          	or	a4,a3,a4
    800088a4:	000e089b          	sext.w	a7,t3
    800088a8:	00f806b3          	add	a3,a6,a5
    800088ac:	00e7b023          	sd	a4,0(a5)
    800088b0:	00878793          	addi	a5,a5,8
    800088b4:	fed79ce3          	bne	a5,a3,800088ac <__memset+0xd4>
    800088b8:	ff8e7793          	andi	a5,t3,-8
    800088bc:	0007871b          	sext.w	a4,a5
    800088c0:	01d787bb          	addw	a5,a5,t4
    800088c4:	0ce88e63          	beq	a7,a4,800089a0 <__memset+0x1c8>
    800088c8:	00f50733          	add	a4,a0,a5
    800088cc:	00b70023          	sb	a1,0(a4)
    800088d0:	0017871b          	addiw	a4,a5,1
    800088d4:	0cc77663          	bgeu	a4,a2,800089a0 <__memset+0x1c8>
    800088d8:	00e50733          	add	a4,a0,a4
    800088dc:	00b70023          	sb	a1,0(a4)
    800088e0:	0027871b          	addiw	a4,a5,2
    800088e4:	0ac77e63          	bgeu	a4,a2,800089a0 <__memset+0x1c8>
    800088e8:	00e50733          	add	a4,a0,a4
    800088ec:	00b70023          	sb	a1,0(a4)
    800088f0:	0037871b          	addiw	a4,a5,3
    800088f4:	0ac77663          	bgeu	a4,a2,800089a0 <__memset+0x1c8>
    800088f8:	00e50733          	add	a4,a0,a4
    800088fc:	00b70023          	sb	a1,0(a4)
    80008900:	0047871b          	addiw	a4,a5,4
    80008904:	08c77e63          	bgeu	a4,a2,800089a0 <__memset+0x1c8>
    80008908:	00e50733          	add	a4,a0,a4
    8000890c:	00b70023          	sb	a1,0(a4)
    80008910:	0057871b          	addiw	a4,a5,5
    80008914:	08c77663          	bgeu	a4,a2,800089a0 <__memset+0x1c8>
    80008918:	00e50733          	add	a4,a0,a4
    8000891c:	00b70023          	sb	a1,0(a4)
    80008920:	0067871b          	addiw	a4,a5,6
    80008924:	06c77e63          	bgeu	a4,a2,800089a0 <__memset+0x1c8>
    80008928:	00e50733          	add	a4,a0,a4
    8000892c:	00b70023          	sb	a1,0(a4)
    80008930:	0077871b          	addiw	a4,a5,7
    80008934:	06c77663          	bgeu	a4,a2,800089a0 <__memset+0x1c8>
    80008938:	00e50733          	add	a4,a0,a4
    8000893c:	00b70023          	sb	a1,0(a4)
    80008940:	0087871b          	addiw	a4,a5,8
    80008944:	04c77e63          	bgeu	a4,a2,800089a0 <__memset+0x1c8>
    80008948:	00e50733          	add	a4,a0,a4
    8000894c:	00b70023          	sb	a1,0(a4)
    80008950:	0097871b          	addiw	a4,a5,9
    80008954:	04c77663          	bgeu	a4,a2,800089a0 <__memset+0x1c8>
    80008958:	00e50733          	add	a4,a0,a4
    8000895c:	00b70023          	sb	a1,0(a4)
    80008960:	00a7871b          	addiw	a4,a5,10
    80008964:	02c77e63          	bgeu	a4,a2,800089a0 <__memset+0x1c8>
    80008968:	00e50733          	add	a4,a0,a4
    8000896c:	00b70023          	sb	a1,0(a4)
    80008970:	00b7871b          	addiw	a4,a5,11
    80008974:	02c77663          	bgeu	a4,a2,800089a0 <__memset+0x1c8>
    80008978:	00e50733          	add	a4,a0,a4
    8000897c:	00b70023          	sb	a1,0(a4)
    80008980:	00c7871b          	addiw	a4,a5,12
    80008984:	00c77e63          	bgeu	a4,a2,800089a0 <__memset+0x1c8>
    80008988:	00e50733          	add	a4,a0,a4
    8000898c:	00b70023          	sb	a1,0(a4)
    80008990:	00d7879b          	addiw	a5,a5,13
    80008994:	00c7f663          	bgeu	a5,a2,800089a0 <__memset+0x1c8>
    80008998:	00f507b3          	add	a5,a0,a5
    8000899c:	00b78023          	sb	a1,0(a5)
    800089a0:	00813403          	ld	s0,8(sp)
    800089a4:	01010113          	addi	sp,sp,16
    800089a8:	00008067          	ret
    800089ac:	00b00693          	li	a3,11
    800089b0:	e55ff06f          	j	80008804 <__memset+0x2c>
    800089b4:	00300e93          	li	t4,3
    800089b8:	ea5ff06f          	j	8000885c <__memset+0x84>
    800089bc:	00100e93          	li	t4,1
    800089c0:	e9dff06f          	j	8000885c <__memset+0x84>
    800089c4:	00000e93          	li	t4,0
    800089c8:	e95ff06f          	j	8000885c <__memset+0x84>
    800089cc:	00000793          	li	a5,0
    800089d0:	ef9ff06f          	j	800088c8 <__memset+0xf0>
    800089d4:	00200e93          	li	t4,2
    800089d8:	e85ff06f          	j	8000885c <__memset+0x84>
    800089dc:	00400e93          	li	t4,4
    800089e0:	e7dff06f          	j	8000885c <__memset+0x84>
    800089e4:	00500e93          	li	t4,5
    800089e8:	e75ff06f          	j	8000885c <__memset+0x84>
    800089ec:	00600e93          	li	t4,6
    800089f0:	e6dff06f          	j	8000885c <__memset+0x84>

00000000800089f4 <__memmove>:
    800089f4:	ff010113          	addi	sp,sp,-16
    800089f8:	00813423          	sd	s0,8(sp)
    800089fc:	01010413          	addi	s0,sp,16
    80008a00:	0e060863          	beqz	a2,80008af0 <__memmove+0xfc>
    80008a04:	fff6069b          	addiw	a3,a2,-1
    80008a08:	0006881b          	sext.w	a6,a3
    80008a0c:	0ea5e863          	bltu	a1,a0,80008afc <__memmove+0x108>
    80008a10:	00758713          	addi	a4,a1,7
    80008a14:	00a5e7b3          	or	a5,a1,a0
    80008a18:	40a70733          	sub	a4,a4,a0
    80008a1c:	0077f793          	andi	a5,a5,7
    80008a20:	00f73713          	sltiu	a4,a4,15
    80008a24:	00174713          	xori	a4,a4,1
    80008a28:	0017b793          	seqz	a5,a5
    80008a2c:	00e7f7b3          	and	a5,a5,a4
    80008a30:	10078863          	beqz	a5,80008b40 <__memmove+0x14c>
    80008a34:	00900793          	li	a5,9
    80008a38:	1107f463          	bgeu	a5,a6,80008b40 <__memmove+0x14c>
    80008a3c:	0036581b          	srliw	a6,a2,0x3
    80008a40:	fff8081b          	addiw	a6,a6,-1
    80008a44:	02081813          	slli	a6,a6,0x20
    80008a48:	01d85893          	srli	a7,a6,0x1d
    80008a4c:	00858813          	addi	a6,a1,8
    80008a50:	00058793          	mv	a5,a1
    80008a54:	00050713          	mv	a4,a0
    80008a58:	01088833          	add	a6,a7,a6
    80008a5c:	0007b883          	ld	a7,0(a5)
    80008a60:	00878793          	addi	a5,a5,8
    80008a64:	00870713          	addi	a4,a4,8
    80008a68:	ff173c23          	sd	a7,-8(a4)
    80008a6c:	ff0798e3          	bne	a5,a6,80008a5c <__memmove+0x68>
    80008a70:	ff867713          	andi	a4,a2,-8
    80008a74:	02071793          	slli	a5,a4,0x20
    80008a78:	0207d793          	srli	a5,a5,0x20
    80008a7c:	00f585b3          	add	a1,a1,a5
    80008a80:	40e686bb          	subw	a3,a3,a4
    80008a84:	00f507b3          	add	a5,a0,a5
    80008a88:	06e60463          	beq	a2,a4,80008af0 <__memmove+0xfc>
    80008a8c:	0005c703          	lbu	a4,0(a1)
    80008a90:	00e78023          	sb	a4,0(a5)
    80008a94:	04068e63          	beqz	a3,80008af0 <__memmove+0xfc>
    80008a98:	0015c603          	lbu	a2,1(a1)
    80008a9c:	00100713          	li	a4,1
    80008aa0:	00c780a3          	sb	a2,1(a5)
    80008aa4:	04e68663          	beq	a3,a4,80008af0 <__memmove+0xfc>
    80008aa8:	0025c603          	lbu	a2,2(a1)
    80008aac:	00200713          	li	a4,2
    80008ab0:	00c78123          	sb	a2,2(a5)
    80008ab4:	02e68e63          	beq	a3,a4,80008af0 <__memmove+0xfc>
    80008ab8:	0035c603          	lbu	a2,3(a1)
    80008abc:	00300713          	li	a4,3
    80008ac0:	00c781a3          	sb	a2,3(a5)
    80008ac4:	02e68663          	beq	a3,a4,80008af0 <__memmove+0xfc>
    80008ac8:	0045c603          	lbu	a2,4(a1)
    80008acc:	00400713          	li	a4,4
    80008ad0:	00c78223          	sb	a2,4(a5)
    80008ad4:	00e68e63          	beq	a3,a4,80008af0 <__memmove+0xfc>
    80008ad8:	0055c603          	lbu	a2,5(a1)
    80008adc:	00500713          	li	a4,5
    80008ae0:	00c782a3          	sb	a2,5(a5)
    80008ae4:	00e68663          	beq	a3,a4,80008af0 <__memmove+0xfc>
    80008ae8:	0065c703          	lbu	a4,6(a1)
    80008aec:	00e78323          	sb	a4,6(a5)
    80008af0:	00813403          	ld	s0,8(sp)
    80008af4:	01010113          	addi	sp,sp,16
    80008af8:	00008067          	ret
    80008afc:	02061713          	slli	a4,a2,0x20
    80008b00:	02075713          	srli	a4,a4,0x20
    80008b04:	00e587b3          	add	a5,a1,a4
    80008b08:	f0f574e3          	bgeu	a0,a5,80008a10 <__memmove+0x1c>
    80008b0c:	02069613          	slli	a2,a3,0x20
    80008b10:	02065613          	srli	a2,a2,0x20
    80008b14:	fff64613          	not	a2,a2
    80008b18:	00e50733          	add	a4,a0,a4
    80008b1c:	00c78633          	add	a2,a5,a2
    80008b20:	fff7c683          	lbu	a3,-1(a5)
    80008b24:	fff78793          	addi	a5,a5,-1
    80008b28:	fff70713          	addi	a4,a4,-1
    80008b2c:	00d70023          	sb	a3,0(a4)
    80008b30:	fec798e3          	bne	a5,a2,80008b20 <__memmove+0x12c>
    80008b34:	00813403          	ld	s0,8(sp)
    80008b38:	01010113          	addi	sp,sp,16
    80008b3c:	00008067          	ret
    80008b40:	02069713          	slli	a4,a3,0x20
    80008b44:	02075713          	srli	a4,a4,0x20
    80008b48:	00170713          	addi	a4,a4,1
    80008b4c:	00e50733          	add	a4,a0,a4
    80008b50:	00050793          	mv	a5,a0
    80008b54:	0005c683          	lbu	a3,0(a1)
    80008b58:	00178793          	addi	a5,a5,1
    80008b5c:	00158593          	addi	a1,a1,1
    80008b60:	fed78fa3          	sb	a3,-1(a5)
    80008b64:	fee798e3          	bne	a5,a4,80008b54 <__memmove+0x160>
    80008b68:	f89ff06f          	j	80008af0 <__memmove+0xfc>

0000000080008b6c <__putc>:
    80008b6c:	fe010113          	addi	sp,sp,-32
    80008b70:	00813823          	sd	s0,16(sp)
    80008b74:	00113c23          	sd	ra,24(sp)
    80008b78:	02010413          	addi	s0,sp,32
    80008b7c:	00050793          	mv	a5,a0
    80008b80:	fef40593          	addi	a1,s0,-17
    80008b84:	00100613          	li	a2,1
    80008b88:	00000513          	li	a0,0
    80008b8c:	fef407a3          	sb	a5,-17(s0)
    80008b90:	fffff097          	auipc	ra,0xfffff
    80008b94:	b3c080e7          	jalr	-1220(ra) # 800076cc <console_write>
    80008b98:	01813083          	ld	ra,24(sp)
    80008b9c:	01013403          	ld	s0,16(sp)
    80008ba0:	02010113          	addi	sp,sp,32
    80008ba4:	00008067          	ret

0000000080008ba8 <__getc>:
    80008ba8:	fe010113          	addi	sp,sp,-32
    80008bac:	00813823          	sd	s0,16(sp)
    80008bb0:	00113c23          	sd	ra,24(sp)
    80008bb4:	02010413          	addi	s0,sp,32
    80008bb8:	fe840593          	addi	a1,s0,-24
    80008bbc:	00100613          	li	a2,1
    80008bc0:	00000513          	li	a0,0
    80008bc4:	fffff097          	auipc	ra,0xfffff
    80008bc8:	ae8080e7          	jalr	-1304(ra) # 800076ac <console_read>
    80008bcc:	fe844503          	lbu	a0,-24(s0)
    80008bd0:	01813083          	ld	ra,24(sp)
    80008bd4:	01013403          	ld	s0,16(sp)
    80008bd8:	02010113          	addi	sp,sp,32
    80008bdc:	00008067          	ret

0000000080008be0 <console_handler>:
    80008be0:	fe010113          	addi	sp,sp,-32
    80008be4:	00813823          	sd	s0,16(sp)
    80008be8:	00113c23          	sd	ra,24(sp)
    80008bec:	00913423          	sd	s1,8(sp)
    80008bf0:	02010413          	addi	s0,sp,32
    80008bf4:	14202773          	csrr	a4,scause
    80008bf8:	100027f3          	csrr	a5,sstatus
    80008bfc:	0027f793          	andi	a5,a5,2
    80008c00:	06079e63          	bnez	a5,80008c7c <console_handler+0x9c>
    80008c04:	00074c63          	bltz	a4,80008c1c <console_handler+0x3c>
    80008c08:	01813083          	ld	ra,24(sp)
    80008c0c:	01013403          	ld	s0,16(sp)
    80008c10:	00813483          	ld	s1,8(sp)
    80008c14:	02010113          	addi	sp,sp,32
    80008c18:	00008067          	ret
    80008c1c:	0ff77713          	andi	a4,a4,255
    80008c20:	00900793          	li	a5,9
    80008c24:	fef712e3          	bne	a4,a5,80008c08 <console_handler+0x28>
    80008c28:	ffffe097          	auipc	ra,0xffffe
    80008c2c:	6dc080e7          	jalr	1756(ra) # 80007304 <plic_claim>
    80008c30:	00a00793          	li	a5,10
    80008c34:	00050493          	mv	s1,a0
    80008c38:	02f50c63          	beq	a0,a5,80008c70 <console_handler+0x90>
    80008c3c:	fc0506e3          	beqz	a0,80008c08 <console_handler+0x28>
    80008c40:	00050593          	mv	a1,a0
    80008c44:	00001517          	auipc	a0,0x1
    80008c48:	b8450513          	addi	a0,a0,-1148 # 800097c8 <CONSOLE_STATUS+0x7b8>
    80008c4c:	fffff097          	auipc	ra,0xfffff
    80008c50:	afc080e7          	jalr	-1284(ra) # 80007748 <__printf>
    80008c54:	01013403          	ld	s0,16(sp)
    80008c58:	01813083          	ld	ra,24(sp)
    80008c5c:	00048513          	mv	a0,s1
    80008c60:	00813483          	ld	s1,8(sp)
    80008c64:	02010113          	addi	sp,sp,32
    80008c68:	ffffe317          	auipc	t1,0xffffe
    80008c6c:	6d430067          	jr	1748(t1) # 8000733c <plic_complete>
    80008c70:	fffff097          	auipc	ra,0xfffff
    80008c74:	3e0080e7          	jalr	992(ra) # 80008050 <uartintr>
    80008c78:	fddff06f          	j	80008c54 <console_handler+0x74>
    80008c7c:	00001517          	auipc	a0,0x1
    80008c80:	c4c50513          	addi	a0,a0,-948 # 800098c8 <digits+0x78>
    80008c84:	fffff097          	auipc	ra,0xfffff
    80008c88:	a68080e7          	jalr	-1432(ra) # 800076ec <panic>
	...
