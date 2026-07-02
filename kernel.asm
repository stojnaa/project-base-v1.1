
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	c2013103          	ld	sp,-992(sp) # 8000bc20 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	269060ef          	jal	ra,80006a84 <start>

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
    80001090:	1ed000ef          	jal	ra,80001a7c <handleSupervisorTrap>

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
#include "../h/Semaphore.hpp"
#include "../h/Thread.hpp"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"

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
    8000164c:	484080e7          	jalr	1156(ra) # 80002acc <_ZN15MemoryAllocator11getInstanceEv>
    80001650:	00050493          	mv	s1,a0
    80001654:	00090513          	mv	a0,s2
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	fb4080e7          	jalr	-76(ra) # 8000160c <_ZL23blocksForBytesSemaphorem>
    80001660:	00050593          	mv	a1,a0
    80001664:	00048513          	mv	a0,s1
    80001668:	00001097          	auipc	ra,0x1
    8000166c:	4e4080e7          	jalr	1252(ra) # 80002b4c <_ZN15MemoryAllocator6mallocEm>
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
    800016a8:	428080e7          	jalr	1064(ra) # 80002acc <_ZN15MemoryAllocator11getInstanceEv>
    800016ac:	00048593          	mv	a1,s1
    800016b0:	00001097          	auipc	ra,0x1
    800016b4:	5f8080e7          	jalr	1528(ra) # 80002ca8 <_ZN15MemoryAllocator4freeEPv>
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
}
    800016ec:	00813403          	ld	s0,8(sp)
    800016f0:	01010113          	addi	sp,sp,16
    800016f4:	00008067          	ret

00000000800016f8 <_ZN4_sem15createSemaphoreEj>:

_sem* _sem::createSemaphore(unsigned init) {
    800016f8:	fe010113          	addi	sp,sp,-32
    800016fc:	00113c23          	sd	ra,24(sp)
    80001700:	00813823          	sd	s0,16(sp)
    80001704:	00913423          	sd	s1,8(sp)
    80001708:	01213023          	sd	s2,0(sp)
    8000170c:	02010413          	addi	s0,sp,32
    80001710:	00050913          	mv	s2,a0
    return new _sem(init);
    80001714:	01800513          	li	a0,24
    80001718:	00000097          	auipc	ra,0x0
    8000171c:	f14080e7          	jalr	-236(ra) # 8000162c <_ZN4_semnwEm>
    80001720:	00050493          	mv	s1,a0
    80001724:	00090593          	mv	a1,s2
    80001728:	00000097          	auipc	ra,0x0
    8000172c:	fa8080e7          	jalr	-88(ra) # 800016d0 <_ZN4_semC1Ej>
}
    80001730:	00048513          	mv	a0,s1
    80001734:	01813083          	ld	ra,24(sp)
    80001738:	01013403          	ld	s0,16(sp)
    8000173c:	00813483          	ld	s1,8(sp)
    80001740:	00013903          	ld	s2,0(sp)
    80001744:	02010113          	addi	sp,sp,32
    80001748:	00008067          	ret

000000008000174c <_ZN4_sem16destroySemaphoreEPS_>:

int _sem::destroySemaphore(_sem* sem) {
    if (sem == nullptr) {
    8000174c:	02050863          	beqz	a0,8000177c <_ZN4_sem16destroySemaphoreEPS_+0x30>
int _sem::destroySemaphore(_sem* sem) {
    80001750:	ff010113          	addi	sp,sp,-16
    80001754:	00113423          	sd	ra,8(sp)
    80001758:	00813023          	sd	s0,0(sp)
    8000175c:	01010413          	addi	s0,sp,16
        return -1;
    }

    delete sem;
    80001760:	00000097          	auipc	ra,0x0
    80001764:	f28080e7          	jalr	-216(ra) # 80001688 <_ZN4_semdlEPv>
    return 0;
    80001768:	00000513          	li	a0,0
}
    8000176c:	00813083          	ld	ra,8(sp)
    80001770:	00013403          	ld	s0,0(sp)
    80001774:	01010113          	addi	sp,sp,16
    80001778:	00008067          	ret
        return -1;
    8000177c:	fff00513          	li	a0,-1
}
    80001780:	00008067          	ret

0000000080001784 <_ZN4_sem5blockEPNS_11BlockedNodeE>:
    unblockReady();

    return 0;
}

void _sem::block(BlockedNode* node) {
    80001784:	ff010113          	addi	sp,sp,-16
    80001788:	00813423          	sd	s0,8(sp)
    8000178c:	01010413          	addi	s0,sp,16
    if (node == nullptr) {
    80001790:	00058e63          	beqz	a1,800017ac <_ZN4_sem5blockEPNS_11BlockedNodeE+0x28>
        return;
    }

    node->next = nullptr;
    80001794:	0005b823          	sd	zero,16(a1)

    if (head == nullptr) {
    80001798:	00853783          	ld	a5,8(a0)
    8000179c:	00078e63          	beqz	a5,800017b8 <_ZN4_sem5blockEPNS_11BlockedNodeE+0x34>
        head = node;
        tail = node;
    } else {
        tail->next = node;
    800017a0:	01053783          	ld	a5,16(a0)
    800017a4:	00b7b823          	sd	a1,16(a5)
        tail = node;
    800017a8:	00b53823          	sd	a1,16(a0)
    }
}
    800017ac:	00813403          	ld	s0,8(sp)
    800017b0:	01010113          	addi	sp,sp,16
    800017b4:	00008067          	ret
        head = node;
    800017b8:	00b53423          	sd	a1,8(a0)
        tail = node;
    800017bc:	00b53823          	sd	a1,16(a0)
    800017c0:	fedff06f          	j	800017ac <_ZN4_sem5blockEPNS_11BlockedNodeE+0x28>

00000000800017c4 <_ZN4_sem5waitNEj>:
    if (_thread::running == nullptr) {
    800017c4:	0000a797          	auipc	a5,0xa
    800017c8:	44c7b783          	ld	a5,1100(a5) # 8000bc10 <_GLOBAL_OFFSET_TABLE_+0x18>
    800017cc:	0007b783          	ld	a5,0(a5)
    800017d0:	08078a63          	beqz	a5,80001864 <_ZN4_sem5waitNEj+0xa0>
    if (closed) {
    800017d4:	00454703          	lbu	a4,4(a0)
    800017d8:	08071a63          	bnez	a4,8000186c <_ZN4_sem5waitNEj+0xa8>
    if (n == 0) {
    800017dc:	08058c63          	beqz	a1,80001874 <_ZN4_sem5waitNEj+0xb0>
    if (head == nullptr && val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
    800017e0:	00853703          	ld	a4,8(a0)
    800017e4:	06070263          	beqz	a4,80001848 <_ZN4_sem5waitNEj+0x84>
int _sem::waitN(unsigned n) {
    800017e8:	fd010113          	addi	sp,sp,-48
    800017ec:	02113423          	sd	ra,40(sp)
    800017f0:	02813023          	sd	s0,32(sp)
    800017f4:	03010413          	addi	s0,sp,48
    node.thread = _thread::running;
    800017f8:	fcf43c23          	sd	a5,-40(s0)
    node.requested = n;
    800017fc:	feb42023          	sw	a1,-32(s0)
    node.status = 0;
    80001800:	fe042223          	sw	zero,-28(s0)
    node.next = nullptr;
    80001804:	fe043423          	sd	zero,-24(s0)
    block(&node);
    80001808:	fd840593          	addi	a1,s0,-40
    8000180c:	00000097          	auipc	ra,0x0
    80001810:	f78080e7          	jalr	-136(ra) # 80001784 <_ZN4_sem5blockEPNS_11BlockedNodeE>
    _thread::running->setState(_thread::BLOCKED);
    80001814:	00300593          	li	a1,3
    80001818:	0000a797          	auipc	a5,0xa
    8000181c:	3f87b783          	ld	a5,1016(a5) # 8000bc10 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001820:	0007b503          	ld	a0,0(a5)
    80001824:	00001097          	auipc	ra,0x1
    80001828:	a50080e7          	jalr	-1456(ra) # 80002274 <_ZN7_thread8setStateENS_5StateE>
    _thread::dispatch();
    8000182c:	00001097          	auipc	ra,0x1
    80001830:	8cc080e7          	jalr	-1844(ra) # 800020f8 <_ZN7_thread8dispatchEv>
    return node.status;
    80001834:	fe442503          	lw	a0,-28(s0)
}
    80001838:	02813083          	ld	ra,40(sp)
    8000183c:	02013403          	ld	s0,32(sp)
    80001840:	03010113          	addi	sp,sp,48
    80001844:	00008067          	ret
    if (head == nullptr && val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
    80001848:	00052703          	lw	a4,0(a0)
    8000184c:	0005869b          	sext.w	a3,a1
    80001850:	f8d74ce3          	blt	a4,a3,800017e8 <_ZN4_sem5waitNEj+0x24>
        val -= (int)n;
    80001854:	40d7073b          	subw	a4,a4,a3
    80001858:	00e52023          	sw	a4,0(a0)
        return 0;
    8000185c:	00000513          	li	a0,0
    80001860:	00008067          	ret
        return -1;
    80001864:	fff00513          	li	a0,-1
    80001868:	00008067          	ret
        return -1;
    8000186c:	fff00513          	li	a0,-1
    80001870:	00008067          	ret
        return 0;
    80001874:	00000513          	li	a0,0
}
    80001878:	00008067          	ret

000000008000187c <_ZN4_sem4waitEv>:
int _sem::wait() {
    8000187c:	ff010113          	addi	sp,sp,-16
    80001880:	00113423          	sd	ra,8(sp)
    80001884:	00813023          	sd	s0,0(sp)
    80001888:	01010413          	addi	s0,sp,16
    return waitN(1);
    8000188c:	00100593          	li	a1,1
    80001890:	00000097          	auipc	ra,0x0
    80001894:	f34080e7          	jalr	-204(ra) # 800017c4 <_ZN4_sem5waitNEj>
}
    80001898:	00813083          	ld	ra,8(sp)
    8000189c:	00013403          	ld	s0,0(sp)
    800018a0:	01010113          	addi	sp,sp,16
    800018a4:	00008067          	ret

00000000800018a8 <_ZN4_sem12unblockReadyEv>:

void _sem::unblockReady() {
    800018a8:	fe010113          	addi	sp,sp,-32
    800018ac:	00113c23          	sd	ra,24(sp)
    800018b0:	00813823          	sd	s0,16(sp)
    800018b4:	00913423          	sd	s1,8(sp)
    800018b8:	01213023          	sd	s2,0(sp)
    800018bc:	02010413          	addi	s0,sp,32
    800018c0:	00050913          	mv	s2,a0
    800018c4:	0240006f          	j	800018e8 <_ZN4_sem12unblockReadyEv+0x40>
        BlockedNode* node = head;

        head = head->next;

        if (head == nullptr) {
            tail = nullptr;
    800018c8:	00093823          	sd	zero,16(s2)
        }

        val -= (int)node->requested;
    800018cc:	0084a703          	lw	a4,8(s1)
    800018d0:	40e787bb          	subw	a5,a5,a4
    800018d4:	00f92023          	sw	a5,0(s2)

        node->status = 0;//znaci da ce waitN vratiti 0
    800018d8:	0004a623          	sw	zero,12(s1)
        node->next = nullptr;
    800018dc:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    800018e0:	0004b503          	ld	a0,0(s1)
    800018e4:	02051463          	bnez	a0,8000190c <_ZN4_sem12unblockReadyEv+0x64>
    while (head != nullptr && val >= (int)head->requested) {
    800018e8:	00893483          	ld	s1,8(s2)
    800018ec:	02048e63          	beqz	s1,80001928 <_ZN4_sem12unblockReadyEv+0x80>
    800018f0:	00092783          	lw	a5,0(s2)
    800018f4:	0084a703          	lw	a4,8(s1)
    800018f8:	02e7c863          	blt	a5,a4,80001928 <_ZN4_sem12unblockReadyEv+0x80>
        head = head->next;
    800018fc:	0104b703          	ld	a4,16(s1)
    80001900:	00e93423          	sd	a4,8(s2)
        if (head == nullptr) {
    80001904:	fc0714e3          	bnez	a4,800018cc <_ZN4_sem12unblockReadyEv+0x24>
    80001908:	fc1ff06f          	j	800018c8 <_ZN4_sem12unblockReadyEv+0x20>
            node->thread->setState(_thread::READY);
    8000190c:	00100593          	li	a1,1
    80001910:	00001097          	auipc	ra,0x1
    80001914:	964080e7          	jalr	-1692(ra) # 80002274 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001918:	0004b503          	ld	a0,0(s1)
    8000191c:	00001097          	auipc	ra,0x1
    80001920:	af4080e7          	jalr	-1292(ra) # 80002410 <_ZN9Scheduler3putEP7_thread>
    80001924:	fc5ff06f          	j	800018e8 <_ZN4_sem12unblockReadyEv+0x40>
        }
    }
}
    80001928:	01813083          	ld	ra,24(sp)
    8000192c:	01013403          	ld	s0,16(sp)
    80001930:	00813483          	ld	s1,8(sp)
    80001934:	00013903          	ld	s2,0(sp)
    80001938:	02010113          	addi	sp,sp,32
    8000193c:	00008067          	ret

0000000080001940 <_ZN4_sem7signalNEj>:
    if (closed) {
    80001940:	00454783          	lbu	a5,4(a0)
    80001944:	04079463          	bnez	a5,8000198c <_ZN4_sem7signalNEj+0x4c>
    if (n == 0) {
    80001948:	00059663          	bnez	a1,80001954 <_ZN4_sem7signalNEj+0x14>
        return 0;
    8000194c:	00000513          	li	a0,0
}
    80001950:	00008067          	ret
int _sem::signalN(unsigned n) {
    80001954:	ff010113          	addi	sp,sp,-16
    80001958:	00113423          	sd	ra,8(sp)
    8000195c:	00813023          	sd	s0,0(sp)
    80001960:	01010413          	addi	s0,sp,16
    val += (int)n;
    80001964:	00052783          	lw	a5,0(a0)
    80001968:	00b785bb          	addw	a1,a5,a1
    8000196c:	00b52023          	sw	a1,0(a0)
    unblockReady();
    80001970:	00000097          	auipc	ra,0x0
    80001974:	f38080e7          	jalr	-200(ra) # 800018a8 <_ZN4_sem12unblockReadyEv>
    return 0;
    80001978:	00000513          	li	a0,0
}
    8000197c:	00813083          	ld	ra,8(sp)
    80001980:	00013403          	ld	s0,0(sp)
    80001984:	01010113          	addi	sp,sp,16
    80001988:	00008067          	ret
        return -1;
    8000198c:	fff00513          	li	a0,-1
    80001990:	00008067          	ret

0000000080001994 <_ZN4_sem6signalEv>:
int _sem::signal() {
    80001994:	ff010113          	addi	sp,sp,-16
    80001998:	00113423          	sd	ra,8(sp)
    8000199c:	00813023          	sd	s0,0(sp)
    800019a0:	01010413          	addi	s0,sp,16
    return signalN(1);
    800019a4:	00100593          	li	a1,1
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	f98080e7          	jalr	-104(ra) # 80001940 <_ZN4_sem7signalNEj>
}
    800019b0:	00813083          	ld	ra,8(sp)
    800019b4:	00013403          	ld	s0,0(sp)
    800019b8:	01010113          	addi	sp,sp,16
    800019bc:	00008067          	ret

00000000800019c0 <_ZN4_sem10unblockAllEv>:

void _sem::unblockAll() {
    800019c0:	fe010113          	addi	sp,sp,-32
    800019c4:	00113c23          	sd	ra,24(sp)
    800019c8:	00813823          	sd	s0,16(sp)
    800019cc:	00913423          	sd	s1,8(sp)
    800019d0:	01213023          	sd	s2,0(sp)
    800019d4:	02010413          	addi	s0,sp,32
    800019d8:	00050913          	mv	s2,a0
    while (head != nullptr) {
    800019dc:	00893483          	ld	s1,8(s2)
    800019e0:	02048e63          	beqz	s1,80001a1c <_ZN4_sem10unblockAllEv+0x5c>
        BlockedNode* node = head;

        head = head->next;
    800019e4:	0104b783          	ld	a5,16(s1)
    800019e8:	00f93423          	sd	a5,8(s2)

        node->status = -1;
    800019ec:	fff00793          	li	a5,-1
    800019f0:	00f4a623          	sw	a5,12(s1)
        node->next = nullptr;
    800019f4:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    800019f8:	0004b503          	ld	a0,0(s1)
    800019fc:	fe0500e3          	beqz	a0,800019dc <_ZN4_sem10unblockAllEv+0x1c>
            node->thread->setState(_thread::READY);
    80001a00:	00100593          	li	a1,1
    80001a04:	00001097          	auipc	ra,0x1
    80001a08:	870080e7          	jalr	-1936(ra) # 80002274 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001a0c:	0004b503          	ld	a0,0(s1)
    80001a10:	00001097          	auipc	ra,0x1
    80001a14:	a00080e7          	jalr	-1536(ra) # 80002410 <_ZN9Scheduler3putEP7_thread>
    80001a18:	fc5ff06f          	j	800019dc <_ZN4_sem10unblockAllEv+0x1c>
        }
    }

    tail = nullptr;
    80001a1c:	00093823          	sd	zero,16(s2)
    80001a20:	01813083          	ld	ra,24(sp)
    80001a24:	01013403          	ld	s0,16(sp)
    80001a28:	00813483          	ld	s1,8(sp)
    80001a2c:	00013903          	ld	s2,0(sp)
    80001a30:	02010113          	addi	sp,sp,32
    80001a34:	00008067          	ret

0000000080001a38 <_ZN4_sem5closeEv>:
    if (closed) {
    80001a38:	00454783          	lbu	a5,4(a0)
    80001a3c:	02079c63          	bnez	a5,80001a74 <_ZN4_sem5closeEv+0x3c>
int _sem::close() {
    80001a40:	ff010113          	addi	sp,sp,-16
    80001a44:	00113423          	sd	ra,8(sp)
    80001a48:	00813023          	sd	s0,0(sp)
    80001a4c:	01010413          	addi	s0,sp,16
    closed = true;
    80001a50:	00100793          	li	a5,1
    80001a54:	00f50223          	sb	a5,4(a0)
    unblockAll();
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	f68080e7          	jalr	-152(ra) # 800019c0 <_ZN4_sem10unblockAllEv>
    return 0;
    80001a60:	00000513          	li	a0,0
}
    80001a64:	00813083          	ld	ra,8(sp)
    80001a68:	00013403          	ld	s0,0(sp)
    80001a6c:	01010113          	addi	sp,sp,16
    80001a70:	00008067          	ret
        return -1;
    80001a74:	fff00513          	li	a0,-1
}
    80001a78:	00008067          	ret

0000000080001a7c <handleSupervisorTrap>:
#include "../lib/console.h"
#include "../test/printing.hpp"

extern "C" void handleSupervisorTrap(TrapFrame* frame);

extern "C" void handleSupervisorTrap(TrapFrame* frame) {
    80001a7c:	fd010113          	addi	sp,sp,-48
    80001a80:	02113423          	sd	ra,40(sp)
    80001a84:	02813023          	sd	s0,32(sp)
    80001a88:	00913c23          	sd	s1,24(sp)
    80001a8c:	01213823          	sd	s2,16(sp)
    80001a90:	01313423          	sd	s3,8(sp)
    80001a94:	03010413          	addi	s0,sp,48
    80001a98:	00050493          	mv	s1,a0
    static const uint64 SSTATUS_SPIE = (1UL << 5);
    static const uint64 SSTATUS_SPP = (1UL << 8);

    static uint64 r_scause() {
        uint64 x;
        asm volatile("csrr %0, scause" : "=r"(x));//upis vrednosti scause u x
    80001a9c:	14202973          	csrr	s2,scause
    uint64 scause = Riscv::r_scause();

    if (scause == 8 || scause == 9) {
    80001aa0:	ff890713          	addi	a4,s2,-8
    80001aa4:	00100793          	li	a5,1
    80001aa8:	02e7f863          	bgeu	a5,a4,80001ad8 <handleSupervisorTrap+0x5c>

        frame->sepc += 4;
        return;
    }

    if (scause == 0x8000000000000001UL) {
    80001aac:	fff00793          	li	a5,-1
    80001ab0:	03f79793          	slli	a5,a5,0x3f
    80001ab4:	00178793          	addi	a5,a5,1
    80001ab8:	28f90663          	beq	s2,a5,80001d44 <handleSupervisorTrap+0x2c8>
        Riscv::mc_sip(Riscv::SIP_SSIP);//birsanje pending bita
        return;
    }

    if (scause == 0x8000000000000009UL) {//spoljasnji hardverski prekid 9
    80001abc:	fff00793          	li	a5,-1
    80001ac0:	03f79793          	slli	a5,a5,0x3f
    80001ac4:	00978793          	addi	a5,a5,9
    80001ac8:	28f90463          	beq	s2,a5,80001d50 <handleSupervisorTrap+0x2d4>
        console_handler();
        return;
    }
    if (scause == 2) { // illegal instruction
    80001acc:	00200793          	li	a5,2
    80001ad0:	28f90663          	beq	s2,a5,80001d5c <handleSupervisorTrap+0x2e0>
        frame->sepc += 4;
        Riscv::w_sepc(frame->sepc);
        return;
    }

    while (true) {}
    80001ad4:	0000006f          	j	80001ad4 <handleSupervisorTrap+0x58>
        uint64 syscallCode = frame->a0;
    80001ad8:	04053783          	ld	a5,64(a0)
        uint64 arg1 = frame->a1;
    80001adc:	04853903          	ld	s2,72(a0)
        uint64 arg2 = frame->a2;
    80001ae0:	05053503          	ld	a0,80(a0)
        uint64 arg3 = frame->a3;
    80001ae4:	0584b583          	ld	a1,88(s1)
        uint64 arg4 = frame->a4;
    80001ae8:	0604b603          	ld	a2,96(s1)
        switch (syscallCode) {
    80001aec:	04200713          	li	a4,66
    80001af0:	24f76463          	bltu	a4,a5,80001d38 <handleSupervisorTrap+0x2bc>
    80001af4:	00279793          	slli	a5,a5,0x2
    80001af8:	00007717          	auipc	a4,0x7
    80001afc:	54070713          	addi	a4,a4,1344 # 80009038 <CONSOLE_STATUS+0x28>
    80001b00:	00e787b3          	add	a5,a5,a4
    80001b04:	0007a783          	lw	a5,0(a5)
    80001b08:	00e787b3          	add	a5,a5,a4
    80001b0c:	00078067          	jr	a5
                frame->a0 = (uint64)MemoryAllocator::getInstance().malloc((size_t)arg1);
    80001b10:	00001097          	auipc	ra,0x1
    80001b14:	fbc080e7          	jalr	-68(ra) # 80002acc <_ZN15MemoryAllocator11getInstanceEv>
    80001b18:	00090593          	mv	a1,s2
    80001b1c:	00001097          	auipc	ra,0x1
    80001b20:	030080e7          	jalr	48(ra) # 80002b4c <_ZN15MemoryAllocator6mallocEm>
    80001b24:	04a4b023          	sd	a0,64(s1)
        frame->sepc += 4;
    80001b28:	0f04b783          	ld	a5,240(s1)
    80001b2c:	00478793          	addi	a5,a5,4
    80001b30:	0ef4b823          	sd	a5,240(s1)
    80001b34:	02813083          	ld	ra,40(sp)
    80001b38:	02013403          	ld	s0,32(sp)
    80001b3c:	01813483          	ld	s1,24(sp)
    80001b40:	01013903          	ld	s2,16(sp)
    80001b44:	00813983          	ld	s3,8(sp)
    80001b48:	03010113          	addi	sp,sp,48
    80001b4c:	00008067          	ret
                frame->a0 = (uint64)MemoryAllocator::getInstance().free((void*)arg1);
    80001b50:	00001097          	auipc	ra,0x1
    80001b54:	f7c080e7          	jalr	-132(ra) # 80002acc <_ZN15MemoryAllocator11getInstanceEv>
    80001b58:	00090593          	mv	a1,s2
    80001b5c:	00001097          	auipc	ra,0x1
    80001b60:	14c080e7          	jalr	332(ra) # 80002ca8 <_ZN15MemoryAllocator4freeEPv>
    80001b64:	04a4b023          	sd	a0,64(s1)
                break;
    80001b68:	fc1ff06f          	j	80001b28 <handleSupervisorTrap+0xac>
                if (handle == nullptr || body == nullptr || stackSpace == nullptr) {
    80001b6c:	00090663          	beqz	s2,80001b78 <handleSupervisorTrap+0xfc>
    80001b70:	00050463          	beqz	a0,80001b78 <handleSupervisorTrap+0xfc>
    80001b74:	00061863          	bnez	a2,80001b84 <handleSupervisorTrap+0x108>
                    frame->a0 = (uint64)-1;
    80001b78:	fff00793          	li	a5,-1
    80001b7c:	04f4b023          	sd	a5,64(s1)
                    break;
    80001b80:	fa9ff06f          	j	80001b28 <handleSupervisorTrap+0xac>
                _thread* thread = _thread::createThread(body, arg, stackSpace);
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	49c080e7          	jalr	1180(ra) # 80002020 <_ZN7_thread12createThreadEPFvPvES0_S0_>
                if (thread == nullptr) {
    80001b8c:	00050c63          	beqz	a0,80001ba4 <handleSupervisorTrap+0x128>
                *handle = thread;//korisnik dobija rucku nove niti
    80001b90:	00a93023          	sd	a0,0(s2)
                Scheduler::put(thread);
    80001b94:	00001097          	auipc	ra,0x1
    80001b98:	87c080e7          	jalr	-1924(ra) # 80002410 <_ZN9Scheduler3putEP7_thread>
                frame->a0 = 0;
    80001b9c:	0404b023          	sd	zero,64(s1)
                break;
    80001ba0:	f89ff06f          	j	80001b28 <handleSupervisorTrap+0xac>
                    frame->a0 = (uint64)-1;
    80001ba4:	fff00793          	li	a5,-1
    80001ba8:	04f4b023          	sd	a5,64(s1)
                    break;
    80001bac:	f7dff06f          	j	80001b28 <handleSupervisorTrap+0xac>
                frame->sepc += 4;
    80001bb0:	0f04b783          	ld	a5,240(s1)
    80001bb4:	00478793          	addi	a5,a5,4
    80001bb8:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)_thread::exit();
    80001bbc:	00000097          	auipc	ra,0x0
    80001bc0:	5e4080e7          	jalr	1508(ra) # 800021a0 <_ZN7_thread4exitEv>
    80001bc4:	04a4b023          	sd	a0,64(s1)
                return;
    80001bc8:	f6dff06f          	j	80001b34 <handleSupervisorTrap+0xb8>
                frame->sepc += 4;
    80001bcc:	0f04b783          	ld	a5,240(s1)
    80001bd0:	00478793          	addi	a5,a5,4
    80001bd4:	0ef4b823          	sd	a5,240(s1)
                _thread::dispatch();//nismo frame->a0 jer dispatch nema povratnu value
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	520080e7          	jalr	1312(ra) # 800020f8 <_ZN7_thread8dispatchEv>
                return;
    80001be0:	f55ff06f          	j	80001b34 <handleSupervisorTrap+0xb8>
                unsigned init = (unsigned)arg2;
    80001be4:	0005051b          	sext.w	a0,a0
                if (handle == nullptr) {
    80001be8:	00091863          	bnez	s2,80001bf8 <handleSupervisorTrap+0x17c>
                    frame->a0 = (uint64)-1;
    80001bec:	fff00793          	li	a5,-1
    80001bf0:	04f4b023          	sd	a5,64(s1)
                    break;
    80001bf4:	f35ff06f          	j	80001b28 <handleSupervisorTrap+0xac>
                _sem* sem = _sem::createSemaphore(init);
    80001bf8:	00000097          	auipc	ra,0x0
    80001bfc:	b00080e7          	jalr	-1280(ra) # 800016f8 <_ZN4_sem15createSemaphoreEj>
                if (sem == nullptr) {
    80001c00:	00050863          	beqz	a0,80001c10 <handleSupervisorTrap+0x194>
                *handle = sem;
    80001c04:	00a93023          	sd	a0,0(s2)
                frame->a0 = 0;
    80001c08:	0404b023          	sd	zero,64(s1)
                break;
    80001c0c:	f1dff06f          	j	80001b28 <handleSupervisorTrap+0xac>
                    frame->a0 = (uint64)-1;
    80001c10:	fff00793          	li	a5,-1
    80001c14:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c18:	f11ff06f          	j	80001b28 <handleSupervisorTrap+0xac>
                if (sem == nullptr) {
    80001c1c:	00091863          	bnez	s2,80001c2c <handleSupervisorTrap+0x1b0>
                    frame->a0 = (uint64)-1;
    80001c20:	fff00793          	li	a5,-1
    80001c24:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c28:	f01ff06f          	j	80001b28 <handleSupervisorTrap+0xac>
                int ret = sem->close();
    80001c2c:	00090513          	mv	a0,s2
    80001c30:	00000097          	auipc	ra,0x0
    80001c34:	e08080e7          	jalr	-504(ra) # 80001a38 <_ZN4_sem5closeEv>
    80001c38:	00050993          	mv	s3,a0
                if (ret == 0) {
    80001c3c:	00050663          	beqz	a0,80001c48 <handleSupervisorTrap+0x1cc>
                frame->a0 = (uint64)ret;
    80001c40:	0534b023          	sd	s3,64(s1)
                break;
    80001c44:	ee5ff06f          	j	80001b28 <handleSupervisorTrap+0xac>
                    _sem::destroySemaphore(sem);
    80001c48:	00090513          	mv	a0,s2
    80001c4c:	00000097          	auipc	ra,0x0
    80001c50:	b00080e7          	jalr	-1280(ra) # 8000174c <_ZN4_sem16destroySemaphoreEPS_>
    80001c54:	fedff06f          	j	80001c40 <handleSupervisorTrap+0x1c4>
                if (sem == nullptr) {
    80001c58:	00091863          	bnez	s2,80001c68 <handleSupervisorTrap+0x1ec>
                    frame->a0 = (uint64)-1;
    80001c5c:	fff00793          	li	a5,-1
    80001c60:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c64:	ec5ff06f          	j	80001b28 <handleSupervisorTrap+0xac>
                frame->sepc += 4;
    80001c68:	0f04b783          	ld	a5,240(s1)
    80001c6c:	00478793          	addi	a5,a5,4
    80001c70:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->wait();
    80001c74:	00090513          	mv	a0,s2
    80001c78:	00000097          	auipc	ra,0x0
    80001c7c:	c04080e7          	jalr	-1020(ra) # 8000187c <_ZN4_sem4waitEv>
    80001c80:	04a4b023          	sd	a0,64(s1)
                return;
    80001c84:	eb1ff06f          	j	80001b34 <handleSupervisorTrap+0xb8>
                if (sem == nullptr) {
    80001c88:	00091863          	bnez	s2,80001c98 <handleSupervisorTrap+0x21c>
                    frame->a0 = (uint64)-1;
    80001c8c:	fff00793          	li	a5,-1
    80001c90:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c94:	e95ff06f          	j	80001b28 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)sem->signal();
    80001c98:	00090513          	mv	a0,s2
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	cf8080e7          	jalr	-776(ra) # 80001994 <_ZN4_sem6signalEv>
    80001ca4:	04a4b023          	sd	a0,64(s1)
                break;
    80001ca8:	e81ff06f          	j	80001b28 <handleSupervisorTrap+0xac>
                unsigned n = (unsigned)arg2;
    80001cac:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001cb0:	00091863          	bnez	s2,80001cc0 <handleSupervisorTrap+0x244>
                    frame->a0 = (uint64)-1;
    80001cb4:	fff00793          	li	a5,-1
    80001cb8:	04f4b023          	sd	a5,64(s1)
                    break;
    80001cbc:	e6dff06f          	j	80001b28 <handleSupervisorTrap+0xac>
                frame->sepc += 4;
    80001cc0:	0f04b783          	ld	a5,240(s1)
    80001cc4:	00478793          	addi	a5,a5,4
    80001cc8:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->waitN(n);
    80001ccc:	00090513          	mv	a0,s2
    80001cd0:	00000097          	auipc	ra,0x0
    80001cd4:	af4080e7          	jalr	-1292(ra) # 800017c4 <_ZN4_sem5waitNEj>
    80001cd8:	04a4b023          	sd	a0,64(s1)
                return;
    80001cdc:	e59ff06f          	j	80001b34 <handleSupervisorTrap+0xb8>
                unsigned n = (unsigned)arg2;
    80001ce0:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001ce4:	00091863          	bnez	s2,80001cf4 <handleSupervisorTrap+0x278>
                    frame->a0 = (uint64)-1;
    80001ce8:	fff00793          	li	a5,-1
    80001cec:	04f4b023          	sd	a5,64(s1)
                    break;
    80001cf0:	e39ff06f          	j	80001b28 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)sem->signalN(n);
    80001cf4:	00090513          	mv	a0,s2
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	c48080e7          	jalr	-952(ra) # 80001940 <_ZN4_sem7signalNEj>
    80001d00:	04a4b023          	sd	a0,64(s1)
                break;
    80001d04:	e25ff06f          	j	80001b28 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)-1;
    80001d08:	fff00793          	li	a5,-1
    80001d0c:	04f4b023          	sd	a5,64(s1)
                break;
    80001d10:	e19ff06f          	j	80001b28 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)__getc();
    80001d14:	00007097          	auipc	ra,0x7
    80001d18:	e74080e7          	jalr	-396(ra) # 80008b88 <__getc>
    80001d1c:	04a4b023          	sd	a0,64(s1)
                break;
    80001d20:	e09ff06f          	j	80001b28 <handleSupervisorTrap+0xac>
                __putc((char)arg1);
    80001d24:	0ff97513          	andi	a0,s2,255
    80001d28:	00007097          	auipc	ra,0x7
    80001d2c:	e24080e7          	jalr	-476(ra) # 80008b4c <__putc>
                frame->a0 = 0;
    80001d30:	0404b023          	sd	zero,64(s1)
                break;
    80001d34:	df5ff06f          	j	80001b28 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)-1;
    80001d38:	fff00793          	li	a5,-1
    80001d3c:	04f4b023          	sd	a5,64(s1)
                break;
    80001d40:	de9ff06f          	j	80001b28 <handleSupervisorTrap+0xac>

    static void mc_sstatus(uint64 mask) {
        asm volatile("csrc sstatus, %0" : : "r"(mask));//vrati prekide
    }
    static void mc_sip(uint64 mask) {
        asm volatile("csrc sip, %0" : : "r"(mask));
    80001d44:	00200793          	li	a5,2
    80001d48:	1447b073          	csrc	sip,a5
        return;
    80001d4c:	de9ff06f          	j	80001b34 <handleSupervisorTrap+0xb8>
        console_handler();
    80001d50:	00007097          	auipc	ra,0x7
    80001d54:	e70080e7          	jalr	-400(ra) # 80008bc0 <console_handler>
        return;
    80001d58:	dddff06f          	j	80001b34 <handleSupervisorTrap+0xb8>
        printString("ERROR, scause: ");
    80001d5c:	00007517          	auipc	a0,0x7
    80001d60:	2c450513          	addi	a0,a0,708 # 80009020 <CONSOLE_STATUS+0x10>
    80001d64:	00004097          	auipc	ra,0x4
    80001d68:	c24080e7          	jalr	-988(ra) # 80005988 <_Z11printStringPKc>
        printInt(scause);
    80001d6c:	00000613          	li	a2,0
    80001d70:	00a00593          	li	a1,10
    80001d74:	0009051b          	sext.w	a0,s2
    80001d78:	00004097          	auipc	ra,0x4
    80001d7c:	dc0080e7          	jalr	-576(ra) # 80005b38 <_Z8printIntiii>
        printString(",sepc ");
    80001d80:	00007517          	auipc	a0,0x7
    80001d84:	2b050513          	addi	a0,a0,688 # 80009030 <CONSOLE_STATUS+0x20>
    80001d88:	00004097          	auipc	ra,0x4
    80001d8c:	c00080e7          	jalr	-1024(ra) # 80005988 <_Z11printStringPKc>
        printInt(frame->sepc);
    80001d90:	00000613          	li	a2,0
    80001d94:	00a00593          	li	a1,10
    80001d98:	0f04a503          	lw	a0,240(s1)
    80001d9c:	00004097          	auipc	ra,0x4
    80001da0:	d9c080e7          	jalr	-612(ra) # 80005b38 <_Z8printIntiii>
        printString("\n");
    80001da4:	00007517          	auipc	a0,0x7
    80001da8:	51450513          	addi	a0,a0,1300 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80001dac:	00004097          	auipc	ra,0x4
    80001db0:	bdc080e7          	jalr	-1060(ra) # 80005988 <_Z11printStringPKc>
        frame->sepc += 4;
    80001db4:	0f04b783          	ld	a5,240(s1)
    80001db8:	00478793          	addi	a5,a5,4
    80001dbc:	0ef4b823          	sd	a5,240(s1)
        asm volatile("csrw sepc, %0" : : "r"(x));//upis u sepc
    80001dc0:	14179073          	csrw	sepc,a5
        return;
    80001dc4:	d71ff06f          	j	80001b34 <handleSupervisorTrap+0xb8>

0000000080001dc8 <_ZL14blocksForBytesm>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"

_thread* _thread::running = nullptr;

static size_t blocksForBytes(size_t bytes) {
    80001dc8:	ff010113          	addi	sp,sp,-16
    80001dcc:	00813423          	sd	s0,8(sp)
    80001dd0:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001dd4:	03f50513          	addi	a0,a0,63
}
    80001dd8:	00655513          	srli	a0,a0,0x6
    80001ddc:	00813403          	ld	s0,8(sp)
    80001de0:	01010113          	addi	sp,sp,16
    80001de4:	00008067          	ret

0000000080001de8 <_ZN7_thread13threadWrapperEv>:

uint64 _thread::getTimeSlice() const {
    return timeSlice;
}

void _thread::threadWrapper() {
    80001de8:	ff010113          	addi	sp,sp,-16
    80001dec:	00113423          	sd	ra,8(sp)
    80001df0:	00813023          	sd	s0,0(sp)
    80001df4:	01010413          	addi	s0,sp,16
    }
    static void popSppSpie() {
        uint64 target;

        asm volatile("la %0, 1f" : "=r"(target));//skoci na adresu odmah posle sret-a, labela 1
    80001df8:	0000a797          	auipc	a5,0xa
    80001dfc:	e087b783          	ld	a5,-504(a5) # 8000bc00 <_GLOBAL_OFFSET_TABLE_+0x8>

        asm volatile("csrw sepc, %0" : : "r"(target));
    80001e00:	14179073          	csrw	sepc,a5
        asm volatile("csrc sstatus, %0" : : "r"(SSTATUS_SPP));//vrati se u user mode
    80001e04:	10000793          	li	a5,256
    80001e08:	1007b073          	csrc	sstatus,a5
        asm volatile("csrs sstatus, %0" : : "r"(SSTATUS_SPIE));//enable prekide posle sret-a
    80001e0c:	02000793          	li	a5,32
    80001e10:	1007a073          	csrs	sstatus,a5

        asm volatile(
            "sret\n"//sret menja rezim
            "1:\n"//procesor posle sret skoci ovde, da bi se vratio u threadWrapper
        );
    80001e14:	10200073          	sret
    Riscv::popSppSpie();

    if (running != nullptr && running->body != nullptr) {
    80001e18:	0000a797          	auipc	a5,0xa
    80001e1c:	e687b783          	ld	a5,-408(a5) # 8000bc80 <_ZN7_thread7runningE>
    80001e20:	00078a63          	beqz	a5,80001e34 <_ZN7_thread13threadWrapperEv+0x4c>
    80001e24:	0007b703          	ld	a4,0(a5)
    80001e28:	00070663          	beqz	a4,80001e34 <_ZN7_thread13threadWrapperEv+0x4c>
        running->body(running->arg);
    80001e2c:	0087b503          	ld	a0,8(a5)
    80001e30:	000700e7          	jalr	a4
    }

    thread_exit();
    80001e34:	fffff097          	auipc	ra,0xfffff
    80001e38:	514080e7          	jalr	1300(ra) # 80001348 <_Z11thread_exitv>
    80001e3c:	00813083          	ld	ra,8(sp)
    80001e40:	00013403          	ld	s0,0(sp)
    80001e44:	01010113          	addi	sp,sp,16
    80001e48:	00008067          	ret

0000000080001e4c <_ZN7_threadnwEm>:
void* _thread::operator new(size_t size) {
    80001e4c:	fe010113          	addi	sp,sp,-32
    80001e50:	00113c23          	sd	ra,24(sp)
    80001e54:	00813823          	sd	s0,16(sp)
    80001e58:	00913423          	sd	s1,8(sp)
    80001e5c:	01213023          	sd	s2,0(sp)
    80001e60:	02010413          	addi	s0,sp,32
    80001e64:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001e68:	00001097          	auipc	ra,0x1
    80001e6c:	c64080e7          	jalr	-924(ra) # 80002acc <_ZN15MemoryAllocator11getInstanceEv>
    80001e70:	00050493          	mv	s1,a0
    80001e74:	00090513          	mv	a0,s2
    80001e78:	00000097          	auipc	ra,0x0
    80001e7c:	f50080e7          	jalr	-176(ra) # 80001dc8 <_ZL14blocksForBytesm>
    80001e80:	00050593          	mv	a1,a0
    80001e84:	00048513          	mv	a0,s1
    80001e88:	00001097          	auipc	ra,0x1
    80001e8c:	cc4080e7          	jalr	-828(ra) # 80002b4c <_ZN15MemoryAllocator6mallocEm>
}
    80001e90:	01813083          	ld	ra,24(sp)
    80001e94:	01013403          	ld	s0,16(sp)
    80001e98:	00813483          	ld	s1,8(sp)
    80001e9c:	00013903          	ld	s2,0(sp)
    80001ea0:	02010113          	addi	sp,sp,32
    80001ea4:	00008067          	ret

0000000080001ea8 <_ZN7_threadnaEm>:
void* _thread::operator new[](size_t size) {
    80001ea8:	fe010113          	addi	sp,sp,-32
    80001eac:	00113c23          	sd	ra,24(sp)
    80001eb0:	00813823          	sd	s0,16(sp)
    80001eb4:	00913423          	sd	s1,8(sp)
    80001eb8:	01213023          	sd	s2,0(sp)
    80001ebc:	02010413          	addi	s0,sp,32
    80001ec0:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001ec4:	00001097          	auipc	ra,0x1
    80001ec8:	c08080e7          	jalr	-1016(ra) # 80002acc <_ZN15MemoryAllocator11getInstanceEv>
    80001ecc:	00050493          	mv	s1,a0
    80001ed0:	00090513          	mv	a0,s2
    80001ed4:	00000097          	auipc	ra,0x0
    80001ed8:	ef4080e7          	jalr	-268(ra) # 80001dc8 <_ZL14blocksForBytesm>
    80001edc:	00050593          	mv	a1,a0
    80001ee0:	00048513          	mv	a0,s1
    80001ee4:	00001097          	auipc	ra,0x1
    80001ee8:	c68080e7          	jalr	-920(ra) # 80002b4c <_ZN15MemoryAllocator6mallocEm>
}
    80001eec:	01813083          	ld	ra,24(sp)
    80001ef0:	01013403          	ld	s0,16(sp)
    80001ef4:	00813483          	ld	s1,8(sp)
    80001ef8:	00013903          	ld	s2,0(sp)
    80001efc:	02010113          	addi	sp,sp,32
    80001f00:	00008067          	ret

0000000080001f04 <_ZN7_threaddlEPv>:
    if (ptr == nullptr) {
    80001f04:	04050263          	beqz	a0,80001f48 <_ZN7_threaddlEPv+0x44>
void _thread::operator delete(void* ptr) {
    80001f08:	fe010113          	addi	sp,sp,-32
    80001f0c:	00113c23          	sd	ra,24(sp)
    80001f10:	00813823          	sd	s0,16(sp)
    80001f14:	00913423          	sd	s1,8(sp)
    80001f18:	02010413          	addi	s0,sp,32
    80001f1c:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance().free(ptr);
    80001f20:	00001097          	auipc	ra,0x1
    80001f24:	bac080e7          	jalr	-1108(ra) # 80002acc <_ZN15MemoryAllocator11getInstanceEv>
    80001f28:	00048593          	mv	a1,s1
    80001f2c:	00001097          	auipc	ra,0x1
    80001f30:	d7c080e7          	jalr	-644(ra) # 80002ca8 <_ZN15MemoryAllocator4freeEPv>
}
    80001f34:	01813083          	ld	ra,24(sp)
    80001f38:	01013403          	ld	s0,16(sp)
    80001f3c:	00813483          	ld	s1,8(sp)
    80001f40:	02010113          	addi	sp,sp,32
    80001f44:	00008067          	ret
    80001f48:	00008067          	ret

0000000080001f4c <_ZN7_threaddaEPv>:
    if (ptr == nullptr) {
    80001f4c:	04050263          	beqz	a0,80001f90 <_ZN7_threaddaEPv+0x44>
void _thread::operator delete[](void* ptr) {
    80001f50:	fe010113          	addi	sp,sp,-32
    80001f54:	00113c23          	sd	ra,24(sp)
    80001f58:	00813823          	sd	s0,16(sp)
    80001f5c:	00913423          	sd	s1,8(sp)
    80001f60:	02010413          	addi	s0,sp,32
    80001f64:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance().free(ptr);
    80001f68:	00001097          	auipc	ra,0x1
    80001f6c:	b64080e7          	jalr	-1180(ra) # 80002acc <_ZN15MemoryAllocator11getInstanceEv>
    80001f70:	00048593          	mv	a1,s1
    80001f74:	00001097          	auipc	ra,0x1
    80001f78:	d34080e7          	jalr	-716(ra) # 80002ca8 <_ZN15MemoryAllocator4freeEPv>
}
    80001f7c:	01813083          	ld	ra,24(sp)
    80001f80:	01013403          	ld	s0,16(sp)
    80001f84:	00813483          	ld	s1,8(sp)
    80001f88:	02010113          	addi	sp,sp,32
    80001f8c:	00008067          	ret
    80001f90:	00008067          	ret

0000000080001f94 <_ZN7_threadC1EPFvPvES0_S0_>:
_thread::_thread(Body body, void* arg, void* stackSpace) {
    80001f94:	ff010113          	addi	sp,sp,-16
    80001f98:	00813423          	sd	s0,8(sp)
    80001f9c:	01010413          	addi	s0,sp,16
    this->body = body;
    80001fa0:	00b53023          	sd	a1,0(a0)
    this->arg = arg;
    80001fa4:	00c53423          	sd	a2,8(a0)
    if (stackSpace != nullptr) {
    80001fa8:	06068663          	beqz	a3,80002014 <_ZN7_threadC1EPFvPvES0_S0_+0x80>
        this->stack = (void*)((uint64)stackSpace - DEFAULT_STACK_SIZE);
    80001fac:	fffff7b7          	lui	a5,0xfffff
    80001fb0:	00f687b3          	add	a5,a3,a5
    80001fb4:	00f53823          	sd	a5,16(a0)
        this->context.sp = (uint64)stackSpace;
    80001fb8:	02d53023          	sd	a3,32(a0)
    this->context.s0 = 0;
    80001fbc:	02053423          	sd	zero,40(a0)
    this->context.s1 = 0;
    80001fc0:	02053823          	sd	zero,48(a0)
    this->context.s2 = 0;
    80001fc4:	02053c23          	sd	zero,56(a0)
    this->context.s3 = 0;
    80001fc8:	04053023          	sd	zero,64(a0)
    this->context.s4 = 0;
    80001fcc:	04053423          	sd	zero,72(a0)
    this->context.s5 = 0;
    80001fd0:	04053823          	sd	zero,80(a0)
    this->context.s6 = 0;
    80001fd4:	04053c23          	sd	zero,88(a0)
    this->context.s7 = 0;
    80001fd8:	06053023          	sd	zero,96(a0)
    this->context.s8 = 0;
    80001fdc:	06053423          	sd	zero,104(a0)
    this->context.s9 = 0;
    80001fe0:	06053823          	sd	zero,112(a0)
    this->context.s10 = 0;
    80001fe4:	06053c23          	sd	zero,120(a0)
    this->context.s11 = 0;
    80001fe8:	08053023          	sd	zero,128(a0)
    this->context.ra = (uint64)&_thread::threadWrapper;//nit nigde nije radila pa upisujemo povratnu adresu
    80001fec:	00000797          	auipc	a5,0x0
    80001ff0:	dfc78793          	addi	a5,a5,-516 # 80001de8 <_ZN7_thread13threadWrapperEv>
    80001ff4:	00f53c23          	sd	a5,24(a0)
    this->timeSlice = DEFAULT_TIME_SLICE;
    80001ff8:	00200793          	li	a5,2
    80001ffc:	08f53423          	sd	a5,136(a0)
    this->state = CREATED;//nakon ovoga u trap.cpp radimo ready
    80002000:	08052823          	sw	zero,144(a0)
    this->next = nullptr;
    80002004:	08053c23          	sd	zero,152(a0)
}
    80002008:	00813403          	ld	s0,8(sp)
    8000200c:	01010113          	addi	sp,sp,16
    80002010:	00008067          	ret
        this->stack = nullptr;
    80002014:	00053823          	sd	zero,16(a0)
        this->context.sp = 0;
    80002018:	02053023          	sd	zero,32(a0)
    8000201c:	fa1ff06f          	j	80001fbc <_ZN7_threadC1EPFvPvES0_S0_+0x28>

0000000080002020 <_ZN7_thread12createThreadEPFvPvES0_S0_>:
_thread* _thread::createThread(Body body, void* arg, void* stackSpace) {
    80002020:	fd010113          	addi	sp,sp,-48
    80002024:	02113423          	sd	ra,40(sp)
    80002028:	02813023          	sd	s0,32(sp)
    8000202c:	00913c23          	sd	s1,24(sp)
    80002030:	01213823          	sd	s2,16(sp)
    80002034:	01313423          	sd	s3,8(sp)
    80002038:	01413023          	sd	s4,0(sp)
    8000203c:	03010413          	addi	s0,sp,48
    80002040:	00050913          	mv	s2,a0
    80002044:	00058993          	mv	s3,a1
    80002048:	00060a13          	mv	s4,a2
    return new _thread(body, arg, stackSpace);
    8000204c:	0a000513          	li	a0,160
    80002050:	00000097          	auipc	ra,0x0
    80002054:	dfc080e7          	jalr	-516(ra) # 80001e4c <_ZN7_threadnwEm>
    80002058:	00050493          	mv	s1,a0
    8000205c:	000a0693          	mv	a3,s4
    80002060:	00098613          	mv	a2,s3
    80002064:	00090593          	mv	a1,s2
    80002068:	00000097          	auipc	ra,0x0
    8000206c:	f2c080e7          	jalr	-212(ra) # 80001f94 <_ZN7_threadC1EPFvPvES0_S0_>
}
    80002070:	00048513          	mv	a0,s1
    80002074:	02813083          	ld	ra,40(sp)
    80002078:	02013403          	ld	s0,32(sp)
    8000207c:	01813483          	ld	s1,24(sp)
    80002080:	01013903          	ld	s2,16(sp)
    80002084:	00813983          	ld	s3,8(sp)
    80002088:	00013a03          	ld	s4,0(sp)
    8000208c:	03010113          	addi	sp,sp,48
    80002090:	00008067          	ret

0000000080002094 <_ZN7_thread13destroyThreadEPS_>:
    if (thread == nullptr) {
    80002094:	04050e63          	beqz	a0,800020f0 <_ZN7_thread13destroyThreadEPS_+0x5c>
int _thread::destroyThread(_thread* thread) {
    80002098:	fe010113          	addi	sp,sp,-32
    8000209c:	00113c23          	sd	ra,24(sp)
    800020a0:	00813823          	sd	s0,16(sp)
    800020a4:	00913423          	sd	s1,8(sp)
    800020a8:	02010413          	addi	s0,sp,32
    800020ac:	00050493          	mv	s1,a0
    if (thread->stack != nullptr) {
    800020b0:	01053783          	ld	a5,16(a0)
    800020b4:	00078c63          	beqz	a5,800020cc <_ZN7_thread13destroyThreadEPS_+0x38>
        MemoryAllocator::getInstance().free(thread->stack);
    800020b8:	00001097          	auipc	ra,0x1
    800020bc:	a14080e7          	jalr	-1516(ra) # 80002acc <_ZN15MemoryAllocator11getInstanceEv>
    800020c0:	0104b583          	ld	a1,16(s1)
    800020c4:	00001097          	auipc	ra,0x1
    800020c8:	be4080e7          	jalr	-1052(ra) # 80002ca8 <_ZN15MemoryAllocator4freeEPv>
    delete thread;
    800020cc:	00048513          	mv	a0,s1
    800020d0:	00000097          	auipc	ra,0x0
    800020d4:	e34080e7          	jalr	-460(ra) # 80001f04 <_ZN7_threaddlEPv>
    return 0;
    800020d8:	00000513          	li	a0,0
}
    800020dc:	01813083          	ld	ra,24(sp)
    800020e0:	01013403          	ld	s0,16(sp)
    800020e4:	00813483          	ld	s1,8(sp)
    800020e8:	02010113          	addi	sp,sp,32
    800020ec:	00008067          	ret
        return -1;
    800020f0:	fff00513          	li	a0,-1
}
    800020f4:	00008067          	ret

00000000800020f8 <_ZN7_thread8dispatchEv>:
void _thread::dispatch() {
    800020f8:	fe010113          	addi	sp,sp,-32
    800020fc:	00113c23          	sd	ra,24(sp)
    80002100:	00813823          	sd	s0,16(sp)
    80002104:	00913423          	sd	s1,8(sp)
    80002108:	02010413          	addi	s0,sp,32
    _thread* old = running;
    8000210c:	0000a497          	auipc	s1,0xa
    80002110:	b744b483          	ld	s1,-1164(s1) # 8000bc80 <_ZN7_thread7runningE>
    if (old != nullptr && old->state != FINISHED && old->state != BLOCKED) {
    80002114:	00048c63          	beqz	s1,8000212c <_ZN7_thread8dispatchEv+0x34>
    80002118:	0904a783          	lw	a5,144(s1)
    8000211c:	00400713          	li	a4,4
    80002120:	00e78663          	beq	a5,a4,8000212c <_ZN7_thread8dispatchEv+0x34>
    80002124:	00300713          	li	a4,3
    80002128:	04e79663          	bne	a5,a4,80002174 <_ZN7_thread8dispatchEv+0x7c>
    _thread* next = Scheduler::get();
    8000212c:	00000097          	auipc	ra,0x0
    80002130:	350080e7          	jalr	848(ra) # 8000247c <_ZN9Scheduler3getEv>
    if (next == nullptr) {
    80002134:	04050863          	beqz	a0,80002184 <_ZN7_thread8dispatchEv+0x8c>
    running = next;
    80002138:	0000a797          	auipc	a5,0xa
    8000213c:	b4a7b423          	sd	a0,-1208(a5) # 8000bc80 <_ZN7_thread7runningE>
    running->state = RUNNING;
    80002140:	00200793          	li	a5,2
    80002144:	08f52823          	sw	a5,144(a0)
    if (old != nullptr && old != running) {//ako je scheduler vratio istu nit ne treba contextswitch
    80002148:	00048c63          	beqz	s1,80002160 <_ZN7_thread8dispatchEv+0x68>
    8000214c:	00a48a63          	beq	s1,a0,80002160 <_ZN7_thread8dispatchEv+0x68>
        contextSwitch(&old->context, &running->context);
    80002150:	01850593          	addi	a1,a0,24
    80002154:	01848513          	addi	a0,s1,24
    80002158:	fffff097          	auipc	ra,0xfffff
    8000215c:	fd8080e7          	jalr	-40(ra) # 80001130 <contextSwitch>
}
    80002160:	01813083          	ld	ra,24(sp)
    80002164:	01013403          	ld	s0,16(sp)
    80002168:	00813483          	ld	s1,8(sp)
    8000216c:	02010113          	addi	sp,sp,32
    80002170:	00008067          	ret
        Scheduler::put(old);
    80002174:	00048513          	mv	a0,s1
    80002178:	00000097          	auipc	ra,0x0
    8000217c:	298080e7          	jalr	664(ra) # 80002410 <_ZN9Scheduler3putEP7_thread>
    80002180:	fadff06f          	j	8000212c <_ZN7_thread8dispatchEv+0x34>
        if (old != nullptr && old->state == RUNNING) {
    80002184:	fc048ee3          	beqz	s1,80002160 <_ZN7_thread8dispatchEv+0x68>
    80002188:	0904a703          	lw	a4,144(s1)
    8000218c:	00200793          	li	a5,2
    80002190:	fcf718e3          	bne	a4,a5,80002160 <_ZN7_thread8dispatchEv+0x68>
            running = old;
    80002194:	0000a797          	auipc	a5,0xa
    80002198:	ae97b623          	sd	s1,-1300(a5) # 8000bc80 <_ZN7_thread7runningE>
        return;
    8000219c:	fc5ff06f          	j	80002160 <_ZN7_thread8dispatchEv+0x68>

00000000800021a0 <_ZN7_thread4exitEv>:
    if (running == nullptr) {
    800021a0:	0000a797          	auipc	a5,0xa
    800021a4:	ae07b783          	ld	a5,-1312(a5) # 8000bc80 <_ZN7_thread7runningE>
    800021a8:	02078c63          	beqz	a5,800021e0 <_ZN7_thread4exitEv+0x40>
int _thread::exit() {
    800021ac:	ff010113          	addi	sp,sp,-16
    800021b0:	00113423          	sd	ra,8(sp)
    800021b4:	00813023          	sd	s0,0(sp)
    800021b8:	01010413          	addi	s0,sp,16
    running->state = FINISHED;
    800021bc:	00400713          	li	a4,4
    800021c0:	08e7a823          	sw	a4,144(a5)
    dispatch();
    800021c4:	00000097          	auipc	ra,0x0
    800021c8:	f34080e7          	jalr	-204(ra) # 800020f8 <_ZN7_thread8dispatchEv>
    return 0;
    800021cc:	00000513          	li	a0,0
}
    800021d0:	00813083          	ld	ra,8(sp)
    800021d4:	00013403          	ld	s0,0(sp)
    800021d8:	01010113          	addi	sp,sp,16
    800021dc:	00008067          	ret
        return -1;
    800021e0:	fff00513          	li	a0,-1
}
    800021e4:	00008067          	ret

00000000800021e8 <_ZNK7_thread7getBodyEv>:
_thread::Body _thread::getBody() const {
    800021e8:	ff010113          	addi	sp,sp,-16
    800021ec:	00813423          	sd	s0,8(sp)
    800021f0:	01010413          	addi	s0,sp,16
}
    800021f4:	00053503          	ld	a0,0(a0)
    800021f8:	00813403          	ld	s0,8(sp)
    800021fc:	01010113          	addi	sp,sp,16
    80002200:	00008067          	ret

0000000080002204 <_ZNK7_thread6getArgEv>:
void* _thread::getArg() const {
    80002204:	ff010113          	addi	sp,sp,-16
    80002208:	00813423          	sd	s0,8(sp)
    8000220c:	01010413          	addi	s0,sp,16
}
    80002210:	00853503          	ld	a0,8(a0)
    80002214:	00813403          	ld	s0,8(sp)
    80002218:	01010113          	addi	sp,sp,16
    8000221c:	00008067          	ret

0000000080002220 <_ZNK7_thread8getStackEv>:
void* _thread::getStack() const {
    80002220:	ff010113          	addi	sp,sp,-16
    80002224:	00813423          	sd	s0,8(sp)
    80002228:	01010413          	addi	s0,sp,16
}
    8000222c:	01053503          	ld	a0,16(a0)
    80002230:	00813403          	ld	s0,8(sp)
    80002234:	01010113          	addi	sp,sp,16
    80002238:	00008067          	ret

000000008000223c <_ZN7_thread10getContextEv>:
_thread::Context* _thread::getContext() {
    8000223c:	ff010113          	addi	sp,sp,-16
    80002240:	00813423          	sd	s0,8(sp)
    80002244:	01010413          	addi	s0,sp,16
}
    80002248:	01850513          	addi	a0,a0,24
    8000224c:	00813403          	ld	s0,8(sp)
    80002250:	01010113          	addi	sp,sp,16
    80002254:	00008067          	ret

0000000080002258 <_ZNK7_thread8getStateEv>:
_thread::State _thread::getState() const {
    80002258:	ff010113          	addi	sp,sp,-16
    8000225c:	00813423          	sd	s0,8(sp)
    80002260:	01010413          	addi	s0,sp,16
}
    80002264:	09052503          	lw	a0,144(a0)
    80002268:	00813403          	ld	s0,8(sp)
    8000226c:	01010113          	addi	sp,sp,16
    80002270:	00008067          	ret

0000000080002274 <_ZN7_thread8setStateENS_5StateE>:
void _thread::setState(State state) {
    80002274:	ff010113          	addi	sp,sp,-16
    80002278:	00813423          	sd	s0,8(sp)
    8000227c:	01010413          	addi	s0,sp,16
    this->state = state;
    80002280:	08b52823          	sw	a1,144(a0)
}
    80002284:	00813403          	ld	s0,8(sp)
    80002288:	01010113          	addi	sp,sp,16
    8000228c:	00008067          	ret

0000000080002290 <_ZNK7_thread12getTimeSliceEv>:
uint64 _thread::getTimeSlice() const {
    80002290:	ff010113          	addi	sp,sp,-16
    80002294:	00813423          	sd	s0,8(sp)
    80002298:	01010413          	addi	s0,sp,16
}
    8000229c:	08853503          	ld	a0,136(a0)
    800022a0:	00813403          	ld	s0,8(sp)
    800022a4:	01010113          	addi	sp,sp,16
    800022a8:	00008067          	ret

00000000800022ac <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800022ac:	fe010113          	addi	sp,sp,-32
    800022b0:	00113c23          	sd	ra,24(sp)
    800022b4:	00813823          	sd	s0,16(sp)
    800022b8:	00913423          	sd	s1,8(sp)
    800022bc:	01213023          	sd	s2,0(sp)
    800022c0:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800022c4:	00007517          	auipc	a0,0x7
    800022c8:	e8450513          	addi	a0,a0,-380 # 80009148 <CONSOLE_STATUS+0x138>
    800022cc:	00003097          	auipc	ra,0x3
    800022d0:	6bc080e7          	jalr	1724(ra) # 80005988 <_Z11printStringPKc>
    int test = getc() - '0';
    800022d4:	fffff097          	auipc	ra,0xfffff
    800022d8:	2bc080e7          	jalr	700(ra) # 80001590 <_Z4getcv>
    800022dc:	00050913          	mv	s2,a0
    800022e0:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800022e4:	fffff097          	auipc	ra,0xfffff
    800022e8:	2ac080e7          	jalr	684(ra) # 80001590 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800022ec:	fcb9091b          	addiw	s2,s2,-53
    800022f0:	00100793          	li	a5,1
    800022f4:	0327f463          	bgeu	a5,s2,8000231c <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800022f8:	00800793          	li	a5,8
    800022fc:	1097e063          	bltu	a5,s1,800023fc <_Z8userMainv+0x150>
    80002300:	00249493          	slli	s1,s1,0x2
    80002304:	00007717          	auipc	a4,0x7
    80002308:	05c70713          	addi	a4,a4,92 # 80009360 <CONSOLE_STATUS+0x350>
    8000230c:	00e484b3          	add	s1,s1,a4
    80002310:	0004a783          	lw	a5,0(s1)
    80002314:	00e787b3          	add	a5,a5,a4
    80002318:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    8000231c:	00007517          	auipc	a0,0x7
    80002320:	e4c50513          	addi	a0,a0,-436 # 80009168 <CONSOLE_STATUS+0x158>
    80002324:	00003097          	auipc	ra,0x3
    80002328:	664080e7          	jalr	1636(ra) # 80005988 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8000232c:	01813083          	ld	ra,24(sp)
    80002330:	01013403          	ld	s0,16(sp)
    80002334:	00813483          	ld	s1,8(sp)
    80002338:	00013903          	ld	s2,0(sp)
    8000233c:	02010113          	addi	sp,sp,32
    80002340:	00008067          	ret
            Threads_C_API_test();
    80002344:	00003097          	auipc	ra,0x3
    80002348:	cbc080e7          	jalr	-836(ra) # 80005000 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000234c:	00007517          	auipc	a0,0x7
    80002350:	e4c50513          	addi	a0,a0,-436 # 80009198 <CONSOLE_STATUS+0x188>
    80002354:	00003097          	auipc	ra,0x3
    80002358:	634080e7          	jalr	1588(ra) # 80005988 <_Z11printStringPKc>
            break;
    8000235c:	fd1ff06f          	j	8000232c <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80002360:	00002097          	auipc	ra,0x2
    80002364:	b80080e7          	jalr	-1152(ra) # 80003ee0 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80002368:	00007517          	auipc	a0,0x7
    8000236c:	e7050513          	addi	a0,a0,-400 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80002370:	00003097          	auipc	ra,0x3
    80002374:	618080e7          	jalr	1560(ra) # 80005988 <_Z11printStringPKc>
            break;
    80002378:	fb5ff06f          	j	8000232c <_Z8userMainv+0x80>
            producerConsumer_C_API();
    8000237c:	00001097          	auipc	ra,0x1
    80002380:	3b8080e7          	jalr	952(ra) # 80003734 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80002384:	00007517          	auipc	a0,0x7
    80002388:	e9450513          	addi	a0,a0,-364 # 80009218 <CONSOLE_STATUS+0x208>
    8000238c:	00003097          	auipc	ra,0x3
    80002390:	5fc080e7          	jalr	1532(ra) # 80005988 <_Z11printStringPKc>
            break;
    80002394:	f99ff06f          	j	8000232c <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80002398:	00003097          	auipc	ra,0x3
    8000239c:	fac080e7          	jalr	-84(ra) # 80005344 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800023a0:	00007517          	auipc	a0,0x7
    800023a4:	ec850513          	addi	a0,a0,-312 # 80009268 <CONSOLE_STATUS+0x258>
    800023a8:	00003097          	auipc	ra,0x3
    800023ac:	5e0080e7          	jalr	1504(ra) # 80005988 <_Z11printStringPKc>
            break;
    800023b0:	f7dff06f          	j	8000232c <_Z8userMainv+0x80>
            System_Mode_test();
    800023b4:	00004097          	auipc	ra,0x4
    800023b8:	2b4080e7          	jalr	692(ra) # 80006668 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800023bc:	00007517          	auipc	a0,0x7
    800023c0:	f0450513          	addi	a0,a0,-252 # 800092c0 <CONSOLE_STATUS+0x2b0>
    800023c4:	00003097          	auipc	ra,0x3
    800023c8:	5c4080e7          	jalr	1476(ra) # 80005988 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800023cc:	00007517          	auipc	a0,0x7
    800023d0:	f1450513          	addi	a0,a0,-236 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800023d4:	00003097          	auipc	ra,0x3
    800023d8:	5b4080e7          	jalr	1460(ra) # 80005988 <_Z11printStringPKc>
            break;
    800023dc:	f51ff06f          	j	8000232c <_Z8userMainv+0x80>
            resourceTest();
    800023e0:	00001097          	auipc	ra,0x1
    800023e4:	000080e7          	jalr	ra # 800033e0 <_Z12resourceTestv>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800023e8:	00007517          	auipc	a0,0x7
    800023ec:	ef850513          	addi	a0,a0,-264 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800023f0:	00003097          	auipc	ra,0x3
    800023f4:	598080e7          	jalr	1432(ra) # 80005988 <_Z11printStringPKc>
            break;
    800023f8:	f35ff06f          	j	8000232c <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800023fc:	00007517          	auipc	a0,0x7
    80002400:	f3c50513          	addi	a0,a0,-196 # 80009338 <CONSOLE_STATUS+0x328>
    80002404:	00003097          	auipc	ra,0x3
    80002408:	584080e7          	jalr	1412(ra) # 80005988 <_Z11printStringPKc>
    8000240c:	f21ff06f          	j	8000232c <_Z8userMainv+0x80>

0000000080002410 <_ZN9Scheduler3putEP7_thread>:
#include "../h/Thread.hpp"

_thread* Scheduler::head = nullptr;
_thread* Scheduler::tail = nullptr;

void Scheduler::put(_thread* thread) {
    80002410:	ff010113          	addi	sp,sp,-16
    80002414:	00813423          	sd	s0,8(sp)
    80002418:	01010413          	addi	s0,sp,16
    if (thread == nullptr) {
    8000241c:	04050063          	beqz	a0,8000245c <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    if (thread->state == _thread::FINISHED || thread->state == _thread::BLOCKED) {
    80002420:	09052783          	lw	a5,144(a0)
    80002424:	ffd7879b          	addiw	a5,a5,-3
    80002428:	00100713          	li	a4,1
    8000242c:	02f77863          	bgeu	a4,a5,8000245c <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    thread->state = _thread::READY;
    80002430:	00100793          	li	a5,1
    80002434:	08f52823          	sw	a5,144(a0)
    thread->next = nullptr;
    80002438:	08053c23          	sd	zero,152(a0)

    if (head == nullptr) {
    8000243c:	0000a797          	auipc	a5,0xa
    80002440:	84c7b783          	ld	a5,-1972(a5) # 8000bc88 <_ZN9Scheduler4headE>
    80002444:	02078263          	beqz	a5,80002468 <_ZN9Scheduler3putEP7_thread+0x58>
        head = thread;
        tail = thread;
    } else {
        tail->next = thread;
    80002448:	0000a797          	auipc	a5,0xa
    8000244c:	84078793          	addi	a5,a5,-1984 # 8000bc88 <_ZN9Scheduler4headE>
    80002450:	0087b703          	ld	a4,8(a5)
    80002454:	08a73c23          	sd	a0,152(a4)
        tail = thread;
    80002458:	00a7b423          	sd	a0,8(a5)
    }
}
    8000245c:	00813403          	ld	s0,8(sp)
    80002460:	01010113          	addi	sp,sp,16
    80002464:	00008067          	ret
        head = thread;
    80002468:	0000a797          	auipc	a5,0xa
    8000246c:	82078793          	addi	a5,a5,-2016 # 8000bc88 <_ZN9Scheduler4headE>
    80002470:	00a7b023          	sd	a0,0(a5)
        tail = thread;
    80002474:	00a7b423          	sd	a0,8(a5)
    80002478:	fe5ff06f          	j	8000245c <_ZN9Scheduler3putEP7_thread+0x4c>

000000008000247c <_ZN9Scheduler3getEv>:

_thread* Scheduler::get() {
    8000247c:	ff010113          	addi	sp,sp,-16
    80002480:	00813423          	sd	s0,8(sp)
    80002484:	01010413          	addi	s0,sp,16
    if (head == nullptr) {
    80002488:	0000a517          	auipc	a0,0xa
    8000248c:	80053503          	ld	a0,-2048(a0) # 8000bc88 <_ZN9Scheduler4headE>
    80002490:	00050c63          	beqz	a0,800024a8 <_ZN9Scheduler3getEv+0x2c>
        return nullptr;
    }

    _thread* thread = head;

    head = head->next;
    80002494:	09853783          	ld	a5,152(a0)
    80002498:	00009717          	auipc	a4,0x9
    8000249c:	7ef73823          	sd	a5,2032(a4) # 8000bc88 <_ZN9Scheduler4headE>

    if (head == nullptr) {
    800024a0:	00078a63          	beqz	a5,800024b4 <_ZN9Scheduler3getEv+0x38>
        tail = nullptr;
    }

    thread->next = nullptr;
    800024a4:	08053c23          	sd	zero,152(a0)

    return thread;
}
    800024a8:	00813403          	ld	s0,8(sp)
    800024ac:	01010113          	addi	sp,sp,16
    800024b0:	00008067          	ret
        tail = nullptr;
    800024b4:	00009797          	auipc	a5,0x9
    800024b8:	7c07be23          	sd	zero,2012(a5) # 8000bc90 <_ZN9Scheduler4tailE>
    800024bc:	fe9ff06f          	j	800024a4 <_ZN9Scheduler3getEv+0x28>

00000000800024c0 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    800024c0:	ff010113          	addi	sp,sp,-16
    800024c4:	00813423          	sd	s0,8(sp)
    800024c8:	01010413          	addi	s0,sp,16
    return head == nullptr;
    800024cc:	00009517          	auipc	a0,0x9
    800024d0:	7bc53503          	ld	a0,1980(a0) # 8000bc88 <_ZN9Scheduler4headE>
    800024d4:	00153513          	seqz	a0,a0
    800024d8:	00813403          	ld	s0,8(sp)
    800024dc:	01010113          	addi	sp,sp,16
    800024e0:	00008067          	ret

00000000800024e4 <_Znwm>:
#include "../h/new.hpp"
#include "../h/syscall_c.hpp"

void* operator new(size_t size) {
    800024e4:	ff010113          	addi	sp,sp,-16
    800024e8:	00113423          	sd	ra,8(sp)
    800024ec:	00813023          	sd	s0,0(sp)
    800024f0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800024f4:	fffff097          	auipc	ra,0xfffff
    800024f8:	d04080e7          	jalr	-764(ra) # 800011f8 <_Z9mem_allocm>
}
    800024fc:	00813083          	ld	ra,8(sp)
    80002500:	00013403          	ld	s0,0(sp)
    80002504:	01010113          	addi	sp,sp,16
    80002508:	00008067          	ret

000000008000250c <_Znam>:

void* operator new[](size_t size) {
    8000250c:	ff010113          	addi	sp,sp,-16
    80002510:	00113423          	sd	ra,8(sp)
    80002514:	00813023          	sd	s0,0(sp)
    80002518:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000251c:	fffff097          	auipc	ra,0xfffff
    80002520:	cdc080e7          	jalr	-804(ra) # 800011f8 <_Z9mem_allocm>
}
    80002524:	00813083          	ld	ra,8(sp)
    80002528:	00013403          	ld	s0,0(sp)
    8000252c:	01010113          	addi	sp,sp,16
    80002530:	00008067          	ret

0000000080002534 <_ZdlPv>:

void operator delete(void* ptr) {
    80002534:	ff010113          	addi	sp,sp,-16
    80002538:	00113423          	sd	ra,8(sp)
    8000253c:	00813023          	sd	s0,0(sp)
    80002540:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80002544:	fffff097          	auipc	ra,0xfffff
    80002548:	d00080e7          	jalr	-768(ra) # 80001244 <_Z8mem_freePv>
}
    8000254c:	00813083          	ld	ra,8(sp)
    80002550:	00013403          	ld	s0,0(sp)
    80002554:	01010113          	addi	sp,sp,16
    80002558:	00008067          	ret

000000008000255c <_ZdaPv>:

void operator delete[](void* ptr) {
    8000255c:	ff010113          	addi	sp,sp,-16
    80002560:	00113423          	sd	ra,8(sp)
    80002564:	00813023          	sd	s0,0(sp)
    80002568:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    8000256c:	fffff097          	auipc	ra,0xfffff
    80002570:	cd8080e7          	jalr	-808(ra) # 80001244 <_Z8mem_freePv>
    80002574:	00813083          	ld	ra,8(sp)
    80002578:	00013403          	ld	s0,0(sp)
    8000257c:	01010113          	addi	sp,sp,16
    80002580:	00008067          	ret

0000000080002584 <_ZL15userMainWrapperPv>:
extern "C" void supervisorTrap();
extern void userMain();

static volatile bool userMainFinished = false;

static void userMainWrapper(void*) {
    80002584:	ff010113          	addi	sp,sp,-16
    80002588:	00113423          	sd	ra,8(sp)
    8000258c:	00813023          	sd	s0,0(sp)
    80002590:	01010413          	addi	s0,sp,16
    userMain();
    80002594:	00000097          	auipc	ra,0x0
    80002598:	d18080e7          	jalr	-744(ra) # 800022ac <_Z8userMainv>
    userMainFinished = true;
    8000259c:	00100793          	li	a5,1
    800025a0:	00009717          	auipc	a4,0x9
    800025a4:	6ef70c23          	sb	a5,1784(a4) # 8000bc98 <_ZL16userMainFinished>
    thread_exit();
    800025a8:	fffff097          	auipc	ra,0xfffff
    800025ac:	da0080e7          	jalr	-608(ra) # 80001348 <_Z11thread_exitv>
}
    800025b0:	00813083          	ld	ra,8(sp)
    800025b4:	00013403          	ld	s0,0(sp)
    800025b8:	01010113          	addi	sp,sp,16
    800025bc:	00008067          	ret

00000000800025c0 <main>:

int main() {
    800025c0:	f3010113          	addi	sp,sp,-208
    800025c4:	0c113423          	sd	ra,200(sp)
    800025c8:	0c813023          	sd	s0,192(sp)
    800025cc:	0a913c23          	sd	s1,184(sp)
    800025d0:	0d010413          	addi	s0,sp,208
    Riscv::w_stvec((uint64)&supervisorTrap);
    800025d4:	00009797          	auipc	a5,0x9
    800025d8:	6447b783          	ld	a5,1604(a5) # 8000bc18 <_GLOBAL_OFFSET_TABLE_+0x20>
        asm volatile("csrw stvec, %0" : : "r"(x));//adresa prekidne rutine, da bi skocilo na supervisorTrap
    800025dc:	10579073          	csrw	stvec,a5
        asm volatile("csrs sstatus, %0" : : "r"(mask));//omoguci prekide
    800025e0:	00200793          	li	a5,2
    800025e4:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    _thread mainThread(nullptr, nullptr, nullptr);//poziv konstruktora
    800025e8:	00000693          	li	a3,0
    800025ec:	00000613          	li	a2,0
    800025f0:	00000593          	li	a1,0
    800025f4:	f4040493          	addi	s1,s0,-192
    800025f8:	00048513          	mv	a0,s1
    800025fc:	00000097          	auipc	ra,0x0
    80002600:	998080e7          	jalr	-1640(ra) # 80001f94 <_ZN7_threadC1EPFvPvES0_S0_>
    mainThread.setState(_thread::RUNNING);
    80002604:	00200593          	li	a1,2
    80002608:	00048513          	mv	a0,s1
    8000260c:	00000097          	auipc	ra,0x0
    80002610:	c68080e7          	jalr	-920(ra) # 80002274 <_ZN7_thread8setStateENS_5StateE>
    _thread::running = &mainThread;//pravimo main nit zbog dispatch-a, jer nemamo running na pocetku, i scheduler radi samo sa _thread
    80002614:	00009797          	auipc	a5,0x9
    80002618:	5fc7b783          	ld	a5,1532(a5) # 8000bc10 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000261c:	0097b023          	sd	s1,0(a5)

    thread_t userThread = nullptr;
    80002620:	f2043c23          	sd	zero,-200(s0)
    int ret = thread_create(&userThread, userMainWrapper, nullptr);
    80002624:	00000613          	li	a2,0
    80002628:	00000597          	auipc	a1,0x0
    8000262c:	f5c58593          	addi	a1,a1,-164 # 80002584 <_ZL15userMainWrapperPv>
    80002630:	f3840513          	addi	a0,s0,-200
    80002634:	fffff097          	auipc	ra,0xfffff
    80002638:	c50080e7          	jalr	-944(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>

    if (ret < 0 || userThread == nullptr) {
    8000263c:	00054663          	bltz	a0,80002648 <main+0x88>
    80002640:	f3843783          	ld	a5,-200(s0)
    80002644:	02079063          	bnez	a5,80002664 <main+0xa4>
        volatile uint32* qemu = (uint32*)0x100000;
        *qemu = 0x5555;
    80002648:	00100737          	lui	a4,0x100
    8000264c:	000057b7          	lui	a5,0x5
    80002650:	5557879b          	addiw	a5,a5,1365
    80002654:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
        return ret;
    80002658:	02c0006f          	j	80002684 <main+0xc4>
    }

    while (!userMainFinished) {
        thread_dispatch();
    8000265c:	fffff097          	auipc	ra,0xfffff
    80002660:	d2c080e7          	jalr	-724(ra) # 80001388 <_Z15thread_dispatchv>
    while (!userMainFinished) {
    80002664:	00009797          	auipc	a5,0x9
    80002668:	6347c783          	lbu	a5,1588(a5) # 8000bc98 <_ZL16userMainFinished>
    8000266c:	fe0788e3          	beqz	a5,8000265c <main+0x9c>
    }

    volatile uint32* qemu = (uint32*)0x100000;
    *qemu = 0x5555;
    80002670:	00100737          	lui	a4,0x100
    80002674:	000057b7          	lui	a5,0x5
    80002678:	5557879b          	addiw	a5,a5,1365
    8000267c:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>

    return 0;
    80002680:	00000513          	li	a0,0
}
    80002684:	0c813083          	ld	ra,200(sp)
    80002688:	0c013403          	ld	s0,192(sp)
    8000268c:	0b813483          	ld	s1,184(sp)
    80002690:	0d010113          	addi	sp,sp,208
    80002694:	00008067          	ret

0000000080002698 <_ZN6ThreadD1Ev>:
    this->myHandle = nullptr;
    this->body = nullptr;
    this->arg = nullptr;
}

Thread::~Thread() {
    80002698:	ff010113          	addi	sp,sp,-16
    8000269c:	00813423          	sd	s0,8(sp)
    800026a0:	01010413          	addi	s0,sp,16
}
    800026a4:	00813403          	ld	s0,8(sp)
    800026a8:	01010113          	addi	sp,sp,16
    800026ac:	00008067          	ret

00000000800026b0 <_ZN6Thread13threadWrapperEPv>:
}

void Thread::threadWrapper(void* thread) {
    Thread* t = (Thread*)thread;

    if (t != nullptr) {
    800026b0:	02050863          	beqz	a0,800026e0 <_ZN6Thread13threadWrapperEPv+0x30>
void Thread::threadWrapper(void* thread) {
    800026b4:	ff010113          	addi	sp,sp,-16
    800026b8:	00113423          	sd	ra,8(sp)
    800026bc:	00813023          	sd	s0,0(sp)
    800026c0:	01010413          	addi	s0,sp,16
        t->run();
    800026c4:	00053783          	ld	a5,0(a0)
    800026c8:	0107b783          	ld	a5,16(a5) # 5010 <_entry-0x7fffaff0>
    800026cc:	000780e7          	jalr	a5
    }
}
    800026d0:	00813083          	ld	ra,8(sp)
    800026d4:	00013403          	ld	s0,0(sp)
    800026d8:	01010113          	addi	sp,sp,16
    800026dc:	00008067          	ret
    800026e0:	00008067          	ret

00000000800026e4 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800026e4:	ff010113          	addi	sp,sp,-16
    800026e8:	00113423          	sd	ra,8(sp)
    800026ec:	00813023          	sd	s0,0(sp)
    800026f0:	01010413          	addi	s0,sp,16
}
    800026f4:	00000097          	auipc	ra,0x0
    800026f8:	e40080e7          	jalr	-448(ra) # 80002534 <_ZdlPv>
    800026fc:	00813083          	ld	ra,8(sp)
    80002700:	00013403          	ld	s0,0(sp)
    80002704:	01010113          	addi	sp,sp,16
    80002708:	00008067          	ret

000000008000270c <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    8000270c:	00009797          	auipc	a5,0x9
    80002710:	32c78793          	addi	a5,a5,812 # 8000ba38 <_ZTV9Semaphore+0x10>
    80002714:	00f53023          	sd	a5,0(a0)
    if (myHandle != nullptr) {
    80002718:	00853503          	ld	a0,8(a0)
    8000271c:	02050663          	beqz	a0,80002748 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80002720:	ff010113          	addi	sp,sp,-16
    80002724:	00113423          	sd	ra,8(sp)
    80002728:	00813023          	sd	s0,0(sp)
    8000272c:	01010413          	addi	s0,sp,16
        sem_close(myHandle);
    80002730:	fffff097          	auipc	ra,0xfffff
    80002734:	cd8080e7          	jalr	-808(ra) # 80001408 <_Z9sem_closeP4_sem>
    }
}
    80002738:	00813083          	ld	ra,8(sp)
    8000273c:	00013403          	ld	s0,0(sp)
    80002740:	01010113          	addi	sp,sp,16
    80002744:	00008067          	ret
    80002748:	00008067          	ret

000000008000274c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000274c:	fe010113          	addi	sp,sp,-32
    80002750:	00113c23          	sd	ra,24(sp)
    80002754:	00813823          	sd	s0,16(sp)
    80002758:	00913423          	sd	s1,8(sp)
    8000275c:	02010413          	addi	s0,sp,32
    80002760:	00050493          	mv	s1,a0
}
    80002764:	00000097          	auipc	ra,0x0
    80002768:	fa8080e7          	jalr	-88(ra) # 8000270c <_ZN9SemaphoreD1Ev>
    8000276c:	00048513          	mv	a0,s1
    80002770:	00000097          	auipc	ra,0x0
    80002774:	dc4080e7          	jalr	-572(ra) # 80002534 <_ZdlPv>
    80002778:	01813083          	ld	ra,24(sp)
    8000277c:	01013403          	ld	s0,16(sp)
    80002780:	00813483          	ld	s1,8(sp)
    80002784:	02010113          	addi	sp,sp,32
    80002788:	00008067          	ret

000000008000278c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    8000278c:	ff010113          	addi	sp,sp,-16
    80002790:	00813423          	sd	s0,8(sp)
    80002794:	01010413          	addi	s0,sp,16
    80002798:	00009797          	auipc	a5,0x9
    8000279c:	27878793          	addi	a5,a5,632 # 8000ba10 <_ZTV6Thread+0x10>
    800027a0:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    800027a4:	00053423          	sd	zero,8(a0)
    this->body = body;
    800027a8:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    800027ac:	00c53c23          	sd	a2,24(a0)
}
    800027b0:	00813403          	ld	s0,8(sp)
    800027b4:	01010113          	addi	sp,sp,16
    800027b8:	00008067          	ret

00000000800027bc <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800027bc:	ff010113          	addi	sp,sp,-16
    800027c0:	00813423          	sd	s0,8(sp)
    800027c4:	01010413          	addi	s0,sp,16
    800027c8:	00009797          	auipc	a5,0x9
    800027cc:	24878793          	addi	a5,a5,584 # 8000ba10 <_ZTV6Thread+0x10>
    800027d0:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    800027d4:	00053423          	sd	zero,8(a0)
    this->body = nullptr;
    800027d8:	00053823          	sd	zero,16(a0)
    this->arg = nullptr;
    800027dc:	00053c23          	sd	zero,24(a0)
}
    800027e0:	00813403          	ld	s0,8(sp)
    800027e4:	01010113          	addi	sp,sp,16
    800027e8:	00008067          	ret

00000000800027ec <_ZN6Thread5startEv>:
int Thread::start() {
    800027ec:	ff010113          	addi	sp,sp,-16
    800027f0:	00113423          	sd	ra,8(sp)
    800027f4:	00813023          	sd	s0,0(sp)
    800027f8:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    800027fc:	01053583          	ld	a1,16(a0)
    80002800:	02058263          	beqz	a1,80002824 <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    80002804:	01853603          	ld	a2,24(a0)
    80002808:	00850513          	addi	a0,a0,8
    8000280c:	fffff097          	auipc	ra,0xfffff
    80002810:	a78080e7          	jalr	-1416(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80002814:	00813083          	ld	ra,8(sp)
    80002818:	00013403          	ld	s0,0(sp)
    8000281c:	01010113          	addi	sp,sp,16
    80002820:	00008067          	ret
    return thread_create(&myHandle, Thread::threadWrapper, this);//kada korisnik ocekuje da se izvrsi run(), pa se u thread wrapper poziva run
    80002824:	00050613          	mv	a2,a0
    80002828:	00000597          	auipc	a1,0x0
    8000282c:	e8858593          	addi	a1,a1,-376 # 800026b0 <_ZN6Thread13threadWrapperEPv>
    80002830:	00850513          	addi	a0,a0,8
    80002834:	fffff097          	auipc	ra,0xfffff
    80002838:	a50080e7          	jalr	-1456(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    8000283c:	fd9ff06f          	j	80002814 <_ZN6Thread5startEv+0x28>

0000000080002840 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002840:	ff010113          	addi	sp,sp,-16
    80002844:	00113423          	sd	ra,8(sp)
    80002848:	00813023          	sd	s0,0(sp)
    8000284c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002850:	fffff097          	auipc	ra,0xfffff
    80002854:	b38080e7          	jalr	-1224(ra) # 80001388 <_Z15thread_dispatchv>
}
    80002858:	00813083          	ld	ra,8(sp)
    8000285c:	00013403          	ld	s0,0(sp)
    80002860:	01010113          	addi	sp,sp,16
    80002864:	00008067          	ret

0000000080002868 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002868:	ff010113          	addi	sp,sp,-16
    8000286c:	00113423          	sd	ra,8(sp)
    80002870:	00813023          	sd	s0,0(sp)
    80002874:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002878:	fffff097          	auipc	ra,0xfffff
    8000287c:	cd8080e7          	jalr	-808(ra) # 80001550 <_Z10time_sleepm>
}
    80002880:	00813083          	ld	ra,8(sp)
    80002884:	00013403          	ld	s0,0(sp)
    80002888:	01010113          	addi	sp,sp,16
    8000288c:	00008067          	ret

0000000080002890 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80002890:	ff010113          	addi	sp,sp,-16
    80002894:	00113423          	sd	ra,8(sp)
    80002898:	00813023          	sd	s0,0(sp)
    8000289c:	01010413          	addi	s0,sp,16
    800028a0:	00009797          	auipc	a5,0x9
    800028a4:	19878793          	addi	a5,a5,408 # 8000ba38 <_ZTV9Semaphore+0x10>
    800028a8:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800028ac:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    800028b0:	00850513          	addi	a0,a0,8
    800028b4:	fffff097          	auipc	ra,0xfffff
    800028b8:	b10080e7          	jalr	-1264(ra) # 800013c4 <_Z8sem_openPP4_semj>
}
    800028bc:	00813083          	ld	ra,8(sp)
    800028c0:	00013403          	ld	s0,0(sp)
    800028c4:	01010113          	addi	sp,sp,16
    800028c8:	00008067          	ret

00000000800028cc <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    800028cc:	ff010113          	addi	sp,sp,-16
    800028d0:	00113423          	sd	ra,8(sp)
    800028d4:	00813023          	sd	s0,0(sp)
    800028d8:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800028dc:	00853503          	ld	a0,8(a0)
    800028e0:	fffff097          	auipc	ra,0xfffff
    800028e4:	b68080e7          	jalr	-1176(ra) # 80001448 <_Z8sem_waitP4_sem>
}
    800028e8:	00813083          	ld	ra,8(sp)
    800028ec:	00013403          	ld	s0,0(sp)
    800028f0:	01010113          	addi	sp,sp,16
    800028f4:	00008067          	ret

00000000800028f8 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    800028f8:	ff010113          	addi	sp,sp,-16
    800028fc:	00113423          	sd	ra,8(sp)
    80002900:	00813023          	sd	s0,0(sp)
    80002904:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002908:	00853503          	ld	a0,8(a0)
    8000290c:	fffff097          	auipc	ra,0xfffff
    80002910:	b7c080e7          	jalr	-1156(ra) # 80001488 <_Z10sem_signalP4_sem>
}
    80002914:	00813083          	ld	ra,8(sp)
    80002918:	00013403          	ld	s0,0(sp)
    8000291c:	01010113          	addi	sp,sp,16
    80002920:	00008067          	ret

0000000080002924 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    80002924:	fe010113          	addi	sp,sp,-32
    80002928:	00113c23          	sd	ra,24(sp)
    8000292c:	00813823          	sd	s0,16(sp)
    80002930:	00913423          	sd	s1,8(sp)
    80002934:	01213023          	sd	s2,0(sp)
    80002938:	02010413          	addi	s0,sp,32
    8000293c:	00050493          	mv	s1,a0
    80002940:	00058913          	mv	s2,a1
    80002944:	00000097          	auipc	ra,0x0
    80002948:	e78080e7          	jalr	-392(ra) # 800027bc <_ZN6ThreadC1Ev>
    8000294c:	00009797          	auipc	a5,0x9
    80002950:	09478793          	addi	a5,a5,148 # 8000b9e0 <_ZTV14PeriodicThread+0x10>
    80002954:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80002958:	0324b023          	sd	s2,32(s1)
}
    8000295c:	01813083          	ld	ra,24(sp)
    80002960:	01013403          	ld	s0,16(sp)
    80002964:	00813483          	ld	s1,8(sp)
    80002968:	00013903          	ld	s2,0(sp)
    8000296c:	02010113          	addi	sp,sp,32
    80002970:	00008067          	ret

0000000080002974 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002974:	ff010113          	addi	sp,sp,-16
    80002978:	00813423          	sd	s0,8(sp)
    8000297c:	01010413          	addi	s0,sp,16
    /*
     * PeriodicThread je deo zadatka 4.
     * Pošto ga ne radiš, ovo ostaje prazno.
     */
}
    80002980:	00813403          	ld	s0,8(sp)
    80002984:	01010113          	addi	sp,sp,16
    80002988:	00008067          	ret

000000008000298c <_ZN7Console4getcEv>:

char Console::getc() {
    8000298c:	ff010113          	addi	sp,sp,-16
    80002990:	00113423          	sd	ra,8(sp)
    80002994:	00813023          	sd	s0,0(sp)
    80002998:	01010413          	addi	s0,sp,16
    return ::getc();
    8000299c:	fffff097          	auipc	ra,0xfffff
    800029a0:	bf4080e7          	jalr	-1036(ra) # 80001590 <_Z4getcv>
}
    800029a4:	00813083          	ld	ra,8(sp)
    800029a8:	00013403          	ld	s0,0(sp)
    800029ac:	01010113          	addi	sp,sp,16
    800029b0:	00008067          	ret

00000000800029b4 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800029b4:	ff010113          	addi	sp,sp,-16
    800029b8:	00113423          	sd	ra,8(sp)
    800029bc:	00813023          	sd	s0,0(sp)
    800029c0:	01010413          	addi	s0,sp,16
    ::putc(c);
    800029c4:	fffff097          	auipc	ra,0xfffff
    800029c8:	c0c080e7          	jalr	-1012(ra) # 800015d0 <_Z4putcc>
    800029cc:	00813083          	ld	ra,8(sp)
    800029d0:	00013403          	ld	s0,0(sp)
    800029d4:	01010113          	addi	sp,sp,16
    800029d8:	00008067          	ret

00000000800029dc <_ZN6Thread3runEv>:
    static int sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    800029dc:	ff010113          	addi	sp,sp,-16
    800029e0:	00813423          	sd	s0,8(sp)
    800029e4:	01010413          	addi	s0,sp,16
    800029e8:	00813403          	ld	s0,8(sp)
    800029ec:	01010113          	addi	sp,sp,16
    800029f0:	00008067          	ret

00000000800029f4 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate();

protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    800029f4:	ff010113          	addi	sp,sp,-16
    800029f8:	00813423          	sd	s0,8(sp)
    800029fc:	01010413          	addi	s0,sp,16
    80002a00:	00813403          	ld	s0,8(sp)
    80002a04:	01010113          	addi	sp,sp,16
    80002a08:	00008067          	ret

0000000080002a0c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002a0c:	ff010113          	addi	sp,sp,-16
    80002a10:	00813423          	sd	s0,8(sp)
    80002a14:	01010413          	addi	s0,sp,16
    80002a18:	00009797          	auipc	a5,0x9
    80002a1c:	fc878793          	addi	a5,a5,-56 # 8000b9e0 <_ZTV14PeriodicThread+0x10>
    80002a20:	00f53023          	sd	a5,0(a0)
    80002a24:	00813403          	ld	s0,8(sp)
    80002a28:	01010113          	addi	sp,sp,16
    80002a2c:	00008067          	ret

0000000080002a30 <_ZN14PeriodicThreadD0Ev>:
    80002a30:	ff010113          	addi	sp,sp,-16
    80002a34:	00113423          	sd	ra,8(sp)
    80002a38:	00813023          	sd	s0,0(sp)
    80002a3c:	01010413          	addi	s0,sp,16
    80002a40:	00009797          	auipc	a5,0x9
    80002a44:	fa078793          	addi	a5,a5,-96 # 8000b9e0 <_ZTV14PeriodicThread+0x10>
    80002a48:	00f53023          	sd	a5,0(a0)
    80002a4c:	00000097          	auipc	ra,0x0
    80002a50:	ae8080e7          	jalr	-1304(ra) # 80002534 <_ZdlPv>
    80002a54:	00813083          	ld	ra,8(sp)
    80002a58:	00013403          	ld	s0,0(sp)
    80002a5c:	01010113          	addi	sp,sp,16
    80002a60:	00008067          	ret

0000000080002a64 <_ZN15MemoryAllocatorC1Ev>:
#include "../h/MemoryAllocator.hpp"

MemoryAllocator::MemoryAllocator() : freeHead(nullptr), initialized(false) {}
    80002a64:	ff010113          	addi	sp,sp,-16
    80002a68:	00813423          	sd	s0,8(sp)
    80002a6c:	01010413          	addi	s0,sp,16
    80002a70:	00053023          	sd	zero,0(a0)
    80002a74:	00050423          	sb	zero,8(a0)
    80002a78:	00813403          	ld	s0,8(sp)
    80002a7c:	01010113          	addi	sp,sp,16
    80002a80:	00008067          	ret

0000000080002a84 <_Z41__static_initialization_and_destruction_0ii>:
            block->next->prev = block;
        }
        nextBlock->next = nullptr;
        nextBlock->prev = nullptr;
    }
    80002a84:	00100793          	li	a5,1
    80002a88:	00f50463          	beq	a0,a5,80002a90 <_Z41__static_initialization_and_destruction_0ii+0xc>
    80002a8c:	00008067          	ret
    80002a90:	000107b7          	lui	a5,0x10
    80002a94:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002a98:	fef59ae3          	bne	a1,a5,80002a8c <_Z41__static_initialization_and_destruction_0ii+0x8>
    80002a9c:	ff010113          	addi	sp,sp,-16
    80002aa0:	00113423          	sd	ra,8(sp)
    80002aa4:	00813023          	sd	s0,0(sp)
    80002aa8:	01010413          	addi	s0,sp,16
MemoryAllocator MemoryAllocator::instance;
    80002aac:	00009517          	auipc	a0,0x9
    80002ab0:	1f450513          	addi	a0,a0,500 # 8000bca0 <_ZN15MemoryAllocator8instanceE>
    80002ab4:	00000097          	auipc	ra,0x0
    80002ab8:	fb0080e7          	jalr	-80(ra) # 80002a64 <_ZN15MemoryAllocatorC1Ev>
    80002abc:	00813083          	ld	ra,8(sp)
    80002ac0:	00013403          	ld	s0,0(sp)
    80002ac4:	01010113          	addi	sp,sp,16
    80002ac8:	00008067          	ret

0000000080002acc <_ZN15MemoryAllocator11getInstanceEv>:
MemoryAllocator& MemoryAllocator::getInstance() {
    80002acc:	ff010113          	addi	sp,sp,-16
    80002ad0:	00813423          	sd	s0,8(sp)
    80002ad4:	01010413          	addi	s0,sp,16
}
    80002ad8:	00009517          	auipc	a0,0x9
    80002adc:	1c850513          	addi	a0,a0,456 # 8000bca0 <_ZN15MemoryAllocator8instanceE>
    80002ae0:	00813403          	ld	s0,8(sp)
    80002ae4:	01010113          	addi	sp,sp,16
    80002ae8:	00008067          	ret

0000000080002aec <_ZN15MemoryAllocator4initEv>:
void MemoryAllocator::init() {
    80002aec:	ff010113          	addi	sp,sp,-16
    80002af0:	00813423          	sd	s0,8(sp)
    80002af4:	01010413          	addi	s0,sp,16
    if (initialized) return;
    80002af8:	00854783          	lbu	a5,8(a0)
    80002afc:	04079263          	bnez	a5,80002b40 <_ZN15MemoryAllocator4initEv+0x54>
    uint64 heapStart = (uint64) HEAP_START_ADDR;
    80002b00:	00009797          	auipc	a5,0x9
    80002b04:	1087b783          	ld	a5,264(a5) # 8000bc08 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002b08:	0007b703          	ld	a4,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002b0c:	00009797          	auipc	a5,0x9
    80002b10:	11c7b783          	ld	a5,284(a5) # 8000bc28 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002b14:	0007b783          	ld	a5,0(a5)
    size_t heapSize = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002b18:	40e787b3          	sub	a5,a5,a4
    80002b1c:	0067d793          	srli	a5,a5,0x6
    freeHead = (FreeBlock*) heapStart;
    80002b20:	00e53023          	sd	a4,0(a0)
    freeHead->size = heapSize;
    80002b24:	00f73023          	sd	a5,0(a4)
    freeHead->next = nullptr;
    80002b28:	00053783          	ld	a5,0(a0)
    80002b2c:	0007b423          	sd	zero,8(a5)
    freeHead->prev = nullptr;
    80002b30:	00053783          	ld	a5,0(a0)
    80002b34:	0007b823          	sd	zero,16(a5)
    initialized = true;
    80002b38:	00100793          	li	a5,1
    80002b3c:	00f50423          	sb	a5,8(a0)
}
    80002b40:	00813403          	ld	s0,8(sp)
    80002b44:	01010113          	addi	sp,sp,16
    80002b48:	00008067          	ret

0000000080002b4c <_ZN15MemoryAllocator6mallocEm>:
void* MemoryAllocator::malloc(size_t numBlocks) {
    80002b4c:	fe010113          	addi	sp,sp,-32
    80002b50:	00113c23          	sd	ra,24(sp)
    80002b54:	00813823          	sd	s0,16(sp)
    80002b58:	00913423          	sd	s1,8(sp)
    80002b5c:	01213023          	sd	s2,0(sp)
    80002b60:	02010413          	addi	s0,sp,32
    80002b64:	00050913          	mv	s2,a0
    80002b68:	00058493          	mv	s1,a1
    init();
    80002b6c:	00000097          	auipc	ra,0x0
    80002b70:	f80080e7          	jalr	-128(ra) # 80002aec <_ZN15MemoryAllocator4initEv>
    if (numBlocks == 0) return nullptr;
    80002b74:	0c048863          	beqz	s1,80002c44 <_ZN15MemoryAllocator6mallocEm+0xf8>
    size_t neededBlocks = numBlocks + 1;
    80002b78:	00148593          	addi	a1,s1,1
    FreeBlock* current = freeHead;
    80002b7c:	00093503          	ld	a0,0(s2)
    while(current != nullptr && current->size < neededBlocks){
    80002b80:	00050a63          	beqz	a0,80002b94 <_ZN15MemoryAllocator6mallocEm+0x48>
    80002b84:	00053783          	ld	a5,0(a0)
    80002b88:	00b7f663          	bgeu	a5,a1,80002b94 <_ZN15MemoryAllocator6mallocEm+0x48>
        current = current->next;
    80002b8c:	00853503          	ld	a0,8(a0)
    while(current != nullptr && current->size < neededBlocks){
    80002b90:	ff1ff06f          	j	80002b80 <_ZN15MemoryAllocator6mallocEm+0x34>
    if (current == nullptr){
    80002b94:	04050063          	beqz	a0,80002bd4 <_ZN15MemoryAllocator6mallocEm+0x88>
    size_t remainingBlocks = current->size - neededBlocks;
    80002b98:	00053783          	ld	a5,0(a0)
    80002b9c:	40b787b3          	sub	a5,a5,a1
    if (remainingBlocks >= 2){
    80002ba0:	00100713          	li	a4,1
    80002ba4:	04f76463          	bltu	a4,a5,80002bec <_ZN15MemoryAllocator6mallocEm+0xa0>
    if (current->prev != nullptr){
    80002ba8:	01053783          	ld	a5,16(a0)
    80002bac:	08078663          	beqz	a5,80002c38 <_ZN15MemoryAllocator6mallocEm+0xec>
        current->prev->next = current->next;
    80002bb0:	00853703          	ld	a4,8(a0)
    80002bb4:	00e7b423          	sd	a4,8(a5)
    if (current->next != nullptr){
    80002bb8:	00853783          	ld	a5,8(a0)
    80002bbc:	00078663          	beqz	a5,80002bc8 <_ZN15MemoryAllocator6mallocEm+0x7c>
        current->next->prev = current->prev;
    80002bc0:	01053703          	ld	a4,16(a0)
    80002bc4:	00e7b823          	sd	a4,16(a5)
    current->next = nullptr;
    80002bc8:	00053423          	sd	zero,8(a0)
    current->prev = nullptr;
    80002bcc:	00053823          	sd	zero,16(a0)
    return (void*) ((char*) current +MEM_BLOCK_SIZE);
    80002bd0:	04050513          	addi	a0,a0,64
}
    80002bd4:	01813083          	ld	ra,24(sp)
    80002bd8:	01013403          	ld	s0,16(sp)
    80002bdc:	00813483          	ld	s1,8(sp)
    80002be0:	00013903          	ld	s2,0(sp)
    80002be4:	02010113          	addi	sp,sp,32
    80002be8:	00008067          	ret
        FreeBlock* newFree = (FreeBlock*) ((char*) current + neededBlocks * MEM_BLOCK_SIZE);
    80002bec:	00659713          	slli	a4,a1,0x6
    80002bf0:	00e50733          	add	a4,a0,a4
        newFree->size = remainingBlocks;
    80002bf4:	00f73023          	sd	a5,0(a4)
        newFree->next = current->next;
    80002bf8:	00853783          	ld	a5,8(a0)
    80002bfc:	00f73423          	sd	a5,8(a4)
        newFree->prev = current->prev;
    80002c00:	01053783          	ld	a5,16(a0)
    80002c04:	00f73823          	sd	a5,16(a4)
        if (current->prev != nullptr){
    80002c08:	02078463          	beqz	a5,80002c30 <_ZN15MemoryAllocator6mallocEm+0xe4>
            current->prev->next = newFree;
    80002c0c:	00e7b423          	sd	a4,8(a5)
        if (current->next != nullptr){
    80002c10:	00853783          	ld	a5,8(a0)
    80002c14:	00078463          	beqz	a5,80002c1c <_ZN15MemoryAllocator6mallocEm+0xd0>
            current->next->prev = newFree;
    80002c18:	00e7b823          	sd	a4,16(a5)
        current->size = neededBlocks;
    80002c1c:	00b53023          	sd	a1,0(a0)
        current->next = nullptr;
    80002c20:	00053423          	sd	zero,8(a0)
        current->prev = nullptr;
    80002c24:	00053823          	sd	zero,16(a0)
        return (void*) ((char*) current + MEM_BLOCK_SIZE);
    80002c28:	04050513          	addi	a0,a0,64
    80002c2c:	fa9ff06f          	j	80002bd4 <_ZN15MemoryAllocator6mallocEm+0x88>
            freeHead = newFree;
    80002c30:	00e93023          	sd	a4,0(s2)
    80002c34:	fddff06f          	j	80002c10 <_ZN15MemoryAllocator6mallocEm+0xc4>
        freeHead = current->next;
    80002c38:	00853783          	ld	a5,8(a0)
    80002c3c:	00f93023          	sd	a5,0(s2)
    80002c40:	f79ff06f          	j	80002bb8 <_ZN15MemoryAllocator6mallocEm+0x6c>
    if (numBlocks == 0) return nullptr;
    80002c44:	00000513          	li	a0,0
    80002c48:	f8dff06f          	j	80002bd4 <_ZN15MemoryAllocator6mallocEm+0x88>

0000000080002c4c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>:
void MemoryAllocator::tryToJoin(FreeBlock *block) {
    80002c4c:	ff010113          	addi	sp,sp,-16
    80002c50:	00813423          	sd	s0,8(sp)
    80002c54:	01010413          	addi	s0,sp,16
    if (block == nullptr || block->next == nullptr) return;
    80002c58:	00058e63          	beqz	a1,80002c74 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    80002c5c:	0085b783          	ld	a5,8(a1)
    80002c60:	00078a63          	beqz	a5,80002c74 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    char* endOfBlock = (char*) block + block->size * MEM_BLOCK_SIZE;
    80002c64:	0005b683          	ld	a3,0(a1)
    80002c68:	00669713          	slli	a4,a3,0x6
    80002c6c:	00e58733          	add	a4,a1,a4
    if (endOfBlock == (char*) block->next){
    80002c70:	00e78863          	beq	a5,a4,80002c80 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x34>
    80002c74:	00813403          	ld	s0,8(sp)
    80002c78:	01010113          	addi	sp,sp,16
    80002c7c:	00008067          	ret
        block->size += nextBlock->size;
    80002c80:	0007b703          	ld	a4,0(a5)
    80002c84:	00e686b3          	add	a3,a3,a4
    80002c88:	00d5b023          	sd	a3,0(a1)
        block->next = nextBlock->next;
    80002c8c:	0087b703          	ld	a4,8(a5)
    80002c90:	00e5b423          	sd	a4,8(a1)
        if (block->next != nullptr){
    80002c94:	00070463          	beqz	a4,80002c9c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x50>
            block->next->prev = block;
    80002c98:	00b73823          	sd	a1,16(a4)
        nextBlock->next = nullptr;
    80002c9c:	0007b423          	sd	zero,8(a5)
        nextBlock->prev = nullptr;
    80002ca0:	0007b823          	sd	zero,16(a5)
    80002ca4:	fd1ff06f          	j	80002c74 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>

0000000080002ca8 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void* ptr){
    80002ca8:	fd010113          	addi	sp,sp,-48
    80002cac:	02113423          	sd	ra,40(sp)
    80002cb0:	02813023          	sd	s0,32(sp)
    80002cb4:	00913c23          	sd	s1,24(sp)
    80002cb8:	01213823          	sd	s2,16(sp)
    80002cbc:	01313423          	sd	s3,8(sp)
    80002cc0:	03010413          	addi	s0,sp,48
    80002cc4:	00050993          	mv	s3,a0
    80002cc8:	00058913          	mv	s2,a1
    init();
    80002ccc:	00000097          	auipc	ra,0x0
    80002cd0:	e20080e7          	jalr	-480(ra) # 80002aec <_ZN15MemoryAllocator4initEv>
    if (ptr == nullptr) return -1;
    80002cd4:	0e090863          	beqz	s2,80002dc4 <_ZN15MemoryAllocator4freeEPv+0x11c>
    uint64 heapStart = (uint64)HEAP_START_ADDR;
    80002cd8:	00009797          	auipc	a5,0x9
    80002cdc:	f307b783          	ld	a5,-208(a5) # 8000bc08 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002ce0:	0007b683          	ld	a3,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002ce4:	00009797          	auipc	a5,0x9
    80002ce8:	f447b783          	ld	a5,-188(a5) # 8000bc28 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002cec:	0007b603          	ld	a2,0(a5)
    if (ptrAddr < heapStart + MEM_BLOCK_SIZE || ptrAddr >= heapEnd){
    80002cf0:	04068793          	addi	a5,a3,64
    80002cf4:	0cf96c63          	bltu	s2,a5,80002dcc <_ZN15MemoryAllocator4freeEPv+0x124>
    80002cf8:	0cc97e63          	bgeu	s2,a2,80002dd4 <_ZN15MemoryAllocator4freeEPv+0x12c>
    if ((ptrAddr - heapStart) % MEM_BLOCK_SIZE != 0){
    80002cfc:	40d907b3          	sub	a5,s2,a3
    80002d00:	03f7f793          	andi	a5,a5,63
    80002d04:	0c079c63          	bnez	a5,80002ddc <_ZN15MemoryAllocator4freeEPv+0x134>
    FreeBlock* block = (FreeBlock*) ((char*) ptr - MEM_BLOCK_SIZE);
    80002d08:	fc090593          	addi	a1,s2,-64
    if (block->size < 2){
    80002d0c:	fc093783          	ld	a5,-64(s2)
    80002d10:	00100713          	li	a4,1
    80002d14:	0cf77863          	bgeu	a4,a5,80002de4 <_ZN15MemoryAllocator4freeEPv+0x13c>
    if ((uint64) block < heapStart){
    80002d18:	00058713          	mv	a4,a1
    80002d1c:	0cd5e863          	bltu	a1,a3,80002dec <_ZN15MemoryAllocator4freeEPv+0x144>
    if ((uint64) block + block->size * MEM_BLOCK_SIZE > heapEnd){
    80002d20:	00679793          	slli	a5,a5,0x6
    80002d24:	00f586b3          	add	a3,a1,a5
    80002d28:	0cd66663          	bltu	a2,a3,80002df4 <_ZN15MemoryAllocator4freeEPv+0x14c>
    FreeBlock* current = freeHead;
    80002d2c:	0009b783          	ld	a5,0(s3)
    FreeBlock* prev = nullptr;
    80002d30:	00000493          	li	s1,0
    while (current != nullptr && (uint64) current < (uint64) block){
    80002d34:	00078a63          	beqz	a5,80002d48 <_ZN15MemoryAllocator4freeEPv+0xa0>
    80002d38:	00e7f863          	bgeu	a5,a4,80002d48 <_ZN15MemoryAllocator4freeEPv+0xa0>
        prev = current;
    80002d3c:	00078493          	mv	s1,a5
        current = current->next;
    80002d40:	0087b783          	ld	a5,8(a5)
    while (current != nullptr && (uint64) current < (uint64) block){
    80002d44:	ff1ff06f          	j	80002d34 <_ZN15MemoryAllocator4freeEPv+0x8c>
    if (prev != nullptr &&
    80002d48:	00048a63          	beqz	s1,80002d5c <_ZN15MemoryAllocator4freeEPv+0xb4>
        (uint64) prev + prev->size * MEM_BLOCK_SIZE > (uint64) block) {
    80002d4c:	0004b603          	ld	a2,0(s1)
    80002d50:	00661613          	slli	a2,a2,0x6
    80002d54:	00c48633          	add	a2,s1,a2
    if (prev != nullptr &&
    80002d58:	0ac76263          	bltu	a4,a2,80002dfc <_ZN15MemoryAllocator4freeEPv+0x154>
    if (current!= nullptr && (uint64)block + block->size * MEM_BLOCK_SIZE > (uint64) current){
    80002d5c:	00078463          	beqz	a5,80002d64 <_ZN15MemoryAllocator4freeEPv+0xbc>
    80002d60:	0ad7e263          	bltu	a5,a3,80002e04 <_ZN15MemoryAllocator4freeEPv+0x15c>
    block->prev = prev;
    80002d64:	fc993823          	sd	s1,-48(s2)
    block->next = current;
    80002d68:	fcf93423          	sd	a5,-56(s2)
    if (prev != nullptr){
    80002d6c:	04048863          	beqz	s1,80002dbc <_ZN15MemoryAllocator4freeEPv+0x114>
        prev->next = block;
    80002d70:	00b4b423          	sd	a1,8(s1)
    if (current != nullptr){
    80002d74:	00078463          	beqz	a5,80002d7c <_ZN15MemoryAllocator4freeEPv+0xd4>
        current->prev = block;
    80002d78:	00b7b823          	sd	a1,16(a5)
    tryToJoin(block);
    80002d7c:	00098513          	mv	a0,s3
    80002d80:	00000097          	auipc	ra,0x0
    80002d84:	ecc080e7          	jalr	-308(ra) # 80002c4c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    if (prev != nullptr){
    80002d88:	08048263          	beqz	s1,80002e0c <_ZN15MemoryAllocator4freeEPv+0x164>
        tryToJoin(prev);
    80002d8c:	00048593          	mv	a1,s1
    80002d90:	00098513          	mv	a0,s3
    80002d94:	00000097          	auipc	ra,0x0
    80002d98:	eb8080e7          	jalr	-328(ra) # 80002c4c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    return 0;
    80002d9c:	00000513          	li	a0,0
}
    80002da0:	02813083          	ld	ra,40(sp)
    80002da4:	02013403          	ld	s0,32(sp)
    80002da8:	01813483          	ld	s1,24(sp)
    80002dac:	01013903          	ld	s2,16(sp)
    80002db0:	00813983          	ld	s3,8(sp)
    80002db4:	03010113          	addi	sp,sp,48
    80002db8:	00008067          	ret
        freeHead = block;
    80002dbc:	00b9b023          	sd	a1,0(s3)
    80002dc0:	fb5ff06f          	j	80002d74 <_ZN15MemoryAllocator4freeEPv+0xcc>
    if (ptr == nullptr) return -1;
    80002dc4:	fff00513          	li	a0,-1
    80002dc8:	fd9ff06f          	j	80002da0 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002dcc:	fff00513          	li	a0,-1
    80002dd0:	fd1ff06f          	j	80002da0 <_ZN15MemoryAllocator4freeEPv+0xf8>
    80002dd4:	fff00513          	li	a0,-1
    80002dd8:	fc9ff06f          	j	80002da0 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002ddc:	fff00513          	li	a0,-1
    80002de0:	fc1ff06f          	j	80002da0 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002de4:	fff00513          	li	a0,-1
    80002de8:	fb9ff06f          	j	80002da0 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002dec:	fff00513          	li	a0,-1
    80002df0:	fb1ff06f          	j	80002da0 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002df4:	fff00513          	li	a0,-1
    80002df8:	fa9ff06f          	j	80002da0 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002dfc:	fff00513          	li	a0,-1
    80002e00:	fa1ff06f          	j	80002da0 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002e04:	fff00513          	li	a0,-1
    80002e08:	f99ff06f          	j	80002da0 <_ZN15MemoryAllocator4freeEPv+0xf8>
    return 0;
    80002e0c:	00000513          	li	a0,0
    80002e10:	f91ff06f          	j	80002da0 <_ZN15MemoryAllocator4freeEPv+0xf8>

0000000080002e14 <_GLOBAL__sub_I__ZN15MemoryAllocatorC2Ev>:
    80002e14:	ff010113          	addi	sp,sp,-16
    80002e18:	00113423          	sd	ra,8(sp)
    80002e1c:	00813023          	sd	s0,0(sp)
    80002e20:	01010413          	addi	s0,sp,16
    80002e24:	000105b7          	lui	a1,0x10
    80002e28:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002e2c:	00100513          	li	a0,1
    80002e30:	00000097          	auipc	ra,0x0
    80002e34:	c54080e7          	jalr	-940(ra) # 80002a84 <_Z41__static_initialization_and_destruction_0ii>
    80002e38:	00813083          	ld	ra,8(sp)
    80002e3c:	00013403          	ld	s0,0(sp)
    80002e40:	01010113          	addi	sp,sp,16
    80002e44:	00008067          	ret

0000000080002e48 <_ZL16resourceBusyWaitv>:
    char name;
    int need;
    int work;
};

static void resourceBusyWait() {
    80002e48:	fe010113          	addi	sp,sp,-32
    80002e4c:	00813c23          	sd	s0,24(sp)
    80002e50:	02010413          	addi	s0,sp,32
    volatile int counter = 0;
    80002e54:	fe042623          	sw	zero,-20(s0)

    for (int i = 0; i < 3000; i++) {
    80002e58:	00000713          	li	a4,0
    80002e5c:	000017b7          	lui	a5,0x1
    80002e60:	bb778793          	addi	a5,a5,-1097 # bb7 <_entry-0x7ffff449>
    80002e64:	00e7cc63          	blt	a5,a4,80002e7c <_ZL16resourceBusyWaitv+0x34>
        counter++;
    80002e68:	fec42783          	lw	a5,-20(s0)
    80002e6c:	0017879b          	addiw	a5,a5,1
    80002e70:	fef42623          	sw	a5,-20(s0)
    for (int i = 0; i < 3000; i++) {
    80002e74:	0017071b          	addiw	a4,a4,1
    80002e78:	fe5ff06f          	j	80002e5c <_ZL16resourceBusyWaitv+0x14>
    }
}
    80002e7c:	01813403          	ld	s0,24(sp)
    80002e80:	02010113          	addi	sp,sp,32
    80002e84:	00008067          	ret

0000000080002e88 <_ZN8ResourceC1Ei>:
Resource::Resource(int N) {
    80002e88:	ff010113          	addi	sp,sp,-16
    80002e8c:	00113423          	sd	ra,8(sp)
    80002e90:	00813023          	sd	s0,0(sp)
    80002e94:	01010413          	addi	s0,sp,16
    available = N;
    80002e98:	00b52023          	sw	a1,0(a0)
    head = nullptr;
    80002e9c:	00053823          	sd	zero,16(a0)
    tail = nullptr;
    80002ea0:	00053c23          	sd	zero,24(a0)
    sem_open(&mutex,1);
    80002ea4:	00100593          	li	a1,1
    80002ea8:	00850513          	addi	a0,a0,8
    80002eac:	ffffe097          	auipc	ra,0xffffe
    80002eb0:	518080e7          	jalr	1304(ra) # 800013c4 <_Z8sem_openPP4_semj>
}
    80002eb4:	00813083          	ld	ra,8(sp)
    80002eb8:	00013403          	ld	s0,0(sp)
    80002ebc:	01010113          	addi	sp,sp,16
    80002ec0:	00008067          	ret

0000000080002ec4 <_ZN8Resource12tryToUnblockEv>:
void Resource::tryToUnblock() {
    80002ec4:	fe010113          	addi	sp,sp,-32
    80002ec8:	00113c23          	sd	ra,24(sp)
    80002ecc:	00813823          	sd	s0,16(sp)
    80002ed0:	00913423          	sd	s1,8(sp)
    80002ed4:	02010413          	addi	s0,sp,32
    80002ed8:	00050493          	mv	s1,a0
    80002edc:	0180006f          	j	80002ef4 <_ZN8Resource12tryToUnblockEv+0x30>
            tail = nullptr;
    80002ee0:	0004bc23          	sd	zero,24(s1)
        req->next = nullptr;
    80002ee4:	0007b823          	sd	zero,16(a5)
        sem_signal(req->ready);
    80002ee8:	0087b503          	ld	a0,8(a5)
    80002eec:	ffffe097          	auipc	ra,0xffffe
    80002ef0:	59c080e7          	jalr	1436(ra) # 80001488 <_Z10sem_signalP4_sem>
    while (head!= nullptr && available >= head->num) {
    80002ef4:	0104b783          	ld	a5,16(s1)
    80002ef8:	02078463          	beqz	a5,80002f20 <_ZN8Resource12tryToUnblockEv+0x5c>
    80002efc:	0004a703          	lw	a4,0(s1)
    80002f00:	0007a683          	lw	a3,0(a5)
    80002f04:	00d74e63          	blt	a4,a3,80002f20 <_ZN8Resource12tryToUnblockEv+0x5c>
        available -= req->num;
    80002f08:	40d7073b          	subw	a4,a4,a3
    80002f0c:	00e4a023          	sw	a4,0(s1)
        head = head->next;
    80002f10:	0107b703          	ld	a4,16(a5)
    80002f14:	00e4b823          	sd	a4,16(s1)
        if (head == nullptr) {
    80002f18:	fc0716e3          	bnez	a4,80002ee4 <_ZN8Resource12tryToUnblockEv+0x20>
    80002f1c:	fc5ff06f          	j	80002ee0 <_ZN8Resource12tryToUnblockEv+0x1c>
}
    80002f20:	01813083          	ld	ra,24(sp)
    80002f24:	01013403          	ld	s0,16(sp)
    80002f28:	00813483          	ld	s1,8(sp)
    80002f2c:	02010113          	addi	sp,sp,32
    80002f30:	00008067          	ret

0000000080002f34 <_ZN8Resource4takeEi>:
    if (num <= 0) {
    80002f34:	1cb05263          	blez	a1,800030f8 <_ZN8Resource4takeEi+0x1c4>
void Resource::take(int num) {
    80002f38:	fc010113          	addi	sp,sp,-64
    80002f3c:	02113c23          	sd	ra,56(sp)
    80002f40:	02813823          	sd	s0,48(sp)
    80002f44:	02913423          	sd	s1,40(sp)
    80002f48:	03213023          	sd	s2,32(sp)
    80002f4c:	04010413          	addi	s0,sp,64
    80002f50:	00050493          	mv	s1,a0
    80002f54:	00058913          	mv	s2,a1
    sem_wait(mutex);
    80002f58:	00853503          	ld	a0,8(a0)
    80002f5c:	ffffe097          	auipc	ra,0xffffe
    80002f60:	4ec080e7          	jalr	1260(ra) # 80001448 <_Z8sem_waitP4_sem>
    if (head == nullptr && available >= num) {
    80002f64:	0104b783          	ld	a5,16(s1)
    80002f68:	10078463          	beqz	a5,80003070 <_ZN8Resource4takeEi+0x13c>
    req.num = num;
    80002f6c:	fd242423          	sw	s2,-56(s0)
    req.next = nullptr;
    80002f70:	fc043c23          	sd	zero,-40(s0)
    sem_open(&req.ready, 0);
    80002f74:	00000593          	li	a1,0
    80002f78:	fd040513          	addi	a0,s0,-48
    80002f7c:	ffffe097          	auipc	ra,0xffffe
    80002f80:	448080e7          	jalr	1096(ra) # 800013c4 <_Z8sem_openPP4_semj>
    if (head == nullptr) {
    80002f84:	0104b783          	ld	a5,16(s1)
    80002f88:	16078063          	beqz	a5,800030e8 <_ZN8Resource4takeEi+0x1b4>
        tail->next = &req;
    80002f8c:	0184b703          	ld	a4,24(s1)
    80002f90:	fc840793          	addi	a5,s0,-56
    80002f94:	00f73823          	sd	a5,16(a4)
        tail = &req;
    80002f98:	00f4bc23          	sd	a5,24(s1)
    printString("Resource take: thread waits for ");
    80002f9c:	00006517          	auipc	a0,0x6
    80002fa0:	42c50513          	addi	a0,a0,1068 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80002fa4:	00003097          	auipc	ra,0x3
    80002fa8:	9e4080e7          	jalr	-1564(ra) # 80005988 <_Z11printStringPKc>
    printInt(num);
    80002fac:	00000613          	li	a2,0
    80002fb0:	00a00593          	li	a1,10
    80002fb4:	00090513          	mv	a0,s2
    80002fb8:	00003097          	auipc	ra,0x3
    80002fbc:	b80080e7          	jalr	-1152(ra) # 80005b38 <_Z8printIntiii>
    printString(" instances, available = ");
    80002fc0:	00006517          	auipc	a0,0x6
    80002fc4:	43050513          	addi	a0,a0,1072 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80002fc8:	00003097          	auipc	ra,0x3
    80002fcc:	9c0080e7          	jalr	-1600(ra) # 80005988 <_Z11printStringPKc>
    printInt(available);
    80002fd0:	00000613          	li	a2,0
    80002fd4:	00a00593          	li	a1,10
    80002fd8:	0004a503          	lw	a0,0(s1)
    80002fdc:	00003097          	auipc	ra,0x3
    80002fe0:	b5c080e7          	jalr	-1188(ra) # 80005b38 <_Z8printIntiii>
    printString("\n");
    80002fe4:	00006517          	auipc	a0,0x6
    80002fe8:	2d450513          	addi	a0,a0,724 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80002fec:	00003097          	auipc	ra,0x3
    80002ff0:	99c080e7          	jalr	-1636(ra) # 80005988 <_Z11printStringPKc>
    tryToUnblock();
    80002ff4:	00048513          	mv	a0,s1
    80002ff8:	00000097          	auipc	ra,0x0
    80002ffc:	ecc080e7          	jalr	-308(ra) # 80002ec4 <_ZN8Resource12tryToUnblockEv>
    sem_signal(mutex);
    80003000:	0084b503          	ld	a0,8(s1)
    80003004:	ffffe097          	auipc	ra,0xffffe
    80003008:	484080e7          	jalr	1156(ra) # 80001488 <_Z10sem_signalP4_sem>
    sem_wait(req.ready);
    8000300c:	fd043503          	ld	a0,-48(s0)
    80003010:	ffffe097          	auipc	ra,0xffffe
    80003014:	438080e7          	jalr	1080(ra) # 80001448 <_Z8sem_waitP4_sem>
    sem_close(req.ready);
    80003018:	fd043503          	ld	a0,-48(s0)
    8000301c:	ffffe097          	auipc	ra,0xffffe
    80003020:	3ec080e7          	jalr	1004(ra) # 80001408 <_Z9sem_closeP4_sem>
    printString("Resource take: thread got ");
    80003024:	00006517          	auipc	a0,0x6
    80003028:	3ec50513          	addi	a0,a0,1004 # 80009410 <CONSOLE_STATUS+0x400>
    8000302c:	00003097          	auipc	ra,0x3
    80003030:	95c080e7          	jalr	-1700(ra) # 80005988 <_Z11printStringPKc>
    printInt(num);
    80003034:	00000613          	li	a2,0
    80003038:	00a00593          	li	a1,10
    8000303c:	00090513          	mv	a0,s2
    80003040:	00003097          	auipc	ra,0x3
    80003044:	af8080e7          	jalr	-1288(ra) # 80005b38 <_Z8printIntiii>
    printString(" instances after waiting\n");
    80003048:	00006517          	auipc	a0,0x6
    8000304c:	3e850513          	addi	a0,a0,1000 # 80009430 <CONSOLE_STATUS+0x420>
    80003050:	00003097          	auipc	ra,0x3
    80003054:	938080e7          	jalr	-1736(ra) # 80005988 <_Z11printStringPKc>
}
    80003058:	03813083          	ld	ra,56(sp)
    8000305c:	03013403          	ld	s0,48(sp)
    80003060:	02813483          	ld	s1,40(sp)
    80003064:	02013903          	ld	s2,32(sp)
    80003068:	04010113          	addi	sp,sp,64
    8000306c:	00008067          	ret
    if (head == nullptr && available >= num) {
    80003070:	0004a783          	lw	a5,0(s1)
    80003074:	ef27cce3          	blt	a5,s2,80002f6c <_ZN8Resource4takeEi+0x38>
        available-=num;
    80003078:	412787bb          	subw	a5,a5,s2
    8000307c:	00f4a023          	sw	a5,0(s1)
        printString("Resource take: thread took ");
    80003080:	00006517          	auipc	a0,0x6
    80003084:	30850513          	addi	a0,a0,776 # 80009388 <CONSOLE_STATUS+0x378>
    80003088:	00003097          	auipc	ra,0x3
    8000308c:	900080e7          	jalr	-1792(ra) # 80005988 <_Z11printStringPKc>
        printInt(num);
    80003090:	00000613          	li	a2,0
    80003094:	00a00593          	li	a1,10
    80003098:	00090513          	mv	a0,s2
    8000309c:	00003097          	auipc	ra,0x3
    800030a0:	a9c080e7          	jalr	-1380(ra) # 80005b38 <_Z8printIntiii>
        printString(" instances, remaining = ");
    800030a4:	00006517          	auipc	a0,0x6
    800030a8:	30450513          	addi	a0,a0,772 # 800093a8 <CONSOLE_STATUS+0x398>
    800030ac:	00003097          	auipc	ra,0x3
    800030b0:	8dc080e7          	jalr	-1828(ra) # 80005988 <_Z11printStringPKc>
        printInt(available);
    800030b4:	00000613          	li	a2,0
    800030b8:	00a00593          	li	a1,10
    800030bc:	0004a503          	lw	a0,0(s1)
    800030c0:	00003097          	auipc	ra,0x3
    800030c4:	a78080e7          	jalr	-1416(ra) # 80005b38 <_Z8printIntiii>
        printString("\n");
    800030c8:	00006517          	auipc	a0,0x6
    800030cc:	1f050513          	addi	a0,a0,496 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800030d0:	00003097          	auipc	ra,0x3
    800030d4:	8b8080e7          	jalr	-1864(ra) # 80005988 <_Z11printStringPKc>
        sem_signal(mutex);
    800030d8:	0084b503          	ld	a0,8(s1)
    800030dc:	ffffe097          	auipc	ra,0xffffe
    800030e0:	3ac080e7          	jalr	940(ra) # 80001488 <_Z10sem_signalP4_sem>
        return;
    800030e4:	f75ff06f          	j	80003058 <_ZN8Resource4takeEi+0x124>
        head = &req;
    800030e8:	fc840793          	addi	a5,s0,-56
    800030ec:	00f4b823          	sd	a5,16(s1)
        tail = &req;
    800030f0:	00f4bc23          	sd	a5,24(s1)
    800030f4:	ea9ff06f          	j	80002f9c <_ZN8Resource4takeEi+0x68>
    800030f8:	00008067          	ret

00000000800030fc <_ZN8Resource9give_backEi>:
int Resource::give_back(int num) {
    800030fc:	fe010113          	addi	sp,sp,-32
    80003100:	00113c23          	sd	ra,24(sp)
    80003104:	00813823          	sd	s0,16(sp)
    80003108:	00913423          	sd	s1,8(sp)
    8000310c:	01213023          	sd	s2,0(sp)
    80003110:	02010413          	addi	s0,sp,32
    80003114:	00050493          	mv	s1,a0
    if (num <= 0) {
    80003118:	0ab05863          	blez	a1,800031c8 <_ZN8Resource9give_backEi+0xcc>
    8000311c:	00058913          	mv	s2,a1
    sem_wait(mutex);
    80003120:	00853503          	ld	a0,8(a0)
    80003124:	ffffe097          	auipc	ra,0xffffe
    80003128:	324080e7          	jalr	804(ra) # 80001448 <_Z8sem_waitP4_sem>
    available += num;
    8000312c:	0004a783          	lw	a5,0(s1)
    80003130:	012787bb          	addw	a5,a5,s2
    80003134:	00f4a023          	sw	a5,0(s1)
    printString("Resource give_back: thread returned ");
    80003138:	00006517          	auipc	a0,0x6
    8000313c:	31850513          	addi	a0,a0,792 # 80009450 <CONSOLE_STATUS+0x440>
    80003140:	00003097          	auipc	ra,0x3
    80003144:	848080e7          	jalr	-1976(ra) # 80005988 <_Z11printStringPKc>
    printInt(num);
    80003148:	00000613          	li	a2,0
    8000314c:	00a00593          	li	a1,10
    80003150:	00090513          	mv	a0,s2
    80003154:	00003097          	auipc	ra,0x3
    80003158:	9e4080e7          	jalr	-1564(ra) # 80005b38 <_Z8printIntiii>
    printString(" instances, available = ");
    8000315c:	00006517          	auipc	a0,0x6
    80003160:	29450513          	addi	a0,a0,660 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80003164:	00003097          	auipc	ra,0x3
    80003168:	824080e7          	jalr	-2012(ra) # 80005988 <_Z11printStringPKc>
    printInt(available);
    8000316c:	00000613          	li	a2,0
    80003170:	00a00593          	li	a1,10
    80003174:	0004a503          	lw	a0,0(s1)
    80003178:	00003097          	auipc	ra,0x3
    8000317c:	9c0080e7          	jalr	-1600(ra) # 80005b38 <_Z8printIntiii>
    printString("\n");
    80003180:	00006517          	auipc	a0,0x6
    80003184:	13850513          	addi	a0,a0,312 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003188:	00003097          	auipc	ra,0x3
    8000318c:	800080e7          	jalr	-2048(ra) # 80005988 <_Z11printStringPKc>
    tryToUnblock();
    80003190:	00048513          	mv	a0,s1
    80003194:	00000097          	auipc	ra,0x0
    80003198:	d30080e7          	jalr	-720(ra) # 80002ec4 <_ZN8Resource12tryToUnblockEv>
    int ret = available;
    8000319c:	0004a903          	lw	s2,0(s1)
    sem_signal(mutex);
    800031a0:	0084b503          	ld	a0,8(s1)
    800031a4:	ffffe097          	auipc	ra,0xffffe
    800031a8:	2e4080e7          	jalr	740(ra) # 80001488 <_Z10sem_signalP4_sem>
}
    800031ac:	00090513          	mv	a0,s2
    800031b0:	01813083          	ld	ra,24(sp)
    800031b4:	01013403          	ld	s0,16(sp)
    800031b8:	00813483          	ld	s1,8(sp)
    800031bc:	00013903          	ld	s2,0(sp)
    800031c0:	02010113          	addi	sp,sp,32
    800031c4:	00008067          	ret
        return available;
    800031c8:	00052903          	lw	s2,0(a0)
    800031cc:	fe1ff06f          	j	800031ac <_ZN8Resource9give_backEi+0xb0>

00000000800031d0 <_ZL14resourceWorkerPv>:

static void resourceWorker(void* arg) {
    800031d0:	fe010113          	addi	sp,sp,-32
    800031d4:	00113c23          	sd	ra,24(sp)
    800031d8:	00813823          	sd	s0,16(sp)
    800031dc:	00913423          	sd	s1,8(sp)
    800031e0:	01213023          	sd	s2,0(sp)
    800031e4:	02010413          	addi	s0,sp,32
    800031e8:	00050493          	mv	s1,a0
    ResourceThreadArg* threadArg = (ResourceThreadArg*) arg;

    for (int i = 0; i < 3; i++) {
    800031ec:	00000913          	li	s2,0
    800031f0:	1a40006f          	j	80003394 <_ZL14resourceWorkerPv+0x1c4>
        printString("Thread ");
    800031f4:	00006517          	auipc	a0,0x6
    800031f8:	28450513          	addi	a0,a0,644 # 80009478 <CONSOLE_STATUS+0x468>
    800031fc:	00002097          	auipc	ra,0x2
    80003200:	78c080e7          	jalr	1932(ra) # 80005988 <_Z11printStringPKc>
        putc(threadArg->name);
    80003204:	0084c503          	lbu	a0,8(s1)
    80003208:	ffffe097          	auipc	ra,0xffffe
    8000320c:	3c8080e7          	jalr	968(ra) # 800015d0 <_Z4putcc>
        printString(" tries to take ");
    80003210:	00006517          	auipc	a0,0x6
    80003214:	27050513          	addi	a0,a0,624 # 80009480 <CONSOLE_STATUS+0x470>
    80003218:	00002097          	auipc	ra,0x2
    8000321c:	770080e7          	jalr	1904(ra) # 80005988 <_Z11printStringPKc>
        printInt(threadArg->need);
    80003220:	00000613          	li	a2,0
    80003224:	00a00593          	li	a1,10
    80003228:	00c4a503          	lw	a0,12(s1)
    8000322c:	00003097          	auipc	ra,0x3
    80003230:	90c080e7          	jalr	-1780(ra) # 80005b38 <_Z8printIntiii>
        printString(" resources, iteration ");
    80003234:	00006517          	auipc	a0,0x6
    80003238:	25c50513          	addi	a0,a0,604 # 80009490 <CONSOLE_STATUS+0x480>
    8000323c:	00002097          	auipc	ra,0x2
    80003240:	74c080e7          	jalr	1868(ra) # 80005988 <_Z11printStringPKc>
        printInt(i);
    80003244:	00000613          	li	a2,0
    80003248:	00a00593          	li	a1,10
    8000324c:	00090513          	mv	a0,s2
    80003250:	00003097          	auipc	ra,0x3
    80003254:	8e8080e7          	jalr	-1816(ra) # 80005b38 <_Z8printIntiii>
        printString("\n");
    80003258:	00006517          	auipc	a0,0x6
    8000325c:	06050513          	addi	a0,a0,96 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003260:	00002097          	auipc	ra,0x2
    80003264:	728080e7          	jalr	1832(ra) # 80005988 <_Z11printStringPKc>

        threadArg->resource->take(threadArg->need);
    80003268:	00c4a583          	lw	a1,12(s1)
    8000326c:	0004b503          	ld	a0,0(s1)
    80003270:	00000097          	auipc	ra,0x0
    80003274:	cc4080e7          	jalr	-828(ra) # 80002f34 <_ZN8Resource4takeEi>

        printString(">>> Thread ");
    80003278:	00006517          	auipc	a0,0x6
    8000327c:	23050513          	addi	a0,a0,560 # 800094a8 <CONSOLE_STATUS+0x498>
    80003280:	00002097          	auipc	ra,0x2
    80003284:	708080e7          	jalr	1800(ra) # 80005988 <_Z11printStringPKc>
        putc(threadArg->name);
    80003288:	0084c503          	lbu	a0,8(s1)
    8000328c:	ffffe097          	auipc	ra,0xffffe
    80003290:	344080e7          	jalr	836(ra) # 800015d0 <_Z4putcc>
        printString(" ENTERED with ");
    80003294:	00006517          	auipc	a0,0x6
    80003298:	22450513          	addi	a0,a0,548 # 800094b8 <CONSOLE_STATUS+0x4a8>
    8000329c:	00002097          	auipc	ra,0x2
    800032a0:	6ec080e7          	jalr	1772(ra) # 80005988 <_Z11printStringPKc>
        printInt(threadArg->need);
    800032a4:	00000613          	li	a2,0
    800032a8:	00a00593          	li	a1,10
    800032ac:	00c4a503          	lw	a0,12(s1)
    800032b0:	00003097          	auipc	ra,0x3
    800032b4:	888080e7          	jalr	-1912(ra) # 80005b38 <_Z8printIntiii>
        printString(" resources, iteration ");
    800032b8:	00006517          	auipc	a0,0x6
    800032bc:	1d850513          	addi	a0,a0,472 # 80009490 <CONSOLE_STATUS+0x480>
    800032c0:	00002097          	auipc	ra,0x2
    800032c4:	6c8080e7          	jalr	1736(ra) # 80005988 <_Z11printStringPKc>
        printInt(i);
    800032c8:	00000613          	li	a2,0
    800032cc:	00a00593          	li	a1,10
    800032d0:	00090513          	mv	a0,s2
    800032d4:	00003097          	auipc	ra,0x3
    800032d8:	864080e7          	jalr	-1948(ra) # 80005b38 <_Z8printIntiii>
        printString("\n");
    800032dc:	00006517          	auipc	a0,0x6
    800032e0:	fdc50513          	addi	a0,a0,-36 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800032e4:	00002097          	auipc	ra,0x2
    800032e8:	6a4080e7          	jalr	1700(ra) # 80005988 <_Z11printStringPKc>

        resourceBusyWait();
    800032ec:	00000097          	auipc	ra,0x0
    800032f0:	b5c080e7          	jalr	-1188(ra) # 80002e48 <_ZL16resourceBusyWaitv>

        thread_dispatch();
    800032f4:	ffffe097          	auipc	ra,0xffffe
    800032f8:	094080e7          	jalr	148(ra) # 80001388 <_Z15thread_dispatchv>

        resourceBusyWait();
    800032fc:	00000097          	auipc	ra,0x0
    80003300:	b4c080e7          	jalr	-1204(ra) # 80002e48 <_ZL16resourceBusyWaitv>

        printString("<<< Thread ");
    80003304:	00006517          	auipc	a0,0x6
    80003308:	1c450513          	addi	a0,a0,452 # 800094c8 <CONSOLE_STATUS+0x4b8>
    8000330c:	00002097          	auipc	ra,0x2
    80003310:	67c080e7          	jalr	1660(ra) # 80005988 <_Z11printStringPKc>
        putc(threadArg->name);
    80003314:	0084c503          	lbu	a0,8(s1)
    80003318:	ffffe097          	auipc	ra,0xffffe
    8000331c:	2b8080e7          	jalr	696(ra) # 800015d0 <_Z4putcc>
        printString(" EXITS and returns ");
    80003320:	00006517          	auipc	a0,0x6
    80003324:	1b850513          	addi	a0,a0,440 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80003328:	00002097          	auipc	ra,0x2
    8000332c:	660080e7          	jalr	1632(ra) # 80005988 <_Z11printStringPKc>
        printInt(threadArg->need);
    80003330:	00000613          	li	a2,0
    80003334:	00a00593          	li	a1,10
    80003338:	00c4a503          	lw	a0,12(s1)
    8000333c:	00002097          	auipc	ra,0x2
    80003340:	7fc080e7          	jalr	2044(ra) # 80005b38 <_Z8printIntiii>
        printString(" resources, iteration ");
    80003344:	00006517          	auipc	a0,0x6
    80003348:	14c50513          	addi	a0,a0,332 # 80009490 <CONSOLE_STATUS+0x480>
    8000334c:	00002097          	auipc	ra,0x2
    80003350:	63c080e7          	jalr	1596(ra) # 80005988 <_Z11printStringPKc>
        printInt(i);
    80003354:	00000613          	li	a2,0
    80003358:	00a00593          	li	a1,10
    8000335c:	00090513          	mv	a0,s2
    80003360:	00002097          	auipc	ra,0x2
    80003364:	7d8080e7          	jalr	2008(ra) # 80005b38 <_Z8printIntiii>
        printString("\n");
    80003368:	00006517          	auipc	a0,0x6
    8000336c:	f5050513          	addi	a0,a0,-176 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003370:	00002097          	auipc	ra,0x2
    80003374:	618080e7          	jalr	1560(ra) # 80005988 <_Z11printStringPKc>

        threadArg->resource->give_back(threadArg->need);
    80003378:	00c4a583          	lw	a1,12(s1)
    8000337c:	0004b503          	ld	a0,0(s1)
    80003380:	00000097          	auipc	ra,0x0
    80003384:	d7c080e7          	jalr	-644(ra) # 800030fc <_ZN8Resource9give_backEi>

        thread_dispatch();
    80003388:	ffffe097          	auipc	ra,0xffffe
    8000338c:	000080e7          	jalr	ra # 80001388 <_Z15thread_dispatchv>
    for (int i = 0; i < 3; i++) {
    80003390:	0019091b          	addiw	s2,s2,1
    80003394:	00200793          	li	a5,2
    80003398:	e527dee3          	bge	a5,s2,800031f4 <_ZL14resourceWorkerPv+0x24>
    }

    printString("Thread ");
    8000339c:	00006517          	auipc	a0,0x6
    800033a0:	0dc50513          	addi	a0,a0,220 # 80009478 <CONSOLE_STATUS+0x468>
    800033a4:	00002097          	auipc	ra,0x2
    800033a8:	5e4080e7          	jalr	1508(ra) # 80005988 <_Z11printStringPKc>
    putc(threadArg->name);
    800033ac:	0084c503          	lbu	a0,8(s1)
    800033b0:	ffffe097          	auipc	ra,0xffffe
    800033b4:	220080e7          	jalr	544(ra) # 800015d0 <_Z4putcc>
    printString(" finished\n");
    800033b8:	00006517          	auipc	a0,0x6
    800033bc:	13850513          	addi	a0,a0,312 # 800094f0 <CONSOLE_STATUS+0x4e0>
    800033c0:	00002097          	auipc	ra,0x2
    800033c4:	5c8080e7          	jalr	1480(ra) # 80005988 <_Z11printStringPKc>
}
    800033c8:	01813083          	ld	ra,24(sp)
    800033cc:	01013403          	ld	s0,16(sp)
    800033d0:	00813483          	ld	s1,8(sp)
    800033d4:	00013903          	ld	s2,0(sp)
    800033d8:	02010113          	addi	sp,sp,32
    800033dc:	00008067          	ret

00000000800033e0 <_Z12resourceTestv>:

void resourceTest() {
    800033e0:	f0010113          	addi	sp,sp,-256
    800033e4:	0e113c23          	sd	ra,248(sp)
    800033e8:	0e813823          	sd	s0,240(sp)
    800033ec:	0e913423          	sd	s1,232(sp)
    800033f0:	10010413          	addi	s0,sp,256
    printString("Resource test started\n");
    800033f4:	00006517          	auipc	a0,0x6
    800033f8:	10c50513          	addi	a0,a0,268 # 80009500 <CONSOLE_STATUS+0x4f0>
    800033fc:	00002097          	auipc	ra,0x2
    80003400:	58c080e7          	jalr	1420(ra) # 80005988 <_Z11printStringPKc>

    Resource resource(5);
    80003404:	00500593          	li	a1,5
    80003408:	fc040513          	addi	a0,s0,-64
    8000340c:	00000097          	auipc	ra,0x0
    80003410:	a7c080e7          	jalr	-1412(ra) # 80002e88 <_ZN8ResourceC1Ei>

    thread_t threads[6];

    ResourceThreadArg args[6];

    args[0].name = 'A';
    80003414:	04100793          	li	a5,65
    80003418:	f0f40423          	sb	a5,-248(s0)
    args[0].need = 3;
    8000341c:	00300793          	li	a5,3
    80003420:	f0f42623          	sw	a5,-244(s0)

    args[1].name = 'B';
    80003424:	04200793          	li	a5,66
    80003428:	f2f40023          	sb	a5,-224(s0)
    args[1].need = 2;
    8000342c:	00200793          	li	a5,2
    80003430:	f2f42223          	sw	a5,-220(s0)

    args[2].name = 'C';
    80003434:	04300713          	li	a4,67
    80003438:	f2e40c23          	sb	a4,-200(s0)
    args[2].need = 4;
    8000343c:	00400713          	li	a4,4
    80003440:	f2e42e23          	sw	a4,-196(s0)

    args[3].name = 'D';
    80003444:	04400713          	li	a4,68
    80003448:	f4e40823          	sb	a4,-176(s0)
    args[3].need = 1;
    8000344c:	00100713          	li	a4,1
    80003450:	f4e42a23          	sw	a4,-172(s0)

    args[4].name = 'E';
    80003454:	04500713          	li	a4,69
    80003458:	f6e40423          	sb	a4,-152(s0)
    args[4].need = 5;
    8000345c:	00500713          	li	a4,5
    80003460:	f6e42623          	sw	a4,-148(s0)

    args[5].name = 'F';
    80003464:	04600713          	li	a4,70
    80003468:	f8e40023          	sb	a4,-128(s0)
    args[5].need = 2;
    8000346c:	f8f42223          	sw	a5,-124(s0)

    for (int i = 0; i < 6; i++) {
    80003470:	00000493          	li	s1,0
    80003474:	00500793          	li	a5,5
    80003478:	0497ca63          	blt	a5,s1,800034cc <_Z12resourceTestv+0xec>
        args[i].resource = &resource;
    8000347c:	00149793          	slli	a5,s1,0x1
    80003480:	009786b3          	add	a3,a5,s1
    80003484:	00369713          	slli	a4,a3,0x3
    80003488:	fe040693          	addi	a3,s0,-32
    8000348c:	00e68733          	add	a4,a3,a4
    80003490:	fc040693          	addi	a3,s0,-64
    80003494:	f2d73023          	sd	a3,-224(a4)
        thread_create(&threads[i], resourceWorker, &args[i]);
    80003498:	009787b3          	add	a5,a5,s1
    8000349c:	00379713          	slli	a4,a5,0x3
    800034a0:	00349793          	slli	a5,s1,0x3
    800034a4:	f0040613          	addi	a2,s0,-256
    800034a8:	00e60633          	add	a2,a2,a4
    800034ac:	00000597          	auipc	a1,0x0
    800034b0:	d2458593          	addi	a1,a1,-732 # 800031d0 <_ZL14resourceWorkerPv>
    800034b4:	f9040513          	addi	a0,s0,-112
    800034b8:	00f50533          	add	a0,a0,a5
    800034bc:	ffffe097          	auipc	ra,0xffffe
    800034c0:	dc8080e7          	jalr	-568(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < 6; i++) {
    800034c4:	0014849b          	addiw	s1,s1,1
    800034c8:	fadff06f          	j	80003474 <_Z12resourceTestv+0x94>
    }

    for (int i = 0; i < 5000; i++) {
    800034cc:	00000493          	li	s1,0
    800034d0:	000017b7          	lui	a5,0x1
    800034d4:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    800034d8:	0097ca63          	blt	a5,s1,800034ec <_Z12resourceTestv+0x10c>
        thread_dispatch();
    800034dc:	ffffe097          	auipc	ra,0xffffe
    800034e0:	eac080e7          	jalr	-340(ra) # 80001388 <_Z15thread_dispatchv>
    for (int i = 0; i < 5000; i++) {
    800034e4:	0014849b          	addiw	s1,s1,1
    800034e8:	fe9ff06f          	j	800034d0 <_Z12resourceTestv+0xf0>
    }

    printString("Resource test finished\n");
    800034ec:	00006517          	auipc	a0,0x6
    800034f0:	02c50513          	addi	a0,a0,44 # 80009518 <CONSOLE_STATUS+0x508>
    800034f4:	00002097          	auipc	ra,0x2
    800034f8:	494080e7          	jalr	1172(ra) # 80005988 <_Z11printStringPKc>
    800034fc:	0f813083          	ld	ra,248(sp)
    80003500:	0f013403          	ld	s0,240(sp)
    80003504:	0e813483          	ld	s1,232(sp)
    80003508:	10010113          	addi	sp,sp,256
    8000350c:	00008067          	ret

0000000080003510 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003510:	fe010113          	addi	sp,sp,-32
    80003514:	00113c23          	sd	ra,24(sp)
    80003518:	00813823          	sd	s0,16(sp)
    8000351c:	00913423          	sd	s1,8(sp)
    80003520:	01213023          	sd	s2,0(sp)
    80003524:	02010413          	addi	s0,sp,32
    80003528:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000352c:	00000913          	li	s2,0
    80003530:	00c0006f          	j	8000353c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003534:	ffffe097          	auipc	ra,0xffffe
    80003538:	e54080e7          	jalr	-428(ra) # 80001388 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    8000353c:	ffffe097          	auipc	ra,0xffffe
    80003540:	054080e7          	jalr	84(ra) # 80001590 <_Z4getcv>
    80003544:	0005059b          	sext.w	a1,a0
    80003548:	01b00793          	li	a5,27
    8000354c:	02f58a63          	beq	a1,a5,80003580 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003550:	0084b503          	ld	a0,8(s1)
    80003554:	00003097          	auipc	ra,0x3
    80003558:	2ac080e7          	jalr	684(ra) # 80006800 <_ZN6Buffer3putEi>
        i++;
    8000355c:	0019071b          	addiw	a4,s2,1
    80003560:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003564:	0004a683          	lw	a3,0(s1)
    80003568:	0026979b          	slliw	a5,a3,0x2
    8000356c:	00d787bb          	addw	a5,a5,a3
    80003570:	0017979b          	slliw	a5,a5,0x1
    80003574:	02f767bb          	remw	a5,a4,a5
    80003578:	fc0792e3          	bnez	a5,8000353c <_ZL16producerKeyboardPv+0x2c>
    8000357c:	fb9ff06f          	j	80003534 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003580:	00100793          	li	a5,1
    80003584:	00008717          	auipc	a4,0x8
    80003588:	72f72623          	sw	a5,1836(a4) # 8000bcb0 <_ZL9threadEnd>
    data->buffer->put('!');
    8000358c:	02100593          	li	a1,33
    80003590:	0084b503          	ld	a0,8(s1)
    80003594:	00003097          	auipc	ra,0x3
    80003598:	26c080e7          	jalr	620(ra) # 80006800 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000359c:	0104b503          	ld	a0,16(s1)
    800035a0:	ffffe097          	auipc	ra,0xffffe
    800035a4:	ee8080e7          	jalr	-280(ra) # 80001488 <_Z10sem_signalP4_sem>
}
    800035a8:	01813083          	ld	ra,24(sp)
    800035ac:	01013403          	ld	s0,16(sp)
    800035b0:	00813483          	ld	s1,8(sp)
    800035b4:	00013903          	ld	s2,0(sp)
    800035b8:	02010113          	addi	sp,sp,32
    800035bc:	00008067          	ret

00000000800035c0 <_ZL8producerPv>:

static void producer(void *arg) {
    800035c0:	fe010113          	addi	sp,sp,-32
    800035c4:	00113c23          	sd	ra,24(sp)
    800035c8:	00813823          	sd	s0,16(sp)
    800035cc:	00913423          	sd	s1,8(sp)
    800035d0:	01213023          	sd	s2,0(sp)
    800035d4:	02010413          	addi	s0,sp,32
    800035d8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800035dc:	00000913          	li	s2,0
    800035e0:	00c0006f          	j	800035ec <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800035e4:	ffffe097          	auipc	ra,0xffffe
    800035e8:	da4080e7          	jalr	-604(ra) # 80001388 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800035ec:	00008797          	auipc	a5,0x8
    800035f0:	6c47a783          	lw	a5,1732(a5) # 8000bcb0 <_ZL9threadEnd>
    800035f4:	02079e63          	bnez	a5,80003630 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800035f8:	0004a583          	lw	a1,0(s1)
    800035fc:	0305859b          	addiw	a1,a1,48
    80003600:	0084b503          	ld	a0,8(s1)
    80003604:	00003097          	auipc	ra,0x3
    80003608:	1fc080e7          	jalr	508(ra) # 80006800 <_ZN6Buffer3putEi>
        i++;
    8000360c:	0019071b          	addiw	a4,s2,1
    80003610:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003614:	0004a683          	lw	a3,0(s1)
    80003618:	0026979b          	slliw	a5,a3,0x2
    8000361c:	00d787bb          	addw	a5,a5,a3
    80003620:	0017979b          	slliw	a5,a5,0x1
    80003624:	02f767bb          	remw	a5,a4,a5
    80003628:	fc0792e3          	bnez	a5,800035ec <_ZL8producerPv+0x2c>
    8000362c:	fb9ff06f          	j	800035e4 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003630:	0104b503          	ld	a0,16(s1)
    80003634:	ffffe097          	auipc	ra,0xffffe
    80003638:	e54080e7          	jalr	-428(ra) # 80001488 <_Z10sem_signalP4_sem>
}
    8000363c:	01813083          	ld	ra,24(sp)
    80003640:	01013403          	ld	s0,16(sp)
    80003644:	00813483          	ld	s1,8(sp)
    80003648:	00013903          	ld	s2,0(sp)
    8000364c:	02010113          	addi	sp,sp,32
    80003650:	00008067          	ret

0000000080003654 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003654:	fd010113          	addi	sp,sp,-48
    80003658:	02113423          	sd	ra,40(sp)
    8000365c:	02813023          	sd	s0,32(sp)
    80003660:	00913c23          	sd	s1,24(sp)
    80003664:	01213823          	sd	s2,16(sp)
    80003668:	01313423          	sd	s3,8(sp)
    8000366c:	03010413          	addi	s0,sp,48
    80003670:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003674:	00000993          	li	s3,0
    80003678:	01c0006f          	j	80003694 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    8000367c:	ffffe097          	auipc	ra,0xffffe
    80003680:	d0c080e7          	jalr	-756(ra) # 80001388 <_Z15thread_dispatchv>
    80003684:	0500006f          	j	800036d4 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003688:	00a00513          	li	a0,10
    8000368c:	ffffe097          	auipc	ra,0xffffe
    80003690:	f44080e7          	jalr	-188(ra) # 800015d0 <_Z4putcc>
    while (!threadEnd) {
    80003694:	00008797          	auipc	a5,0x8
    80003698:	61c7a783          	lw	a5,1564(a5) # 8000bcb0 <_ZL9threadEnd>
    8000369c:	06079063          	bnez	a5,800036fc <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800036a0:	00893503          	ld	a0,8(s2)
    800036a4:	00003097          	auipc	ra,0x3
    800036a8:	1ec080e7          	jalr	492(ra) # 80006890 <_ZN6Buffer3getEv>
        i++;
    800036ac:	0019849b          	addiw	s1,s3,1
    800036b0:	0004899b          	sext.w	s3,s1
        putc(key);
    800036b4:	0ff57513          	andi	a0,a0,255
    800036b8:	ffffe097          	auipc	ra,0xffffe
    800036bc:	f18080e7          	jalr	-232(ra) # 800015d0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800036c0:	00092703          	lw	a4,0(s2)
    800036c4:	0027179b          	slliw	a5,a4,0x2
    800036c8:	00e787bb          	addw	a5,a5,a4
    800036cc:	02f4e7bb          	remw	a5,s1,a5
    800036d0:	fa0786e3          	beqz	a5,8000367c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800036d4:	05000793          	li	a5,80
    800036d8:	02f4e4bb          	remw	s1,s1,a5
    800036dc:	fa049ce3          	bnez	s1,80003694 <_ZL8consumerPv+0x40>
    800036e0:	fa9ff06f          	j	80003688 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800036e4:	00893503          	ld	a0,8(s2)
    800036e8:	00003097          	auipc	ra,0x3
    800036ec:	1a8080e7          	jalr	424(ra) # 80006890 <_ZN6Buffer3getEv>
        putc(key);
    800036f0:	0ff57513          	andi	a0,a0,255
    800036f4:	ffffe097          	auipc	ra,0xffffe
    800036f8:	edc080e7          	jalr	-292(ra) # 800015d0 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800036fc:	00893503          	ld	a0,8(s2)
    80003700:	00003097          	auipc	ra,0x3
    80003704:	21c080e7          	jalr	540(ra) # 8000691c <_ZN6Buffer6getCntEv>
    80003708:	fca04ee3          	bgtz	a0,800036e4 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    8000370c:	01093503          	ld	a0,16(s2)
    80003710:	ffffe097          	auipc	ra,0xffffe
    80003714:	d78080e7          	jalr	-648(ra) # 80001488 <_Z10sem_signalP4_sem>
}
    80003718:	02813083          	ld	ra,40(sp)
    8000371c:	02013403          	ld	s0,32(sp)
    80003720:	01813483          	ld	s1,24(sp)
    80003724:	01013903          	ld	s2,16(sp)
    80003728:	00813983          	ld	s3,8(sp)
    8000372c:	03010113          	addi	sp,sp,48
    80003730:	00008067          	ret

0000000080003734 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003734:	f9010113          	addi	sp,sp,-112
    80003738:	06113423          	sd	ra,104(sp)
    8000373c:	06813023          	sd	s0,96(sp)
    80003740:	04913c23          	sd	s1,88(sp)
    80003744:	05213823          	sd	s2,80(sp)
    80003748:	05313423          	sd	s3,72(sp)
    8000374c:	05413023          	sd	s4,64(sp)
    80003750:	03513c23          	sd	s5,56(sp)
    80003754:	03613823          	sd	s6,48(sp)
    80003758:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000375c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003760:	00006517          	auipc	a0,0x6
    80003764:	dd050513          	addi	a0,a0,-560 # 80009530 <CONSOLE_STATUS+0x520>
    80003768:	00002097          	auipc	ra,0x2
    8000376c:	220080e7          	jalr	544(ra) # 80005988 <_Z11printStringPKc>
    getString(input, 30);
    80003770:	01e00593          	li	a1,30
    80003774:	fa040493          	addi	s1,s0,-96
    80003778:	00048513          	mv	a0,s1
    8000377c:	00002097          	auipc	ra,0x2
    80003780:	294080e7          	jalr	660(ra) # 80005a10 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003784:	00048513          	mv	a0,s1
    80003788:	00002097          	auipc	ra,0x2
    8000378c:	360080e7          	jalr	864(ra) # 80005ae8 <_Z11stringToIntPKc>
    80003790:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003794:	00006517          	auipc	a0,0x6
    80003798:	dbc50513          	addi	a0,a0,-580 # 80009550 <CONSOLE_STATUS+0x540>
    8000379c:	00002097          	auipc	ra,0x2
    800037a0:	1ec080e7          	jalr	492(ra) # 80005988 <_Z11printStringPKc>
    getString(input, 30);
    800037a4:	01e00593          	li	a1,30
    800037a8:	00048513          	mv	a0,s1
    800037ac:	00002097          	auipc	ra,0x2
    800037b0:	264080e7          	jalr	612(ra) # 80005a10 <_Z9getStringPci>
    n = stringToInt(input);
    800037b4:	00048513          	mv	a0,s1
    800037b8:	00002097          	auipc	ra,0x2
    800037bc:	330080e7          	jalr	816(ra) # 80005ae8 <_Z11stringToIntPKc>
    800037c0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800037c4:	00006517          	auipc	a0,0x6
    800037c8:	dac50513          	addi	a0,a0,-596 # 80009570 <CONSOLE_STATUS+0x560>
    800037cc:	00002097          	auipc	ra,0x2
    800037d0:	1bc080e7          	jalr	444(ra) # 80005988 <_Z11printStringPKc>
    800037d4:	00000613          	li	a2,0
    800037d8:	00a00593          	li	a1,10
    800037dc:	00090513          	mv	a0,s2
    800037e0:	00002097          	auipc	ra,0x2
    800037e4:	358080e7          	jalr	856(ra) # 80005b38 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800037e8:	00006517          	auipc	a0,0x6
    800037ec:	da050513          	addi	a0,a0,-608 # 80009588 <CONSOLE_STATUS+0x578>
    800037f0:	00002097          	auipc	ra,0x2
    800037f4:	198080e7          	jalr	408(ra) # 80005988 <_Z11printStringPKc>
    800037f8:	00000613          	li	a2,0
    800037fc:	00a00593          	li	a1,10
    80003800:	00048513          	mv	a0,s1
    80003804:	00002097          	auipc	ra,0x2
    80003808:	334080e7          	jalr	820(ra) # 80005b38 <_Z8printIntiii>
    printString(".\n");
    8000380c:	00006517          	auipc	a0,0x6
    80003810:	d9450513          	addi	a0,a0,-620 # 800095a0 <CONSOLE_STATUS+0x590>
    80003814:	00002097          	auipc	ra,0x2
    80003818:	174080e7          	jalr	372(ra) # 80005988 <_Z11printStringPKc>
    if(threadNum > n) {
    8000381c:	0324c463          	blt	s1,s2,80003844 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003820:	03205c63          	blez	s2,80003858 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003824:	03800513          	li	a0,56
    80003828:	fffff097          	auipc	ra,0xfffff
    8000382c:	cbc080e7          	jalr	-836(ra) # 800024e4 <_Znwm>
    80003830:	00050a13          	mv	s4,a0
    80003834:	00048593          	mv	a1,s1
    80003838:	00003097          	auipc	ra,0x3
    8000383c:	f2c080e7          	jalr	-212(ra) # 80006764 <_ZN6BufferC1Ei>
    80003840:	0300006f          	j	80003870 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003844:	00006517          	auipc	a0,0x6
    80003848:	d6450513          	addi	a0,a0,-668 # 800095a8 <CONSOLE_STATUS+0x598>
    8000384c:	00002097          	auipc	ra,0x2
    80003850:	13c080e7          	jalr	316(ra) # 80005988 <_Z11printStringPKc>
        return;
    80003854:	0140006f          	j	80003868 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003858:	00006517          	auipc	a0,0x6
    8000385c:	d9050513          	addi	a0,a0,-624 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80003860:	00002097          	auipc	ra,0x2
    80003864:	128080e7          	jalr	296(ra) # 80005988 <_Z11printStringPKc>
        return;
    80003868:	000b0113          	mv	sp,s6
    8000386c:	1500006f          	j	800039bc <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003870:	00000593          	li	a1,0
    80003874:	00008517          	auipc	a0,0x8
    80003878:	44450513          	addi	a0,a0,1092 # 8000bcb8 <_ZL10waitForAll>
    8000387c:	ffffe097          	auipc	ra,0xffffe
    80003880:	b48080e7          	jalr	-1208(ra) # 800013c4 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003884:	00391793          	slli	a5,s2,0x3
    80003888:	00f78793          	addi	a5,a5,15
    8000388c:	ff07f793          	andi	a5,a5,-16
    80003890:	40f10133          	sub	sp,sp,a5
    80003894:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003898:	0019071b          	addiw	a4,s2,1
    8000389c:	00171793          	slli	a5,a4,0x1
    800038a0:	00e787b3          	add	a5,a5,a4
    800038a4:	00379793          	slli	a5,a5,0x3
    800038a8:	00f78793          	addi	a5,a5,15
    800038ac:	ff07f793          	andi	a5,a5,-16
    800038b0:	40f10133          	sub	sp,sp,a5
    800038b4:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800038b8:	00191613          	slli	a2,s2,0x1
    800038bc:	012607b3          	add	a5,a2,s2
    800038c0:	00379793          	slli	a5,a5,0x3
    800038c4:	00f987b3          	add	a5,s3,a5
    800038c8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800038cc:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800038d0:	00008717          	auipc	a4,0x8
    800038d4:	3e873703          	ld	a4,1000(a4) # 8000bcb8 <_ZL10waitForAll>
    800038d8:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800038dc:	00078613          	mv	a2,a5
    800038e0:	00000597          	auipc	a1,0x0
    800038e4:	d7458593          	addi	a1,a1,-652 # 80003654 <_ZL8consumerPv>
    800038e8:	f9840513          	addi	a0,s0,-104
    800038ec:	ffffe097          	auipc	ra,0xffffe
    800038f0:	998080e7          	jalr	-1640(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800038f4:	00000493          	li	s1,0
    800038f8:	0280006f          	j	80003920 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800038fc:	00000597          	auipc	a1,0x0
    80003900:	c1458593          	addi	a1,a1,-1004 # 80003510 <_ZL16producerKeyboardPv>
                      data + i);
    80003904:	00179613          	slli	a2,a5,0x1
    80003908:	00f60633          	add	a2,a2,a5
    8000390c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003910:	00c98633          	add	a2,s3,a2
    80003914:	ffffe097          	auipc	ra,0xffffe
    80003918:	970080e7          	jalr	-1680(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000391c:	0014849b          	addiw	s1,s1,1
    80003920:	0524d263          	bge	s1,s2,80003964 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003924:	00149793          	slli	a5,s1,0x1
    80003928:	009787b3          	add	a5,a5,s1
    8000392c:	00379793          	slli	a5,a5,0x3
    80003930:	00f987b3          	add	a5,s3,a5
    80003934:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003938:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    8000393c:	00008717          	auipc	a4,0x8
    80003940:	37c73703          	ld	a4,892(a4) # 8000bcb8 <_ZL10waitForAll>
    80003944:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003948:	00048793          	mv	a5,s1
    8000394c:	00349513          	slli	a0,s1,0x3
    80003950:	00aa8533          	add	a0,s5,a0
    80003954:	fa9054e3          	blez	s1,800038fc <_Z22producerConsumer_C_APIv+0x1c8>
    80003958:	00000597          	auipc	a1,0x0
    8000395c:	c6858593          	addi	a1,a1,-920 # 800035c0 <_ZL8producerPv>
    80003960:	fa5ff06f          	j	80003904 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003964:	ffffe097          	auipc	ra,0xffffe
    80003968:	a24080e7          	jalr	-1500(ra) # 80001388 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    8000396c:	00000493          	li	s1,0
    80003970:	00994e63          	blt	s2,s1,8000398c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003974:	00008517          	auipc	a0,0x8
    80003978:	34453503          	ld	a0,836(a0) # 8000bcb8 <_ZL10waitForAll>
    8000397c:	ffffe097          	auipc	ra,0xffffe
    80003980:	acc080e7          	jalr	-1332(ra) # 80001448 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003984:	0014849b          	addiw	s1,s1,1
    80003988:	fe9ff06f          	j	80003970 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    8000398c:	00008517          	auipc	a0,0x8
    80003990:	32c53503          	ld	a0,812(a0) # 8000bcb8 <_ZL10waitForAll>
    80003994:	ffffe097          	auipc	ra,0xffffe
    80003998:	a74080e7          	jalr	-1420(ra) # 80001408 <_Z9sem_closeP4_sem>
    delete buffer;
    8000399c:	000a0e63          	beqz	s4,800039b8 <_Z22producerConsumer_C_APIv+0x284>
    800039a0:	000a0513          	mv	a0,s4
    800039a4:	00003097          	auipc	ra,0x3
    800039a8:	000080e7          	jalr	ra # 800069a4 <_ZN6BufferD1Ev>
    800039ac:	000a0513          	mv	a0,s4
    800039b0:	fffff097          	auipc	ra,0xfffff
    800039b4:	b84080e7          	jalr	-1148(ra) # 80002534 <_ZdlPv>
    800039b8:	000b0113          	mv	sp,s6

}
    800039bc:	f9040113          	addi	sp,s0,-112
    800039c0:	06813083          	ld	ra,104(sp)
    800039c4:	06013403          	ld	s0,96(sp)
    800039c8:	05813483          	ld	s1,88(sp)
    800039cc:	05013903          	ld	s2,80(sp)
    800039d0:	04813983          	ld	s3,72(sp)
    800039d4:	04013a03          	ld	s4,64(sp)
    800039d8:	03813a83          	ld	s5,56(sp)
    800039dc:	03013b03          	ld	s6,48(sp)
    800039e0:	07010113          	addi	sp,sp,112
    800039e4:	00008067          	ret
    800039e8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800039ec:	000a0513          	mv	a0,s4
    800039f0:	fffff097          	auipc	ra,0xfffff
    800039f4:	b44080e7          	jalr	-1212(ra) # 80002534 <_ZdlPv>
    800039f8:	00048513          	mv	a0,s1
    800039fc:	00009097          	auipc	ra,0x9
    80003a00:	3cc080e7          	jalr	972(ra) # 8000cdc8 <_Unwind_Resume>

0000000080003a04 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003a04:	fe010113          	addi	sp,sp,-32
    80003a08:	00113c23          	sd	ra,24(sp)
    80003a0c:	00813823          	sd	s0,16(sp)
    80003a10:	00913423          	sd	s1,8(sp)
    80003a14:	01213023          	sd	s2,0(sp)
    80003a18:	02010413          	addi	s0,sp,32
    80003a1c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003a20:	00100793          	li	a5,1
    80003a24:	02a7f863          	bgeu	a5,a0,80003a54 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003a28:	00a00793          	li	a5,10
    80003a2c:	02f577b3          	remu	a5,a0,a5
    80003a30:	02078e63          	beqz	a5,80003a6c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003a34:	fff48513          	addi	a0,s1,-1
    80003a38:	00000097          	auipc	ra,0x0
    80003a3c:	fcc080e7          	jalr	-52(ra) # 80003a04 <_ZL9fibonaccim>
    80003a40:	00050913          	mv	s2,a0
    80003a44:	ffe48513          	addi	a0,s1,-2
    80003a48:	00000097          	auipc	ra,0x0
    80003a4c:	fbc080e7          	jalr	-68(ra) # 80003a04 <_ZL9fibonaccim>
    80003a50:	00a90533          	add	a0,s2,a0
}
    80003a54:	01813083          	ld	ra,24(sp)
    80003a58:	01013403          	ld	s0,16(sp)
    80003a5c:	00813483          	ld	s1,8(sp)
    80003a60:	00013903          	ld	s2,0(sp)
    80003a64:	02010113          	addi	sp,sp,32
    80003a68:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003a6c:	ffffe097          	auipc	ra,0xffffe
    80003a70:	91c080e7          	jalr	-1764(ra) # 80001388 <_Z15thread_dispatchv>
    80003a74:	fc1ff06f          	j	80003a34 <_ZL9fibonaccim+0x30>

0000000080003a78 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003a78:	fe010113          	addi	sp,sp,-32
    80003a7c:	00113c23          	sd	ra,24(sp)
    80003a80:	00813823          	sd	s0,16(sp)
    80003a84:	00913423          	sd	s1,8(sp)
    80003a88:	01213023          	sd	s2,0(sp)
    80003a8c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003a90:	00000913          	li	s2,0
    80003a94:	0380006f          	j	80003acc <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003a98:	ffffe097          	auipc	ra,0xffffe
    80003a9c:	8f0080e7          	jalr	-1808(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003aa0:	00148493          	addi	s1,s1,1
    80003aa4:	000027b7          	lui	a5,0x2
    80003aa8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003aac:	0097ee63          	bltu	a5,s1,80003ac8 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003ab0:	00000713          	li	a4,0
    80003ab4:	000077b7          	lui	a5,0x7
    80003ab8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003abc:	fce7eee3          	bltu	a5,a4,80003a98 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003ac0:	00170713          	addi	a4,a4,1
    80003ac4:	ff1ff06f          	j	80003ab4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003ac8:	00190913          	addi	s2,s2,1
    80003acc:	00900793          	li	a5,9
    80003ad0:	0527e063          	bltu	a5,s2,80003b10 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003ad4:	00006517          	auipc	a0,0x6
    80003ad8:	b4450513          	addi	a0,a0,-1212 # 80009618 <CONSOLE_STATUS+0x608>
    80003adc:	00002097          	auipc	ra,0x2
    80003ae0:	eac080e7          	jalr	-340(ra) # 80005988 <_Z11printStringPKc>
    80003ae4:	00000613          	li	a2,0
    80003ae8:	00a00593          	li	a1,10
    80003aec:	0009051b          	sext.w	a0,s2
    80003af0:	00002097          	auipc	ra,0x2
    80003af4:	048080e7          	jalr	72(ra) # 80005b38 <_Z8printIntiii>
    80003af8:	00005517          	auipc	a0,0x5
    80003afc:	7c050513          	addi	a0,a0,1984 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003b00:	00002097          	auipc	ra,0x2
    80003b04:	e88080e7          	jalr	-376(ra) # 80005988 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003b08:	00000493          	li	s1,0
    80003b0c:	f99ff06f          	j	80003aa4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003b10:	00006517          	auipc	a0,0x6
    80003b14:	b1050513          	addi	a0,a0,-1264 # 80009620 <CONSOLE_STATUS+0x610>
    80003b18:	00002097          	auipc	ra,0x2
    80003b1c:	e70080e7          	jalr	-400(ra) # 80005988 <_Z11printStringPKc>
    finishedA = true;
    80003b20:	00100793          	li	a5,1
    80003b24:	00008717          	auipc	a4,0x8
    80003b28:	18f70e23          	sb	a5,412(a4) # 8000bcc0 <_ZL9finishedA>
}
    80003b2c:	01813083          	ld	ra,24(sp)
    80003b30:	01013403          	ld	s0,16(sp)
    80003b34:	00813483          	ld	s1,8(sp)
    80003b38:	00013903          	ld	s2,0(sp)
    80003b3c:	02010113          	addi	sp,sp,32
    80003b40:	00008067          	ret

0000000080003b44 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003b44:	fe010113          	addi	sp,sp,-32
    80003b48:	00113c23          	sd	ra,24(sp)
    80003b4c:	00813823          	sd	s0,16(sp)
    80003b50:	00913423          	sd	s1,8(sp)
    80003b54:	01213023          	sd	s2,0(sp)
    80003b58:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003b5c:	00000913          	li	s2,0
    80003b60:	0380006f          	j	80003b98 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003b64:	ffffe097          	auipc	ra,0xffffe
    80003b68:	824080e7          	jalr	-2012(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003b6c:	00148493          	addi	s1,s1,1
    80003b70:	000027b7          	lui	a5,0x2
    80003b74:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003b78:	0097ee63          	bltu	a5,s1,80003b94 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003b7c:	00000713          	li	a4,0
    80003b80:	000077b7          	lui	a5,0x7
    80003b84:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003b88:	fce7eee3          	bltu	a5,a4,80003b64 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003b8c:	00170713          	addi	a4,a4,1
    80003b90:	ff1ff06f          	j	80003b80 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003b94:	00190913          	addi	s2,s2,1
    80003b98:	00f00793          	li	a5,15
    80003b9c:	0527e063          	bltu	a5,s2,80003bdc <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003ba0:	00006517          	auipc	a0,0x6
    80003ba4:	a9050513          	addi	a0,a0,-1392 # 80009630 <CONSOLE_STATUS+0x620>
    80003ba8:	00002097          	auipc	ra,0x2
    80003bac:	de0080e7          	jalr	-544(ra) # 80005988 <_Z11printStringPKc>
    80003bb0:	00000613          	li	a2,0
    80003bb4:	00a00593          	li	a1,10
    80003bb8:	0009051b          	sext.w	a0,s2
    80003bbc:	00002097          	auipc	ra,0x2
    80003bc0:	f7c080e7          	jalr	-132(ra) # 80005b38 <_Z8printIntiii>
    80003bc4:	00005517          	auipc	a0,0x5
    80003bc8:	6f450513          	addi	a0,a0,1780 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003bcc:	00002097          	auipc	ra,0x2
    80003bd0:	dbc080e7          	jalr	-580(ra) # 80005988 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003bd4:	00000493          	li	s1,0
    80003bd8:	f99ff06f          	j	80003b70 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003bdc:	00006517          	auipc	a0,0x6
    80003be0:	a5c50513          	addi	a0,a0,-1444 # 80009638 <CONSOLE_STATUS+0x628>
    80003be4:	00002097          	auipc	ra,0x2
    80003be8:	da4080e7          	jalr	-604(ra) # 80005988 <_Z11printStringPKc>
    finishedB = true;
    80003bec:	00100793          	li	a5,1
    80003bf0:	00008717          	auipc	a4,0x8
    80003bf4:	0cf708a3          	sb	a5,209(a4) # 8000bcc1 <_ZL9finishedB>
    thread_dispatch();
    80003bf8:	ffffd097          	auipc	ra,0xffffd
    80003bfc:	790080e7          	jalr	1936(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003c00:	01813083          	ld	ra,24(sp)
    80003c04:	01013403          	ld	s0,16(sp)
    80003c08:	00813483          	ld	s1,8(sp)
    80003c0c:	00013903          	ld	s2,0(sp)
    80003c10:	02010113          	addi	sp,sp,32
    80003c14:	00008067          	ret

0000000080003c18 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003c18:	fe010113          	addi	sp,sp,-32
    80003c1c:	00113c23          	sd	ra,24(sp)
    80003c20:	00813823          	sd	s0,16(sp)
    80003c24:	00913423          	sd	s1,8(sp)
    80003c28:	01213023          	sd	s2,0(sp)
    80003c2c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003c30:	00000493          	li	s1,0
    80003c34:	0400006f          	j	80003c74 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003c38:	00006517          	auipc	a0,0x6
    80003c3c:	a1050513          	addi	a0,a0,-1520 # 80009648 <CONSOLE_STATUS+0x638>
    80003c40:	00002097          	auipc	ra,0x2
    80003c44:	d48080e7          	jalr	-696(ra) # 80005988 <_Z11printStringPKc>
    80003c48:	00000613          	li	a2,0
    80003c4c:	00a00593          	li	a1,10
    80003c50:	00048513          	mv	a0,s1
    80003c54:	00002097          	auipc	ra,0x2
    80003c58:	ee4080e7          	jalr	-284(ra) # 80005b38 <_Z8printIntiii>
    80003c5c:	00005517          	auipc	a0,0x5
    80003c60:	65c50513          	addi	a0,a0,1628 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003c64:	00002097          	auipc	ra,0x2
    80003c68:	d24080e7          	jalr	-732(ra) # 80005988 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003c6c:	0014849b          	addiw	s1,s1,1
    80003c70:	0ff4f493          	andi	s1,s1,255
    80003c74:	00200793          	li	a5,2
    80003c78:	fc97f0e3          	bgeu	a5,s1,80003c38 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003c7c:	00006517          	auipc	a0,0x6
    80003c80:	9d450513          	addi	a0,a0,-1580 # 80009650 <CONSOLE_STATUS+0x640>
    80003c84:	00002097          	auipc	ra,0x2
    80003c88:	d04080e7          	jalr	-764(ra) # 80005988 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003c8c:	00700313          	li	t1,7
    thread_dispatch();
    80003c90:	ffffd097          	auipc	ra,0xffffd
    80003c94:	6f8080e7          	jalr	1784(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003c98:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003c9c:	00006517          	auipc	a0,0x6
    80003ca0:	9c450513          	addi	a0,a0,-1596 # 80009660 <CONSOLE_STATUS+0x650>
    80003ca4:	00002097          	auipc	ra,0x2
    80003ca8:	ce4080e7          	jalr	-796(ra) # 80005988 <_Z11printStringPKc>
    80003cac:	00000613          	li	a2,0
    80003cb0:	00a00593          	li	a1,10
    80003cb4:	0009051b          	sext.w	a0,s2
    80003cb8:	00002097          	auipc	ra,0x2
    80003cbc:	e80080e7          	jalr	-384(ra) # 80005b38 <_Z8printIntiii>
    80003cc0:	00005517          	auipc	a0,0x5
    80003cc4:	5f850513          	addi	a0,a0,1528 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003cc8:	00002097          	auipc	ra,0x2
    80003ccc:	cc0080e7          	jalr	-832(ra) # 80005988 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003cd0:	00c00513          	li	a0,12
    80003cd4:	00000097          	auipc	ra,0x0
    80003cd8:	d30080e7          	jalr	-720(ra) # 80003a04 <_ZL9fibonaccim>
    80003cdc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003ce0:	00006517          	auipc	a0,0x6
    80003ce4:	98850513          	addi	a0,a0,-1656 # 80009668 <CONSOLE_STATUS+0x658>
    80003ce8:	00002097          	auipc	ra,0x2
    80003cec:	ca0080e7          	jalr	-864(ra) # 80005988 <_Z11printStringPKc>
    80003cf0:	00000613          	li	a2,0
    80003cf4:	00a00593          	li	a1,10
    80003cf8:	0009051b          	sext.w	a0,s2
    80003cfc:	00002097          	auipc	ra,0x2
    80003d00:	e3c080e7          	jalr	-452(ra) # 80005b38 <_Z8printIntiii>
    80003d04:	00005517          	auipc	a0,0x5
    80003d08:	5b450513          	addi	a0,a0,1460 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003d0c:	00002097          	auipc	ra,0x2
    80003d10:	c7c080e7          	jalr	-900(ra) # 80005988 <_Z11printStringPKc>
    80003d14:	0400006f          	j	80003d54 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003d18:	00006517          	auipc	a0,0x6
    80003d1c:	93050513          	addi	a0,a0,-1744 # 80009648 <CONSOLE_STATUS+0x638>
    80003d20:	00002097          	auipc	ra,0x2
    80003d24:	c68080e7          	jalr	-920(ra) # 80005988 <_Z11printStringPKc>
    80003d28:	00000613          	li	a2,0
    80003d2c:	00a00593          	li	a1,10
    80003d30:	00048513          	mv	a0,s1
    80003d34:	00002097          	auipc	ra,0x2
    80003d38:	e04080e7          	jalr	-508(ra) # 80005b38 <_Z8printIntiii>
    80003d3c:	00005517          	auipc	a0,0x5
    80003d40:	57c50513          	addi	a0,a0,1404 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003d44:	00002097          	auipc	ra,0x2
    80003d48:	c44080e7          	jalr	-956(ra) # 80005988 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003d4c:	0014849b          	addiw	s1,s1,1
    80003d50:	0ff4f493          	andi	s1,s1,255
    80003d54:	00500793          	li	a5,5
    80003d58:	fc97f0e3          	bgeu	a5,s1,80003d18 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003d5c:	00006517          	auipc	a0,0x6
    80003d60:	8c450513          	addi	a0,a0,-1852 # 80009620 <CONSOLE_STATUS+0x610>
    80003d64:	00002097          	auipc	ra,0x2
    80003d68:	c24080e7          	jalr	-988(ra) # 80005988 <_Z11printStringPKc>
    finishedC = true;
    80003d6c:	00100793          	li	a5,1
    80003d70:	00008717          	auipc	a4,0x8
    80003d74:	f4f70923          	sb	a5,-174(a4) # 8000bcc2 <_ZL9finishedC>
    thread_dispatch();
    80003d78:	ffffd097          	auipc	ra,0xffffd
    80003d7c:	610080e7          	jalr	1552(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003d80:	01813083          	ld	ra,24(sp)
    80003d84:	01013403          	ld	s0,16(sp)
    80003d88:	00813483          	ld	s1,8(sp)
    80003d8c:	00013903          	ld	s2,0(sp)
    80003d90:	02010113          	addi	sp,sp,32
    80003d94:	00008067          	ret

0000000080003d98 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003d98:	fe010113          	addi	sp,sp,-32
    80003d9c:	00113c23          	sd	ra,24(sp)
    80003da0:	00813823          	sd	s0,16(sp)
    80003da4:	00913423          	sd	s1,8(sp)
    80003da8:	01213023          	sd	s2,0(sp)
    80003dac:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003db0:	00a00493          	li	s1,10
    80003db4:	0400006f          	j	80003df4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003db8:	00006517          	auipc	a0,0x6
    80003dbc:	8c050513          	addi	a0,a0,-1856 # 80009678 <CONSOLE_STATUS+0x668>
    80003dc0:	00002097          	auipc	ra,0x2
    80003dc4:	bc8080e7          	jalr	-1080(ra) # 80005988 <_Z11printStringPKc>
    80003dc8:	00000613          	li	a2,0
    80003dcc:	00a00593          	li	a1,10
    80003dd0:	00048513          	mv	a0,s1
    80003dd4:	00002097          	auipc	ra,0x2
    80003dd8:	d64080e7          	jalr	-668(ra) # 80005b38 <_Z8printIntiii>
    80003ddc:	00005517          	auipc	a0,0x5
    80003de0:	4dc50513          	addi	a0,a0,1244 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003de4:	00002097          	auipc	ra,0x2
    80003de8:	ba4080e7          	jalr	-1116(ra) # 80005988 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003dec:	0014849b          	addiw	s1,s1,1
    80003df0:	0ff4f493          	andi	s1,s1,255
    80003df4:	00c00793          	li	a5,12
    80003df8:	fc97f0e3          	bgeu	a5,s1,80003db8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003dfc:	00006517          	auipc	a0,0x6
    80003e00:	88450513          	addi	a0,a0,-1916 # 80009680 <CONSOLE_STATUS+0x670>
    80003e04:	00002097          	auipc	ra,0x2
    80003e08:	b84080e7          	jalr	-1148(ra) # 80005988 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003e0c:	00500313          	li	t1,5
    thread_dispatch();
    80003e10:	ffffd097          	auipc	ra,0xffffd
    80003e14:	578080e7          	jalr	1400(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003e18:	01000513          	li	a0,16
    80003e1c:	00000097          	auipc	ra,0x0
    80003e20:	be8080e7          	jalr	-1048(ra) # 80003a04 <_ZL9fibonaccim>
    80003e24:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003e28:	00006517          	auipc	a0,0x6
    80003e2c:	86850513          	addi	a0,a0,-1944 # 80009690 <CONSOLE_STATUS+0x680>
    80003e30:	00002097          	auipc	ra,0x2
    80003e34:	b58080e7          	jalr	-1192(ra) # 80005988 <_Z11printStringPKc>
    80003e38:	00000613          	li	a2,0
    80003e3c:	00a00593          	li	a1,10
    80003e40:	0009051b          	sext.w	a0,s2
    80003e44:	00002097          	auipc	ra,0x2
    80003e48:	cf4080e7          	jalr	-780(ra) # 80005b38 <_Z8printIntiii>
    80003e4c:	00005517          	auipc	a0,0x5
    80003e50:	46c50513          	addi	a0,a0,1132 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003e54:	00002097          	auipc	ra,0x2
    80003e58:	b34080e7          	jalr	-1228(ra) # 80005988 <_Z11printStringPKc>
    80003e5c:	0400006f          	j	80003e9c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003e60:	00006517          	auipc	a0,0x6
    80003e64:	81850513          	addi	a0,a0,-2024 # 80009678 <CONSOLE_STATUS+0x668>
    80003e68:	00002097          	auipc	ra,0x2
    80003e6c:	b20080e7          	jalr	-1248(ra) # 80005988 <_Z11printStringPKc>
    80003e70:	00000613          	li	a2,0
    80003e74:	00a00593          	li	a1,10
    80003e78:	00048513          	mv	a0,s1
    80003e7c:	00002097          	auipc	ra,0x2
    80003e80:	cbc080e7          	jalr	-836(ra) # 80005b38 <_Z8printIntiii>
    80003e84:	00005517          	auipc	a0,0x5
    80003e88:	43450513          	addi	a0,a0,1076 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003e8c:	00002097          	auipc	ra,0x2
    80003e90:	afc080e7          	jalr	-1284(ra) # 80005988 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003e94:	0014849b          	addiw	s1,s1,1
    80003e98:	0ff4f493          	andi	s1,s1,255
    80003e9c:	00f00793          	li	a5,15
    80003ea0:	fc97f0e3          	bgeu	a5,s1,80003e60 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003ea4:	00005517          	auipc	a0,0x5
    80003ea8:	7fc50513          	addi	a0,a0,2044 # 800096a0 <CONSOLE_STATUS+0x690>
    80003eac:	00002097          	auipc	ra,0x2
    80003eb0:	adc080e7          	jalr	-1316(ra) # 80005988 <_Z11printStringPKc>
    finishedD = true;
    80003eb4:	00100793          	li	a5,1
    80003eb8:	00008717          	auipc	a4,0x8
    80003ebc:	e0f705a3          	sb	a5,-501(a4) # 8000bcc3 <_ZL9finishedD>
    thread_dispatch();
    80003ec0:	ffffd097          	auipc	ra,0xffffd
    80003ec4:	4c8080e7          	jalr	1224(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003ec8:	01813083          	ld	ra,24(sp)
    80003ecc:	01013403          	ld	s0,16(sp)
    80003ed0:	00813483          	ld	s1,8(sp)
    80003ed4:	00013903          	ld	s2,0(sp)
    80003ed8:	02010113          	addi	sp,sp,32
    80003edc:	00008067          	ret

0000000080003ee0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003ee0:	fc010113          	addi	sp,sp,-64
    80003ee4:	02113c23          	sd	ra,56(sp)
    80003ee8:	02813823          	sd	s0,48(sp)
    80003eec:	02913423          	sd	s1,40(sp)
    80003ef0:	03213023          	sd	s2,32(sp)
    80003ef4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003ef8:	02000513          	li	a0,32
    80003efc:	ffffe097          	auipc	ra,0xffffe
    80003f00:	5e8080e7          	jalr	1512(ra) # 800024e4 <_Znwm>
    80003f04:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003f08:	fffff097          	auipc	ra,0xfffff
    80003f0c:	8b4080e7          	jalr	-1868(ra) # 800027bc <_ZN6ThreadC1Ev>
    80003f10:	00008797          	auipc	a5,0x8
    80003f14:	b5078793          	addi	a5,a5,-1200 # 8000ba60 <_ZTV7WorkerA+0x10>
    80003f18:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003f1c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003f20:	00005517          	auipc	a0,0x5
    80003f24:	79050513          	addi	a0,a0,1936 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80003f28:	00002097          	auipc	ra,0x2
    80003f2c:	a60080e7          	jalr	-1440(ra) # 80005988 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003f30:	02000513          	li	a0,32
    80003f34:	ffffe097          	auipc	ra,0xffffe
    80003f38:	5b0080e7          	jalr	1456(ra) # 800024e4 <_Znwm>
    80003f3c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003f40:	fffff097          	auipc	ra,0xfffff
    80003f44:	87c080e7          	jalr	-1924(ra) # 800027bc <_ZN6ThreadC1Ev>
    80003f48:	00008797          	auipc	a5,0x8
    80003f4c:	b4078793          	addi	a5,a5,-1216 # 8000ba88 <_ZTV7WorkerB+0x10>
    80003f50:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003f54:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003f58:	00005517          	auipc	a0,0x5
    80003f5c:	77050513          	addi	a0,a0,1904 # 800096c8 <CONSOLE_STATUS+0x6b8>
    80003f60:	00002097          	auipc	ra,0x2
    80003f64:	a28080e7          	jalr	-1496(ra) # 80005988 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003f68:	02000513          	li	a0,32
    80003f6c:	ffffe097          	auipc	ra,0xffffe
    80003f70:	578080e7          	jalr	1400(ra) # 800024e4 <_Znwm>
    80003f74:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003f78:	fffff097          	auipc	ra,0xfffff
    80003f7c:	844080e7          	jalr	-1980(ra) # 800027bc <_ZN6ThreadC1Ev>
    80003f80:	00008797          	auipc	a5,0x8
    80003f84:	b3078793          	addi	a5,a5,-1232 # 8000bab0 <_ZTV7WorkerC+0x10>
    80003f88:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003f8c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003f90:	00005517          	auipc	a0,0x5
    80003f94:	75050513          	addi	a0,a0,1872 # 800096e0 <CONSOLE_STATUS+0x6d0>
    80003f98:	00002097          	auipc	ra,0x2
    80003f9c:	9f0080e7          	jalr	-1552(ra) # 80005988 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003fa0:	02000513          	li	a0,32
    80003fa4:	ffffe097          	auipc	ra,0xffffe
    80003fa8:	540080e7          	jalr	1344(ra) # 800024e4 <_Znwm>
    80003fac:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003fb0:	fffff097          	auipc	ra,0xfffff
    80003fb4:	80c080e7          	jalr	-2036(ra) # 800027bc <_ZN6ThreadC1Ev>
    80003fb8:	00008797          	auipc	a5,0x8
    80003fbc:	b2078793          	addi	a5,a5,-1248 # 8000bad8 <_ZTV7WorkerD+0x10>
    80003fc0:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003fc4:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003fc8:	00005517          	auipc	a0,0x5
    80003fcc:	73050513          	addi	a0,a0,1840 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80003fd0:	00002097          	auipc	ra,0x2
    80003fd4:	9b8080e7          	jalr	-1608(ra) # 80005988 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003fd8:	00000493          	li	s1,0
    80003fdc:	00300793          	li	a5,3
    80003fe0:	0297c663          	blt	a5,s1,8000400c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003fe4:	00349793          	slli	a5,s1,0x3
    80003fe8:	fe040713          	addi	a4,s0,-32
    80003fec:	00f707b3          	add	a5,a4,a5
    80003ff0:	fe07b503          	ld	a0,-32(a5)
    80003ff4:	ffffe097          	auipc	ra,0xffffe
    80003ff8:	7f8080e7          	jalr	2040(ra) # 800027ec <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003ffc:	0014849b          	addiw	s1,s1,1
    80004000:	fddff06f          	j	80003fdc <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004004:	fffff097          	auipc	ra,0xfffff
    80004008:	83c080e7          	jalr	-1988(ra) # 80002840 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000400c:	00008797          	auipc	a5,0x8
    80004010:	cb47c783          	lbu	a5,-844(a5) # 8000bcc0 <_ZL9finishedA>
    80004014:	fe0788e3          	beqz	a5,80004004 <_Z20Threads_CPP_API_testv+0x124>
    80004018:	00008797          	auipc	a5,0x8
    8000401c:	ca97c783          	lbu	a5,-855(a5) # 8000bcc1 <_ZL9finishedB>
    80004020:	fe0782e3          	beqz	a5,80004004 <_Z20Threads_CPP_API_testv+0x124>
    80004024:	00008797          	auipc	a5,0x8
    80004028:	c9e7c783          	lbu	a5,-866(a5) # 8000bcc2 <_ZL9finishedC>
    8000402c:	fc078ce3          	beqz	a5,80004004 <_Z20Threads_CPP_API_testv+0x124>
    80004030:	00008797          	auipc	a5,0x8
    80004034:	c937c783          	lbu	a5,-877(a5) # 8000bcc3 <_ZL9finishedD>
    80004038:	fc0786e3          	beqz	a5,80004004 <_Z20Threads_CPP_API_testv+0x124>
    8000403c:	fc040493          	addi	s1,s0,-64
    80004040:	0080006f          	j	80004048 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004044:	00848493          	addi	s1,s1,8
    80004048:	fe040793          	addi	a5,s0,-32
    8000404c:	08f48663          	beq	s1,a5,800040d8 <_Z20Threads_CPP_API_testv+0x1f8>
    80004050:	0004b503          	ld	a0,0(s1)
    80004054:	fe0508e3          	beqz	a0,80004044 <_Z20Threads_CPP_API_testv+0x164>
    80004058:	00053783          	ld	a5,0(a0)
    8000405c:	0087b783          	ld	a5,8(a5)
    80004060:	000780e7          	jalr	a5
    80004064:	fe1ff06f          	j	80004044 <_Z20Threads_CPP_API_testv+0x164>
    80004068:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    8000406c:	00048513          	mv	a0,s1
    80004070:	ffffe097          	auipc	ra,0xffffe
    80004074:	4c4080e7          	jalr	1220(ra) # 80002534 <_ZdlPv>
    80004078:	00090513          	mv	a0,s2
    8000407c:	00009097          	auipc	ra,0x9
    80004080:	d4c080e7          	jalr	-692(ra) # 8000cdc8 <_Unwind_Resume>
    80004084:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004088:	00048513          	mv	a0,s1
    8000408c:	ffffe097          	auipc	ra,0xffffe
    80004090:	4a8080e7          	jalr	1192(ra) # 80002534 <_ZdlPv>
    80004094:	00090513          	mv	a0,s2
    80004098:	00009097          	auipc	ra,0x9
    8000409c:	d30080e7          	jalr	-720(ra) # 8000cdc8 <_Unwind_Resume>
    800040a0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800040a4:	00048513          	mv	a0,s1
    800040a8:	ffffe097          	auipc	ra,0xffffe
    800040ac:	48c080e7          	jalr	1164(ra) # 80002534 <_ZdlPv>
    800040b0:	00090513          	mv	a0,s2
    800040b4:	00009097          	auipc	ra,0x9
    800040b8:	d14080e7          	jalr	-748(ra) # 8000cdc8 <_Unwind_Resume>
    800040bc:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800040c0:	00048513          	mv	a0,s1
    800040c4:	ffffe097          	auipc	ra,0xffffe
    800040c8:	470080e7          	jalr	1136(ra) # 80002534 <_ZdlPv>
    800040cc:	00090513          	mv	a0,s2
    800040d0:	00009097          	auipc	ra,0x9
    800040d4:	cf8080e7          	jalr	-776(ra) # 8000cdc8 <_Unwind_Resume>
}
    800040d8:	03813083          	ld	ra,56(sp)
    800040dc:	03013403          	ld	s0,48(sp)
    800040e0:	02813483          	ld	s1,40(sp)
    800040e4:	02013903          	ld	s2,32(sp)
    800040e8:	04010113          	addi	sp,sp,64
    800040ec:	00008067          	ret

00000000800040f0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800040f0:	ff010113          	addi	sp,sp,-16
    800040f4:	00113423          	sd	ra,8(sp)
    800040f8:	00813023          	sd	s0,0(sp)
    800040fc:	01010413          	addi	s0,sp,16
    80004100:	00008797          	auipc	a5,0x8
    80004104:	96078793          	addi	a5,a5,-1696 # 8000ba60 <_ZTV7WorkerA+0x10>
    80004108:	00f53023          	sd	a5,0(a0)
    8000410c:	ffffe097          	auipc	ra,0xffffe
    80004110:	58c080e7          	jalr	1420(ra) # 80002698 <_ZN6ThreadD1Ev>
    80004114:	00813083          	ld	ra,8(sp)
    80004118:	00013403          	ld	s0,0(sp)
    8000411c:	01010113          	addi	sp,sp,16
    80004120:	00008067          	ret

0000000080004124 <_ZN7WorkerAD0Ev>:
    80004124:	fe010113          	addi	sp,sp,-32
    80004128:	00113c23          	sd	ra,24(sp)
    8000412c:	00813823          	sd	s0,16(sp)
    80004130:	00913423          	sd	s1,8(sp)
    80004134:	02010413          	addi	s0,sp,32
    80004138:	00050493          	mv	s1,a0
    8000413c:	00008797          	auipc	a5,0x8
    80004140:	92478793          	addi	a5,a5,-1756 # 8000ba60 <_ZTV7WorkerA+0x10>
    80004144:	00f53023          	sd	a5,0(a0)
    80004148:	ffffe097          	auipc	ra,0xffffe
    8000414c:	550080e7          	jalr	1360(ra) # 80002698 <_ZN6ThreadD1Ev>
    80004150:	00048513          	mv	a0,s1
    80004154:	ffffe097          	auipc	ra,0xffffe
    80004158:	3e0080e7          	jalr	992(ra) # 80002534 <_ZdlPv>
    8000415c:	01813083          	ld	ra,24(sp)
    80004160:	01013403          	ld	s0,16(sp)
    80004164:	00813483          	ld	s1,8(sp)
    80004168:	02010113          	addi	sp,sp,32
    8000416c:	00008067          	ret

0000000080004170 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004170:	ff010113          	addi	sp,sp,-16
    80004174:	00113423          	sd	ra,8(sp)
    80004178:	00813023          	sd	s0,0(sp)
    8000417c:	01010413          	addi	s0,sp,16
    80004180:	00008797          	auipc	a5,0x8
    80004184:	90878793          	addi	a5,a5,-1784 # 8000ba88 <_ZTV7WorkerB+0x10>
    80004188:	00f53023          	sd	a5,0(a0)
    8000418c:	ffffe097          	auipc	ra,0xffffe
    80004190:	50c080e7          	jalr	1292(ra) # 80002698 <_ZN6ThreadD1Ev>
    80004194:	00813083          	ld	ra,8(sp)
    80004198:	00013403          	ld	s0,0(sp)
    8000419c:	01010113          	addi	sp,sp,16
    800041a0:	00008067          	ret

00000000800041a4 <_ZN7WorkerBD0Ev>:
    800041a4:	fe010113          	addi	sp,sp,-32
    800041a8:	00113c23          	sd	ra,24(sp)
    800041ac:	00813823          	sd	s0,16(sp)
    800041b0:	00913423          	sd	s1,8(sp)
    800041b4:	02010413          	addi	s0,sp,32
    800041b8:	00050493          	mv	s1,a0
    800041bc:	00008797          	auipc	a5,0x8
    800041c0:	8cc78793          	addi	a5,a5,-1844 # 8000ba88 <_ZTV7WorkerB+0x10>
    800041c4:	00f53023          	sd	a5,0(a0)
    800041c8:	ffffe097          	auipc	ra,0xffffe
    800041cc:	4d0080e7          	jalr	1232(ra) # 80002698 <_ZN6ThreadD1Ev>
    800041d0:	00048513          	mv	a0,s1
    800041d4:	ffffe097          	auipc	ra,0xffffe
    800041d8:	360080e7          	jalr	864(ra) # 80002534 <_ZdlPv>
    800041dc:	01813083          	ld	ra,24(sp)
    800041e0:	01013403          	ld	s0,16(sp)
    800041e4:	00813483          	ld	s1,8(sp)
    800041e8:	02010113          	addi	sp,sp,32
    800041ec:	00008067          	ret

00000000800041f0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800041f0:	ff010113          	addi	sp,sp,-16
    800041f4:	00113423          	sd	ra,8(sp)
    800041f8:	00813023          	sd	s0,0(sp)
    800041fc:	01010413          	addi	s0,sp,16
    80004200:	00008797          	auipc	a5,0x8
    80004204:	8b078793          	addi	a5,a5,-1872 # 8000bab0 <_ZTV7WorkerC+0x10>
    80004208:	00f53023          	sd	a5,0(a0)
    8000420c:	ffffe097          	auipc	ra,0xffffe
    80004210:	48c080e7          	jalr	1164(ra) # 80002698 <_ZN6ThreadD1Ev>
    80004214:	00813083          	ld	ra,8(sp)
    80004218:	00013403          	ld	s0,0(sp)
    8000421c:	01010113          	addi	sp,sp,16
    80004220:	00008067          	ret

0000000080004224 <_ZN7WorkerCD0Ev>:
    80004224:	fe010113          	addi	sp,sp,-32
    80004228:	00113c23          	sd	ra,24(sp)
    8000422c:	00813823          	sd	s0,16(sp)
    80004230:	00913423          	sd	s1,8(sp)
    80004234:	02010413          	addi	s0,sp,32
    80004238:	00050493          	mv	s1,a0
    8000423c:	00008797          	auipc	a5,0x8
    80004240:	87478793          	addi	a5,a5,-1932 # 8000bab0 <_ZTV7WorkerC+0x10>
    80004244:	00f53023          	sd	a5,0(a0)
    80004248:	ffffe097          	auipc	ra,0xffffe
    8000424c:	450080e7          	jalr	1104(ra) # 80002698 <_ZN6ThreadD1Ev>
    80004250:	00048513          	mv	a0,s1
    80004254:	ffffe097          	auipc	ra,0xffffe
    80004258:	2e0080e7          	jalr	736(ra) # 80002534 <_ZdlPv>
    8000425c:	01813083          	ld	ra,24(sp)
    80004260:	01013403          	ld	s0,16(sp)
    80004264:	00813483          	ld	s1,8(sp)
    80004268:	02010113          	addi	sp,sp,32
    8000426c:	00008067          	ret

0000000080004270 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004270:	ff010113          	addi	sp,sp,-16
    80004274:	00113423          	sd	ra,8(sp)
    80004278:	00813023          	sd	s0,0(sp)
    8000427c:	01010413          	addi	s0,sp,16
    80004280:	00008797          	auipc	a5,0x8
    80004284:	85878793          	addi	a5,a5,-1960 # 8000bad8 <_ZTV7WorkerD+0x10>
    80004288:	00f53023          	sd	a5,0(a0)
    8000428c:	ffffe097          	auipc	ra,0xffffe
    80004290:	40c080e7          	jalr	1036(ra) # 80002698 <_ZN6ThreadD1Ev>
    80004294:	00813083          	ld	ra,8(sp)
    80004298:	00013403          	ld	s0,0(sp)
    8000429c:	01010113          	addi	sp,sp,16
    800042a0:	00008067          	ret

00000000800042a4 <_ZN7WorkerDD0Ev>:
    800042a4:	fe010113          	addi	sp,sp,-32
    800042a8:	00113c23          	sd	ra,24(sp)
    800042ac:	00813823          	sd	s0,16(sp)
    800042b0:	00913423          	sd	s1,8(sp)
    800042b4:	02010413          	addi	s0,sp,32
    800042b8:	00050493          	mv	s1,a0
    800042bc:	00008797          	auipc	a5,0x8
    800042c0:	81c78793          	addi	a5,a5,-2020 # 8000bad8 <_ZTV7WorkerD+0x10>
    800042c4:	00f53023          	sd	a5,0(a0)
    800042c8:	ffffe097          	auipc	ra,0xffffe
    800042cc:	3d0080e7          	jalr	976(ra) # 80002698 <_ZN6ThreadD1Ev>
    800042d0:	00048513          	mv	a0,s1
    800042d4:	ffffe097          	auipc	ra,0xffffe
    800042d8:	260080e7          	jalr	608(ra) # 80002534 <_ZdlPv>
    800042dc:	01813083          	ld	ra,24(sp)
    800042e0:	01013403          	ld	s0,16(sp)
    800042e4:	00813483          	ld	s1,8(sp)
    800042e8:	02010113          	addi	sp,sp,32
    800042ec:	00008067          	ret

00000000800042f0 <_ZN7WorkerA3runEv>:
    void run() override {
    800042f0:	ff010113          	addi	sp,sp,-16
    800042f4:	00113423          	sd	ra,8(sp)
    800042f8:	00813023          	sd	s0,0(sp)
    800042fc:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004300:	00000593          	li	a1,0
    80004304:	fffff097          	auipc	ra,0xfffff
    80004308:	774080e7          	jalr	1908(ra) # 80003a78 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000430c:	00813083          	ld	ra,8(sp)
    80004310:	00013403          	ld	s0,0(sp)
    80004314:	01010113          	addi	sp,sp,16
    80004318:	00008067          	ret

000000008000431c <_ZN7WorkerB3runEv>:
    void run() override {
    8000431c:	ff010113          	addi	sp,sp,-16
    80004320:	00113423          	sd	ra,8(sp)
    80004324:	00813023          	sd	s0,0(sp)
    80004328:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000432c:	00000593          	li	a1,0
    80004330:	00000097          	auipc	ra,0x0
    80004334:	814080e7          	jalr	-2028(ra) # 80003b44 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004338:	00813083          	ld	ra,8(sp)
    8000433c:	00013403          	ld	s0,0(sp)
    80004340:	01010113          	addi	sp,sp,16
    80004344:	00008067          	ret

0000000080004348 <_ZN7WorkerC3runEv>:
    void run() override {
    80004348:	ff010113          	addi	sp,sp,-16
    8000434c:	00113423          	sd	ra,8(sp)
    80004350:	00813023          	sd	s0,0(sp)
    80004354:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004358:	00000593          	li	a1,0
    8000435c:	00000097          	auipc	ra,0x0
    80004360:	8bc080e7          	jalr	-1860(ra) # 80003c18 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004364:	00813083          	ld	ra,8(sp)
    80004368:	00013403          	ld	s0,0(sp)
    8000436c:	01010113          	addi	sp,sp,16
    80004370:	00008067          	ret

0000000080004374 <_ZN7WorkerD3runEv>:
    void run() override {
    80004374:	ff010113          	addi	sp,sp,-16
    80004378:	00113423          	sd	ra,8(sp)
    8000437c:	00813023          	sd	s0,0(sp)
    80004380:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004384:	00000593          	li	a1,0
    80004388:	00000097          	auipc	ra,0x0
    8000438c:	a10080e7          	jalr	-1520(ra) # 80003d98 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004390:	00813083          	ld	ra,8(sp)
    80004394:	00013403          	ld	s0,0(sp)
    80004398:	01010113          	addi	sp,sp,16
    8000439c:	00008067          	ret

00000000800043a0 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800043a0:	f8010113          	addi	sp,sp,-128
    800043a4:	06113c23          	sd	ra,120(sp)
    800043a8:	06813823          	sd	s0,112(sp)
    800043ac:	06913423          	sd	s1,104(sp)
    800043b0:	07213023          	sd	s2,96(sp)
    800043b4:	05313c23          	sd	s3,88(sp)
    800043b8:	05413823          	sd	s4,80(sp)
    800043bc:	05513423          	sd	s5,72(sp)
    800043c0:	05613023          	sd	s6,64(sp)
    800043c4:	03713c23          	sd	s7,56(sp)
    800043c8:	03813823          	sd	s8,48(sp)
    800043cc:	03913423          	sd	s9,40(sp)
    800043d0:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800043d4:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800043d8:	00005517          	auipc	a0,0x5
    800043dc:	15850513          	addi	a0,a0,344 # 80009530 <CONSOLE_STATUS+0x520>
    800043e0:	00001097          	auipc	ra,0x1
    800043e4:	5a8080e7          	jalr	1448(ra) # 80005988 <_Z11printStringPKc>
    getString(input, 30);
    800043e8:	01e00593          	li	a1,30
    800043ec:	f8040493          	addi	s1,s0,-128
    800043f0:	00048513          	mv	a0,s1
    800043f4:	00001097          	auipc	ra,0x1
    800043f8:	61c080e7          	jalr	1564(ra) # 80005a10 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800043fc:	00048513          	mv	a0,s1
    80004400:	00001097          	auipc	ra,0x1
    80004404:	6e8080e7          	jalr	1768(ra) # 80005ae8 <_Z11stringToIntPKc>
    80004408:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    8000440c:	00005517          	auipc	a0,0x5
    80004410:	14450513          	addi	a0,a0,324 # 80009550 <CONSOLE_STATUS+0x540>
    80004414:	00001097          	auipc	ra,0x1
    80004418:	574080e7          	jalr	1396(ra) # 80005988 <_Z11printStringPKc>
    getString(input, 30);
    8000441c:	01e00593          	li	a1,30
    80004420:	00048513          	mv	a0,s1
    80004424:	00001097          	auipc	ra,0x1
    80004428:	5ec080e7          	jalr	1516(ra) # 80005a10 <_Z9getStringPci>
    n = stringToInt(input);
    8000442c:	00048513          	mv	a0,s1
    80004430:	00001097          	auipc	ra,0x1
    80004434:	6b8080e7          	jalr	1720(ra) # 80005ae8 <_Z11stringToIntPKc>
    80004438:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    8000443c:	00005517          	auipc	a0,0x5
    80004440:	13450513          	addi	a0,a0,308 # 80009570 <CONSOLE_STATUS+0x560>
    80004444:	00001097          	auipc	ra,0x1
    80004448:	544080e7          	jalr	1348(ra) # 80005988 <_Z11printStringPKc>
    printInt(threadNum);
    8000444c:	00000613          	li	a2,0
    80004450:	00a00593          	li	a1,10
    80004454:	00098513          	mv	a0,s3
    80004458:	00001097          	auipc	ra,0x1
    8000445c:	6e0080e7          	jalr	1760(ra) # 80005b38 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004460:	00005517          	auipc	a0,0x5
    80004464:	12850513          	addi	a0,a0,296 # 80009588 <CONSOLE_STATUS+0x578>
    80004468:	00001097          	auipc	ra,0x1
    8000446c:	520080e7          	jalr	1312(ra) # 80005988 <_Z11printStringPKc>
    printInt(n);
    80004470:	00000613          	li	a2,0
    80004474:	00a00593          	li	a1,10
    80004478:	00048513          	mv	a0,s1
    8000447c:	00001097          	auipc	ra,0x1
    80004480:	6bc080e7          	jalr	1724(ra) # 80005b38 <_Z8printIntiii>
    printString(".\n");
    80004484:	00005517          	auipc	a0,0x5
    80004488:	11c50513          	addi	a0,a0,284 # 800095a0 <CONSOLE_STATUS+0x590>
    8000448c:	00001097          	auipc	ra,0x1
    80004490:	4fc080e7          	jalr	1276(ra) # 80005988 <_Z11printStringPKc>
    if (threadNum > n) {
    80004494:	0334c463          	blt	s1,s3,800044bc <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004498:	03305c63          	blez	s3,800044d0 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000449c:	03800513          	li	a0,56
    800044a0:	ffffe097          	auipc	ra,0xffffe
    800044a4:	044080e7          	jalr	68(ra) # 800024e4 <_Znwm>
    800044a8:	00050a93          	mv	s5,a0
    800044ac:	00048593          	mv	a1,s1
    800044b0:	00001097          	auipc	ra,0x1
    800044b4:	7a8080e7          	jalr	1960(ra) # 80005c58 <_ZN9BufferCPPC1Ei>
    800044b8:	0300006f          	j	800044e8 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800044bc:	00005517          	auipc	a0,0x5
    800044c0:	0ec50513          	addi	a0,a0,236 # 800095a8 <CONSOLE_STATUS+0x598>
    800044c4:	00001097          	auipc	ra,0x1
    800044c8:	4c4080e7          	jalr	1220(ra) # 80005988 <_Z11printStringPKc>
        return;
    800044cc:	0140006f          	j	800044e0 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800044d0:	00005517          	auipc	a0,0x5
    800044d4:	11850513          	addi	a0,a0,280 # 800095e8 <CONSOLE_STATUS+0x5d8>
    800044d8:	00001097          	auipc	ra,0x1
    800044dc:	4b0080e7          	jalr	1200(ra) # 80005988 <_Z11printStringPKc>
        return;
    800044e0:	000c0113          	mv	sp,s8
    800044e4:	2140006f          	j	800046f8 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800044e8:	01000513          	li	a0,16
    800044ec:	ffffe097          	auipc	ra,0xffffe
    800044f0:	ff8080e7          	jalr	-8(ra) # 800024e4 <_Znwm>
    800044f4:	00050913          	mv	s2,a0
    800044f8:	00000593          	li	a1,0
    800044fc:	ffffe097          	auipc	ra,0xffffe
    80004500:	394080e7          	jalr	916(ra) # 80002890 <_ZN9SemaphoreC1Ej>
    80004504:	00007797          	auipc	a5,0x7
    80004508:	7d27b623          	sd	s2,1996(a5) # 8000bcd0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    8000450c:	00399793          	slli	a5,s3,0x3
    80004510:	00f78793          	addi	a5,a5,15
    80004514:	ff07f793          	andi	a5,a5,-16
    80004518:	40f10133          	sub	sp,sp,a5
    8000451c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004520:	0019871b          	addiw	a4,s3,1
    80004524:	00171793          	slli	a5,a4,0x1
    80004528:	00e787b3          	add	a5,a5,a4
    8000452c:	00379793          	slli	a5,a5,0x3
    80004530:	00f78793          	addi	a5,a5,15
    80004534:	ff07f793          	andi	a5,a5,-16
    80004538:	40f10133          	sub	sp,sp,a5
    8000453c:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004540:	00199493          	slli	s1,s3,0x1
    80004544:	013484b3          	add	s1,s1,s3
    80004548:	00349493          	slli	s1,s1,0x3
    8000454c:	009b04b3          	add	s1,s6,s1
    80004550:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004554:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004558:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    8000455c:	02800513          	li	a0,40
    80004560:	ffffe097          	auipc	ra,0xffffe
    80004564:	f84080e7          	jalr	-124(ra) # 800024e4 <_Znwm>
    80004568:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    8000456c:	ffffe097          	auipc	ra,0xffffe
    80004570:	250080e7          	jalr	592(ra) # 800027bc <_ZN6ThreadC1Ev>
    80004574:	00007797          	auipc	a5,0x7
    80004578:	5dc78793          	addi	a5,a5,1500 # 8000bb50 <_ZTV8Consumer+0x10>
    8000457c:	00fbb023          	sd	a5,0(s7)
    80004580:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004584:	000b8513          	mv	a0,s7
    80004588:	ffffe097          	auipc	ra,0xffffe
    8000458c:	264080e7          	jalr	612(ra) # 800027ec <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004590:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004594:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004598:	00007797          	auipc	a5,0x7
    8000459c:	7387b783          	ld	a5,1848(a5) # 8000bcd0 <_ZL10waitForAll>
    800045a0:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800045a4:	02800513          	li	a0,40
    800045a8:	ffffe097          	auipc	ra,0xffffe
    800045ac:	f3c080e7          	jalr	-196(ra) # 800024e4 <_Znwm>
    800045b0:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800045b4:	ffffe097          	auipc	ra,0xffffe
    800045b8:	208080e7          	jalr	520(ra) # 800027bc <_ZN6ThreadC1Ev>
    800045bc:	00007797          	auipc	a5,0x7
    800045c0:	54478793          	addi	a5,a5,1348 # 8000bb00 <_ZTV16ProducerKeyborad+0x10>
    800045c4:	00f4b023          	sd	a5,0(s1)
    800045c8:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800045cc:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800045d0:	00048513          	mv	a0,s1
    800045d4:	ffffe097          	auipc	ra,0xffffe
    800045d8:	218080e7          	jalr	536(ra) # 800027ec <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800045dc:	00100913          	li	s2,1
    800045e0:	0300006f          	j	80004610 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800045e4:	00007797          	auipc	a5,0x7
    800045e8:	54478793          	addi	a5,a5,1348 # 8000bb28 <_ZTV8Producer+0x10>
    800045ec:	00fcb023          	sd	a5,0(s9)
    800045f0:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800045f4:	00391793          	slli	a5,s2,0x3
    800045f8:	00fa07b3          	add	a5,s4,a5
    800045fc:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004600:	000c8513          	mv	a0,s9
    80004604:	ffffe097          	auipc	ra,0xffffe
    80004608:	1e8080e7          	jalr	488(ra) # 800027ec <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000460c:	0019091b          	addiw	s2,s2,1
    80004610:	05395263          	bge	s2,s3,80004654 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004614:	00191493          	slli	s1,s2,0x1
    80004618:	012484b3          	add	s1,s1,s2
    8000461c:	00349493          	slli	s1,s1,0x3
    80004620:	009b04b3          	add	s1,s6,s1
    80004624:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004628:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    8000462c:	00007797          	auipc	a5,0x7
    80004630:	6a47b783          	ld	a5,1700(a5) # 8000bcd0 <_ZL10waitForAll>
    80004634:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004638:	02800513          	li	a0,40
    8000463c:	ffffe097          	auipc	ra,0xffffe
    80004640:	ea8080e7          	jalr	-344(ra) # 800024e4 <_Znwm>
    80004644:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004648:	ffffe097          	auipc	ra,0xffffe
    8000464c:	174080e7          	jalr	372(ra) # 800027bc <_ZN6ThreadC1Ev>
    80004650:	f95ff06f          	j	800045e4 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004654:	ffffe097          	auipc	ra,0xffffe
    80004658:	1ec080e7          	jalr	492(ra) # 80002840 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    8000465c:	00000493          	li	s1,0
    80004660:	0099ce63          	blt	s3,s1,8000467c <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004664:	00007517          	auipc	a0,0x7
    80004668:	66c53503          	ld	a0,1644(a0) # 8000bcd0 <_ZL10waitForAll>
    8000466c:	ffffe097          	auipc	ra,0xffffe
    80004670:	260080e7          	jalr	608(ra) # 800028cc <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004674:	0014849b          	addiw	s1,s1,1
    80004678:	fe9ff06f          	j	80004660 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    8000467c:	00007517          	auipc	a0,0x7
    80004680:	65453503          	ld	a0,1620(a0) # 8000bcd0 <_ZL10waitForAll>
    80004684:	00050863          	beqz	a0,80004694 <_Z20testConsumerProducerv+0x2f4>
    80004688:	00053783          	ld	a5,0(a0)
    8000468c:	0087b783          	ld	a5,8(a5)
    80004690:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004694:	00000493          	li	s1,0
    80004698:	0080006f          	j	800046a0 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    8000469c:	0014849b          	addiw	s1,s1,1
    800046a0:	0334d263          	bge	s1,s3,800046c4 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800046a4:	00349793          	slli	a5,s1,0x3
    800046a8:	00fa07b3          	add	a5,s4,a5
    800046ac:	0007b503          	ld	a0,0(a5)
    800046b0:	fe0506e3          	beqz	a0,8000469c <_Z20testConsumerProducerv+0x2fc>
    800046b4:	00053783          	ld	a5,0(a0)
    800046b8:	0087b783          	ld	a5,8(a5)
    800046bc:	000780e7          	jalr	a5
    800046c0:	fddff06f          	j	8000469c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800046c4:	000b8a63          	beqz	s7,800046d8 <_Z20testConsumerProducerv+0x338>
    800046c8:	000bb783          	ld	a5,0(s7)
    800046cc:	0087b783          	ld	a5,8(a5)
    800046d0:	000b8513          	mv	a0,s7
    800046d4:	000780e7          	jalr	a5
    delete buffer;
    800046d8:	000a8e63          	beqz	s5,800046f4 <_Z20testConsumerProducerv+0x354>
    800046dc:	000a8513          	mv	a0,s5
    800046e0:	00002097          	auipc	ra,0x2
    800046e4:	870080e7          	jalr	-1936(ra) # 80005f50 <_ZN9BufferCPPD1Ev>
    800046e8:	000a8513          	mv	a0,s5
    800046ec:	ffffe097          	auipc	ra,0xffffe
    800046f0:	e48080e7          	jalr	-440(ra) # 80002534 <_ZdlPv>
    800046f4:	000c0113          	mv	sp,s8
}
    800046f8:	f8040113          	addi	sp,s0,-128
    800046fc:	07813083          	ld	ra,120(sp)
    80004700:	07013403          	ld	s0,112(sp)
    80004704:	06813483          	ld	s1,104(sp)
    80004708:	06013903          	ld	s2,96(sp)
    8000470c:	05813983          	ld	s3,88(sp)
    80004710:	05013a03          	ld	s4,80(sp)
    80004714:	04813a83          	ld	s5,72(sp)
    80004718:	04013b03          	ld	s6,64(sp)
    8000471c:	03813b83          	ld	s7,56(sp)
    80004720:	03013c03          	ld	s8,48(sp)
    80004724:	02813c83          	ld	s9,40(sp)
    80004728:	08010113          	addi	sp,sp,128
    8000472c:	00008067          	ret
    80004730:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004734:	000a8513          	mv	a0,s5
    80004738:	ffffe097          	auipc	ra,0xffffe
    8000473c:	dfc080e7          	jalr	-516(ra) # 80002534 <_ZdlPv>
    80004740:	00048513          	mv	a0,s1
    80004744:	00008097          	auipc	ra,0x8
    80004748:	684080e7          	jalr	1668(ra) # 8000cdc8 <_Unwind_Resume>
    8000474c:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004750:	00090513          	mv	a0,s2
    80004754:	ffffe097          	auipc	ra,0xffffe
    80004758:	de0080e7          	jalr	-544(ra) # 80002534 <_ZdlPv>
    8000475c:	00048513          	mv	a0,s1
    80004760:	00008097          	auipc	ra,0x8
    80004764:	668080e7          	jalr	1640(ra) # 8000cdc8 <_Unwind_Resume>
    80004768:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    8000476c:	000b8513          	mv	a0,s7
    80004770:	ffffe097          	auipc	ra,0xffffe
    80004774:	dc4080e7          	jalr	-572(ra) # 80002534 <_ZdlPv>
    80004778:	00048513          	mv	a0,s1
    8000477c:	00008097          	auipc	ra,0x8
    80004780:	64c080e7          	jalr	1612(ra) # 8000cdc8 <_Unwind_Resume>
    80004784:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004788:	00048513          	mv	a0,s1
    8000478c:	ffffe097          	auipc	ra,0xffffe
    80004790:	da8080e7          	jalr	-600(ra) # 80002534 <_ZdlPv>
    80004794:	00090513          	mv	a0,s2
    80004798:	00008097          	auipc	ra,0x8
    8000479c:	630080e7          	jalr	1584(ra) # 8000cdc8 <_Unwind_Resume>
    800047a0:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800047a4:	000c8513          	mv	a0,s9
    800047a8:	ffffe097          	auipc	ra,0xffffe
    800047ac:	d8c080e7          	jalr	-628(ra) # 80002534 <_ZdlPv>
    800047b0:	00048513          	mv	a0,s1
    800047b4:	00008097          	auipc	ra,0x8
    800047b8:	614080e7          	jalr	1556(ra) # 8000cdc8 <_Unwind_Resume>

00000000800047bc <_ZN8Consumer3runEv>:
    void run() override {
    800047bc:	fd010113          	addi	sp,sp,-48
    800047c0:	02113423          	sd	ra,40(sp)
    800047c4:	02813023          	sd	s0,32(sp)
    800047c8:	00913c23          	sd	s1,24(sp)
    800047cc:	01213823          	sd	s2,16(sp)
    800047d0:	01313423          	sd	s3,8(sp)
    800047d4:	03010413          	addi	s0,sp,48
    800047d8:	00050913          	mv	s2,a0
        int i = 0;
    800047dc:	00000993          	li	s3,0
    800047e0:	0100006f          	j	800047f0 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800047e4:	00a00513          	li	a0,10
    800047e8:	ffffe097          	auipc	ra,0xffffe
    800047ec:	1cc080e7          	jalr	460(ra) # 800029b4 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800047f0:	00007797          	auipc	a5,0x7
    800047f4:	4d87a783          	lw	a5,1240(a5) # 8000bcc8 <_ZL9threadEnd>
    800047f8:	04079a63          	bnez	a5,8000484c <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800047fc:	02093783          	ld	a5,32(s2)
    80004800:	0087b503          	ld	a0,8(a5)
    80004804:	00001097          	auipc	ra,0x1
    80004808:	638080e7          	jalr	1592(ra) # 80005e3c <_ZN9BufferCPP3getEv>
            i++;
    8000480c:	0019849b          	addiw	s1,s3,1
    80004810:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004814:	0ff57513          	andi	a0,a0,255
    80004818:	ffffe097          	auipc	ra,0xffffe
    8000481c:	19c080e7          	jalr	412(ra) # 800029b4 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004820:	05000793          	li	a5,80
    80004824:	02f4e4bb          	remw	s1,s1,a5
    80004828:	fc0494e3          	bnez	s1,800047f0 <_ZN8Consumer3runEv+0x34>
    8000482c:	fb9ff06f          	j	800047e4 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004830:	02093783          	ld	a5,32(s2)
    80004834:	0087b503          	ld	a0,8(a5)
    80004838:	00001097          	auipc	ra,0x1
    8000483c:	604080e7          	jalr	1540(ra) # 80005e3c <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004840:	0ff57513          	andi	a0,a0,255
    80004844:	ffffe097          	auipc	ra,0xffffe
    80004848:	170080e7          	jalr	368(ra) # 800029b4 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    8000484c:	02093783          	ld	a5,32(s2)
    80004850:	0087b503          	ld	a0,8(a5)
    80004854:	00001097          	auipc	ra,0x1
    80004858:	674080e7          	jalr	1652(ra) # 80005ec8 <_ZN9BufferCPP6getCntEv>
    8000485c:	fca04ae3          	bgtz	a0,80004830 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004860:	02093783          	ld	a5,32(s2)
    80004864:	0107b503          	ld	a0,16(a5)
    80004868:	ffffe097          	auipc	ra,0xffffe
    8000486c:	090080e7          	jalr	144(ra) # 800028f8 <_ZN9Semaphore6signalEv>
    }
    80004870:	02813083          	ld	ra,40(sp)
    80004874:	02013403          	ld	s0,32(sp)
    80004878:	01813483          	ld	s1,24(sp)
    8000487c:	01013903          	ld	s2,16(sp)
    80004880:	00813983          	ld	s3,8(sp)
    80004884:	03010113          	addi	sp,sp,48
    80004888:	00008067          	ret

000000008000488c <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    8000488c:	ff010113          	addi	sp,sp,-16
    80004890:	00113423          	sd	ra,8(sp)
    80004894:	00813023          	sd	s0,0(sp)
    80004898:	01010413          	addi	s0,sp,16
    8000489c:	00007797          	auipc	a5,0x7
    800048a0:	2b478793          	addi	a5,a5,692 # 8000bb50 <_ZTV8Consumer+0x10>
    800048a4:	00f53023          	sd	a5,0(a0)
    800048a8:	ffffe097          	auipc	ra,0xffffe
    800048ac:	df0080e7          	jalr	-528(ra) # 80002698 <_ZN6ThreadD1Ev>
    800048b0:	00813083          	ld	ra,8(sp)
    800048b4:	00013403          	ld	s0,0(sp)
    800048b8:	01010113          	addi	sp,sp,16
    800048bc:	00008067          	ret

00000000800048c0 <_ZN8ConsumerD0Ev>:
    800048c0:	fe010113          	addi	sp,sp,-32
    800048c4:	00113c23          	sd	ra,24(sp)
    800048c8:	00813823          	sd	s0,16(sp)
    800048cc:	00913423          	sd	s1,8(sp)
    800048d0:	02010413          	addi	s0,sp,32
    800048d4:	00050493          	mv	s1,a0
    800048d8:	00007797          	auipc	a5,0x7
    800048dc:	27878793          	addi	a5,a5,632 # 8000bb50 <_ZTV8Consumer+0x10>
    800048e0:	00f53023          	sd	a5,0(a0)
    800048e4:	ffffe097          	auipc	ra,0xffffe
    800048e8:	db4080e7          	jalr	-588(ra) # 80002698 <_ZN6ThreadD1Ev>
    800048ec:	00048513          	mv	a0,s1
    800048f0:	ffffe097          	auipc	ra,0xffffe
    800048f4:	c44080e7          	jalr	-956(ra) # 80002534 <_ZdlPv>
    800048f8:	01813083          	ld	ra,24(sp)
    800048fc:	01013403          	ld	s0,16(sp)
    80004900:	00813483          	ld	s1,8(sp)
    80004904:	02010113          	addi	sp,sp,32
    80004908:	00008067          	ret

000000008000490c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    8000490c:	ff010113          	addi	sp,sp,-16
    80004910:	00113423          	sd	ra,8(sp)
    80004914:	00813023          	sd	s0,0(sp)
    80004918:	01010413          	addi	s0,sp,16
    8000491c:	00007797          	auipc	a5,0x7
    80004920:	1e478793          	addi	a5,a5,484 # 8000bb00 <_ZTV16ProducerKeyborad+0x10>
    80004924:	00f53023          	sd	a5,0(a0)
    80004928:	ffffe097          	auipc	ra,0xffffe
    8000492c:	d70080e7          	jalr	-656(ra) # 80002698 <_ZN6ThreadD1Ev>
    80004930:	00813083          	ld	ra,8(sp)
    80004934:	00013403          	ld	s0,0(sp)
    80004938:	01010113          	addi	sp,sp,16
    8000493c:	00008067          	ret

0000000080004940 <_ZN16ProducerKeyboradD0Ev>:
    80004940:	fe010113          	addi	sp,sp,-32
    80004944:	00113c23          	sd	ra,24(sp)
    80004948:	00813823          	sd	s0,16(sp)
    8000494c:	00913423          	sd	s1,8(sp)
    80004950:	02010413          	addi	s0,sp,32
    80004954:	00050493          	mv	s1,a0
    80004958:	00007797          	auipc	a5,0x7
    8000495c:	1a878793          	addi	a5,a5,424 # 8000bb00 <_ZTV16ProducerKeyborad+0x10>
    80004960:	00f53023          	sd	a5,0(a0)
    80004964:	ffffe097          	auipc	ra,0xffffe
    80004968:	d34080e7          	jalr	-716(ra) # 80002698 <_ZN6ThreadD1Ev>
    8000496c:	00048513          	mv	a0,s1
    80004970:	ffffe097          	auipc	ra,0xffffe
    80004974:	bc4080e7          	jalr	-1084(ra) # 80002534 <_ZdlPv>
    80004978:	01813083          	ld	ra,24(sp)
    8000497c:	01013403          	ld	s0,16(sp)
    80004980:	00813483          	ld	s1,8(sp)
    80004984:	02010113          	addi	sp,sp,32
    80004988:	00008067          	ret

000000008000498c <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    8000498c:	ff010113          	addi	sp,sp,-16
    80004990:	00113423          	sd	ra,8(sp)
    80004994:	00813023          	sd	s0,0(sp)
    80004998:	01010413          	addi	s0,sp,16
    8000499c:	00007797          	auipc	a5,0x7
    800049a0:	18c78793          	addi	a5,a5,396 # 8000bb28 <_ZTV8Producer+0x10>
    800049a4:	00f53023          	sd	a5,0(a0)
    800049a8:	ffffe097          	auipc	ra,0xffffe
    800049ac:	cf0080e7          	jalr	-784(ra) # 80002698 <_ZN6ThreadD1Ev>
    800049b0:	00813083          	ld	ra,8(sp)
    800049b4:	00013403          	ld	s0,0(sp)
    800049b8:	01010113          	addi	sp,sp,16
    800049bc:	00008067          	ret

00000000800049c0 <_ZN8ProducerD0Ev>:
    800049c0:	fe010113          	addi	sp,sp,-32
    800049c4:	00113c23          	sd	ra,24(sp)
    800049c8:	00813823          	sd	s0,16(sp)
    800049cc:	00913423          	sd	s1,8(sp)
    800049d0:	02010413          	addi	s0,sp,32
    800049d4:	00050493          	mv	s1,a0
    800049d8:	00007797          	auipc	a5,0x7
    800049dc:	15078793          	addi	a5,a5,336 # 8000bb28 <_ZTV8Producer+0x10>
    800049e0:	00f53023          	sd	a5,0(a0)
    800049e4:	ffffe097          	auipc	ra,0xffffe
    800049e8:	cb4080e7          	jalr	-844(ra) # 80002698 <_ZN6ThreadD1Ev>
    800049ec:	00048513          	mv	a0,s1
    800049f0:	ffffe097          	auipc	ra,0xffffe
    800049f4:	b44080e7          	jalr	-1212(ra) # 80002534 <_ZdlPv>
    800049f8:	01813083          	ld	ra,24(sp)
    800049fc:	01013403          	ld	s0,16(sp)
    80004a00:	00813483          	ld	s1,8(sp)
    80004a04:	02010113          	addi	sp,sp,32
    80004a08:	00008067          	ret

0000000080004a0c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004a0c:	fe010113          	addi	sp,sp,-32
    80004a10:	00113c23          	sd	ra,24(sp)
    80004a14:	00813823          	sd	s0,16(sp)
    80004a18:	00913423          	sd	s1,8(sp)
    80004a1c:	02010413          	addi	s0,sp,32
    80004a20:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004a24:	ffffd097          	auipc	ra,0xffffd
    80004a28:	b6c080e7          	jalr	-1172(ra) # 80001590 <_Z4getcv>
    80004a2c:	0005059b          	sext.w	a1,a0
    80004a30:	01b00793          	li	a5,27
    80004a34:	00f58c63          	beq	a1,a5,80004a4c <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004a38:	0204b783          	ld	a5,32(s1)
    80004a3c:	0087b503          	ld	a0,8(a5)
    80004a40:	00001097          	auipc	ra,0x1
    80004a44:	36c080e7          	jalr	876(ra) # 80005dac <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004a48:	fddff06f          	j	80004a24 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004a4c:	00100793          	li	a5,1
    80004a50:	00007717          	auipc	a4,0x7
    80004a54:	26f72c23          	sw	a5,632(a4) # 8000bcc8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004a58:	0204b783          	ld	a5,32(s1)
    80004a5c:	02100593          	li	a1,33
    80004a60:	0087b503          	ld	a0,8(a5)
    80004a64:	00001097          	auipc	ra,0x1
    80004a68:	348080e7          	jalr	840(ra) # 80005dac <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004a6c:	0204b783          	ld	a5,32(s1)
    80004a70:	0107b503          	ld	a0,16(a5)
    80004a74:	ffffe097          	auipc	ra,0xffffe
    80004a78:	e84080e7          	jalr	-380(ra) # 800028f8 <_ZN9Semaphore6signalEv>
    }
    80004a7c:	01813083          	ld	ra,24(sp)
    80004a80:	01013403          	ld	s0,16(sp)
    80004a84:	00813483          	ld	s1,8(sp)
    80004a88:	02010113          	addi	sp,sp,32
    80004a8c:	00008067          	ret

0000000080004a90 <_ZN8Producer3runEv>:
    void run() override {
    80004a90:	fe010113          	addi	sp,sp,-32
    80004a94:	00113c23          	sd	ra,24(sp)
    80004a98:	00813823          	sd	s0,16(sp)
    80004a9c:	00913423          	sd	s1,8(sp)
    80004aa0:	01213023          	sd	s2,0(sp)
    80004aa4:	02010413          	addi	s0,sp,32
    80004aa8:	00050493          	mv	s1,a0
        int i = 0;
    80004aac:	00000913          	li	s2,0
        while (!threadEnd) {
    80004ab0:	00007797          	auipc	a5,0x7
    80004ab4:	2187a783          	lw	a5,536(a5) # 8000bcc8 <_ZL9threadEnd>
    80004ab8:	04079263          	bnez	a5,80004afc <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004abc:	0204b783          	ld	a5,32(s1)
    80004ac0:	0007a583          	lw	a1,0(a5)
    80004ac4:	0305859b          	addiw	a1,a1,48
    80004ac8:	0087b503          	ld	a0,8(a5)
    80004acc:	00001097          	auipc	ra,0x1
    80004ad0:	2e0080e7          	jalr	736(ra) # 80005dac <_ZN9BufferCPP3putEi>
            i++;
    80004ad4:	0019071b          	addiw	a4,s2,1
    80004ad8:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004adc:	0204b783          	ld	a5,32(s1)
    80004ae0:	0007a783          	lw	a5,0(a5)
    80004ae4:	00e787bb          	addw	a5,a5,a4
    80004ae8:	00500513          	li	a0,5
    80004aec:	02a7e53b          	remw	a0,a5,a0
    80004af0:	ffffe097          	auipc	ra,0xffffe
    80004af4:	d78080e7          	jalr	-648(ra) # 80002868 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004af8:	fb9ff06f          	j	80004ab0 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004afc:	0204b783          	ld	a5,32(s1)
    80004b00:	0107b503          	ld	a0,16(a5)
    80004b04:	ffffe097          	auipc	ra,0xffffe
    80004b08:	df4080e7          	jalr	-524(ra) # 800028f8 <_ZN9Semaphore6signalEv>
    }
    80004b0c:	01813083          	ld	ra,24(sp)
    80004b10:	01013403          	ld	s0,16(sp)
    80004b14:	00813483          	ld	s1,8(sp)
    80004b18:	00013903          	ld	s2,0(sp)
    80004b1c:	02010113          	addi	sp,sp,32
    80004b20:	00008067          	ret

0000000080004b24 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004b24:	fe010113          	addi	sp,sp,-32
    80004b28:	00113c23          	sd	ra,24(sp)
    80004b2c:	00813823          	sd	s0,16(sp)
    80004b30:	00913423          	sd	s1,8(sp)
    80004b34:	01213023          	sd	s2,0(sp)
    80004b38:	02010413          	addi	s0,sp,32
    80004b3c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004b40:	00100793          	li	a5,1
    80004b44:	02a7f863          	bgeu	a5,a0,80004b74 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004b48:	00a00793          	li	a5,10
    80004b4c:	02f577b3          	remu	a5,a0,a5
    80004b50:	02078e63          	beqz	a5,80004b8c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004b54:	fff48513          	addi	a0,s1,-1
    80004b58:	00000097          	auipc	ra,0x0
    80004b5c:	fcc080e7          	jalr	-52(ra) # 80004b24 <_ZL9fibonaccim>
    80004b60:	00050913          	mv	s2,a0
    80004b64:	ffe48513          	addi	a0,s1,-2
    80004b68:	00000097          	auipc	ra,0x0
    80004b6c:	fbc080e7          	jalr	-68(ra) # 80004b24 <_ZL9fibonaccim>
    80004b70:	00a90533          	add	a0,s2,a0
}
    80004b74:	01813083          	ld	ra,24(sp)
    80004b78:	01013403          	ld	s0,16(sp)
    80004b7c:	00813483          	ld	s1,8(sp)
    80004b80:	00013903          	ld	s2,0(sp)
    80004b84:	02010113          	addi	sp,sp,32
    80004b88:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004b8c:	ffffc097          	auipc	ra,0xffffc
    80004b90:	7fc080e7          	jalr	2044(ra) # 80001388 <_Z15thread_dispatchv>
    80004b94:	fc1ff06f          	j	80004b54 <_ZL9fibonaccim+0x30>

0000000080004b98 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004b98:	fe010113          	addi	sp,sp,-32
    80004b9c:	00113c23          	sd	ra,24(sp)
    80004ba0:	00813823          	sd	s0,16(sp)
    80004ba4:	00913423          	sd	s1,8(sp)
    80004ba8:	01213023          	sd	s2,0(sp)
    80004bac:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004bb0:	00a00493          	li	s1,10
    80004bb4:	0400006f          	j	80004bf4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004bb8:	00005517          	auipc	a0,0x5
    80004bbc:	ac050513          	addi	a0,a0,-1344 # 80009678 <CONSOLE_STATUS+0x668>
    80004bc0:	00001097          	auipc	ra,0x1
    80004bc4:	dc8080e7          	jalr	-568(ra) # 80005988 <_Z11printStringPKc>
    80004bc8:	00000613          	li	a2,0
    80004bcc:	00a00593          	li	a1,10
    80004bd0:	00048513          	mv	a0,s1
    80004bd4:	00001097          	auipc	ra,0x1
    80004bd8:	f64080e7          	jalr	-156(ra) # 80005b38 <_Z8printIntiii>
    80004bdc:	00004517          	auipc	a0,0x4
    80004be0:	6dc50513          	addi	a0,a0,1756 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004be4:	00001097          	auipc	ra,0x1
    80004be8:	da4080e7          	jalr	-604(ra) # 80005988 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004bec:	0014849b          	addiw	s1,s1,1
    80004bf0:	0ff4f493          	andi	s1,s1,255
    80004bf4:	00c00793          	li	a5,12
    80004bf8:	fc97f0e3          	bgeu	a5,s1,80004bb8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004bfc:	00005517          	auipc	a0,0x5
    80004c00:	a8450513          	addi	a0,a0,-1404 # 80009680 <CONSOLE_STATUS+0x670>
    80004c04:	00001097          	auipc	ra,0x1
    80004c08:	d84080e7          	jalr	-636(ra) # 80005988 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004c0c:	00500313          	li	t1,5
    thread_dispatch();
    80004c10:	ffffc097          	auipc	ra,0xffffc
    80004c14:	778080e7          	jalr	1912(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004c18:	01000513          	li	a0,16
    80004c1c:	00000097          	auipc	ra,0x0
    80004c20:	f08080e7          	jalr	-248(ra) # 80004b24 <_ZL9fibonaccim>
    80004c24:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004c28:	00005517          	auipc	a0,0x5
    80004c2c:	a6850513          	addi	a0,a0,-1432 # 80009690 <CONSOLE_STATUS+0x680>
    80004c30:	00001097          	auipc	ra,0x1
    80004c34:	d58080e7          	jalr	-680(ra) # 80005988 <_Z11printStringPKc>
    80004c38:	00000613          	li	a2,0
    80004c3c:	00a00593          	li	a1,10
    80004c40:	0009051b          	sext.w	a0,s2
    80004c44:	00001097          	auipc	ra,0x1
    80004c48:	ef4080e7          	jalr	-268(ra) # 80005b38 <_Z8printIntiii>
    80004c4c:	00004517          	auipc	a0,0x4
    80004c50:	66c50513          	addi	a0,a0,1644 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004c54:	00001097          	auipc	ra,0x1
    80004c58:	d34080e7          	jalr	-716(ra) # 80005988 <_Z11printStringPKc>
    80004c5c:	0400006f          	j	80004c9c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004c60:	00005517          	auipc	a0,0x5
    80004c64:	a1850513          	addi	a0,a0,-1512 # 80009678 <CONSOLE_STATUS+0x668>
    80004c68:	00001097          	auipc	ra,0x1
    80004c6c:	d20080e7          	jalr	-736(ra) # 80005988 <_Z11printStringPKc>
    80004c70:	00000613          	li	a2,0
    80004c74:	00a00593          	li	a1,10
    80004c78:	00048513          	mv	a0,s1
    80004c7c:	00001097          	auipc	ra,0x1
    80004c80:	ebc080e7          	jalr	-324(ra) # 80005b38 <_Z8printIntiii>
    80004c84:	00004517          	auipc	a0,0x4
    80004c88:	63450513          	addi	a0,a0,1588 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004c8c:	00001097          	auipc	ra,0x1
    80004c90:	cfc080e7          	jalr	-772(ra) # 80005988 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004c94:	0014849b          	addiw	s1,s1,1
    80004c98:	0ff4f493          	andi	s1,s1,255
    80004c9c:	00f00793          	li	a5,15
    80004ca0:	fc97f0e3          	bgeu	a5,s1,80004c60 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004ca4:	00005517          	auipc	a0,0x5
    80004ca8:	9fc50513          	addi	a0,a0,-1540 # 800096a0 <CONSOLE_STATUS+0x690>
    80004cac:	00001097          	auipc	ra,0x1
    80004cb0:	cdc080e7          	jalr	-804(ra) # 80005988 <_Z11printStringPKc>
    finishedD = true;
    80004cb4:	00100793          	li	a5,1
    80004cb8:	00007717          	auipc	a4,0x7
    80004cbc:	02f70023          	sb	a5,32(a4) # 8000bcd8 <_ZL9finishedD>
    thread_dispatch();
    80004cc0:	ffffc097          	auipc	ra,0xffffc
    80004cc4:	6c8080e7          	jalr	1736(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004cc8:	01813083          	ld	ra,24(sp)
    80004ccc:	01013403          	ld	s0,16(sp)
    80004cd0:	00813483          	ld	s1,8(sp)
    80004cd4:	00013903          	ld	s2,0(sp)
    80004cd8:	02010113          	addi	sp,sp,32
    80004cdc:	00008067          	ret

0000000080004ce0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004ce0:	fe010113          	addi	sp,sp,-32
    80004ce4:	00113c23          	sd	ra,24(sp)
    80004ce8:	00813823          	sd	s0,16(sp)
    80004cec:	00913423          	sd	s1,8(sp)
    80004cf0:	01213023          	sd	s2,0(sp)
    80004cf4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004cf8:	00000493          	li	s1,0
    80004cfc:	0400006f          	j	80004d3c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004d00:	00005517          	auipc	a0,0x5
    80004d04:	94850513          	addi	a0,a0,-1720 # 80009648 <CONSOLE_STATUS+0x638>
    80004d08:	00001097          	auipc	ra,0x1
    80004d0c:	c80080e7          	jalr	-896(ra) # 80005988 <_Z11printStringPKc>
    80004d10:	00000613          	li	a2,0
    80004d14:	00a00593          	li	a1,10
    80004d18:	00048513          	mv	a0,s1
    80004d1c:	00001097          	auipc	ra,0x1
    80004d20:	e1c080e7          	jalr	-484(ra) # 80005b38 <_Z8printIntiii>
    80004d24:	00004517          	auipc	a0,0x4
    80004d28:	59450513          	addi	a0,a0,1428 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004d2c:	00001097          	auipc	ra,0x1
    80004d30:	c5c080e7          	jalr	-932(ra) # 80005988 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004d34:	0014849b          	addiw	s1,s1,1
    80004d38:	0ff4f493          	andi	s1,s1,255
    80004d3c:	00200793          	li	a5,2
    80004d40:	fc97f0e3          	bgeu	a5,s1,80004d00 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004d44:	00005517          	auipc	a0,0x5
    80004d48:	90c50513          	addi	a0,a0,-1780 # 80009650 <CONSOLE_STATUS+0x640>
    80004d4c:	00001097          	auipc	ra,0x1
    80004d50:	c3c080e7          	jalr	-964(ra) # 80005988 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004d54:	00700313          	li	t1,7
    thread_dispatch();
    80004d58:	ffffc097          	auipc	ra,0xffffc
    80004d5c:	630080e7          	jalr	1584(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004d60:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004d64:	00005517          	auipc	a0,0x5
    80004d68:	8fc50513          	addi	a0,a0,-1796 # 80009660 <CONSOLE_STATUS+0x650>
    80004d6c:	00001097          	auipc	ra,0x1
    80004d70:	c1c080e7          	jalr	-996(ra) # 80005988 <_Z11printStringPKc>
    80004d74:	00000613          	li	a2,0
    80004d78:	00a00593          	li	a1,10
    80004d7c:	0009051b          	sext.w	a0,s2
    80004d80:	00001097          	auipc	ra,0x1
    80004d84:	db8080e7          	jalr	-584(ra) # 80005b38 <_Z8printIntiii>
    80004d88:	00004517          	auipc	a0,0x4
    80004d8c:	53050513          	addi	a0,a0,1328 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004d90:	00001097          	auipc	ra,0x1
    80004d94:	bf8080e7          	jalr	-1032(ra) # 80005988 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004d98:	00c00513          	li	a0,12
    80004d9c:	00000097          	auipc	ra,0x0
    80004da0:	d88080e7          	jalr	-632(ra) # 80004b24 <_ZL9fibonaccim>
    80004da4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004da8:	00005517          	auipc	a0,0x5
    80004dac:	8c050513          	addi	a0,a0,-1856 # 80009668 <CONSOLE_STATUS+0x658>
    80004db0:	00001097          	auipc	ra,0x1
    80004db4:	bd8080e7          	jalr	-1064(ra) # 80005988 <_Z11printStringPKc>
    80004db8:	00000613          	li	a2,0
    80004dbc:	00a00593          	li	a1,10
    80004dc0:	0009051b          	sext.w	a0,s2
    80004dc4:	00001097          	auipc	ra,0x1
    80004dc8:	d74080e7          	jalr	-652(ra) # 80005b38 <_Z8printIntiii>
    80004dcc:	00004517          	auipc	a0,0x4
    80004dd0:	4ec50513          	addi	a0,a0,1260 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004dd4:	00001097          	auipc	ra,0x1
    80004dd8:	bb4080e7          	jalr	-1100(ra) # 80005988 <_Z11printStringPKc>
    80004ddc:	0400006f          	j	80004e1c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004de0:	00005517          	auipc	a0,0x5
    80004de4:	86850513          	addi	a0,a0,-1944 # 80009648 <CONSOLE_STATUS+0x638>
    80004de8:	00001097          	auipc	ra,0x1
    80004dec:	ba0080e7          	jalr	-1120(ra) # 80005988 <_Z11printStringPKc>
    80004df0:	00000613          	li	a2,0
    80004df4:	00a00593          	li	a1,10
    80004df8:	00048513          	mv	a0,s1
    80004dfc:	00001097          	auipc	ra,0x1
    80004e00:	d3c080e7          	jalr	-708(ra) # 80005b38 <_Z8printIntiii>
    80004e04:	00004517          	auipc	a0,0x4
    80004e08:	4b450513          	addi	a0,a0,1204 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004e0c:	00001097          	auipc	ra,0x1
    80004e10:	b7c080e7          	jalr	-1156(ra) # 80005988 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004e14:	0014849b          	addiw	s1,s1,1
    80004e18:	0ff4f493          	andi	s1,s1,255
    80004e1c:	00500793          	li	a5,5
    80004e20:	fc97f0e3          	bgeu	a5,s1,80004de0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004e24:	00004517          	auipc	a0,0x4
    80004e28:	7fc50513          	addi	a0,a0,2044 # 80009620 <CONSOLE_STATUS+0x610>
    80004e2c:	00001097          	auipc	ra,0x1
    80004e30:	b5c080e7          	jalr	-1188(ra) # 80005988 <_Z11printStringPKc>
    finishedC = true;
    80004e34:	00100793          	li	a5,1
    80004e38:	00007717          	auipc	a4,0x7
    80004e3c:	eaf700a3          	sb	a5,-351(a4) # 8000bcd9 <_ZL9finishedC>
    thread_dispatch();
    80004e40:	ffffc097          	auipc	ra,0xffffc
    80004e44:	548080e7          	jalr	1352(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004e48:	01813083          	ld	ra,24(sp)
    80004e4c:	01013403          	ld	s0,16(sp)
    80004e50:	00813483          	ld	s1,8(sp)
    80004e54:	00013903          	ld	s2,0(sp)
    80004e58:	02010113          	addi	sp,sp,32
    80004e5c:	00008067          	ret

0000000080004e60 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004e60:	fe010113          	addi	sp,sp,-32
    80004e64:	00113c23          	sd	ra,24(sp)
    80004e68:	00813823          	sd	s0,16(sp)
    80004e6c:	00913423          	sd	s1,8(sp)
    80004e70:	01213023          	sd	s2,0(sp)
    80004e74:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004e78:	00000913          	li	s2,0
    80004e7c:	0380006f          	j	80004eb4 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004e80:	ffffc097          	auipc	ra,0xffffc
    80004e84:	508080e7          	jalr	1288(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004e88:	00148493          	addi	s1,s1,1
    80004e8c:	000027b7          	lui	a5,0x2
    80004e90:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004e94:	0097ee63          	bltu	a5,s1,80004eb0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004e98:	00000713          	li	a4,0
    80004e9c:	000077b7          	lui	a5,0x7
    80004ea0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004ea4:	fce7eee3          	bltu	a5,a4,80004e80 <_ZL11workerBodyBPv+0x20>
    80004ea8:	00170713          	addi	a4,a4,1
    80004eac:	ff1ff06f          	j	80004e9c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004eb0:	00190913          	addi	s2,s2,1
    80004eb4:	00f00793          	li	a5,15
    80004eb8:	0527e063          	bltu	a5,s2,80004ef8 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004ebc:	00004517          	auipc	a0,0x4
    80004ec0:	77450513          	addi	a0,a0,1908 # 80009630 <CONSOLE_STATUS+0x620>
    80004ec4:	00001097          	auipc	ra,0x1
    80004ec8:	ac4080e7          	jalr	-1340(ra) # 80005988 <_Z11printStringPKc>
    80004ecc:	00000613          	li	a2,0
    80004ed0:	00a00593          	li	a1,10
    80004ed4:	0009051b          	sext.w	a0,s2
    80004ed8:	00001097          	auipc	ra,0x1
    80004edc:	c60080e7          	jalr	-928(ra) # 80005b38 <_Z8printIntiii>
    80004ee0:	00004517          	auipc	a0,0x4
    80004ee4:	3d850513          	addi	a0,a0,984 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004ee8:	00001097          	auipc	ra,0x1
    80004eec:	aa0080e7          	jalr	-1376(ra) # 80005988 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004ef0:	00000493          	li	s1,0
    80004ef4:	f99ff06f          	j	80004e8c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004ef8:	00004517          	auipc	a0,0x4
    80004efc:	74050513          	addi	a0,a0,1856 # 80009638 <CONSOLE_STATUS+0x628>
    80004f00:	00001097          	auipc	ra,0x1
    80004f04:	a88080e7          	jalr	-1400(ra) # 80005988 <_Z11printStringPKc>
    finishedB = true;
    80004f08:	00100793          	li	a5,1
    80004f0c:	00007717          	auipc	a4,0x7
    80004f10:	dcf70723          	sb	a5,-562(a4) # 8000bcda <_ZL9finishedB>
    thread_dispatch();
    80004f14:	ffffc097          	auipc	ra,0xffffc
    80004f18:	474080e7          	jalr	1140(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004f1c:	01813083          	ld	ra,24(sp)
    80004f20:	01013403          	ld	s0,16(sp)
    80004f24:	00813483          	ld	s1,8(sp)
    80004f28:	00013903          	ld	s2,0(sp)
    80004f2c:	02010113          	addi	sp,sp,32
    80004f30:	00008067          	ret

0000000080004f34 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004f34:	fe010113          	addi	sp,sp,-32
    80004f38:	00113c23          	sd	ra,24(sp)
    80004f3c:	00813823          	sd	s0,16(sp)
    80004f40:	00913423          	sd	s1,8(sp)
    80004f44:	01213023          	sd	s2,0(sp)
    80004f48:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004f4c:	00000913          	li	s2,0
    80004f50:	0380006f          	j	80004f88 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004f54:	ffffc097          	auipc	ra,0xffffc
    80004f58:	434080e7          	jalr	1076(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004f5c:	00148493          	addi	s1,s1,1
    80004f60:	000027b7          	lui	a5,0x2
    80004f64:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004f68:	0097ee63          	bltu	a5,s1,80004f84 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004f6c:	00000713          	li	a4,0
    80004f70:	000077b7          	lui	a5,0x7
    80004f74:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004f78:	fce7eee3          	bltu	a5,a4,80004f54 <_ZL11workerBodyAPv+0x20>
    80004f7c:	00170713          	addi	a4,a4,1
    80004f80:	ff1ff06f          	j	80004f70 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004f84:	00190913          	addi	s2,s2,1
    80004f88:	00900793          	li	a5,9
    80004f8c:	0527e063          	bltu	a5,s2,80004fcc <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004f90:	00004517          	auipc	a0,0x4
    80004f94:	68850513          	addi	a0,a0,1672 # 80009618 <CONSOLE_STATUS+0x608>
    80004f98:	00001097          	auipc	ra,0x1
    80004f9c:	9f0080e7          	jalr	-1552(ra) # 80005988 <_Z11printStringPKc>
    80004fa0:	00000613          	li	a2,0
    80004fa4:	00a00593          	li	a1,10
    80004fa8:	0009051b          	sext.w	a0,s2
    80004fac:	00001097          	auipc	ra,0x1
    80004fb0:	b8c080e7          	jalr	-1140(ra) # 80005b38 <_Z8printIntiii>
    80004fb4:	00004517          	auipc	a0,0x4
    80004fb8:	30450513          	addi	a0,a0,772 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004fbc:	00001097          	auipc	ra,0x1
    80004fc0:	9cc080e7          	jalr	-1588(ra) # 80005988 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004fc4:	00000493          	li	s1,0
    80004fc8:	f99ff06f          	j	80004f60 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004fcc:	00004517          	auipc	a0,0x4
    80004fd0:	65450513          	addi	a0,a0,1620 # 80009620 <CONSOLE_STATUS+0x610>
    80004fd4:	00001097          	auipc	ra,0x1
    80004fd8:	9b4080e7          	jalr	-1612(ra) # 80005988 <_Z11printStringPKc>
    finishedA = true;
    80004fdc:	00100793          	li	a5,1
    80004fe0:	00007717          	auipc	a4,0x7
    80004fe4:	cef70da3          	sb	a5,-773(a4) # 8000bcdb <_ZL9finishedA>
}
    80004fe8:	01813083          	ld	ra,24(sp)
    80004fec:	01013403          	ld	s0,16(sp)
    80004ff0:	00813483          	ld	s1,8(sp)
    80004ff4:	00013903          	ld	s2,0(sp)
    80004ff8:	02010113          	addi	sp,sp,32
    80004ffc:	00008067          	ret

0000000080005000 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005000:	fd010113          	addi	sp,sp,-48
    80005004:	02113423          	sd	ra,40(sp)
    80005008:	02813023          	sd	s0,32(sp)
    8000500c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005010:	00000613          	li	a2,0
    80005014:	00000597          	auipc	a1,0x0
    80005018:	f2058593          	addi	a1,a1,-224 # 80004f34 <_ZL11workerBodyAPv>
    8000501c:	fd040513          	addi	a0,s0,-48
    80005020:	ffffc097          	auipc	ra,0xffffc
    80005024:	264080e7          	jalr	612(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80005028:	00004517          	auipc	a0,0x4
    8000502c:	68850513          	addi	a0,a0,1672 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80005030:	00001097          	auipc	ra,0x1
    80005034:	958080e7          	jalr	-1704(ra) # 80005988 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005038:	00000613          	li	a2,0
    8000503c:	00000597          	auipc	a1,0x0
    80005040:	e2458593          	addi	a1,a1,-476 # 80004e60 <_ZL11workerBodyBPv>
    80005044:	fd840513          	addi	a0,s0,-40
    80005048:	ffffc097          	auipc	ra,0xffffc
    8000504c:	23c080e7          	jalr	572(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80005050:	00004517          	auipc	a0,0x4
    80005054:	67850513          	addi	a0,a0,1656 # 800096c8 <CONSOLE_STATUS+0x6b8>
    80005058:	00001097          	auipc	ra,0x1
    8000505c:	930080e7          	jalr	-1744(ra) # 80005988 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005060:	00000613          	li	a2,0
    80005064:	00000597          	auipc	a1,0x0
    80005068:	c7c58593          	addi	a1,a1,-900 # 80004ce0 <_ZL11workerBodyCPv>
    8000506c:	fe040513          	addi	a0,s0,-32
    80005070:	ffffc097          	auipc	ra,0xffffc
    80005074:	214080e7          	jalr	532(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80005078:	00004517          	auipc	a0,0x4
    8000507c:	66850513          	addi	a0,a0,1640 # 800096e0 <CONSOLE_STATUS+0x6d0>
    80005080:	00001097          	auipc	ra,0x1
    80005084:	908080e7          	jalr	-1784(ra) # 80005988 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005088:	00000613          	li	a2,0
    8000508c:	00000597          	auipc	a1,0x0
    80005090:	b0c58593          	addi	a1,a1,-1268 # 80004b98 <_ZL11workerBodyDPv>
    80005094:	fe840513          	addi	a0,s0,-24
    80005098:	ffffc097          	auipc	ra,0xffffc
    8000509c:	1ec080e7          	jalr	492(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800050a0:	00004517          	auipc	a0,0x4
    800050a4:	65850513          	addi	a0,a0,1624 # 800096f8 <CONSOLE_STATUS+0x6e8>
    800050a8:	00001097          	auipc	ra,0x1
    800050ac:	8e0080e7          	jalr	-1824(ra) # 80005988 <_Z11printStringPKc>
    800050b0:	00c0006f          	j	800050bc <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800050b4:	ffffc097          	auipc	ra,0xffffc
    800050b8:	2d4080e7          	jalr	724(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800050bc:	00007797          	auipc	a5,0x7
    800050c0:	c1f7c783          	lbu	a5,-993(a5) # 8000bcdb <_ZL9finishedA>
    800050c4:	fe0788e3          	beqz	a5,800050b4 <_Z18Threads_C_API_testv+0xb4>
    800050c8:	00007797          	auipc	a5,0x7
    800050cc:	c127c783          	lbu	a5,-1006(a5) # 8000bcda <_ZL9finishedB>
    800050d0:	fe0782e3          	beqz	a5,800050b4 <_Z18Threads_C_API_testv+0xb4>
    800050d4:	00007797          	auipc	a5,0x7
    800050d8:	c057c783          	lbu	a5,-1019(a5) # 8000bcd9 <_ZL9finishedC>
    800050dc:	fc078ce3          	beqz	a5,800050b4 <_Z18Threads_C_API_testv+0xb4>
    800050e0:	00007797          	auipc	a5,0x7
    800050e4:	bf87c783          	lbu	a5,-1032(a5) # 8000bcd8 <_ZL9finishedD>
    800050e8:	fc0786e3          	beqz	a5,800050b4 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800050ec:	02813083          	ld	ra,40(sp)
    800050f0:	02013403          	ld	s0,32(sp)
    800050f4:	03010113          	addi	sp,sp,48
    800050f8:	00008067          	ret

00000000800050fc <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800050fc:	fd010113          	addi	sp,sp,-48
    80005100:	02113423          	sd	ra,40(sp)
    80005104:	02813023          	sd	s0,32(sp)
    80005108:	00913c23          	sd	s1,24(sp)
    8000510c:	01213823          	sd	s2,16(sp)
    80005110:	01313423          	sd	s3,8(sp)
    80005114:	03010413          	addi	s0,sp,48
    80005118:	00050993          	mv	s3,a0
    8000511c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005120:	00000913          	li	s2,0
    80005124:	00c0006f          	j	80005130 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005128:	ffffd097          	auipc	ra,0xffffd
    8000512c:	718080e7          	jalr	1816(ra) # 80002840 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005130:	ffffc097          	auipc	ra,0xffffc
    80005134:	460080e7          	jalr	1120(ra) # 80001590 <_Z4getcv>
    80005138:	0005059b          	sext.w	a1,a0
    8000513c:	01b00793          	li	a5,27
    80005140:	02f58a63          	beq	a1,a5,80005174 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005144:	0084b503          	ld	a0,8(s1)
    80005148:	00001097          	auipc	ra,0x1
    8000514c:	c64080e7          	jalr	-924(ra) # 80005dac <_ZN9BufferCPP3putEi>
        i++;
    80005150:	0019071b          	addiw	a4,s2,1
    80005154:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005158:	0004a683          	lw	a3,0(s1)
    8000515c:	0026979b          	slliw	a5,a3,0x2
    80005160:	00d787bb          	addw	a5,a5,a3
    80005164:	0017979b          	slliw	a5,a5,0x1
    80005168:	02f767bb          	remw	a5,a4,a5
    8000516c:	fc0792e3          	bnez	a5,80005130 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005170:	fb9ff06f          	j	80005128 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005174:	00100793          	li	a5,1
    80005178:	00007717          	auipc	a4,0x7
    8000517c:	b6f72423          	sw	a5,-1176(a4) # 8000bce0 <_ZL9threadEnd>
    td->buffer->put('!');
    80005180:	0209b783          	ld	a5,32(s3)
    80005184:	02100593          	li	a1,33
    80005188:	0087b503          	ld	a0,8(a5)
    8000518c:	00001097          	auipc	ra,0x1
    80005190:	c20080e7          	jalr	-992(ra) # 80005dac <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005194:	0104b503          	ld	a0,16(s1)
    80005198:	ffffd097          	auipc	ra,0xffffd
    8000519c:	760080e7          	jalr	1888(ra) # 800028f8 <_ZN9Semaphore6signalEv>
}
    800051a0:	02813083          	ld	ra,40(sp)
    800051a4:	02013403          	ld	s0,32(sp)
    800051a8:	01813483          	ld	s1,24(sp)
    800051ac:	01013903          	ld	s2,16(sp)
    800051b0:	00813983          	ld	s3,8(sp)
    800051b4:	03010113          	addi	sp,sp,48
    800051b8:	00008067          	ret

00000000800051bc <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800051bc:	fe010113          	addi	sp,sp,-32
    800051c0:	00113c23          	sd	ra,24(sp)
    800051c4:	00813823          	sd	s0,16(sp)
    800051c8:	00913423          	sd	s1,8(sp)
    800051cc:	01213023          	sd	s2,0(sp)
    800051d0:	02010413          	addi	s0,sp,32
    800051d4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800051d8:	00000913          	li	s2,0
    800051dc:	00c0006f          	j	800051e8 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800051e0:	ffffd097          	auipc	ra,0xffffd
    800051e4:	660080e7          	jalr	1632(ra) # 80002840 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800051e8:	00007797          	auipc	a5,0x7
    800051ec:	af87a783          	lw	a5,-1288(a5) # 8000bce0 <_ZL9threadEnd>
    800051f0:	02079e63          	bnez	a5,8000522c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800051f4:	0004a583          	lw	a1,0(s1)
    800051f8:	0305859b          	addiw	a1,a1,48
    800051fc:	0084b503          	ld	a0,8(s1)
    80005200:	00001097          	auipc	ra,0x1
    80005204:	bac080e7          	jalr	-1108(ra) # 80005dac <_ZN9BufferCPP3putEi>
        i++;
    80005208:	0019071b          	addiw	a4,s2,1
    8000520c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005210:	0004a683          	lw	a3,0(s1)
    80005214:	0026979b          	slliw	a5,a3,0x2
    80005218:	00d787bb          	addw	a5,a5,a3
    8000521c:	0017979b          	slliw	a5,a5,0x1
    80005220:	02f767bb          	remw	a5,a4,a5
    80005224:	fc0792e3          	bnez	a5,800051e8 <_ZN12ProducerSync8producerEPv+0x2c>
    80005228:	fb9ff06f          	j	800051e0 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000522c:	0104b503          	ld	a0,16(s1)
    80005230:	ffffd097          	auipc	ra,0xffffd
    80005234:	6c8080e7          	jalr	1736(ra) # 800028f8 <_ZN9Semaphore6signalEv>
}
    80005238:	01813083          	ld	ra,24(sp)
    8000523c:	01013403          	ld	s0,16(sp)
    80005240:	00813483          	ld	s1,8(sp)
    80005244:	00013903          	ld	s2,0(sp)
    80005248:	02010113          	addi	sp,sp,32
    8000524c:	00008067          	ret

0000000080005250 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005250:	fd010113          	addi	sp,sp,-48
    80005254:	02113423          	sd	ra,40(sp)
    80005258:	02813023          	sd	s0,32(sp)
    8000525c:	00913c23          	sd	s1,24(sp)
    80005260:	01213823          	sd	s2,16(sp)
    80005264:	01313423          	sd	s3,8(sp)
    80005268:	01413023          	sd	s4,0(sp)
    8000526c:	03010413          	addi	s0,sp,48
    80005270:	00050993          	mv	s3,a0
    80005274:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005278:	00000a13          	li	s4,0
    8000527c:	01c0006f          	j	80005298 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005280:	ffffd097          	auipc	ra,0xffffd
    80005284:	5c0080e7          	jalr	1472(ra) # 80002840 <_ZN6Thread8dispatchEv>
    80005288:	0500006f          	j	800052d8 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000528c:	00a00513          	li	a0,10
    80005290:	ffffc097          	auipc	ra,0xffffc
    80005294:	340080e7          	jalr	832(ra) # 800015d0 <_Z4putcc>
    while (!threadEnd) {
    80005298:	00007797          	auipc	a5,0x7
    8000529c:	a487a783          	lw	a5,-1464(a5) # 8000bce0 <_ZL9threadEnd>
    800052a0:	06079263          	bnez	a5,80005304 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800052a4:	00893503          	ld	a0,8(s2)
    800052a8:	00001097          	auipc	ra,0x1
    800052ac:	b94080e7          	jalr	-1132(ra) # 80005e3c <_ZN9BufferCPP3getEv>
        i++;
    800052b0:	001a049b          	addiw	s1,s4,1
    800052b4:	00048a1b          	sext.w	s4,s1
        putc(key);
    800052b8:	0ff57513          	andi	a0,a0,255
    800052bc:	ffffc097          	auipc	ra,0xffffc
    800052c0:	314080e7          	jalr	788(ra) # 800015d0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800052c4:	00092703          	lw	a4,0(s2)
    800052c8:	0027179b          	slliw	a5,a4,0x2
    800052cc:	00e787bb          	addw	a5,a5,a4
    800052d0:	02f4e7bb          	remw	a5,s1,a5
    800052d4:	fa0786e3          	beqz	a5,80005280 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800052d8:	05000793          	li	a5,80
    800052dc:	02f4e4bb          	remw	s1,s1,a5
    800052e0:	fa049ce3          	bnez	s1,80005298 <_ZN12ConsumerSync8consumerEPv+0x48>
    800052e4:	fa9ff06f          	j	8000528c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800052e8:	0209b783          	ld	a5,32(s3)
    800052ec:	0087b503          	ld	a0,8(a5)
    800052f0:	00001097          	auipc	ra,0x1
    800052f4:	b4c080e7          	jalr	-1204(ra) # 80005e3c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800052f8:	0ff57513          	andi	a0,a0,255
    800052fc:	ffffd097          	auipc	ra,0xffffd
    80005300:	6b8080e7          	jalr	1720(ra) # 800029b4 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005304:	0209b783          	ld	a5,32(s3)
    80005308:	0087b503          	ld	a0,8(a5)
    8000530c:	00001097          	auipc	ra,0x1
    80005310:	bbc080e7          	jalr	-1092(ra) # 80005ec8 <_ZN9BufferCPP6getCntEv>
    80005314:	fca04ae3          	bgtz	a0,800052e8 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005318:	01093503          	ld	a0,16(s2)
    8000531c:	ffffd097          	auipc	ra,0xffffd
    80005320:	5dc080e7          	jalr	1500(ra) # 800028f8 <_ZN9Semaphore6signalEv>
}
    80005324:	02813083          	ld	ra,40(sp)
    80005328:	02013403          	ld	s0,32(sp)
    8000532c:	01813483          	ld	s1,24(sp)
    80005330:	01013903          	ld	s2,16(sp)
    80005334:	00813983          	ld	s3,8(sp)
    80005338:	00013a03          	ld	s4,0(sp)
    8000533c:	03010113          	addi	sp,sp,48
    80005340:	00008067          	ret

0000000080005344 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005344:	f8010113          	addi	sp,sp,-128
    80005348:	06113c23          	sd	ra,120(sp)
    8000534c:	06813823          	sd	s0,112(sp)
    80005350:	06913423          	sd	s1,104(sp)
    80005354:	07213023          	sd	s2,96(sp)
    80005358:	05313c23          	sd	s3,88(sp)
    8000535c:	05413823          	sd	s4,80(sp)
    80005360:	05513423          	sd	s5,72(sp)
    80005364:	05613023          	sd	s6,64(sp)
    80005368:	03713c23          	sd	s7,56(sp)
    8000536c:	03813823          	sd	s8,48(sp)
    80005370:	03913423          	sd	s9,40(sp)
    80005374:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005378:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    8000537c:	00004517          	auipc	a0,0x4
    80005380:	1b450513          	addi	a0,a0,436 # 80009530 <CONSOLE_STATUS+0x520>
    80005384:	00000097          	auipc	ra,0x0
    80005388:	604080e7          	jalr	1540(ra) # 80005988 <_Z11printStringPKc>
    getString(input, 30);
    8000538c:	01e00593          	li	a1,30
    80005390:	f8040493          	addi	s1,s0,-128
    80005394:	00048513          	mv	a0,s1
    80005398:	00000097          	auipc	ra,0x0
    8000539c:	678080e7          	jalr	1656(ra) # 80005a10 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800053a0:	00048513          	mv	a0,s1
    800053a4:	00000097          	auipc	ra,0x0
    800053a8:	744080e7          	jalr	1860(ra) # 80005ae8 <_Z11stringToIntPKc>
    800053ac:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800053b0:	00004517          	auipc	a0,0x4
    800053b4:	1a050513          	addi	a0,a0,416 # 80009550 <CONSOLE_STATUS+0x540>
    800053b8:	00000097          	auipc	ra,0x0
    800053bc:	5d0080e7          	jalr	1488(ra) # 80005988 <_Z11printStringPKc>
    getString(input, 30);
    800053c0:	01e00593          	li	a1,30
    800053c4:	00048513          	mv	a0,s1
    800053c8:	00000097          	auipc	ra,0x0
    800053cc:	648080e7          	jalr	1608(ra) # 80005a10 <_Z9getStringPci>
    n = stringToInt(input);
    800053d0:	00048513          	mv	a0,s1
    800053d4:	00000097          	auipc	ra,0x0
    800053d8:	714080e7          	jalr	1812(ra) # 80005ae8 <_Z11stringToIntPKc>
    800053dc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800053e0:	00004517          	auipc	a0,0x4
    800053e4:	19050513          	addi	a0,a0,400 # 80009570 <CONSOLE_STATUS+0x560>
    800053e8:	00000097          	auipc	ra,0x0
    800053ec:	5a0080e7          	jalr	1440(ra) # 80005988 <_Z11printStringPKc>
    800053f0:	00000613          	li	a2,0
    800053f4:	00a00593          	li	a1,10
    800053f8:	00090513          	mv	a0,s2
    800053fc:	00000097          	auipc	ra,0x0
    80005400:	73c080e7          	jalr	1852(ra) # 80005b38 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005404:	00004517          	auipc	a0,0x4
    80005408:	18450513          	addi	a0,a0,388 # 80009588 <CONSOLE_STATUS+0x578>
    8000540c:	00000097          	auipc	ra,0x0
    80005410:	57c080e7          	jalr	1404(ra) # 80005988 <_Z11printStringPKc>
    80005414:	00000613          	li	a2,0
    80005418:	00a00593          	li	a1,10
    8000541c:	00048513          	mv	a0,s1
    80005420:	00000097          	auipc	ra,0x0
    80005424:	718080e7          	jalr	1816(ra) # 80005b38 <_Z8printIntiii>
    printString(".\n");
    80005428:	00004517          	auipc	a0,0x4
    8000542c:	17850513          	addi	a0,a0,376 # 800095a0 <CONSOLE_STATUS+0x590>
    80005430:	00000097          	auipc	ra,0x0
    80005434:	558080e7          	jalr	1368(ra) # 80005988 <_Z11printStringPKc>
    if(threadNum > n) {
    80005438:	0324c463          	blt	s1,s2,80005460 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    8000543c:	03205c63          	blez	s2,80005474 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005440:	03800513          	li	a0,56
    80005444:	ffffd097          	auipc	ra,0xffffd
    80005448:	0a0080e7          	jalr	160(ra) # 800024e4 <_Znwm>
    8000544c:	00050a93          	mv	s5,a0
    80005450:	00048593          	mv	a1,s1
    80005454:	00001097          	auipc	ra,0x1
    80005458:	804080e7          	jalr	-2044(ra) # 80005c58 <_ZN9BufferCPPC1Ei>
    8000545c:	0300006f          	j	8000548c <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005460:	00004517          	auipc	a0,0x4
    80005464:	14850513          	addi	a0,a0,328 # 800095a8 <CONSOLE_STATUS+0x598>
    80005468:	00000097          	auipc	ra,0x0
    8000546c:	520080e7          	jalr	1312(ra) # 80005988 <_Z11printStringPKc>
        return;
    80005470:	0140006f          	j	80005484 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005474:	00004517          	auipc	a0,0x4
    80005478:	17450513          	addi	a0,a0,372 # 800095e8 <CONSOLE_STATUS+0x5d8>
    8000547c:	00000097          	auipc	ra,0x0
    80005480:	50c080e7          	jalr	1292(ra) # 80005988 <_Z11printStringPKc>
        return;
    80005484:	000b8113          	mv	sp,s7
    80005488:	2380006f          	j	800056c0 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    8000548c:	01000513          	li	a0,16
    80005490:	ffffd097          	auipc	ra,0xffffd
    80005494:	054080e7          	jalr	84(ra) # 800024e4 <_Znwm>
    80005498:	00050493          	mv	s1,a0
    8000549c:	00000593          	li	a1,0
    800054a0:	ffffd097          	auipc	ra,0xffffd
    800054a4:	3f0080e7          	jalr	1008(ra) # 80002890 <_ZN9SemaphoreC1Ej>
    800054a8:	00007797          	auipc	a5,0x7
    800054ac:	8497b023          	sd	s1,-1984(a5) # 8000bce8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800054b0:	00391793          	slli	a5,s2,0x3
    800054b4:	00f78793          	addi	a5,a5,15
    800054b8:	ff07f793          	andi	a5,a5,-16
    800054bc:	40f10133          	sub	sp,sp,a5
    800054c0:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800054c4:	0019071b          	addiw	a4,s2,1
    800054c8:	00171793          	slli	a5,a4,0x1
    800054cc:	00e787b3          	add	a5,a5,a4
    800054d0:	00379793          	slli	a5,a5,0x3
    800054d4:	00f78793          	addi	a5,a5,15
    800054d8:	ff07f793          	andi	a5,a5,-16
    800054dc:	40f10133          	sub	sp,sp,a5
    800054e0:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800054e4:	00191c13          	slli	s8,s2,0x1
    800054e8:	012c07b3          	add	a5,s8,s2
    800054ec:	00379793          	slli	a5,a5,0x3
    800054f0:	00fa07b3          	add	a5,s4,a5
    800054f4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800054f8:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800054fc:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005500:	02800513          	li	a0,40
    80005504:	ffffd097          	auipc	ra,0xffffd
    80005508:	fe0080e7          	jalr	-32(ra) # 800024e4 <_Znwm>
    8000550c:	00050b13          	mv	s6,a0
    80005510:	012c0c33          	add	s8,s8,s2
    80005514:	003c1c13          	slli	s8,s8,0x3
    80005518:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000551c:	ffffd097          	auipc	ra,0xffffd
    80005520:	2a0080e7          	jalr	672(ra) # 800027bc <_ZN6ThreadC1Ev>
    80005524:	00006797          	auipc	a5,0x6
    80005528:	6a478793          	addi	a5,a5,1700 # 8000bbc8 <_ZTV12ConsumerSync+0x10>
    8000552c:	00fb3023          	sd	a5,0(s6)
    80005530:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005534:	000b0513          	mv	a0,s6
    80005538:	ffffd097          	auipc	ra,0xffffd
    8000553c:	2b4080e7          	jalr	692(ra) # 800027ec <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005540:	00000493          	li	s1,0
    80005544:	0380006f          	j	8000557c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005548:	00006797          	auipc	a5,0x6
    8000554c:	65878793          	addi	a5,a5,1624 # 8000bba0 <_ZTV12ProducerSync+0x10>
    80005550:	00fcb023          	sd	a5,0(s9)
    80005554:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005558:	00349793          	slli	a5,s1,0x3
    8000555c:	00f987b3          	add	a5,s3,a5
    80005560:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005564:	00349793          	slli	a5,s1,0x3
    80005568:	00f987b3          	add	a5,s3,a5
    8000556c:	0007b503          	ld	a0,0(a5)
    80005570:	ffffd097          	auipc	ra,0xffffd
    80005574:	27c080e7          	jalr	636(ra) # 800027ec <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005578:	0014849b          	addiw	s1,s1,1
    8000557c:	0b24d063          	bge	s1,s2,8000561c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005580:	00149793          	slli	a5,s1,0x1
    80005584:	009787b3          	add	a5,a5,s1
    80005588:	00379793          	slli	a5,a5,0x3
    8000558c:	00fa07b3          	add	a5,s4,a5
    80005590:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005594:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005598:	00006717          	auipc	a4,0x6
    8000559c:	75073703          	ld	a4,1872(a4) # 8000bce8 <_ZL10waitForAll>
    800055a0:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800055a4:	02905863          	blez	s1,800055d4 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800055a8:	02800513          	li	a0,40
    800055ac:	ffffd097          	auipc	ra,0xffffd
    800055b0:	f38080e7          	jalr	-200(ra) # 800024e4 <_Znwm>
    800055b4:	00050c93          	mv	s9,a0
    800055b8:	00149c13          	slli	s8,s1,0x1
    800055bc:	009c0c33          	add	s8,s8,s1
    800055c0:	003c1c13          	slli	s8,s8,0x3
    800055c4:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800055c8:	ffffd097          	auipc	ra,0xffffd
    800055cc:	1f4080e7          	jalr	500(ra) # 800027bc <_ZN6ThreadC1Ev>
    800055d0:	f79ff06f          	j	80005548 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800055d4:	02800513          	li	a0,40
    800055d8:	ffffd097          	auipc	ra,0xffffd
    800055dc:	f0c080e7          	jalr	-244(ra) # 800024e4 <_Znwm>
    800055e0:	00050c93          	mv	s9,a0
    800055e4:	00149c13          	slli	s8,s1,0x1
    800055e8:	009c0c33          	add	s8,s8,s1
    800055ec:	003c1c13          	slli	s8,s8,0x3
    800055f0:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800055f4:	ffffd097          	auipc	ra,0xffffd
    800055f8:	1c8080e7          	jalr	456(ra) # 800027bc <_ZN6ThreadC1Ev>
    800055fc:	00006797          	auipc	a5,0x6
    80005600:	57c78793          	addi	a5,a5,1404 # 8000bb78 <_ZTV16ProducerKeyboard+0x10>
    80005604:	00fcb023          	sd	a5,0(s9)
    80005608:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    8000560c:	00349793          	slli	a5,s1,0x3
    80005610:	00f987b3          	add	a5,s3,a5
    80005614:	0197b023          	sd	s9,0(a5)
    80005618:	f4dff06f          	j	80005564 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    8000561c:	ffffd097          	auipc	ra,0xffffd
    80005620:	224080e7          	jalr	548(ra) # 80002840 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005624:	00000493          	li	s1,0
    80005628:	00994e63          	blt	s2,s1,80005644 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    8000562c:	00006517          	auipc	a0,0x6
    80005630:	6bc53503          	ld	a0,1724(a0) # 8000bce8 <_ZL10waitForAll>
    80005634:	ffffd097          	auipc	ra,0xffffd
    80005638:	298080e7          	jalr	664(ra) # 800028cc <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000563c:	0014849b          	addiw	s1,s1,1
    80005640:	fe9ff06f          	j	80005628 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005644:	00000493          	li	s1,0
    80005648:	0080006f          	j	80005650 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    8000564c:	0014849b          	addiw	s1,s1,1
    80005650:	0324d263          	bge	s1,s2,80005674 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005654:	00349793          	slli	a5,s1,0x3
    80005658:	00f987b3          	add	a5,s3,a5
    8000565c:	0007b503          	ld	a0,0(a5)
    80005660:	fe0506e3          	beqz	a0,8000564c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005664:	00053783          	ld	a5,0(a0)
    80005668:	0087b783          	ld	a5,8(a5)
    8000566c:	000780e7          	jalr	a5
    80005670:	fddff06f          	j	8000564c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005674:	000b0a63          	beqz	s6,80005688 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005678:	000b3783          	ld	a5,0(s6)
    8000567c:	0087b783          	ld	a5,8(a5)
    80005680:	000b0513          	mv	a0,s6
    80005684:	000780e7          	jalr	a5
    delete waitForAll;
    80005688:	00006517          	auipc	a0,0x6
    8000568c:	66053503          	ld	a0,1632(a0) # 8000bce8 <_ZL10waitForAll>
    80005690:	00050863          	beqz	a0,800056a0 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005694:	00053783          	ld	a5,0(a0)
    80005698:	0087b783          	ld	a5,8(a5)
    8000569c:	000780e7          	jalr	a5
    delete buffer;
    800056a0:	000a8e63          	beqz	s5,800056bc <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800056a4:	000a8513          	mv	a0,s5
    800056a8:	00001097          	auipc	ra,0x1
    800056ac:	8a8080e7          	jalr	-1880(ra) # 80005f50 <_ZN9BufferCPPD1Ev>
    800056b0:	000a8513          	mv	a0,s5
    800056b4:	ffffd097          	auipc	ra,0xffffd
    800056b8:	e80080e7          	jalr	-384(ra) # 80002534 <_ZdlPv>
    800056bc:	000b8113          	mv	sp,s7

}
    800056c0:	f8040113          	addi	sp,s0,-128
    800056c4:	07813083          	ld	ra,120(sp)
    800056c8:	07013403          	ld	s0,112(sp)
    800056cc:	06813483          	ld	s1,104(sp)
    800056d0:	06013903          	ld	s2,96(sp)
    800056d4:	05813983          	ld	s3,88(sp)
    800056d8:	05013a03          	ld	s4,80(sp)
    800056dc:	04813a83          	ld	s5,72(sp)
    800056e0:	04013b03          	ld	s6,64(sp)
    800056e4:	03813b83          	ld	s7,56(sp)
    800056e8:	03013c03          	ld	s8,48(sp)
    800056ec:	02813c83          	ld	s9,40(sp)
    800056f0:	08010113          	addi	sp,sp,128
    800056f4:	00008067          	ret
    800056f8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800056fc:	000a8513          	mv	a0,s5
    80005700:	ffffd097          	auipc	ra,0xffffd
    80005704:	e34080e7          	jalr	-460(ra) # 80002534 <_ZdlPv>
    80005708:	00048513          	mv	a0,s1
    8000570c:	00007097          	auipc	ra,0x7
    80005710:	6bc080e7          	jalr	1724(ra) # 8000cdc8 <_Unwind_Resume>
    80005714:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005718:	00048513          	mv	a0,s1
    8000571c:	ffffd097          	auipc	ra,0xffffd
    80005720:	e18080e7          	jalr	-488(ra) # 80002534 <_ZdlPv>
    80005724:	00090513          	mv	a0,s2
    80005728:	00007097          	auipc	ra,0x7
    8000572c:	6a0080e7          	jalr	1696(ra) # 8000cdc8 <_Unwind_Resume>
    80005730:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005734:	000b0513          	mv	a0,s6
    80005738:	ffffd097          	auipc	ra,0xffffd
    8000573c:	dfc080e7          	jalr	-516(ra) # 80002534 <_ZdlPv>
    80005740:	00048513          	mv	a0,s1
    80005744:	00007097          	auipc	ra,0x7
    80005748:	684080e7          	jalr	1668(ra) # 8000cdc8 <_Unwind_Resume>
    8000574c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005750:	000c8513          	mv	a0,s9
    80005754:	ffffd097          	auipc	ra,0xffffd
    80005758:	de0080e7          	jalr	-544(ra) # 80002534 <_ZdlPv>
    8000575c:	00048513          	mv	a0,s1
    80005760:	00007097          	auipc	ra,0x7
    80005764:	668080e7          	jalr	1640(ra) # 8000cdc8 <_Unwind_Resume>
    80005768:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    8000576c:	000c8513          	mv	a0,s9
    80005770:	ffffd097          	auipc	ra,0xffffd
    80005774:	dc4080e7          	jalr	-572(ra) # 80002534 <_ZdlPv>
    80005778:	00048513          	mv	a0,s1
    8000577c:	00007097          	auipc	ra,0x7
    80005780:	64c080e7          	jalr	1612(ra) # 8000cdc8 <_Unwind_Resume>

0000000080005784 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005784:	ff010113          	addi	sp,sp,-16
    80005788:	00113423          	sd	ra,8(sp)
    8000578c:	00813023          	sd	s0,0(sp)
    80005790:	01010413          	addi	s0,sp,16
    80005794:	00006797          	auipc	a5,0x6
    80005798:	43478793          	addi	a5,a5,1076 # 8000bbc8 <_ZTV12ConsumerSync+0x10>
    8000579c:	00f53023          	sd	a5,0(a0)
    800057a0:	ffffd097          	auipc	ra,0xffffd
    800057a4:	ef8080e7          	jalr	-264(ra) # 80002698 <_ZN6ThreadD1Ev>
    800057a8:	00813083          	ld	ra,8(sp)
    800057ac:	00013403          	ld	s0,0(sp)
    800057b0:	01010113          	addi	sp,sp,16
    800057b4:	00008067          	ret

00000000800057b8 <_ZN12ConsumerSyncD0Ev>:
    800057b8:	fe010113          	addi	sp,sp,-32
    800057bc:	00113c23          	sd	ra,24(sp)
    800057c0:	00813823          	sd	s0,16(sp)
    800057c4:	00913423          	sd	s1,8(sp)
    800057c8:	02010413          	addi	s0,sp,32
    800057cc:	00050493          	mv	s1,a0
    800057d0:	00006797          	auipc	a5,0x6
    800057d4:	3f878793          	addi	a5,a5,1016 # 8000bbc8 <_ZTV12ConsumerSync+0x10>
    800057d8:	00f53023          	sd	a5,0(a0)
    800057dc:	ffffd097          	auipc	ra,0xffffd
    800057e0:	ebc080e7          	jalr	-324(ra) # 80002698 <_ZN6ThreadD1Ev>
    800057e4:	00048513          	mv	a0,s1
    800057e8:	ffffd097          	auipc	ra,0xffffd
    800057ec:	d4c080e7          	jalr	-692(ra) # 80002534 <_ZdlPv>
    800057f0:	01813083          	ld	ra,24(sp)
    800057f4:	01013403          	ld	s0,16(sp)
    800057f8:	00813483          	ld	s1,8(sp)
    800057fc:	02010113          	addi	sp,sp,32
    80005800:	00008067          	ret

0000000080005804 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005804:	ff010113          	addi	sp,sp,-16
    80005808:	00113423          	sd	ra,8(sp)
    8000580c:	00813023          	sd	s0,0(sp)
    80005810:	01010413          	addi	s0,sp,16
    80005814:	00006797          	auipc	a5,0x6
    80005818:	38c78793          	addi	a5,a5,908 # 8000bba0 <_ZTV12ProducerSync+0x10>
    8000581c:	00f53023          	sd	a5,0(a0)
    80005820:	ffffd097          	auipc	ra,0xffffd
    80005824:	e78080e7          	jalr	-392(ra) # 80002698 <_ZN6ThreadD1Ev>
    80005828:	00813083          	ld	ra,8(sp)
    8000582c:	00013403          	ld	s0,0(sp)
    80005830:	01010113          	addi	sp,sp,16
    80005834:	00008067          	ret

0000000080005838 <_ZN12ProducerSyncD0Ev>:
    80005838:	fe010113          	addi	sp,sp,-32
    8000583c:	00113c23          	sd	ra,24(sp)
    80005840:	00813823          	sd	s0,16(sp)
    80005844:	00913423          	sd	s1,8(sp)
    80005848:	02010413          	addi	s0,sp,32
    8000584c:	00050493          	mv	s1,a0
    80005850:	00006797          	auipc	a5,0x6
    80005854:	35078793          	addi	a5,a5,848 # 8000bba0 <_ZTV12ProducerSync+0x10>
    80005858:	00f53023          	sd	a5,0(a0)
    8000585c:	ffffd097          	auipc	ra,0xffffd
    80005860:	e3c080e7          	jalr	-452(ra) # 80002698 <_ZN6ThreadD1Ev>
    80005864:	00048513          	mv	a0,s1
    80005868:	ffffd097          	auipc	ra,0xffffd
    8000586c:	ccc080e7          	jalr	-820(ra) # 80002534 <_ZdlPv>
    80005870:	01813083          	ld	ra,24(sp)
    80005874:	01013403          	ld	s0,16(sp)
    80005878:	00813483          	ld	s1,8(sp)
    8000587c:	02010113          	addi	sp,sp,32
    80005880:	00008067          	ret

0000000080005884 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005884:	ff010113          	addi	sp,sp,-16
    80005888:	00113423          	sd	ra,8(sp)
    8000588c:	00813023          	sd	s0,0(sp)
    80005890:	01010413          	addi	s0,sp,16
    80005894:	00006797          	auipc	a5,0x6
    80005898:	2e478793          	addi	a5,a5,740 # 8000bb78 <_ZTV16ProducerKeyboard+0x10>
    8000589c:	00f53023          	sd	a5,0(a0)
    800058a0:	ffffd097          	auipc	ra,0xffffd
    800058a4:	df8080e7          	jalr	-520(ra) # 80002698 <_ZN6ThreadD1Ev>
    800058a8:	00813083          	ld	ra,8(sp)
    800058ac:	00013403          	ld	s0,0(sp)
    800058b0:	01010113          	addi	sp,sp,16
    800058b4:	00008067          	ret

00000000800058b8 <_ZN16ProducerKeyboardD0Ev>:
    800058b8:	fe010113          	addi	sp,sp,-32
    800058bc:	00113c23          	sd	ra,24(sp)
    800058c0:	00813823          	sd	s0,16(sp)
    800058c4:	00913423          	sd	s1,8(sp)
    800058c8:	02010413          	addi	s0,sp,32
    800058cc:	00050493          	mv	s1,a0
    800058d0:	00006797          	auipc	a5,0x6
    800058d4:	2a878793          	addi	a5,a5,680 # 8000bb78 <_ZTV16ProducerKeyboard+0x10>
    800058d8:	00f53023          	sd	a5,0(a0)
    800058dc:	ffffd097          	auipc	ra,0xffffd
    800058e0:	dbc080e7          	jalr	-580(ra) # 80002698 <_ZN6ThreadD1Ev>
    800058e4:	00048513          	mv	a0,s1
    800058e8:	ffffd097          	auipc	ra,0xffffd
    800058ec:	c4c080e7          	jalr	-948(ra) # 80002534 <_ZdlPv>
    800058f0:	01813083          	ld	ra,24(sp)
    800058f4:	01013403          	ld	s0,16(sp)
    800058f8:	00813483          	ld	s1,8(sp)
    800058fc:	02010113          	addi	sp,sp,32
    80005900:	00008067          	ret

0000000080005904 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005904:	ff010113          	addi	sp,sp,-16
    80005908:	00113423          	sd	ra,8(sp)
    8000590c:	00813023          	sd	s0,0(sp)
    80005910:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005914:	02053583          	ld	a1,32(a0)
    80005918:	fffff097          	auipc	ra,0xfffff
    8000591c:	7e4080e7          	jalr	2020(ra) # 800050fc <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005920:	00813083          	ld	ra,8(sp)
    80005924:	00013403          	ld	s0,0(sp)
    80005928:	01010113          	addi	sp,sp,16
    8000592c:	00008067          	ret

0000000080005930 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005930:	ff010113          	addi	sp,sp,-16
    80005934:	00113423          	sd	ra,8(sp)
    80005938:	00813023          	sd	s0,0(sp)
    8000593c:	01010413          	addi	s0,sp,16
        producer(td);
    80005940:	02053583          	ld	a1,32(a0)
    80005944:	00000097          	auipc	ra,0x0
    80005948:	878080e7          	jalr	-1928(ra) # 800051bc <_ZN12ProducerSync8producerEPv>
    }
    8000594c:	00813083          	ld	ra,8(sp)
    80005950:	00013403          	ld	s0,0(sp)
    80005954:	01010113          	addi	sp,sp,16
    80005958:	00008067          	ret

000000008000595c <_ZN12ConsumerSync3runEv>:
    void run() override {
    8000595c:	ff010113          	addi	sp,sp,-16
    80005960:	00113423          	sd	ra,8(sp)
    80005964:	00813023          	sd	s0,0(sp)
    80005968:	01010413          	addi	s0,sp,16
        consumer(td);
    8000596c:	02053583          	ld	a1,32(a0)
    80005970:	00000097          	auipc	ra,0x0
    80005974:	8e0080e7          	jalr	-1824(ra) # 80005250 <_ZN12ConsumerSync8consumerEPv>
    }
    80005978:	00813083          	ld	ra,8(sp)
    8000597c:	00013403          	ld	s0,0(sp)
    80005980:	01010113          	addi	sp,sp,16
    80005984:	00008067          	ret

0000000080005988 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005988:	fe010113          	addi	sp,sp,-32
    8000598c:	00113c23          	sd	ra,24(sp)
    80005990:	00813823          	sd	s0,16(sp)
    80005994:	00913423          	sd	s1,8(sp)
    80005998:	02010413          	addi	s0,sp,32
    8000599c:	00050493          	mv	s1,a0
    LOCK();
    800059a0:	00100613          	li	a2,1
    800059a4:	00000593          	li	a1,0
    800059a8:	00006517          	auipc	a0,0x6
    800059ac:	34850513          	addi	a0,a0,840 # 8000bcf0 <lockPrint>
    800059b0:	ffffb097          	auipc	ra,0xffffb
    800059b4:	7f4080e7          	jalr	2036(ra) # 800011a4 <copy_and_swap>
    800059b8:	00050863          	beqz	a0,800059c8 <_Z11printStringPKc+0x40>
    800059bc:	ffffc097          	auipc	ra,0xffffc
    800059c0:	9cc080e7          	jalr	-1588(ra) # 80001388 <_Z15thread_dispatchv>
    800059c4:	fddff06f          	j	800059a0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800059c8:	0004c503          	lbu	a0,0(s1)
    800059cc:	00050a63          	beqz	a0,800059e0 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800059d0:	ffffc097          	auipc	ra,0xffffc
    800059d4:	c00080e7          	jalr	-1024(ra) # 800015d0 <_Z4putcc>
        string++;
    800059d8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800059dc:	fedff06f          	j	800059c8 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800059e0:	00000613          	li	a2,0
    800059e4:	00100593          	li	a1,1
    800059e8:	00006517          	auipc	a0,0x6
    800059ec:	30850513          	addi	a0,a0,776 # 8000bcf0 <lockPrint>
    800059f0:	ffffb097          	auipc	ra,0xffffb
    800059f4:	7b4080e7          	jalr	1972(ra) # 800011a4 <copy_and_swap>
    800059f8:	fe0514e3          	bnez	a0,800059e0 <_Z11printStringPKc+0x58>
}
    800059fc:	01813083          	ld	ra,24(sp)
    80005a00:	01013403          	ld	s0,16(sp)
    80005a04:	00813483          	ld	s1,8(sp)
    80005a08:	02010113          	addi	sp,sp,32
    80005a0c:	00008067          	ret

0000000080005a10 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005a10:	fd010113          	addi	sp,sp,-48
    80005a14:	02113423          	sd	ra,40(sp)
    80005a18:	02813023          	sd	s0,32(sp)
    80005a1c:	00913c23          	sd	s1,24(sp)
    80005a20:	01213823          	sd	s2,16(sp)
    80005a24:	01313423          	sd	s3,8(sp)
    80005a28:	01413023          	sd	s4,0(sp)
    80005a2c:	03010413          	addi	s0,sp,48
    80005a30:	00050993          	mv	s3,a0
    80005a34:	00058a13          	mv	s4,a1
    LOCK();
    80005a38:	00100613          	li	a2,1
    80005a3c:	00000593          	li	a1,0
    80005a40:	00006517          	auipc	a0,0x6
    80005a44:	2b050513          	addi	a0,a0,688 # 8000bcf0 <lockPrint>
    80005a48:	ffffb097          	auipc	ra,0xffffb
    80005a4c:	75c080e7          	jalr	1884(ra) # 800011a4 <copy_and_swap>
    80005a50:	00050863          	beqz	a0,80005a60 <_Z9getStringPci+0x50>
    80005a54:	ffffc097          	auipc	ra,0xffffc
    80005a58:	934080e7          	jalr	-1740(ra) # 80001388 <_Z15thread_dispatchv>
    80005a5c:	fddff06f          	j	80005a38 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005a60:	00000913          	li	s2,0
    80005a64:	00090493          	mv	s1,s2
    80005a68:	0019091b          	addiw	s2,s2,1
    80005a6c:	03495a63          	bge	s2,s4,80005aa0 <_Z9getStringPci+0x90>
        cc = getc();
    80005a70:	ffffc097          	auipc	ra,0xffffc
    80005a74:	b20080e7          	jalr	-1248(ra) # 80001590 <_Z4getcv>
        if(cc < 1)
    80005a78:	02050463          	beqz	a0,80005aa0 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005a7c:	009984b3          	add	s1,s3,s1
    80005a80:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005a84:	00a00793          	li	a5,10
    80005a88:	00f50a63          	beq	a0,a5,80005a9c <_Z9getStringPci+0x8c>
    80005a8c:	00d00793          	li	a5,13
    80005a90:	fcf51ae3          	bne	a0,a5,80005a64 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005a94:	00090493          	mv	s1,s2
    80005a98:	0080006f          	j	80005aa0 <_Z9getStringPci+0x90>
    80005a9c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005aa0:	009984b3          	add	s1,s3,s1
    80005aa4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005aa8:	00000613          	li	a2,0
    80005aac:	00100593          	li	a1,1
    80005ab0:	00006517          	auipc	a0,0x6
    80005ab4:	24050513          	addi	a0,a0,576 # 8000bcf0 <lockPrint>
    80005ab8:	ffffb097          	auipc	ra,0xffffb
    80005abc:	6ec080e7          	jalr	1772(ra) # 800011a4 <copy_and_swap>
    80005ac0:	fe0514e3          	bnez	a0,80005aa8 <_Z9getStringPci+0x98>
    return buf;
}
    80005ac4:	00098513          	mv	a0,s3
    80005ac8:	02813083          	ld	ra,40(sp)
    80005acc:	02013403          	ld	s0,32(sp)
    80005ad0:	01813483          	ld	s1,24(sp)
    80005ad4:	01013903          	ld	s2,16(sp)
    80005ad8:	00813983          	ld	s3,8(sp)
    80005adc:	00013a03          	ld	s4,0(sp)
    80005ae0:	03010113          	addi	sp,sp,48
    80005ae4:	00008067          	ret

0000000080005ae8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005ae8:	ff010113          	addi	sp,sp,-16
    80005aec:	00813423          	sd	s0,8(sp)
    80005af0:	01010413          	addi	s0,sp,16
    80005af4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005af8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005afc:	0006c603          	lbu	a2,0(a3)
    80005b00:	fd06071b          	addiw	a4,a2,-48
    80005b04:	0ff77713          	andi	a4,a4,255
    80005b08:	00900793          	li	a5,9
    80005b0c:	02e7e063          	bltu	a5,a4,80005b2c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005b10:	0025179b          	slliw	a5,a0,0x2
    80005b14:	00a787bb          	addw	a5,a5,a0
    80005b18:	0017979b          	slliw	a5,a5,0x1
    80005b1c:	00168693          	addi	a3,a3,1
    80005b20:	00c787bb          	addw	a5,a5,a2
    80005b24:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005b28:	fd5ff06f          	j	80005afc <_Z11stringToIntPKc+0x14>
    return n;
}
    80005b2c:	00813403          	ld	s0,8(sp)
    80005b30:	01010113          	addi	sp,sp,16
    80005b34:	00008067          	ret

0000000080005b38 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005b38:	fc010113          	addi	sp,sp,-64
    80005b3c:	02113c23          	sd	ra,56(sp)
    80005b40:	02813823          	sd	s0,48(sp)
    80005b44:	02913423          	sd	s1,40(sp)
    80005b48:	03213023          	sd	s2,32(sp)
    80005b4c:	01313c23          	sd	s3,24(sp)
    80005b50:	04010413          	addi	s0,sp,64
    80005b54:	00050493          	mv	s1,a0
    80005b58:	00058913          	mv	s2,a1
    80005b5c:	00060993          	mv	s3,a2
    LOCK();
    80005b60:	00100613          	li	a2,1
    80005b64:	00000593          	li	a1,0
    80005b68:	00006517          	auipc	a0,0x6
    80005b6c:	18850513          	addi	a0,a0,392 # 8000bcf0 <lockPrint>
    80005b70:	ffffb097          	auipc	ra,0xffffb
    80005b74:	634080e7          	jalr	1588(ra) # 800011a4 <copy_and_swap>
    80005b78:	00050863          	beqz	a0,80005b88 <_Z8printIntiii+0x50>
    80005b7c:	ffffc097          	auipc	ra,0xffffc
    80005b80:	80c080e7          	jalr	-2036(ra) # 80001388 <_Z15thread_dispatchv>
    80005b84:	fddff06f          	j	80005b60 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005b88:	00098463          	beqz	s3,80005b90 <_Z8printIntiii+0x58>
    80005b8c:	0804c463          	bltz	s1,80005c14 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005b90:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005b94:	00000593          	li	a1,0
    }

    i = 0;
    80005b98:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005b9c:	0009079b          	sext.w	a5,s2
    80005ba0:	0325773b          	remuw	a4,a0,s2
    80005ba4:	00048613          	mv	a2,s1
    80005ba8:	0014849b          	addiw	s1,s1,1
    80005bac:	02071693          	slli	a3,a4,0x20
    80005bb0:	0206d693          	srli	a3,a3,0x20
    80005bb4:	00006717          	auipc	a4,0x6
    80005bb8:	02c70713          	addi	a4,a4,44 # 8000bbe0 <digits>
    80005bbc:	00d70733          	add	a4,a4,a3
    80005bc0:	00074683          	lbu	a3,0(a4)
    80005bc4:	fd040713          	addi	a4,s0,-48
    80005bc8:	00c70733          	add	a4,a4,a2
    80005bcc:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005bd0:	0005071b          	sext.w	a4,a0
    80005bd4:	0325553b          	divuw	a0,a0,s2
    80005bd8:	fcf772e3          	bgeu	a4,a5,80005b9c <_Z8printIntiii+0x64>
    if(neg)
    80005bdc:	00058c63          	beqz	a1,80005bf4 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005be0:	fd040793          	addi	a5,s0,-48
    80005be4:	009784b3          	add	s1,a5,s1
    80005be8:	02d00793          	li	a5,45
    80005bec:	fef48823          	sb	a5,-16(s1)
    80005bf0:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005bf4:	fff4849b          	addiw	s1,s1,-1
    80005bf8:	0204c463          	bltz	s1,80005c20 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005bfc:	fd040793          	addi	a5,s0,-48
    80005c00:	009787b3          	add	a5,a5,s1
    80005c04:	ff07c503          	lbu	a0,-16(a5)
    80005c08:	ffffc097          	auipc	ra,0xffffc
    80005c0c:	9c8080e7          	jalr	-1592(ra) # 800015d0 <_Z4putcc>
    80005c10:	fe5ff06f          	j	80005bf4 <_Z8printIntiii+0xbc>
        x = -xx;
    80005c14:	4090053b          	negw	a0,s1
        neg = 1;
    80005c18:	00100593          	li	a1,1
        x = -xx;
    80005c1c:	f7dff06f          	j	80005b98 <_Z8printIntiii+0x60>

    UNLOCK();
    80005c20:	00000613          	li	a2,0
    80005c24:	00100593          	li	a1,1
    80005c28:	00006517          	auipc	a0,0x6
    80005c2c:	0c850513          	addi	a0,a0,200 # 8000bcf0 <lockPrint>
    80005c30:	ffffb097          	auipc	ra,0xffffb
    80005c34:	574080e7          	jalr	1396(ra) # 800011a4 <copy_and_swap>
    80005c38:	fe0514e3          	bnez	a0,80005c20 <_Z8printIntiii+0xe8>
    80005c3c:	03813083          	ld	ra,56(sp)
    80005c40:	03013403          	ld	s0,48(sp)
    80005c44:	02813483          	ld	s1,40(sp)
    80005c48:	02013903          	ld	s2,32(sp)
    80005c4c:	01813983          	ld	s3,24(sp)
    80005c50:	04010113          	addi	sp,sp,64
    80005c54:	00008067          	ret

0000000080005c58 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005c58:	fd010113          	addi	sp,sp,-48
    80005c5c:	02113423          	sd	ra,40(sp)
    80005c60:	02813023          	sd	s0,32(sp)
    80005c64:	00913c23          	sd	s1,24(sp)
    80005c68:	01213823          	sd	s2,16(sp)
    80005c6c:	01313423          	sd	s3,8(sp)
    80005c70:	03010413          	addi	s0,sp,48
    80005c74:	00050493          	mv	s1,a0
    80005c78:	00058913          	mv	s2,a1
    80005c7c:	0015879b          	addiw	a5,a1,1
    80005c80:	0007851b          	sext.w	a0,a5
    80005c84:	00f4a023          	sw	a5,0(s1)
    80005c88:	0004a823          	sw	zero,16(s1)
    80005c8c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005c90:	00251513          	slli	a0,a0,0x2
    80005c94:	ffffb097          	auipc	ra,0xffffb
    80005c98:	564080e7          	jalr	1380(ra) # 800011f8 <_Z9mem_allocm>
    80005c9c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005ca0:	01000513          	li	a0,16
    80005ca4:	ffffd097          	auipc	ra,0xffffd
    80005ca8:	840080e7          	jalr	-1984(ra) # 800024e4 <_Znwm>
    80005cac:	00050993          	mv	s3,a0
    80005cb0:	00000593          	li	a1,0
    80005cb4:	ffffd097          	auipc	ra,0xffffd
    80005cb8:	bdc080e7          	jalr	-1060(ra) # 80002890 <_ZN9SemaphoreC1Ej>
    80005cbc:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005cc0:	01000513          	li	a0,16
    80005cc4:	ffffd097          	auipc	ra,0xffffd
    80005cc8:	820080e7          	jalr	-2016(ra) # 800024e4 <_Znwm>
    80005ccc:	00050993          	mv	s3,a0
    80005cd0:	00090593          	mv	a1,s2
    80005cd4:	ffffd097          	auipc	ra,0xffffd
    80005cd8:	bbc080e7          	jalr	-1092(ra) # 80002890 <_ZN9SemaphoreC1Ej>
    80005cdc:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005ce0:	01000513          	li	a0,16
    80005ce4:	ffffd097          	auipc	ra,0xffffd
    80005ce8:	800080e7          	jalr	-2048(ra) # 800024e4 <_Znwm>
    80005cec:	00050913          	mv	s2,a0
    80005cf0:	00100593          	li	a1,1
    80005cf4:	ffffd097          	auipc	ra,0xffffd
    80005cf8:	b9c080e7          	jalr	-1124(ra) # 80002890 <_ZN9SemaphoreC1Ej>
    80005cfc:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005d00:	01000513          	li	a0,16
    80005d04:	ffffc097          	auipc	ra,0xffffc
    80005d08:	7e0080e7          	jalr	2016(ra) # 800024e4 <_Znwm>
    80005d0c:	00050913          	mv	s2,a0
    80005d10:	00100593          	li	a1,1
    80005d14:	ffffd097          	auipc	ra,0xffffd
    80005d18:	b7c080e7          	jalr	-1156(ra) # 80002890 <_ZN9SemaphoreC1Ej>
    80005d1c:	0324b823          	sd	s2,48(s1)
}
    80005d20:	02813083          	ld	ra,40(sp)
    80005d24:	02013403          	ld	s0,32(sp)
    80005d28:	01813483          	ld	s1,24(sp)
    80005d2c:	01013903          	ld	s2,16(sp)
    80005d30:	00813983          	ld	s3,8(sp)
    80005d34:	03010113          	addi	sp,sp,48
    80005d38:	00008067          	ret
    80005d3c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005d40:	00098513          	mv	a0,s3
    80005d44:	ffffc097          	auipc	ra,0xffffc
    80005d48:	7f0080e7          	jalr	2032(ra) # 80002534 <_ZdlPv>
    80005d4c:	00048513          	mv	a0,s1
    80005d50:	00007097          	auipc	ra,0x7
    80005d54:	078080e7          	jalr	120(ra) # 8000cdc8 <_Unwind_Resume>
    80005d58:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005d5c:	00098513          	mv	a0,s3
    80005d60:	ffffc097          	auipc	ra,0xffffc
    80005d64:	7d4080e7          	jalr	2004(ra) # 80002534 <_ZdlPv>
    80005d68:	00048513          	mv	a0,s1
    80005d6c:	00007097          	auipc	ra,0x7
    80005d70:	05c080e7          	jalr	92(ra) # 8000cdc8 <_Unwind_Resume>
    80005d74:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005d78:	00090513          	mv	a0,s2
    80005d7c:	ffffc097          	auipc	ra,0xffffc
    80005d80:	7b8080e7          	jalr	1976(ra) # 80002534 <_ZdlPv>
    80005d84:	00048513          	mv	a0,s1
    80005d88:	00007097          	auipc	ra,0x7
    80005d8c:	040080e7          	jalr	64(ra) # 8000cdc8 <_Unwind_Resume>
    80005d90:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005d94:	00090513          	mv	a0,s2
    80005d98:	ffffc097          	auipc	ra,0xffffc
    80005d9c:	79c080e7          	jalr	1948(ra) # 80002534 <_ZdlPv>
    80005da0:	00048513          	mv	a0,s1
    80005da4:	00007097          	auipc	ra,0x7
    80005da8:	024080e7          	jalr	36(ra) # 8000cdc8 <_Unwind_Resume>

0000000080005dac <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005dac:	fe010113          	addi	sp,sp,-32
    80005db0:	00113c23          	sd	ra,24(sp)
    80005db4:	00813823          	sd	s0,16(sp)
    80005db8:	00913423          	sd	s1,8(sp)
    80005dbc:	01213023          	sd	s2,0(sp)
    80005dc0:	02010413          	addi	s0,sp,32
    80005dc4:	00050493          	mv	s1,a0
    80005dc8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005dcc:	01853503          	ld	a0,24(a0)
    80005dd0:	ffffd097          	auipc	ra,0xffffd
    80005dd4:	afc080e7          	jalr	-1284(ra) # 800028cc <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005dd8:	0304b503          	ld	a0,48(s1)
    80005ddc:	ffffd097          	auipc	ra,0xffffd
    80005de0:	af0080e7          	jalr	-1296(ra) # 800028cc <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005de4:	0084b783          	ld	a5,8(s1)
    80005de8:	0144a703          	lw	a4,20(s1)
    80005dec:	00271713          	slli	a4,a4,0x2
    80005df0:	00e787b3          	add	a5,a5,a4
    80005df4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005df8:	0144a783          	lw	a5,20(s1)
    80005dfc:	0017879b          	addiw	a5,a5,1
    80005e00:	0004a703          	lw	a4,0(s1)
    80005e04:	02e7e7bb          	remw	a5,a5,a4
    80005e08:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005e0c:	0304b503          	ld	a0,48(s1)
    80005e10:	ffffd097          	auipc	ra,0xffffd
    80005e14:	ae8080e7          	jalr	-1304(ra) # 800028f8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005e18:	0204b503          	ld	a0,32(s1)
    80005e1c:	ffffd097          	auipc	ra,0xffffd
    80005e20:	adc080e7          	jalr	-1316(ra) # 800028f8 <_ZN9Semaphore6signalEv>

}
    80005e24:	01813083          	ld	ra,24(sp)
    80005e28:	01013403          	ld	s0,16(sp)
    80005e2c:	00813483          	ld	s1,8(sp)
    80005e30:	00013903          	ld	s2,0(sp)
    80005e34:	02010113          	addi	sp,sp,32
    80005e38:	00008067          	ret

0000000080005e3c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005e3c:	fe010113          	addi	sp,sp,-32
    80005e40:	00113c23          	sd	ra,24(sp)
    80005e44:	00813823          	sd	s0,16(sp)
    80005e48:	00913423          	sd	s1,8(sp)
    80005e4c:	01213023          	sd	s2,0(sp)
    80005e50:	02010413          	addi	s0,sp,32
    80005e54:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005e58:	02053503          	ld	a0,32(a0)
    80005e5c:	ffffd097          	auipc	ra,0xffffd
    80005e60:	a70080e7          	jalr	-1424(ra) # 800028cc <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005e64:	0284b503          	ld	a0,40(s1)
    80005e68:	ffffd097          	auipc	ra,0xffffd
    80005e6c:	a64080e7          	jalr	-1436(ra) # 800028cc <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005e70:	0084b703          	ld	a4,8(s1)
    80005e74:	0104a783          	lw	a5,16(s1)
    80005e78:	00279693          	slli	a3,a5,0x2
    80005e7c:	00d70733          	add	a4,a4,a3
    80005e80:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005e84:	0017879b          	addiw	a5,a5,1
    80005e88:	0004a703          	lw	a4,0(s1)
    80005e8c:	02e7e7bb          	remw	a5,a5,a4
    80005e90:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005e94:	0284b503          	ld	a0,40(s1)
    80005e98:	ffffd097          	auipc	ra,0xffffd
    80005e9c:	a60080e7          	jalr	-1440(ra) # 800028f8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005ea0:	0184b503          	ld	a0,24(s1)
    80005ea4:	ffffd097          	auipc	ra,0xffffd
    80005ea8:	a54080e7          	jalr	-1452(ra) # 800028f8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005eac:	00090513          	mv	a0,s2
    80005eb0:	01813083          	ld	ra,24(sp)
    80005eb4:	01013403          	ld	s0,16(sp)
    80005eb8:	00813483          	ld	s1,8(sp)
    80005ebc:	00013903          	ld	s2,0(sp)
    80005ec0:	02010113          	addi	sp,sp,32
    80005ec4:	00008067          	ret

0000000080005ec8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005ec8:	fe010113          	addi	sp,sp,-32
    80005ecc:	00113c23          	sd	ra,24(sp)
    80005ed0:	00813823          	sd	s0,16(sp)
    80005ed4:	00913423          	sd	s1,8(sp)
    80005ed8:	01213023          	sd	s2,0(sp)
    80005edc:	02010413          	addi	s0,sp,32
    80005ee0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005ee4:	02853503          	ld	a0,40(a0)
    80005ee8:	ffffd097          	auipc	ra,0xffffd
    80005eec:	9e4080e7          	jalr	-1564(ra) # 800028cc <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005ef0:	0304b503          	ld	a0,48(s1)
    80005ef4:	ffffd097          	auipc	ra,0xffffd
    80005ef8:	9d8080e7          	jalr	-1576(ra) # 800028cc <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005efc:	0144a783          	lw	a5,20(s1)
    80005f00:	0104a903          	lw	s2,16(s1)
    80005f04:	0327ce63          	blt	a5,s2,80005f40 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005f08:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005f0c:	0304b503          	ld	a0,48(s1)
    80005f10:	ffffd097          	auipc	ra,0xffffd
    80005f14:	9e8080e7          	jalr	-1560(ra) # 800028f8 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005f18:	0284b503          	ld	a0,40(s1)
    80005f1c:	ffffd097          	auipc	ra,0xffffd
    80005f20:	9dc080e7          	jalr	-1572(ra) # 800028f8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005f24:	00090513          	mv	a0,s2
    80005f28:	01813083          	ld	ra,24(sp)
    80005f2c:	01013403          	ld	s0,16(sp)
    80005f30:	00813483          	ld	s1,8(sp)
    80005f34:	00013903          	ld	s2,0(sp)
    80005f38:	02010113          	addi	sp,sp,32
    80005f3c:	00008067          	ret
        ret = cap - head + tail;
    80005f40:	0004a703          	lw	a4,0(s1)
    80005f44:	4127093b          	subw	s2,a4,s2
    80005f48:	00f9093b          	addw	s2,s2,a5
    80005f4c:	fc1ff06f          	j	80005f0c <_ZN9BufferCPP6getCntEv+0x44>

0000000080005f50 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005f50:	fe010113          	addi	sp,sp,-32
    80005f54:	00113c23          	sd	ra,24(sp)
    80005f58:	00813823          	sd	s0,16(sp)
    80005f5c:	00913423          	sd	s1,8(sp)
    80005f60:	02010413          	addi	s0,sp,32
    80005f64:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005f68:	00a00513          	li	a0,10
    80005f6c:	ffffd097          	auipc	ra,0xffffd
    80005f70:	a48080e7          	jalr	-1464(ra) # 800029b4 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005f74:	00003517          	auipc	a0,0x3
    80005f78:	79c50513          	addi	a0,a0,1948 # 80009710 <CONSOLE_STATUS+0x700>
    80005f7c:	00000097          	auipc	ra,0x0
    80005f80:	a0c080e7          	jalr	-1524(ra) # 80005988 <_Z11printStringPKc>
    while (getCnt()) {
    80005f84:	00048513          	mv	a0,s1
    80005f88:	00000097          	auipc	ra,0x0
    80005f8c:	f40080e7          	jalr	-192(ra) # 80005ec8 <_ZN9BufferCPP6getCntEv>
    80005f90:	02050c63          	beqz	a0,80005fc8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005f94:	0084b783          	ld	a5,8(s1)
    80005f98:	0104a703          	lw	a4,16(s1)
    80005f9c:	00271713          	slli	a4,a4,0x2
    80005fa0:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005fa4:	0007c503          	lbu	a0,0(a5)
    80005fa8:	ffffd097          	auipc	ra,0xffffd
    80005fac:	a0c080e7          	jalr	-1524(ra) # 800029b4 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005fb0:	0104a783          	lw	a5,16(s1)
    80005fb4:	0017879b          	addiw	a5,a5,1
    80005fb8:	0004a703          	lw	a4,0(s1)
    80005fbc:	02e7e7bb          	remw	a5,a5,a4
    80005fc0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005fc4:	fc1ff06f          	j	80005f84 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005fc8:	02100513          	li	a0,33
    80005fcc:	ffffd097          	auipc	ra,0xffffd
    80005fd0:	9e8080e7          	jalr	-1560(ra) # 800029b4 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005fd4:	00a00513          	li	a0,10
    80005fd8:	ffffd097          	auipc	ra,0xffffd
    80005fdc:	9dc080e7          	jalr	-1572(ra) # 800029b4 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005fe0:	0084b503          	ld	a0,8(s1)
    80005fe4:	ffffb097          	auipc	ra,0xffffb
    80005fe8:	260080e7          	jalr	608(ra) # 80001244 <_Z8mem_freePv>
    delete itemAvailable;
    80005fec:	0204b503          	ld	a0,32(s1)
    80005ff0:	00050863          	beqz	a0,80006000 <_ZN9BufferCPPD1Ev+0xb0>
    80005ff4:	00053783          	ld	a5,0(a0)
    80005ff8:	0087b783          	ld	a5,8(a5)
    80005ffc:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006000:	0184b503          	ld	a0,24(s1)
    80006004:	00050863          	beqz	a0,80006014 <_ZN9BufferCPPD1Ev+0xc4>
    80006008:	00053783          	ld	a5,0(a0)
    8000600c:	0087b783          	ld	a5,8(a5)
    80006010:	000780e7          	jalr	a5
    delete mutexTail;
    80006014:	0304b503          	ld	a0,48(s1)
    80006018:	00050863          	beqz	a0,80006028 <_ZN9BufferCPPD1Ev+0xd8>
    8000601c:	00053783          	ld	a5,0(a0)
    80006020:	0087b783          	ld	a5,8(a5)
    80006024:	000780e7          	jalr	a5
    delete mutexHead;
    80006028:	0284b503          	ld	a0,40(s1)
    8000602c:	00050863          	beqz	a0,8000603c <_ZN9BufferCPPD1Ev+0xec>
    80006030:	00053783          	ld	a5,0(a0)
    80006034:	0087b783          	ld	a5,8(a5)
    80006038:	000780e7          	jalr	a5
}
    8000603c:	01813083          	ld	ra,24(sp)
    80006040:	01013403          	ld	s0,16(sp)
    80006044:	00813483          	ld	s1,8(sp)
    80006048:	02010113          	addi	sp,sp,32
    8000604c:	00008067          	ret

0000000080006050 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006050:	fe010113          	addi	sp,sp,-32
    80006054:	00113c23          	sd	ra,24(sp)
    80006058:	00813823          	sd	s0,16(sp)
    8000605c:	00913423          	sd	s1,8(sp)
    80006060:	01213023          	sd	s2,0(sp)
    80006064:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006068:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000606c:	00600493          	li	s1,6
    while (--i > 0) {
    80006070:	fff4849b          	addiw	s1,s1,-1
    80006074:	04905463          	blez	s1,800060bc <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006078:	00003517          	auipc	a0,0x3
    8000607c:	6b050513          	addi	a0,a0,1712 # 80009728 <CONSOLE_STATUS+0x718>
    80006080:	00000097          	auipc	ra,0x0
    80006084:	908080e7          	jalr	-1784(ra) # 80005988 <_Z11printStringPKc>
        printInt(sleep_time);
    80006088:	00000613          	li	a2,0
    8000608c:	00a00593          	li	a1,10
    80006090:	0009051b          	sext.w	a0,s2
    80006094:	00000097          	auipc	ra,0x0
    80006098:	aa4080e7          	jalr	-1372(ra) # 80005b38 <_Z8printIntiii>
        printString(" !\n");
    8000609c:	00003517          	auipc	a0,0x3
    800060a0:	69450513          	addi	a0,a0,1684 # 80009730 <CONSOLE_STATUS+0x720>
    800060a4:	00000097          	auipc	ra,0x0
    800060a8:	8e4080e7          	jalr	-1820(ra) # 80005988 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800060ac:	00090513          	mv	a0,s2
    800060b0:	ffffb097          	auipc	ra,0xffffb
    800060b4:	4a0080e7          	jalr	1184(ra) # 80001550 <_Z10time_sleepm>
    while (--i > 0) {
    800060b8:	fb9ff06f          	j	80006070 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800060bc:	00a00793          	li	a5,10
    800060c0:	02f95933          	divu	s2,s2,a5
    800060c4:	fff90913          	addi	s2,s2,-1
    800060c8:	00006797          	auipc	a5,0x6
    800060cc:	c3078793          	addi	a5,a5,-976 # 8000bcf8 <_ZL8finished>
    800060d0:	01278933          	add	s2,a5,s2
    800060d4:	00100793          	li	a5,1
    800060d8:	00f90023          	sb	a5,0(s2)
}
    800060dc:	01813083          	ld	ra,24(sp)
    800060e0:	01013403          	ld	s0,16(sp)
    800060e4:	00813483          	ld	s1,8(sp)
    800060e8:	00013903          	ld	s2,0(sp)
    800060ec:	02010113          	addi	sp,sp,32
    800060f0:	00008067          	ret

00000000800060f4 <_Z12testSleepingv>:

void testSleeping() {
    800060f4:	fc010113          	addi	sp,sp,-64
    800060f8:	02113c23          	sd	ra,56(sp)
    800060fc:	02813823          	sd	s0,48(sp)
    80006100:	02913423          	sd	s1,40(sp)
    80006104:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006108:	00a00793          	li	a5,10
    8000610c:	fcf43823          	sd	a5,-48(s0)
    80006110:	01400793          	li	a5,20
    80006114:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006118:	00000493          	li	s1,0
    8000611c:	02c0006f          	j	80006148 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006120:	00349793          	slli	a5,s1,0x3
    80006124:	fd040613          	addi	a2,s0,-48
    80006128:	00f60633          	add	a2,a2,a5
    8000612c:	00000597          	auipc	a1,0x0
    80006130:	f2458593          	addi	a1,a1,-220 # 80006050 <_ZL9sleepyRunPv>
    80006134:	fc040513          	addi	a0,s0,-64
    80006138:	00f50533          	add	a0,a0,a5
    8000613c:	ffffb097          	auipc	ra,0xffffb
    80006140:	148080e7          	jalr	328(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006144:	0014849b          	addiw	s1,s1,1
    80006148:	00100793          	li	a5,1
    8000614c:	fc97dae3          	bge	a5,s1,80006120 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006150:	00006797          	auipc	a5,0x6
    80006154:	ba87c783          	lbu	a5,-1112(a5) # 8000bcf8 <_ZL8finished>
    80006158:	fe078ce3          	beqz	a5,80006150 <_Z12testSleepingv+0x5c>
    8000615c:	00006797          	auipc	a5,0x6
    80006160:	b9d7c783          	lbu	a5,-1123(a5) # 8000bcf9 <_ZL8finished+0x1>
    80006164:	fe0786e3          	beqz	a5,80006150 <_Z12testSleepingv+0x5c>
}
    80006168:	03813083          	ld	ra,56(sp)
    8000616c:	03013403          	ld	s0,48(sp)
    80006170:	02813483          	ld	s1,40(sp)
    80006174:	04010113          	addi	sp,sp,64
    80006178:	00008067          	ret

000000008000617c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000617c:	fe010113          	addi	sp,sp,-32
    80006180:	00113c23          	sd	ra,24(sp)
    80006184:	00813823          	sd	s0,16(sp)
    80006188:	00913423          	sd	s1,8(sp)
    8000618c:	01213023          	sd	s2,0(sp)
    80006190:	02010413          	addi	s0,sp,32
    80006194:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006198:	00100793          	li	a5,1
    8000619c:	02a7f863          	bgeu	a5,a0,800061cc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800061a0:	00a00793          	li	a5,10
    800061a4:	02f577b3          	remu	a5,a0,a5
    800061a8:	02078e63          	beqz	a5,800061e4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800061ac:	fff48513          	addi	a0,s1,-1
    800061b0:	00000097          	auipc	ra,0x0
    800061b4:	fcc080e7          	jalr	-52(ra) # 8000617c <_ZL9fibonaccim>
    800061b8:	00050913          	mv	s2,a0
    800061bc:	ffe48513          	addi	a0,s1,-2
    800061c0:	00000097          	auipc	ra,0x0
    800061c4:	fbc080e7          	jalr	-68(ra) # 8000617c <_ZL9fibonaccim>
    800061c8:	00a90533          	add	a0,s2,a0
}
    800061cc:	01813083          	ld	ra,24(sp)
    800061d0:	01013403          	ld	s0,16(sp)
    800061d4:	00813483          	ld	s1,8(sp)
    800061d8:	00013903          	ld	s2,0(sp)
    800061dc:	02010113          	addi	sp,sp,32
    800061e0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800061e4:	ffffb097          	auipc	ra,0xffffb
    800061e8:	1a4080e7          	jalr	420(ra) # 80001388 <_Z15thread_dispatchv>
    800061ec:	fc1ff06f          	j	800061ac <_ZL9fibonaccim+0x30>

00000000800061f0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800061f0:	fe010113          	addi	sp,sp,-32
    800061f4:	00113c23          	sd	ra,24(sp)
    800061f8:	00813823          	sd	s0,16(sp)
    800061fc:	00913423          	sd	s1,8(sp)
    80006200:	01213023          	sd	s2,0(sp)
    80006204:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006208:	00a00493          	li	s1,10
    8000620c:	0400006f          	j	8000624c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006210:	00003517          	auipc	a0,0x3
    80006214:	46850513          	addi	a0,a0,1128 # 80009678 <CONSOLE_STATUS+0x668>
    80006218:	fffff097          	auipc	ra,0xfffff
    8000621c:	770080e7          	jalr	1904(ra) # 80005988 <_Z11printStringPKc>
    80006220:	00000613          	li	a2,0
    80006224:	00a00593          	li	a1,10
    80006228:	00048513          	mv	a0,s1
    8000622c:	00000097          	auipc	ra,0x0
    80006230:	90c080e7          	jalr	-1780(ra) # 80005b38 <_Z8printIntiii>
    80006234:	00003517          	auipc	a0,0x3
    80006238:	08450513          	addi	a0,a0,132 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000623c:	fffff097          	auipc	ra,0xfffff
    80006240:	74c080e7          	jalr	1868(ra) # 80005988 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006244:	0014849b          	addiw	s1,s1,1
    80006248:	0ff4f493          	andi	s1,s1,255
    8000624c:	00c00793          	li	a5,12
    80006250:	fc97f0e3          	bgeu	a5,s1,80006210 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006254:	00003517          	auipc	a0,0x3
    80006258:	42c50513          	addi	a0,a0,1068 # 80009680 <CONSOLE_STATUS+0x670>
    8000625c:	fffff097          	auipc	ra,0xfffff
    80006260:	72c080e7          	jalr	1836(ra) # 80005988 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006264:	00500313          	li	t1,5
    thread_dispatch();
    80006268:	ffffb097          	auipc	ra,0xffffb
    8000626c:	120080e7          	jalr	288(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006270:	01000513          	li	a0,16
    80006274:	00000097          	auipc	ra,0x0
    80006278:	f08080e7          	jalr	-248(ra) # 8000617c <_ZL9fibonaccim>
    8000627c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006280:	00003517          	auipc	a0,0x3
    80006284:	41050513          	addi	a0,a0,1040 # 80009690 <CONSOLE_STATUS+0x680>
    80006288:	fffff097          	auipc	ra,0xfffff
    8000628c:	700080e7          	jalr	1792(ra) # 80005988 <_Z11printStringPKc>
    80006290:	00000613          	li	a2,0
    80006294:	00a00593          	li	a1,10
    80006298:	0009051b          	sext.w	a0,s2
    8000629c:	00000097          	auipc	ra,0x0
    800062a0:	89c080e7          	jalr	-1892(ra) # 80005b38 <_Z8printIntiii>
    800062a4:	00003517          	auipc	a0,0x3
    800062a8:	01450513          	addi	a0,a0,20 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800062ac:	fffff097          	auipc	ra,0xfffff
    800062b0:	6dc080e7          	jalr	1756(ra) # 80005988 <_Z11printStringPKc>
    800062b4:	0400006f          	j	800062f4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800062b8:	00003517          	auipc	a0,0x3
    800062bc:	3c050513          	addi	a0,a0,960 # 80009678 <CONSOLE_STATUS+0x668>
    800062c0:	fffff097          	auipc	ra,0xfffff
    800062c4:	6c8080e7          	jalr	1736(ra) # 80005988 <_Z11printStringPKc>
    800062c8:	00000613          	li	a2,0
    800062cc:	00a00593          	li	a1,10
    800062d0:	00048513          	mv	a0,s1
    800062d4:	00000097          	auipc	ra,0x0
    800062d8:	864080e7          	jalr	-1948(ra) # 80005b38 <_Z8printIntiii>
    800062dc:	00003517          	auipc	a0,0x3
    800062e0:	fdc50513          	addi	a0,a0,-36 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800062e4:	fffff097          	auipc	ra,0xfffff
    800062e8:	6a4080e7          	jalr	1700(ra) # 80005988 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800062ec:	0014849b          	addiw	s1,s1,1
    800062f0:	0ff4f493          	andi	s1,s1,255
    800062f4:	00f00793          	li	a5,15
    800062f8:	fc97f0e3          	bgeu	a5,s1,800062b8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800062fc:	00003517          	auipc	a0,0x3
    80006300:	3a450513          	addi	a0,a0,932 # 800096a0 <CONSOLE_STATUS+0x690>
    80006304:	fffff097          	auipc	ra,0xfffff
    80006308:	684080e7          	jalr	1668(ra) # 80005988 <_Z11printStringPKc>
    finishedD = true;
    8000630c:	00100793          	li	a5,1
    80006310:	00006717          	auipc	a4,0x6
    80006314:	9ef70523          	sb	a5,-1558(a4) # 8000bcfa <_ZL9finishedD>
    thread_dispatch();
    80006318:	ffffb097          	auipc	ra,0xffffb
    8000631c:	070080e7          	jalr	112(ra) # 80001388 <_Z15thread_dispatchv>
}
    80006320:	01813083          	ld	ra,24(sp)
    80006324:	01013403          	ld	s0,16(sp)
    80006328:	00813483          	ld	s1,8(sp)
    8000632c:	00013903          	ld	s2,0(sp)
    80006330:	02010113          	addi	sp,sp,32
    80006334:	00008067          	ret

0000000080006338 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006338:	fe010113          	addi	sp,sp,-32
    8000633c:	00113c23          	sd	ra,24(sp)
    80006340:	00813823          	sd	s0,16(sp)
    80006344:	00913423          	sd	s1,8(sp)
    80006348:	01213023          	sd	s2,0(sp)
    8000634c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006350:	00000493          	li	s1,0
    80006354:	0400006f          	j	80006394 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006358:	00003517          	auipc	a0,0x3
    8000635c:	2f050513          	addi	a0,a0,752 # 80009648 <CONSOLE_STATUS+0x638>
    80006360:	fffff097          	auipc	ra,0xfffff
    80006364:	628080e7          	jalr	1576(ra) # 80005988 <_Z11printStringPKc>
    80006368:	00000613          	li	a2,0
    8000636c:	00a00593          	li	a1,10
    80006370:	00048513          	mv	a0,s1
    80006374:	fffff097          	auipc	ra,0xfffff
    80006378:	7c4080e7          	jalr	1988(ra) # 80005b38 <_Z8printIntiii>
    8000637c:	00003517          	auipc	a0,0x3
    80006380:	f3c50513          	addi	a0,a0,-196 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006384:	fffff097          	auipc	ra,0xfffff
    80006388:	604080e7          	jalr	1540(ra) # 80005988 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000638c:	0014849b          	addiw	s1,s1,1
    80006390:	0ff4f493          	andi	s1,s1,255
    80006394:	00200793          	li	a5,2
    80006398:	fc97f0e3          	bgeu	a5,s1,80006358 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000639c:	00003517          	auipc	a0,0x3
    800063a0:	2b450513          	addi	a0,a0,692 # 80009650 <CONSOLE_STATUS+0x640>
    800063a4:	fffff097          	auipc	ra,0xfffff
    800063a8:	5e4080e7          	jalr	1508(ra) # 80005988 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800063ac:	00700313          	li	t1,7
    thread_dispatch();
    800063b0:	ffffb097          	auipc	ra,0xffffb
    800063b4:	fd8080e7          	jalr	-40(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800063b8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800063bc:	00003517          	auipc	a0,0x3
    800063c0:	2a450513          	addi	a0,a0,676 # 80009660 <CONSOLE_STATUS+0x650>
    800063c4:	fffff097          	auipc	ra,0xfffff
    800063c8:	5c4080e7          	jalr	1476(ra) # 80005988 <_Z11printStringPKc>
    800063cc:	00000613          	li	a2,0
    800063d0:	00a00593          	li	a1,10
    800063d4:	0009051b          	sext.w	a0,s2
    800063d8:	fffff097          	auipc	ra,0xfffff
    800063dc:	760080e7          	jalr	1888(ra) # 80005b38 <_Z8printIntiii>
    800063e0:	00003517          	auipc	a0,0x3
    800063e4:	ed850513          	addi	a0,a0,-296 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800063e8:	fffff097          	auipc	ra,0xfffff
    800063ec:	5a0080e7          	jalr	1440(ra) # 80005988 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800063f0:	00c00513          	li	a0,12
    800063f4:	00000097          	auipc	ra,0x0
    800063f8:	d88080e7          	jalr	-632(ra) # 8000617c <_ZL9fibonaccim>
    800063fc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006400:	00003517          	auipc	a0,0x3
    80006404:	26850513          	addi	a0,a0,616 # 80009668 <CONSOLE_STATUS+0x658>
    80006408:	fffff097          	auipc	ra,0xfffff
    8000640c:	580080e7          	jalr	1408(ra) # 80005988 <_Z11printStringPKc>
    80006410:	00000613          	li	a2,0
    80006414:	00a00593          	li	a1,10
    80006418:	0009051b          	sext.w	a0,s2
    8000641c:	fffff097          	auipc	ra,0xfffff
    80006420:	71c080e7          	jalr	1820(ra) # 80005b38 <_Z8printIntiii>
    80006424:	00003517          	auipc	a0,0x3
    80006428:	e9450513          	addi	a0,a0,-364 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000642c:	fffff097          	auipc	ra,0xfffff
    80006430:	55c080e7          	jalr	1372(ra) # 80005988 <_Z11printStringPKc>
    80006434:	0400006f          	j	80006474 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006438:	00003517          	auipc	a0,0x3
    8000643c:	21050513          	addi	a0,a0,528 # 80009648 <CONSOLE_STATUS+0x638>
    80006440:	fffff097          	auipc	ra,0xfffff
    80006444:	548080e7          	jalr	1352(ra) # 80005988 <_Z11printStringPKc>
    80006448:	00000613          	li	a2,0
    8000644c:	00a00593          	li	a1,10
    80006450:	00048513          	mv	a0,s1
    80006454:	fffff097          	auipc	ra,0xfffff
    80006458:	6e4080e7          	jalr	1764(ra) # 80005b38 <_Z8printIntiii>
    8000645c:	00003517          	auipc	a0,0x3
    80006460:	e5c50513          	addi	a0,a0,-420 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006464:	fffff097          	auipc	ra,0xfffff
    80006468:	524080e7          	jalr	1316(ra) # 80005988 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000646c:	0014849b          	addiw	s1,s1,1
    80006470:	0ff4f493          	andi	s1,s1,255
    80006474:	00500793          	li	a5,5
    80006478:	fc97f0e3          	bgeu	a5,s1,80006438 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000647c:	00003517          	auipc	a0,0x3
    80006480:	1a450513          	addi	a0,a0,420 # 80009620 <CONSOLE_STATUS+0x610>
    80006484:	fffff097          	auipc	ra,0xfffff
    80006488:	504080e7          	jalr	1284(ra) # 80005988 <_Z11printStringPKc>
    finishedC = true;
    8000648c:	00100793          	li	a5,1
    80006490:	00006717          	auipc	a4,0x6
    80006494:	86f705a3          	sb	a5,-1941(a4) # 8000bcfb <_ZL9finishedC>
    thread_dispatch();
    80006498:	ffffb097          	auipc	ra,0xffffb
    8000649c:	ef0080e7          	jalr	-272(ra) # 80001388 <_Z15thread_dispatchv>
}
    800064a0:	01813083          	ld	ra,24(sp)
    800064a4:	01013403          	ld	s0,16(sp)
    800064a8:	00813483          	ld	s1,8(sp)
    800064ac:	00013903          	ld	s2,0(sp)
    800064b0:	02010113          	addi	sp,sp,32
    800064b4:	00008067          	ret

00000000800064b8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800064b8:	fe010113          	addi	sp,sp,-32
    800064bc:	00113c23          	sd	ra,24(sp)
    800064c0:	00813823          	sd	s0,16(sp)
    800064c4:	00913423          	sd	s1,8(sp)
    800064c8:	01213023          	sd	s2,0(sp)
    800064cc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800064d0:	00000913          	li	s2,0
    800064d4:	0400006f          	j	80006514 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800064d8:	ffffb097          	auipc	ra,0xffffb
    800064dc:	eb0080e7          	jalr	-336(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800064e0:	00148493          	addi	s1,s1,1
    800064e4:	000027b7          	lui	a5,0x2
    800064e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800064ec:	0097ee63          	bltu	a5,s1,80006508 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800064f0:	00000713          	li	a4,0
    800064f4:	000077b7          	lui	a5,0x7
    800064f8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800064fc:	fce7eee3          	bltu	a5,a4,800064d8 <_ZL11workerBodyBPv+0x20>
    80006500:	00170713          	addi	a4,a4,1
    80006504:	ff1ff06f          	j	800064f4 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006508:	00a00793          	li	a5,10
    8000650c:	04f90663          	beq	s2,a5,80006558 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006510:	00190913          	addi	s2,s2,1
    80006514:	00f00793          	li	a5,15
    80006518:	0527e463          	bltu	a5,s2,80006560 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    8000651c:	00003517          	auipc	a0,0x3
    80006520:	11450513          	addi	a0,a0,276 # 80009630 <CONSOLE_STATUS+0x620>
    80006524:	fffff097          	auipc	ra,0xfffff
    80006528:	464080e7          	jalr	1124(ra) # 80005988 <_Z11printStringPKc>
    8000652c:	00000613          	li	a2,0
    80006530:	00a00593          	li	a1,10
    80006534:	0009051b          	sext.w	a0,s2
    80006538:	fffff097          	auipc	ra,0xfffff
    8000653c:	600080e7          	jalr	1536(ra) # 80005b38 <_Z8printIntiii>
    80006540:	00003517          	auipc	a0,0x3
    80006544:	d7850513          	addi	a0,a0,-648 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006548:	fffff097          	auipc	ra,0xfffff
    8000654c:	440080e7          	jalr	1088(ra) # 80005988 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006550:	00000493          	li	s1,0
    80006554:	f91ff06f          	j	800064e4 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006558:	14102ff3          	csrr	t6,sepc
    8000655c:	fb5ff06f          	j	80006510 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006560:	00003517          	auipc	a0,0x3
    80006564:	0d850513          	addi	a0,a0,216 # 80009638 <CONSOLE_STATUS+0x628>
    80006568:	fffff097          	auipc	ra,0xfffff
    8000656c:	420080e7          	jalr	1056(ra) # 80005988 <_Z11printStringPKc>
    finishedB = true;
    80006570:	00100793          	li	a5,1
    80006574:	00005717          	auipc	a4,0x5
    80006578:	78f70423          	sb	a5,1928(a4) # 8000bcfc <_ZL9finishedB>
    thread_dispatch();
    8000657c:	ffffb097          	auipc	ra,0xffffb
    80006580:	e0c080e7          	jalr	-500(ra) # 80001388 <_Z15thread_dispatchv>
}
    80006584:	01813083          	ld	ra,24(sp)
    80006588:	01013403          	ld	s0,16(sp)
    8000658c:	00813483          	ld	s1,8(sp)
    80006590:	00013903          	ld	s2,0(sp)
    80006594:	02010113          	addi	sp,sp,32
    80006598:	00008067          	ret

000000008000659c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000659c:	fe010113          	addi	sp,sp,-32
    800065a0:	00113c23          	sd	ra,24(sp)
    800065a4:	00813823          	sd	s0,16(sp)
    800065a8:	00913423          	sd	s1,8(sp)
    800065ac:	01213023          	sd	s2,0(sp)
    800065b0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800065b4:	00000913          	li	s2,0
    800065b8:	0380006f          	j	800065f0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800065bc:	ffffb097          	auipc	ra,0xffffb
    800065c0:	dcc080e7          	jalr	-564(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800065c4:	00148493          	addi	s1,s1,1
    800065c8:	000027b7          	lui	a5,0x2
    800065cc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800065d0:	0097ee63          	bltu	a5,s1,800065ec <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800065d4:	00000713          	li	a4,0
    800065d8:	000077b7          	lui	a5,0x7
    800065dc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800065e0:	fce7eee3          	bltu	a5,a4,800065bc <_ZL11workerBodyAPv+0x20>
    800065e4:	00170713          	addi	a4,a4,1
    800065e8:	ff1ff06f          	j	800065d8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800065ec:	00190913          	addi	s2,s2,1
    800065f0:	00900793          	li	a5,9
    800065f4:	0527e063          	bltu	a5,s2,80006634 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800065f8:	00003517          	auipc	a0,0x3
    800065fc:	02050513          	addi	a0,a0,32 # 80009618 <CONSOLE_STATUS+0x608>
    80006600:	fffff097          	auipc	ra,0xfffff
    80006604:	388080e7          	jalr	904(ra) # 80005988 <_Z11printStringPKc>
    80006608:	00000613          	li	a2,0
    8000660c:	00a00593          	li	a1,10
    80006610:	0009051b          	sext.w	a0,s2
    80006614:	fffff097          	auipc	ra,0xfffff
    80006618:	524080e7          	jalr	1316(ra) # 80005b38 <_Z8printIntiii>
    8000661c:	00003517          	auipc	a0,0x3
    80006620:	c9c50513          	addi	a0,a0,-868 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006624:	fffff097          	auipc	ra,0xfffff
    80006628:	364080e7          	jalr	868(ra) # 80005988 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000662c:	00000493          	li	s1,0
    80006630:	f99ff06f          	j	800065c8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006634:	00003517          	auipc	a0,0x3
    80006638:	fec50513          	addi	a0,a0,-20 # 80009620 <CONSOLE_STATUS+0x610>
    8000663c:	fffff097          	auipc	ra,0xfffff
    80006640:	34c080e7          	jalr	844(ra) # 80005988 <_Z11printStringPKc>
    finishedA = true;
    80006644:	00100793          	li	a5,1
    80006648:	00005717          	auipc	a4,0x5
    8000664c:	6af70aa3          	sb	a5,1717(a4) # 8000bcfd <_ZL9finishedA>
}
    80006650:	01813083          	ld	ra,24(sp)
    80006654:	01013403          	ld	s0,16(sp)
    80006658:	00813483          	ld	s1,8(sp)
    8000665c:	00013903          	ld	s2,0(sp)
    80006660:	02010113          	addi	sp,sp,32
    80006664:	00008067          	ret

0000000080006668 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006668:	fd010113          	addi	sp,sp,-48
    8000666c:	02113423          	sd	ra,40(sp)
    80006670:	02813023          	sd	s0,32(sp)
    80006674:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006678:	00000613          	li	a2,0
    8000667c:	00000597          	auipc	a1,0x0
    80006680:	f2058593          	addi	a1,a1,-224 # 8000659c <_ZL11workerBodyAPv>
    80006684:	fd040513          	addi	a0,s0,-48
    80006688:	ffffb097          	auipc	ra,0xffffb
    8000668c:	bfc080e7          	jalr	-1028(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80006690:	00003517          	auipc	a0,0x3
    80006694:	02050513          	addi	a0,a0,32 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006698:	fffff097          	auipc	ra,0xfffff
    8000669c:	2f0080e7          	jalr	752(ra) # 80005988 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800066a0:	00000613          	li	a2,0
    800066a4:	00000597          	auipc	a1,0x0
    800066a8:	e1458593          	addi	a1,a1,-492 # 800064b8 <_ZL11workerBodyBPv>
    800066ac:	fd840513          	addi	a0,s0,-40
    800066b0:	ffffb097          	auipc	ra,0xffffb
    800066b4:	bd4080e7          	jalr	-1068(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800066b8:	00003517          	auipc	a0,0x3
    800066bc:	01050513          	addi	a0,a0,16 # 800096c8 <CONSOLE_STATUS+0x6b8>
    800066c0:	fffff097          	auipc	ra,0xfffff
    800066c4:	2c8080e7          	jalr	712(ra) # 80005988 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800066c8:	00000613          	li	a2,0
    800066cc:	00000597          	auipc	a1,0x0
    800066d0:	c6c58593          	addi	a1,a1,-916 # 80006338 <_ZL11workerBodyCPv>
    800066d4:	fe040513          	addi	a0,s0,-32
    800066d8:	ffffb097          	auipc	ra,0xffffb
    800066dc:	bac080e7          	jalr	-1108(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800066e0:	00003517          	auipc	a0,0x3
    800066e4:	00050513          	mv	a0,a0
    800066e8:	fffff097          	auipc	ra,0xfffff
    800066ec:	2a0080e7          	jalr	672(ra) # 80005988 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800066f0:	00000613          	li	a2,0
    800066f4:	00000597          	auipc	a1,0x0
    800066f8:	afc58593          	addi	a1,a1,-1284 # 800061f0 <_ZL11workerBodyDPv>
    800066fc:	fe840513          	addi	a0,s0,-24
    80006700:	ffffb097          	auipc	ra,0xffffb
    80006704:	b84080e7          	jalr	-1148(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80006708:	00003517          	auipc	a0,0x3
    8000670c:	ff050513          	addi	a0,a0,-16 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80006710:	fffff097          	auipc	ra,0xfffff
    80006714:	278080e7          	jalr	632(ra) # 80005988 <_Z11printStringPKc>
    80006718:	00c0006f          	j	80006724 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000671c:	ffffb097          	auipc	ra,0xffffb
    80006720:	c6c080e7          	jalr	-916(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006724:	00005797          	auipc	a5,0x5
    80006728:	5d97c783          	lbu	a5,1497(a5) # 8000bcfd <_ZL9finishedA>
    8000672c:	fe0788e3          	beqz	a5,8000671c <_Z16System_Mode_testv+0xb4>
    80006730:	00005797          	auipc	a5,0x5
    80006734:	5cc7c783          	lbu	a5,1484(a5) # 8000bcfc <_ZL9finishedB>
    80006738:	fe0782e3          	beqz	a5,8000671c <_Z16System_Mode_testv+0xb4>
    8000673c:	00005797          	auipc	a5,0x5
    80006740:	5bf7c783          	lbu	a5,1471(a5) # 8000bcfb <_ZL9finishedC>
    80006744:	fc078ce3          	beqz	a5,8000671c <_Z16System_Mode_testv+0xb4>
    80006748:	00005797          	auipc	a5,0x5
    8000674c:	5b27c783          	lbu	a5,1458(a5) # 8000bcfa <_ZL9finishedD>
    80006750:	fc0786e3          	beqz	a5,8000671c <_Z16System_Mode_testv+0xb4>
    }

}
    80006754:	02813083          	ld	ra,40(sp)
    80006758:	02013403          	ld	s0,32(sp)
    8000675c:	03010113          	addi	sp,sp,48
    80006760:	00008067          	ret

0000000080006764 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006764:	fe010113          	addi	sp,sp,-32
    80006768:	00113c23          	sd	ra,24(sp)
    8000676c:	00813823          	sd	s0,16(sp)
    80006770:	00913423          	sd	s1,8(sp)
    80006774:	01213023          	sd	s2,0(sp)
    80006778:	02010413          	addi	s0,sp,32
    8000677c:	00050493          	mv	s1,a0
    80006780:	00058913          	mv	s2,a1
    80006784:	0015879b          	addiw	a5,a1,1
    80006788:	0007851b          	sext.w	a0,a5
    8000678c:	00f4a023          	sw	a5,0(s1)
    80006790:	0004a823          	sw	zero,16(s1)
    80006794:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006798:	00251513          	slli	a0,a0,0x2
    8000679c:	ffffb097          	auipc	ra,0xffffb
    800067a0:	a5c080e7          	jalr	-1444(ra) # 800011f8 <_Z9mem_allocm>
    800067a4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800067a8:	00000593          	li	a1,0
    800067ac:	02048513          	addi	a0,s1,32
    800067b0:	ffffb097          	auipc	ra,0xffffb
    800067b4:	c14080e7          	jalr	-1004(ra) # 800013c4 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800067b8:	00090593          	mv	a1,s2
    800067bc:	01848513          	addi	a0,s1,24
    800067c0:	ffffb097          	auipc	ra,0xffffb
    800067c4:	c04080e7          	jalr	-1020(ra) # 800013c4 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800067c8:	00100593          	li	a1,1
    800067cc:	02848513          	addi	a0,s1,40
    800067d0:	ffffb097          	auipc	ra,0xffffb
    800067d4:	bf4080e7          	jalr	-1036(ra) # 800013c4 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    800067d8:	00100593          	li	a1,1
    800067dc:	03048513          	addi	a0,s1,48
    800067e0:	ffffb097          	auipc	ra,0xffffb
    800067e4:	be4080e7          	jalr	-1052(ra) # 800013c4 <_Z8sem_openPP4_semj>
}
    800067e8:	01813083          	ld	ra,24(sp)
    800067ec:	01013403          	ld	s0,16(sp)
    800067f0:	00813483          	ld	s1,8(sp)
    800067f4:	00013903          	ld	s2,0(sp)
    800067f8:	02010113          	addi	sp,sp,32
    800067fc:	00008067          	ret

0000000080006800 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006800:	fe010113          	addi	sp,sp,-32
    80006804:	00113c23          	sd	ra,24(sp)
    80006808:	00813823          	sd	s0,16(sp)
    8000680c:	00913423          	sd	s1,8(sp)
    80006810:	01213023          	sd	s2,0(sp)
    80006814:	02010413          	addi	s0,sp,32
    80006818:	00050493          	mv	s1,a0
    8000681c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006820:	01853503          	ld	a0,24(a0)
    80006824:	ffffb097          	auipc	ra,0xffffb
    80006828:	c24080e7          	jalr	-988(ra) # 80001448 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    8000682c:	0304b503          	ld	a0,48(s1)
    80006830:	ffffb097          	auipc	ra,0xffffb
    80006834:	c18080e7          	jalr	-1000(ra) # 80001448 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006838:	0084b783          	ld	a5,8(s1)
    8000683c:	0144a703          	lw	a4,20(s1)
    80006840:	00271713          	slli	a4,a4,0x2
    80006844:	00e787b3          	add	a5,a5,a4
    80006848:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000684c:	0144a783          	lw	a5,20(s1)
    80006850:	0017879b          	addiw	a5,a5,1
    80006854:	0004a703          	lw	a4,0(s1)
    80006858:	02e7e7bb          	remw	a5,a5,a4
    8000685c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006860:	0304b503          	ld	a0,48(s1)
    80006864:	ffffb097          	auipc	ra,0xffffb
    80006868:	c24080e7          	jalr	-988(ra) # 80001488 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    8000686c:	0204b503          	ld	a0,32(s1)
    80006870:	ffffb097          	auipc	ra,0xffffb
    80006874:	c18080e7          	jalr	-1000(ra) # 80001488 <_Z10sem_signalP4_sem>

}
    80006878:	01813083          	ld	ra,24(sp)
    8000687c:	01013403          	ld	s0,16(sp)
    80006880:	00813483          	ld	s1,8(sp)
    80006884:	00013903          	ld	s2,0(sp)
    80006888:	02010113          	addi	sp,sp,32
    8000688c:	00008067          	ret

0000000080006890 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006890:	fe010113          	addi	sp,sp,-32
    80006894:	00113c23          	sd	ra,24(sp)
    80006898:	00813823          	sd	s0,16(sp)
    8000689c:	00913423          	sd	s1,8(sp)
    800068a0:	01213023          	sd	s2,0(sp)
    800068a4:	02010413          	addi	s0,sp,32
    800068a8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800068ac:	02053503          	ld	a0,32(a0)
    800068b0:	ffffb097          	auipc	ra,0xffffb
    800068b4:	b98080e7          	jalr	-1128(ra) # 80001448 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800068b8:	0284b503          	ld	a0,40(s1)
    800068bc:	ffffb097          	auipc	ra,0xffffb
    800068c0:	b8c080e7          	jalr	-1140(ra) # 80001448 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    800068c4:	0084b703          	ld	a4,8(s1)
    800068c8:	0104a783          	lw	a5,16(s1)
    800068cc:	00279693          	slli	a3,a5,0x2
    800068d0:	00d70733          	add	a4,a4,a3
    800068d4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800068d8:	0017879b          	addiw	a5,a5,1
    800068dc:	0004a703          	lw	a4,0(s1)
    800068e0:	02e7e7bb          	remw	a5,a5,a4
    800068e4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800068e8:	0284b503          	ld	a0,40(s1)
    800068ec:	ffffb097          	auipc	ra,0xffffb
    800068f0:	b9c080e7          	jalr	-1124(ra) # 80001488 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800068f4:	0184b503          	ld	a0,24(s1)
    800068f8:	ffffb097          	auipc	ra,0xffffb
    800068fc:	b90080e7          	jalr	-1136(ra) # 80001488 <_Z10sem_signalP4_sem>

    return ret;
}
    80006900:	00090513          	mv	a0,s2
    80006904:	01813083          	ld	ra,24(sp)
    80006908:	01013403          	ld	s0,16(sp)
    8000690c:	00813483          	ld	s1,8(sp)
    80006910:	00013903          	ld	s2,0(sp)
    80006914:	02010113          	addi	sp,sp,32
    80006918:	00008067          	ret

000000008000691c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000691c:	fe010113          	addi	sp,sp,-32
    80006920:	00113c23          	sd	ra,24(sp)
    80006924:	00813823          	sd	s0,16(sp)
    80006928:	00913423          	sd	s1,8(sp)
    8000692c:	01213023          	sd	s2,0(sp)
    80006930:	02010413          	addi	s0,sp,32
    80006934:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006938:	02853503          	ld	a0,40(a0)
    8000693c:	ffffb097          	auipc	ra,0xffffb
    80006940:	b0c080e7          	jalr	-1268(ra) # 80001448 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006944:	0304b503          	ld	a0,48(s1)
    80006948:	ffffb097          	auipc	ra,0xffffb
    8000694c:	b00080e7          	jalr	-1280(ra) # 80001448 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006950:	0144a783          	lw	a5,20(s1)
    80006954:	0104a903          	lw	s2,16(s1)
    80006958:	0327ce63          	blt	a5,s2,80006994 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000695c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006960:	0304b503          	ld	a0,48(s1)
    80006964:	ffffb097          	auipc	ra,0xffffb
    80006968:	b24080e7          	jalr	-1244(ra) # 80001488 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    8000696c:	0284b503          	ld	a0,40(s1)
    80006970:	ffffb097          	auipc	ra,0xffffb
    80006974:	b18080e7          	jalr	-1256(ra) # 80001488 <_Z10sem_signalP4_sem>

    return ret;
}
    80006978:	00090513          	mv	a0,s2
    8000697c:	01813083          	ld	ra,24(sp)
    80006980:	01013403          	ld	s0,16(sp)
    80006984:	00813483          	ld	s1,8(sp)
    80006988:	00013903          	ld	s2,0(sp)
    8000698c:	02010113          	addi	sp,sp,32
    80006990:	00008067          	ret
        ret = cap - head + tail;
    80006994:	0004a703          	lw	a4,0(s1)
    80006998:	4127093b          	subw	s2,a4,s2
    8000699c:	00f9093b          	addw	s2,s2,a5
    800069a0:	fc1ff06f          	j	80006960 <_ZN6Buffer6getCntEv+0x44>

00000000800069a4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800069a4:	fe010113          	addi	sp,sp,-32
    800069a8:	00113c23          	sd	ra,24(sp)
    800069ac:	00813823          	sd	s0,16(sp)
    800069b0:	00913423          	sd	s1,8(sp)
    800069b4:	02010413          	addi	s0,sp,32
    800069b8:	00050493          	mv	s1,a0
    putc('\n');
    800069bc:	00a00513          	li	a0,10
    800069c0:	ffffb097          	auipc	ra,0xffffb
    800069c4:	c10080e7          	jalr	-1008(ra) # 800015d0 <_Z4putcc>
    printString("Buffer deleted!\n");
    800069c8:	00003517          	auipc	a0,0x3
    800069cc:	d4850513          	addi	a0,a0,-696 # 80009710 <CONSOLE_STATUS+0x700>
    800069d0:	fffff097          	auipc	ra,0xfffff
    800069d4:	fb8080e7          	jalr	-72(ra) # 80005988 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800069d8:	00048513          	mv	a0,s1
    800069dc:	00000097          	auipc	ra,0x0
    800069e0:	f40080e7          	jalr	-192(ra) # 8000691c <_ZN6Buffer6getCntEv>
    800069e4:	02a05c63          	blez	a0,80006a1c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800069e8:	0084b783          	ld	a5,8(s1)
    800069ec:	0104a703          	lw	a4,16(s1)
    800069f0:	00271713          	slli	a4,a4,0x2
    800069f4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800069f8:	0007c503          	lbu	a0,0(a5)
    800069fc:	ffffb097          	auipc	ra,0xffffb
    80006a00:	bd4080e7          	jalr	-1068(ra) # 800015d0 <_Z4putcc>
        head = (head + 1) % cap;
    80006a04:	0104a783          	lw	a5,16(s1)
    80006a08:	0017879b          	addiw	a5,a5,1
    80006a0c:	0004a703          	lw	a4,0(s1)
    80006a10:	02e7e7bb          	remw	a5,a5,a4
    80006a14:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006a18:	fc1ff06f          	j	800069d8 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006a1c:	02100513          	li	a0,33
    80006a20:	ffffb097          	auipc	ra,0xffffb
    80006a24:	bb0080e7          	jalr	-1104(ra) # 800015d0 <_Z4putcc>
    putc('\n');
    80006a28:	00a00513          	li	a0,10
    80006a2c:	ffffb097          	auipc	ra,0xffffb
    80006a30:	ba4080e7          	jalr	-1116(ra) # 800015d0 <_Z4putcc>
    mem_free(buffer);
    80006a34:	0084b503          	ld	a0,8(s1)
    80006a38:	ffffb097          	auipc	ra,0xffffb
    80006a3c:	80c080e7          	jalr	-2036(ra) # 80001244 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006a40:	0204b503          	ld	a0,32(s1)
    80006a44:	ffffb097          	auipc	ra,0xffffb
    80006a48:	9c4080e7          	jalr	-1596(ra) # 80001408 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006a4c:	0184b503          	ld	a0,24(s1)
    80006a50:	ffffb097          	auipc	ra,0xffffb
    80006a54:	9b8080e7          	jalr	-1608(ra) # 80001408 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006a58:	0304b503          	ld	a0,48(s1)
    80006a5c:	ffffb097          	auipc	ra,0xffffb
    80006a60:	9ac080e7          	jalr	-1620(ra) # 80001408 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006a64:	0284b503          	ld	a0,40(s1)
    80006a68:	ffffb097          	auipc	ra,0xffffb
    80006a6c:	9a0080e7          	jalr	-1632(ra) # 80001408 <_Z9sem_closeP4_sem>
}
    80006a70:	01813083          	ld	ra,24(sp)
    80006a74:	01013403          	ld	s0,16(sp)
    80006a78:	00813483          	ld	s1,8(sp)
    80006a7c:	02010113          	addi	sp,sp,32
    80006a80:	00008067          	ret

0000000080006a84 <start>:
    80006a84:	ff010113          	addi	sp,sp,-16
    80006a88:	00813423          	sd	s0,8(sp)
    80006a8c:	01010413          	addi	s0,sp,16
    80006a90:	300027f3          	csrr	a5,mstatus
    80006a94:	ffffe737          	lui	a4,0xffffe
    80006a98:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff189f>
    80006a9c:	00e7f7b3          	and	a5,a5,a4
    80006aa0:	00001737          	lui	a4,0x1
    80006aa4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006aa8:	00e7e7b3          	or	a5,a5,a4
    80006aac:	30079073          	csrw	mstatus,a5
    80006ab0:	00000797          	auipc	a5,0x0
    80006ab4:	16078793          	addi	a5,a5,352 # 80006c10 <system_main>
    80006ab8:	34179073          	csrw	mepc,a5
    80006abc:	00000793          	li	a5,0
    80006ac0:	18079073          	csrw	satp,a5
    80006ac4:	000107b7          	lui	a5,0x10
    80006ac8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006acc:	30279073          	csrw	medeleg,a5
    80006ad0:	30379073          	csrw	mideleg,a5
    80006ad4:	104027f3          	csrr	a5,sie
    80006ad8:	2227e793          	ori	a5,a5,546
    80006adc:	10479073          	csrw	sie,a5
    80006ae0:	fff00793          	li	a5,-1
    80006ae4:	00a7d793          	srli	a5,a5,0xa
    80006ae8:	3b079073          	csrw	pmpaddr0,a5
    80006aec:	00f00793          	li	a5,15
    80006af0:	3a079073          	csrw	pmpcfg0,a5
    80006af4:	f14027f3          	csrr	a5,mhartid
    80006af8:	0200c737          	lui	a4,0x200c
    80006afc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006b00:	0007869b          	sext.w	a3,a5
    80006b04:	00269713          	slli	a4,a3,0x2
    80006b08:	000f4637          	lui	a2,0xf4
    80006b0c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006b10:	00d70733          	add	a4,a4,a3
    80006b14:	0037979b          	slliw	a5,a5,0x3
    80006b18:	020046b7          	lui	a3,0x2004
    80006b1c:	00d787b3          	add	a5,a5,a3
    80006b20:	00c585b3          	add	a1,a1,a2
    80006b24:	00371693          	slli	a3,a4,0x3
    80006b28:	00005717          	auipc	a4,0x5
    80006b2c:	1d870713          	addi	a4,a4,472 # 8000bd00 <timer_scratch>
    80006b30:	00b7b023          	sd	a1,0(a5)
    80006b34:	00d70733          	add	a4,a4,a3
    80006b38:	00f73c23          	sd	a5,24(a4)
    80006b3c:	02c73023          	sd	a2,32(a4)
    80006b40:	34071073          	csrw	mscratch,a4
    80006b44:	00000797          	auipc	a5,0x0
    80006b48:	6ec78793          	addi	a5,a5,1772 # 80007230 <timervec>
    80006b4c:	30579073          	csrw	mtvec,a5
    80006b50:	300027f3          	csrr	a5,mstatus
    80006b54:	0087e793          	ori	a5,a5,8
    80006b58:	30079073          	csrw	mstatus,a5
    80006b5c:	304027f3          	csrr	a5,mie
    80006b60:	0807e793          	ori	a5,a5,128
    80006b64:	30479073          	csrw	mie,a5
    80006b68:	f14027f3          	csrr	a5,mhartid
    80006b6c:	0007879b          	sext.w	a5,a5
    80006b70:	00078213          	mv	tp,a5
    80006b74:	30200073          	mret
    80006b78:	00813403          	ld	s0,8(sp)
    80006b7c:	01010113          	addi	sp,sp,16
    80006b80:	00008067          	ret

0000000080006b84 <timerinit>:
    80006b84:	ff010113          	addi	sp,sp,-16
    80006b88:	00813423          	sd	s0,8(sp)
    80006b8c:	01010413          	addi	s0,sp,16
    80006b90:	f14027f3          	csrr	a5,mhartid
    80006b94:	0200c737          	lui	a4,0x200c
    80006b98:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006b9c:	0007869b          	sext.w	a3,a5
    80006ba0:	00269713          	slli	a4,a3,0x2
    80006ba4:	000f4637          	lui	a2,0xf4
    80006ba8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006bac:	00d70733          	add	a4,a4,a3
    80006bb0:	0037979b          	slliw	a5,a5,0x3
    80006bb4:	020046b7          	lui	a3,0x2004
    80006bb8:	00d787b3          	add	a5,a5,a3
    80006bbc:	00c585b3          	add	a1,a1,a2
    80006bc0:	00371693          	slli	a3,a4,0x3
    80006bc4:	00005717          	auipc	a4,0x5
    80006bc8:	13c70713          	addi	a4,a4,316 # 8000bd00 <timer_scratch>
    80006bcc:	00b7b023          	sd	a1,0(a5)
    80006bd0:	00d70733          	add	a4,a4,a3
    80006bd4:	00f73c23          	sd	a5,24(a4)
    80006bd8:	02c73023          	sd	a2,32(a4)
    80006bdc:	34071073          	csrw	mscratch,a4
    80006be0:	00000797          	auipc	a5,0x0
    80006be4:	65078793          	addi	a5,a5,1616 # 80007230 <timervec>
    80006be8:	30579073          	csrw	mtvec,a5
    80006bec:	300027f3          	csrr	a5,mstatus
    80006bf0:	0087e793          	ori	a5,a5,8
    80006bf4:	30079073          	csrw	mstatus,a5
    80006bf8:	304027f3          	csrr	a5,mie
    80006bfc:	0807e793          	ori	a5,a5,128
    80006c00:	30479073          	csrw	mie,a5
    80006c04:	00813403          	ld	s0,8(sp)
    80006c08:	01010113          	addi	sp,sp,16
    80006c0c:	00008067          	ret

0000000080006c10 <system_main>:
    80006c10:	fe010113          	addi	sp,sp,-32
    80006c14:	00813823          	sd	s0,16(sp)
    80006c18:	00913423          	sd	s1,8(sp)
    80006c1c:	00113c23          	sd	ra,24(sp)
    80006c20:	02010413          	addi	s0,sp,32
    80006c24:	00000097          	auipc	ra,0x0
    80006c28:	0c4080e7          	jalr	196(ra) # 80006ce8 <cpuid>
    80006c2c:	00005497          	auipc	s1,0x5
    80006c30:	02448493          	addi	s1,s1,36 # 8000bc50 <started>
    80006c34:	02050263          	beqz	a0,80006c58 <system_main+0x48>
    80006c38:	0004a783          	lw	a5,0(s1)
    80006c3c:	0007879b          	sext.w	a5,a5
    80006c40:	fe078ce3          	beqz	a5,80006c38 <system_main+0x28>
    80006c44:	0ff0000f          	fence
    80006c48:	00003517          	auipc	a0,0x3
    80006c4c:	b2050513          	addi	a0,a0,-1248 # 80009768 <CONSOLE_STATUS+0x758>
    80006c50:	00001097          	auipc	ra,0x1
    80006c54:	a7c080e7          	jalr	-1412(ra) # 800076cc <panic>
    80006c58:	00001097          	auipc	ra,0x1
    80006c5c:	9d0080e7          	jalr	-1584(ra) # 80007628 <consoleinit>
    80006c60:	00001097          	auipc	ra,0x1
    80006c64:	15c080e7          	jalr	348(ra) # 80007dbc <printfinit>
    80006c68:	00002517          	auipc	a0,0x2
    80006c6c:	65050513          	addi	a0,a0,1616 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006c70:	00001097          	auipc	ra,0x1
    80006c74:	ab8080e7          	jalr	-1352(ra) # 80007728 <__printf>
    80006c78:	00003517          	auipc	a0,0x3
    80006c7c:	ac050513          	addi	a0,a0,-1344 # 80009738 <CONSOLE_STATUS+0x728>
    80006c80:	00001097          	auipc	ra,0x1
    80006c84:	aa8080e7          	jalr	-1368(ra) # 80007728 <__printf>
    80006c88:	00002517          	auipc	a0,0x2
    80006c8c:	63050513          	addi	a0,a0,1584 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006c90:	00001097          	auipc	ra,0x1
    80006c94:	a98080e7          	jalr	-1384(ra) # 80007728 <__printf>
    80006c98:	00001097          	auipc	ra,0x1
    80006c9c:	4b0080e7          	jalr	1200(ra) # 80008148 <kinit>
    80006ca0:	00000097          	auipc	ra,0x0
    80006ca4:	148080e7          	jalr	328(ra) # 80006de8 <trapinit>
    80006ca8:	00000097          	auipc	ra,0x0
    80006cac:	16c080e7          	jalr	364(ra) # 80006e14 <trapinithart>
    80006cb0:	00000097          	auipc	ra,0x0
    80006cb4:	5c0080e7          	jalr	1472(ra) # 80007270 <plicinit>
    80006cb8:	00000097          	auipc	ra,0x0
    80006cbc:	5e0080e7          	jalr	1504(ra) # 80007298 <plicinithart>
    80006cc0:	00000097          	auipc	ra,0x0
    80006cc4:	078080e7          	jalr	120(ra) # 80006d38 <userinit>
    80006cc8:	0ff0000f          	fence
    80006ccc:	00100793          	li	a5,1
    80006cd0:	00003517          	auipc	a0,0x3
    80006cd4:	a8050513          	addi	a0,a0,-1408 # 80009750 <CONSOLE_STATUS+0x740>
    80006cd8:	00f4a023          	sw	a5,0(s1)
    80006cdc:	00001097          	auipc	ra,0x1
    80006ce0:	a4c080e7          	jalr	-1460(ra) # 80007728 <__printf>
    80006ce4:	0000006f          	j	80006ce4 <system_main+0xd4>

0000000080006ce8 <cpuid>:
    80006ce8:	ff010113          	addi	sp,sp,-16
    80006cec:	00813423          	sd	s0,8(sp)
    80006cf0:	01010413          	addi	s0,sp,16
    80006cf4:	00020513          	mv	a0,tp
    80006cf8:	00813403          	ld	s0,8(sp)
    80006cfc:	0005051b          	sext.w	a0,a0
    80006d00:	01010113          	addi	sp,sp,16
    80006d04:	00008067          	ret

0000000080006d08 <mycpu>:
    80006d08:	ff010113          	addi	sp,sp,-16
    80006d0c:	00813423          	sd	s0,8(sp)
    80006d10:	01010413          	addi	s0,sp,16
    80006d14:	00020793          	mv	a5,tp
    80006d18:	00813403          	ld	s0,8(sp)
    80006d1c:	0007879b          	sext.w	a5,a5
    80006d20:	00779793          	slli	a5,a5,0x7
    80006d24:	00006517          	auipc	a0,0x6
    80006d28:	00c50513          	addi	a0,a0,12 # 8000cd30 <cpus>
    80006d2c:	00f50533          	add	a0,a0,a5
    80006d30:	01010113          	addi	sp,sp,16
    80006d34:	00008067          	ret

0000000080006d38 <userinit>:
    80006d38:	ff010113          	addi	sp,sp,-16
    80006d3c:	00813423          	sd	s0,8(sp)
    80006d40:	01010413          	addi	s0,sp,16
    80006d44:	00813403          	ld	s0,8(sp)
    80006d48:	01010113          	addi	sp,sp,16
    80006d4c:	ffffc317          	auipc	t1,0xffffc
    80006d50:	87430067          	jr	-1932(t1) # 800025c0 <main>

0000000080006d54 <either_copyout>:
    80006d54:	ff010113          	addi	sp,sp,-16
    80006d58:	00813023          	sd	s0,0(sp)
    80006d5c:	00113423          	sd	ra,8(sp)
    80006d60:	01010413          	addi	s0,sp,16
    80006d64:	02051663          	bnez	a0,80006d90 <either_copyout+0x3c>
    80006d68:	00058513          	mv	a0,a1
    80006d6c:	00060593          	mv	a1,a2
    80006d70:	0006861b          	sext.w	a2,a3
    80006d74:	00002097          	auipc	ra,0x2
    80006d78:	c60080e7          	jalr	-928(ra) # 800089d4 <__memmove>
    80006d7c:	00813083          	ld	ra,8(sp)
    80006d80:	00013403          	ld	s0,0(sp)
    80006d84:	00000513          	li	a0,0
    80006d88:	01010113          	addi	sp,sp,16
    80006d8c:	00008067          	ret
    80006d90:	00003517          	auipc	a0,0x3
    80006d94:	a0050513          	addi	a0,a0,-1536 # 80009790 <CONSOLE_STATUS+0x780>
    80006d98:	00001097          	auipc	ra,0x1
    80006d9c:	934080e7          	jalr	-1740(ra) # 800076cc <panic>

0000000080006da0 <either_copyin>:
    80006da0:	ff010113          	addi	sp,sp,-16
    80006da4:	00813023          	sd	s0,0(sp)
    80006da8:	00113423          	sd	ra,8(sp)
    80006dac:	01010413          	addi	s0,sp,16
    80006db0:	02059463          	bnez	a1,80006dd8 <either_copyin+0x38>
    80006db4:	00060593          	mv	a1,a2
    80006db8:	0006861b          	sext.w	a2,a3
    80006dbc:	00002097          	auipc	ra,0x2
    80006dc0:	c18080e7          	jalr	-1000(ra) # 800089d4 <__memmove>
    80006dc4:	00813083          	ld	ra,8(sp)
    80006dc8:	00013403          	ld	s0,0(sp)
    80006dcc:	00000513          	li	a0,0
    80006dd0:	01010113          	addi	sp,sp,16
    80006dd4:	00008067          	ret
    80006dd8:	00003517          	auipc	a0,0x3
    80006ddc:	9e050513          	addi	a0,a0,-1568 # 800097b8 <CONSOLE_STATUS+0x7a8>
    80006de0:	00001097          	auipc	ra,0x1
    80006de4:	8ec080e7          	jalr	-1812(ra) # 800076cc <panic>

0000000080006de8 <trapinit>:
    80006de8:	ff010113          	addi	sp,sp,-16
    80006dec:	00813423          	sd	s0,8(sp)
    80006df0:	01010413          	addi	s0,sp,16
    80006df4:	00813403          	ld	s0,8(sp)
    80006df8:	00003597          	auipc	a1,0x3
    80006dfc:	9e858593          	addi	a1,a1,-1560 # 800097e0 <CONSOLE_STATUS+0x7d0>
    80006e00:	00006517          	auipc	a0,0x6
    80006e04:	fb050513          	addi	a0,a0,-80 # 8000cdb0 <tickslock>
    80006e08:	01010113          	addi	sp,sp,16
    80006e0c:	00001317          	auipc	t1,0x1
    80006e10:	5cc30067          	jr	1484(t1) # 800083d8 <initlock>

0000000080006e14 <trapinithart>:
    80006e14:	ff010113          	addi	sp,sp,-16
    80006e18:	00813423          	sd	s0,8(sp)
    80006e1c:	01010413          	addi	s0,sp,16
    80006e20:	00000797          	auipc	a5,0x0
    80006e24:	30078793          	addi	a5,a5,768 # 80007120 <kernelvec>
    80006e28:	10579073          	csrw	stvec,a5
    80006e2c:	00813403          	ld	s0,8(sp)
    80006e30:	01010113          	addi	sp,sp,16
    80006e34:	00008067          	ret

0000000080006e38 <usertrap>:
    80006e38:	ff010113          	addi	sp,sp,-16
    80006e3c:	00813423          	sd	s0,8(sp)
    80006e40:	01010413          	addi	s0,sp,16
    80006e44:	00813403          	ld	s0,8(sp)
    80006e48:	01010113          	addi	sp,sp,16
    80006e4c:	00008067          	ret

0000000080006e50 <usertrapret>:
    80006e50:	ff010113          	addi	sp,sp,-16
    80006e54:	00813423          	sd	s0,8(sp)
    80006e58:	01010413          	addi	s0,sp,16
    80006e5c:	00813403          	ld	s0,8(sp)
    80006e60:	01010113          	addi	sp,sp,16
    80006e64:	00008067          	ret

0000000080006e68 <kerneltrap>:
    80006e68:	fe010113          	addi	sp,sp,-32
    80006e6c:	00813823          	sd	s0,16(sp)
    80006e70:	00113c23          	sd	ra,24(sp)
    80006e74:	00913423          	sd	s1,8(sp)
    80006e78:	02010413          	addi	s0,sp,32
    80006e7c:	142025f3          	csrr	a1,scause
    80006e80:	100027f3          	csrr	a5,sstatus
    80006e84:	0027f793          	andi	a5,a5,2
    80006e88:	10079c63          	bnez	a5,80006fa0 <kerneltrap+0x138>
    80006e8c:	142027f3          	csrr	a5,scause
    80006e90:	0207ce63          	bltz	a5,80006ecc <kerneltrap+0x64>
    80006e94:	00003517          	auipc	a0,0x3
    80006e98:	99450513          	addi	a0,a0,-1644 # 80009828 <CONSOLE_STATUS+0x818>
    80006e9c:	00001097          	auipc	ra,0x1
    80006ea0:	88c080e7          	jalr	-1908(ra) # 80007728 <__printf>
    80006ea4:	141025f3          	csrr	a1,sepc
    80006ea8:	14302673          	csrr	a2,stval
    80006eac:	00003517          	auipc	a0,0x3
    80006eb0:	98c50513          	addi	a0,a0,-1652 # 80009838 <CONSOLE_STATUS+0x828>
    80006eb4:	00001097          	auipc	ra,0x1
    80006eb8:	874080e7          	jalr	-1932(ra) # 80007728 <__printf>
    80006ebc:	00003517          	auipc	a0,0x3
    80006ec0:	99450513          	addi	a0,a0,-1644 # 80009850 <CONSOLE_STATUS+0x840>
    80006ec4:	00001097          	auipc	ra,0x1
    80006ec8:	808080e7          	jalr	-2040(ra) # 800076cc <panic>
    80006ecc:	0ff7f713          	andi	a4,a5,255
    80006ed0:	00900693          	li	a3,9
    80006ed4:	04d70063          	beq	a4,a3,80006f14 <kerneltrap+0xac>
    80006ed8:	fff00713          	li	a4,-1
    80006edc:	03f71713          	slli	a4,a4,0x3f
    80006ee0:	00170713          	addi	a4,a4,1
    80006ee4:	fae798e3          	bne	a5,a4,80006e94 <kerneltrap+0x2c>
    80006ee8:	00000097          	auipc	ra,0x0
    80006eec:	e00080e7          	jalr	-512(ra) # 80006ce8 <cpuid>
    80006ef0:	06050663          	beqz	a0,80006f5c <kerneltrap+0xf4>
    80006ef4:	144027f3          	csrr	a5,sip
    80006ef8:	ffd7f793          	andi	a5,a5,-3
    80006efc:	14479073          	csrw	sip,a5
    80006f00:	01813083          	ld	ra,24(sp)
    80006f04:	01013403          	ld	s0,16(sp)
    80006f08:	00813483          	ld	s1,8(sp)
    80006f0c:	02010113          	addi	sp,sp,32
    80006f10:	00008067          	ret
    80006f14:	00000097          	auipc	ra,0x0
    80006f18:	3d0080e7          	jalr	976(ra) # 800072e4 <plic_claim>
    80006f1c:	00a00793          	li	a5,10
    80006f20:	00050493          	mv	s1,a0
    80006f24:	06f50863          	beq	a0,a5,80006f94 <kerneltrap+0x12c>
    80006f28:	fc050ce3          	beqz	a0,80006f00 <kerneltrap+0x98>
    80006f2c:	00050593          	mv	a1,a0
    80006f30:	00003517          	auipc	a0,0x3
    80006f34:	8d850513          	addi	a0,a0,-1832 # 80009808 <CONSOLE_STATUS+0x7f8>
    80006f38:	00000097          	auipc	ra,0x0
    80006f3c:	7f0080e7          	jalr	2032(ra) # 80007728 <__printf>
    80006f40:	01013403          	ld	s0,16(sp)
    80006f44:	01813083          	ld	ra,24(sp)
    80006f48:	00048513          	mv	a0,s1
    80006f4c:	00813483          	ld	s1,8(sp)
    80006f50:	02010113          	addi	sp,sp,32
    80006f54:	00000317          	auipc	t1,0x0
    80006f58:	3c830067          	jr	968(t1) # 8000731c <plic_complete>
    80006f5c:	00006517          	auipc	a0,0x6
    80006f60:	e5450513          	addi	a0,a0,-428 # 8000cdb0 <tickslock>
    80006f64:	00001097          	auipc	ra,0x1
    80006f68:	498080e7          	jalr	1176(ra) # 800083fc <acquire>
    80006f6c:	00005717          	auipc	a4,0x5
    80006f70:	ce870713          	addi	a4,a4,-792 # 8000bc54 <ticks>
    80006f74:	00072783          	lw	a5,0(a4)
    80006f78:	00006517          	auipc	a0,0x6
    80006f7c:	e3850513          	addi	a0,a0,-456 # 8000cdb0 <tickslock>
    80006f80:	0017879b          	addiw	a5,a5,1
    80006f84:	00f72023          	sw	a5,0(a4)
    80006f88:	00001097          	auipc	ra,0x1
    80006f8c:	540080e7          	jalr	1344(ra) # 800084c8 <release>
    80006f90:	f65ff06f          	j	80006ef4 <kerneltrap+0x8c>
    80006f94:	00001097          	auipc	ra,0x1
    80006f98:	09c080e7          	jalr	156(ra) # 80008030 <uartintr>
    80006f9c:	fa5ff06f          	j	80006f40 <kerneltrap+0xd8>
    80006fa0:	00003517          	auipc	a0,0x3
    80006fa4:	84850513          	addi	a0,a0,-1976 # 800097e8 <CONSOLE_STATUS+0x7d8>
    80006fa8:	00000097          	auipc	ra,0x0
    80006fac:	724080e7          	jalr	1828(ra) # 800076cc <panic>

0000000080006fb0 <clockintr>:
    80006fb0:	fe010113          	addi	sp,sp,-32
    80006fb4:	00813823          	sd	s0,16(sp)
    80006fb8:	00913423          	sd	s1,8(sp)
    80006fbc:	00113c23          	sd	ra,24(sp)
    80006fc0:	02010413          	addi	s0,sp,32
    80006fc4:	00006497          	auipc	s1,0x6
    80006fc8:	dec48493          	addi	s1,s1,-532 # 8000cdb0 <tickslock>
    80006fcc:	00048513          	mv	a0,s1
    80006fd0:	00001097          	auipc	ra,0x1
    80006fd4:	42c080e7          	jalr	1068(ra) # 800083fc <acquire>
    80006fd8:	00005717          	auipc	a4,0x5
    80006fdc:	c7c70713          	addi	a4,a4,-900 # 8000bc54 <ticks>
    80006fe0:	00072783          	lw	a5,0(a4)
    80006fe4:	01013403          	ld	s0,16(sp)
    80006fe8:	01813083          	ld	ra,24(sp)
    80006fec:	00048513          	mv	a0,s1
    80006ff0:	0017879b          	addiw	a5,a5,1
    80006ff4:	00813483          	ld	s1,8(sp)
    80006ff8:	00f72023          	sw	a5,0(a4)
    80006ffc:	02010113          	addi	sp,sp,32
    80007000:	00001317          	auipc	t1,0x1
    80007004:	4c830067          	jr	1224(t1) # 800084c8 <release>

0000000080007008 <devintr>:
    80007008:	142027f3          	csrr	a5,scause
    8000700c:	00000513          	li	a0,0
    80007010:	0007c463          	bltz	a5,80007018 <devintr+0x10>
    80007014:	00008067          	ret
    80007018:	fe010113          	addi	sp,sp,-32
    8000701c:	00813823          	sd	s0,16(sp)
    80007020:	00113c23          	sd	ra,24(sp)
    80007024:	00913423          	sd	s1,8(sp)
    80007028:	02010413          	addi	s0,sp,32
    8000702c:	0ff7f713          	andi	a4,a5,255
    80007030:	00900693          	li	a3,9
    80007034:	04d70c63          	beq	a4,a3,8000708c <devintr+0x84>
    80007038:	fff00713          	li	a4,-1
    8000703c:	03f71713          	slli	a4,a4,0x3f
    80007040:	00170713          	addi	a4,a4,1
    80007044:	00e78c63          	beq	a5,a4,8000705c <devintr+0x54>
    80007048:	01813083          	ld	ra,24(sp)
    8000704c:	01013403          	ld	s0,16(sp)
    80007050:	00813483          	ld	s1,8(sp)
    80007054:	02010113          	addi	sp,sp,32
    80007058:	00008067          	ret
    8000705c:	00000097          	auipc	ra,0x0
    80007060:	c8c080e7          	jalr	-884(ra) # 80006ce8 <cpuid>
    80007064:	06050663          	beqz	a0,800070d0 <devintr+0xc8>
    80007068:	144027f3          	csrr	a5,sip
    8000706c:	ffd7f793          	andi	a5,a5,-3
    80007070:	14479073          	csrw	sip,a5
    80007074:	01813083          	ld	ra,24(sp)
    80007078:	01013403          	ld	s0,16(sp)
    8000707c:	00813483          	ld	s1,8(sp)
    80007080:	00200513          	li	a0,2
    80007084:	02010113          	addi	sp,sp,32
    80007088:	00008067          	ret
    8000708c:	00000097          	auipc	ra,0x0
    80007090:	258080e7          	jalr	600(ra) # 800072e4 <plic_claim>
    80007094:	00a00793          	li	a5,10
    80007098:	00050493          	mv	s1,a0
    8000709c:	06f50663          	beq	a0,a5,80007108 <devintr+0x100>
    800070a0:	00100513          	li	a0,1
    800070a4:	fa0482e3          	beqz	s1,80007048 <devintr+0x40>
    800070a8:	00048593          	mv	a1,s1
    800070ac:	00002517          	auipc	a0,0x2
    800070b0:	75c50513          	addi	a0,a0,1884 # 80009808 <CONSOLE_STATUS+0x7f8>
    800070b4:	00000097          	auipc	ra,0x0
    800070b8:	674080e7          	jalr	1652(ra) # 80007728 <__printf>
    800070bc:	00048513          	mv	a0,s1
    800070c0:	00000097          	auipc	ra,0x0
    800070c4:	25c080e7          	jalr	604(ra) # 8000731c <plic_complete>
    800070c8:	00100513          	li	a0,1
    800070cc:	f7dff06f          	j	80007048 <devintr+0x40>
    800070d0:	00006517          	auipc	a0,0x6
    800070d4:	ce050513          	addi	a0,a0,-800 # 8000cdb0 <tickslock>
    800070d8:	00001097          	auipc	ra,0x1
    800070dc:	324080e7          	jalr	804(ra) # 800083fc <acquire>
    800070e0:	00005717          	auipc	a4,0x5
    800070e4:	b7470713          	addi	a4,a4,-1164 # 8000bc54 <ticks>
    800070e8:	00072783          	lw	a5,0(a4)
    800070ec:	00006517          	auipc	a0,0x6
    800070f0:	cc450513          	addi	a0,a0,-828 # 8000cdb0 <tickslock>
    800070f4:	0017879b          	addiw	a5,a5,1
    800070f8:	00f72023          	sw	a5,0(a4)
    800070fc:	00001097          	auipc	ra,0x1
    80007100:	3cc080e7          	jalr	972(ra) # 800084c8 <release>
    80007104:	f65ff06f          	j	80007068 <devintr+0x60>
    80007108:	00001097          	auipc	ra,0x1
    8000710c:	f28080e7          	jalr	-216(ra) # 80008030 <uartintr>
    80007110:	fadff06f          	j	800070bc <devintr+0xb4>
	...

0000000080007120 <kernelvec>:
    80007120:	f0010113          	addi	sp,sp,-256
    80007124:	00113023          	sd	ra,0(sp)
    80007128:	00213423          	sd	sp,8(sp)
    8000712c:	00313823          	sd	gp,16(sp)
    80007130:	00413c23          	sd	tp,24(sp)
    80007134:	02513023          	sd	t0,32(sp)
    80007138:	02613423          	sd	t1,40(sp)
    8000713c:	02713823          	sd	t2,48(sp)
    80007140:	02813c23          	sd	s0,56(sp)
    80007144:	04913023          	sd	s1,64(sp)
    80007148:	04a13423          	sd	a0,72(sp)
    8000714c:	04b13823          	sd	a1,80(sp)
    80007150:	04c13c23          	sd	a2,88(sp)
    80007154:	06d13023          	sd	a3,96(sp)
    80007158:	06e13423          	sd	a4,104(sp)
    8000715c:	06f13823          	sd	a5,112(sp)
    80007160:	07013c23          	sd	a6,120(sp)
    80007164:	09113023          	sd	a7,128(sp)
    80007168:	09213423          	sd	s2,136(sp)
    8000716c:	09313823          	sd	s3,144(sp)
    80007170:	09413c23          	sd	s4,152(sp)
    80007174:	0b513023          	sd	s5,160(sp)
    80007178:	0b613423          	sd	s6,168(sp)
    8000717c:	0b713823          	sd	s7,176(sp)
    80007180:	0b813c23          	sd	s8,184(sp)
    80007184:	0d913023          	sd	s9,192(sp)
    80007188:	0da13423          	sd	s10,200(sp)
    8000718c:	0db13823          	sd	s11,208(sp)
    80007190:	0dc13c23          	sd	t3,216(sp)
    80007194:	0fd13023          	sd	t4,224(sp)
    80007198:	0fe13423          	sd	t5,232(sp)
    8000719c:	0ff13823          	sd	t6,240(sp)
    800071a0:	cc9ff0ef          	jal	ra,80006e68 <kerneltrap>
    800071a4:	00013083          	ld	ra,0(sp)
    800071a8:	00813103          	ld	sp,8(sp)
    800071ac:	01013183          	ld	gp,16(sp)
    800071b0:	02013283          	ld	t0,32(sp)
    800071b4:	02813303          	ld	t1,40(sp)
    800071b8:	03013383          	ld	t2,48(sp)
    800071bc:	03813403          	ld	s0,56(sp)
    800071c0:	04013483          	ld	s1,64(sp)
    800071c4:	04813503          	ld	a0,72(sp)
    800071c8:	05013583          	ld	a1,80(sp)
    800071cc:	05813603          	ld	a2,88(sp)
    800071d0:	06013683          	ld	a3,96(sp)
    800071d4:	06813703          	ld	a4,104(sp)
    800071d8:	07013783          	ld	a5,112(sp)
    800071dc:	07813803          	ld	a6,120(sp)
    800071e0:	08013883          	ld	a7,128(sp)
    800071e4:	08813903          	ld	s2,136(sp)
    800071e8:	09013983          	ld	s3,144(sp)
    800071ec:	09813a03          	ld	s4,152(sp)
    800071f0:	0a013a83          	ld	s5,160(sp)
    800071f4:	0a813b03          	ld	s6,168(sp)
    800071f8:	0b013b83          	ld	s7,176(sp)
    800071fc:	0b813c03          	ld	s8,184(sp)
    80007200:	0c013c83          	ld	s9,192(sp)
    80007204:	0c813d03          	ld	s10,200(sp)
    80007208:	0d013d83          	ld	s11,208(sp)
    8000720c:	0d813e03          	ld	t3,216(sp)
    80007210:	0e013e83          	ld	t4,224(sp)
    80007214:	0e813f03          	ld	t5,232(sp)
    80007218:	0f013f83          	ld	t6,240(sp)
    8000721c:	10010113          	addi	sp,sp,256
    80007220:	10200073          	sret
    80007224:	00000013          	nop
    80007228:	00000013          	nop
    8000722c:	00000013          	nop

0000000080007230 <timervec>:
    80007230:	34051573          	csrrw	a0,mscratch,a0
    80007234:	00b53023          	sd	a1,0(a0)
    80007238:	00c53423          	sd	a2,8(a0)
    8000723c:	00d53823          	sd	a3,16(a0)
    80007240:	01853583          	ld	a1,24(a0)
    80007244:	02053603          	ld	a2,32(a0)
    80007248:	0005b683          	ld	a3,0(a1)
    8000724c:	00c686b3          	add	a3,a3,a2
    80007250:	00d5b023          	sd	a3,0(a1)
    80007254:	00200593          	li	a1,2
    80007258:	14459073          	csrw	sip,a1
    8000725c:	01053683          	ld	a3,16(a0)
    80007260:	00853603          	ld	a2,8(a0)
    80007264:	00053583          	ld	a1,0(a0)
    80007268:	34051573          	csrrw	a0,mscratch,a0
    8000726c:	30200073          	mret

0000000080007270 <plicinit>:
    80007270:	ff010113          	addi	sp,sp,-16
    80007274:	00813423          	sd	s0,8(sp)
    80007278:	01010413          	addi	s0,sp,16
    8000727c:	00813403          	ld	s0,8(sp)
    80007280:	0c0007b7          	lui	a5,0xc000
    80007284:	00100713          	li	a4,1
    80007288:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000728c:	00e7a223          	sw	a4,4(a5)
    80007290:	01010113          	addi	sp,sp,16
    80007294:	00008067          	ret

0000000080007298 <plicinithart>:
    80007298:	ff010113          	addi	sp,sp,-16
    8000729c:	00813023          	sd	s0,0(sp)
    800072a0:	00113423          	sd	ra,8(sp)
    800072a4:	01010413          	addi	s0,sp,16
    800072a8:	00000097          	auipc	ra,0x0
    800072ac:	a40080e7          	jalr	-1472(ra) # 80006ce8 <cpuid>
    800072b0:	0085171b          	slliw	a4,a0,0x8
    800072b4:	0c0027b7          	lui	a5,0xc002
    800072b8:	00e787b3          	add	a5,a5,a4
    800072bc:	40200713          	li	a4,1026
    800072c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800072c4:	00813083          	ld	ra,8(sp)
    800072c8:	00013403          	ld	s0,0(sp)
    800072cc:	00d5151b          	slliw	a0,a0,0xd
    800072d0:	0c2017b7          	lui	a5,0xc201
    800072d4:	00a78533          	add	a0,a5,a0
    800072d8:	00052023          	sw	zero,0(a0)
    800072dc:	01010113          	addi	sp,sp,16
    800072e0:	00008067          	ret

00000000800072e4 <plic_claim>:
    800072e4:	ff010113          	addi	sp,sp,-16
    800072e8:	00813023          	sd	s0,0(sp)
    800072ec:	00113423          	sd	ra,8(sp)
    800072f0:	01010413          	addi	s0,sp,16
    800072f4:	00000097          	auipc	ra,0x0
    800072f8:	9f4080e7          	jalr	-1548(ra) # 80006ce8 <cpuid>
    800072fc:	00813083          	ld	ra,8(sp)
    80007300:	00013403          	ld	s0,0(sp)
    80007304:	00d5151b          	slliw	a0,a0,0xd
    80007308:	0c2017b7          	lui	a5,0xc201
    8000730c:	00a78533          	add	a0,a5,a0
    80007310:	00452503          	lw	a0,4(a0)
    80007314:	01010113          	addi	sp,sp,16
    80007318:	00008067          	ret

000000008000731c <plic_complete>:
    8000731c:	fe010113          	addi	sp,sp,-32
    80007320:	00813823          	sd	s0,16(sp)
    80007324:	00913423          	sd	s1,8(sp)
    80007328:	00113c23          	sd	ra,24(sp)
    8000732c:	02010413          	addi	s0,sp,32
    80007330:	00050493          	mv	s1,a0
    80007334:	00000097          	auipc	ra,0x0
    80007338:	9b4080e7          	jalr	-1612(ra) # 80006ce8 <cpuid>
    8000733c:	01813083          	ld	ra,24(sp)
    80007340:	01013403          	ld	s0,16(sp)
    80007344:	00d5179b          	slliw	a5,a0,0xd
    80007348:	0c201737          	lui	a4,0xc201
    8000734c:	00f707b3          	add	a5,a4,a5
    80007350:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007354:	00813483          	ld	s1,8(sp)
    80007358:	02010113          	addi	sp,sp,32
    8000735c:	00008067          	ret

0000000080007360 <consolewrite>:
    80007360:	fb010113          	addi	sp,sp,-80
    80007364:	04813023          	sd	s0,64(sp)
    80007368:	04113423          	sd	ra,72(sp)
    8000736c:	02913c23          	sd	s1,56(sp)
    80007370:	03213823          	sd	s2,48(sp)
    80007374:	03313423          	sd	s3,40(sp)
    80007378:	03413023          	sd	s4,32(sp)
    8000737c:	01513c23          	sd	s5,24(sp)
    80007380:	05010413          	addi	s0,sp,80
    80007384:	06c05c63          	blez	a2,800073fc <consolewrite+0x9c>
    80007388:	00060993          	mv	s3,a2
    8000738c:	00050a13          	mv	s4,a0
    80007390:	00058493          	mv	s1,a1
    80007394:	00000913          	li	s2,0
    80007398:	fff00a93          	li	s5,-1
    8000739c:	01c0006f          	j	800073b8 <consolewrite+0x58>
    800073a0:	fbf44503          	lbu	a0,-65(s0)
    800073a4:	0019091b          	addiw	s2,s2,1
    800073a8:	00148493          	addi	s1,s1,1
    800073ac:	00001097          	auipc	ra,0x1
    800073b0:	a9c080e7          	jalr	-1380(ra) # 80007e48 <uartputc>
    800073b4:	03298063          	beq	s3,s2,800073d4 <consolewrite+0x74>
    800073b8:	00048613          	mv	a2,s1
    800073bc:	00100693          	li	a3,1
    800073c0:	000a0593          	mv	a1,s4
    800073c4:	fbf40513          	addi	a0,s0,-65
    800073c8:	00000097          	auipc	ra,0x0
    800073cc:	9d8080e7          	jalr	-1576(ra) # 80006da0 <either_copyin>
    800073d0:	fd5518e3          	bne	a0,s5,800073a0 <consolewrite+0x40>
    800073d4:	04813083          	ld	ra,72(sp)
    800073d8:	04013403          	ld	s0,64(sp)
    800073dc:	03813483          	ld	s1,56(sp)
    800073e0:	02813983          	ld	s3,40(sp)
    800073e4:	02013a03          	ld	s4,32(sp)
    800073e8:	01813a83          	ld	s5,24(sp)
    800073ec:	00090513          	mv	a0,s2
    800073f0:	03013903          	ld	s2,48(sp)
    800073f4:	05010113          	addi	sp,sp,80
    800073f8:	00008067          	ret
    800073fc:	00000913          	li	s2,0
    80007400:	fd5ff06f          	j	800073d4 <consolewrite+0x74>

0000000080007404 <consoleread>:
    80007404:	f9010113          	addi	sp,sp,-112
    80007408:	06813023          	sd	s0,96(sp)
    8000740c:	04913c23          	sd	s1,88(sp)
    80007410:	05213823          	sd	s2,80(sp)
    80007414:	05313423          	sd	s3,72(sp)
    80007418:	05413023          	sd	s4,64(sp)
    8000741c:	03513c23          	sd	s5,56(sp)
    80007420:	03613823          	sd	s6,48(sp)
    80007424:	03713423          	sd	s7,40(sp)
    80007428:	03813023          	sd	s8,32(sp)
    8000742c:	06113423          	sd	ra,104(sp)
    80007430:	01913c23          	sd	s9,24(sp)
    80007434:	07010413          	addi	s0,sp,112
    80007438:	00060b93          	mv	s7,a2
    8000743c:	00050913          	mv	s2,a0
    80007440:	00058c13          	mv	s8,a1
    80007444:	00060b1b          	sext.w	s6,a2
    80007448:	00006497          	auipc	s1,0x6
    8000744c:	99048493          	addi	s1,s1,-1648 # 8000cdd8 <cons>
    80007450:	00400993          	li	s3,4
    80007454:	fff00a13          	li	s4,-1
    80007458:	00a00a93          	li	s5,10
    8000745c:	05705e63          	blez	s7,800074b8 <consoleread+0xb4>
    80007460:	09c4a703          	lw	a4,156(s1)
    80007464:	0984a783          	lw	a5,152(s1)
    80007468:	0007071b          	sext.w	a4,a4
    8000746c:	08e78463          	beq	a5,a4,800074f4 <consoleread+0xf0>
    80007470:	07f7f713          	andi	a4,a5,127
    80007474:	00e48733          	add	a4,s1,a4
    80007478:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000747c:	0017869b          	addiw	a3,a5,1
    80007480:	08d4ac23          	sw	a3,152(s1)
    80007484:	00070c9b          	sext.w	s9,a4
    80007488:	0b370663          	beq	a4,s3,80007534 <consoleread+0x130>
    8000748c:	00100693          	li	a3,1
    80007490:	f9f40613          	addi	a2,s0,-97
    80007494:	000c0593          	mv	a1,s8
    80007498:	00090513          	mv	a0,s2
    8000749c:	f8e40fa3          	sb	a4,-97(s0)
    800074a0:	00000097          	auipc	ra,0x0
    800074a4:	8b4080e7          	jalr	-1868(ra) # 80006d54 <either_copyout>
    800074a8:	01450863          	beq	a0,s4,800074b8 <consoleread+0xb4>
    800074ac:	001c0c13          	addi	s8,s8,1
    800074b0:	fffb8b9b          	addiw	s7,s7,-1
    800074b4:	fb5c94e3          	bne	s9,s5,8000745c <consoleread+0x58>
    800074b8:	000b851b          	sext.w	a0,s7
    800074bc:	06813083          	ld	ra,104(sp)
    800074c0:	06013403          	ld	s0,96(sp)
    800074c4:	05813483          	ld	s1,88(sp)
    800074c8:	05013903          	ld	s2,80(sp)
    800074cc:	04813983          	ld	s3,72(sp)
    800074d0:	04013a03          	ld	s4,64(sp)
    800074d4:	03813a83          	ld	s5,56(sp)
    800074d8:	02813b83          	ld	s7,40(sp)
    800074dc:	02013c03          	ld	s8,32(sp)
    800074e0:	01813c83          	ld	s9,24(sp)
    800074e4:	40ab053b          	subw	a0,s6,a0
    800074e8:	03013b03          	ld	s6,48(sp)
    800074ec:	07010113          	addi	sp,sp,112
    800074f0:	00008067          	ret
    800074f4:	00001097          	auipc	ra,0x1
    800074f8:	1d8080e7          	jalr	472(ra) # 800086cc <push_on>
    800074fc:	0984a703          	lw	a4,152(s1)
    80007500:	09c4a783          	lw	a5,156(s1)
    80007504:	0007879b          	sext.w	a5,a5
    80007508:	fef70ce3          	beq	a4,a5,80007500 <consoleread+0xfc>
    8000750c:	00001097          	auipc	ra,0x1
    80007510:	234080e7          	jalr	564(ra) # 80008740 <pop_on>
    80007514:	0984a783          	lw	a5,152(s1)
    80007518:	07f7f713          	andi	a4,a5,127
    8000751c:	00e48733          	add	a4,s1,a4
    80007520:	01874703          	lbu	a4,24(a4)
    80007524:	0017869b          	addiw	a3,a5,1
    80007528:	08d4ac23          	sw	a3,152(s1)
    8000752c:	00070c9b          	sext.w	s9,a4
    80007530:	f5371ee3          	bne	a4,s3,8000748c <consoleread+0x88>
    80007534:	000b851b          	sext.w	a0,s7
    80007538:	f96bf2e3          	bgeu	s7,s6,800074bc <consoleread+0xb8>
    8000753c:	08f4ac23          	sw	a5,152(s1)
    80007540:	f7dff06f          	j	800074bc <consoleread+0xb8>

0000000080007544 <consputc>:
    80007544:	10000793          	li	a5,256
    80007548:	00f50663          	beq	a0,a5,80007554 <consputc+0x10>
    8000754c:	00001317          	auipc	t1,0x1
    80007550:	9f430067          	jr	-1548(t1) # 80007f40 <uartputc_sync>
    80007554:	ff010113          	addi	sp,sp,-16
    80007558:	00113423          	sd	ra,8(sp)
    8000755c:	00813023          	sd	s0,0(sp)
    80007560:	01010413          	addi	s0,sp,16
    80007564:	00800513          	li	a0,8
    80007568:	00001097          	auipc	ra,0x1
    8000756c:	9d8080e7          	jalr	-1576(ra) # 80007f40 <uartputc_sync>
    80007570:	02000513          	li	a0,32
    80007574:	00001097          	auipc	ra,0x1
    80007578:	9cc080e7          	jalr	-1588(ra) # 80007f40 <uartputc_sync>
    8000757c:	00013403          	ld	s0,0(sp)
    80007580:	00813083          	ld	ra,8(sp)
    80007584:	00800513          	li	a0,8
    80007588:	01010113          	addi	sp,sp,16
    8000758c:	00001317          	auipc	t1,0x1
    80007590:	9b430067          	jr	-1612(t1) # 80007f40 <uartputc_sync>

0000000080007594 <consoleintr>:
    80007594:	fe010113          	addi	sp,sp,-32
    80007598:	00813823          	sd	s0,16(sp)
    8000759c:	00913423          	sd	s1,8(sp)
    800075a0:	01213023          	sd	s2,0(sp)
    800075a4:	00113c23          	sd	ra,24(sp)
    800075a8:	02010413          	addi	s0,sp,32
    800075ac:	00006917          	auipc	s2,0x6
    800075b0:	82c90913          	addi	s2,s2,-2004 # 8000cdd8 <cons>
    800075b4:	00050493          	mv	s1,a0
    800075b8:	00090513          	mv	a0,s2
    800075bc:	00001097          	auipc	ra,0x1
    800075c0:	e40080e7          	jalr	-448(ra) # 800083fc <acquire>
    800075c4:	02048c63          	beqz	s1,800075fc <consoleintr+0x68>
    800075c8:	0a092783          	lw	a5,160(s2)
    800075cc:	09892703          	lw	a4,152(s2)
    800075d0:	07f00693          	li	a3,127
    800075d4:	40e7873b          	subw	a4,a5,a4
    800075d8:	02e6e263          	bltu	a3,a4,800075fc <consoleintr+0x68>
    800075dc:	00d00713          	li	a4,13
    800075e0:	04e48063          	beq	s1,a4,80007620 <consoleintr+0x8c>
    800075e4:	07f7f713          	andi	a4,a5,127
    800075e8:	00e90733          	add	a4,s2,a4
    800075ec:	0017879b          	addiw	a5,a5,1
    800075f0:	0af92023          	sw	a5,160(s2)
    800075f4:	00970c23          	sb	s1,24(a4)
    800075f8:	08f92e23          	sw	a5,156(s2)
    800075fc:	01013403          	ld	s0,16(sp)
    80007600:	01813083          	ld	ra,24(sp)
    80007604:	00813483          	ld	s1,8(sp)
    80007608:	00013903          	ld	s2,0(sp)
    8000760c:	00005517          	auipc	a0,0x5
    80007610:	7cc50513          	addi	a0,a0,1996 # 8000cdd8 <cons>
    80007614:	02010113          	addi	sp,sp,32
    80007618:	00001317          	auipc	t1,0x1
    8000761c:	eb030067          	jr	-336(t1) # 800084c8 <release>
    80007620:	00a00493          	li	s1,10
    80007624:	fc1ff06f          	j	800075e4 <consoleintr+0x50>

0000000080007628 <consoleinit>:
    80007628:	fe010113          	addi	sp,sp,-32
    8000762c:	00113c23          	sd	ra,24(sp)
    80007630:	00813823          	sd	s0,16(sp)
    80007634:	00913423          	sd	s1,8(sp)
    80007638:	02010413          	addi	s0,sp,32
    8000763c:	00005497          	auipc	s1,0x5
    80007640:	79c48493          	addi	s1,s1,1948 # 8000cdd8 <cons>
    80007644:	00048513          	mv	a0,s1
    80007648:	00002597          	auipc	a1,0x2
    8000764c:	21858593          	addi	a1,a1,536 # 80009860 <CONSOLE_STATUS+0x850>
    80007650:	00001097          	auipc	ra,0x1
    80007654:	d88080e7          	jalr	-632(ra) # 800083d8 <initlock>
    80007658:	00000097          	auipc	ra,0x0
    8000765c:	7ac080e7          	jalr	1964(ra) # 80007e04 <uartinit>
    80007660:	01813083          	ld	ra,24(sp)
    80007664:	01013403          	ld	s0,16(sp)
    80007668:	00000797          	auipc	a5,0x0
    8000766c:	d9c78793          	addi	a5,a5,-612 # 80007404 <consoleread>
    80007670:	0af4bc23          	sd	a5,184(s1)
    80007674:	00000797          	auipc	a5,0x0
    80007678:	cec78793          	addi	a5,a5,-788 # 80007360 <consolewrite>
    8000767c:	0cf4b023          	sd	a5,192(s1)
    80007680:	00813483          	ld	s1,8(sp)
    80007684:	02010113          	addi	sp,sp,32
    80007688:	00008067          	ret

000000008000768c <console_read>:
    8000768c:	ff010113          	addi	sp,sp,-16
    80007690:	00813423          	sd	s0,8(sp)
    80007694:	01010413          	addi	s0,sp,16
    80007698:	00813403          	ld	s0,8(sp)
    8000769c:	00005317          	auipc	t1,0x5
    800076a0:	7f433303          	ld	t1,2036(t1) # 8000ce90 <devsw+0x10>
    800076a4:	01010113          	addi	sp,sp,16
    800076a8:	00030067          	jr	t1

00000000800076ac <console_write>:
    800076ac:	ff010113          	addi	sp,sp,-16
    800076b0:	00813423          	sd	s0,8(sp)
    800076b4:	01010413          	addi	s0,sp,16
    800076b8:	00813403          	ld	s0,8(sp)
    800076bc:	00005317          	auipc	t1,0x5
    800076c0:	7dc33303          	ld	t1,2012(t1) # 8000ce98 <devsw+0x18>
    800076c4:	01010113          	addi	sp,sp,16
    800076c8:	00030067          	jr	t1

00000000800076cc <panic>:
    800076cc:	fe010113          	addi	sp,sp,-32
    800076d0:	00113c23          	sd	ra,24(sp)
    800076d4:	00813823          	sd	s0,16(sp)
    800076d8:	00913423          	sd	s1,8(sp)
    800076dc:	02010413          	addi	s0,sp,32
    800076e0:	00050493          	mv	s1,a0
    800076e4:	00002517          	auipc	a0,0x2
    800076e8:	18450513          	addi	a0,a0,388 # 80009868 <CONSOLE_STATUS+0x858>
    800076ec:	00006797          	auipc	a5,0x6
    800076f0:	8407a623          	sw	zero,-1972(a5) # 8000cf38 <pr+0x18>
    800076f4:	00000097          	auipc	ra,0x0
    800076f8:	034080e7          	jalr	52(ra) # 80007728 <__printf>
    800076fc:	00048513          	mv	a0,s1
    80007700:	00000097          	auipc	ra,0x0
    80007704:	028080e7          	jalr	40(ra) # 80007728 <__printf>
    80007708:	00002517          	auipc	a0,0x2
    8000770c:	bb050513          	addi	a0,a0,-1104 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80007710:	00000097          	auipc	ra,0x0
    80007714:	018080e7          	jalr	24(ra) # 80007728 <__printf>
    80007718:	00100793          	li	a5,1
    8000771c:	00004717          	auipc	a4,0x4
    80007720:	52f72e23          	sw	a5,1340(a4) # 8000bc58 <panicked>
    80007724:	0000006f          	j	80007724 <panic+0x58>

0000000080007728 <__printf>:
    80007728:	f3010113          	addi	sp,sp,-208
    8000772c:	08813023          	sd	s0,128(sp)
    80007730:	07313423          	sd	s3,104(sp)
    80007734:	09010413          	addi	s0,sp,144
    80007738:	05813023          	sd	s8,64(sp)
    8000773c:	08113423          	sd	ra,136(sp)
    80007740:	06913c23          	sd	s1,120(sp)
    80007744:	07213823          	sd	s2,112(sp)
    80007748:	07413023          	sd	s4,96(sp)
    8000774c:	05513c23          	sd	s5,88(sp)
    80007750:	05613823          	sd	s6,80(sp)
    80007754:	05713423          	sd	s7,72(sp)
    80007758:	03913c23          	sd	s9,56(sp)
    8000775c:	03a13823          	sd	s10,48(sp)
    80007760:	03b13423          	sd	s11,40(sp)
    80007764:	00005317          	auipc	t1,0x5
    80007768:	7bc30313          	addi	t1,t1,1980 # 8000cf20 <pr>
    8000776c:	01832c03          	lw	s8,24(t1)
    80007770:	00b43423          	sd	a1,8(s0)
    80007774:	00c43823          	sd	a2,16(s0)
    80007778:	00d43c23          	sd	a3,24(s0)
    8000777c:	02e43023          	sd	a4,32(s0)
    80007780:	02f43423          	sd	a5,40(s0)
    80007784:	03043823          	sd	a6,48(s0)
    80007788:	03143c23          	sd	a7,56(s0)
    8000778c:	00050993          	mv	s3,a0
    80007790:	4a0c1663          	bnez	s8,80007c3c <__printf+0x514>
    80007794:	60098c63          	beqz	s3,80007dac <__printf+0x684>
    80007798:	0009c503          	lbu	a0,0(s3)
    8000779c:	00840793          	addi	a5,s0,8
    800077a0:	f6f43c23          	sd	a5,-136(s0)
    800077a4:	00000493          	li	s1,0
    800077a8:	22050063          	beqz	a0,800079c8 <__printf+0x2a0>
    800077ac:	00002a37          	lui	s4,0x2
    800077b0:	00018ab7          	lui	s5,0x18
    800077b4:	000f4b37          	lui	s6,0xf4
    800077b8:	00989bb7          	lui	s7,0x989
    800077bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800077c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800077c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800077c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800077cc:	00148c9b          	addiw	s9,s1,1
    800077d0:	02500793          	li	a5,37
    800077d4:	01998933          	add	s2,s3,s9
    800077d8:	38f51263          	bne	a0,a5,80007b5c <__printf+0x434>
    800077dc:	00094783          	lbu	a5,0(s2)
    800077e0:	00078c9b          	sext.w	s9,a5
    800077e4:	1e078263          	beqz	a5,800079c8 <__printf+0x2a0>
    800077e8:	0024849b          	addiw	s1,s1,2
    800077ec:	07000713          	li	a4,112
    800077f0:	00998933          	add	s2,s3,s1
    800077f4:	38e78a63          	beq	a5,a4,80007b88 <__printf+0x460>
    800077f8:	20f76863          	bltu	a4,a5,80007a08 <__printf+0x2e0>
    800077fc:	42a78863          	beq	a5,a0,80007c2c <__printf+0x504>
    80007800:	06400713          	li	a4,100
    80007804:	40e79663          	bne	a5,a4,80007c10 <__printf+0x4e8>
    80007808:	f7843783          	ld	a5,-136(s0)
    8000780c:	0007a603          	lw	a2,0(a5)
    80007810:	00878793          	addi	a5,a5,8
    80007814:	f6f43c23          	sd	a5,-136(s0)
    80007818:	42064a63          	bltz	a2,80007c4c <__printf+0x524>
    8000781c:	00a00713          	li	a4,10
    80007820:	02e677bb          	remuw	a5,a2,a4
    80007824:	00002d97          	auipc	s11,0x2
    80007828:	06cd8d93          	addi	s11,s11,108 # 80009890 <digits>
    8000782c:	00900593          	li	a1,9
    80007830:	0006051b          	sext.w	a0,a2
    80007834:	00000c93          	li	s9,0
    80007838:	02079793          	slli	a5,a5,0x20
    8000783c:	0207d793          	srli	a5,a5,0x20
    80007840:	00fd87b3          	add	a5,s11,a5
    80007844:	0007c783          	lbu	a5,0(a5)
    80007848:	02e656bb          	divuw	a3,a2,a4
    8000784c:	f8f40023          	sb	a5,-128(s0)
    80007850:	14c5d863          	bge	a1,a2,800079a0 <__printf+0x278>
    80007854:	06300593          	li	a1,99
    80007858:	00100c93          	li	s9,1
    8000785c:	02e6f7bb          	remuw	a5,a3,a4
    80007860:	02079793          	slli	a5,a5,0x20
    80007864:	0207d793          	srli	a5,a5,0x20
    80007868:	00fd87b3          	add	a5,s11,a5
    8000786c:	0007c783          	lbu	a5,0(a5)
    80007870:	02e6d73b          	divuw	a4,a3,a4
    80007874:	f8f400a3          	sb	a5,-127(s0)
    80007878:	12a5f463          	bgeu	a1,a0,800079a0 <__printf+0x278>
    8000787c:	00a00693          	li	a3,10
    80007880:	00900593          	li	a1,9
    80007884:	02d777bb          	remuw	a5,a4,a3
    80007888:	02079793          	slli	a5,a5,0x20
    8000788c:	0207d793          	srli	a5,a5,0x20
    80007890:	00fd87b3          	add	a5,s11,a5
    80007894:	0007c503          	lbu	a0,0(a5)
    80007898:	02d757bb          	divuw	a5,a4,a3
    8000789c:	f8a40123          	sb	a0,-126(s0)
    800078a0:	48e5f263          	bgeu	a1,a4,80007d24 <__printf+0x5fc>
    800078a4:	06300513          	li	a0,99
    800078a8:	02d7f5bb          	remuw	a1,a5,a3
    800078ac:	02059593          	slli	a1,a1,0x20
    800078b0:	0205d593          	srli	a1,a1,0x20
    800078b4:	00bd85b3          	add	a1,s11,a1
    800078b8:	0005c583          	lbu	a1,0(a1)
    800078bc:	02d7d7bb          	divuw	a5,a5,a3
    800078c0:	f8b401a3          	sb	a1,-125(s0)
    800078c4:	48e57263          	bgeu	a0,a4,80007d48 <__printf+0x620>
    800078c8:	3e700513          	li	a0,999
    800078cc:	02d7f5bb          	remuw	a1,a5,a3
    800078d0:	02059593          	slli	a1,a1,0x20
    800078d4:	0205d593          	srli	a1,a1,0x20
    800078d8:	00bd85b3          	add	a1,s11,a1
    800078dc:	0005c583          	lbu	a1,0(a1)
    800078e0:	02d7d7bb          	divuw	a5,a5,a3
    800078e4:	f8b40223          	sb	a1,-124(s0)
    800078e8:	46e57663          	bgeu	a0,a4,80007d54 <__printf+0x62c>
    800078ec:	02d7f5bb          	remuw	a1,a5,a3
    800078f0:	02059593          	slli	a1,a1,0x20
    800078f4:	0205d593          	srli	a1,a1,0x20
    800078f8:	00bd85b3          	add	a1,s11,a1
    800078fc:	0005c583          	lbu	a1,0(a1)
    80007900:	02d7d7bb          	divuw	a5,a5,a3
    80007904:	f8b402a3          	sb	a1,-123(s0)
    80007908:	46ea7863          	bgeu	s4,a4,80007d78 <__printf+0x650>
    8000790c:	02d7f5bb          	remuw	a1,a5,a3
    80007910:	02059593          	slli	a1,a1,0x20
    80007914:	0205d593          	srli	a1,a1,0x20
    80007918:	00bd85b3          	add	a1,s11,a1
    8000791c:	0005c583          	lbu	a1,0(a1)
    80007920:	02d7d7bb          	divuw	a5,a5,a3
    80007924:	f8b40323          	sb	a1,-122(s0)
    80007928:	3eeaf863          	bgeu	s5,a4,80007d18 <__printf+0x5f0>
    8000792c:	02d7f5bb          	remuw	a1,a5,a3
    80007930:	02059593          	slli	a1,a1,0x20
    80007934:	0205d593          	srli	a1,a1,0x20
    80007938:	00bd85b3          	add	a1,s11,a1
    8000793c:	0005c583          	lbu	a1,0(a1)
    80007940:	02d7d7bb          	divuw	a5,a5,a3
    80007944:	f8b403a3          	sb	a1,-121(s0)
    80007948:	42eb7e63          	bgeu	s6,a4,80007d84 <__printf+0x65c>
    8000794c:	02d7f5bb          	remuw	a1,a5,a3
    80007950:	02059593          	slli	a1,a1,0x20
    80007954:	0205d593          	srli	a1,a1,0x20
    80007958:	00bd85b3          	add	a1,s11,a1
    8000795c:	0005c583          	lbu	a1,0(a1)
    80007960:	02d7d7bb          	divuw	a5,a5,a3
    80007964:	f8b40423          	sb	a1,-120(s0)
    80007968:	42ebfc63          	bgeu	s7,a4,80007da0 <__printf+0x678>
    8000796c:	02079793          	slli	a5,a5,0x20
    80007970:	0207d793          	srli	a5,a5,0x20
    80007974:	00fd8db3          	add	s11,s11,a5
    80007978:	000dc703          	lbu	a4,0(s11)
    8000797c:	00a00793          	li	a5,10
    80007980:	00900c93          	li	s9,9
    80007984:	f8e404a3          	sb	a4,-119(s0)
    80007988:	00065c63          	bgez	a2,800079a0 <__printf+0x278>
    8000798c:	f9040713          	addi	a4,s0,-112
    80007990:	00f70733          	add	a4,a4,a5
    80007994:	02d00693          	li	a3,45
    80007998:	fed70823          	sb	a3,-16(a4)
    8000799c:	00078c93          	mv	s9,a5
    800079a0:	f8040793          	addi	a5,s0,-128
    800079a4:	01978cb3          	add	s9,a5,s9
    800079a8:	f7f40d13          	addi	s10,s0,-129
    800079ac:	000cc503          	lbu	a0,0(s9)
    800079b0:	fffc8c93          	addi	s9,s9,-1
    800079b4:	00000097          	auipc	ra,0x0
    800079b8:	b90080e7          	jalr	-1136(ra) # 80007544 <consputc>
    800079bc:	ffac98e3          	bne	s9,s10,800079ac <__printf+0x284>
    800079c0:	00094503          	lbu	a0,0(s2)
    800079c4:	e00514e3          	bnez	a0,800077cc <__printf+0xa4>
    800079c8:	1a0c1663          	bnez	s8,80007b74 <__printf+0x44c>
    800079cc:	08813083          	ld	ra,136(sp)
    800079d0:	08013403          	ld	s0,128(sp)
    800079d4:	07813483          	ld	s1,120(sp)
    800079d8:	07013903          	ld	s2,112(sp)
    800079dc:	06813983          	ld	s3,104(sp)
    800079e0:	06013a03          	ld	s4,96(sp)
    800079e4:	05813a83          	ld	s5,88(sp)
    800079e8:	05013b03          	ld	s6,80(sp)
    800079ec:	04813b83          	ld	s7,72(sp)
    800079f0:	04013c03          	ld	s8,64(sp)
    800079f4:	03813c83          	ld	s9,56(sp)
    800079f8:	03013d03          	ld	s10,48(sp)
    800079fc:	02813d83          	ld	s11,40(sp)
    80007a00:	0d010113          	addi	sp,sp,208
    80007a04:	00008067          	ret
    80007a08:	07300713          	li	a4,115
    80007a0c:	1ce78a63          	beq	a5,a4,80007be0 <__printf+0x4b8>
    80007a10:	07800713          	li	a4,120
    80007a14:	1ee79e63          	bne	a5,a4,80007c10 <__printf+0x4e8>
    80007a18:	f7843783          	ld	a5,-136(s0)
    80007a1c:	0007a703          	lw	a4,0(a5)
    80007a20:	00878793          	addi	a5,a5,8
    80007a24:	f6f43c23          	sd	a5,-136(s0)
    80007a28:	28074263          	bltz	a4,80007cac <__printf+0x584>
    80007a2c:	00002d97          	auipc	s11,0x2
    80007a30:	e64d8d93          	addi	s11,s11,-412 # 80009890 <digits>
    80007a34:	00f77793          	andi	a5,a4,15
    80007a38:	00fd87b3          	add	a5,s11,a5
    80007a3c:	0007c683          	lbu	a3,0(a5)
    80007a40:	00f00613          	li	a2,15
    80007a44:	0007079b          	sext.w	a5,a4
    80007a48:	f8d40023          	sb	a3,-128(s0)
    80007a4c:	0047559b          	srliw	a1,a4,0x4
    80007a50:	0047569b          	srliw	a3,a4,0x4
    80007a54:	00000c93          	li	s9,0
    80007a58:	0ee65063          	bge	a2,a4,80007b38 <__printf+0x410>
    80007a5c:	00f6f693          	andi	a3,a3,15
    80007a60:	00dd86b3          	add	a3,s11,a3
    80007a64:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007a68:	0087d79b          	srliw	a5,a5,0x8
    80007a6c:	00100c93          	li	s9,1
    80007a70:	f8d400a3          	sb	a3,-127(s0)
    80007a74:	0cb67263          	bgeu	a2,a1,80007b38 <__printf+0x410>
    80007a78:	00f7f693          	andi	a3,a5,15
    80007a7c:	00dd86b3          	add	a3,s11,a3
    80007a80:	0006c583          	lbu	a1,0(a3)
    80007a84:	00f00613          	li	a2,15
    80007a88:	0047d69b          	srliw	a3,a5,0x4
    80007a8c:	f8b40123          	sb	a1,-126(s0)
    80007a90:	0047d593          	srli	a1,a5,0x4
    80007a94:	28f67e63          	bgeu	a2,a5,80007d30 <__printf+0x608>
    80007a98:	00f6f693          	andi	a3,a3,15
    80007a9c:	00dd86b3          	add	a3,s11,a3
    80007aa0:	0006c503          	lbu	a0,0(a3)
    80007aa4:	0087d813          	srli	a6,a5,0x8
    80007aa8:	0087d69b          	srliw	a3,a5,0x8
    80007aac:	f8a401a3          	sb	a0,-125(s0)
    80007ab0:	28b67663          	bgeu	a2,a1,80007d3c <__printf+0x614>
    80007ab4:	00f6f693          	andi	a3,a3,15
    80007ab8:	00dd86b3          	add	a3,s11,a3
    80007abc:	0006c583          	lbu	a1,0(a3)
    80007ac0:	00c7d513          	srli	a0,a5,0xc
    80007ac4:	00c7d69b          	srliw	a3,a5,0xc
    80007ac8:	f8b40223          	sb	a1,-124(s0)
    80007acc:	29067a63          	bgeu	a2,a6,80007d60 <__printf+0x638>
    80007ad0:	00f6f693          	andi	a3,a3,15
    80007ad4:	00dd86b3          	add	a3,s11,a3
    80007ad8:	0006c583          	lbu	a1,0(a3)
    80007adc:	0107d813          	srli	a6,a5,0x10
    80007ae0:	0107d69b          	srliw	a3,a5,0x10
    80007ae4:	f8b402a3          	sb	a1,-123(s0)
    80007ae8:	28a67263          	bgeu	a2,a0,80007d6c <__printf+0x644>
    80007aec:	00f6f693          	andi	a3,a3,15
    80007af0:	00dd86b3          	add	a3,s11,a3
    80007af4:	0006c683          	lbu	a3,0(a3)
    80007af8:	0147d79b          	srliw	a5,a5,0x14
    80007afc:	f8d40323          	sb	a3,-122(s0)
    80007b00:	21067663          	bgeu	a2,a6,80007d0c <__printf+0x5e4>
    80007b04:	02079793          	slli	a5,a5,0x20
    80007b08:	0207d793          	srli	a5,a5,0x20
    80007b0c:	00fd8db3          	add	s11,s11,a5
    80007b10:	000dc683          	lbu	a3,0(s11)
    80007b14:	00800793          	li	a5,8
    80007b18:	00700c93          	li	s9,7
    80007b1c:	f8d403a3          	sb	a3,-121(s0)
    80007b20:	00075c63          	bgez	a4,80007b38 <__printf+0x410>
    80007b24:	f9040713          	addi	a4,s0,-112
    80007b28:	00f70733          	add	a4,a4,a5
    80007b2c:	02d00693          	li	a3,45
    80007b30:	fed70823          	sb	a3,-16(a4)
    80007b34:	00078c93          	mv	s9,a5
    80007b38:	f8040793          	addi	a5,s0,-128
    80007b3c:	01978cb3          	add	s9,a5,s9
    80007b40:	f7f40d13          	addi	s10,s0,-129
    80007b44:	000cc503          	lbu	a0,0(s9)
    80007b48:	fffc8c93          	addi	s9,s9,-1
    80007b4c:	00000097          	auipc	ra,0x0
    80007b50:	9f8080e7          	jalr	-1544(ra) # 80007544 <consputc>
    80007b54:	ff9d18e3          	bne	s10,s9,80007b44 <__printf+0x41c>
    80007b58:	0100006f          	j	80007b68 <__printf+0x440>
    80007b5c:	00000097          	auipc	ra,0x0
    80007b60:	9e8080e7          	jalr	-1560(ra) # 80007544 <consputc>
    80007b64:	000c8493          	mv	s1,s9
    80007b68:	00094503          	lbu	a0,0(s2)
    80007b6c:	c60510e3          	bnez	a0,800077cc <__printf+0xa4>
    80007b70:	e40c0ee3          	beqz	s8,800079cc <__printf+0x2a4>
    80007b74:	00005517          	auipc	a0,0x5
    80007b78:	3ac50513          	addi	a0,a0,940 # 8000cf20 <pr>
    80007b7c:	00001097          	auipc	ra,0x1
    80007b80:	94c080e7          	jalr	-1716(ra) # 800084c8 <release>
    80007b84:	e49ff06f          	j	800079cc <__printf+0x2a4>
    80007b88:	f7843783          	ld	a5,-136(s0)
    80007b8c:	03000513          	li	a0,48
    80007b90:	01000d13          	li	s10,16
    80007b94:	00878713          	addi	a4,a5,8
    80007b98:	0007bc83          	ld	s9,0(a5)
    80007b9c:	f6e43c23          	sd	a4,-136(s0)
    80007ba0:	00000097          	auipc	ra,0x0
    80007ba4:	9a4080e7          	jalr	-1628(ra) # 80007544 <consputc>
    80007ba8:	07800513          	li	a0,120
    80007bac:	00000097          	auipc	ra,0x0
    80007bb0:	998080e7          	jalr	-1640(ra) # 80007544 <consputc>
    80007bb4:	00002d97          	auipc	s11,0x2
    80007bb8:	cdcd8d93          	addi	s11,s11,-804 # 80009890 <digits>
    80007bbc:	03ccd793          	srli	a5,s9,0x3c
    80007bc0:	00fd87b3          	add	a5,s11,a5
    80007bc4:	0007c503          	lbu	a0,0(a5)
    80007bc8:	fffd0d1b          	addiw	s10,s10,-1
    80007bcc:	004c9c93          	slli	s9,s9,0x4
    80007bd0:	00000097          	auipc	ra,0x0
    80007bd4:	974080e7          	jalr	-1676(ra) # 80007544 <consputc>
    80007bd8:	fe0d12e3          	bnez	s10,80007bbc <__printf+0x494>
    80007bdc:	f8dff06f          	j	80007b68 <__printf+0x440>
    80007be0:	f7843783          	ld	a5,-136(s0)
    80007be4:	0007bc83          	ld	s9,0(a5)
    80007be8:	00878793          	addi	a5,a5,8
    80007bec:	f6f43c23          	sd	a5,-136(s0)
    80007bf0:	000c9a63          	bnez	s9,80007c04 <__printf+0x4dc>
    80007bf4:	1080006f          	j	80007cfc <__printf+0x5d4>
    80007bf8:	001c8c93          	addi	s9,s9,1
    80007bfc:	00000097          	auipc	ra,0x0
    80007c00:	948080e7          	jalr	-1720(ra) # 80007544 <consputc>
    80007c04:	000cc503          	lbu	a0,0(s9)
    80007c08:	fe0518e3          	bnez	a0,80007bf8 <__printf+0x4d0>
    80007c0c:	f5dff06f          	j	80007b68 <__printf+0x440>
    80007c10:	02500513          	li	a0,37
    80007c14:	00000097          	auipc	ra,0x0
    80007c18:	930080e7          	jalr	-1744(ra) # 80007544 <consputc>
    80007c1c:	000c8513          	mv	a0,s9
    80007c20:	00000097          	auipc	ra,0x0
    80007c24:	924080e7          	jalr	-1756(ra) # 80007544 <consputc>
    80007c28:	f41ff06f          	j	80007b68 <__printf+0x440>
    80007c2c:	02500513          	li	a0,37
    80007c30:	00000097          	auipc	ra,0x0
    80007c34:	914080e7          	jalr	-1772(ra) # 80007544 <consputc>
    80007c38:	f31ff06f          	j	80007b68 <__printf+0x440>
    80007c3c:	00030513          	mv	a0,t1
    80007c40:	00000097          	auipc	ra,0x0
    80007c44:	7bc080e7          	jalr	1980(ra) # 800083fc <acquire>
    80007c48:	b4dff06f          	j	80007794 <__printf+0x6c>
    80007c4c:	40c0053b          	negw	a0,a2
    80007c50:	00a00713          	li	a4,10
    80007c54:	02e576bb          	remuw	a3,a0,a4
    80007c58:	00002d97          	auipc	s11,0x2
    80007c5c:	c38d8d93          	addi	s11,s11,-968 # 80009890 <digits>
    80007c60:	ff700593          	li	a1,-9
    80007c64:	02069693          	slli	a3,a3,0x20
    80007c68:	0206d693          	srli	a3,a3,0x20
    80007c6c:	00dd86b3          	add	a3,s11,a3
    80007c70:	0006c683          	lbu	a3,0(a3)
    80007c74:	02e557bb          	divuw	a5,a0,a4
    80007c78:	f8d40023          	sb	a3,-128(s0)
    80007c7c:	10b65e63          	bge	a2,a1,80007d98 <__printf+0x670>
    80007c80:	06300593          	li	a1,99
    80007c84:	02e7f6bb          	remuw	a3,a5,a4
    80007c88:	02069693          	slli	a3,a3,0x20
    80007c8c:	0206d693          	srli	a3,a3,0x20
    80007c90:	00dd86b3          	add	a3,s11,a3
    80007c94:	0006c683          	lbu	a3,0(a3)
    80007c98:	02e7d73b          	divuw	a4,a5,a4
    80007c9c:	00200793          	li	a5,2
    80007ca0:	f8d400a3          	sb	a3,-127(s0)
    80007ca4:	bca5ece3          	bltu	a1,a0,8000787c <__printf+0x154>
    80007ca8:	ce5ff06f          	j	8000798c <__printf+0x264>
    80007cac:	40e007bb          	negw	a5,a4
    80007cb0:	00002d97          	auipc	s11,0x2
    80007cb4:	be0d8d93          	addi	s11,s11,-1056 # 80009890 <digits>
    80007cb8:	00f7f693          	andi	a3,a5,15
    80007cbc:	00dd86b3          	add	a3,s11,a3
    80007cc0:	0006c583          	lbu	a1,0(a3)
    80007cc4:	ff100613          	li	a2,-15
    80007cc8:	0047d69b          	srliw	a3,a5,0x4
    80007ccc:	f8b40023          	sb	a1,-128(s0)
    80007cd0:	0047d59b          	srliw	a1,a5,0x4
    80007cd4:	0ac75e63          	bge	a4,a2,80007d90 <__printf+0x668>
    80007cd8:	00f6f693          	andi	a3,a3,15
    80007cdc:	00dd86b3          	add	a3,s11,a3
    80007ce0:	0006c603          	lbu	a2,0(a3)
    80007ce4:	00f00693          	li	a3,15
    80007ce8:	0087d79b          	srliw	a5,a5,0x8
    80007cec:	f8c400a3          	sb	a2,-127(s0)
    80007cf0:	d8b6e4e3          	bltu	a3,a1,80007a78 <__printf+0x350>
    80007cf4:	00200793          	li	a5,2
    80007cf8:	e2dff06f          	j	80007b24 <__printf+0x3fc>
    80007cfc:	00002c97          	auipc	s9,0x2
    80007d00:	b74c8c93          	addi	s9,s9,-1164 # 80009870 <CONSOLE_STATUS+0x860>
    80007d04:	02800513          	li	a0,40
    80007d08:	ef1ff06f          	j	80007bf8 <__printf+0x4d0>
    80007d0c:	00700793          	li	a5,7
    80007d10:	00600c93          	li	s9,6
    80007d14:	e0dff06f          	j	80007b20 <__printf+0x3f8>
    80007d18:	00700793          	li	a5,7
    80007d1c:	00600c93          	li	s9,6
    80007d20:	c69ff06f          	j	80007988 <__printf+0x260>
    80007d24:	00300793          	li	a5,3
    80007d28:	00200c93          	li	s9,2
    80007d2c:	c5dff06f          	j	80007988 <__printf+0x260>
    80007d30:	00300793          	li	a5,3
    80007d34:	00200c93          	li	s9,2
    80007d38:	de9ff06f          	j	80007b20 <__printf+0x3f8>
    80007d3c:	00400793          	li	a5,4
    80007d40:	00300c93          	li	s9,3
    80007d44:	dddff06f          	j	80007b20 <__printf+0x3f8>
    80007d48:	00400793          	li	a5,4
    80007d4c:	00300c93          	li	s9,3
    80007d50:	c39ff06f          	j	80007988 <__printf+0x260>
    80007d54:	00500793          	li	a5,5
    80007d58:	00400c93          	li	s9,4
    80007d5c:	c2dff06f          	j	80007988 <__printf+0x260>
    80007d60:	00500793          	li	a5,5
    80007d64:	00400c93          	li	s9,4
    80007d68:	db9ff06f          	j	80007b20 <__printf+0x3f8>
    80007d6c:	00600793          	li	a5,6
    80007d70:	00500c93          	li	s9,5
    80007d74:	dadff06f          	j	80007b20 <__printf+0x3f8>
    80007d78:	00600793          	li	a5,6
    80007d7c:	00500c93          	li	s9,5
    80007d80:	c09ff06f          	j	80007988 <__printf+0x260>
    80007d84:	00800793          	li	a5,8
    80007d88:	00700c93          	li	s9,7
    80007d8c:	bfdff06f          	j	80007988 <__printf+0x260>
    80007d90:	00100793          	li	a5,1
    80007d94:	d91ff06f          	j	80007b24 <__printf+0x3fc>
    80007d98:	00100793          	li	a5,1
    80007d9c:	bf1ff06f          	j	8000798c <__printf+0x264>
    80007da0:	00900793          	li	a5,9
    80007da4:	00800c93          	li	s9,8
    80007da8:	be1ff06f          	j	80007988 <__printf+0x260>
    80007dac:	00002517          	auipc	a0,0x2
    80007db0:	acc50513          	addi	a0,a0,-1332 # 80009878 <CONSOLE_STATUS+0x868>
    80007db4:	00000097          	auipc	ra,0x0
    80007db8:	918080e7          	jalr	-1768(ra) # 800076cc <panic>

0000000080007dbc <printfinit>:
    80007dbc:	fe010113          	addi	sp,sp,-32
    80007dc0:	00813823          	sd	s0,16(sp)
    80007dc4:	00913423          	sd	s1,8(sp)
    80007dc8:	00113c23          	sd	ra,24(sp)
    80007dcc:	02010413          	addi	s0,sp,32
    80007dd0:	00005497          	auipc	s1,0x5
    80007dd4:	15048493          	addi	s1,s1,336 # 8000cf20 <pr>
    80007dd8:	00048513          	mv	a0,s1
    80007ddc:	00002597          	auipc	a1,0x2
    80007de0:	aac58593          	addi	a1,a1,-1364 # 80009888 <CONSOLE_STATUS+0x878>
    80007de4:	00000097          	auipc	ra,0x0
    80007de8:	5f4080e7          	jalr	1524(ra) # 800083d8 <initlock>
    80007dec:	01813083          	ld	ra,24(sp)
    80007df0:	01013403          	ld	s0,16(sp)
    80007df4:	0004ac23          	sw	zero,24(s1)
    80007df8:	00813483          	ld	s1,8(sp)
    80007dfc:	02010113          	addi	sp,sp,32
    80007e00:	00008067          	ret

0000000080007e04 <uartinit>:
    80007e04:	ff010113          	addi	sp,sp,-16
    80007e08:	00813423          	sd	s0,8(sp)
    80007e0c:	01010413          	addi	s0,sp,16
    80007e10:	100007b7          	lui	a5,0x10000
    80007e14:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007e18:	f8000713          	li	a4,-128
    80007e1c:	00e781a3          	sb	a4,3(a5)
    80007e20:	00300713          	li	a4,3
    80007e24:	00e78023          	sb	a4,0(a5)
    80007e28:	000780a3          	sb	zero,1(a5)
    80007e2c:	00e781a3          	sb	a4,3(a5)
    80007e30:	00700693          	li	a3,7
    80007e34:	00d78123          	sb	a3,2(a5)
    80007e38:	00e780a3          	sb	a4,1(a5)
    80007e3c:	00813403          	ld	s0,8(sp)
    80007e40:	01010113          	addi	sp,sp,16
    80007e44:	00008067          	ret

0000000080007e48 <uartputc>:
    80007e48:	00004797          	auipc	a5,0x4
    80007e4c:	e107a783          	lw	a5,-496(a5) # 8000bc58 <panicked>
    80007e50:	00078463          	beqz	a5,80007e58 <uartputc+0x10>
    80007e54:	0000006f          	j	80007e54 <uartputc+0xc>
    80007e58:	fd010113          	addi	sp,sp,-48
    80007e5c:	02813023          	sd	s0,32(sp)
    80007e60:	00913c23          	sd	s1,24(sp)
    80007e64:	01213823          	sd	s2,16(sp)
    80007e68:	01313423          	sd	s3,8(sp)
    80007e6c:	02113423          	sd	ra,40(sp)
    80007e70:	03010413          	addi	s0,sp,48
    80007e74:	00004917          	auipc	s2,0x4
    80007e78:	dec90913          	addi	s2,s2,-532 # 8000bc60 <uart_tx_r>
    80007e7c:	00093783          	ld	a5,0(s2)
    80007e80:	00004497          	auipc	s1,0x4
    80007e84:	de848493          	addi	s1,s1,-536 # 8000bc68 <uart_tx_w>
    80007e88:	0004b703          	ld	a4,0(s1)
    80007e8c:	02078693          	addi	a3,a5,32
    80007e90:	00050993          	mv	s3,a0
    80007e94:	02e69c63          	bne	a3,a4,80007ecc <uartputc+0x84>
    80007e98:	00001097          	auipc	ra,0x1
    80007e9c:	834080e7          	jalr	-1996(ra) # 800086cc <push_on>
    80007ea0:	00093783          	ld	a5,0(s2)
    80007ea4:	0004b703          	ld	a4,0(s1)
    80007ea8:	02078793          	addi	a5,a5,32
    80007eac:	00e79463          	bne	a5,a4,80007eb4 <uartputc+0x6c>
    80007eb0:	0000006f          	j	80007eb0 <uartputc+0x68>
    80007eb4:	00001097          	auipc	ra,0x1
    80007eb8:	88c080e7          	jalr	-1908(ra) # 80008740 <pop_on>
    80007ebc:	00093783          	ld	a5,0(s2)
    80007ec0:	0004b703          	ld	a4,0(s1)
    80007ec4:	02078693          	addi	a3,a5,32
    80007ec8:	fce688e3          	beq	a3,a4,80007e98 <uartputc+0x50>
    80007ecc:	01f77693          	andi	a3,a4,31
    80007ed0:	00005597          	auipc	a1,0x5
    80007ed4:	07058593          	addi	a1,a1,112 # 8000cf40 <uart_tx_buf>
    80007ed8:	00d586b3          	add	a3,a1,a3
    80007edc:	00170713          	addi	a4,a4,1
    80007ee0:	01368023          	sb	s3,0(a3)
    80007ee4:	00e4b023          	sd	a4,0(s1)
    80007ee8:	10000637          	lui	a2,0x10000
    80007eec:	02f71063          	bne	a4,a5,80007f0c <uartputc+0xc4>
    80007ef0:	0340006f          	j	80007f24 <uartputc+0xdc>
    80007ef4:	00074703          	lbu	a4,0(a4)
    80007ef8:	00f93023          	sd	a5,0(s2)
    80007efc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007f00:	00093783          	ld	a5,0(s2)
    80007f04:	0004b703          	ld	a4,0(s1)
    80007f08:	00f70e63          	beq	a4,a5,80007f24 <uartputc+0xdc>
    80007f0c:	00564683          	lbu	a3,5(a2)
    80007f10:	01f7f713          	andi	a4,a5,31
    80007f14:	00e58733          	add	a4,a1,a4
    80007f18:	0206f693          	andi	a3,a3,32
    80007f1c:	00178793          	addi	a5,a5,1
    80007f20:	fc069ae3          	bnez	a3,80007ef4 <uartputc+0xac>
    80007f24:	02813083          	ld	ra,40(sp)
    80007f28:	02013403          	ld	s0,32(sp)
    80007f2c:	01813483          	ld	s1,24(sp)
    80007f30:	01013903          	ld	s2,16(sp)
    80007f34:	00813983          	ld	s3,8(sp)
    80007f38:	03010113          	addi	sp,sp,48
    80007f3c:	00008067          	ret

0000000080007f40 <uartputc_sync>:
    80007f40:	ff010113          	addi	sp,sp,-16
    80007f44:	00813423          	sd	s0,8(sp)
    80007f48:	01010413          	addi	s0,sp,16
    80007f4c:	00004717          	auipc	a4,0x4
    80007f50:	d0c72703          	lw	a4,-756(a4) # 8000bc58 <panicked>
    80007f54:	02071663          	bnez	a4,80007f80 <uartputc_sync+0x40>
    80007f58:	00050793          	mv	a5,a0
    80007f5c:	100006b7          	lui	a3,0x10000
    80007f60:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007f64:	02077713          	andi	a4,a4,32
    80007f68:	fe070ce3          	beqz	a4,80007f60 <uartputc_sync+0x20>
    80007f6c:	0ff7f793          	andi	a5,a5,255
    80007f70:	00f68023          	sb	a5,0(a3)
    80007f74:	00813403          	ld	s0,8(sp)
    80007f78:	01010113          	addi	sp,sp,16
    80007f7c:	00008067          	ret
    80007f80:	0000006f          	j	80007f80 <uartputc_sync+0x40>

0000000080007f84 <uartstart>:
    80007f84:	ff010113          	addi	sp,sp,-16
    80007f88:	00813423          	sd	s0,8(sp)
    80007f8c:	01010413          	addi	s0,sp,16
    80007f90:	00004617          	auipc	a2,0x4
    80007f94:	cd060613          	addi	a2,a2,-816 # 8000bc60 <uart_tx_r>
    80007f98:	00004517          	auipc	a0,0x4
    80007f9c:	cd050513          	addi	a0,a0,-816 # 8000bc68 <uart_tx_w>
    80007fa0:	00063783          	ld	a5,0(a2)
    80007fa4:	00053703          	ld	a4,0(a0)
    80007fa8:	04f70263          	beq	a4,a5,80007fec <uartstart+0x68>
    80007fac:	100005b7          	lui	a1,0x10000
    80007fb0:	00005817          	auipc	a6,0x5
    80007fb4:	f9080813          	addi	a6,a6,-112 # 8000cf40 <uart_tx_buf>
    80007fb8:	01c0006f          	j	80007fd4 <uartstart+0x50>
    80007fbc:	0006c703          	lbu	a4,0(a3)
    80007fc0:	00f63023          	sd	a5,0(a2)
    80007fc4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007fc8:	00063783          	ld	a5,0(a2)
    80007fcc:	00053703          	ld	a4,0(a0)
    80007fd0:	00f70e63          	beq	a4,a5,80007fec <uartstart+0x68>
    80007fd4:	01f7f713          	andi	a4,a5,31
    80007fd8:	00e806b3          	add	a3,a6,a4
    80007fdc:	0055c703          	lbu	a4,5(a1)
    80007fe0:	00178793          	addi	a5,a5,1
    80007fe4:	02077713          	andi	a4,a4,32
    80007fe8:	fc071ae3          	bnez	a4,80007fbc <uartstart+0x38>
    80007fec:	00813403          	ld	s0,8(sp)
    80007ff0:	01010113          	addi	sp,sp,16
    80007ff4:	00008067          	ret

0000000080007ff8 <uartgetc>:
    80007ff8:	ff010113          	addi	sp,sp,-16
    80007ffc:	00813423          	sd	s0,8(sp)
    80008000:	01010413          	addi	s0,sp,16
    80008004:	10000737          	lui	a4,0x10000
    80008008:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000800c:	0017f793          	andi	a5,a5,1
    80008010:	00078c63          	beqz	a5,80008028 <uartgetc+0x30>
    80008014:	00074503          	lbu	a0,0(a4)
    80008018:	0ff57513          	andi	a0,a0,255
    8000801c:	00813403          	ld	s0,8(sp)
    80008020:	01010113          	addi	sp,sp,16
    80008024:	00008067          	ret
    80008028:	fff00513          	li	a0,-1
    8000802c:	ff1ff06f          	j	8000801c <uartgetc+0x24>

0000000080008030 <uartintr>:
    80008030:	100007b7          	lui	a5,0x10000
    80008034:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008038:	0017f793          	andi	a5,a5,1
    8000803c:	0a078463          	beqz	a5,800080e4 <uartintr+0xb4>
    80008040:	fe010113          	addi	sp,sp,-32
    80008044:	00813823          	sd	s0,16(sp)
    80008048:	00913423          	sd	s1,8(sp)
    8000804c:	00113c23          	sd	ra,24(sp)
    80008050:	02010413          	addi	s0,sp,32
    80008054:	100004b7          	lui	s1,0x10000
    80008058:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000805c:	0ff57513          	andi	a0,a0,255
    80008060:	fffff097          	auipc	ra,0xfffff
    80008064:	534080e7          	jalr	1332(ra) # 80007594 <consoleintr>
    80008068:	0054c783          	lbu	a5,5(s1)
    8000806c:	0017f793          	andi	a5,a5,1
    80008070:	fe0794e3          	bnez	a5,80008058 <uartintr+0x28>
    80008074:	00004617          	auipc	a2,0x4
    80008078:	bec60613          	addi	a2,a2,-1044 # 8000bc60 <uart_tx_r>
    8000807c:	00004517          	auipc	a0,0x4
    80008080:	bec50513          	addi	a0,a0,-1044 # 8000bc68 <uart_tx_w>
    80008084:	00063783          	ld	a5,0(a2)
    80008088:	00053703          	ld	a4,0(a0)
    8000808c:	04f70263          	beq	a4,a5,800080d0 <uartintr+0xa0>
    80008090:	100005b7          	lui	a1,0x10000
    80008094:	00005817          	auipc	a6,0x5
    80008098:	eac80813          	addi	a6,a6,-340 # 8000cf40 <uart_tx_buf>
    8000809c:	01c0006f          	j	800080b8 <uartintr+0x88>
    800080a0:	0006c703          	lbu	a4,0(a3)
    800080a4:	00f63023          	sd	a5,0(a2)
    800080a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800080ac:	00063783          	ld	a5,0(a2)
    800080b0:	00053703          	ld	a4,0(a0)
    800080b4:	00f70e63          	beq	a4,a5,800080d0 <uartintr+0xa0>
    800080b8:	01f7f713          	andi	a4,a5,31
    800080bc:	00e806b3          	add	a3,a6,a4
    800080c0:	0055c703          	lbu	a4,5(a1)
    800080c4:	00178793          	addi	a5,a5,1
    800080c8:	02077713          	andi	a4,a4,32
    800080cc:	fc071ae3          	bnez	a4,800080a0 <uartintr+0x70>
    800080d0:	01813083          	ld	ra,24(sp)
    800080d4:	01013403          	ld	s0,16(sp)
    800080d8:	00813483          	ld	s1,8(sp)
    800080dc:	02010113          	addi	sp,sp,32
    800080e0:	00008067          	ret
    800080e4:	00004617          	auipc	a2,0x4
    800080e8:	b7c60613          	addi	a2,a2,-1156 # 8000bc60 <uart_tx_r>
    800080ec:	00004517          	auipc	a0,0x4
    800080f0:	b7c50513          	addi	a0,a0,-1156 # 8000bc68 <uart_tx_w>
    800080f4:	00063783          	ld	a5,0(a2)
    800080f8:	00053703          	ld	a4,0(a0)
    800080fc:	04f70263          	beq	a4,a5,80008140 <uartintr+0x110>
    80008100:	100005b7          	lui	a1,0x10000
    80008104:	00005817          	auipc	a6,0x5
    80008108:	e3c80813          	addi	a6,a6,-452 # 8000cf40 <uart_tx_buf>
    8000810c:	01c0006f          	j	80008128 <uartintr+0xf8>
    80008110:	0006c703          	lbu	a4,0(a3)
    80008114:	00f63023          	sd	a5,0(a2)
    80008118:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000811c:	00063783          	ld	a5,0(a2)
    80008120:	00053703          	ld	a4,0(a0)
    80008124:	02f70063          	beq	a4,a5,80008144 <uartintr+0x114>
    80008128:	01f7f713          	andi	a4,a5,31
    8000812c:	00e806b3          	add	a3,a6,a4
    80008130:	0055c703          	lbu	a4,5(a1)
    80008134:	00178793          	addi	a5,a5,1
    80008138:	02077713          	andi	a4,a4,32
    8000813c:	fc071ae3          	bnez	a4,80008110 <uartintr+0xe0>
    80008140:	00008067          	ret
    80008144:	00008067          	ret

0000000080008148 <kinit>:
    80008148:	fc010113          	addi	sp,sp,-64
    8000814c:	02913423          	sd	s1,40(sp)
    80008150:	fffff7b7          	lui	a5,0xfffff
    80008154:	00006497          	auipc	s1,0x6
    80008158:	e0b48493          	addi	s1,s1,-501 # 8000df5f <end+0xfff>
    8000815c:	02813823          	sd	s0,48(sp)
    80008160:	01313c23          	sd	s3,24(sp)
    80008164:	00f4f4b3          	and	s1,s1,a5
    80008168:	02113c23          	sd	ra,56(sp)
    8000816c:	03213023          	sd	s2,32(sp)
    80008170:	01413823          	sd	s4,16(sp)
    80008174:	01513423          	sd	s5,8(sp)
    80008178:	04010413          	addi	s0,sp,64
    8000817c:	000017b7          	lui	a5,0x1
    80008180:	01100993          	li	s3,17
    80008184:	00f487b3          	add	a5,s1,a5
    80008188:	01b99993          	slli	s3,s3,0x1b
    8000818c:	06f9e063          	bltu	s3,a5,800081ec <kinit+0xa4>
    80008190:	00005a97          	auipc	s5,0x5
    80008194:	dd0a8a93          	addi	s5,s5,-560 # 8000cf60 <end>
    80008198:	0754ec63          	bltu	s1,s5,80008210 <kinit+0xc8>
    8000819c:	0734fa63          	bgeu	s1,s3,80008210 <kinit+0xc8>
    800081a0:	00088a37          	lui	s4,0x88
    800081a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800081a8:	00004917          	auipc	s2,0x4
    800081ac:	ac890913          	addi	s2,s2,-1336 # 8000bc70 <kmem>
    800081b0:	00ca1a13          	slli	s4,s4,0xc
    800081b4:	0140006f          	j	800081c8 <kinit+0x80>
    800081b8:	000017b7          	lui	a5,0x1
    800081bc:	00f484b3          	add	s1,s1,a5
    800081c0:	0554e863          	bltu	s1,s5,80008210 <kinit+0xc8>
    800081c4:	0534f663          	bgeu	s1,s3,80008210 <kinit+0xc8>
    800081c8:	00001637          	lui	a2,0x1
    800081cc:	00100593          	li	a1,1
    800081d0:	00048513          	mv	a0,s1
    800081d4:	00000097          	auipc	ra,0x0
    800081d8:	5e4080e7          	jalr	1508(ra) # 800087b8 <__memset>
    800081dc:	00093783          	ld	a5,0(s2)
    800081e0:	00f4b023          	sd	a5,0(s1)
    800081e4:	00993023          	sd	s1,0(s2)
    800081e8:	fd4498e3          	bne	s1,s4,800081b8 <kinit+0x70>
    800081ec:	03813083          	ld	ra,56(sp)
    800081f0:	03013403          	ld	s0,48(sp)
    800081f4:	02813483          	ld	s1,40(sp)
    800081f8:	02013903          	ld	s2,32(sp)
    800081fc:	01813983          	ld	s3,24(sp)
    80008200:	01013a03          	ld	s4,16(sp)
    80008204:	00813a83          	ld	s5,8(sp)
    80008208:	04010113          	addi	sp,sp,64
    8000820c:	00008067          	ret
    80008210:	00001517          	auipc	a0,0x1
    80008214:	69850513          	addi	a0,a0,1688 # 800098a8 <digits+0x18>
    80008218:	fffff097          	auipc	ra,0xfffff
    8000821c:	4b4080e7          	jalr	1204(ra) # 800076cc <panic>

0000000080008220 <freerange>:
    80008220:	fc010113          	addi	sp,sp,-64
    80008224:	000017b7          	lui	a5,0x1
    80008228:	02913423          	sd	s1,40(sp)
    8000822c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008230:	009504b3          	add	s1,a0,s1
    80008234:	fffff537          	lui	a0,0xfffff
    80008238:	02813823          	sd	s0,48(sp)
    8000823c:	02113c23          	sd	ra,56(sp)
    80008240:	03213023          	sd	s2,32(sp)
    80008244:	01313c23          	sd	s3,24(sp)
    80008248:	01413823          	sd	s4,16(sp)
    8000824c:	01513423          	sd	s5,8(sp)
    80008250:	01613023          	sd	s6,0(sp)
    80008254:	04010413          	addi	s0,sp,64
    80008258:	00a4f4b3          	and	s1,s1,a0
    8000825c:	00f487b3          	add	a5,s1,a5
    80008260:	06f5e463          	bltu	a1,a5,800082c8 <freerange+0xa8>
    80008264:	00005a97          	auipc	s5,0x5
    80008268:	cfca8a93          	addi	s5,s5,-772 # 8000cf60 <end>
    8000826c:	0954e263          	bltu	s1,s5,800082f0 <freerange+0xd0>
    80008270:	01100993          	li	s3,17
    80008274:	01b99993          	slli	s3,s3,0x1b
    80008278:	0734fc63          	bgeu	s1,s3,800082f0 <freerange+0xd0>
    8000827c:	00058a13          	mv	s4,a1
    80008280:	00004917          	auipc	s2,0x4
    80008284:	9f090913          	addi	s2,s2,-1552 # 8000bc70 <kmem>
    80008288:	00002b37          	lui	s6,0x2
    8000828c:	0140006f          	j	800082a0 <freerange+0x80>
    80008290:	000017b7          	lui	a5,0x1
    80008294:	00f484b3          	add	s1,s1,a5
    80008298:	0554ec63          	bltu	s1,s5,800082f0 <freerange+0xd0>
    8000829c:	0534fa63          	bgeu	s1,s3,800082f0 <freerange+0xd0>
    800082a0:	00001637          	lui	a2,0x1
    800082a4:	00100593          	li	a1,1
    800082a8:	00048513          	mv	a0,s1
    800082ac:	00000097          	auipc	ra,0x0
    800082b0:	50c080e7          	jalr	1292(ra) # 800087b8 <__memset>
    800082b4:	00093703          	ld	a4,0(s2)
    800082b8:	016487b3          	add	a5,s1,s6
    800082bc:	00e4b023          	sd	a4,0(s1)
    800082c0:	00993023          	sd	s1,0(s2)
    800082c4:	fcfa76e3          	bgeu	s4,a5,80008290 <freerange+0x70>
    800082c8:	03813083          	ld	ra,56(sp)
    800082cc:	03013403          	ld	s0,48(sp)
    800082d0:	02813483          	ld	s1,40(sp)
    800082d4:	02013903          	ld	s2,32(sp)
    800082d8:	01813983          	ld	s3,24(sp)
    800082dc:	01013a03          	ld	s4,16(sp)
    800082e0:	00813a83          	ld	s5,8(sp)
    800082e4:	00013b03          	ld	s6,0(sp)
    800082e8:	04010113          	addi	sp,sp,64
    800082ec:	00008067          	ret
    800082f0:	00001517          	auipc	a0,0x1
    800082f4:	5b850513          	addi	a0,a0,1464 # 800098a8 <digits+0x18>
    800082f8:	fffff097          	auipc	ra,0xfffff
    800082fc:	3d4080e7          	jalr	980(ra) # 800076cc <panic>

0000000080008300 <kfree>:
    80008300:	fe010113          	addi	sp,sp,-32
    80008304:	00813823          	sd	s0,16(sp)
    80008308:	00113c23          	sd	ra,24(sp)
    8000830c:	00913423          	sd	s1,8(sp)
    80008310:	02010413          	addi	s0,sp,32
    80008314:	03451793          	slli	a5,a0,0x34
    80008318:	04079c63          	bnez	a5,80008370 <kfree+0x70>
    8000831c:	00005797          	auipc	a5,0x5
    80008320:	c4478793          	addi	a5,a5,-956 # 8000cf60 <end>
    80008324:	00050493          	mv	s1,a0
    80008328:	04f56463          	bltu	a0,a5,80008370 <kfree+0x70>
    8000832c:	01100793          	li	a5,17
    80008330:	01b79793          	slli	a5,a5,0x1b
    80008334:	02f57e63          	bgeu	a0,a5,80008370 <kfree+0x70>
    80008338:	00001637          	lui	a2,0x1
    8000833c:	00100593          	li	a1,1
    80008340:	00000097          	auipc	ra,0x0
    80008344:	478080e7          	jalr	1144(ra) # 800087b8 <__memset>
    80008348:	00004797          	auipc	a5,0x4
    8000834c:	92878793          	addi	a5,a5,-1752 # 8000bc70 <kmem>
    80008350:	0007b703          	ld	a4,0(a5)
    80008354:	01813083          	ld	ra,24(sp)
    80008358:	01013403          	ld	s0,16(sp)
    8000835c:	00e4b023          	sd	a4,0(s1)
    80008360:	0097b023          	sd	s1,0(a5)
    80008364:	00813483          	ld	s1,8(sp)
    80008368:	02010113          	addi	sp,sp,32
    8000836c:	00008067          	ret
    80008370:	00001517          	auipc	a0,0x1
    80008374:	53850513          	addi	a0,a0,1336 # 800098a8 <digits+0x18>
    80008378:	fffff097          	auipc	ra,0xfffff
    8000837c:	354080e7          	jalr	852(ra) # 800076cc <panic>

0000000080008380 <kalloc>:
    80008380:	fe010113          	addi	sp,sp,-32
    80008384:	00813823          	sd	s0,16(sp)
    80008388:	00913423          	sd	s1,8(sp)
    8000838c:	00113c23          	sd	ra,24(sp)
    80008390:	02010413          	addi	s0,sp,32
    80008394:	00004797          	auipc	a5,0x4
    80008398:	8dc78793          	addi	a5,a5,-1828 # 8000bc70 <kmem>
    8000839c:	0007b483          	ld	s1,0(a5)
    800083a0:	02048063          	beqz	s1,800083c0 <kalloc+0x40>
    800083a4:	0004b703          	ld	a4,0(s1)
    800083a8:	00001637          	lui	a2,0x1
    800083ac:	00500593          	li	a1,5
    800083b0:	00048513          	mv	a0,s1
    800083b4:	00e7b023          	sd	a4,0(a5)
    800083b8:	00000097          	auipc	ra,0x0
    800083bc:	400080e7          	jalr	1024(ra) # 800087b8 <__memset>
    800083c0:	01813083          	ld	ra,24(sp)
    800083c4:	01013403          	ld	s0,16(sp)
    800083c8:	00048513          	mv	a0,s1
    800083cc:	00813483          	ld	s1,8(sp)
    800083d0:	02010113          	addi	sp,sp,32
    800083d4:	00008067          	ret

00000000800083d8 <initlock>:
    800083d8:	ff010113          	addi	sp,sp,-16
    800083dc:	00813423          	sd	s0,8(sp)
    800083e0:	01010413          	addi	s0,sp,16
    800083e4:	00813403          	ld	s0,8(sp)
    800083e8:	00b53423          	sd	a1,8(a0)
    800083ec:	00052023          	sw	zero,0(a0)
    800083f0:	00053823          	sd	zero,16(a0)
    800083f4:	01010113          	addi	sp,sp,16
    800083f8:	00008067          	ret

00000000800083fc <acquire>:
    800083fc:	fe010113          	addi	sp,sp,-32
    80008400:	00813823          	sd	s0,16(sp)
    80008404:	00913423          	sd	s1,8(sp)
    80008408:	00113c23          	sd	ra,24(sp)
    8000840c:	01213023          	sd	s2,0(sp)
    80008410:	02010413          	addi	s0,sp,32
    80008414:	00050493          	mv	s1,a0
    80008418:	10002973          	csrr	s2,sstatus
    8000841c:	100027f3          	csrr	a5,sstatus
    80008420:	ffd7f793          	andi	a5,a5,-3
    80008424:	10079073          	csrw	sstatus,a5
    80008428:	fffff097          	auipc	ra,0xfffff
    8000842c:	8e0080e7          	jalr	-1824(ra) # 80006d08 <mycpu>
    80008430:	07852783          	lw	a5,120(a0)
    80008434:	06078e63          	beqz	a5,800084b0 <acquire+0xb4>
    80008438:	fffff097          	auipc	ra,0xfffff
    8000843c:	8d0080e7          	jalr	-1840(ra) # 80006d08 <mycpu>
    80008440:	07852783          	lw	a5,120(a0)
    80008444:	0004a703          	lw	a4,0(s1)
    80008448:	0017879b          	addiw	a5,a5,1
    8000844c:	06f52c23          	sw	a5,120(a0)
    80008450:	04071063          	bnez	a4,80008490 <acquire+0x94>
    80008454:	00100713          	li	a4,1
    80008458:	00070793          	mv	a5,a4
    8000845c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008460:	0007879b          	sext.w	a5,a5
    80008464:	fe079ae3          	bnez	a5,80008458 <acquire+0x5c>
    80008468:	0ff0000f          	fence
    8000846c:	fffff097          	auipc	ra,0xfffff
    80008470:	89c080e7          	jalr	-1892(ra) # 80006d08 <mycpu>
    80008474:	01813083          	ld	ra,24(sp)
    80008478:	01013403          	ld	s0,16(sp)
    8000847c:	00a4b823          	sd	a0,16(s1)
    80008480:	00013903          	ld	s2,0(sp)
    80008484:	00813483          	ld	s1,8(sp)
    80008488:	02010113          	addi	sp,sp,32
    8000848c:	00008067          	ret
    80008490:	0104b903          	ld	s2,16(s1)
    80008494:	fffff097          	auipc	ra,0xfffff
    80008498:	874080e7          	jalr	-1932(ra) # 80006d08 <mycpu>
    8000849c:	faa91ce3          	bne	s2,a0,80008454 <acquire+0x58>
    800084a0:	00001517          	auipc	a0,0x1
    800084a4:	41050513          	addi	a0,a0,1040 # 800098b0 <digits+0x20>
    800084a8:	fffff097          	auipc	ra,0xfffff
    800084ac:	224080e7          	jalr	548(ra) # 800076cc <panic>
    800084b0:	00195913          	srli	s2,s2,0x1
    800084b4:	fffff097          	auipc	ra,0xfffff
    800084b8:	854080e7          	jalr	-1964(ra) # 80006d08 <mycpu>
    800084bc:	00197913          	andi	s2,s2,1
    800084c0:	07252e23          	sw	s2,124(a0)
    800084c4:	f75ff06f          	j	80008438 <acquire+0x3c>

00000000800084c8 <release>:
    800084c8:	fe010113          	addi	sp,sp,-32
    800084cc:	00813823          	sd	s0,16(sp)
    800084d0:	00113c23          	sd	ra,24(sp)
    800084d4:	00913423          	sd	s1,8(sp)
    800084d8:	01213023          	sd	s2,0(sp)
    800084dc:	02010413          	addi	s0,sp,32
    800084e0:	00052783          	lw	a5,0(a0)
    800084e4:	00079a63          	bnez	a5,800084f8 <release+0x30>
    800084e8:	00001517          	auipc	a0,0x1
    800084ec:	3d050513          	addi	a0,a0,976 # 800098b8 <digits+0x28>
    800084f0:	fffff097          	auipc	ra,0xfffff
    800084f4:	1dc080e7          	jalr	476(ra) # 800076cc <panic>
    800084f8:	01053903          	ld	s2,16(a0)
    800084fc:	00050493          	mv	s1,a0
    80008500:	fffff097          	auipc	ra,0xfffff
    80008504:	808080e7          	jalr	-2040(ra) # 80006d08 <mycpu>
    80008508:	fea910e3          	bne	s2,a0,800084e8 <release+0x20>
    8000850c:	0004b823          	sd	zero,16(s1)
    80008510:	0ff0000f          	fence
    80008514:	0f50000f          	fence	iorw,ow
    80008518:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000851c:	ffffe097          	auipc	ra,0xffffe
    80008520:	7ec080e7          	jalr	2028(ra) # 80006d08 <mycpu>
    80008524:	100027f3          	csrr	a5,sstatus
    80008528:	0027f793          	andi	a5,a5,2
    8000852c:	04079a63          	bnez	a5,80008580 <release+0xb8>
    80008530:	07852783          	lw	a5,120(a0)
    80008534:	02f05e63          	blez	a5,80008570 <release+0xa8>
    80008538:	fff7871b          	addiw	a4,a5,-1
    8000853c:	06e52c23          	sw	a4,120(a0)
    80008540:	00071c63          	bnez	a4,80008558 <release+0x90>
    80008544:	07c52783          	lw	a5,124(a0)
    80008548:	00078863          	beqz	a5,80008558 <release+0x90>
    8000854c:	100027f3          	csrr	a5,sstatus
    80008550:	0027e793          	ori	a5,a5,2
    80008554:	10079073          	csrw	sstatus,a5
    80008558:	01813083          	ld	ra,24(sp)
    8000855c:	01013403          	ld	s0,16(sp)
    80008560:	00813483          	ld	s1,8(sp)
    80008564:	00013903          	ld	s2,0(sp)
    80008568:	02010113          	addi	sp,sp,32
    8000856c:	00008067          	ret
    80008570:	00001517          	auipc	a0,0x1
    80008574:	36850513          	addi	a0,a0,872 # 800098d8 <digits+0x48>
    80008578:	fffff097          	auipc	ra,0xfffff
    8000857c:	154080e7          	jalr	340(ra) # 800076cc <panic>
    80008580:	00001517          	auipc	a0,0x1
    80008584:	34050513          	addi	a0,a0,832 # 800098c0 <digits+0x30>
    80008588:	fffff097          	auipc	ra,0xfffff
    8000858c:	144080e7          	jalr	324(ra) # 800076cc <panic>

0000000080008590 <holding>:
    80008590:	00052783          	lw	a5,0(a0)
    80008594:	00079663          	bnez	a5,800085a0 <holding+0x10>
    80008598:	00000513          	li	a0,0
    8000859c:	00008067          	ret
    800085a0:	fe010113          	addi	sp,sp,-32
    800085a4:	00813823          	sd	s0,16(sp)
    800085a8:	00913423          	sd	s1,8(sp)
    800085ac:	00113c23          	sd	ra,24(sp)
    800085b0:	02010413          	addi	s0,sp,32
    800085b4:	01053483          	ld	s1,16(a0)
    800085b8:	ffffe097          	auipc	ra,0xffffe
    800085bc:	750080e7          	jalr	1872(ra) # 80006d08 <mycpu>
    800085c0:	01813083          	ld	ra,24(sp)
    800085c4:	01013403          	ld	s0,16(sp)
    800085c8:	40a48533          	sub	a0,s1,a0
    800085cc:	00153513          	seqz	a0,a0
    800085d0:	00813483          	ld	s1,8(sp)
    800085d4:	02010113          	addi	sp,sp,32
    800085d8:	00008067          	ret

00000000800085dc <push_off>:
    800085dc:	fe010113          	addi	sp,sp,-32
    800085e0:	00813823          	sd	s0,16(sp)
    800085e4:	00113c23          	sd	ra,24(sp)
    800085e8:	00913423          	sd	s1,8(sp)
    800085ec:	02010413          	addi	s0,sp,32
    800085f0:	100024f3          	csrr	s1,sstatus
    800085f4:	100027f3          	csrr	a5,sstatus
    800085f8:	ffd7f793          	andi	a5,a5,-3
    800085fc:	10079073          	csrw	sstatus,a5
    80008600:	ffffe097          	auipc	ra,0xffffe
    80008604:	708080e7          	jalr	1800(ra) # 80006d08 <mycpu>
    80008608:	07852783          	lw	a5,120(a0)
    8000860c:	02078663          	beqz	a5,80008638 <push_off+0x5c>
    80008610:	ffffe097          	auipc	ra,0xffffe
    80008614:	6f8080e7          	jalr	1784(ra) # 80006d08 <mycpu>
    80008618:	07852783          	lw	a5,120(a0)
    8000861c:	01813083          	ld	ra,24(sp)
    80008620:	01013403          	ld	s0,16(sp)
    80008624:	0017879b          	addiw	a5,a5,1
    80008628:	06f52c23          	sw	a5,120(a0)
    8000862c:	00813483          	ld	s1,8(sp)
    80008630:	02010113          	addi	sp,sp,32
    80008634:	00008067          	ret
    80008638:	0014d493          	srli	s1,s1,0x1
    8000863c:	ffffe097          	auipc	ra,0xffffe
    80008640:	6cc080e7          	jalr	1740(ra) # 80006d08 <mycpu>
    80008644:	0014f493          	andi	s1,s1,1
    80008648:	06952e23          	sw	s1,124(a0)
    8000864c:	fc5ff06f          	j	80008610 <push_off+0x34>

0000000080008650 <pop_off>:
    80008650:	ff010113          	addi	sp,sp,-16
    80008654:	00813023          	sd	s0,0(sp)
    80008658:	00113423          	sd	ra,8(sp)
    8000865c:	01010413          	addi	s0,sp,16
    80008660:	ffffe097          	auipc	ra,0xffffe
    80008664:	6a8080e7          	jalr	1704(ra) # 80006d08 <mycpu>
    80008668:	100027f3          	csrr	a5,sstatus
    8000866c:	0027f793          	andi	a5,a5,2
    80008670:	04079663          	bnez	a5,800086bc <pop_off+0x6c>
    80008674:	07852783          	lw	a5,120(a0)
    80008678:	02f05a63          	blez	a5,800086ac <pop_off+0x5c>
    8000867c:	fff7871b          	addiw	a4,a5,-1
    80008680:	06e52c23          	sw	a4,120(a0)
    80008684:	00071c63          	bnez	a4,8000869c <pop_off+0x4c>
    80008688:	07c52783          	lw	a5,124(a0)
    8000868c:	00078863          	beqz	a5,8000869c <pop_off+0x4c>
    80008690:	100027f3          	csrr	a5,sstatus
    80008694:	0027e793          	ori	a5,a5,2
    80008698:	10079073          	csrw	sstatus,a5
    8000869c:	00813083          	ld	ra,8(sp)
    800086a0:	00013403          	ld	s0,0(sp)
    800086a4:	01010113          	addi	sp,sp,16
    800086a8:	00008067          	ret
    800086ac:	00001517          	auipc	a0,0x1
    800086b0:	22c50513          	addi	a0,a0,556 # 800098d8 <digits+0x48>
    800086b4:	fffff097          	auipc	ra,0xfffff
    800086b8:	018080e7          	jalr	24(ra) # 800076cc <panic>
    800086bc:	00001517          	auipc	a0,0x1
    800086c0:	20450513          	addi	a0,a0,516 # 800098c0 <digits+0x30>
    800086c4:	fffff097          	auipc	ra,0xfffff
    800086c8:	008080e7          	jalr	8(ra) # 800076cc <panic>

00000000800086cc <push_on>:
    800086cc:	fe010113          	addi	sp,sp,-32
    800086d0:	00813823          	sd	s0,16(sp)
    800086d4:	00113c23          	sd	ra,24(sp)
    800086d8:	00913423          	sd	s1,8(sp)
    800086dc:	02010413          	addi	s0,sp,32
    800086e0:	100024f3          	csrr	s1,sstatus
    800086e4:	100027f3          	csrr	a5,sstatus
    800086e8:	0027e793          	ori	a5,a5,2
    800086ec:	10079073          	csrw	sstatus,a5
    800086f0:	ffffe097          	auipc	ra,0xffffe
    800086f4:	618080e7          	jalr	1560(ra) # 80006d08 <mycpu>
    800086f8:	07852783          	lw	a5,120(a0)
    800086fc:	02078663          	beqz	a5,80008728 <push_on+0x5c>
    80008700:	ffffe097          	auipc	ra,0xffffe
    80008704:	608080e7          	jalr	1544(ra) # 80006d08 <mycpu>
    80008708:	07852783          	lw	a5,120(a0)
    8000870c:	01813083          	ld	ra,24(sp)
    80008710:	01013403          	ld	s0,16(sp)
    80008714:	0017879b          	addiw	a5,a5,1
    80008718:	06f52c23          	sw	a5,120(a0)
    8000871c:	00813483          	ld	s1,8(sp)
    80008720:	02010113          	addi	sp,sp,32
    80008724:	00008067          	ret
    80008728:	0014d493          	srli	s1,s1,0x1
    8000872c:	ffffe097          	auipc	ra,0xffffe
    80008730:	5dc080e7          	jalr	1500(ra) # 80006d08 <mycpu>
    80008734:	0014f493          	andi	s1,s1,1
    80008738:	06952e23          	sw	s1,124(a0)
    8000873c:	fc5ff06f          	j	80008700 <push_on+0x34>

0000000080008740 <pop_on>:
    80008740:	ff010113          	addi	sp,sp,-16
    80008744:	00813023          	sd	s0,0(sp)
    80008748:	00113423          	sd	ra,8(sp)
    8000874c:	01010413          	addi	s0,sp,16
    80008750:	ffffe097          	auipc	ra,0xffffe
    80008754:	5b8080e7          	jalr	1464(ra) # 80006d08 <mycpu>
    80008758:	100027f3          	csrr	a5,sstatus
    8000875c:	0027f793          	andi	a5,a5,2
    80008760:	04078463          	beqz	a5,800087a8 <pop_on+0x68>
    80008764:	07852783          	lw	a5,120(a0)
    80008768:	02f05863          	blez	a5,80008798 <pop_on+0x58>
    8000876c:	fff7879b          	addiw	a5,a5,-1
    80008770:	06f52c23          	sw	a5,120(a0)
    80008774:	07853783          	ld	a5,120(a0)
    80008778:	00079863          	bnez	a5,80008788 <pop_on+0x48>
    8000877c:	100027f3          	csrr	a5,sstatus
    80008780:	ffd7f793          	andi	a5,a5,-3
    80008784:	10079073          	csrw	sstatus,a5
    80008788:	00813083          	ld	ra,8(sp)
    8000878c:	00013403          	ld	s0,0(sp)
    80008790:	01010113          	addi	sp,sp,16
    80008794:	00008067          	ret
    80008798:	00001517          	auipc	a0,0x1
    8000879c:	16850513          	addi	a0,a0,360 # 80009900 <digits+0x70>
    800087a0:	fffff097          	auipc	ra,0xfffff
    800087a4:	f2c080e7          	jalr	-212(ra) # 800076cc <panic>
    800087a8:	00001517          	auipc	a0,0x1
    800087ac:	13850513          	addi	a0,a0,312 # 800098e0 <digits+0x50>
    800087b0:	fffff097          	auipc	ra,0xfffff
    800087b4:	f1c080e7          	jalr	-228(ra) # 800076cc <panic>

00000000800087b8 <__memset>:
    800087b8:	ff010113          	addi	sp,sp,-16
    800087bc:	00813423          	sd	s0,8(sp)
    800087c0:	01010413          	addi	s0,sp,16
    800087c4:	1a060e63          	beqz	a2,80008980 <__memset+0x1c8>
    800087c8:	40a007b3          	neg	a5,a0
    800087cc:	0077f793          	andi	a5,a5,7
    800087d0:	00778693          	addi	a3,a5,7
    800087d4:	00b00813          	li	a6,11
    800087d8:	0ff5f593          	andi	a1,a1,255
    800087dc:	fff6071b          	addiw	a4,a2,-1
    800087e0:	1b06e663          	bltu	a3,a6,8000898c <__memset+0x1d4>
    800087e4:	1cd76463          	bltu	a4,a3,800089ac <__memset+0x1f4>
    800087e8:	1a078e63          	beqz	a5,800089a4 <__memset+0x1ec>
    800087ec:	00b50023          	sb	a1,0(a0)
    800087f0:	00100713          	li	a4,1
    800087f4:	1ae78463          	beq	a5,a4,8000899c <__memset+0x1e4>
    800087f8:	00b500a3          	sb	a1,1(a0)
    800087fc:	00200713          	li	a4,2
    80008800:	1ae78a63          	beq	a5,a4,800089b4 <__memset+0x1fc>
    80008804:	00b50123          	sb	a1,2(a0)
    80008808:	00300713          	li	a4,3
    8000880c:	18e78463          	beq	a5,a4,80008994 <__memset+0x1dc>
    80008810:	00b501a3          	sb	a1,3(a0)
    80008814:	00400713          	li	a4,4
    80008818:	1ae78263          	beq	a5,a4,800089bc <__memset+0x204>
    8000881c:	00b50223          	sb	a1,4(a0)
    80008820:	00500713          	li	a4,5
    80008824:	1ae78063          	beq	a5,a4,800089c4 <__memset+0x20c>
    80008828:	00b502a3          	sb	a1,5(a0)
    8000882c:	00700713          	li	a4,7
    80008830:	18e79e63          	bne	a5,a4,800089cc <__memset+0x214>
    80008834:	00b50323          	sb	a1,6(a0)
    80008838:	00700e93          	li	t4,7
    8000883c:	00859713          	slli	a4,a1,0x8
    80008840:	00e5e733          	or	a4,a1,a4
    80008844:	01059e13          	slli	t3,a1,0x10
    80008848:	01c76e33          	or	t3,a4,t3
    8000884c:	01859313          	slli	t1,a1,0x18
    80008850:	006e6333          	or	t1,t3,t1
    80008854:	02059893          	slli	a7,a1,0x20
    80008858:	40f60e3b          	subw	t3,a2,a5
    8000885c:	011368b3          	or	a7,t1,a7
    80008860:	02859813          	slli	a6,a1,0x28
    80008864:	0108e833          	or	a6,a7,a6
    80008868:	03059693          	slli	a3,a1,0x30
    8000886c:	003e589b          	srliw	a7,t3,0x3
    80008870:	00d866b3          	or	a3,a6,a3
    80008874:	03859713          	slli	a4,a1,0x38
    80008878:	00389813          	slli	a6,a7,0x3
    8000887c:	00f507b3          	add	a5,a0,a5
    80008880:	00e6e733          	or	a4,a3,a4
    80008884:	000e089b          	sext.w	a7,t3
    80008888:	00f806b3          	add	a3,a6,a5
    8000888c:	00e7b023          	sd	a4,0(a5)
    80008890:	00878793          	addi	a5,a5,8
    80008894:	fed79ce3          	bne	a5,a3,8000888c <__memset+0xd4>
    80008898:	ff8e7793          	andi	a5,t3,-8
    8000889c:	0007871b          	sext.w	a4,a5
    800088a0:	01d787bb          	addw	a5,a5,t4
    800088a4:	0ce88e63          	beq	a7,a4,80008980 <__memset+0x1c8>
    800088a8:	00f50733          	add	a4,a0,a5
    800088ac:	00b70023          	sb	a1,0(a4)
    800088b0:	0017871b          	addiw	a4,a5,1
    800088b4:	0cc77663          	bgeu	a4,a2,80008980 <__memset+0x1c8>
    800088b8:	00e50733          	add	a4,a0,a4
    800088bc:	00b70023          	sb	a1,0(a4)
    800088c0:	0027871b          	addiw	a4,a5,2
    800088c4:	0ac77e63          	bgeu	a4,a2,80008980 <__memset+0x1c8>
    800088c8:	00e50733          	add	a4,a0,a4
    800088cc:	00b70023          	sb	a1,0(a4)
    800088d0:	0037871b          	addiw	a4,a5,3
    800088d4:	0ac77663          	bgeu	a4,a2,80008980 <__memset+0x1c8>
    800088d8:	00e50733          	add	a4,a0,a4
    800088dc:	00b70023          	sb	a1,0(a4)
    800088e0:	0047871b          	addiw	a4,a5,4
    800088e4:	08c77e63          	bgeu	a4,a2,80008980 <__memset+0x1c8>
    800088e8:	00e50733          	add	a4,a0,a4
    800088ec:	00b70023          	sb	a1,0(a4)
    800088f0:	0057871b          	addiw	a4,a5,5
    800088f4:	08c77663          	bgeu	a4,a2,80008980 <__memset+0x1c8>
    800088f8:	00e50733          	add	a4,a0,a4
    800088fc:	00b70023          	sb	a1,0(a4)
    80008900:	0067871b          	addiw	a4,a5,6
    80008904:	06c77e63          	bgeu	a4,a2,80008980 <__memset+0x1c8>
    80008908:	00e50733          	add	a4,a0,a4
    8000890c:	00b70023          	sb	a1,0(a4)
    80008910:	0077871b          	addiw	a4,a5,7
    80008914:	06c77663          	bgeu	a4,a2,80008980 <__memset+0x1c8>
    80008918:	00e50733          	add	a4,a0,a4
    8000891c:	00b70023          	sb	a1,0(a4)
    80008920:	0087871b          	addiw	a4,a5,8
    80008924:	04c77e63          	bgeu	a4,a2,80008980 <__memset+0x1c8>
    80008928:	00e50733          	add	a4,a0,a4
    8000892c:	00b70023          	sb	a1,0(a4)
    80008930:	0097871b          	addiw	a4,a5,9
    80008934:	04c77663          	bgeu	a4,a2,80008980 <__memset+0x1c8>
    80008938:	00e50733          	add	a4,a0,a4
    8000893c:	00b70023          	sb	a1,0(a4)
    80008940:	00a7871b          	addiw	a4,a5,10
    80008944:	02c77e63          	bgeu	a4,a2,80008980 <__memset+0x1c8>
    80008948:	00e50733          	add	a4,a0,a4
    8000894c:	00b70023          	sb	a1,0(a4)
    80008950:	00b7871b          	addiw	a4,a5,11
    80008954:	02c77663          	bgeu	a4,a2,80008980 <__memset+0x1c8>
    80008958:	00e50733          	add	a4,a0,a4
    8000895c:	00b70023          	sb	a1,0(a4)
    80008960:	00c7871b          	addiw	a4,a5,12
    80008964:	00c77e63          	bgeu	a4,a2,80008980 <__memset+0x1c8>
    80008968:	00e50733          	add	a4,a0,a4
    8000896c:	00b70023          	sb	a1,0(a4)
    80008970:	00d7879b          	addiw	a5,a5,13
    80008974:	00c7f663          	bgeu	a5,a2,80008980 <__memset+0x1c8>
    80008978:	00f507b3          	add	a5,a0,a5
    8000897c:	00b78023          	sb	a1,0(a5)
    80008980:	00813403          	ld	s0,8(sp)
    80008984:	01010113          	addi	sp,sp,16
    80008988:	00008067          	ret
    8000898c:	00b00693          	li	a3,11
    80008990:	e55ff06f          	j	800087e4 <__memset+0x2c>
    80008994:	00300e93          	li	t4,3
    80008998:	ea5ff06f          	j	8000883c <__memset+0x84>
    8000899c:	00100e93          	li	t4,1
    800089a0:	e9dff06f          	j	8000883c <__memset+0x84>
    800089a4:	00000e93          	li	t4,0
    800089a8:	e95ff06f          	j	8000883c <__memset+0x84>
    800089ac:	00000793          	li	a5,0
    800089b0:	ef9ff06f          	j	800088a8 <__memset+0xf0>
    800089b4:	00200e93          	li	t4,2
    800089b8:	e85ff06f          	j	8000883c <__memset+0x84>
    800089bc:	00400e93          	li	t4,4
    800089c0:	e7dff06f          	j	8000883c <__memset+0x84>
    800089c4:	00500e93          	li	t4,5
    800089c8:	e75ff06f          	j	8000883c <__memset+0x84>
    800089cc:	00600e93          	li	t4,6
    800089d0:	e6dff06f          	j	8000883c <__memset+0x84>

00000000800089d4 <__memmove>:
    800089d4:	ff010113          	addi	sp,sp,-16
    800089d8:	00813423          	sd	s0,8(sp)
    800089dc:	01010413          	addi	s0,sp,16
    800089e0:	0e060863          	beqz	a2,80008ad0 <__memmove+0xfc>
    800089e4:	fff6069b          	addiw	a3,a2,-1
    800089e8:	0006881b          	sext.w	a6,a3
    800089ec:	0ea5e863          	bltu	a1,a0,80008adc <__memmove+0x108>
    800089f0:	00758713          	addi	a4,a1,7
    800089f4:	00a5e7b3          	or	a5,a1,a0
    800089f8:	40a70733          	sub	a4,a4,a0
    800089fc:	0077f793          	andi	a5,a5,7
    80008a00:	00f73713          	sltiu	a4,a4,15
    80008a04:	00174713          	xori	a4,a4,1
    80008a08:	0017b793          	seqz	a5,a5
    80008a0c:	00e7f7b3          	and	a5,a5,a4
    80008a10:	10078863          	beqz	a5,80008b20 <__memmove+0x14c>
    80008a14:	00900793          	li	a5,9
    80008a18:	1107f463          	bgeu	a5,a6,80008b20 <__memmove+0x14c>
    80008a1c:	0036581b          	srliw	a6,a2,0x3
    80008a20:	fff8081b          	addiw	a6,a6,-1
    80008a24:	02081813          	slli	a6,a6,0x20
    80008a28:	01d85893          	srli	a7,a6,0x1d
    80008a2c:	00858813          	addi	a6,a1,8
    80008a30:	00058793          	mv	a5,a1
    80008a34:	00050713          	mv	a4,a0
    80008a38:	01088833          	add	a6,a7,a6
    80008a3c:	0007b883          	ld	a7,0(a5)
    80008a40:	00878793          	addi	a5,a5,8
    80008a44:	00870713          	addi	a4,a4,8
    80008a48:	ff173c23          	sd	a7,-8(a4)
    80008a4c:	ff0798e3          	bne	a5,a6,80008a3c <__memmove+0x68>
    80008a50:	ff867713          	andi	a4,a2,-8
    80008a54:	02071793          	slli	a5,a4,0x20
    80008a58:	0207d793          	srli	a5,a5,0x20
    80008a5c:	00f585b3          	add	a1,a1,a5
    80008a60:	40e686bb          	subw	a3,a3,a4
    80008a64:	00f507b3          	add	a5,a0,a5
    80008a68:	06e60463          	beq	a2,a4,80008ad0 <__memmove+0xfc>
    80008a6c:	0005c703          	lbu	a4,0(a1)
    80008a70:	00e78023          	sb	a4,0(a5)
    80008a74:	04068e63          	beqz	a3,80008ad0 <__memmove+0xfc>
    80008a78:	0015c603          	lbu	a2,1(a1)
    80008a7c:	00100713          	li	a4,1
    80008a80:	00c780a3          	sb	a2,1(a5)
    80008a84:	04e68663          	beq	a3,a4,80008ad0 <__memmove+0xfc>
    80008a88:	0025c603          	lbu	a2,2(a1)
    80008a8c:	00200713          	li	a4,2
    80008a90:	00c78123          	sb	a2,2(a5)
    80008a94:	02e68e63          	beq	a3,a4,80008ad0 <__memmove+0xfc>
    80008a98:	0035c603          	lbu	a2,3(a1)
    80008a9c:	00300713          	li	a4,3
    80008aa0:	00c781a3          	sb	a2,3(a5)
    80008aa4:	02e68663          	beq	a3,a4,80008ad0 <__memmove+0xfc>
    80008aa8:	0045c603          	lbu	a2,4(a1)
    80008aac:	00400713          	li	a4,4
    80008ab0:	00c78223          	sb	a2,4(a5)
    80008ab4:	00e68e63          	beq	a3,a4,80008ad0 <__memmove+0xfc>
    80008ab8:	0055c603          	lbu	a2,5(a1)
    80008abc:	00500713          	li	a4,5
    80008ac0:	00c782a3          	sb	a2,5(a5)
    80008ac4:	00e68663          	beq	a3,a4,80008ad0 <__memmove+0xfc>
    80008ac8:	0065c703          	lbu	a4,6(a1)
    80008acc:	00e78323          	sb	a4,6(a5)
    80008ad0:	00813403          	ld	s0,8(sp)
    80008ad4:	01010113          	addi	sp,sp,16
    80008ad8:	00008067          	ret
    80008adc:	02061713          	slli	a4,a2,0x20
    80008ae0:	02075713          	srli	a4,a4,0x20
    80008ae4:	00e587b3          	add	a5,a1,a4
    80008ae8:	f0f574e3          	bgeu	a0,a5,800089f0 <__memmove+0x1c>
    80008aec:	02069613          	slli	a2,a3,0x20
    80008af0:	02065613          	srli	a2,a2,0x20
    80008af4:	fff64613          	not	a2,a2
    80008af8:	00e50733          	add	a4,a0,a4
    80008afc:	00c78633          	add	a2,a5,a2
    80008b00:	fff7c683          	lbu	a3,-1(a5)
    80008b04:	fff78793          	addi	a5,a5,-1
    80008b08:	fff70713          	addi	a4,a4,-1
    80008b0c:	00d70023          	sb	a3,0(a4)
    80008b10:	fec798e3          	bne	a5,a2,80008b00 <__memmove+0x12c>
    80008b14:	00813403          	ld	s0,8(sp)
    80008b18:	01010113          	addi	sp,sp,16
    80008b1c:	00008067          	ret
    80008b20:	02069713          	slli	a4,a3,0x20
    80008b24:	02075713          	srli	a4,a4,0x20
    80008b28:	00170713          	addi	a4,a4,1
    80008b2c:	00e50733          	add	a4,a0,a4
    80008b30:	00050793          	mv	a5,a0
    80008b34:	0005c683          	lbu	a3,0(a1)
    80008b38:	00178793          	addi	a5,a5,1
    80008b3c:	00158593          	addi	a1,a1,1
    80008b40:	fed78fa3          	sb	a3,-1(a5)
    80008b44:	fee798e3          	bne	a5,a4,80008b34 <__memmove+0x160>
    80008b48:	f89ff06f          	j	80008ad0 <__memmove+0xfc>

0000000080008b4c <__putc>:
    80008b4c:	fe010113          	addi	sp,sp,-32
    80008b50:	00813823          	sd	s0,16(sp)
    80008b54:	00113c23          	sd	ra,24(sp)
    80008b58:	02010413          	addi	s0,sp,32
    80008b5c:	00050793          	mv	a5,a0
    80008b60:	fef40593          	addi	a1,s0,-17
    80008b64:	00100613          	li	a2,1
    80008b68:	00000513          	li	a0,0
    80008b6c:	fef407a3          	sb	a5,-17(s0)
    80008b70:	fffff097          	auipc	ra,0xfffff
    80008b74:	b3c080e7          	jalr	-1220(ra) # 800076ac <console_write>
    80008b78:	01813083          	ld	ra,24(sp)
    80008b7c:	01013403          	ld	s0,16(sp)
    80008b80:	02010113          	addi	sp,sp,32
    80008b84:	00008067          	ret

0000000080008b88 <__getc>:
    80008b88:	fe010113          	addi	sp,sp,-32
    80008b8c:	00813823          	sd	s0,16(sp)
    80008b90:	00113c23          	sd	ra,24(sp)
    80008b94:	02010413          	addi	s0,sp,32
    80008b98:	fe840593          	addi	a1,s0,-24
    80008b9c:	00100613          	li	a2,1
    80008ba0:	00000513          	li	a0,0
    80008ba4:	fffff097          	auipc	ra,0xfffff
    80008ba8:	ae8080e7          	jalr	-1304(ra) # 8000768c <console_read>
    80008bac:	fe844503          	lbu	a0,-24(s0)
    80008bb0:	01813083          	ld	ra,24(sp)
    80008bb4:	01013403          	ld	s0,16(sp)
    80008bb8:	02010113          	addi	sp,sp,32
    80008bbc:	00008067          	ret

0000000080008bc0 <console_handler>:
    80008bc0:	fe010113          	addi	sp,sp,-32
    80008bc4:	00813823          	sd	s0,16(sp)
    80008bc8:	00113c23          	sd	ra,24(sp)
    80008bcc:	00913423          	sd	s1,8(sp)
    80008bd0:	02010413          	addi	s0,sp,32
    80008bd4:	14202773          	csrr	a4,scause
    80008bd8:	100027f3          	csrr	a5,sstatus
    80008bdc:	0027f793          	andi	a5,a5,2
    80008be0:	06079e63          	bnez	a5,80008c5c <console_handler+0x9c>
    80008be4:	00074c63          	bltz	a4,80008bfc <console_handler+0x3c>
    80008be8:	01813083          	ld	ra,24(sp)
    80008bec:	01013403          	ld	s0,16(sp)
    80008bf0:	00813483          	ld	s1,8(sp)
    80008bf4:	02010113          	addi	sp,sp,32
    80008bf8:	00008067          	ret
    80008bfc:	0ff77713          	andi	a4,a4,255
    80008c00:	00900793          	li	a5,9
    80008c04:	fef712e3          	bne	a4,a5,80008be8 <console_handler+0x28>
    80008c08:	ffffe097          	auipc	ra,0xffffe
    80008c0c:	6dc080e7          	jalr	1756(ra) # 800072e4 <plic_claim>
    80008c10:	00a00793          	li	a5,10
    80008c14:	00050493          	mv	s1,a0
    80008c18:	02f50c63          	beq	a0,a5,80008c50 <console_handler+0x90>
    80008c1c:	fc0506e3          	beqz	a0,80008be8 <console_handler+0x28>
    80008c20:	00050593          	mv	a1,a0
    80008c24:	00001517          	auipc	a0,0x1
    80008c28:	be450513          	addi	a0,a0,-1052 # 80009808 <CONSOLE_STATUS+0x7f8>
    80008c2c:	fffff097          	auipc	ra,0xfffff
    80008c30:	afc080e7          	jalr	-1284(ra) # 80007728 <__printf>
    80008c34:	01013403          	ld	s0,16(sp)
    80008c38:	01813083          	ld	ra,24(sp)
    80008c3c:	00048513          	mv	a0,s1
    80008c40:	00813483          	ld	s1,8(sp)
    80008c44:	02010113          	addi	sp,sp,32
    80008c48:	ffffe317          	auipc	t1,0xffffe
    80008c4c:	6d430067          	jr	1748(t1) # 8000731c <plic_complete>
    80008c50:	fffff097          	auipc	ra,0xfffff
    80008c54:	3e0080e7          	jalr	992(ra) # 80008030 <uartintr>
    80008c58:	fddff06f          	j	80008c34 <console_handler+0x74>
    80008c5c:	00001517          	auipc	a0,0x1
    80008c60:	cac50513          	addi	a0,a0,-852 # 80009908 <digits+0x78>
    80008c64:	fffff097          	auipc	ra,0xfffff
    80008c68:	a68080e7          	jalr	-1432(ra) # 800076cc <panic>
	...
