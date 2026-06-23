
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	ca013103          	ld	sp,-864(sp) # 8000bca0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	475060ef          	jal	ra,80006c90 <start>

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
    800017c8:	4cc7b783          	ld	a5,1228(a5) # 8000bc90 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    8000181c:	4787b783          	ld	a5,1144(a5) # 8000bc90 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001d18:	074080e7          	jalr	116(ra) # 80008d88 <__getc>
    80001d1c:	04a4b023          	sd	a0,64(s1)
                break;
    80001d20:	e09ff06f          	j	80001b28 <handleSupervisorTrap+0xac>
                __putc((char)arg1);
    80001d24:	0ff97513          	andi	a0,s2,255
    80001d28:	00007097          	auipc	ra,0x7
    80001d2c:	024080e7          	jalr	36(ra) # 80008d4c <__putc>
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
    80001d54:	070080e7          	jalr	112(ra) # 80008dc0 <console_handler>
        return;
    80001d58:	dddff06f          	j	80001b34 <handleSupervisorTrap+0xb8>
        printString("ERROR, scause: ");
    80001d5c:	00007517          	auipc	a0,0x7
    80001d60:	2c450513          	addi	a0,a0,708 # 80009020 <CONSOLE_STATUS+0x10>
    80001d64:	00004097          	auipc	ra,0x4
    80001d68:	e30080e7          	jalr	-464(ra) # 80005b94 <_Z11printStringPKc>
        printInt(scause);
    80001d6c:	00000613          	li	a2,0
    80001d70:	00a00593          	li	a1,10
    80001d74:	0009051b          	sext.w	a0,s2
    80001d78:	00004097          	auipc	ra,0x4
    80001d7c:	fcc080e7          	jalr	-52(ra) # 80005d44 <_Z8printIntiii>
        printString(",sepc ");
    80001d80:	00007517          	auipc	a0,0x7
    80001d84:	2b050513          	addi	a0,a0,688 # 80009030 <CONSOLE_STATUS+0x20>
    80001d88:	00004097          	auipc	ra,0x4
    80001d8c:	e0c080e7          	jalr	-500(ra) # 80005b94 <_Z11printStringPKc>
        printInt(frame->sepc);
    80001d90:	00000613          	li	a2,0
    80001d94:	00a00593          	li	a1,10
    80001d98:	0f04a503          	lw	a0,240(s1)
    80001d9c:	00004097          	auipc	ra,0x4
    80001da0:	fa8080e7          	jalr	-88(ra) # 80005d44 <_Z8printIntiii>
        printString("\n");
    80001da4:	00007517          	auipc	a0,0x7
    80001da8:	51450513          	addi	a0,a0,1300 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80001dac:	00004097          	auipc	ra,0x4
    80001db0:	de8080e7          	jalr	-536(ra) # 80005b94 <_Z11printStringPKc>
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
    80001dfc:	e887b783          	ld	a5,-376(a5) # 8000bc80 <_GLOBAL_OFFSET_TABLE_+0x8>

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
    80001e1c:	ee87b783          	ld	a5,-280(a5) # 8000bd00 <_ZN7_thread7runningE>
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
    80002110:	bf44b483          	ld	s1,-1036(s1) # 8000bd00 <_ZN7_thread7runningE>
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
    8000213c:	bca7b423          	sd	a0,-1080(a5) # 8000bd00 <_ZN7_thread7runningE>
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
    80002198:	b697b623          	sd	s1,-1172(a5) # 8000bd00 <_ZN7_thread7runningE>
        return;
    8000219c:	fc5ff06f          	j	80002160 <_ZN7_thread8dispatchEv+0x68>

00000000800021a0 <_ZN7_thread4exitEv>:
    if (running == nullptr) {
    800021a0:	0000a797          	auipc	a5,0xa
    800021a4:	b607b783          	ld	a5,-1184(a5) # 8000bd00 <_ZN7_thread7runningE>
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
    800022cc:	00004097          	auipc	ra,0x4
    800022d0:	8c8080e7          	jalr	-1848(ra) # 80005b94 <_Z11printStringPKc>
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
    80002308:	08c70713          	addi	a4,a4,140 # 80009390 <CONSOLE_STATUS+0x380>
    8000230c:	00e484b3          	add	s1,s1,a4
    80002310:	0004a783          	lw	a5,0(s1)
    80002314:	00e787b3          	add	a5,a5,a4
    80002318:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    8000231c:	00007517          	auipc	a0,0x7
    80002320:	e4c50513          	addi	a0,a0,-436 # 80009168 <CONSOLE_STATUS+0x158>
    80002324:	00004097          	auipc	ra,0x4
    80002328:	870080e7          	jalr	-1936(ra) # 80005b94 <_Z11printStringPKc>
            printString("TEST 8 histogram poslednje cifre matrice\n");
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
    80002348:	ec8080e7          	jalr	-312(ra) # 8000520c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000234c:	00007517          	auipc	a0,0x7
    80002350:	e4c50513          	addi	a0,a0,-436 # 80009198 <CONSOLE_STATUS+0x188>
    80002354:	00004097          	auipc	ra,0x4
    80002358:	840080e7          	jalr	-1984(ra) # 80005b94 <_Z11printStringPKc>
            break;
    8000235c:	fd1ff06f          	j	8000232c <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80002360:	00002097          	auipc	ra,0x2
    80002364:	d8c080e7          	jalr	-628(ra) # 800040ec <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80002368:	00007517          	auipc	a0,0x7
    8000236c:	e7050513          	addi	a0,a0,-400 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80002370:	00004097          	auipc	ra,0x4
    80002374:	824080e7          	jalr	-2012(ra) # 80005b94 <_Z11printStringPKc>
            break;
    80002378:	fb5ff06f          	j	8000232c <_Z8userMainv+0x80>
            producerConsumer_C_API();
    8000237c:	00001097          	auipc	ra,0x1
    80002380:	5c4080e7          	jalr	1476(ra) # 80003940 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80002384:	00007517          	auipc	a0,0x7
    80002388:	e9450513          	addi	a0,a0,-364 # 80009218 <CONSOLE_STATUS+0x208>
    8000238c:	00004097          	auipc	ra,0x4
    80002390:	808080e7          	jalr	-2040(ra) # 80005b94 <_Z11printStringPKc>
            break;
    80002394:	f99ff06f          	j	8000232c <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80002398:	00003097          	auipc	ra,0x3
    8000239c:	1b8080e7          	jalr	440(ra) # 80005550 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800023a0:	00007517          	auipc	a0,0x7
    800023a4:	ec850513          	addi	a0,a0,-312 # 80009268 <CONSOLE_STATUS+0x258>
    800023a8:	00003097          	auipc	ra,0x3
    800023ac:	7ec080e7          	jalr	2028(ra) # 80005b94 <_Z11printStringPKc>
            break;
    800023b0:	f7dff06f          	j	8000232c <_Z8userMainv+0x80>
            System_Mode_test();
    800023b4:	00004097          	auipc	ra,0x4
    800023b8:	4c0080e7          	jalr	1216(ra) # 80006874 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800023bc:	00007517          	auipc	a0,0x7
    800023c0:	f0450513          	addi	a0,a0,-252 # 800092c0 <CONSOLE_STATUS+0x2b0>
    800023c4:	00003097          	auipc	ra,0x3
    800023c8:	7d0080e7          	jalr	2000(ra) # 80005b94 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800023cc:	00007517          	auipc	a0,0x7
    800023d0:	f1450513          	addi	a0,a0,-236 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800023d4:	00003097          	auipc	ra,0x3
    800023d8:	7c0080e7          	jalr	1984(ra) # 80005b94 <_Z11printStringPKc>
            break;
    800023dc:	f51ff06f          	j	8000232c <_Z8userMainv+0x80>
            mod();
    800023e0:	00001097          	auipc	ra,0x1
    800023e4:	ae4080e7          	jalr	-1308(ra) # 80002ec4 <_Z3modv>
            printString("TEST 8 histogram poslednje cifre matrice\n");
    800023e8:	00007517          	auipc	a0,0x7
    800023ec:	f5050513          	addi	a0,a0,-176 # 80009338 <CONSOLE_STATUS+0x328>
    800023f0:	00003097          	auipc	ra,0x3
    800023f4:	7a4080e7          	jalr	1956(ra) # 80005b94 <_Z11printStringPKc>
            break;
    800023f8:	f35ff06f          	j	8000232c <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800023fc:	00007517          	auipc	a0,0x7
    80002400:	f6c50513          	addi	a0,a0,-148 # 80009368 <CONSOLE_STATUS+0x358>
    80002404:	00003097          	auipc	ra,0x3
    80002408:	790080e7          	jalr	1936(ra) # 80005b94 <_Z11printStringPKc>
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
    80002440:	8cc7b783          	ld	a5,-1844(a5) # 8000bd08 <_ZN9Scheduler4headE>
    80002444:	02078263          	beqz	a5,80002468 <_ZN9Scheduler3putEP7_thread+0x58>
        head = thread;
        tail = thread;
    } else {
        tail->next = thread;
    80002448:	0000a797          	auipc	a5,0xa
    8000244c:	8c078793          	addi	a5,a5,-1856 # 8000bd08 <_ZN9Scheduler4headE>
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
    8000246c:	8a078793          	addi	a5,a5,-1888 # 8000bd08 <_ZN9Scheduler4headE>
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
    8000248c:	88053503          	ld	a0,-1920(a0) # 8000bd08 <_ZN9Scheduler4headE>
    80002490:	00050c63          	beqz	a0,800024a8 <_ZN9Scheduler3getEv+0x2c>
        return nullptr;
    }

    _thread* thread = head;

    head = head->next;
    80002494:	09853783          	ld	a5,152(a0)
    80002498:	0000a717          	auipc	a4,0xa
    8000249c:	86f73823          	sd	a5,-1936(a4) # 8000bd08 <_ZN9Scheduler4headE>

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
    800024b4:	0000a797          	auipc	a5,0xa
    800024b8:	8407be23          	sd	zero,-1956(a5) # 8000bd10 <_ZN9Scheduler4tailE>
    800024bc:	fe9ff06f          	j	800024a4 <_ZN9Scheduler3getEv+0x28>

00000000800024c0 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    800024c0:	ff010113          	addi	sp,sp,-16
    800024c4:	00813423          	sd	s0,8(sp)
    800024c8:	01010413          	addi	s0,sp,16
    return head == nullptr;
    800024cc:	0000a517          	auipc	a0,0xa
    800024d0:	83c53503          	ld	a0,-1988(a0) # 8000bd08 <_ZN9Scheduler4headE>
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
    800025a4:	76f70c23          	sb	a5,1912(a4) # 8000bd18 <_ZL16userMainFinished>
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
    800025d8:	6c47b783          	ld	a5,1732(a5) # 8000bc98 <_GLOBAL_OFFSET_TABLE_+0x20>
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
    80002618:	67c7b783          	ld	a5,1660(a5) # 8000bc90 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80002668:	6b47c783          	lbu	a5,1716(a5) # 8000bd18 <_ZL16userMainFinished>
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
    80002710:	37c78793          	addi	a5,a5,892 # 8000ba88 <_ZTV9Semaphore+0x10>
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
    8000279c:	2c878793          	addi	a5,a5,712 # 8000ba60 <_ZTV6Thread+0x10>
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
    800027cc:	29878793          	addi	a5,a5,664 # 8000ba60 <_ZTV6Thread+0x10>
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
    800028a4:	1e878793          	addi	a5,a5,488 # 8000ba88 <_ZTV9Semaphore+0x10>
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
    80002950:	0e478793          	addi	a5,a5,228 # 8000ba30 <_ZTV14PeriodicThread+0x10>
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
    80002a1c:	01878793          	addi	a5,a5,24 # 8000ba30 <_ZTV14PeriodicThread+0x10>
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
    80002a44:	ff078793          	addi	a5,a5,-16 # 8000ba30 <_ZTV14PeriodicThread+0x10>
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
    80002ab0:	27450513          	addi	a0,a0,628 # 8000bd20 <_ZN15MemoryAllocator8instanceE>
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
    80002adc:	24850513          	addi	a0,a0,584 # 8000bd20 <_ZN15MemoryAllocator8instanceE>
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
    80002b04:	1887b783          	ld	a5,392(a5) # 8000bc88 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002b08:	0007b703          	ld	a4,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002b0c:	00009797          	auipc	a5,0x9
    80002b10:	19c7b783          	ld	a5,412(a5) # 8000bca8 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80002cdc:	fb07b783          	ld	a5,-80(a5) # 8000bc88 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002ce0:	0007b683          	ld	a3,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002ce4:	00009797          	auipc	a5,0x9
    80002ce8:	fc47b783          	ld	a5,-60(a5) # 8000bca8 <_GLOBAL_OFFSET_TABLE_+0x30>
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

0000000080002e48 <_Z11custom_randv>:

Semaphore* doneSem;

static unsigned long int next = 1;

int custom_rand(void) {
    80002e48:	ff010113          	addi	sp,sp,-16
    80002e4c:	00813423          	sd	s0,8(sp)
    80002e50:	01010413          	addi	s0,sp,16
    next = next * 1103515245 + 12345;
    80002e54:	00009717          	auipc	a4,0x9
    80002e58:	c4c70713          	addi	a4,a4,-948 # 8000baa0 <_ZL4next>
    80002e5c:	00073503          	ld	a0,0(a4)
    80002e60:	41c657b7          	lui	a5,0x41c65
    80002e64:	e6d78793          	addi	a5,a5,-403 # 41c64e6d <_entry-0x3e39b193>
    80002e68:	02f50533          	mul	a0,a0,a5
    80002e6c:	000037b7          	lui	a5,0x3
    80002e70:	03978793          	addi	a5,a5,57 # 3039 <_entry-0x7fffcfc7>
    80002e74:	00f50533          	add	a0,a0,a5
    80002e78:	00a73023          	sd	a0,0(a4)
    return (unsigned int)(next / 65536) % 32768;
    80002e7c:	01055513          	srli	a0,a0,0x10
    80002e80:	0005051b          	sext.w	a0,a0
}
    80002e84:	000087b7          	lui	a5,0x8
    80002e88:	fff78793          	addi	a5,a5,-1 # 7fff <_entry-0x7fff8001>
    80002e8c:	00f57533          	and	a0,a0,a5
    80002e90:	00813403          	ld	s0,8(sp)
    80002e94:	01010113          	addi	sp,sp,16
    80002e98:	00008067          	ret

0000000080002e9c <_Z12custom_srandj>:

void custom_srand(unsigned int seed) {
    80002e9c:	ff010113          	addi	sp,sp,-16
    80002ea0:	00813423          	sd	s0,8(sp)
    80002ea4:	01010413          	addi	s0,sp,16
    next = seed;
    80002ea8:	02051513          	slli	a0,a0,0x20
    80002eac:	02055513          	srli	a0,a0,0x20
    80002eb0:	00009797          	auipc	a5,0x9
    80002eb4:	bea7b823          	sd	a0,-1040(a5) # 8000baa0 <_ZL4next>
}
    80002eb8:	00813403          	ld	s0,8(sp)
    80002ebc:	01010113          	addi	sp,sp,16
    80002ec0:	00008067          	ret

0000000080002ec4 <_Z3modv>:

        doneSem->signal();
    }
};

void mod() {
    80002ec4:	f1010113          	addi	sp,sp,-240
    80002ec8:	0e113423          	sd	ra,232(sp)
    80002ecc:	0e813023          	sd	s0,224(sp)
    80002ed0:	0c913c23          	sd	s1,216(sp)
    80002ed4:	0d213823          	sd	s2,208(sp)
    80002ed8:	0d313423          	sd	s3,200(sp)
    80002edc:	0d413023          	sd	s4,192(sp)
    80002ee0:	0f010413          	addi	s0,sp,240
    char input[30];

    printString("MOD TEST: histogram poslednje cifre po redovima\n");
    80002ee4:	00006517          	auipc	a0,0x6
    80002ee8:	53450513          	addi	a0,a0,1332 # 80009418 <CONSOLE_STATUS+0x408>
    80002eec:	00003097          	auipc	ra,0x3
    80002ef0:	ca8080e7          	jalr	-856(ra) # 80005b94 <_Z11printStringPKc>

    printString("Unesite M: ");
    80002ef4:	00006517          	auipc	a0,0x6
    80002ef8:	55c50513          	addi	a0,a0,1372 # 80009450 <CONSOLE_STATUS+0x440>
    80002efc:	00003097          	auipc	ra,0x3
    80002f00:	c98080e7          	jalr	-872(ra) # 80005b94 <_Z11printStringPKc>
    getString(input, 30);
    80002f04:	01e00593          	li	a1,30
    80002f08:	fb040493          	addi	s1,s0,-80
    80002f0c:	00048513          	mv	a0,s1
    80002f10:	00003097          	auipc	ra,0x3
    80002f14:	d0c080e7          	jalr	-756(ra) # 80005c1c <_Z9getStringPci>
    M = stringToInt(input);
    80002f18:	00048513          	mv	a0,s1
    80002f1c:	00003097          	auipc	ra,0x3
    80002f20:	dd8080e7          	jalr	-552(ra) # 80005cf4 <_Z11stringToIntPKc>
    80002f24:	00009917          	auipc	s2,0x9
    80002f28:	e0c90913          	addi	s2,s2,-500 # 8000bd30 <rowHist>
    80002f2c:	32a92423          	sw	a0,808(s2)

    printString("\nUnesite N: ");
    80002f30:	00006517          	auipc	a0,0x6
    80002f34:	53050513          	addi	a0,a0,1328 # 80009460 <CONSOLE_STATUS+0x450>
    80002f38:	00003097          	auipc	ra,0x3
    80002f3c:	c5c080e7          	jalr	-932(ra) # 80005b94 <_Z11printStringPKc>
    getString(input, 30);
    80002f40:	01e00593          	li	a1,30
    80002f44:	00048513          	mv	a0,s1
    80002f48:	00003097          	auipc	ra,0x3
    80002f4c:	cd4080e7          	jalr	-812(ra) # 80005c1c <_Z9getStringPci>
    N = stringToInt(input);
    80002f50:	00048513          	mv	a0,s1
    80002f54:	00003097          	auipc	ra,0x3
    80002f58:	da0080e7          	jalr	-608(ra) # 80005cf4 <_Z11stringToIntPKc>
    80002f5c:	32a92623          	sw	a0,812(s2)
    printString("\n");
    80002f60:	00006517          	auipc	a0,0x6
    80002f64:	35850513          	addi	a0,a0,856 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80002f68:	00003097          	auipc	ra,0x3
    80002f6c:	c2c080e7          	jalr	-980(ra) # 80005b94 <_Z11printStringPKc>

    if (M <= 0 || N <= 0 || M > MAX_ROWS) {
    80002f70:	32892783          	lw	a5,808(s2)
    80002f74:	00f05c63          	blez	a5,80002f8c <_Z3modv+0xc8>
    80002f78:	00009717          	auipc	a4,0x9
    80002f7c:	0e472703          	lw	a4,228(a4) # 8000c05c <N>
    80002f80:	00e05663          	blez	a4,80002f8c <_Z3modv+0xc8>
    80002f84:	01400713          	li	a4,20
    80002f88:	02f75663          	bge	a4,a5,80002fb4 <_Z3modv+0xf0>
        printString("Lose dimenzije, koristi se M = 5, N = 25\n");
    80002f8c:	00006517          	auipc	a0,0x6
    80002f90:	4e450513          	addi	a0,a0,1252 # 80009470 <CONSOLE_STATUS+0x460>
    80002f94:	00003097          	auipc	ra,0x3
    80002f98:	c00080e7          	jalr	-1024(ra) # 80005b94 <_Z11printStringPKc>
        M = 5;
    80002f9c:	00009797          	auipc	a5,0x9
    80002fa0:	d9478793          	addi	a5,a5,-620 # 8000bd30 <rowHist>
    80002fa4:	00500713          	li	a4,5
    80002fa8:	32e7a423          	sw	a4,808(a5)
        N = 25;
    80002fac:	01900713          	li	a4,25
    80002fb0:	32e7a623          	sw	a4,812(a5)
    }

    mat = (int**) mem_alloc(sizeof(int*) * M);
    80002fb4:	00009497          	auipc	s1,0x9
    80002fb8:	d7c48493          	addi	s1,s1,-644 # 8000bd30 <rowHist>
    80002fbc:	3284a503          	lw	a0,808(s1)
    80002fc0:	00351513          	slli	a0,a0,0x3
    80002fc4:	ffffe097          	auipc	ra,0xffffe
    80002fc8:	234080e7          	jalr	564(ra) # 800011f8 <_Z9mem_allocm>
    80002fcc:	32a4b823          	sd	a0,816(s1)

    for (int i = 0; i < M; i++) {
    80002fd0:	00000493          	li	s1,0
    80002fd4:	00009797          	auipc	a5,0x9
    80002fd8:	0847a783          	lw	a5,132(a5) # 8000c058 <M>
    80002fdc:	02f4da63          	bge	s1,a5,80003010 <_Z3modv+0x14c>
        mat[i] = (int*) mem_alloc(sizeof(int) * N);
    80002fe0:	00009797          	auipc	a5,0x9
    80002fe4:	d5078793          	addi	a5,a5,-688 # 8000bd30 <rowHist>
    80002fe8:	32c7a503          	lw	a0,812(a5)
    80002fec:	00349713          	slli	a4,s1,0x3
    80002ff0:	3307b903          	ld	s2,816(a5)
    80002ff4:	00e90933          	add	s2,s2,a4
    80002ff8:	00251513          	slli	a0,a0,0x2
    80002ffc:	ffffe097          	auipc	ra,0xffffe
    80003000:	1fc080e7          	jalr	508(ra) # 800011f8 <_Z9mem_allocm>
    80003004:	00a93023          	sd	a0,0(s2)
    for (int i = 0; i < M; i++) {
    80003008:	0014849b          	addiw	s1,s1,1
    8000300c:	fc9ff06f          	j	80002fd4 <_Z3modv+0x110>
    }

    custom_srand(12345);
    80003010:	00003537          	lui	a0,0x3
    80003014:	03950513          	addi	a0,a0,57 # 3039 <_entry-0x7fffcfc7>
    80003018:	00000097          	auipc	ra,0x0
    8000301c:	e84080e7          	jalr	-380(ra) # 80002e9c <_Z12custom_srandj>

    for (int i = 0; i < M; i++) {
    80003020:	00000993          	li	s3,0
    80003024:	0080006f          	j	8000302c <_Z3modv+0x168>
    80003028:	0019899b          	addiw	s3,s3,1
    8000302c:	00009597          	auipc	a1,0x9
    80003030:	02c5a583          	lw	a1,44(a1) # 8000c058 <M>
    80003034:	04b9d263          	bge	s3,a1,80003078 <_Z3modv+0x1b4>
        for (int j = 0; j < N; j++) {
    80003038:	00000493          	li	s1,0
    8000303c:	00009797          	auipc	a5,0x9
    80003040:	0207a783          	lw	a5,32(a5) # 8000c05c <N>
    80003044:	fef4d2e3          	bge	s1,a5,80003028 <_Z3modv+0x164>
            mat[i][j] = custom_rand();
    80003048:	00399793          	slli	a5,s3,0x3
    8000304c:	00009717          	auipc	a4,0x9
    80003050:	01473703          	ld	a4,20(a4) # 8000c060 <mat>
    80003054:	00f707b3          	add	a5,a4,a5
    80003058:	0007b903          	ld	s2,0(a5)
    8000305c:	00249793          	slli	a5,s1,0x2
    80003060:	00f90933          	add	s2,s2,a5
    80003064:	00000097          	auipc	ra,0x0
    80003068:	de4080e7          	jalr	-540(ra) # 80002e48 <_Z11custom_randv>
    8000306c:	00a92023          	sw	a0,0(s2)
        for (int j = 0; j < N; j++) {
    80003070:	0014849b          	addiw	s1,s1,1
    80003074:	fc9ff06f          	j	8000303c <_Z3modv+0x178>
        }
    }

    for (int i = 0; i < M; i++) {
    80003078:	00000613          	li	a2,0
    8000307c:	0080006f          	j	80003084 <_Z3modv+0x1c0>
    80003080:	0016061b          	addiw	a2,a2,1
    80003084:	02b65e63          	bge	a2,a1,800030c0 <_Z3modv+0x1fc>
        for (int d = 0; d < DIGITS; d++) {
    80003088:	00000713          	li	a4,0
    8000308c:	00900793          	li	a5,9
    80003090:	fee7c8e3          	blt	a5,a4,80003080 <_Z3modv+0x1bc>
            rowHist[i][d] = 0;
    80003094:	00261793          	slli	a5,a2,0x2
    80003098:	00c787b3          	add	a5,a5,a2
    8000309c:	00179793          	slli	a5,a5,0x1
    800030a0:	00e787b3          	add	a5,a5,a4
    800030a4:	00279793          	slli	a5,a5,0x2
    800030a8:	00009697          	auipc	a3,0x9
    800030ac:	c8868693          	addi	a3,a3,-888 # 8000bd30 <rowHist>
    800030b0:	00f687b3          	add	a5,a3,a5
    800030b4:	0007a023          	sw	zero,0(a5)
        for (int d = 0; d < DIGITS; d++) {
    800030b8:	0017071b          	addiw	a4,a4,1
    800030bc:	fd1ff06f          	j	8000308c <_Z3modv+0x1c8>
        }
    }

    for (int d = 0; d < DIGITS; d++) {
    800030c0:	00000793          	li	a5,0
    800030c4:	00900713          	li	a4,9
    800030c8:	02f74063          	blt	a4,a5,800030e8 <_Z3modv+0x224>
        totalHist[d] = 0;
    800030cc:	00279693          	slli	a3,a5,0x2
    800030d0:	00009717          	auipc	a4,0x9
    800030d4:	c6070713          	addi	a4,a4,-928 # 8000bd30 <rowHist>
    800030d8:	00d70733          	add	a4,a4,a3
    800030dc:	32072c23          	sw	zero,824(a4)
    for (int d = 0; d < DIGITS; d++) {
    800030e0:	0017879b          	addiw	a5,a5,1
    800030e4:	fe1ff06f          	j	800030c4 <_Z3modv+0x200>
    }

    printString("\nMatrica:\n");
    800030e8:	00006517          	auipc	a0,0x6
    800030ec:	3b850513          	addi	a0,a0,952 # 800094a0 <CONSOLE_STATUS+0x490>
    800030f0:	00003097          	auipc	ra,0x3
    800030f4:	aa4080e7          	jalr	-1372(ra) # 80005b94 <_Z11printStringPKc>

    for (int i = 0; i < M; i++) {
    800030f8:	00000913          	li	s2,0
    800030fc:	0180006f          	j	80003114 <_Z3modv+0x250>
        for (int j = 0; j < N; j++) {
            printInt(mat[i][j]);
            printString(" ");
        }
        printString("\n");
    80003100:	00006517          	auipc	a0,0x6
    80003104:	1b850513          	addi	a0,a0,440 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003108:	00003097          	auipc	ra,0x3
    8000310c:	a8c080e7          	jalr	-1396(ra) # 80005b94 <_Z11printStringPKc>
    for (int i = 0; i < M; i++) {
    80003110:	0019091b          	addiw	s2,s2,1
    80003114:	00009797          	auipc	a5,0x9
    80003118:	f447a783          	lw	a5,-188(a5) # 8000c058 <M>
    8000311c:	04f95e63          	bge	s2,a5,80003178 <_Z3modv+0x2b4>
        for (int j = 0; j < N; j++) {
    80003120:	00000493          	li	s1,0
    80003124:	00009797          	auipc	a5,0x9
    80003128:	f387a783          	lw	a5,-200(a5) # 8000c05c <N>
    8000312c:	fcf4dae3          	bge	s1,a5,80003100 <_Z3modv+0x23c>
            printInt(mat[i][j]);
    80003130:	00391793          	slli	a5,s2,0x3
    80003134:	00009717          	auipc	a4,0x9
    80003138:	f2c73703          	ld	a4,-212(a4) # 8000c060 <mat>
    8000313c:	00f707b3          	add	a5,a4,a5
    80003140:	0007b783          	ld	a5,0(a5)
    80003144:	00249713          	slli	a4,s1,0x2
    80003148:	00e787b3          	add	a5,a5,a4
    8000314c:	00000613          	li	a2,0
    80003150:	00a00593          	li	a1,10
    80003154:	0007a503          	lw	a0,0(a5)
    80003158:	00003097          	auipc	ra,0x3
    8000315c:	bec080e7          	jalr	-1044(ra) # 80005d44 <_Z8printIntiii>
            printString(" ");
    80003160:	00006517          	auipc	a0,0x6
    80003164:	35050513          	addi	a0,a0,848 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80003168:	00003097          	auipc	ra,0x3
    8000316c:	a2c080e7          	jalr	-1492(ra) # 80005b94 <_Z11printStringPKc>
        for (int j = 0; j < N; j++) {
    80003170:	0014849b          	addiw	s1,s1,1
    80003174:	fb1ff06f          	j	80003124 <_Z3modv+0x260>
    }

    doneSem = new Semaphore(0);
    80003178:	01000513          	li	a0,16
    8000317c:	fffff097          	auipc	ra,0xfffff
    80003180:	368080e7          	jalr	872(ra) # 800024e4 <_Znwm>
    80003184:	00050493          	mv	s1,a0
    80003188:	00000593          	li	a1,0
    8000318c:	fffff097          	auipc	ra,0xfffff
    80003190:	704080e7          	jalr	1796(ra) # 80002890 <_ZN9SemaphoreC1Ej>
    80003194:	00009797          	auipc	a5,0x9
    80003198:	ea97be23          	sd	s1,-324(a5) # 8000c050 <doneSem>

    Worker* workers[MAX_ROWS];

    for (int i = 0; i < M; i++) {
    8000319c:	00000913          	li	s2,0
    800031a0:	03c0006f          	j	800031dc <_Z3modv+0x318>
            : Thread(), rowIndex(rowIndex), row(row), cols(cols) {}
    800031a4:	00009797          	auipc	a5,0x9
    800031a8:	91478793          	addi	a5,a5,-1772 # 8000bab8 <_ZTV6Worker+0x10>
    800031ac:	00f4b023          	sd	a5,0(s1)
    800031b0:	0324a023          	sw	s2,32(s1)
    800031b4:	0344b423          	sd	s4,40(s1)
    800031b8:	0334a823          	sw	s3,48(s1)
        workers[i] = new Worker(i, mat[i], N);
    800031bc:	00391793          	slli	a5,s2,0x3
    800031c0:	fd040713          	addi	a4,s0,-48
    800031c4:	00f707b3          	add	a5,a4,a5
    800031c8:	f497b023          	sd	s1,-192(a5)
        workers[i]->start();
    800031cc:	00048513          	mv	a0,s1
    800031d0:	fffff097          	auipc	ra,0xfffff
    800031d4:	61c080e7          	jalr	1564(ra) # 800027ec <_ZN6Thread5startEv>
    for (int i = 0; i < M; i++) {
    800031d8:	0019091b          	addiw	s2,s2,1
    800031dc:	00009797          	auipc	a5,0x9
    800031e0:	e7c7a783          	lw	a5,-388(a5) # 8000c058 <M>
    800031e4:	02f95e63          	bge	s2,a5,80003220 <_Z3modv+0x35c>
        workers[i] = new Worker(i, mat[i], N);
    800031e8:	03800513          	li	a0,56
    800031ec:	fffff097          	auipc	ra,0xfffff
    800031f0:	2f8080e7          	jalr	760(ra) # 800024e4 <_Znwm>
    800031f4:	00050493          	mv	s1,a0
    800031f8:	00009697          	auipc	a3,0x9
    800031fc:	b3868693          	addi	a3,a3,-1224 # 8000bd30 <rowHist>
    80003200:	00391793          	slli	a5,s2,0x3
    80003204:	3306b703          	ld	a4,816(a3)
    80003208:	00f707b3          	add	a5,a4,a5
    8000320c:	0007ba03          	ld	s4,0(a5)
    80003210:	32c6a983          	lw	s3,812(a3)
            : Thread(), rowIndex(rowIndex), row(row), cols(cols) {}
    80003214:	fffff097          	auipc	ra,0xfffff
    80003218:	5a8080e7          	jalr	1448(ra) # 800027bc <_ZN6ThreadC1Ev>
    8000321c:	f89ff06f          	j	800031a4 <_Z3modv+0x2e0>
    }

    for (int i = 0; i < M; i++) {
    80003220:	00000493          	li	s1,0
    80003224:	00009797          	auipc	a5,0x9
    80003228:	e347a783          	lw	a5,-460(a5) # 8000c058 <M>
    8000322c:	00f4de63          	bge	s1,a5,80003248 <_Z3modv+0x384>
        doneSem->wait();
    80003230:	00009517          	auipc	a0,0x9
    80003234:	e2053503          	ld	a0,-480(a0) # 8000c050 <doneSem>
    80003238:	fffff097          	auipc	ra,0xfffff
    8000323c:	694080e7          	jalr	1684(ra) # 800028cc <_ZN9Semaphore4waitEv>
    for (int i = 0; i < M; i++) {
    80003240:	0014849b          	addiw	s1,s1,1
    80003244:	fe1ff06f          	j	80003224 <_Z3modv+0x360>
    }

    printString("\nHistogram po redovima:\n");
    80003248:	00006517          	auipc	a0,0x6
    8000324c:	27050513          	addi	a0,a0,624 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80003250:	00003097          	auipc	ra,0x3
    80003254:	944080e7          	jalr	-1724(ra) # 80005b94 <_Z11printStringPKc>

    for (int i = 0; i < M; i++) {
    80003258:	00000913          	li	s2,0
    8000325c:	0180006f          	j	80003274 <_Z3modv+0x3b0>
            printString("]=");
            printInt(rowHist[i][d]);
            printString(" ");
        }

        printString("\n");
    80003260:	00006517          	auipc	a0,0x6
    80003264:	05850513          	addi	a0,a0,88 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003268:	00003097          	auipc	ra,0x3
    8000326c:	92c080e7          	jalr	-1748(ra) # 80005b94 <_Z11printStringPKc>
    for (int i = 0; i < M; i++) {
    80003270:	0019091b          	addiw	s2,s2,1
    80003274:	00009517          	auipc	a0,0x9
    80003278:	de452503          	lw	a0,-540(a0) # 8000c058 <M>
    8000327c:	0ca95263          	bge	s2,a0,80003340 <_Z3modv+0x47c>
        printString("Red ");
    80003280:	00006517          	auipc	a0,0x6
    80003284:	25850513          	addi	a0,a0,600 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80003288:	00003097          	auipc	ra,0x3
    8000328c:	90c080e7          	jalr	-1780(ra) # 80005b94 <_Z11printStringPKc>
        printInt(i);
    80003290:	00000613          	li	a2,0
    80003294:	00a00593          	li	a1,10
    80003298:	00090513          	mv	a0,s2
    8000329c:	00003097          	auipc	ra,0x3
    800032a0:	aa8080e7          	jalr	-1368(ra) # 80005d44 <_Z8printIntiii>
        printString(": ");
    800032a4:	00006517          	auipc	a0,0x6
    800032a8:	23c50513          	addi	a0,a0,572 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800032ac:	00003097          	auipc	ra,0x3
    800032b0:	8e8080e7          	jalr	-1816(ra) # 80005b94 <_Z11printStringPKc>
        for (int d = 0; d < DIGITS; d++) {
    800032b4:	00000493          	li	s1,0
    800032b8:	00900793          	li	a5,9
    800032bc:	fa97c2e3          	blt	a5,s1,80003260 <_Z3modv+0x39c>
            printString("[");
    800032c0:	00006517          	auipc	a0,0x6
    800032c4:	22850513          	addi	a0,a0,552 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800032c8:	00003097          	auipc	ra,0x3
    800032cc:	8cc080e7          	jalr	-1844(ra) # 80005b94 <_Z11printStringPKc>
            printInt(d);
    800032d0:	00000613          	li	a2,0
    800032d4:	00a00593          	li	a1,10
    800032d8:	00048513          	mv	a0,s1
    800032dc:	00003097          	auipc	ra,0x3
    800032e0:	a68080e7          	jalr	-1432(ra) # 80005d44 <_Z8printIntiii>
            printString("]=");
    800032e4:	00006517          	auipc	a0,0x6
    800032e8:	20c50513          	addi	a0,a0,524 # 800094f0 <CONSOLE_STATUS+0x4e0>
    800032ec:	00003097          	auipc	ra,0x3
    800032f0:	8a8080e7          	jalr	-1880(ra) # 80005b94 <_Z11printStringPKc>
            printInt(rowHist[i][d]);
    800032f4:	00291793          	slli	a5,s2,0x2
    800032f8:	012787b3          	add	a5,a5,s2
    800032fc:	00179793          	slli	a5,a5,0x1
    80003300:	009787b3          	add	a5,a5,s1
    80003304:	00279793          	slli	a5,a5,0x2
    80003308:	00009717          	auipc	a4,0x9
    8000330c:	a2870713          	addi	a4,a4,-1496 # 8000bd30 <rowHist>
    80003310:	00f707b3          	add	a5,a4,a5
    80003314:	00000613          	li	a2,0
    80003318:	00a00593          	li	a1,10
    8000331c:	0007a503          	lw	a0,0(a5)
    80003320:	00003097          	auipc	ra,0x3
    80003324:	a24080e7          	jalr	-1500(ra) # 80005d44 <_Z8printIntiii>
            printString(" ");
    80003328:	00006517          	auipc	a0,0x6
    8000332c:	18850513          	addi	a0,a0,392 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80003330:	00003097          	auipc	ra,0x3
    80003334:	864080e7          	jalr	-1948(ra) # 80005b94 <_Z11printStringPKc>
        for (int d = 0; d < DIGITS; d++) {
    80003338:	0014849b          	addiw	s1,s1,1
    8000333c:	f7dff06f          	j	800032b8 <_Z3modv+0x3f4>
    }

    for (int i = 0; i < M; i++) {
    80003340:	00000613          	li	a2,0
    80003344:	0080006f          	j	8000334c <_Z3modv+0x488>
    80003348:	0016061b          	addiw	a2,a2,1
    8000334c:	04a65863          	bge	a2,a0,8000339c <_Z3modv+0x4d8>
        for (int d = 0; d < DIGITS; d++) {
    80003350:	00000693          	li	a3,0
    80003354:	00900793          	li	a5,9
    80003358:	fed7c8e3          	blt	a5,a3,80003348 <_Z3modv+0x484>
            totalHist[d] += rowHist[i][d];
    8000335c:	00009717          	auipc	a4,0x9
    80003360:	9d470713          	addi	a4,a4,-1580 # 8000bd30 <rowHist>
    80003364:	00261793          	slli	a5,a2,0x2
    80003368:	00c787b3          	add	a5,a5,a2
    8000336c:	00179793          	slli	a5,a5,0x1
    80003370:	00d787b3          	add	a5,a5,a3
    80003374:	00279793          	slli	a5,a5,0x2
    80003378:	00f707b3          	add	a5,a4,a5
    8000337c:	0007a583          	lw	a1,0(a5)
    80003380:	00269793          	slli	a5,a3,0x2
    80003384:	00f707b3          	add	a5,a4,a5
    80003388:	3387a703          	lw	a4,824(a5)
    8000338c:	00b7073b          	addw	a4,a4,a1
    80003390:	32e7ac23          	sw	a4,824(a5)
        for (int d = 0; d < DIGITS; d++) {
    80003394:	0016869b          	addiw	a3,a3,1
    80003398:	fbdff06f          	j	80003354 <_Z3modv+0x490>
        }
    }

    printString("\nUkupan histogram cele matrice:\n");
    8000339c:	00006517          	auipc	a0,0x6
    800033a0:	15c50513          	addi	a0,a0,348 # 800094f8 <CONSOLE_STATUS+0x4e8>
    800033a4:	00002097          	auipc	ra,0x2
    800033a8:	7f0080e7          	jalr	2032(ra) # 80005b94 <_Z11printStringPKc>

    for (int d = 0; d < DIGITS; d++) {
    800033ac:	00000493          	li	s1,0
    800033b0:	00900793          	li	a5,9
    800033b4:	0697ca63          	blt	a5,s1,80003428 <_Z3modv+0x564>
        printString("Brojeva koji se zavrsavaju na ");
    800033b8:	00006517          	auipc	a0,0x6
    800033bc:	16850513          	addi	a0,a0,360 # 80009520 <CONSOLE_STATUS+0x510>
    800033c0:	00002097          	auipc	ra,0x2
    800033c4:	7d4080e7          	jalr	2004(ra) # 80005b94 <_Z11printStringPKc>
        printInt(d);
    800033c8:	00000613          	li	a2,0
    800033cc:	00a00593          	li	a1,10
    800033d0:	00048513          	mv	a0,s1
    800033d4:	00003097          	auipc	ra,0x3
    800033d8:	970080e7          	jalr	-1680(ra) # 80005d44 <_Z8printIntiii>
        printString(" ima: ");
    800033dc:	00006517          	auipc	a0,0x6
    800033e0:	16450513          	addi	a0,a0,356 # 80009540 <CONSOLE_STATUS+0x530>
    800033e4:	00002097          	auipc	ra,0x2
    800033e8:	7b0080e7          	jalr	1968(ra) # 80005b94 <_Z11printStringPKc>
        printInt(totalHist[d]);
    800033ec:	00249713          	slli	a4,s1,0x2
    800033f0:	00009797          	auipc	a5,0x9
    800033f4:	94078793          	addi	a5,a5,-1728 # 8000bd30 <rowHist>
    800033f8:	00e787b3          	add	a5,a5,a4
    800033fc:	00000613          	li	a2,0
    80003400:	00a00593          	li	a1,10
    80003404:	3387a503          	lw	a0,824(a5)
    80003408:	00003097          	auipc	ra,0x3
    8000340c:	93c080e7          	jalr	-1732(ra) # 80005d44 <_Z8printIntiii>
        printString("\n");
    80003410:	00006517          	auipc	a0,0x6
    80003414:	ea850513          	addi	a0,a0,-344 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003418:	00002097          	auipc	ra,0x2
    8000341c:	77c080e7          	jalr	1916(ra) # 80005b94 <_Z11printStringPKc>
    for (int d = 0; d < DIGITS; d++) {
    80003420:	0014849b          	addiw	s1,s1,1
    80003424:	f8dff06f          	j	800033b0 <_Z3modv+0x4ec>
    }

    for (int i = 0; i < M; i++) {
    80003428:	00000493          	li	s1,0
    8000342c:	0240006f          	j	80003450 <_Z3modv+0x58c>
        delete workers[i];
        mem_free(mat[i]);
    80003430:	00349713          	slli	a4,s1,0x3
    80003434:	00009797          	auipc	a5,0x9
    80003438:	c2c7b783          	ld	a5,-980(a5) # 8000c060 <mat>
    8000343c:	00e787b3          	add	a5,a5,a4
    80003440:	0007b503          	ld	a0,0(a5)
    80003444:	ffffe097          	auipc	ra,0xffffe
    80003448:	e00080e7          	jalr	-512(ra) # 80001244 <_Z8mem_freePv>
    for (int i = 0; i < M; i++) {
    8000344c:	0014849b          	addiw	s1,s1,1
    80003450:	00009797          	auipc	a5,0x9
    80003454:	c087a783          	lw	a5,-1016(a5) # 8000c058 <M>
    80003458:	02f4d463          	bge	s1,a5,80003480 <_Z3modv+0x5bc>
        delete workers[i];
    8000345c:	00349793          	slli	a5,s1,0x3
    80003460:	fd040713          	addi	a4,s0,-48
    80003464:	00f707b3          	add	a5,a4,a5
    80003468:	f407b503          	ld	a0,-192(a5)
    8000346c:	fc0502e3          	beqz	a0,80003430 <_Z3modv+0x56c>
    80003470:	00053783          	ld	a5,0(a0)
    80003474:	0087b783          	ld	a5,8(a5)
    80003478:	000780e7          	jalr	a5
    8000347c:	fb5ff06f          	j	80003430 <_Z3modv+0x56c>
    }

    mem_free(mat);
    80003480:	00009497          	auipc	s1,0x9
    80003484:	8b048493          	addi	s1,s1,-1872 # 8000bd30 <rowHist>
    80003488:	3304b503          	ld	a0,816(s1)
    8000348c:	ffffe097          	auipc	ra,0xffffe
    80003490:	db8080e7          	jalr	-584(ra) # 80001244 <_Z8mem_freePv>

    delete doneSem;
    80003494:	3204b503          	ld	a0,800(s1)
    80003498:	00050863          	beqz	a0,800034a8 <_Z3modv+0x5e4>
    8000349c:	00053783          	ld	a5,0(a0)
    800034a0:	0087b783          	ld	a5,8(a5)
    800034a4:	000780e7          	jalr	a5

    printString("mod() zavrsava\n");
    800034a8:	00006517          	auipc	a0,0x6
    800034ac:	0a050513          	addi	a0,a0,160 # 80009548 <CONSOLE_STATUS+0x538>
    800034b0:	00002097          	auipc	ra,0x2
    800034b4:	6e4080e7          	jalr	1764(ra) # 80005b94 <_Z11printStringPKc>
    800034b8:	0e813083          	ld	ra,232(sp)
    800034bc:	0e013403          	ld	s0,224(sp)
    800034c0:	0d813483          	ld	s1,216(sp)
    800034c4:	0d013903          	ld	s2,208(sp)
    800034c8:	0c813983          	ld	s3,200(sp)
    800034cc:	0c013a03          	ld	s4,192(sp)
    800034d0:	0f010113          	addi	sp,sp,240
    800034d4:	00008067          	ret
    800034d8:	00050913          	mv	s2,a0
    doneSem = new Semaphore(0);
    800034dc:	00048513          	mv	a0,s1
    800034e0:	fffff097          	auipc	ra,0xfffff
    800034e4:	054080e7          	jalr	84(ra) # 80002534 <_ZdlPv>
    800034e8:	00090513          	mv	a0,s2
    800034ec:	0000a097          	auipc	ra,0xa
    800034f0:	cbc080e7          	jalr	-836(ra) # 8000d1a8 <_Unwind_Resume>
    800034f4:	00050913          	mv	s2,a0
        workers[i] = new Worker(i, mat[i], N);
    800034f8:	00048513          	mv	a0,s1
    800034fc:	fffff097          	auipc	ra,0xfffff
    80003500:	038080e7          	jalr	56(ra) # 80002534 <_ZdlPv>
    80003504:	00090513          	mv	a0,s2
    80003508:	0000a097          	auipc	ra,0xa
    8000350c:	ca0080e7          	jalr	-864(ra) # 8000d1a8 <_Unwind_Resume>

0000000080003510 <_ZN6Worker3runEv>:
    void run() override {
    80003510:	fe010113          	addi	sp,sp,-32
    80003514:	00113c23          	sd	ra,24(sp)
    80003518:	00813823          	sd	s0,16(sp)
    8000351c:	00913423          	sd	s1,8(sp)
    80003520:	01213023          	sd	s2,0(sp)
    80003524:	02010413          	addi	s0,sp,32
    80003528:	00050913          	mv	s2,a0
        printString("Nit za red ");
    8000352c:	00006517          	auipc	a0,0x6
    80003530:	e8c50513          	addi	a0,a0,-372 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80003534:	00002097          	auipc	ra,0x2
    80003538:	660080e7          	jalr	1632(ra) # 80005b94 <_Z11printStringPKc>
        printInt(rowIndex);
    8000353c:	00000613          	li	a2,0
    80003540:	00a00593          	li	a1,10
    80003544:	02092503          	lw	a0,32(s2)
    80003548:	00002097          	auipc	ra,0x2
    8000354c:	7fc080e7          	jalr	2044(ra) # 80005d44 <_Z8printIntiii>
        printString(" pocinje\n");
    80003550:	00006517          	auipc	a0,0x6
    80003554:	e7850513          	addi	a0,a0,-392 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80003558:	00002097          	auipc	ra,0x2
    8000355c:	63c080e7          	jalr	1596(ra) # 80005b94 <_Z11printStringPKc>
        for (int j = 0; j < cols; j++) {
    80003560:	00000493          	li	s1,0
    80003564:	0640006f          	j	800035c8 <_ZN6Worker3runEv+0xb8>
                printString("Nit za red ");
    80003568:	00006517          	auipc	a0,0x6
    8000356c:	e5050513          	addi	a0,a0,-432 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80003570:	00002097          	auipc	ra,0x2
    80003574:	624080e7          	jalr	1572(ra) # 80005b94 <_Z11printStringPKc>
                printInt(rowIndex);
    80003578:	00000613          	li	a2,0
    8000357c:	00a00593          	li	a1,10
    80003580:	02092503          	lw	a0,32(s2)
    80003584:	00002097          	auipc	ra,0x2
    80003588:	7c0080e7          	jalr	1984(ra) # 80005d44 <_Z8printIntiii>
                printString(" obradila ");
    8000358c:	00006517          	auipc	a0,0x6
    80003590:	e4c50513          	addi	a0,a0,-436 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80003594:	00002097          	auipc	ra,0x2
    80003598:	600080e7          	jalr	1536(ra) # 80005b94 <_Z11printStringPKc>
                printInt(j + 1);
    8000359c:	00000613          	li	a2,0
    800035a0:	00a00593          	li	a1,10
    800035a4:	00048513          	mv	a0,s1
    800035a8:	00002097          	auipc	ra,0x2
    800035ac:	79c080e7          	jalr	1948(ra) # 80005d44 <_Z8printIntiii>
                printString(" elemenata, zove dispatch\n");
    800035b0:	00006517          	auipc	a0,0x6
    800035b4:	e3850513          	addi	a0,a0,-456 # 800093e8 <CONSOLE_STATUS+0x3d8>
    800035b8:	00002097          	auipc	ra,0x2
    800035bc:	5dc080e7          	jalr	1500(ra) # 80005b94 <_Z11printStringPKc>
                Thread::dispatch();
    800035c0:	fffff097          	auipc	ra,0xfffff
    800035c4:	280080e7          	jalr	640(ra) # 80002840 <_ZN6Thread8dispatchEv>
        for (int j = 0; j < cols; j++) {
    800035c8:	03092783          	lw	a5,48(s2)
    800035cc:	06f4da63          	bge	s1,a5,80003640 <_ZN6Worker3runEv+0x130>
            int digit = row[j] % 10;
    800035d0:	02893783          	ld	a5,40(s2)
    800035d4:	00249713          	slli	a4,s1,0x2
    800035d8:	00e787b3          	add	a5,a5,a4
    800035dc:	0007a783          	lw	a5,0(a5)
    800035e0:	00a00513          	li	a0,10
    800035e4:	02a7e63b          	remw	a2,a5,a0
            rowHist[rowIndex][digit]++;
    800035e8:	02092583          	lw	a1,32(s2)
    800035ec:	00008697          	auipc	a3,0x8
    800035f0:	74468693          	addi	a3,a3,1860 # 8000bd30 <rowHist>
    800035f4:	00259793          	slli	a5,a1,0x2
    800035f8:	00b78733          	add	a4,a5,a1
    800035fc:	00171713          	slli	a4,a4,0x1
    80003600:	00c70733          	add	a4,a4,a2
    80003604:	00271713          	slli	a4,a4,0x2
    80003608:	00e68733          	add	a4,a3,a4
    8000360c:	00072703          	lw	a4,0(a4)
    80003610:	00b787b3          	add	a5,a5,a1
    80003614:	00179793          	slli	a5,a5,0x1
    80003618:	00c787b3          	add	a5,a5,a2
    8000361c:	00279793          	slli	a5,a5,0x2
    80003620:	00f686b3          	add	a3,a3,a5
    80003624:	0017071b          	addiw	a4,a4,1
    80003628:	00e6a023          	sw	a4,0(a3)
            if ((j + 1) % 10 == 0) {
    8000362c:	0014879b          	addiw	a5,s1,1
    80003630:	0007849b          	sext.w	s1,a5
    80003634:	02a7e7bb          	remw	a5,a5,a0
    80003638:	f80798e3          	bnez	a5,800035c8 <_ZN6Worker3runEv+0xb8>
    8000363c:	f2dff06f          	j	80003568 <_ZN6Worker3runEv+0x58>
        printString("Nit za red ");
    80003640:	00006517          	auipc	a0,0x6
    80003644:	d7850513          	addi	a0,a0,-648 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80003648:	00002097          	auipc	ra,0x2
    8000364c:	54c080e7          	jalr	1356(ra) # 80005b94 <_Z11printStringPKc>
        printInt(rowIndex);
    80003650:	00000613          	li	a2,0
    80003654:	00a00593          	li	a1,10
    80003658:	02092503          	lw	a0,32(s2)
    8000365c:	00002097          	auipc	ra,0x2
    80003660:	6e8080e7          	jalr	1768(ra) # 80005d44 <_Z8printIntiii>
        printString(" zavrsila\n");
    80003664:	00006517          	auipc	a0,0x6
    80003668:	da450513          	addi	a0,a0,-604 # 80009408 <CONSOLE_STATUS+0x3f8>
    8000366c:	00002097          	auipc	ra,0x2
    80003670:	528080e7          	jalr	1320(ra) # 80005b94 <_Z11printStringPKc>
        doneSem->signal();
    80003674:	00009517          	auipc	a0,0x9
    80003678:	9dc53503          	ld	a0,-1572(a0) # 8000c050 <doneSem>
    8000367c:	fffff097          	auipc	ra,0xfffff
    80003680:	27c080e7          	jalr	636(ra) # 800028f8 <_ZN9Semaphore6signalEv>
    }
    80003684:	01813083          	ld	ra,24(sp)
    80003688:	01013403          	ld	s0,16(sp)
    8000368c:	00813483          	ld	s1,8(sp)
    80003690:	00013903          	ld	s2,0(sp)
    80003694:	02010113          	addi	sp,sp,32
    80003698:	00008067          	ret

000000008000369c <_ZN6WorkerD1Ev>:
class Worker : public Thread {
    8000369c:	ff010113          	addi	sp,sp,-16
    800036a0:	00113423          	sd	ra,8(sp)
    800036a4:	00813023          	sd	s0,0(sp)
    800036a8:	01010413          	addi	s0,sp,16
    800036ac:	00008797          	auipc	a5,0x8
    800036b0:	40c78793          	addi	a5,a5,1036 # 8000bab8 <_ZTV6Worker+0x10>
    800036b4:	00f53023          	sd	a5,0(a0)
    800036b8:	fffff097          	auipc	ra,0xfffff
    800036bc:	fe0080e7          	jalr	-32(ra) # 80002698 <_ZN6ThreadD1Ev>
    800036c0:	00813083          	ld	ra,8(sp)
    800036c4:	00013403          	ld	s0,0(sp)
    800036c8:	01010113          	addi	sp,sp,16
    800036cc:	00008067          	ret

00000000800036d0 <_ZN6WorkerD0Ev>:
    800036d0:	fe010113          	addi	sp,sp,-32
    800036d4:	00113c23          	sd	ra,24(sp)
    800036d8:	00813823          	sd	s0,16(sp)
    800036dc:	00913423          	sd	s1,8(sp)
    800036e0:	02010413          	addi	s0,sp,32
    800036e4:	00050493          	mv	s1,a0
    800036e8:	00008797          	auipc	a5,0x8
    800036ec:	3d078793          	addi	a5,a5,976 # 8000bab8 <_ZTV6Worker+0x10>
    800036f0:	00f53023          	sd	a5,0(a0)
    800036f4:	fffff097          	auipc	ra,0xfffff
    800036f8:	fa4080e7          	jalr	-92(ra) # 80002698 <_ZN6ThreadD1Ev>
    800036fc:	00048513          	mv	a0,s1
    80003700:	fffff097          	auipc	ra,0xfffff
    80003704:	e34080e7          	jalr	-460(ra) # 80002534 <_ZdlPv>
    80003708:	01813083          	ld	ra,24(sp)
    8000370c:	01013403          	ld	s0,16(sp)
    80003710:	00813483          	ld	s1,8(sp)
    80003714:	02010113          	addi	sp,sp,32
    80003718:	00008067          	ret

000000008000371c <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    8000371c:	fe010113          	addi	sp,sp,-32
    80003720:	00113c23          	sd	ra,24(sp)
    80003724:	00813823          	sd	s0,16(sp)
    80003728:	00913423          	sd	s1,8(sp)
    8000372c:	01213023          	sd	s2,0(sp)
    80003730:	02010413          	addi	s0,sp,32
    80003734:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003738:	00000913          	li	s2,0
    8000373c:	00c0006f          	j	80003748 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003740:	ffffe097          	auipc	ra,0xffffe
    80003744:	c48080e7          	jalr	-952(ra) # 80001388 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003748:	ffffe097          	auipc	ra,0xffffe
    8000374c:	e48080e7          	jalr	-440(ra) # 80001590 <_Z4getcv>
    80003750:	0005059b          	sext.w	a1,a0
    80003754:	01b00793          	li	a5,27
    80003758:	02f58a63          	beq	a1,a5,8000378c <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    8000375c:	0084b503          	ld	a0,8(s1)
    80003760:	00003097          	auipc	ra,0x3
    80003764:	2ac080e7          	jalr	684(ra) # 80006a0c <_ZN6Buffer3putEi>
        i++;
    80003768:	0019071b          	addiw	a4,s2,1
    8000376c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003770:	0004a683          	lw	a3,0(s1)
    80003774:	0026979b          	slliw	a5,a3,0x2
    80003778:	00d787bb          	addw	a5,a5,a3
    8000377c:	0017979b          	slliw	a5,a5,0x1
    80003780:	02f767bb          	remw	a5,a4,a5
    80003784:	fc0792e3          	bnez	a5,80003748 <_ZL16producerKeyboardPv+0x2c>
    80003788:	fb9ff06f          	j	80003740 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    8000378c:	00100793          	li	a5,1
    80003790:	00009717          	auipc	a4,0x9
    80003794:	90f72023          	sw	a5,-1792(a4) # 8000c090 <_ZL9threadEnd>
    data->buffer->put('!');
    80003798:	02100593          	li	a1,33
    8000379c:	0084b503          	ld	a0,8(s1)
    800037a0:	00003097          	auipc	ra,0x3
    800037a4:	26c080e7          	jalr	620(ra) # 80006a0c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800037a8:	0104b503          	ld	a0,16(s1)
    800037ac:	ffffe097          	auipc	ra,0xffffe
    800037b0:	cdc080e7          	jalr	-804(ra) # 80001488 <_Z10sem_signalP4_sem>
}
    800037b4:	01813083          	ld	ra,24(sp)
    800037b8:	01013403          	ld	s0,16(sp)
    800037bc:	00813483          	ld	s1,8(sp)
    800037c0:	00013903          	ld	s2,0(sp)
    800037c4:	02010113          	addi	sp,sp,32
    800037c8:	00008067          	ret

00000000800037cc <_ZL8producerPv>:

static void producer(void *arg) {
    800037cc:	fe010113          	addi	sp,sp,-32
    800037d0:	00113c23          	sd	ra,24(sp)
    800037d4:	00813823          	sd	s0,16(sp)
    800037d8:	00913423          	sd	s1,8(sp)
    800037dc:	01213023          	sd	s2,0(sp)
    800037e0:	02010413          	addi	s0,sp,32
    800037e4:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800037e8:	00000913          	li	s2,0
    800037ec:	00c0006f          	j	800037f8 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800037f0:	ffffe097          	auipc	ra,0xffffe
    800037f4:	b98080e7          	jalr	-1128(ra) # 80001388 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800037f8:	00009797          	auipc	a5,0x9
    800037fc:	8987a783          	lw	a5,-1896(a5) # 8000c090 <_ZL9threadEnd>
    80003800:	02079e63          	bnez	a5,8000383c <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003804:	0004a583          	lw	a1,0(s1)
    80003808:	0305859b          	addiw	a1,a1,48
    8000380c:	0084b503          	ld	a0,8(s1)
    80003810:	00003097          	auipc	ra,0x3
    80003814:	1fc080e7          	jalr	508(ra) # 80006a0c <_ZN6Buffer3putEi>
        i++;
    80003818:	0019071b          	addiw	a4,s2,1
    8000381c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003820:	0004a683          	lw	a3,0(s1)
    80003824:	0026979b          	slliw	a5,a3,0x2
    80003828:	00d787bb          	addw	a5,a5,a3
    8000382c:	0017979b          	slliw	a5,a5,0x1
    80003830:	02f767bb          	remw	a5,a4,a5
    80003834:	fc0792e3          	bnez	a5,800037f8 <_ZL8producerPv+0x2c>
    80003838:	fb9ff06f          	j	800037f0 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    8000383c:	0104b503          	ld	a0,16(s1)
    80003840:	ffffe097          	auipc	ra,0xffffe
    80003844:	c48080e7          	jalr	-952(ra) # 80001488 <_Z10sem_signalP4_sem>
}
    80003848:	01813083          	ld	ra,24(sp)
    8000384c:	01013403          	ld	s0,16(sp)
    80003850:	00813483          	ld	s1,8(sp)
    80003854:	00013903          	ld	s2,0(sp)
    80003858:	02010113          	addi	sp,sp,32
    8000385c:	00008067          	ret

0000000080003860 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003860:	fd010113          	addi	sp,sp,-48
    80003864:	02113423          	sd	ra,40(sp)
    80003868:	02813023          	sd	s0,32(sp)
    8000386c:	00913c23          	sd	s1,24(sp)
    80003870:	01213823          	sd	s2,16(sp)
    80003874:	01313423          	sd	s3,8(sp)
    80003878:	03010413          	addi	s0,sp,48
    8000387c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003880:	00000993          	li	s3,0
    80003884:	01c0006f          	j	800038a0 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003888:	ffffe097          	auipc	ra,0xffffe
    8000388c:	b00080e7          	jalr	-1280(ra) # 80001388 <_Z15thread_dispatchv>
    80003890:	0500006f          	j	800038e0 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003894:	00a00513          	li	a0,10
    80003898:	ffffe097          	auipc	ra,0xffffe
    8000389c:	d38080e7          	jalr	-712(ra) # 800015d0 <_Z4putcc>
    while (!threadEnd) {
    800038a0:	00008797          	auipc	a5,0x8
    800038a4:	7f07a783          	lw	a5,2032(a5) # 8000c090 <_ZL9threadEnd>
    800038a8:	06079063          	bnez	a5,80003908 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800038ac:	00893503          	ld	a0,8(s2)
    800038b0:	00003097          	auipc	ra,0x3
    800038b4:	1ec080e7          	jalr	492(ra) # 80006a9c <_ZN6Buffer3getEv>
        i++;
    800038b8:	0019849b          	addiw	s1,s3,1
    800038bc:	0004899b          	sext.w	s3,s1
        putc(key);
    800038c0:	0ff57513          	andi	a0,a0,255
    800038c4:	ffffe097          	auipc	ra,0xffffe
    800038c8:	d0c080e7          	jalr	-756(ra) # 800015d0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800038cc:	00092703          	lw	a4,0(s2)
    800038d0:	0027179b          	slliw	a5,a4,0x2
    800038d4:	00e787bb          	addw	a5,a5,a4
    800038d8:	02f4e7bb          	remw	a5,s1,a5
    800038dc:	fa0786e3          	beqz	a5,80003888 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800038e0:	05000793          	li	a5,80
    800038e4:	02f4e4bb          	remw	s1,s1,a5
    800038e8:	fa049ce3          	bnez	s1,800038a0 <_ZL8consumerPv+0x40>
    800038ec:	fa9ff06f          	j	80003894 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800038f0:	00893503          	ld	a0,8(s2)
    800038f4:	00003097          	auipc	ra,0x3
    800038f8:	1a8080e7          	jalr	424(ra) # 80006a9c <_ZN6Buffer3getEv>
        putc(key);
    800038fc:	0ff57513          	andi	a0,a0,255
    80003900:	ffffe097          	auipc	ra,0xffffe
    80003904:	cd0080e7          	jalr	-816(ra) # 800015d0 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003908:	00893503          	ld	a0,8(s2)
    8000390c:	00003097          	auipc	ra,0x3
    80003910:	21c080e7          	jalr	540(ra) # 80006b28 <_ZN6Buffer6getCntEv>
    80003914:	fca04ee3          	bgtz	a0,800038f0 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003918:	01093503          	ld	a0,16(s2)
    8000391c:	ffffe097          	auipc	ra,0xffffe
    80003920:	b6c080e7          	jalr	-1172(ra) # 80001488 <_Z10sem_signalP4_sem>
}
    80003924:	02813083          	ld	ra,40(sp)
    80003928:	02013403          	ld	s0,32(sp)
    8000392c:	01813483          	ld	s1,24(sp)
    80003930:	01013903          	ld	s2,16(sp)
    80003934:	00813983          	ld	s3,8(sp)
    80003938:	03010113          	addi	sp,sp,48
    8000393c:	00008067          	ret

0000000080003940 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003940:	f9010113          	addi	sp,sp,-112
    80003944:	06113423          	sd	ra,104(sp)
    80003948:	06813023          	sd	s0,96(sp)
    8000394c:	04913c23          	sd	s1,88(sp)
    80003950:	05213823          	sd	s2,80(sp)
    80003954:	05313423          	sd	s3,72(sp)
    80003958:	05413023          	sd	s4,64(sp)
    8000395c:	03513c23          	sd	s5,56(sp)
    80003960:	03613823          	sd	s6,48(sp)
    80003964:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003968:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    8000396c:	00006517          	auipc	a0,0x6
    80003970:	bec50513          	addi	a0,a0,-1044 # 80009558 <CONSOLE_STATUS+0x548>
    80003974:	00002097          	auipc	ra,0x2
    80003978:	220080e7          	jalr	544(ra) # 80005b94 <_Z11printStringPKc>
    getString(input, 30);
    8000397c:	01e00593          	li	a1,30
    80003980:	fa040493          	addi	s1,s0,-96
    80003984:	00048513          	mv	a0,s1
    80003988:	00002097          	auipc	ra,0x2
    8000398c:	294080e7          	jalr	660(ra) # 80005c1c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003990:	00048513          	mv	a0,s1
    80003994:	00002097          	auipc	ra,0x2
    80003998:	360080e7          	jalr	864(ra) # 80005cf4 <_Z11stringToIntPKc>
    8000399c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800039a0:	00006517          	auipc	a0,0x6
    800039a4:	bd850513          	addi	a0,a0,-1064 # 80009578 <CONSOLE_STATUS+0x568>
    800039a8:	00002097          	auipc	ra,0x2
    800039ac:	1ec080e7          	jalr	492(ra) # 80005b94 <_Z11printStringPKc>
    getString(input, 30);
    800039b0:	01e00593          	li	a1,30
    800039b4:	00048513          	mv	a0,s1
    800039b8:	00002097          	auipc	ra,0x2
    800039bc:	264080e7          	jalr	612(ra) # 80005c1c <_Z9getStringPci>
    n = stringToInt(input);
    800039c0:	00048513          	mv	a0,s1
    800039c4:	00002097          	auipc	ra,0x2
    800039c8:	330080e7          	jalr	816(ra) # 80005cf4 <_Z11stringToIntPKc>
    800039cc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800039d0:	00006517          	auipc	a0,0x6
    800039d4:	bc850513          	addi	a0,a0,-1080 # 80009598 <CONSOLE_STATUS+0x588>
    800039d8:	00002097          	auipc	ra,0x2
    800039dc:	1bc080e7          	jalr	444(ra) # 80005b94 <_Z11printStringPKc>
    800039e0:	00000613          	li	a2,0
    800039e4:	00a00593          	li	a1,10
    800039e8:	00090513          	mv	a0,s2
    800039ec:	00002097          	auipc	ra,0x2
    800039f0:	358080e7          	jalr	856(ra) # 80005d44 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800039f4:	00006517          	auipc	a0,0x6
    800039f8:	bbc50513          	addi	a0,a0,-1092 # 800095b0 <CONSOLE_STATUS+0x5a0>
    800039fc:	00002097          	auipc	ra,0x2
    80003a00:	198080e7          	jalr	408(ra) # 80005b94 <_Z11printStringPKc>
    80003a04:	00000613          	li	a2,0
    80003a08:	00a00593          	li	a1,10
    80003a0c:	00048513          	mv	a0,s1
    80003a10:	00002097          	auipc	ra,0x2
    80003a14:	334080e7          	jalr	820(ra) # 80005d44 <_Z8printIntiii>
    printString(".\n");
    80003a18:	00006517          	auipc	a0,0x6
    80003a1c:	bb050513          	addi	a0,a0,-1104 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80003a20:	00002097          	auipc	ra,0x2
    80003a24:	174080e7          	jalr	372(ra) # 80005b94 <_Z11printStringPKc>
    if(threadNum > n) {
    80003a28:	0324c463          	blt	s1,s2,80003a50 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003a2c:	03205c63          	blez	s2,80003a64 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003a30:	03800513          	li	a0,56
    80003a34:	fffff097          	auipc	ra,0xfffff
    80003a38:	ab0080e7          	jalr	-1360(ra) # 800024e4 <_Znwm>
    80003a3c:	00050a13          	mv	s4,a0
    80003a40:	00048593          	mv	a1,s1
    80003a44:	00003097          	auipc	ra,0x3
    80003a48:	f2c080e7          	jalr	-212(ra) # 80006970 <_ZN6BufferC1Ei>
    80003a4c:	0300006f          	j	80003a7c <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003a50:	00006517          	auipc	a0,0x6
    80003a54:	b8050513          	addi	a0,a0,-1152 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80003a58:	00002097          	auipc	ra,0x2
    80003a5c:	13c080e7          	jalr	316(ra) # 80005b94 <_Z11printStringPKc>
        return;
    80003a60:	0140006f          	j	80003a74 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003a64:	00006517          	auipc	a0,0x6
    80003a68:	bac50513          	addi	a0,a0,-1108 # 80009610 <CONSOLE_STATUS+0x600>
    80003a6c:	00002097          	auipc	ra,0x2
    80003a70:	128080e7          	jalr	296(ra) # 80005b94 <_Z11printStringPKc>
        return;
    80003a74:	000b0113          	mv	sp,s6
    80003a78:	1500006f          	j	80003bc8 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003a7c:	00000593          	li	a1,0
    80003a80:	00008517          	auipc	a0,0x8
    80003a84:	61850513          	addi	a0,a0,1560 # 8000c098 <_ZL10waitForAll>
    80003a88:	ffffe097          	auipc	ra,0xffffe
    80003a8c:	93c080e7          	jalr	-1732(ra) # 800013c4 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003a90:	00391793          	slli	a5,s2,0x3
    80003a94:	00f78793          	addi	a5,a5,15
    80003a98:	ff07f793          	andi	a5,a5,-16
    80003a9c:	40f10133          	sub	sp,sp,a5
    80003aa0:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003aa4:	0019071b          	addiw	a4,s2,1
    80003aa8:	00171793          	slli	a5,a4,0x1
    80003aac:	00e787b3          	add	a5,a5,a4
    80003ab0:	00379793          	slli	a5,a5,0x3
    80003ab4:	00f78793          	addi	a5,a5,15
    80003ab8:	ff07f793          	andi	a5,a5,-16
    80003abc:	40f10133          	sub	sp,sp,a5
    80003ac0:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003ac4:	00191613          	slli	a2,s2,0x1
    80003ac8:	012607b3          	add	a5,a2,s2
    80003acc:	00379793          	slli	a5,a5,0x3
    80003ad0:	00f987b3          	add	a5,s3,a5
    80003ad4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003ad8:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003adc:	00008717          	auipc	a4,0x8
    80003ae0:	5bc73703          	ld	a4,1468(a4) # 8000c098 <_ZL10waitForAll>
    80003ae4:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003ae8:	00078613          	mv	a2,a5
    80003aec:	00000597          	auipc	a1,0x0
    80003af0:	d7458593          	addi	a1,a1,-652 # 80003860 <_ZL8consumerPv>
    80003af4:	f9840513          	addi	a0,s0,-104
    80003af8:	ffffd097          	auipc	ra,0xffffd
    80003afc:	78c080e7          	jalr	1932(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003b00:	00000493          	li	s1,0
    80003b04:	0280006f          	j	80003b2c <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003b08:	00000597          	auipc	a1,0x0
    80003b0c:	c1458593          	addi	a1,a1,-1004 # 8000371c <_ZL16producerKeyboardPv>
                      data + i);
    80003b10:	00179613          	slli	a2,a5,0x1
    80003b14:	00f60633          	add	a2,a2,a5
    80003b18:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003b1c:	00c98633          	add	a2,s3,a2
    80003b20:	ffffd097          	auipc	ra,0xffffd
    80003b24:	764080e7          	jalr	1892(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003b28:	0014849b          	addiw	s1,s1,1
    80003b2c:	0524d263          	bge	s1,s2,80003b70 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003b30:	00149793          	slli	a5,s1,0x1
    80003b34:	009787b3          	add	a5,a5,s1
    80003b38:	00379793          	slli	a5,a5,0x3
    80003b3c:	00f987b3          	add	a5,s3,a5
    80003b40:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003b44:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003b48:	00008717          	auipc	a4,0x8
    80003b4c:	55073703          	ld	a4,1360(a4) # 8000c098 <_ZL10waitForAll>
    80003b50:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003b54:	00048793          	mv	a5,s1
    80003b58:	00349513          	slli	a0,s1,0x3
    80003b5c:	00aa8533          	add	a0,s5,a0
    80003b60:	fa9054e3          	blez	s1,80003b08 <_Z22producerConsumer_C_APIv+0x1c8>
    80003b64:	00000597          	auipc	a1,0x0
    80003b68:	c6858593          	addi	a1,a1,-920 # 800037cc <_ZL8producerPv>
    80003b6c:	fa5ff06f          	j	80003b10 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003b70:	ffffe097          	auipc	ra,0xffffe
    80003b74:	818080e7          	jalr	-2024(ra) # 80001388 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003b78:	00000493          	li	s1,0
    80003b7c:	00994e63          	blt	s2,s1,80003b98 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003b80:	00008517          	auipc	a0,0x8
    80003b84:	51853503          	ld	a0,1304(a0) # 8000c098 <_ZL10waitForAll>
    80003b88:	ffffe097          	auipc	ra,0xffffe
    80003b8c:	8c0080e7          	jalr	-1856(ra) # 80001448 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003b90:	0014849b          	addiw	s1,s1,1
    80003b94:	fe9ff06f          	j	80003b7c <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003b98:	00008517          	auipc	a0,0x8
    80003b9c:	50053503          	ld	a0,1280(a0) # 8000c098 <_ZL10waitForAll>
    80003ba0:	ffffe097          	auipc	ra,0xffffe
    80003ba4:	868080e7          	jalr	-1944(ra) # 80001408 <_Z9sem_closeP4_sem>
    delete buffer;
    80003ba8:	000a0e63          	beqz	s4,80003bc4 <_Z22producerConsumer_C_APIv+0x284>
    80003bac:	000a0513          	mv	a0,s4
    80003bb0:	00003097          	auipc	ra,0x3
    80003bb4:	000080e7          	jalr	ra # 80006bb0 <_ZN6BufferD1Ev>
    80003bb8:	000a0513          	mv	a0,s4
    80003bbc:	fffff097          	auipc	ra,0xfffff
    80003bc0:	978080e7          	jalr	-1672(ra) # 80002534 <_ZdlPv>
    80003bc4:	000b0113          	mv	sp,s6

}
    80003bc8:	f9040113          	addi	sp,s0,-112
    80003bcc:	06813083          	ld	ra,104(sp)
    80003bd0:	06013403          	ld	s0,96(sp)
    80003bd4:	05813483          	ld	s1,88(sp)
    80003bd8:	05013903          	ld	s2,80(sp)
    80003bdc:	04813983          	ld	s3,72(sp)
    80003be0:	04013a03          	ld	s4,64(sp)
    80003be4:	03813a83          	ld	s5,56(sp)
    80003be8:	03013b03          	ld	s6,48(sp)
    80003bec:	07010113          	addi	sp,sp,112
    80003bf0:	00008067          	ret
    80003bf4:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003bf8:	000a0513          	mv	a0,s4
    80003bfc:	fffff097          	auipc	ra,0xfffff
    80003c00:	938080e7          	jalr	-1736(ra) # 80002534 <_ZdlPv>
    80003c04:	00048513          	mv	a0,s1
    80003c08:	00009097          	auipc	ra,0x9
    80003c0c:	5a0080e7          	jalr	1440(ra) # 8000d1a8 <_Unwind_Resume>

0000000080003c10 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003c10:	fe010113          	addi	sp,sp,-32
    80003c14:	00113c23          	sd	ra,24(sp)
    80003c18:	00813823          	sd	s0,16(sp)
    80003c1c:	00913423          	sd	s1,8(sp)
    80003c20:	01213023          	sd	s2,0(sp)
    80003c24:	02010413          	addi	s0,sp,32
    80003c28:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003c2c:	00100793          	li	a5,1
    80003c30:	02a7f863          	bgeu	a5,a0,80003c60 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003c34:	00a00793          	li	a5,10
    80003c38:	02f577b3          	remu	a5,a0,a5
    80003c3c:	02078e63          	beqz	a5,80003c78 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003c40:	fff48513          	addi	a0,s1,-1
    80003c44:	00000097          	auipc	ra,0x0
    80003c48:	fcc080e7          	jalr	-52(ra) # 80003c10 <_ZL9fibonaccim>
    80003c4c:	00050913          	mv	s2,a0
    80003c50:	ffe48513          	addi	a0,s1,-2
    80003c54:	00000097          	auipc	ra,0x0
    80003c58:	fbc080e7          	jalr	-68(ra) # 80003c10 <_ZL9fibonaccim>
    80003c5c:	00a90533          	add	a0,s2,a0
}
    80003c60:	01813083          	ld	ra,24(sp)
    80003c64:	01013403          	ld	s0,16(sp)
    80003c68:	00813483          	ld	s1,8(sp)
    80003c6c:	00013903          	ld	s2,0(sp)
    80003c70:	02010113          	addi	sp,sp,32
    80003c74:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003c78:	ffffd097          	auipc	ra,0xffffd
    80003c7c:	710080e7          	jalr	1808(ra) # 80001388 <_Z15thread_dispatchv>
    80003c80:	fc1ff06f          	j	80003c40 <_ZL9fibonaccim+0x30>

0000000080003c84 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003c84:	fe010113          	addi	sp,sp,-32
    80003c88:	00113c23          	sd	ra,24(sp)
    80003c8c:	00813823          	sd	s0,16(sp)
    80003c90:	00913423          	sd	s1,8(sp)
    80003c94:	01213023          	sd	s2,0(sp)
    80003c98:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003c9c:	00000913          	li	s2,0
    80003ca0:	0380006f          	j	80003cd8 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003ca4:	ffffd097          	auipc	ra,0xffffd
    80003ca8:	6e4080e7          	jalr	1764(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003cac:	00148493          	addi	s1,s1,1
    80003cb0:	000027b7          	lui	a5,0x2
    80003cb4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003cb8:	0097ee63          	bltu	a5,s1,80003cd4 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003cbc:	00000713          	li	a4,0
    80003cc0:	000077b7          	lui	a5,0x7
    80003cc4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003cc8:	fce7eee3          	bltu	a5,a4,80003ca4 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003ccc:	00170713          	addi	a4,a4,1
    80003cd0:	ff1ff06f          	j	80003cc0 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003cd4:	00190913          	addi	s2,s2,1
    80003cd8:	00900793          	li	a5,9
    80003cdc:	0527e063          	bltu	a5,s2,80003d1c <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003ce0:	00006517          	auipc	a0,0x6
    80003ce4:	96050513          	addi	a0,a0,-1696 # 80009640 <CONSOLE_STATUS+0x630>
    80003ce8:	00002097          	auipc	ra,0x2
    80003cec:	eac080e7          	jalr	-340(ra) # 80005b94 <_Z11printStringPKc>
    80003cf0:	00000613          	li	a2,0
    80003cf4:	00a00593          	li	a1,10
    80003cf8:	0009051b          	sext.w	a0,s2
    80003cfc:	00002097          	auipc	ra,0x2
    80003d00:	048080e7          	jalr	72(ra) # 80005d44 <_Z8printIntiii>
    80003d04:	00005517          	auipc	a0,0x5
    80003d08:	5b450513          	addi	a0,a0,1460 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003d0c:	00002097          	auipc	ra,0x2
    80003d10:	e88080e7          	jalr	-376(ra) # 80005b94 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003d14:	00000493          	li	s1,0
    80003d18:	f99ff06f          	j	80003cb0 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003d1c:	00006517          	auipc	a0,0x6
    80003d20:	92c50513          	addi	a0,a0,-1748 # 80009648 <CONSOLE_STATUS+0x638>
    80003d24:	00002097          	auipc	ra,0x2
    80003d28:	e70080e7          	jalr	-400(ra) # 80005b94 <_Z11printStringPKc>
    finishedA = true;
    80003d2c:	00100793          	li	a5,1
    80003d30:	00008717          	auipc	a4,0x8
    80003d34:	36f70823          	sb	a5,880(a4) # 8000c0a0 <_ZL9finishedA>
}
    80003d38:	01813083          	ld	ra,24(sp)
    80003d3c:	01013403          	ld	s0,16(sp)
    80003d40:	00813483          	ld	s1,8(sp)
    80003d44:	00013903          	ld	s2,0(sp)
    80003d48:	02010113          	addi	sp,sp,32
    80003d4c:	00008067          	ret

0000000080003d50 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003d50:	fe010113          	addi	sp,sp,-32
    80003d54:	00113c23          	sd	ra,24(sp)
    80003d58:	00813823          	sd	s0,16(sp)
    80003d5c:	00913423          	sd	s1,8(sp)
    80003d60:	01213023          	sd	s2,0(sp)
    80003d64:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003d68:	00000913          	li	s2,0
    80003d6c:	0380006f          	j	80003da4 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003d70:	ffffd097          	auipc	ra,0xffffd
    80003d74:	618080e7          	jalr	1560(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003d78:	00148493          	addi	s1,s1,1
    80003d7c:	000027b7          	lui	a5,0x2
    80003d80:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003d84:	0097ee63          	bltu	a5,s1,80003da0 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003d88:	00000713          	li	a4,0
    80003d8c:	000077b7          	lui	a5,0x7
    80003d90:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003d94:	fce7eee3          	bltu	a5,a4,80003d70 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003d98:	00170713          	addi	a4,a4,1
    80003d9c:	ff1ff06f          	j	80003d8c <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003da0:	00190913          	addi	s2,s2,1
    80003da4:	00f00793          	li	a5,15
    80003da8:	0527e063          	bltu	a5,s2,80003de8 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003dac:	00006517          	auipc	a0,0x6
    80003db0:	8ac50513          	addi	a0,a0,-1876 # 80009658 <CONSOLE_STATUS+0x648>
    80003db4:	00002097          	auipc	ra,0x2
    80003db8:	de0080e7          	jalr	-544(ra) # 80005b94 <_Z11printStringPKc>
    80003dbc:	00000613          	li	a2,0
    80003dc0:	00a00593          	li	a1,10
    80003dc4:	0009051b          	sext.w	a0,s2
    80003dc8:	00002097          	auipc	ra,0x2
    80003dcc:	f7c080e7          	jalr	-132(ra) # 80005d44 <_Z8printIntiii>
    80003dd0:	00005517          	auipc	a0,0x5
    80003dd4:	4e850513          	addi	a0,a0,1256 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003dd8:	00002097          	auipc	ra,0x2
    80003ddc:	dbc080e7          	jalr	-580(ra) # 80005b94 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003de0:	00000493          	li	s1,0
    80003de4:	f99ff06f          	j	80003d7c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003de8:	00006517          	auipc	a0,0x6
    80003dec:	87850513          	addi	a0,a0,-1928 # 80009660 <CONSOLE_STATUS+0x650>
    80003df0:	00002097          	auipc	ra,0x2
    80003df4:	da4080e7          	jalr	-604(ra) # 80005b94 <_Z11printStringPKc>
    finishedB = true;
    80003df8:	00100793          	li	a5,1
    80003dfc:	00008717          	auipc	a4,0x8
    80003e00:	2af702a3          	sb	a5,677(a4) # 8000c0a1 <_ZL9finishedB>
    thread_dispatch();
    80003e04:	ffffd097          	auipc	ra,0xffffd
    80003e08:	584080e7          	jalr	1412(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003e0c:	01813083          	ld	ra,24(sp)
    80003e10:	01013403          	ld	s0,16(sp)
    80003e14:	00813483          	ld	s1,8(sp)
    80003e18:	00013903          	ld	s2,0(sp)
    80003e1c:	02010113          	addi	sp,sp,32
    80003e20:	00008067          	ret

0000000080003e24 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003e24:	fe010113          	addi	sp,sp,-32
    80003e28:	00113c23          	sd	ra,24(sp)
    80003e2c:	00813823          	sd	s0,16(sp)
    80003e30:	00913423          	sd	s1,8(sp)
    80003e34:	01213023          	sd	s2,0(sp)
    80003e38:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003e3c:	00000493          	li	s1,0
    80003e40:	0400006f          	j	80003e80 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003e44:	00006517          	auipc	a0,0x6
    80003e48:	82c50513          	addi	a0,a0,-2004 # 80009670 <CONSOLE_STATUS+0x660>
    80003e4c:	00002097          	auipc	ra,0x2
    80003e50:	d48080e7          	jalr	-696(ra) # 80005b94 <_Z11printStringPKc>
    80003e54:	00000613          	li	a2,0
    80003e58:	00a00593          	li	a1,10
    80003e5c:	00048513          	mv	a0,s1
    80003e60:	00002097          	auipc	ra,0x2
    80003e64:	ee4080e7          	jalr	-284(ra) # 80005d44 <_Z8printIntiii>
    80003e68:	00005517          	auipc	a0,0x5
    80003e6c:	45050513          	addi	a0,a0,1104 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003e70:	00002097          	auipc	ra,0x2
    80003e74:	d24080e7          	jalr	-732(ra) # 80005b94 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003e78:	0014849b          	addiw	s1,s1,1
    80003e7c:	0ff4f493          	andi	s1,s1,255
    80003e80:	00200793          	li	a5,2
    80003e84:	fc97f0e3          	bgeu	a5,s1,80003e44 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003e88:	00005517          	auipc	a0,0x5
    80003e8c:	7f050513          	addi	a0,a0,2032 # 80009678 <CONSOLE_STATUS+0x668>
    80003e90:	00002097          	auipc	ra,0x2
    80003e94:	d04080e7          	jalr	-764(ra) # 80005b94 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003e98:	00700313          	li	t1,7
    thread_dispatch();
    80003e9c:	ffffd097          	auipc	ra,0xffffd
    80003ea0:	4ec080e7          	jalr	1260(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003ea4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003ea8:	00005517          	auipc	a0,0x5
    80003eac:	7e050513          	addi	a0,a0,2016 # 80009688 <CONSOLE_STATUS+0x678>
    80003eb0:	00002097          	auipc	ra,0x2
    80003eb4:	ce4080e7          	jalr	-796(ra) # 80005b94 <_Z11printStringPKc>
    80003eb8:	00000613          	li	a2,0
    80003ebc:	00a00593          	li	a1,10
    80003ec0:	0009051b          	sext.w	a0,s2
    80003ec4:	00002097          	auipc	ra,0x2
    80003ec8:	e80080e7          	jalr	-384(ra) # 80005d44 <_Z8printIntiii>
    80003ecc:	00005517          	auipc	a0,0x5
    80003ed0:	3ec50513          	addi	a0,a0,1004 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003ed4:	00002097          	auipc	ra,0x2
    80003ed8:	cc0080e7          	jalr	-832(ra) # 80005b94 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003edc:	00c00513          	li	a0,12
    80003ee0:	00000097          	auipc	ra,0x0
    80003ee4:	d30080e7          	jalr	-720(ra) # 80003c10 <_ZL9fibonaccim>
    80003ee8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003eec:	00005517          	auipc	a0,0x5
    80003ef0:	7a450513          	addi	a0,a0,1956 # 80009690 <CONSOLE_STATUS+0x680>
    80003ef4:	00002097          	auipc	ra,0x2
    80003ef8:	ca0080e7          	jalr	-864(ra) # 80005b94 <_Z11printStringPKc>
    80003efc:	00000613          	li	a2,0
    80003f00:	00a00593          	li	a1,10
    80003f04:	0009051b          	sext.w	a0,s2
    80003f08:	00002097          	auipc	ra,0x2
    80003f0c:	e3c080e7          	jalr	-452(ra) # 80005d44 <_Z8printIntiii>
    80003f10:	00005517          	auipc	a0,0x5
    80003f14:	3a850513          	addi	a0,a0,936 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003f18:	00002097          	auipc	ra,0x2
    80003f1c:	c7c080e7          	jalr	-900(ra) # 80005b94 <_Z11printStringPKc>
    80003f20:	0400006f          	j	80003f60 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003f24:	00005517          	auipc	a0,0x5
    80003f28:	74c50513          	addi	a0,a0,1868 # 80009670 <CONSOLE_STATUS+0x660>
    80003f2c:	00002097          	auipc	ra,0x2
    80003f30:	c68080e7          	jalr	-920(ra) # 80005b94 <_Z11printStringPKc>
    80003f34:	00000613          	li	a2,0
    80003f38:	00a00593          	li	a1,10
    80003f3c:	00048513          	mv	a0,s1
    80003f40:	00002097          	auipc	ra,0x2
    80003f44:	e04080e7          	jalr	-508(ra) # 80005d44 <_Z8printIntiii>
    80003f48:	00005517          	auipc	a0,0x5
    80003f4c:	37050513          	addi	a0,a0,880 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003f50:	00002097          	auipc	ra,0x2
    80003f54:	c44080e7          	jalr	-956(ra) # 80005b94 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003f58:	0014849b          	addiw	s1,s1,1
    80003f5c:	0ff4f493          	andi	s1,s1,255
    80003f60:	00500793          	li	a5,5
    80003f64:	fc97f0e3          	bgeu	a5,s1,80003f24 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003f68:	00005517          	auipc	a0,0x5
    80003f6c:	6e050513          	addi	a0,a0,1760 # 80009648 <CONSOLE_STATUS+0x638>
    80003f70:	00002097          	auipc	ra,0x2
    80003f74:	c24080e7          	jalr	-988(ra) # 80005b94 <_Z11printStringPKc>
    finishedC = true;
    80003f78:	00100793          	li	a5,1
    80003f7c:	00008717          	auipc	a4,0x8
    80003f80:	12f70323          	sb	a5,294(a4) # 8000c0a2 <_ZL9finishedC>
    thread_dispatch();
    80003f84:	ffffd097          	auipc	ra,0xffffd
    80003f88:	404080e7          	jalr	1028(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003f8c:	01813083          	ld	ra,24(sp)
    80003f90:	01013403          	ld	s0,16(sp)
    80003f94:	00813483          	ld	s1,8(sp)
    80003f98:	00013903          	ld	s2,0(sp)
    80003f9c:	02010113          	addi	sp,sp,32
    80003fa0:	00008067          	ret

0000000080003fa4 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003fa4:	fe010113          	addi	sp,sp,-32
    80003fa8:	00113c23          	sd	ra,24(sp)
    80003fac:	00813823          	sd	s0,16(sp)
    80003fb0:	00913423          	sd	s1,8(sp)
    80003fb4:	01213023          	sd	s2,0(sp)
    80003fb8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003fbc:	00a00493          	li	s1,10
    80003fc0:	0400006f          	j	80004000 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003fc4:	00005517          	auipc	a0,0x5
    80003fc8:	6dc50513          	addi	a0,a0,1756 # 800096a0 <CONSOLE_STATUS+0x690>
    80003fcc:	00002097          	auipc	ra,0x2
    80003fd0:	bc8080e7          	jalr	-1080(ra) # 80005b94 <_Z11printStringPKc>
    80003fd4:	00000613          	li	a2,0
    80003fd8:	00a00593          	li	a1,10
    80003fdc:	00048513          	mv	a0,s1
    80003fe0:	00002097          	auipc	ra,0x2
    80003fe4:	d64080e7          	jalr	-668(ra) # 80005d44 <_Z8printIntiii>
    80003fe8:	00005517          	auipc	a0,0x5
    80003fec:	2d050513          	addi	a0,a0,720 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003ff0:	00002097          	auipc	ra,0x2
    80003ff4:	ba4080e7          	jalr	-1116(ra) # 80005b94 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003ff8:	0014849b          	addiw	s1,s1,1
    80003ffc:	0ff4f493          	andi	s1,s1,255
    80004000:	00c00793          	li	a5,12
    80004004:	fc97f0e3          	bgeu	a5,s1,80003fc4 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004008:	00005517          	auipc	a0,0x5
    8000400c:	6a050513          	addi	a0,a0,1696 # 800096a8 <CONSOLE_STATUS+0x698>
    80004010:	00002097          	auipc	ra,0x2
    80004014:	b84080e7          	jalr	-1148(ra) # 80005b94 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004018:	00500313          	li	t1,5
    thread_dispatch();
    8000401c:	ffffd097          	auipc	ra,0xffffd
    80004020:	36c080e7          	jalr	876(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004024:	01000513          	li	a0,16
    80004028:	00000097          	auipc	ra,0x0
    8000402c:	be8080e7          	jalr	-1048(ra) # 80003c10 <_ZL9fibonaccim>
    80004030:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004034:	00005517          	auipc	a0,0x5
    80004038:	68450513          	addi	a0,a0,1668 # 800096b8 <CONSOLE_STATUS+0x6a8>
    8000403c:	00002097          	auipc	ra,0x2
    80004040:	b58080e7          	jalr	-1192(ra) # 80005b94 <_Z11printStringPKc>
    80004044:	00000613          	li	a2,0
    80004048:	00a00593          	li	a1,10
    8000404c:	0009051b          	sext.w	a0,s2
    80004050:	00002097          	auipc	ra,0x2
    80004054:	cf4080e7          	jalr	-780(ra) # 80005d44 <_Z8printIntiii>
    80004058:	00005517          	auipc	a0,0x5
    8000405c:	26050513          	addi	a0,a0,608 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004060:	00002097          	auipc	ra,0x2
    80004064:	b34080e7          	jalr	-1228(ra) # 80005b94 <_Z11printStringPKc>
    80004068:	0400006f          	j	800040a8 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000406c:	00005517          	auipc	a0,0x5
    80004070:	63450513          	addi	a0,a0,1588 # 800096a0 <CONSOLE_STATUS+0x690>
    80004074:	00002097          	auipc	ra,0x2
    80004078:	b20080e7          	jalr	-1248(ra) # 80005b94 <_Z11printStringPKc>
    8000407c:	00000613          	li	a2,0
    80004080:	00a00593          	li	a1,10
    80004084:	00048513          	mv	a0,s1
    80004088:	00002097          	auipc	ra,0x2
    8000408c:	cbc080e7          	jalr	-836(ra) # 80005d44 <_Z8printIntiii>
    80004090:	00005517          	auipc	a0,0x5
    80004094:	22850513          	addi	a0,a0,552 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004098:	00002097          	auipc	ra,0x2
    8000409c:	afc080e7          	jalr	-1284(ra) # 80005b94 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800040a0:	0014849b          	addiw	s1,s1,1
    800040a4:	0ff4f493          	andi	s1,s1,255
    800040a8:	00f00793          	li	a5,15
    800040ac:	fc97f0e3          	bgeu	a5,s1,8000406c <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800040b0:	00005517          	auipc	a0,0x5
    800040b4:	61850513          	addi	a0,a0,1560 # 800096c8 <CONSOLE_STATUS+0x6b8>
    800040b8:	00002097          	auipc	ra,0x2
    800040bc:	adc080e7          	jalr	-1316(ra) # 80005b94 <_Z11printStringPKc>
    finishedD = true;
    800040c0:	00100793          	li	a5,1
    800040c4:	00008717          	auipc	a4,0x8
    800040c8:	fcf70fa3          	sb	a5,-33(a4) # 8000c0a3 <_ZL9finishedD>
    thread_dispatch();
    800040cc:	ffffd097          	auipc	ra,0xffffd
    800040d0:	2bc080e7          	jalr	700(ra) # 80001388 <_Z15thread_dispatchv>
}
    800040d4:	01813083          	ld	ra,24(sp)
    800040d8:	01013403          	ld	s0,16(sp)
    800040dc:	00813483          	ld	s1,8(sp)
    800040e0:	00013903          	ld	s2,0(sp)
    800040e4:	02010113          	addi	sp,sp,32
    800040e8:	00008067          	ret

00000000800040ec <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800040ec:	fc010113          	addi	sp,sp,-64
    800040f0:	02113c23          	sd	ra,56(sp)
    800040f4:	02813823          	sd	s0,48(sp)
    800040f8:	02913423          	sd	s1,40(sp)
    800040fc:	03213023          	sd	s2,32(sp)
    80004100:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004104:	02000513          	li	a0,32
    80004108:	ffffe097          	auipc	ra,0xffffe
    8000410c:	3dc080e7          	jalr	988(ra) # 800024e4 <_Znwm>
    80004110:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80004114:	ffffe097          	auipc	ra,0xffffe
    80004118:	6a8080e7          	jalr	1704(ra) # 800027bc <_ZN6ThreadC1Ev>
    8000411c:	00008797          	auipc	a5,0x8
    80004120:	9c478793          	addi	a5,a5,-1596 # 8000bae0 <_ZTV7WorkerA+0x10>
    80004124:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80004128:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    8000412c:	00005517          	auipc	a0,0x5
    80004130:	5ac50513          	addi	a0,a0,1452 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80004134:	00002097          	auipc	ra,0x2
    80004138:	a60080e7          	jalr	-1440(ra) # 80005b94 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    8000413c:	02000513          	li	a0,32
    80004140:	ffffe097          	auipc	ra,0xffffe
    80004144:	3a4080e7          	jalr	932(ra) # 800024e4 <_Znwm>
    80004148:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    8000414c:	ffffe097          	auipc	ra,0xffffe
    80004150:	670080e7          	jalr	1648(ra) # 800027bc <_ZN6ThreadC1Ev>
    80004154:	00008797          	auipc	a5,0x8
    80004158:	9b478793          	addi	a5,a5,-1612 # 8000bb08 <_ZTV7WorkerB+0x10>
    8000415c:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004160:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004164:	00005517          	auipc	a0,0x5
    80004168:	58c50513          	addi	a0,a0,1420 # 800096f0 <CONSOLE_STATUS+0x6e0>
    8000416c:	00002097          	auipc	ra,0x2
    80004170:	a28080e7          	jalr	-1496(ra) # 80005b94 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004174:	02000513          	li	a0,32
    80004178:	ffffe097          	auipc	ra,0xffffe
    8000417c:	36c080e7          	jalr	876(ra) # 800024e4 <_Znwm>
    80004180:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80004184:	ffffe097          	auipc	ra,0xffffe
    80004188:	638080e7          	jalr	1592(ra) # 800027bc <_ZN6ThreadC1Ev>
    8000418c:	00008797          	auipc	a5,0x8
    80004190:	9a478793          	addi	a5,a5,-1628 # 8000bb30 <_ZTV7WorkerC+0x10>
    80004194:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004198:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    8000419c:	00005517          	auipc	a0,0x5
    800041a0:	56c50513          	addi	a0,a0,1388 # 80009708 <CONSOLE_STATUS+0x6f8>
    800041a4:	00002097          	auipc	ra,0x2
    800041a8:	9f0080e7          	jalr	-1552(ra) # 80005b94 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800041ac:	02000513          	li	a0,32
    800041b0:	ffffe097          	auipc	ra,0xffffe
    800041b4:	334080e7          	jalr	820(ra) # 800024e4 <_Znwm>
    800041b8:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800041bc:	ffffe097          	auipc	ra,0xffffe
    800041c0:	600080e7          	jalr	1536(ra) # 800027bc <_ZN6ThreadC1Ev>
    800041c4:	00008797          	auipc	a5,0x8
    800041c8:	99478793          	addi	a5,a5,-1644 # 8000bb58 <_ZTV7WorkerD+0x10>
    800041cc:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800041d0:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800041d4:	00005517          	auipc	a0,0x5
    800041d8:	54c50513          	addi	a0,a0,1356 # 80009720 <CONSOLE_STATUS+0x710>
    800041dc:	00002097          	auipc	ra,0x2
    800041e0:	9b8080e7          	jalr	-1608(ra) # 80005b94 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800041e4:	00000493          	li	s1,0
    800041e8:	00300793          	li	a5,3
    800041ec:	0297c663          	blt	a5,s1,80004218 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800041f0:	00349793          	slli	a5,s1,0x3
    800041f4:	fe040713          	addi	a4,s0,-32
    800041f8:	00f707b3          	add	a5,a4,a5
    800041fc:	fe07b503          	ld	a0,-32(a5)
    80004200:	ffffe097          	auipc	ra,0xffffe
    80004204:	5ec080e7          	jalr	1516(ra) # 800027ec <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004208:	0014849b          	addiw	s1,s1,1
    8000420c:	fddff06f          	j	800041e8 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004210:	ffffe097          	auipc	ra,0xffffe
    80004214:	630080e7          	jalr	1584(ra) # 80002840 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004218:	00008797          	auipc	a5,0x8
    8000421c:	e887c783          	lbu	a5,-376(a5) # 8000c0a0 <_ZL9finishedA>
    80004220:	fe0788e3          	beqz	a5,80004210 <_Z20Threads_CPP_API_testv+0x124>
    80004224:	00008797          	auipc	a5,0x8
    80004228:	e7d7c783          	lbu	a5,-387(a5) # 8000c0a1 <_ZL9finishedB>
    8000422c:	fe0782e3          	beqz	a5,80004210 <_Z20Threads_CPP_API_testv+0x124>
    80004230:	00008797          	auipc	a5,0x8
    80004234:	e727c783          	lbu	a5,-398(a5) # 8000c0a2 <_ZL9finishedC>
    80004238:	fc078ce3          	beqz	a5,80004210 <_Z20Threads_CPP_API_testv+0x124>
    8000423c:	00008797          	auipc	a5,0x8
    80004240:	e677c783          	lbu	a5,-409(a5) # 8000c0a3 <_ZL9finishedD>
    80004244:	fc0786e3          	beqz	a5,80004210 <_Z20Threads_CPP_API_testv+0x124>
    80004248:	fc040493          	addi	s1,s0,-64
    8000424c:	0080006f          	j	80004254 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004250:	00848493          	addi	s1,s1,8
    80004254:	fe040793          	addi	a5,s0,-32
    80004258:	08f48663          	beq	s1,a5,800042e4 <_Z20Threads_CPP_API_testv+0x1f8>
    8000425c:	0004b503          	ld	a0,0(s1)
    80004260:	fe0508e3          	beqz	a0,80004250 <_Z20Threads_CPP_API_testv+0x164>
    80004264:	00053783          	ld	a5,0(a0)
    80004268:	0087b783          	ld	a5,8(a5)
    8000426c:	000780e7          	jalr	a5
    80004270:	fe1ff06f          	j	80004250 <_Z20Threads_CPP_API_testv+0x164>
    80004274:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004278:	00048513          	mv	a0,s1
    8000427c:	ffffe097          	auipc	ra,0xffffe
    80004280:	2b8080e7          	jalr	696(ra) # 80002534 <_ZdlPv>
    80004284:	00090513          	mv	a0,s2
    80004288:	00009097          	auipc	ra,0x9
    8000428c:	f20080e7          	jalr	-224(ra) # 8000d1a8 <_Unwind_Resume>
    80004290:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004294:	00048513          	mv	a0,s1
    80004298:	ffffe097          	auipc	ra,0xffffe
    8000429c:	29c080e7          	jalr	668(ra) # 80002534 <_ZdlPv>
    800042a0:	00090513          	mv	a0,s2
    800042a4:	00009097          	auipc	ra,0x9
    800042a8:	f04080e7          	jalr	-252(ra) # 8000d1a8 <_Unwind_Resume>
    800042ac:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    800042b0:	00048513          	mv	a0,s1
    800042b4:	ffffe097          	auipc	ra,0xffffe
    800042b8:	280080e7          	jalr	640(ra) # 80002534 <_ZdlPv>
    800042bc:	00090513          	mv	a0,s2
    800042c0:	00009097          	auipc	ra,0x9
    800042c4:	ee8080e7          	jalr	-280(ra) # 8000d1a8 <_Unwind_Resume>
    800042c8:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800042cc:	00048513          	mv	a0,s1
    800042d0:	ffffe097          	auipc	ra,0xffffe
    800042d4:	264080e7          	jalr	612(ra) # 80002534 <_ZdlPv>
    800042d8:	00090513          	mv	a0,s2
    800042dc:	00009097          	auipc	ra,0x9
    800042e0:	ecc080e7          	jalr	-308(ra) # 8000d1a8 <_Unwind_Resume>
}
    800042e4:	03813083          	ld	ra,56(sp)
    800042e8:	03013403          	ld	s0,48(sp)
    800042ec:	02813483          	ld	s1,40(sp)
    800042f0:	02013903          	ld	s2,32(sp)
    800042f4:	04010113          	addi	sp,sp,64
    800042f8:	00008067          	ret

00000000800042fc <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800042fc:	ff010113          	addi	sp,sp,-16
    80004300:	00113423          	sd	ra,8(sp)
    80004304:	00813023          	sd	s0,0(sp)
    80004308:	01010413          	addi	s0,sp,16
    8000430c:	00007797          	auipc	a5,0x7
    80004310:	7d478793          	addi	a5,a5,2004 # 8000bae0 <_ZTV7WorkerA+0x10>
    80004314:	00f53023          	sd	a5,0(a0)
    80004318:	ffffe097          	auipc	ra,0xffffe
    8000431c:	380080e7          	jalr	896(ra) # 80002698 <_ZN6ThreadD1Ev>
    80004320:	00813083          	ld	ra,8(sp)
    80004324:	00013403          	ld	s0,0(sp)
    80004328:	01010113          	addi	sp,sp,16
    8000432c:	00008067          	ret

0000000080004330 <_ZN7WorkerAD0Ev>:
    80004330:	fe010113          	addi	sp,sp,-32
    80004334:	00113c23          	sd	ra,24(sp)
    80004338:	00813823          	sd	s0,16(sp)
    8000433c:	00913423          	sd	s1,8(sp)
    80004340:	02010413          	addi	s0,sp,32
    80004344:	00050493          	mv	s1,a0
    80004348:	00007797          	auipc	a5,0x7
    8000434c:	79878793          	addi	a5,a5,1944 # 8000bae0 <_ZTV7WorkerA+0x10>
    80004350:	00f53023          	sd	a5,0(a0)
    80004354:	ffffe097          	auipc	ra,0xffffe
    80004358:	344080e7          	jalr	836(ra) # 80002698 <_ZN6ThreadD1Ev>
    8000435c:	00048513          	mv	a0,s1
    80004360:	ffffe097          	auipc	ra,0xffffe
    80004364:	1d4080e7          	jalr	468(ra) # 80002534 <_ZdlPv>
    80004368:	01813083          	ld	ra,24(sp)
    8000436c:	01013403          	ld	s0,16(sp)
    80004370:	00813483          	ld	s1,8(sp)
    80004374:	02010113          	addi	sp,sp,32
    80004378:	00008067          	ret

000000008000437c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    8000437c:	ff010113          	addi	sp,sp,-16
    80004380:	00113423          	sd	ra,8(sp)
    80004384:	00813023          	sd	s0,0(sp)
    80004388:	01010413          	addi	s0,sp,16
    8000438c:	00007797          	auipc	a5,0x7
    80004390:	77c78793          	addi	a5,a5,1916 # 8000bb08 <_ZTV7WorkerB+0x10>
    80004394:	00f53023          	sd	a5,0(a0)
    80004398:	ffffe097          	auipc	ra,0xffffe
    8000439c:	300080e7          	jalr	768(ra) # 80002698 <_ZN6ThreadD1Ev>
    800043a0:	00813083          	ld	ra,8(sp)
    800043a4:	00013403          	ld	s0,0(sp)
    800043a8:	01010113          	addi	sp,sp,16
    800043ac:	00008067          	ret

00000000800043b0 <_ZN7WorkerBD0Ev>:
    800043b0:	fe010113          	addi	sp,sp,-32
    800043b4:	00113c23          	sd	ra,24(sp)
    800043b8:	00813823          	sd	s0,16(sp)
    800043bc:	00913423          	sd	s1,8(sp)
    800043c0:	02010413          	addi	s0,sp,32
    800043c4:	00050493          	mv	s1,a0
    800043c8:	00007797          	auipc	a5,0x7
    800043cc:	74078793          	addi	a5,a5,1856 # 8000bb08 <_ZTV7WorkerB+0x10>
    800043d0:	00f53023          	sd	a5,0(a0)
    800043d4:	ffffe097          	auipc	ra,0xffffe
    800043d8:	2c4080e7          	jalr	708(ra) # 80002698 <_ZN6ThreadD1Ev>
    800043dc:	00048513          	mv	a0,s1
    800043e0:	ffffe097          	auipc	ra,0xffffe
    800043e4:	154080e7          	jalr	340(ra) # 80002534 <_ZdlPv>
    800043e8:	01813083          	ld	ra,24(sp)
    800043ec:	01013403          	ld	s0,16(sp)
    800043f0:	00813483          	ld	s1,8(sp)
    800043f4:	02010113          	addi	sp,sp,32
    800043f8:	00008067          	ret

00000000800043fc <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800043fc:	ff010113          	addi	sp,sp,-16
    80004400:	00113423          	sd	ra,8(sp)
    80004404:	00813023          	sd	s0,0(sp)
    80004408:	01010413          	addi	s0,sp,16
    8000440c:	00007797          	auipc	a5,0x7
    80004410:	72478793          	addi	a5,a5,1828 # 8000bb30 <_ZTV7WorkerC+0x10>
    80004414:	00f53023          	sd	a5,0(a0)
    80004418:	ffffe097          	auipc	ra,0xffffe
    8000441c:	280080e7          	jalr	640(ra) # 80002698 <_ZN6ThreadD1Ev>
    80004420:	00813083          	ld	ra,8(sp)
    80004424:	00013403          	ld	s0,0(sp)
    80004428:	01010113          	addi	sp,sp,16
    8000442c:	00008067          	ret

0000000080004430 <_ZN7WorkerCD0Ev>:
    80004430:	fe010113          	addi	sp,sp,-32
    80004434:	00113c23          	sd	ra,24(sp)
    80004438:	00813823          	sd	s0,16(sp)
    8000443c:	00913423          	sd	s1,8(sp)
    80004440:	02010413          	addi	s0,sp,32
    80004444:	00050493          	mv	s1,a0
    80004448:	00007797          	auipc	a5,0x7
    8000444c:	6e878793          	addi	a5,a5,1768 # 8000bb30 <_ZTV7WorkerC+0x10>
    80004450:	00f53023          	sd	a5,0(a0)
    80004454:	ffffe097          	auipc	ra,0xffffe
    80004458:	244080e7          	jalr	580(ra) # 80002698 <_ZN6ThreadD1Ev>
    8000445c:	00048513          	mv	a0,s1
    80004460:	ffffe097          	auipc	ra,0xffffe
    80004464:	0d4080e7          	jalr	212(ra) # 80002534 <_ZdlPv>
    80004468:	01813083          	ld	ra,24(sp)
    8000446c:	01013403          	ld	s0,16(sp)
    80004470:	00813483          	ld	s1,8(sp)
    80004474:	02010113          	addi	sp,sp,32
    80004478:	00008067          	ret

000000008000447c <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    8000447c:	ff010113          	addi	sp,sp,-16
    80004480:	00113423          	sd	ra,8(sp)
    80004484:	00813023          	sd	s0,0(sp)
    80004488:	01010413          	addi	s0,sp,16
    8000448c:	00007797          	auipc	a5,0x7
    80004490:	6cc78793          	addi	a5,a5,1740 # 8000bb58 <_ZTV7WorkerD+0x10>
    80004494:	00f53023          	sd	a5,0(a0)
    80004498:	ffffe097          	auipc	ra,0xffffe
    8000449c:	200080e7          	jalr	512(ra) # 80002698 <_ZN6ThreadD1Ev>
    800044a0:	00813083          	ld	ra,8(sp)
    800044a4:	00013403          	ld	s0,0(sp)
    800044a8:	01010113          	addi	sp,sp,16
    800044ac:	00008067          	ret

00000000800044b0 <_ZN7WorkerDD0Ev>:
    800044b0:	fe010113          	addi	sp,sp,-32
    800044b4:	00113c23          	sd	ra,24(sp)
    800044b8:	00813823          	sd	s0,16(sp)
    800044bc:	00913423          	sd	s1,8(sp)
    800044c0:	02010413          	addi	s0,sp,32
    800044c4:	00050493          	mv	s1,a0
    800044c8:	00007797          	auipc	a5,0x7
    800044cc:	69078793          	addi	a5,a5,1680 # 8000bb58 <_ZTV7WorkerD+0x10>
    800044d0:	00f53023          	sd	a5,0(a0)
    800044d4:	ffffe097          	auipc	ra,0xffffe
    800044d8:	1c4080e7          	jalr	452(ra) # 80002698 <_ZN6ThreadD1Ev>
    800044dc:	00048513          	mv	a0,s1
    800044e0:	ffffe097          	auipc	ra,0xffffe
    800044e4:	054080e7          	jalr	84(ra) # 80002534 <_ZdlPv>
    800044e8:	01813083          	ld	ra,24(sp)
    800044ec:	01013403          	ld	s0,16(sp)
    800044f0:	00813483          	ld	s1,8(sp)
    800044f4:	02010113          	addi	sp,sp,32
    800044f8:	00008067          	ret

00000000800044fc <_ZN7WorkerA3runEv>:
    void run() override {
    800044fc:	ff010113          	addi	sp,sp,-16
    80004500:	00113423          	sd	ra,8(sp)
    80004504:	00813023          	sd	s0,0(sp)
    80004508:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    8000450c:	00000593          	li	a1,0
    80004510:	fffff097          	auipc	ra,0xfffff
    80004514:	774080e7          	jalr	1908(ra) # 80003c84 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004518:	00813083          	ld	ra,8(sp)
    8000451c:	00013403          	ld	s0,0(sp)
    80004520:	01010113          	addi	sp,sp,16
    80004524:	00008067          	ret

0000000080004528 <_ZN7WorkerB3runEv>:
    void run() override {
    80004528:	ff010113          	addi	sp,sp,-16
    8000452c:	00113423          	sd	ra,8(sp)
    80004530:	00813023          	sd	s0,0(sp)
    80004534:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004538:	00000593          	li	a1,0
    8000453c:	00000097          	auipc	ra,0x0
    80004540:	814080e7          	jalr	-2028(ra) # 80003d50 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004544:	00813083          	ld	ra,8(sp)
    80004548:	00013403          	ld	s0,0(sp)
    8000454c:	01010113          	addi	sp,sp,16
    80004550:	00008067          	ret

0000000080004554 <_ZN7WorkerC3runEv>:
    void run() override {
    80004554:	ff010113          	addi	sp,sp,-16
    80004558:	00113423          	sd	ra,8(sp)
    8000455c:	00813023          	sd	s0,0(sp)
    80004560:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004564:	00000593          	li	a1,0
    80004568:	00000097          	auipc	ra,0x0
    8000456c:	8bc080e7          	jalr	-1860(ra) # 80003e24 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004570:	00813083          	ld	ra,8(sp)
    80004574:	00013403          	ld	s0,0(sp)
    80004578:	01010113          	addi	sp,sp,16
    8000457c:	00008067          	ret

0000000080004580 <_ZN7WorkerD3runEv>:
    void run() override {
    80004580:	ff010113          	addi	sp,sp,-16
    80004584:	00113423          	sd	ra,8(sp)
    80004588:	00813023          	sd	s0,0(sp)
    8000458c:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004590:	00000593          	li	a1,0
    80004594:	00000097          	auipc	ra,0x0
    80004598:	a10080e7          	jalr	-1520(ra) # 80003fa4 <_ZN7WorkerD11workerBodyDEPv>
    }
    8000459c:	00813083          	ld	ra,8(sp)
    800045a0:	00013403          	ld	s0,0(sp)
    800045a4:	01010113          	addi	sp,sp,16
    800045a8:	00008067          	ret

00000000800045ac <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800045ac:	f8010113          	addi	sp,sp,-128
    800045b0:	06113c23          	sd	ra,120(sp)
    800045b4:	06813823          	sd	s0,112(sp)
    800045b8:	06913423          	sd	s1,104(sp)
    800045bc:	07213023          	sd	s2,96(sp)
    800045c0:	05313c23          	sd	s3,88(sp)
    800045c4:	05413823          	sd	s4,80(sp)
    800045c8:	05513423          	sd	s5,72(sp)
    800045cc:	05613023          	sd	s6,64(sp)
    800045d0:	03713c23          	sd	s7,56(sp)
    800045d4:	03813823          	sd	s8,48(sp)
    800045d8:	03913423          	sd	s9,40(sp)
    800045dc:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800045e0:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800045e4:	00005517          	auipc	a0,0x5
    800045e8:	f7450513          	addi	a0,a0,-140 # 80009558 <CONSOLE_STATUS+0x548>
    800045ec:	00001097          	auipc	ra,0x1
    800045f0:	5a8080e7          	jalr	1448(ra) # 80005b94 <_Z11printStringPKc>
    getString(input, 30);
    800045f4:	01e00593          	li	a1,30
    800045f8:	f8040493          	addi	s1,s0,-128
    800045fc:	00048513          	mv	a0,s1
    80004600:	00001097          	auipc	ra,0x1
    80004604:	61c080e7          	jalr	1564(ra) # 80005c1c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004608:	00048513          	mv	a0,s1
    8000460c:	00001097          	auipc	ra,0x1
    80004610:	6e8080e7          	jalr	1768(ra) # 80005cf4 <_Z11stringToIntPKc>
    80004614:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004618:	00005517          	auipc	a0,0x5
    8000461c:	f6050513          	addi	a0,a0,-160 # 80009578 <CONSOLE_STATUS+0x568>
    80004620:	00001097          	auipc	ra,0x1
    80004624:	574080e7          	jalr	1396(ra) # 80005b94 <_Z11printStringPKc>
    getString(input, 30);
    80004628:	01e00593          	li	a1,30
    8000462c:	00048513          	mv	a0,s1
    80004630:	00001097          	auipc	ra,0x1
    80004634:	5ec080e7          	jalr	1516(ra) # 80005c1c <_Z9getStringPci>
    n = stringToInt(input);
    80004638:	00048513          	mv	a0,s1
    8000463c:	00001097          	auipc	ra,0x1
    80004640:	6b8080e7          	jalr	1720(ra) # 80005cf4 <_Z11stringToIntPKc>
    80004644:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004648:	00005517          	auipc	a0,0x5
    8000464c:	f5050513          	addi	a0,a0,-176 # 80009598 <CONSOLE_STATUS+0x588>
    80004650:	00001097          	auipc	ra,0x1
    80004654:	544080e7          	jalr	1348(ra) # 80005b94 <_Z11printStringPKc>
    printInt(threadNum);
    80004658:	00000613          	li	a2,0
    8000465c:	00a00593          	li	a1,10
    80004660:	00098513          	mv	a0,s3
    80004664:	00001097          	auipc	ra,0x1
    80004668:	6e0080e7          	jalr	1760(ra) # 80005d44 <_Z8printIntiii>
    printString(" i velicina bafera ");
    8000466c:	00005517          	auipc	a0,0x5
    80004670:	f4450513          	addi	a0,a0,-188 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80004674:	00001097          	auipc	ra,0x1
    80004678:	520080e7          	jalr	1312(ra) # 80005b94 <_Z11printStringPKc>
    printInt(n);
    8000467c:	00000613          	li	a2,0
    80004680:	00a00593          	li	a1,10
    80004684:	00048513          	mv	a0,s1
    80004688:	00001097          	auipc	ra,0x1
    8000468c:	6bc080e7          	jalr	1724(ra) # 80005d44 <_Z8printIntiii>
    printString(".\n");
    80004690:	00005517          	auipc	a0,0x5
    80004694:	f3850513          	addi	a0,a0,-200 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80004698:	00001097          	auipc	ra,0x1
    8000469c:	4fc080e7          	jalr	1276(ra) # 80005b94 <_Z11printStringPKc>
    if (threadNum > n) {
    800046a0:	0334c463          	blt	s1,s3,800046c8 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800046a4:	03305c63          	blez	s3,800046dc <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800046a8:	03800513          	li	a0,56
    800046ac:	ffffe097          	auipc	ra,0xffffe
    800046b0:	e38080e7          	jalr	-456(ra) # 800024e4 <_Znwm>
    800046b4:	00050a93          	mv	s5,a0
    800046b8:	00048593          	mv	a1,s1
    800046bc:	00001097          	auipc	ra,0x1
    800046c0:	7a8080e7          	jalr	1960(ra) # 80005e64 <_ZN9BufferCPPC1Ei>
    800046c4:	0300006f          	j	800046f4 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800046c8:	00005517          	auipc	a0,0x5
    800046cc:	f0850513          	addi	a0,a0,-248 # 800095d0 <CONSOLE_STATUS+0x5c0>
    800046d0:	00001097          	auipc	ra,0x1
    800046d4:	4c4080e7          	jalr	1220(ra) # 80005b94 <_Z11printStringPKc>
        return;
    800046d8:	0140006f          	j	800046ec <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800046dc:	00005517          	auipc	a0,0x5
    800046e0:	f3450513          	addi	a0,a0,-204 # 80009610 <CONSOLE_STATUS+0x600>
    800046e4:	00001097          	auipc	ra,0x1
    800046e8:	4b0080e7          	jalr	1200(ra) # 80005b94 <_Z11printStringPKc>
        return;
    800046ec:	000c0113          	mv	sp,s8
    800046f0:	2140006f          	j	80004904 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800046f4:	01000513          	li	a0,16
    800046f8:	ffffe097          	auipc	ra,0xffffe
    800046fc:	dec080e7          	jalr	-532(ra) # 800024e4 <_Znwm>
    80004700:	00050913          	mv	s2,a0
    80004704:	00000593          	li	a1,0
    80004708:	ffffe097          	auipc	ra,0xffffe
    8000470c:	188080e7          	jalr	392(ra) # 80002890 <_ZN9SemaphoreC1Ej>
    80004710:	00008797          	auipc	a5,0x8
    80004714:	9b27b023          	sd	s2,-1632(a5) # 8000c0b0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004718:	00399793          	slli	a5,s3,0x3
    8000471c:	00f78793          	addi	a5,a5,15
    80004720:	ff07f793          	andi	a5,a5,-16
    80004724:	40f10133          	sub	sp,sp,a5
    80004728:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    8000472c:	0019871b          	addiw	a4,s3,1
    80004730:	00171793          	slli	a5,a4,0x1
    80004734:	00e787b3          	add	a5,a5,a4
    80004738:	00379793          	slli	a5,a5,0x3
    8000473c:	00f78793          	addi	a5,a5,15
    80004740:	ff07f793          	andi	a5,a5,-16
    80004744:	40f10133          	sub	sp,sp,a5
    80004748:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    8000474c:	00199493          	slli	s1,s3,0x1
    80004750:	013484b3          	add	s1,s1,s3
    80004754:	00349493          	slli	s1,s1,0x3
    80004758:	009b04b3          	add	s1,s6,s1
    8000475c:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004760:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004764:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004768:	02800513          	li	a0,40
    8000476c:	ffffe097          	auipc	ra,0xffffe
    80004770:	d78080e7          	jalr	-648(ra) # 800024e4 <_Znwm>
    80004774:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004778:	ffffe097          	auipc	ra,0xffffe
    8000477c:	044080e7          	jalr	68(ra) # 800027bc <_ZN6ThreadC1Ev>
    80004780:	00007797          	auipc	a5,0x7
    80004784:	45078793          	addi	a5,a5,1104 # 8000bbd0 <_ZTV8Consumer+0x10>
    80004788:	00fbb023          	sd	a5,0(s7)
    8000478c:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004790:	000b8513          	mv	a0,s7
    80004794:	ffffe097          	auipc	ra,0xffffe
    80004798:	058080e7          	jalr	88(ra) # 800027ec <_ZN6Thread5startEv>
    threadData[0].id = 0;
    8000479c:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800047a0:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800047a4:	00008797          	auipc	a5,0x8
    800047a8:	90c7b783          	ld	a5,-1780(a5) # 8000c0b0 <_ZL10waitForAll>
    800047ac:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800047b0:	02800513          	li	a0,40
    800047b4:	ffffe097          	auipc	ra,0xffffe
    800047b8:	d30080e7          	jalr	-720(ra) # 800024e4 <_Znwm>
    800047bc:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800047c0:	ffffe097          	auipc	ra,0xffffe
    800047c4:	ffc080e7          	jalr	-4(ra) # 800027bc <_ZN6ThreadC1Ev>
    800047c8:	00007797          	auipc	a5,0x7
    800047cc:	3b878793          	addi	a5,a5,952 # 8000bb80 <_ZTV16ProducerKeyborad+0x10>
    800047d0:	00f4b023          	sd	a5,0(s1)
    800047d4:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800047d8:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800047dc:	00048513          	mv	a0,s1
    800047e0:	ffffe097          	auipc	ra,0xffffe
    800047e4:	00c080e7          	jalr	12(ra) # 800027ec <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800047e8:	00100913          	li	s2,1
    800047ec:	0300006f          	j	8000481c <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800047f0:	00007797          	auipc	a5,0x7
    800047f4:	3b878793          	addi	a5,a5,952 # 8000bba8 <_ZTV8Producer+0x10>
    800047f8:	00fcb023          	sd	a5,0(s9)
    800047fc:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004800:	00391793          	slli	a5,s2,0x3
    80004804:	00fa07b3          	add	a5,s4,a5
    80004808:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    8000480c:	000c8513          	mv	a0,s9
    80004810:	ffffe097          	auipc	ra,0xffffe
    80004814:	fdc080e7          	jalr	-36(ra) # 800027ec <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004818:	0019091b          	addiw	s2,s2,1
    8000481c:	05395263          	bge	s2,s3,80004860 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004820:	00191493          	slli	s1,s2,0x1
    80004824:	012484b3          	add	s1,s1,s2
    80004828:	00349493          	slli	s1,s1,0x3
    8000482c:	009b04b3          	add	s1,s6,s1
    80004830:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004834:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004838:	00008797          	auipc	a5,0x8
    8000483c:	8787b783          	ld	a5,-1928(a5) # 8000c0b0 <_ZL10waitForAll>
    80004840:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004844:	02800513          	li	a0,40
    80004848:	ffffe097          	auipc	ra,0xffffe
    8000484c:	c9c080e7          	jalr	-868(ra) # 800024e4 <_Znwm>
    80004850:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004854:	ffffe097          	auipc	ra,0xffffe
    80004858:	f68080e7          	jalr	-152(ra) # 800027bc <_ZN6ThreadC1Ev>
    8000485c:	f95ff06f          	j	800047f0 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004860:	ffffe097          	auipc	ra,0xffffe
    80004864:	fe0080e7          	jalr	-32(ra) # 80002840 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004868:	00000493          	li	s1,0
    8000486c:	0099ce63          	blt	s3,s1,80004888 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004870:	00008517          	auipc	a0,0x8
    80004874:	84053503          	ld	a0,-1984(a0) # 8000c0b0 <_ZL10waitForAll>
    80004878:	ffffe097          	auipc	ra,0xffffe
    8000487c:	054080e7          	jalr	84(ra) # 800028cc <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004880:	0014849b          	addiw	s1,s1,1
    80004884:	fe9ff06f          	j	8000486c <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004888:	00008517          	auipc	a0,0x8
    8000488c:	82853503          	ld	a0,-2008(a0) # 8000c0b0 <_ZL10waitForAll>
    80004890:	00050863          	beqz	a0,800048a0 <_Z20testConsumerProducerv+0x2f4>
    80004894:	00053783          	ld	a5,0(a0)
    80004898:	0087b783          	ld	a5,8(a5)
    8000489c:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800048a0:	00000493          	li	s1,0
    800048a4:	0080006f          	j	800048ac <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800048a8:	0014849b          	addiw	s1,s1,1
    800048ac:	0334d263          	bge	s1,s3,800048d0 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800048b0:	00349793          	slli	a5,s1,0x3
    800048b4:	00fa07b3          	add	a5,s4,a5
    800048b8:	0007b503          	ld	a0,0(a5)
    800048bc:	fe0506e3          	beqz	a0,800048a8 <_Z20testConsumerProducerv+0x2fc>
    800048c0:	00053783          	ld	a5,0(a0)
    800048c4:	0087b783          	ld	a5,8(a5)
    800048c8:	000780e7          	jalr	a5
    800048cc:	fddff06f          	j	800048a8 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800048d0:	000b8a63          	beqz	s7,800048e4 <_Z20testConsumerProducerv+0x338>
    800048d4:	000bb783          	ld	a5,0(s7)
    800048d8:	0087b783          	ld	a5,8(a5)
    800048dc:	000b8513          	mv	a0,s7
    800048e0:	000780e7          	jalr	a5
    delete buffer;
    800048e4:	000a8e63          	beqz	s5,80004900 <_Z20testConsumerProducerv+0x354>
    800048e8:	000a8513          	mv	a0,s5
    800048ec:	00002097          	auipc	ra,0x2
    800048f0:	870080e7          	jalr	-1936(ra) # 8000615c <_ZN9BufferCPPD1Ev>
    800048f4:	000a8513          	mv	a0,s5
    800048f8:	ffffe097          	auipc	ra,0xffffe
    800048fc:	c3c080e7          	jalr	-964(ra) # 80002534 <_ZdlPv>
    80004900:	000c0113          	mv	sp,s8
}
    80004904:	f8040113          	addi	sp,s0,-128
    80004908:	07813083          	ld	ra,120(sp)
    8000490c:	07013403          	ld	s0,112(sp)
    80004910:	06813483          	ld	s1,104(sp)
    80004914:	06013903          	ld	s2,96(sp)
    80004918:	05813983          	ld	s3,88(sp)
    8000491c:	05013a03          	ld	s4,80(sp)
    80004920:	04813a83          	ld	s5,72(sp)
    80004924:	04013b03          	ld	s6,64(sp)
    80004928:	03813b83          	ld	s7,56(sp)
    8000492c:	03013c03          	ld	s8,48(sp)
    80004930:	02813c83          	ld	s9,40(sp)
    80004934:	08010113          	addi	sp,sp,128
    80004938:	00008067          	ret
    8000493c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004940:	000a8513          	mv	a0,s5
    80004944:	ffffe097          	auipc	ra,0xffffe
    80004948:	bf0080e7          	jalr	-1040(ra) # 80002534 <_ZdlPv>
    8000494c:	00048513          	mv	a0,s1
    80004950:	00009097          	auipc	ra,0x9
    80004954:	858080e7          	jalr	-1960(ra) # 8000d1a8 <_Unwind_Resume>
    80004958:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    8000495c:	00090513          	mv	a0,s2
    80004960:	ffffe097          	auipc	ra,0xffffe
    80004964:	bd4080e7          	jalr	-1068(ra) # 80002534 <_ZdlPv>
    80004968:	00048513          	mv	a0,s1
    8000496c:	00009097          	auipc	ra,0x9
    80004970:	83c080e7          	jalr	-1988(ra) # 8000d1a8 <_Unwind_Resume>
    80004974:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004978:	000b8513          	mv	a0,s7
    8000497c:	ffffe097          	auipc	ra,0xffffe
    80004980:	bb8080e7          	jalr	-1096(ra) # 80002534 <_ZdlPv>
    80004984:	00048513          	mv	a0,s1
    80004988:	00009097          	auipc	ra,0x9
    8000498c:	820080e7          	jalr	-2016(ra) # 8000d1a8 <_Unwind_Resume>
    80004990:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004994:	00048513          	mv	a0,s1
    80004998:	ffffe097          	auipc	ra,0xffffe
    8000499c:	b9c080e7          	jalr	-1124(ra) # 80002534 <_ZdlPv>
    800049a0:	00090513          	mv	a0,s2
    800049a4:	00009097          	auipc	ra,0x9
    800049a8:	804080e7          	jalr	-2044(ra) # 8000d1a8 <_Unwind_Resume>
    800049ac:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800049b0:	000c8513          	mv	a0,s9
    800049b4:	ffffe097          	auipc	ra,0xffffe
    800049b8:	b80080e7          	jalr	-1152(ra) # 80002534 <_ZdlPv>
    800049bc:	00048513          	mv	a0,s1
    800049c0:	00008097          	auipc	ra,0x8
    800049c4:	7e8080e7          	jalr	2024(ra) # 8000d1a8 <_Unwind_Resume>

00000000800049c8 <_ZN8Consumer3runEv>:
    void run() override {
    800049c8:	fd010113          	addi	sp,sp,-48
    800049cc:	02113423          	sd	ra,40(sp)
    800049d0:	02813023          	sd	s0,32(sp)
    800049d4:	00913c23          	sd	s1,24(sp)
    800049d8:	01213823          	sd	s2,16(sp)
    800049dc:	01313423          	sd	s3,8(sp)
    800049e0:	03010413          	addi	s0,sp,48
    800049e4:	00050913          	mv	s2,a0
        int i = 0;
    800049e8:	00000993          	li	s3,0
    800049ec:	0100006f          	j	800049fc <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800049f0:	00a00513          	li	a0,10
    800049f4:	ffffe097          	auipc	ra,0xffffe
    800049f8:	fc0080e7          	jalr	-64(ra) # 800029b4 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800049fc:	00007797          	auipc	a5,0x7
    80004a00:	6ac7a783          	lw	a5,1708(a5) # 8000c0a8 <_ZL9threadEnd>
    80004a04:	04079a63          	bnez	a5,80004a58 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004a08:	02093783          	ld	a5,32(s2)
    80004a0c:	0087b503          	ld	a0,8(a5)
    80004a10:	00001097          	auipc	ra,0x1
    80004a14:	638080e7          	jalr	1592(ra) # 80006048 <_ZN9BufferCPP3getEv>
            i++;
    80004a18:	0019849b          	addiw	s1,s3,1
    80004a1c:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004a20:	0ff57513          	andi	a0,a0,255
    80004a24:	ffffe097          	auipc	ra,0xffffe
    80004a28:	f90080e7          	jalr	-112(ra) # 800029b4 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004a2c:	05000793          	li	a5,80
    80004a30:	02f4e4bb          	remw	s1,s1,a5
    80004a34:	fc0494e3          	bnez	s1,800049fc <_ZN8Consumer3runEv+0x34>
    80004a38:	fb9ff06f          	j	800049f0 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004a3c:	02093783          	ld	a5,32(s2)
    80004a40:	0087b503          	ld	a0,8(a5)
    80004a44:	00001097          	auipc	ra,0x1
    80004a48:	604080e7          	jalr	1540(ra) # 80006048 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004a4c:	0ff57513          	andi	a0,a0,255
    80004a50:	ffffe097          	auipc	ra,0xffffe
    80004a54:	f64080e7          	jalr	-156(ra) # 800029b4 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004a58:	02093783          	ld	a5,32(s2)
    80004a5c:	0087b503          	ld	a0,8(a5)
    80004a60:	00001097          	auipc	ra,0x1
    80004a64:	674080e7          	jalr	1652(ra) # 800060d4 <_ZN9BufferCPP6getCntEv>
    80004a68:	fca04ae3          	bgtz	a0,80004a3c <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004a6c:	02093783          	ld	a5,32(s2)
    80004a70:	0107b503          	ld	a0,16(a5)
    80004a74:	ffffe097          	auipc	ra,0xffffe
    80004a78:	e84080e7          	jalr	-380(ra) # 800028f8 <_ZN9Semaphore6signalEv>
    }
    80004a7c:	02813083          	ld	ra,40(sp)
    80004a80:	02013403          	ld	s0,32(sp)
    80004a84:	01813483          	ld	s1,24(sp)
    80004a88:	01013903          	ld	s2,16(sp)
    80004a8c:	00813983          	ld	s3,8(sp)
    80004a90:	03010113          	addi	sp,sp,48
    80004a94:	00008067          	ret

0000000080004a98 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004a98:	ff010113          	addi	sp,sp,-16
    80004a9c:	00113423          	sd	ra,8(sp)
    80004aa0:	00813023          	sd	s0,0(sp)
    80004aa4:	01010413          	addi	s0,sp,16
    80004aa8:	00007797          	auipc	a5,0x7
    80004aac:	12878793          	addi	a5,a5,296 # 8000bbd0 <_ZTV8Consumer+0x10>
    80004ab0:	00f53023          	sd	a5,0(a0)
    80004ab4:	ffffe097          	auipc	ra,0xffffe
    80004ab8:	be4080e7          	jalr	-1052(ra) # 80002698 <_ZN6ThreadD1Ev>
    80004abc:	00813083          	ld	ra,8(sp)
    80004ac0:	00013403          	ld	s0,0(sp)
    80004ac4:	01010113          	addi	sp,sp,16
    80004ac8:	00008067          	ret

0000000080004acc <_ZN8ConsumerD0Ev>:
    80004acc:	fe010113          	addi	sp,sp,-32
    80004ad0:	00113c23          	sd	ra,24(sp)
    80004ad4:	00813823          	sd	s0,16(sp)
    80004ad8:	00913423          	sd	s1,8(sp)
    80004adc:	02010413          	addi	s0,sp,32
    80004ae0:	00050493          	mv	s1,a0
    80004ae4:	00007797          	auipc	a5,0x7
    80004ae8:	0ec78793          	addi	a5,a5,236 # 8000bbd0 <_ZTV8Consumer+0x10>
    80004aec:	00f53023          	sd	a5,0(a0)
    80004af0:	ffffe097          	auipc	ra,0xffffe
    80004af4:	ba8080e7          	jalr	-1112(ra) # 80002698 <_ZN6ThreadD1Ev>
    80004af8:	00048513          	mv	a0,s1
    80004afc:	ffffe097          	auipc	ra,0xffffe
    80004b00:	a38080e7          	jalr	-1480(ra) # 80002534 <_ZdlPv>
    80004b04:	01813083          	ld	ra,24(sp)
    80004b08:	01013403          	ld	s0,16(sp)
    80004b0c:	00813483          	ld	s1,8(sp)
    80004b10:	02010113          	addi	sp,sp,32
    80004b14:	00008067          	ret

0000000080004b18 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004b18:	ff010113          	addi	sp,sp,-16
    80004b1c:	00113423          	sd	ra,8(sp)
    80004b20:	00813023          	sd	s0,0(sp)
    80004b24:	01010413          	addi	s0,sp,16
    80004b28:	00007797          	auipc	a5,0x7
    80004b2c:	05878793          	addi	a5,a5,88 # 8000bb80 <_ZTV16ProducerKeyborad+0x10>
    80004b30:	00f53023          	sd	a5,0(a0)
    80004b34:	ffffe097          	auipc	ra,0xffffe
    80004b38:	b64080e7          	jalr	-1180(ra) # 80002698 <_ZN6ThreadD1Ev>
    80004b3c:	00813083          	ld	ra,8(sp)
    80004b40:	00013403          	ld	s0,0(sp)
    80004b44:	01010113          	addi	sp,sp,16
    80004b48:	00008067          	ret

0000000080004b4c <_ZN16ProducerKeyboradD0Ev>:
    80004b4c:	fe010113          	addi	sp,sp,-32
    80004b50:	00113c23          	sd	ra,24(sp)
    80004b54:	00813823          	sd	s0,16(sp)
    80004b58:	00913423          	sd	s1,8(sp)
    80004b5c:	02010413          	addi	s0,sp,32
    80004b60:	00050493          	mv	s1,a0
    80004b64:	00007797          	auipc	a5,0x7
    80004b68:	01c78793          	addi	a5,a5,28 # 8000bb80 <_ZTV16ProducerKeyborad+0x10>
    80004b6c:	00f53023          	sd	a5,0(a0)
    80004b70:	ffffe097          	auipc	ra,0xffffe
    80004b74:	b28080e7          	jalr	-1240(ra) # 80002698 <_ZN6ThreadD1Ev>
    80004b78:	00048513          	mv	a0,s1
    80004b7c:	ffffe097          	auipc	ra,0xffffe
    80004b80:	9b8080e7          	jalr	-1608(ra) # 80002534 <_ZdlPv>
    80004b84:	01813083          	ld	ra,24(sp)
    80004b88:	01013403          	ld	s0,16(sp)
    80004b8c:	00813483          	ld	s1,8(sp)
    80004b90:	02010113          	addi	sp,sp,32
    80004b94:	00008067          	ret

0000000080004b98 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004b98:	ff010113          	addi	sp,sp,-16
    80004b9c:	00113423          	sd	ra,8(sp)
    80004ba0:	00813023          	sd	s0,0(sp)
    80004ba4:	01010413          	addi	s0,sp,16
    80004ba8:	00007797          	auipc	a5,0x7
    80004bac:	00078793          	mv	a5,a5
    80004bb0:	00f53023          	sd	a5,0(a0)
    80004bb4:	ffffe097          	auipc	ra,0xffffe
    80004bb8:	ae4080e7          	jalr	-1308(ra) # 80002698 <_ZN6ThreadD1Ev>
    80004bbc:	00813083          	ld	ra,8(sp)
    80004bc0:	00013403          	ld	s0,0(sp)
    80004bc4:	01010113          	addi	sp,sp,16
    80004bc8:	00008067          	ret

0000000080004bcc <_ZN8ProducerD0Ev>:
    80004bcc:	fe010113          	addi	sp,sp,-32
    80004bd0:	00113c23          	sd	ra,24(sp)
    80004bd4:	00813823          	sd	s0,16(sp)
    80004bd8:	00913423          	sd	s1,8(sp)
    80004bdc:	02010413          	addi	s0,sp,32
    80004be0:	00050493          	mv	s1,a0
    80004be4:	00007797          	auipc	a5,0x7
    80004be8:	fc478793          	addi	a5,a5,-60 # 8000bba8 <_ZTV8Producer+0x10>
    80004bec:	00f53023          	sd	a5,0(a0)
    80004bf0:	ffffe097          	auipc	ra,0xffffe
    80004bf4:	aa8080e7          	jalr	-1368(ra) # 80002698 <_ZN6ThreadD1Ev>
    80004bf8:	00048513          	mv	a0,s1
    80004bfc:	ffffe097          	auipc	ra,0xffffe
    80004c00:	938080e7          	jalr	-1736(ra) # 80002534 <_ZdlPv>
    80004c04:	01813083          	ld	ra,24(sp)
    80004c08:	01013403          	ld	s0,16(sp)
    80004c0c:	00813483          	ld	s1,8(sp)
    80004c10:	02010113          	addi	sp,sp,32
    80004c14:	00008067          	ret

0000000080004c18 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004c18:	fe010113          	addi	sp,sp,-32
    80004c1c:	00113c23          	sd	ra,24(sp)
    80004c20:	00813823          	sd	s0,16(sp)
    80004c24:	00913423          	sd	s1,8(sp)
    80004c28:	02010413          	addi	s0,sp,32
    80004c2c:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004c30:	ffffd097          	auipc	ra,0xffffd
    80004c34:	960080e7          	jalr	-1696(ra) # 80001590 <_Z4getcv>
    80004c38:	0005059b          	sext.w	a1,a0
    80004c3c:	01b00793          	li	a5,27
    80004c40:	00f58c63          	beq	a1,a5,80004c58 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004c44:	0204b783          	ld	a5,32(s1)
    80004c48:	0087b503          	ld	a0,8(a5)
    80004c4c:	00001097          	auipc	ra,0x1
    80004c50:	36c080e7          	jalr	876(ra) # 80005fb8 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004c54:	fddff06f          	j	80004c30 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004c58:	00100793          	li	a5,1
    80004c5c:	00007717          	auipc	a4,0x7
    80004c60:	44f72623          	sw	a5,1100(a4) # 8000c0a8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004c64:	0204b783          	ld	a5,32(s1)
    80004c68:	02100593          	li	a1,33
    80004c6c:	0087b503          	ld	a0,8(a5)
    80004c70:	00001097          	auipc	ra,0x1
    80004c74:	348080e7          	jalr	840(ra) # 80005fb8 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004c78:	0204b783          	ld	a5,32(s1)
    80004c7c:	0107b503          	ld	a0,16(a5)
    80004c80:	ffffe097          	auipc	ra,0xffffe
    80004c84:	c78080e7          	jalr	-904(ra) # 800028f8 <_ZN9Semaphore6signalEv>
    }
    80004c88:	01813083          	ld	ra,24(sp)
    80004c8c:	01013403          	ld	s0,16(sp)
    80004c90:	00813483          	ld	s1,8(sp)
    80004c94:	02010113          	addi	sp,sp,32
    80004c98:	00008067          	ret

0000000080004c9c <_ZN8Producer3runEv>:
    void run() override {
    80004c9c:	fe010113          	addi	sp,sp,-32
    80004ca0:	00113c23          	sd	ra,24(sp)
    80004ca4:	00813823          	sd	s0,16(sp)
    80004ca8:	00913423          	sd	s1,8(sp)
    80004cac:	01213023          	sd	s2,0(sp)
    80004cb0:	02010413          	addi	s0,sp,32
    80004cb4:	00050493          	mv	s1,a0
        int i = 0;
    80004cb8:	00000913          	li	s2,0
        while (!threadEnd) {
    80004cbc:	00007797          	auipc	a5,0x7
    80004cc0:	3ec7a783          	lw	a5,1004(a5) # 8000c0a8 <_ZL9threadEnd>
    80004cc4:	04079263          	bnez	a5,80004d08 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004cc8:	0204b783          	ld	a5,32(s1)
    80004ccc:	0007a583          	lw	a1,0(a5)
    80004cd0:	0305859b          	addiw	a1,a1,48
    80004cd4:	0087b503          	ld	a0,8(a5)
    80004cd8:	00001097          	auipc	ra,0x1
    80004cdc:	2e0080e7          	jalr	736(ra) # 80005fb8 <_ZN9BufferCPP3putEi>
            i++;
    80004ce0:	0019071b          	addiw	a4,s2,1
    80004ce4:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004ce8:	0204b783          	ld	a5,32(s1)
    80004cec:	0007a783          	lw	a5,0(a5)
    80004cf0:	00e787bb          	addw	a5,a5,a4
    80004cf4:	00500513          	li	a0,5
    80004cf8:	02a7e53b          	remw	a0,a5,a0
    80004cfc:	ffffe097          	auipc	ra,0xffffe
    80004d00:	b6c080e7          	jalr	-1172(ra) # 80002868 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004d04:	fb9ff06f          	j	80004cbc <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004d08:	0204b783          	ld	a5,32(s1)
    80004d0c:	0107b503          	ld	a0,16(a5)
    80004d10:	ffffe097          	auipc	ra,0xffffe
    80004d14:	be8080e7          	jalr	-1048(ra) # 800028f8 <_ZN9Semaphore6signalEv>
    }
    80004d18:	01813083          	ld	ra,24(sp)
    80004d1c:	01013403          	ld	s0,16(sp)
    80004d20:	00813483          	ld	s1,8(sp)
    80004d24:	00013903          	ld	s2,0(sp)
    80004d28:	02010113          	addi	sp,sp,32
    80004d2c:	00008067          	ret

0000000080004d30 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004d30:	fe010113          	addi	sp,sp,-32
    80004d34:	00113c23          	sd	ra,24(sp)
    80004d38:	00813823          	sd	s0,16(sp)
    80004d3c:	00913423          	sd	s1,8(sp)
    80004d40:	01213023          	sd	s2,0(sp)
    80004d44:	02010413          	addi	s0,sp,32
    80004d48:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004d4c:	00100793          	li	a5,1
    80004d50:	02a7f863          	bgeu	a5,a0,80004d80 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004d54:	00a00793          	li	a5,10
    80004d58:	02f577b3          	remu	a5,a0,a5
    80004d5c:	02078e63          	beqz	a5,80004d98 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004d60:	fff48513          	addi	a0,s1,-1
    80004d64:	00000097          	auipc	ra,0x0
    80004d68:	fcc080e7          	jalr	-52(ra) # 80004d30 <_ZL9fibonaccim>
    80004d6c:	00050913          	mv	s2,a0
    80004d70:	ffe48513          	addi	a0,s1,-2
    80004d74:	00000097          	auipc	ra,0x0
    80004d78:	fbc080e7          	jalr	-68(ra) # 80004d30 <_ZL9fibonaccim>
    80004d7c:	00a90533          	add	a0,s2,a0
}
    80004d80:	01813083          	ld	ra,24(sp)
    80004d84:	01013403          	ld	s0,16(sp)
    80004d88:	00813483          	ld	s1,8(sp)
    80004d8c:	00013903          	ld	s2,0(sp)
    80004d90:	02010113          	addi	sp,sp,32
    80004d94:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004d98:	ffffc097          	auipc	ra,0xffffc
    80004d9c:	5f0080e7          	jalr	1520(ra) # 80001388 <_Z15thread_dispatchv>
    80004da0:	fc1ff06f          	j	80004d60 <_ZL9fibonaccim+0x30>

0000000080004da4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004da4:	fe010113          	addi	sp,sp,-32
    80004da8:	00113c23          	sd	ra,24(sp)
    80004dac:	00813823          	sd	s0,16(sp)
    80004db0:	00913423          	sd	s1,8(sp)
    80004db4:	01213023          	sd	s2,0(sp)
    80004db8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004dbc:	00a00493          	li	s1,10
    80004dc0:	0400006f          	j	80004e00 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004dc4:	00005517          	auipc	a0,0x5
    80004dc8:	8dc50513          	addi	a0,a0,-1828 # 800096a0 <CONSOLE_STATUS+0x690>
    80004dcc:	00001097          	auipc	ra,0x1
    80004dd0:	dc8080e7          	jalr	-568(ra) # 80005b94 <_Z11printStringPKc>
    80004dd4:	00000613          	li	a2,0
    80004dd8:	00a00593          	li	a1,10
    80004ddc:	00048513          	mv	a0,s1
    80004de0:	00001097          	auipc	ra,0x1
    80004de4:	f64080e7          	jalr	-156(ra) # 80005d44 <_Z8printIntiii>
    80004de8:	00004517          	auipc	a0,0x4
    80004dec:	4d050513          	addi	a0,a0,1232 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004df0:	00001097          	auipc	ra,0x1
    80004df4:	da4080e7          	jalr	-604(ra) # 80005b94 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004df8:	0014849b          	addiw	s1,s1,1
    80004dfc:	0ff4f493          	andi	s1,s1,255
    80004e00:	00c00793          	li	a5,12
    80004e04:	fc97f0e3          	bgeu	a5,s1,80004dc4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004e08:	00005517          	auipc	a0,0x5
    80004e0c:	8a050513          	addi	a0,a0,-1888 # 800096a8 <CONSOLE_STATUS+0x698>
    80004e10:	00001097          	auipc	ra,0x1
    80004e14:	d84080e7          	jalr	-636(ra) # 80005b94 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004e18:	00500313          	li	t1,5
    thread_dispatch();
    80004e1c:	ffffc097          	auipc	ra,0xffffc
    80004e20:	56c080e7          	jalr	1388(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004e24:	01000513          	li	a0,16
    80004e28:	00000097          	auipc	ra,0x0
    80004e2c:	f08080e7          	jalr	-248(ra) # 80004d30 <_ZL9fibonaccim>
    80004e30:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004e34:	00005517          	auipc	a0,0x5
    80004e38:	88450513          	addi	a0,a0,-1916 # 800096b8 <CONSOLE_STATUS+0x6a8>
    80004e3c:	00001097          	auipc	ra,0x1
    80004e40:	d58080e7          	jalr	-680(ra) # 80005b94 <_Z11printStringPKc>
    80004e44:	00000613          	li	a2,0
    80004e48:	00a00593          	li	a1,10
    80004e4c:	0009051b          	sext.w	a0,s2
    80004e50:	00001097          	auipc	ra,0x1
    80004e54:	ef4080e7          	jalr	-268(ra) # 80005d44 <_Z8printIntiii>
    80004e58:	00004517          	auipc	a0,0x4
    80004e5c:	46050513          	addi	a0,a0,1120 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004e60:	00001097          	auipc	ra,0x1
    80004e64:	d34080e7          	jalr	-716(ra) # 80005b94 <_Z11printStringPKc>
    80004e68:	0400006f          	j	80004ea8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004e6c:	00005517          	auipc	a0,0x5
    80004e70:	83450513          	addi	a0,a0,-1996 # 800096a0 <CONSOLE_STATUS+0x690>
    80004e74:	00001097          	auipc	ra,0x1
    80004e78:	d20080e7          	jalr	-736(ra) # 80005b94 <_Z11printStringPKc>
    80004e7c:	00000613          	li	a2,0
    80004e80:	00a00593          	li	a1,10
    80004e84:	00048513          	mv	a0,s1
    80004e88:	00001097          	auipc	ra,0x1
    80004e8c:	ebc080e7          	jalr	-324(ra) # 80005d44 <_Z8printIntiii>
    80004e90:	00004517          	auipc	a0,0x4
    80004e94:	42850513          	addi	a0,a0,1064 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004e98:	00001097          	auipc	ra,0x1
    80004e9c:	cfc080e7          	jalr	-772(ra) # 80005b94 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004ea0:	0014849b          	addiw	s1,s1,1
    80004ea4:	0ff4f493          	andi	s1,s1,255
    80004ea8:	00f00793          	li	a5,15
    80004eac:	fc97f0e3          	bgeu	a5,s1,80004e6c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004eb0:	00005517          	auipc	a0,0x5
    80004eb4:	81850513          	addi	a0,a0,-2024 # 800096c8 <CONSOLE_STATUS+0x6b8>
    80004eb8:	00001097          	auipc	ra,0x1
    80004ebc:	cdc080e7          	jalr	-804(ra) # 80005b94 <_Z11printStringPKc>
    finishedD = true;
    80004ec0:	00100793          	li	a5,1
    80004ec4:	00007717          	auipc	a4,0x7
    80004ec8:	1ef70a23          	sb	a5,500(a4) # 8000c0b8 <_ZL9finishedD>
    thread_dispatch();
    80004ecc:	ffffc097          	auipc	ra,0xffffc
    80004ed0:	4bc080e7          	jalr	1212(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004ed4:	01813083          	ld	ra,24(sp)
    80004ed8:	01013403          	ld	s0,16(sp)
    80004edc:	00813483          	ld	s1,8(sp)
    80004ee0:	00013903          	ld	s2,0(sp)
    80004ee4:	02010113          	addi	sp,sp,32
    80004ee8:	00008067          	ret

0000000080004eec <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004eec:	fe010113          	addi	sp,sp,-32
    80004ef0:	00113c23          	sd	ra,24(sp)
    80004ef4:	00813823          	sd	s0,16(sp)
    80004ef8:	00913423          	sd	s1,8(sp)
    80004efc:	01213023          	sd	s2,0(sp)
    80004f00:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004f04:	00000493          	li	s1,0
    80004f08:	0400006f          	j	80004f48 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004f0c:	00004517          	auipc	a0,0x4
    80004f10:	76450513          	addi	a0,a0,1892 # 80009670 <CONSOLE_STATUS+0x660>
    80004f14:	00001097          	auipc	ra,0x1
    80004f18:	c80080e7          	jalr	-896(ra) # 80005b94 <_Z11printStringPKc>
    80004f1c:	00000613          	li	a2,0
    80004f20:	00a00593          	li	a1,10
    80004f24:	00048513          	mv	a0,s1
    80004f28:	00001097          	auipc	ra,0x1
    80004f2c:	e1c080e7          	jalr	-484(ra) # 80005d44 <_Z8printIntiii>
    80004f30:	00004517          	auipc	a0,0x4
    80004f34:	38850513          	addi	a0,a0,904 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004f38:	00001097          	auipc	ra,0x1
    80004f3c:	c5c080e7          	jalr	-932(ra) # 80005b94 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004f40:	0014849b          	addiw	s1,s1,1
    80004f44:	0ff4f493          	andi	s1,s1,255
    80004f48:	00200793          	li	a5,2
    80004f4c:	fc97f0e3          	bgeu	a5,s1,80004f0c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004f50:	00004517          	auipc	a0,0x4
    80004f54:	72850513          	addi	a0,a0,1832 # 80009678 <CONSOLE_STATUS+0x668>
    80004f58:	00001097          	auipc	ra,0x1
    80004f5c:	c3c080e7          	jalr	-964(ra) # 80005b94 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004f60:	00700313          	li	t1,7
    thread_dispatch();
    80004f64:	ffffc097          	auipc	ra,0xffffc
    80004f68:	424080e7          	jalr	1060(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004f6c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004f70:	00004517          	auipc	a0,0x4
    80004f74:	71850513          	addi	a0,a0,1816 # 80009688 <CONSOLE_STATUS+0x678>
    80004f78:	00001097          	auipc	ra,0x1
    80004f7c:	c1c080e7          	jalr	-996(ra) # 80005b94 <_Z11printStringPKc>
    80004f80:	00000613          	li	a2,0
    80004f84:	00a00593          	li	a1,10
    80004f88:	0009051b          	sext.w	a0,s2
    80004f8c:	00001097          	auipc	ra,0x1
    80004f90:	db8080e7          	jalr	-584(ra) # 80005d44 <_Z8printIntiii>
    80004f94:	00004517          	auipc	a0,0x4
    80004f98:	32450513          	addi	a0,a0,804 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004f9c:	00001097          	auipc	ra,0x1
    80004fa0:	bf8080e7          	jalr	-1032(ra) # 80005b94 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004fa4:	00c00513          	li	a0,12
    80004fa8:	00000097          	auipc	ra,0x0
    80004fac:	d88080e7          	jalr	-632(ra) # 80004d30 <_ZL9fibonaccim>
    80004fb0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004fb4:	00004517          	auipc	a0,0x4
    80004fb8:	6dc50513          	addi	a0,a0,1756 # 80009690 <CONSOLE_STATUS+0x680>
    80004fbc:	00001097          	auipc	ra,0x1
    80004fc0:	bd8080e7          	jalr	-1064(ra) # 80005b94 <_Z11printStringPKc>
    80004fc4:	00000613          	li	a2,0
    80004fc8:	00a00593          	li	a1,10
    80004fcc:	0009051b          	sext.w	a0,s2
    80004fd0:	00001097          	auipc	ra,0x1
    80004fd4:	d74080e7          	jalr	-652(ra) # 80005d44 <_Z8printIntiii>
    80004fd8:	00004517          	auipc	a0,0x4
    80004fdc:	2e050513          	addi	a0,a0,736 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004fe0:	00001097          	auipc	ra,0x1
    80004fe4:	bb4080e7          	jalr	-1100(ra) # 80005b94 <_Z11printStringPKc>
    80004fe8:	0400006f          	j	80005028 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004fec:	00004517          	auipc	a0,0x4
    80004ff0:	68450513          	addi	a0,a0,1668 # 80009670 <CONSOLE_STATUS+0x660>
    80004ff4:	00001097          	auipc	ra,0x1
    80004ff8:	ba0080e7          	jalr	-1120(ra) # 80005b94 <_Z11printStringPKc>
    80004ffc:	00000613          	li	a2,0
    80005000:	00a00593          	li	a1,10
    80005004:	00048513          	mv	a0,s1
    80005008:	00001097          	auipc	ra,0x1
    8000500c:	d3c080e7          	jalr	-708(ra) # 80005d44 <_Z8printIntiii>
    80005010:	00004517          	auipc	a0,0x4
    80005014:	2a850513          	addi	a0,a0,680 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80005018:	00001097          	auipc	ra,0x1
    8000501c:	b7c080e7          	jalr	-1156(ra) # 80005b94 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005020:	0014849b          	addiw	s1,s1,1
    80005024:	0ff4f493          	andi	s1,s1,255
    80005028:	00500793          	li	a5,5
    8000502c:	fc97f0e3          	bgeu	a5,s1,80004fec <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005030:	00004517          	auipc	a0,0x4
    80005034:	61850513          	addi	a0,a0,1560 # 80009648 <CONSOLE_STATUS+0x638>
    80005038:	00001097          	auipc	ra,0x1
    8000503c:	b5c080e7          	jalr	-1188(ra) # 80005b94 <_Z11printStringPKc>
    finishedC = true;
    80005040:	00100793          	li	a5,1
    80005044:	00007717          	auipc	a4,0x7
    80005048:	06f70aa3          	sb	a5,117(a4) # 8000c0b9 <_ZL9finishedC>
    thread_dispatch();
    8000504c:	ffffc097          	auipc	ra,0xffffc
    80005050:	33c080e7          	jalr	828(ra) # 80001388 <_Z15thread_dispatchv>
}
    80005054:	01813083          	ld	ra,24(sp)
    80005058:	01013403          	ld	s0,16(sp)
    8000505c:	00813483          	ld	s1,8(sp)
    80005060:	00013903          	ld	s2,0(sp)
    80005064:	02010113          	addi	sp,sp,32
    80005068:	00008067          	ret

000000008000506c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000506c:	fe010113          	addi	sp,sp,-32
    80005070:	00113c23          	sd	ra,24(sp)
    80005074:	00813823          	sd	s0,16(sp)
    80005078:	00913423          	sd	s1,8(sp)
    8000507c:	01213023          	sd	s2,0(sp)
    80005080:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005084:	00000913          	li	s2,0
    80005088:	0380006f          	j	800050c0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    8000508c:	ffffc097          	auipc	ra,0xffffc
    80005090:	2fc080e7          	jalr	764(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005094:	00148493          	addi	s1,s1,1
    80005098:	000027b7          	lui	a5,0x2
    8000509c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800050a0:	0097ee63          	bltu	a5,s1,800050bc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800050a4:	00000713          	li	a4,0
    800050a8:	000077b7          	lui	a5,0x7
    800050ac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800050b0:	fce7eee3          	bltu	a5,a4,8000508c <_ZL11workerBodyBPv+0x20>
    800050b4:	00170713          	addi	a4,a4,1
    800050b8:	ff1ff06f          	j	800050a8 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800050bc:	00190913          	addi	s2,s2,1
    800050c0:	00f00793          	li	a5,15
    800050c4:	0527e063          	bltu	a5,s2,80005104 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800050c8:	00004517          	auipc	a0,0x4
    800050cc:	59050513          	addi	a0,a0,1424 # 80009658 <CONSOLE_STATUS+0x648>
    800050d0:	00001097          	auipc	ra,0x1
    800050d4:	ac4080e7          	jalr	-1340(ra) # 80005b94 <_Z11printStringPKc>
    800050d8:	00000613          	li	a2,0
    800050dc:	00a00593          	li	a1,10
    800050e0:	0009051b          	sext.w	a0,s2
    800050e4:	00001097          	auipc	ra,0x1
    800050e8:	c60080e7          	jalr	-928(ra) # 80005d44 <_Z8printIntiii>
    800050ec:	00004517          	auipc	a0,0x4
    800050f0:	1cc50513          	addi	a0,a0,460 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800050f4:	00001097          	auipc	ra,0x1
    800050f8:	aa0080e7          	jalr	-1376(ra) # 80005b94 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800050fc:	00000493          	li	s1,0
    80005100:	f99ff06f          	j	80005098 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005104:	00004517          	auipc	a0,0x4
    80005108:	55c50513          	addi	a0,a0,1372 # 80009660 <CONSOLE_STATUS+0x650>
    8000510c:	00001097          	auipc	ra,0x1
    80005110:	a88080e7          	jalr	-1400(ra) # 80005b94 <_Z11printStringPKc>
    finishedB = true;
    80005114:	00100793          	li	a5,1
    80005118:	00007717          	auipc	a4,0x7
    8000511c:	faf70123          	sb	a5,-94(a4) # 8000c0ba <_ZL9finishedB>
    thread_dispatch();
    80005120:	ffffc097          	auipc	ra,0xffffc
    80005124:	268080e7          	jalr	616(ra) # 80001388 <_Z15thread_dispatchv>
}
    80005128:	01813083          	ld	ra,24(sp)
    8000512c:	01013403          	ld	s0,16(sp)
    80005130:	00813483          	ld	s1,8(sp)
    80005134:	00013903          	ld	s2,0(sp)
    80005138:	02010113          	addi	sp,sp,32
    8000513c:	00008067          	ret

0000000080005140 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005140:	fe010113          	addi	sp,sp,-32
    80005144:	00113c23          	sd	ra,24(sp)
    80005148:	00813823          	sd	s0,16(sp)
    8000514c:	00913423          	sd	s1,8(sp)
    80005150:	01213023          	sd	s2,0(sp)
    80005154:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005158:	00000913          	li	s2,0
    8000515c:	0380006f          	j	80005194 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005160:	ffffc097          	auipc	ra,0xffffc
    80005164:	228080e7          	jalr	552(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005168:	00148493          	addi	s1,s1,1
    8000516c:	000027b7          	lui	a5,0x2
    80005170:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005174:	0097ee63          	bltu	a5,s1,80005190 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005178:	00000713          	li	a4,0
    8000517c:	000077b7          	lui	a5,0x7
    80005180:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005184:	fce7eee3          	bltu	a5,a4,80005160 <_ZL11workerBodyAPv+0x20>
    80005188:	00170713          	addi	a4,a4,1
    8000518c:	ff1ff06f          	j	8000517c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005190:	00190913          	addi	s2,s2,1
    80005194:	00900793          	li	a5,9
    80005198:	0527e063          	bltu	a5,s2,800051d8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000519c:	00004517          	auipc	a0,0x4
    800051a0:	4a450513          	addi	a0,a0,1188 # 80009640 <CONSOLE_STATUS+0x630>
    800051a4:	00001097          	auipc	ra,0x1
    800051a8:	9f0080e7          	jalr	-1552(ra) # 80005b94 <_Z11printStringPKc>
    800051ac:	00000613          	li	a2,0
    800051b0:	00a00593          	li	a1,10
    800051b4:	0009051b          	sext.w	a0,s2
    800051b8:	00001097          	auipc	ra,0x1
    800051bc:	b8c080e7          	jalr	-1140(ra) # 80005d44 <_Z8printIntiii>
    800051c0:	00004517          	auipc	a0,0x4
    800051c4:	0f850513          	addi	a0,a0,248 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800051c8:	00001097          	auipc	ra,0x1
    800051cc:	9cc080e7          	jalr	-1588(ra) # 80005b94 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800051d0:	00000493          	li	s1,0
    800051d4:	f99ff06f          	j	8000516c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800051d8:	00004517          	auipc	a0,0x4
    800051dc:	47050513          	addi	a0,a0,1136 # 80009648 <CONSOLE_STATUS+0x638>
    800051e0:	00001097          	auipc	ra,0x1
    800051e4:	9b4080e7          	jalr	-1612(ra) # 80005b94 <_Z11printStringPKc>
    finishedA = true;
    800051e8:	00100793          	li	a5,1
    800051ec:	00007717          	auipc	a4,0x7
    800051f0:	ecf707a3          	sb	a5,-305(a4) # 8000c0bb <_ZL9finishedA>
}
    800051f4:	01813083          	ld	ra,24(sp)
    800051f8:	01013403          	ld	s0,16(sp)
    800051fc:	00813483          	ld	s1,8(sp)
    80005200:	00013903          	ld	s2,0(sp)
    80005204:	02010113          	addi	sp,sp,32
    80005208:	00008067          	ret

000000008000520c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    8000520c:	fd010113          	addi	sp,sp,-48
    80005210:	02113423          	sd	ra,40(sp)
    80005214:	02813023          	sd	s0,32(sp)
    80005218:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000521c:	00000613          	li	a2,0
    80005220:	00000597          	auipc	a1,0x0
    80005224:	f2058593          	addi	a1,a1,-224 # 80005140 <_ZL11workerBodyAPv>
    80005228:	fd040513          	addi	a0,s0,-48
    8000522c:	ffffc097          	auipc	ra,0xffffc
    80005230:	058080e7          	jalr	88(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80005234:	00004517          	auipc	a0,0x4
    80005238:	4a450513          	addi	a0,a0,1188 # 800096d8 <CONSOLE_STATUS+0x6c8>
    8000523c:	00001097          	auipc	ra,0x1
    80005240:	958080e7          	jalr	-1704(ra) # 80005b94 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005244:	00000613          	li	a2,0
    80005248:	00000597          	auipc	a1,0x0
    8000524c:	e2458593          	addi	a1,a1,-476 # 8000506c <_ZL11workerBodyBPv>
    80005250:	fd840513          	addi	a0,s0,-40
    80005254:	ffffc097          	auipc	ra,0xffffc
    80005258:	030080e7          	jalr	48(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    8000525c:	00004517          	auipc	a0,0x4
    80005260:	49450513          	addi	a0,a0,1172 # 800096f0 <CONSOLE_STATUS+0x6e0>
    80005264:	00001097          	auipc	ra,0x1
    80005268:	930080e7          	jalr	-1744(ra) # 80005b94 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000526c:	00000613          	li	a2,0
    80005270:	00000597          	auipc	a1,0x0
    80005274:	c7c58593          	addi	a1,a1,-900 # 80004eec <_ZL11workerBodyCPv>
    80005278:	fe040513          	addi	a0,s0,-32
    8000527c:	ffffc097          	auipc	ra,0xffffc
    80005280:	008080e7          	jalr	8(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80005284:	00004517          	auipc	a0,0x4
    80005288:	48450513          	addi	a0,a0,1156 # 80009708 <CONSOLE_STATUS+0x6f8>
    8000528c:	00001097          	auipc	ra,0x1
    80005290:	908080e7          	jalr	-1784(ra) # 80005b94 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005294:	00000613          	li	a2,0
    80005298:	00000597          	auipc	a1,0x0
    8000529c:	b0c58593          	addi	a1,a1,-1268 # 80004da4 <_ZL11workerBodyDPv>
    800052a0:	fe840513          	addi	a0,s0,-24
    800052a4:	ffffc097          	auipc	ra,0xffffc
    800052a8:	fe0080e7          	jalr	-32(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800052ac:	00004517          	auipc	a0,0x4
    800052b0:	47450513          	addi	a0,a0,1140 # 80009720 <CONSOLE_STATUS+0x710>
    800052b4:	00001097          	auipc	ra,0x1
    800052b8:	8e0080e7          	jalr	-1824(ra) # 80005b94 <_Z11printStringPKc>
    800052bc:	00c0006f          	j	800052c8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800052c0:	ffffc097          	auipc	ra,0xffffc
    800052c4:	0c8080e7          	jalr	200(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800052c8:	00007797          	auipc	a5,0x7
    800052cc:	df37c783          	lbu	a5,-525(a5) # 8000c0bb <_ZL9finishedA>
    800052d0:	fe0788e3          	beqz	a5,800052c0 <_Z18Threads_C_API_testv+0xb4>
    800052d4:	00007797          	auipc	a5,0x7
    800052d8:	de67c783          	lbu	a5,-538(a5) # 8000c0ba <_ZL9finishedB>
    800052dc:	fe0782e3          	beqz	a5,800052c0 <_Z18Threads_C_API_testv+0xb4>
    800052e0:	00007797          	auipc	a5,0x7
    800052e4:	dd97c783          	lbu	a5,-551(a5) # 8000c0b9 <_ZL9finishedC>
    800052e8:	fc078ce3          	beqz	a5,800052c0 <_Z18Threads_C_API_testv+0xb4>
    800052ec:	00007797          	auipc	a5,0x7
    800052f0:	dcc7c783          	lbu	a5,-564(a5) # 8000c0b8 <_ZL9finishedD>
    800052f4:	fc0786e3          	beqz	a5,800052c0 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800052f8:	02813083          	ld	ra,40(sp)
    800052fc:	02013403          	ld	s0,32(sp)
    80005300:	03010113          	addi	sp,sp,48
    80005304:	00008067          	ret

0000000080005308 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005308:	fd010113          	addi	sp,sp,-48
    8000530c:	02113423          	sd	ra,40(sp)
    80005310:	02813023          	sd	s0,32(sp)
    80005314:	00913c23          	sd	s1,24(sp)
    80005318:	01213823          	sd	s2,16(sp)
    8000531c:	01313423          	sd	s3,8(sp)
    80005320:	03010413          	addi	s0,sp,48
    80005324:	00050993          	mv	s3,a0
    80005328:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000532c:	00000913          	li	s2,0
    80005330:	00c0006f          	j	8000533c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005334:	ffffd097          	auipc	ra,0xffffd
    80005338:	50c080e7          	jalr	1292(ra) # 80002840 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    8000533c:	ffffc097          	auipc	ra,0xffffc
    80005340:	254080e7          	jalr	596(ra) # 80001590 <_Z4getcv>
    80005344:	0005059b          	sext.w	a1,a0
    80005348:	01b00793          	li	a5,27
    8000534c:	02f58a63          	beq	a1,a5,80005380 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005350:	0084b503          	ld	a0,8(s1)
    80005354:	00001097          	auipc	ra,0x1
    80005358:	c64080e7          	jalr	-924(ra) # 80005fb8 <_ZN9BufferCPP3putEi>
        i++;
    8000535c:	0019071b          	addiw	a4,s2,1
    80005360:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005364:	0004a683          	lw	a3,0(s1)
    80005368:	0026979b          	slliw	a5,a3,0x2
    8000536c:	00d787bb          	addw	a5,a5,a3
    80005370:	0017979b          	slliw	a5,a5,0x1
    80005374:	02f767bb          	remw	a5,a4,a5
    80005378:	fc0792e3          	bnez	a5,8000533c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    8000537c:	fb9ff06f          	j	80005334 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005380:	00100793          	li	a5,1
    80005384:	00007717          	auipc	a4,0x7
    80005388:	d2f72e23          	sw	a5,-708(a4) # 8000c0c0 <_ZL9threadEnd>
    td->buffer->put('!');
    8000538c:	0209b783          	ld	a5,32(s3)
    80005390:	02100593          	li	a1,33
    80005394:	0087b503          	ld	a0,8(a5)
    80005398:	00001097          	auipc	ra,0x1
    8000539c:	c20080e7          	jalr	-992(ra) # 80005fb8 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800053a0:	0104b503          	ld	a0,16(s1)
    800053a4:	ffffd097          	auipc	ra,0xffffd
    800053a8:	554080e7          	jalr	1364(ra) # 800028f8 <_ZN9Semaphore6signalEv>
}
    800053ac:	02813083          	ld	ra,40(sp)
    800053b0:	02013403          	ld	s0,32(sp)
    800053b4:	01813483          	ld	s1,24(sp)
    800053b8:	01013903          	ld	s2,16(sp)
    800053bc:	00813983          	ld	s3,8(sp)
    800053c0:	03010113          	addi	sp,sp,48
    800053c4:	00008067          	ret

00000000800053c8 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800053c8:	fe010113          	addi	sp,sp,-32
    800053cc:	00113c23          	sd	ra,24(sp)
    800053d0:	00813823          	sd	s0,16(sp)
    800053d4:	00913423          	sd	s1,8(sp)
    800053d8:	01213023          	sd	s2,0(sp)
    800053dc:	02010413          	addi	s0,sp,32
    800053e0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800053e4:	00000913          	li	s2,0
    800053e8:	00c0006f          	j	800053f4 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800053ec:	ffffd097          	auipc	ra,0xffffd
    800053f0:	454080e7          	jalr	1108(ra) # 80002840 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800053f4:	00007797          	auipc	a5,0x7
    800053f8:	ccc7a783          	lw	a5,-820(a5) # 8000c0c0 <_ZL9threadEnd>
    800053fc:	02079e63          	bnez	a5,80005438 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005400:	0004a583          	lw	a1,0(s1)
    80005404:	0305859b          	addiw	a1,a1,48
    80005408:	0084b503          	ld	a0,8(s1)
    8000540c:	00001097          	auipc	ra,0x1
    80005410:	bac080e7          	jalr	-1108(ra) # 80005fb8 <_ZN9BufferCPP3putEi>
        i++;
    80005414:	0019071b          	addiw	a4,s2,1
    80005418:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000541c:	0004a683          	lw	a3,0(s1)
    80005420:	0026979b          	slliw	a5,a3,0x2
    80005424:	00d787bb          	addw	a5,a5,a3
    80005428:	0017979b          	slliw	a5,a5,0x1
    8000542c:	02f767bb          	remw	a5,a4,a5
    80005430:	fc0792e3          	bnez	a5,800053f4 <_ZN12ProducerSync8producerEPv+0x2c>
    80005434:	fb9ff06f          	j	800053ec <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005438:	0104b503          	ld	a0,16(s1)
    8000543c:	ffffd097          	auipc	ra,0xffffd
    80005440:	4bc080e7          	jalr	1212(ra) # 800028f8 <_ZN9Semaphore6signalEv>
}
    80005444:	01813083          	ld	ra,24(sp)
    80005448:	01013403          	ld	s0,16(sp)
    8000544c:	00813483          	ld	s1,8(sp)
    80005450:	00013903          	ld	s2,0(sp)
    80005454:	02010113          	addi	sp,sp,32
    80005458:	00008067          	ret

000000008000545c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    8000545c:	fd010113          	addi	sp,sp,-48
    80005460:	02113423          	sd	ra,40(sp)
    80005464:	02813023          	sd	s0,32(sp)
    80005468:	00913c23          	sd	s1,24(sp)
    8000546c:	01213823          	sd	s2,16(sp)
    80005470:	01313423          	sd	s3,8(sp)
    80005474:	01413023          	sd	s4,0(sp)
    80005478:	03010413          	addi	s0,sp,48
    8000547c:	00050993          	mv	s3,a0
    80005480:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005484:	00000a13          	li	s4,0
    80005488:	01c0006f          	j	800054a4 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    8000548c:	ffffd097          	auipc	ra,0xffffd
    80005490:	3b4080e7          	jalr	948(ra) # 80002840 <_ZN6Thread8dispatchEv>
    80005494:	0500006f          	j	800054e4 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005498:	00a00513          	li	a0,10
    8000549c:	ffffc097          	auipc	ra,0xffffc
    800054a0:	134080e7          	jalr	308(ra) # 800015d0 <_Z4putcc>
    while (!threadEnd) {
    800054a4:	00007797          	auipc	a5,0x7
    800054a8:	c1c7a783          	lw	a5,-996(a5) # 8000c0c0 <_ZL9threadEnd>
    800054ac:	06079263          	bnez	a5,80005510 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800054b0:	00893503          	ld	a0,8(s2)
    800054b4:	00001097          	auipc	ra,0x1
    800054b8:	b94080e7          	jalr	-1132(ra) # 80006048 <_ZN9BufferCPP3getEv>
        i++;
    800054bc:	001a049b          	addiw	s1,s4,1
    800054c0:	00048a1b          	sext.w	s4,s1
        putc(key);
    800054c4:	0ff57513          	andi	a0,a0,255
    800054c8:	ffffc097          	auipc	ra,0xffffc
    800054cc:	108080e7          	jalr	264(ra) # 800015d0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800054d0:	00092703          	lw	a4,0(s2)
    800054d4:	0027179b          	slliw	a5,a4,0x2
    800054d8:	00e787bb          	addw	a5,a5,a4
    800054dc:	02f4e7bb          	remw	a5,s1,a5
    800054e0:	fa0786e3          	beqz	a5,8000548c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800054e4:	05000793          	li	a5,80
    800054e8:	02f4e4bb          	remw	s1,s1,a5
    800054ec:	fa049ce3          	bnez	s1,800054a4 <_ZN12ConsumerSync8consumerEPv+0x48>
    800054f0:	fa9ff06f          	j	80005498 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800054f4:	0209b783          	ld	a5,32(s3)
    800054f8:	0087b503          	ld	a0,8(a5)
    800054fc:	00001097          	auipc	ra,0x1
    80005500:	b4c080e7          	jalr	-1204(ra) # 80006048 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005504:	0ff57513          	andi	a0,a0,255
    80005508:	ffffd097          	auipc	ra,0xffffd
    8000550c:	4ac080e7          	jalr	1196(ra) # 800029b4 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005510:	0209b783          	ld	a5,32(s3)
    80005514:	0087b503          	ld	a0,8(a5)
    80005518:	00001097          	auipc	ra,0x1
    8000551c:	bbc080e7          	jalr	-1092(ra) # 800060d4 <_ZN9BufferCPP6getCntEv>
    80005520:	fca04ae3          	bgtz	a0,800054f4 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005524:	01093503          	ld	a0,16(s2)
    80005528:	ffffd097          	auipc	ra,0xffffd
    8000552c:	3d0080e7          	jalr	976(ra) # 800028f8 <_ZN9Semaphore6signalEv>
}
    80005530:	02813083          	ld	ra,40(sp)
    80005534:	02013403          	ld	s0,32(sp)
    80005538:	01813483          	ld	s1,24(sp)
    8000553c:	01013903          	ld	s2,16(sp)
    80005540:	00813983          	ld	s3,8(sp)
    80005544:	00013a03          	ld	s4,0(sp)
    80005548:	03010113          	addi	sp,sp,48
    8000554c:	00008067          	ret

0000000080005550 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005550:	f8010113          	addi	sp,sp,-128
    80005554:	06113c23          	sd	ra,120(sp)
    80005558:	06813823          	sd	s0,112(sp)
    8000555c:	06913423          	sd	s1,104(sp)
    80005560:	07213023          	sd	s2,96(sp)
    80005564:	05313c23          	sd	s3,88(sp)
    80005568:	05413823          	sd	s4,80(sp)
    8000556c:	05513423          	sd	s5,72(sp)
    80005570:	05613023          	sd	s6,64(sp)
    80005574:	03713c23          	sd	s7,56(sp)
    80005578:	03813823          	sd	s8,48(sp)
    8000557c:	03913423          	sd	s9,40(sp)
    80005580:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005584:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005588:	00004517          	auipc	a0,0x4
    8000558c:	fd050513          	addi	a0,a0,-48 # 80009558 <CONSOLE_STATUS+0x548>
    80005590:	00000097          	auipc	ra,0x0
    80005594:	604080e7          	jalr	1540(ra) # 80005b94 <_Z11printStringPKc>
    getString(input, 30);
    80005598:	01e00593          	li	a1,30
    8000559c:	f8040493          	addi	s1,s0,-128
    800055a0:	00048513          	mv	a0,s1
    800055a4:	00000097          	auipc	ra,0x0
    800055a8:	678080e7          	jalr	1656(ra) # 80005c1c <_Z9getStringPci>
    threadNum = stringToInt(input);
    800055ac:	00048513          	mv	a0,s1
    800055b0:	00000097          	auipc	ra,0x0
    800055b4:	744080e7          	jalr	1860(ra) # 80005cf4 <_Z11stringToIntPKc>
    800055b8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800055bc:	00004517          	auipc	a0,0x4
    800055c0:	fbc50513          	addi	a0,a0,-68 # 80009578 <CONSOLE_STATUS+0x568>
    800055c4:	00000097          	auipc	ra,0x0
    800055c8:	5d0080e7          	jalr	1488(ra) # 80005b94 <_Z11printStringPKc>
    getString(input, 30);
    800055cc:	01e00593          	li	a1,30
    800055d0:	00048513          	mv	a0,s1
    800055d4:	00000097          	auipc	ra,0x0
    800055d8:	648080e7          	jalr	1608(ra) # 80005c1c <_Z9getStringPci>
    n = stringToInt(input);
    800055dc:	00048513          	mv	a0,s1
    800055e0:	00000097          	auipc	ra,0x0
    800055e4:	714080e7          	jalr	1812(ra) # 80005cf4 <_Z11stringToIntPKc>
    800055e8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800055ec:	00004517          	auipc	a0,0x4
    800055f0:	fac50513          	addi	a0,a0,-84 # 80009598 <CONSOLE_STATUS+0x588>
    800055f4:	00000097          	auipc	ra,0x0
    800055f8:	5a0080e7          	jalr	1440(ra) # 80005b94 <_Z11printStringPKc>
    800055fc:	00000613          	li	a2,0
    80005600:	00a00593          	li	a1,10
    80005604:	00090513          	mv	a0,s2
    80005608:	00000097          	auipc	ra,0x0
    8000560c:	73c080e7          	jalr	1852(ra) # 80005d44 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005610:	00004517          	auipc	a0,0x4
    80005614:	fa050513          	addi	a0,a0,-96 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80005618:	00000097          	auipc	ra,0x0
    8000561c:	57c080e7          	jalr	1404(ra) # 80005b94 <_Z11printStringPKc>
    80005620:	00000613          	li	a2,0
    80005624:	00a00593          	li	a1,10
    80005628:	00048513          	mv	a0,s1
    8000562c:	00000097          	auipc	ra,0x0
    80005630:	718080e7          	jalr	1816(ra) # 80005d44 <_Z8printIntiii>
    printString(".\n");
    80005634:	00004517          	auipc	a0,0x4
    80005638:	f9450513          	addi	a0,a0,-108 # 800095c8 <CONSOLE_STATUS+0x5b8>
    8000563c:	00000097          	auipc	ra,0x0
    80005640:	558080e7          	jalr	1368(ra) # 80005b94 <_Z11printStringPKc>
    if(threadNum > n) {
    80005644:	0324c463          	blt	s1,s2,8000566c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005648:	03205c63          	blez	s2,80005680 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000564c:	03800513          	li	a0,56
    80005650:	ffffd097          	auipc	ra,0xffffd
    80005654:	e94080e7          	jalr	-364(ra) # 800024e4 <_Znwm>
    80005658:	00050a93          	mv	s5,a0
    8000565c:	00048593          	mv	a1,s1
    80005660:	00001097          	auipc	ra,0x1
    80005664:	804080e7          	jalr	-2044(ra) # 80005e64 <_ZN9BufferCPPC1Ei>
    80005668:	0300006f          	j	80005698 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000566c:	00004517          	auipc	a0,0x4
    80005670:	f6450513          	addi	a0,a0,-156 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80005674:	00000097          	auipc	ra,0x0
    80005678:	520080e7          	jalr	1312(ra) # 80005b94 <_Z11printStringPKc>
        return;
    8000567c:	0140006f          	j	80005690 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005680:	00004517          	auipc	a0,0x4
    80005684:	f9050513          	addi	a0,a0,-112 # 80009610 <CONSOLE_STATUS+0x600>
    80005688:	00000097          	auipc	ra,0x0
    8000568c:	50c080e7          	jalr	1292(ra) # 80005b94 <_Z11printStringPKc>
        return;
    80005690:	000b8113          	mv	sp,s7
    80005694:	2380006f          	j	800058cc <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005698:	01000513          	li	a0,16
    8000569c:	ffffd097          	auipc	ra,0xffffd
    800056a0:	e48080e7          	jalr	-440(ra) # 800024e4 <_Znwm>
    800056a4:	00050493          	mv	s1,a0
    800056a8:	00000593          	li	a1,0
    800056ac:	ffffd097          	auipc	ra,0xffffd
    800056b0:	1e4080e7          	jalr	484(ra) # 80002890 <_ZN9SemaphoreC1Ej>
    800056b4:	00007797          	auipc	a5,0x7
    800056b8:	a097ba23          	sd	s1,-1516(a5) # 8000c0c8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800056bc:	00391793          	slli	a5,s2,0x3
    800056c0:	00f78793          	addi	a5,a5,15
    800056c4:	ff07f793          	andi	a5,a5,-16
    800056c8:	40f10133          	sub	sp,sp,a5
    800056cc:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800056d0:	0019071b          	addiw	a4,s2,1
    800056d4:	00171793          	slli	a5,a4,0x1
    800056d8:	00e787b3          	add	a5,a5,a4
    800056dc:	00379793          	slli	a5,a5,0x3
    800056e0:	00f78793          	addi	a5,a5,15
    800056e4:	ff07f793          	andi	a5,a5,-16
    800056e8:	40f10133          	sub	sp,sp,a5
    800056ec:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800056f0:	00191c13          	slli	s8,s2,0x1
    800056f4:	012c07b3          	add	a5,s8,s2
    800056f8:	00379793          	slli	a5,a5,0x3
    800056fc:	00fa07b3          	add	a5,s4,a5
    80005700:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005704:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005708:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    8000570c:	02800513          	li	a0,40
    80005710:	ffffd097          	auipc	ra,0xffffd
    80005714:	dd4080e7          	jalr	-556(ra) # 800024e4 <_Znwm>
    80005718:	00050b13          	mv	s6,a0
    8000571c:	012c0c33          	add	s8,s8,s2
    80005720:	003c1c13          	slli	s8,s8,0x3
    80005724:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005728:	ffffd097          	auipc	ra,0xffffd
    8000572c:	094080e7          	jalr	148(ra) # 800027bc <_ZN6ThreadC1Ev>
    80005730:	00006797          	auipc	a5,0x6
    80005734:	51878793          	addi	a5,a5,1304 # 8000bc48 <_ZTV12ConsumerSync+0x10>
    80005738:	00fb3023          	sd	a5,0(s6)
    8000573c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005740:	000b0513          	mv	a0,s6
    80005744:	ffffd097          	auipc	ra,0xffffd
    80005748:	0a8080e7          	jalr	168(ra) # 800027ec <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000574c:	00000493          	li	s1,0
    80005750:	0380006f          	j	80005788 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005754:	00006797          	auipc	a5,0x6
    80005758:	4cc78793          	addi	a5,a5,1228 # 8000bc20 <_ZTV12ProducerSync+0x10>
    8000575c:	00fcb023          	sd	a5,0(s9)
    80005760:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005764:	00349793          	slli	a5,s1,0x3
    80005768:	00f987b3          	add	a5,s3,a5
    8000576c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005770:	00349793          	slli	a5,s1,0x3
    80005774:	00f987b3          	add	a5,s3,a5
    80005778:	0007b503          	ld	a0,0(a5)
    8000577c:	ffffd097          	auipc	ra,0xffffd
    80005780:	070080e7          	jalr	112(ra) # 800027ec <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005784:	0014849b          	addiw	s1,s1,1
    80005788:	0b24d063          	bge	s1,s2,80005828 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    8000578c:	00149793          	slli	a5,s1,0x1
    80005790:	009787b3          	add	a5,a5,s1
    80005794:	00379793          	slli	a5,a5,0x3
    80005798:	00fa07b3          	add	a5,s4,a5
    8000579c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800057a0:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800057a4:	00007717          	auipc	a4,0x7
    800057a8:	92473703          	ld	a4,-1756(a4) # 8000c0c8 <_ZL10waitForAll>
    800057ac:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800057b0:	02905863          	blez	s1,800057e0 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800057b4:	02800513          	li	a0,40
    800057b8:	ffffd097          	auipc	ra,0xffffd
    800057bc:	d2c080e7          	jalr	-724(ra) # 800024e4 <_Znwm>
    800057c0:	00050c93          	mv	s9,a0
    800057c4:	00149c13          	slli	s8,s1,0x1
    800057c8:	009c0c33          	add	s8,s8,s1
    800057cc:	003c1c13          	slli	s8,s8,0x3
    800057d0:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800057d4:	ffffd097          	auipc	ra,0xffffd
    800057d8:	fe8080e7          	jalr	-24(ra) # 800027bc <_ZN6ThreadC1Ev>
    800057dc:	f79ff06f          	j	80005754 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800057e0:	02800513          	li	a0,40
    800057e4:	ffffd097          	auipc	ra,0xffffd
    800057e8:	d00080e7          	jalr	-768(ra) # 800024e4 <_Znwm>
    800057ec:	00050c93          	mv	s9,a0
    800057f0:	00149c13          	slli	s8,s1,0x1
    800057f4:	009c0c33          	add	s8,s8,s1
    800057f8:	003c1c13          	slli	s8,s8,0x3
    800057fc:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005800:	ffffd097          	auipc	ra,0xffffd
    80005804:	fbc080e7          	jalr	-68(ra) # 800027bc <_ZN6ThreadC1Ev>
    80005808:	00006797          	auipc	a5,0x6
    8000580c:	3f078793          	addi	a5,a5,1008 # 8000bbf8 <_ZTV16ProducerKeyboard+0x10>
    80005810:	00fcb023          	sd	a5,0(s9)
    80005814:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005818:	00349793          	slli	a5,s1,0x3
    8000581c:	00f987b3          	add	a5,s3,a5
    80005820:	0197b023          	sd	s9,0(a5)
    80005824:	f4dff06f          	j	80005770 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005828:	ffffd097          	auipc	ra,0xffffd
    8000582c:	018080e7          	jalr	24(ra) # 80002840 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005830:	00000493          	li	s1,0
    80005834:	00994e63          	blt	s2,s1,80005850 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005838:	00007517          	auipc	a0,0x7
    8000583c:	89053503          	ld	a0,-1904(a0) # 8000c0c8 <_ZL10waitForAll>
    80005840:	ffffd097          	auipc	ra,0xffffd
    80005844:	08c080e7          	jalr	140(ra) # 800028cc <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005848:	0014849b          	addiw	s1,s1,1
    8000584c:	fe9ff06f          	j	80005834 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005850:	00000493          	li	s1,0
    80005854:	0080006f          	j	8000585c <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005858:	0014849b          	addiw	s1,s1,1
    8000585c:	0324d263          	bge	s1,s2,80005880 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005860:	00349793          	slli	a5,s1,0x3
    80005864:	00f987b3          	add	a5,s3,a5
    80005868:	0007b503          	ld	a0,0(a5)
    8000586c:	fe0506e3          	beqz	a0,80005858 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005870:	00053783          	ld	a5,0(a0)
    80005874:	0087b783          	ld	a5,8(a5)
    80005878:	000780e7          	jalr	a5
    8000587c:	fddff06f          	j	80005858 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005880:	000b0a63          	beqz	s6,80005894 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005884:	000b3783          	ld	a5,0(s6)
    80005888:	0087b783          	ld	a5,8(a5)
    8000588c:	000b0513          	mv	a0,s6
    80005890:	000780e7          	jalr	a5
    delete waitForAll;
    80005894:	00007517          	auipc	a0,0x7
    80005898:	83453503          	ld	a0,-1996(a0) # 8000c0c8 <_ZL10waitForAll>
    8000589c:	00050863          	beqz	a0,800058ac <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800058a0:	00053783          	ld	a5,0(a0)
    800058a4:	0087b783          	ld	a5,8(a5)
    800058a8:	000780e7          	jalr	a5
    delete buffer;
    800058ac:	000a8e63          	beqz	s5,800058c8 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800058b0:	000a8513          	mv	a0,s5
    800058b4:	00001097          	auipc	ra,0x1
    800058b8:	8a8080e7          	jalr	-1880(ra) # 8000615c <_ZN9BufferCPPD1Ev>
    800058bc:	000a8513          	mv	a0,s5
    800058c0:	ffffd097          	auipc	ra,0xffffd
    800058c4:	c74080e7          	jalr	-908(ra) # 80002534 <_ZdlPv>
    800058c8:	000b8113          	mv	sp,s7

}
    800058cc:	f8040113          	addi	sp,s0,-128
    800058d0:	07813083          	ld	ra,120(sp)
    800058d4:	07013403          	ld	s0,112(sp)
    800058d8:	06813483          	ld	s1,104(sp)
    800058dc:	06013903          	ld	s2,96(sp)
    800058e0:	05813983          	ld	s3,88(sp)
    800058e4:	05013a03          	ld	s4,80(sp)
    800058e8:	04813a83          	ld	s5,72(sp)
    800058ec:	04013b03          	ld	s6,64(sp)
    800058f0:	03813b83          	ld	s7,56(sp)
    800058f4:	03013c03          	ld	s8,48(sp)
    800058f8:	02813c83          	ld	s9,40(sp)
    800058fc:	08010113          	addi	sp,sp,128
    80005900:	00008067          	ret
    80005904:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005908:	000a8513          	mv	a0,s5
    8000590c:	ffffd097          	auipc	ra,0xffffd
    80005910:	c28080e7          	jalr	-984(ra) # 80002534 <_ZdlPv>
    80005914:	00048513          	mv	a0,s1
    80005918:	00008097          	auipc	ra,0x8
    8000591c:	890080e7          	jalr	-1904(ra) # 8000d1a8 <_Unwind_Resume>
    80005920:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005924:	00048513          	mv	a0,s1
    80005928:	ffffd097          	auipc	ra,0xffffd
    8000592c:	c0c080e7          	jalr	-1012(ra) # 80002534 <_ZdlPv>
    80005930:	00090513          	mv	a0,s2
    80005934:	00008097          	auipc	ra,0x8
    80005938:	874080e7          	jalr	-1932(ra) # 8000d1a8 <_Unwind_Resume>
    8000593c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005940:	000b0513          	mv	a0,s6
    80005944:	ffffd097          	auipc	ra,0xffffd
    80005948:	bf0080e7          	jalr	-1040(ra) # 80002534 <_ZdlPv>
    8000594c:	00048513          	mv	a0,s1
    80005950:	00008097          	auipc	ra,0x8
    80005954:	858080e7          	jalr	-1960(ra) # 8000d1a8 <_Unwind_Resume>
    80005958:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    8000595c:	000c8513          	mv	a0,s9
    80005960:	ffffd097          	auipc	ra,0xffffd
    80005964:	bd4080e7          	jalr	-1068(ra) # 80002534 <_ZdlPv>
    80005968:	00048513          	mv	a0,s1
    8000596c:	00008097          	auipc	ra,0x8
    80005970:	83c080e7          	jalr	-1988(ra) # 8000d1a8 <_Unwind_Resume>
    80005974:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005978:	000c8513          	mv	a0,s9
    8000597c:	ffffd097          	auipc	ra,0xffffd
    80005980:	bb8080e7          	jalr	-1096(ra) # 80002534 <_ZdlPv>
    80005984:	00048513          	mv	a0,s1
    80005988:	00008097          	auipc	ra,0x8
    8000598c:	820080e7          	jalr	-2016(ra) # 8000d1a8 <_Unwind_Resume>

0000000080005990 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005990:	ff010113          	addi	sp,sp,-16
    80005994:	00113423          	sd	ra,8(sp)
    80005998:	00813023          	sd	s0,0(sp)
    8000599c:	01010413          	addi	s0,sp,16
    800059a0:	00006797          	auipc	a5,0x6
    800059a4:	2a878793          	addi	a5,a5,680 # 8000bc48 <_ZTV12ConsumerSync+0x10>
    800059a8:	00f53023          	sd	a5,0(a0)
    800059ac:	ffffd097          	auipc	ra,0xffffd
    800059b0:	cec080e7          	jalr	-788(ra) # 80002698 <_ZN6ThreadD1Ev>
    800059b4:	00813083          	ld	ra,8(sp)
    800059b8:	00013403          	ld	s0,0(sp)
    800059bc:	01010113          	addi	sp,sp,16
    800059c0:	00008067          	ret

00000000800059c4 <_ZN12ConsumerSyncD0Ev>:
    800059c4:	fe010113          	addi	sp,sp,-32
    800059c8:	00113c23          	sd	ra,24(sp)
    800059cc:	00813823          	sd	s0,16(sp)
    800059d0:	00913423          	sd	s1,8(sp)
    800059d4:	02010413          	addi	s0,sp,32
    800059d8:	00050493          	mv	s1,a0
    800059dc:	00006797          	auipc	a5,0x6
    800059e0:	26c78793          	addi	a5,a5,620 # 8000bc48 <_ZTV12ConsumerSync+0x10>
    800059e4:	00f53023          	sd	a5,0(a0)
    800059e8:	ffffd097          	auipc	ra,0xffffd
    800059ec:	cb0080e7          	jalr	-848(ra) # 80002698 <_ZN6ThreadD1Ev>
    800059f0:	00048513          	mv	a0,s1
    800059f4:	ffffd097          	auipc	ra,0xffffd
    800059f8:	b40080e7          	jalr	-1216(ra) # 80002534 <_ZdlPv>
    800059fc:	01813083          	ld	ra,24(sp)
    80005a00:	01013403          	ld	s0,16(sp)
    80005a04:	00813483          	ld	s1,8(sp)
    80005a08:	02010113          	addi	sp,sp,32
    80005a0c:	00008067          	ret

0000000080005a10 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005a10:	ff010113          	addi	sp,sp,-16
    80005a14:	00113423          	sd	ra,8(sp)
    80005a18:	00813023          	sd	s0,0(sp)
    80005a1c:	01010413          	addi	s0,sp,16
    80005a20:	00006797          	auipc	a5,0x6
    80005a24:	20078793          	addi	a5,a5,512 # 8000bc20 <_ZTV12ProducerSync+0x10>
    80005a28:	00f53023          	sd	a5,0(a0)
    80005a2c:	ffffd097          	auipc	ra,0xffffd
    80005a30:	c6c080e7          	jalr	-916(ra) # 80002698 <_ZN6ThreadD1Ev>
    80005a34:	00813083          	ld	ra,8(sp)
    80005a38:	00013403          	ld	s0,0(sp)
    80005a3c:	01010113          	addi	sp,sp,16
    80005a40:	00008067          	ret

0000000080005a44 <_ZN12ProducerSyncD0Ev>:
    80005a44:	fe010113          	addi	sp,sp,-32
    80005a48:	00113c23          	sd	ra,24(sp)
    80005a4c:	00813823          	sd	s0,16(sp)
    80005a50:	00913423          	sd	s1,8(sp)
    80005a54:	02010413          	addi	s0,sp,32
    80005a58:	00050493          	mv	s1,a0
    80005a5c:	00006797          	auipc	a5,0x6
    80005a60:	1c478793          	addi	a5,a5,452 # 8000bc20 <_ZTV12ProducerSync+0x10>
    80005a64:	00f53023          	sd	a5,0(a0)
    80005a68:	ffffd097          	auipc	ra,0xffffd
    80005a6c:	c30080e7          	jalr	-976(ra) # 80002698 <_ZN6ThreadD1Ev>
    80005a70:	00048513          	mv	a0,s1
    80005a74:	ffffd097          	auipc	ra,0xffffd
    80005a78:	ac0080e7          	jalr	-1344(ra) # 80002534 <_ZdlPv>
    80005a7c:	01813083          	ld	ra,24(sp)
    80005a80:	01013403          	ld	s0,16(sp)
    80005a84:	00813483          	ld	s1,8(sp)
    80005a88:	02010113          	addi	sp,sp,32
    80005a8c:	00008067          	ret

0000000080005a90 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005a90:	ff010113          	addi	sp,sp,-16
    80005a94:	00113423          	sd	ra,8(sp)
    80005a98:	00813023          	sd	s0,0(sp)
    80005a9c:	01010413          	addi	s0,sp,16
    80005aa0:	00006797          	auipc	a5,0x6
    80005aa4:	15878793          	addi	a5,a5,344 # 8000bbf8 <_ZTV16ProducerKeyboard+0x10>
    80005aa8:	00f53023          	sd	a5,0(a0)
    80005aac:	ffffd097          	auipc	ra,0xffffd
    80005ab0:	bec080e7          	jalr	-1044(ra) # 80002698 <_ZN6ThreadD1Ev>
    80005ab4:	00813083          	ld	ra,8(sp)
    80005ab8:	00013403          	ld	s0,0(sp)
    80005abc:	01010113          	addi	sp,sp,16
    80005ac0:	00008067          	ret

0000000080005ac4 <_ZN16ProducerKeyboardD0Ev>:
    80005ac4:	fe010113          	addi	sp,sp,-32
    80005ac8:	00113c23          	sd	ra,24(sp)
    80005acc:	00813823          	sd	s0,16(sp)
    80005ad0:	00913423          	sd	s1,8(sp)
    80005ad4:	02010413          	addi	s0,sp,32
    80005ad8:	00050493          	mv	s1,a0
    80005adc:	00006797          	auipc	a5,0x6
    80005ae0:	11c78793          	addi	a5,a5,284 # 8000bbf8 <_ZTV16ProducerKeyboard+0x10>
    80005ae4:	00f53023          	sd	a5,0(a0)
    80005ae8:	ffffd097          	auipc	ra,0xffffd
    80005aec:	bb0080e7          	jalr	-1104(ra) # 80002698 <_ZN6ThreadD1Ev>
    80005af0:	00048513          	mv	a0,s1
    80005af4:	ffffd097          	auipc	ra,0xffffd
    80005af8:	a40080e7          	jalr	-1472(ra) # 80002534 <_ZdlPv>
    80005afc:	01813083          	ld	ra,24(sp)
    80005b00:	01013403          	ld	s0,16(sp)
    80005b04:	00813483          	ld	s1,8(sp)
    80005b08:	02010113          	addi	sp,sp,32
    80005b0c:	00008067          	ret

0000000080005b10 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005b10:	ff010113          	addi	sp,sp,-16
    80005b14:	00113423          	sd	ra,8(sp)
    80005b18:	00813023          	sd	s0,0(sp)
    80005b1c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005b20:	02053583          	ld	a1,32(a0)
    80005b24:	fffff097          	auipc	ra,0xfffff
    80005b28:	7e4080e7          	jalr	2020(ra) # 80005308 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005b2c:	00813083          	ld	ra,8(sp)
    80005b30:	00013403          	ld	s0,0(sp)
    80005b34:	01010113          	addi	sp,sp,16
    80005b38:	00008067          	ret

0000000080005b3c <_ZN12ProducerSync3runEv>:
    void run() override {
    80005b3c:	ff010113          	addi	sp,sp,-16
    80005b40:	00113423          	sd	ra,8(sp)
    80005b44:	00813023          	sd	s0,0(sp)
    80005b48:	01010413          	addi	s0,sp,16
        producer(td);
    80005b4c:	02053583          	ld	a1,32(a0)
    80005b50:	00000097          	auipc	ra,0x0
    80005b54:	878080e7          	jalr	-1928(ra) # 800053c8 <_ZN12ProducerSync8producerEPv>
    }
    80005b58:	00813083          	ld	ra,8(sp)
    80005b5c:	00013403          	ld	s0,0(sp)
    80005b60:	01010113          	addi	sp,sp,16
    80005b64:	00008067          	ret

0000000080005b68 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005b68:	ff010113          	addi	sp,sp,-16
    80005b6c:	00113423          	sd	ra,8(sp)
    80005b70:	00813023          	sd	s0,0(sp)
    80005b74:	01010413          	addi	s0,sp,16
        consumer(td);
    80005b78:	02053583          	ld	a1,32(a0)
    80005b7c:	00000097          	auipc	ra,0x0
    80005b80:	8e0080e7          	jalr	-1824(ra) # 8000545c <_ZN12ConsumerSync8consumerEPv>
    }
    80005b84:	00813083          	ld	ra,8(sp)
    80005b88:	00013403          	ld	s0,0(sp)
    80005b8c:	01010113          	addi	sp,sp,16
    80005b90:	00008067          	ret

0000000080005b94 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005b94:	fe010113          	addi	sp,sp,-32
    80005b98:	00113c23          	sd	ra,24(sp)
    80005b9c:	00813823          	sd	s0,16(sp)
    80005ba0:	00913423          	sd	s1,8(sp)
    80005ba4:	02010413          	addi	s0,sp,32
    80005ba8:	00050493          	mv	s1,a0
    LOCK();
    80005bac:	00100613          	li	a2,1
    80005bb0:	00000593          	li	a1,0
    80005bb4:	00006517          	auipc	a0,0x6
    80005bb8:	51c50513          	addi	a0,a0,1308 # 8000c0d0 <lockPrint>
    80005bbc:	ffffb097          	auipc	ra,0xffffb
    80005bc0:	5e8080e7          	jalr	1512(ra) # 800011a4 <copy_and_swap>
    80005bc4:	00050863          	beqz	a0,80005bd4 <_Z11printStringPKc+0x40>
    80005bc8:	ffffb097          	auipc	ra,0xffffb
    80005bcc:	7c0080e7          	jalr	1984(ra) # 80001388 <_Z15thread_dispatchv>
    80005bd0:	fddff06f          	j	80005bac <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005bd4:	0004c503          	lbu	a0,0(s1)
    80005bd8:	00050a63          	beqz	a0,80005bec <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005bdc:	ffffc097          	auipc	ra,0xffffc
    80005be0:	9f4080e7          	jalr	-1548(ra) # 800015d0 <_Z4putcc>
        string++;
    80005be4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005be8:	fedff06f          	j	80005bd4 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005bec:	00000613          	li	a2,0
    80005bf0:	00100593          	li	a1,1
    80005bf4:	00006517          	auipc	a0,0x6
    80005bf8:	4dc50513          	addi	a0,a0,1244 # 8000c0d0 <lockPrint>
    80005bfc:	ffffb097          	auipc	ra,0xffffb
    80005c00:	5a8080e7          	jalr	1448(ra) # 800011a4 <copy_and_swap>
    80005c04:	fe0514e3          	bnez	a0,80005bec <_Z11printStringPKc+0x58>
}
    80005c08:	01813083          	ld	ra,24(sp)
    80005c0c:	01013403          	ld	s0,16(sp)
    80005c10:	00813483          	ld	s1,8(sp)
    80005c14:	02010113          	addi	sp,sp,32
    80005c18:	00008067          	ret

0000000080005c1c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005c1c:	fd010113          	addi	sp,sp,-48
    80005c20:	02113423          	sd	ra,40(sp)
    80005c24:	02813023          	sd	s0,32(sp)
    80005c28:	00913c23          	sd	s1,24(sp)
    80005c2c:	01213823          	sd	s2,16(sp)
    80005c30:	01313423          	sd	s3,8(sp)
    80005c34:	01413023          	sd	s4,0(sp)
    80005c38:	03010413          	addi	s0,sp,48
    80005c3c:	00050993          	mv	s3,a0
    80005c40:	00058a13          	mv	s4,a1
    LOCK();
    80005c44:	00100613          	li	a2,1
    80005c48:	00000593          	li	a1,0
    80005c4c:	00006517          	auipc	a0,0x6
    80005c50:	48450513          	addi	a0,a0,1156 # 8000c0d0 <lockPrint>
    80005c54:	ffffb097          	auipc	ra,0xffffb
    80005c58:	550080e7          	jalr	1360(ra) # 800011a4 <copy_and_swap>
    80005c5c:	00050863          	beqz	a0,80005c6c <_Z9getStringPci+0x50>
    80005c60:	ffffb097          	auipc	ra,0xffffb
    80005c64:	728080e7          	jalr	1832(ra) # 80001388 <_Z15thread_dispatchv>
    80005c68:	fddff06f          	j	80005c44 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005c6c:	00000913          	li	s2,0
    80005c70:	00090493          	mv	s1,s2
    80005c74:	0019091b          	addiw	s2,s2,1
    80005c78:	03495a63          	bge	s2,s4,80005cac <_Z9getStringPci+0x90>
        cc = getc();
    80005c7c:	ffffc097          	auipc	ra,0xffffc
    80005c80:	914080e7          	jalr	-1772(ra) # 80001590 <_Z4getcv>
        if(cc < 1)
    80005c84:	02050463          	beqz	a0,80005cac <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005c88:	009984b3          	add	s1,s3,s1
    80005c8c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005c90:	00a00793          	li	a5,10
    80005c94:	00f50a63          	beq	a0,a5,80005ca8 <_Z9getStringPci+0x8c>
    80005c98:	00d00793          	li	a5,13
    80005c9c:	fcf51ae3          	bne	a0,a5,80005c70 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005ca0:	00090493          	mv	s1,s2
    80005ca4:	0080006f          	j	80005cac <_Z9getStringPci+0x90>
    80005ca8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005cac:	009984b3          	add	s1,s3,s1
    80005cb0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005cb4:	00000613          	li	a2,0
    80005cb8:	00100593          	li	a1,1
    80005cbc:	00006517          	auipc	a0,0x6
    80005cc0:	41450513          	addi	a0,a0,1044 # 8000c0d0 <lockPrint>
    80005cc4:	ffffb097          	auipc	ra,0xffffb
    80005cc8:	4e0080e7          	jalr	1248(ra) # 800011a4 <copy_and_swap>
    80005ccc:	fe0514e3          	bnez	a0,80005cb4 <_Z9getStringPci+0x98>
    return buf;
}
    80005cd0:	00098513          	mv	a0,s3
    80005cd4:	02813083          	ld	ra,40(sp)
    80005cd8:	02013403          	ld	s0,32(sp)
    80005cdc:	01813483          	ld	s1,24(sp)
    80005ce0:	01013903          	ld	s2,16(sp)
    80005ce4:	00813983          	ld	s3,8(sp)
    80005ce8:	00013a03          	ld	s4,0(sp)
    80005cec:	03010113          	addi	sp,sp,48
    80005cf0:	00008067          	ret

0000000080005cf4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005cf4:	ff010113          	addi	sp,sp,-16
    80005cf8:	00813423          	sd	s0,8(sp)
    80005cfc:	01010413          	addi	s0,sp,16
    80005d00:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005d04:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005d08:	0006c603          	lbu	a2,0(a3)
    80005d0c:	fd06071b          	addiw	a4,a2,-48
    80005d10:	0ff77713          	andi	a4,a4,255
    80005d14:	00900793          	li	a5,9
    80005d18:	02e7e063          	bltu	a5,a4,80005d38 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005d1c:	0025179b          	slliw	a5,a0,0x2
    80005d20:	00a787bb          	addw	a5,a5,a0
    80005d24:	0017979b          	slliw	a5,a5,0x1
    80005d28:	00168693          	addi	a3,a3,1
    80005d2c:	00c787bb          	addw	a5,a5,a2
    80005d30:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005d34:	fd5ff06f          	j	80005d08 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005d38:	00813403          	ld	s0,8(sp)
    80005d3c:	01010113          	addi	sp,sp,16
    80005d40:	00008067          	ret

0000000080005d44 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005d44:	fc010113          	addi	sp,sp,-64
    80005d48:	02113c23          	sd	ra,56(sp)
    80005d4c:	02813823          	sd	s0,48(sp)
    80005d50:	02913423          	sd	s1,40(sp)
    80005d54:	03213023          	sd	s2,32(sp)
    80005d58:	01313c23          	sd	s3,24(sp)
    80005d5c:	04010413          	addi	s0,sp,64
    80005d60:	00050493          	mv	s1,a0
    80005d64:	00058913          	mv	s2,a1
    80005d68:	00060993          	mv	s3,a2
    LOCK();
    80005d6c:	00100613          	li	a2,1
    80005d70:	00000593          	li	a1,0
    80005d74:	00006517          	auipc	a0,0x6
    80005d78:	35c50513          	addi	a0,a0,860 # 8000c0d0 <lockPrint>
    80005d7c:	ffffb097          	auipc	ra,0xffffb
    80005d80:	428080e7          	jalr	1064(ra) # 800011a4 <copy_and_swap>
    80005d84:	00050863          	beqz	a0,80005d94 <_Z8printIntiii+0x50>
    80005d88:	ffffb097          	auipc	ra,0xffffb
    80005d8c:	600080e7          	jalr	1536(ra) # 80001388 <_Z15thread_dispatchv>
    80005d90:	fddff06f          	j	80005d6c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005d94:	00098463          	beqz	s3,80005d9c <_Z8printIntiii+0x58>
    80005d98:	0804c463          	bltz	s1,80005e20 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005d9c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005da0:	00000593          	li	a1,0
    }

    i = 0;
    80005da4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005da8:	0009079b          	sext.w	a5,s2
    80005dac:	0325773b          	remuw	a4,a0,s2
    80005db0:	00048613          	mv	a2,s1
    80005db4:	0014849b          	addiw	s1,s1,1
    80005db8:	02071693          	slli	a3,a4,0x20
    80005dbc:	0206d693          	srli	a3,a3,0x20
    80005dc0:	00006717          	auipc	a4,0x6
    80005dc4:	ea070713          	addi	a4,a4,-352 # 8000bc60 <digits>
    80005dc8:	00d70733          	add	a4,a4,a3
    80005dcc:	00074683          	lbu	a3,0(a4)
    80005dd0:	fd040713          	addi	a4,s0,-48
    80005dd4:	00c70733          	add	a4,a4,a2
    80005dd8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005ddc:	0005071b          	sext.w	a4,a0
    80005de0:	0325553b          	divuw	a0,a0,s2
    80005de4:	fcf772e3          	bgeu	a4,a5,80005da8 <_Z8printIntiii+0x64>
    if(neg)
    80005de8:	00058c63          	beqz	a1,80005e00 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005dec:	fd040793          	addi	a5,s0,-48
    80005df0:	009784b3          	add	s1,a5,s1
    80005df4:	02d00793          	li	a5,45
    80005df8:	fef48823          	sb	a5,-16(s1)
    80005dfc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005e00:	fff4849b          	addiw	s1,s1,-1
    80005e04:	0204c463          	bltz	s1,80005e2c <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005e08:	fd040793          	addi	a5,s0,-48
    80005e0c:	009787b3          	add	a5,a5,s1
    80005e10:	ff07c503          	lbu	a0,-16(a5)
    80005e14:	ffffb097          	auipc	ra,0xffffb
    80005e18:	7bc080e7          	jalr	1980(ra) # 800015d0 <_Z4putcc>
    80005e1c:	fe5ff06f          	j	80005e00 <_Z8printIntiii+0xbc>
        x = -xx;
    80005e20:	4090053b          	negw	a0,s1
        neg = 1;
    80005e24:	00100593          	li	a1,1
        x = -xx;
    80005e28:	f7dff06f          	j	80005da4 <_Z8printIntiii+0x60>

    UNLOCK();
    80005e2c:	00000613          	li	a2,0
    80005e30:	00100593          	li	a1,1
    80005e34:	00006517          	auipc	a0,0x6
    80005e38:	29c50513          	addi	a0,a0,668 # 8000c0d0 <lockPrint>
    80005e3c:	ffffb097          	auipc	ra,0xffffb
    80005e40:	368080e7          	jalr	872(ra) # 800011a4 <copy_and_swap>
    80005e44:	fe0514e3          	bnez	a0,80005e2c <_Z8printIntiii+0xe8>
    80005e48:	03813083          	ld	ra,56(sp)
    80005e4c:	03013403          	ld	s0,48(sp)
    80005e50:	02813483          	ld	s1,40(sp)
    80005e54:	02013903          	ld	s2,32(sp)
    80005e58:	01813983          	ld	s3,24(sp)
    80005e5c:	04010113          	addi	sp,sp,64
    80005e60:	00008067          	ret

0000000080005e64 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005e64:	fd010113          	addi	sp,sp,-48
    80005e68:	02113423          	sd	ra,40(sp)
    80005e6c:	02813023          	sd	s0,32(sp)
    80005e70:	00913c23          	sd	s1,24(sp)
    80005e74:	01213823          	sd	s2,16(sp)
    80005e78:	01313423          	sd	s3,8(sp)
    80005e7c:	03010413          	addi	s0,sp,48
    80005e80:	00050493          	mv	s1,a0
    80005e84:	00058913          	mv	s2,a1
    80005e88:	0015879b          	addiw	a5,a1,1
    80005e8c:	0007851b          	sext.w	a0,a5
    80005e90:	00f4a023          	sw	a5,0(s1)
    80005e94:	0004a823          	sw	zero,16(s1)
    80005e98:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005e9c:	00251513          	slli	a0,a0,0x2
    80005ea0:	ffffb097          	auipc	ra,0xffffb
    80005ea4:	358080e7          	jalr	856(ra) # 800011f8 <_Z9mem_allocm>
    80005ea8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005eac:	01000513          	li	a0,16
    80005eb0:	ffffc097          	auipc	ra,0xffffc
    80005eb4:	634080e7          	jalr	1588(ra) # 800024e4 <_Znwm>
    80005eb8:	00050993          	mv	s3,a0
    80005ebc:	00000593          	li	a1,0
    80005ec0:	ffffd097          	auipc	ra,0xffffd
    80005ec4:	9d0080e7          	jalr	-1584(ra) # 80002890 <_ZN9SemaphoreC1Ej>
    80005ec8:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005ecc:	01000513          	li	a0,16
    80005ed0:	ffffc097          	auipc	ra,0xffffc
    80005ed4:	614080e7          	jalr	1556(ra) # 800024e4 <_Znwm>
    80005ed8:	00050993          	mv	s3,a0
    80005edc:	00090593          	mv	a1,s2
    80005ee0:	ffffd097          	auipc	ra,0xffffd
    80005ee4:	9b0080e7          	jalr	-1616(ra) # 80002890 <_ZN9SemaphoreC1Ej>
    80005ee8:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005eec:	01000513          	li	a0,16
    80005ef0:	ffffc097          	auipc	ra,0xffffc
    80005ef4:	5f4080e7          	jalr	1524(ra) # 800024e4 <_Znwm>
    80005ef8:	00050913          	mv	s2,a0
    80005efc:	00100593          	li	a1,1
    80005f00:	ffffd097          	auipc	ra,0xffffd
    80005f04:	990080e7          	jalr	-1648(ra) # 80002890 <_ZN9SemaphoreC1Ej>
    80005f08:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005f0c:	01000513          	li	a0,16
    80005f10:	ffffc097          	auipc	ra,0xffffc
    80005f14:	5d4080e7          	jalr	1492(ra) # 800024e4 <_Znwm>
    80005f18:	00050913          	mv	s2,a0
    80005f1c:	00100593          	li	a1,1
    80005f20:	ffffd097          	auipc	ra,0xffffd
    80005f24:	970080e7          	jalr	-1680(ra) # 80002890 <_ZN9SemaphoreC1Ej>
    80005f28:	0324b823          	sd	s2,48(s1)
}
    80005f2c:	02813083          	ld	ra,40(sp)
    80005f30:	02013403          	ld	s0,32(sp)
    80005f34:	01813483          	ld	s1,24(sp)
    80005f38:	01013903          	ld	s2,16(sp)
    80005f3c:	00813983          	ld	s3,8(sp)
    80005f40:	03010113          	addi	sp,sp,48
    80005f44:	00008067          	ret
    80005f48:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005f4c:	00098513          	mv	a0,s3
    80005f50:	ffffc097          	auipc	ra,0xffffc
    80005f54:	5e4080e7          	jalr	1508(ra) # 80002534 <_ZdlPv>
    80005f58:	00048513          	mv	a0,s1
    80005f5c:	00007097          	auipc	ra,0x7
    80005f60:	24c080e7          	jalr	588(ra) # 8000d1a8 <_Unwind_Resume>
    80005f64:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005f68:	00098513          	mv	a0,s3
    80005f6c:	ffffc097          	auipc	ra,0xffffc
    80005f70:	5c8080e7          	jalr	1480(ra) # 80002534 <_ZdlPv>
    80005f74:	00048513          	mv	a0,s1
    80005f78:	00007097          	auipc	ra,0x7
    80005f7c:	230080e7          	jalr	560(ra) # 8000d1a8 <_Unwind_Resume>
    80005f80:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005f84:	00090513          	mv	a0,s2
    80005f88:	ffffc097          	auipc	ra,0xffffc
    80005f8c:	5ac080e7          	jalr	1452(ra) # 80002534 <_ZdlPv>
    80005f90:	00048513          	mv	a0,s1
    80005f94:	00007097          	auipc	ra,0x7
    80005f98:	214080e7          	jalr	532(ra) # 8000d1a8 <_Unwind_Resume>
    80005f9c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005fa0:	00090513          	mv	a0,s2
    80005fa4:	ffffc097          	auipc	ra,0xffffc
    80005fa8:	590080e7          	jalr	1424(ra) # 80002534 <_ZdlPv>
    80005fac:	00048513          	mv	a0,s1
    80005fb0:	00007097          	auipc	ra,0x7
    80005fb4:	1f8080e7          	jalr	504(ra) # 8000d1a8 <_Unwind_Resume>

0000000080005fb8 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005fb8:	fe010113          	addi	sp,sp,-32
    80005fbc:	00113c23          	sd	ra,24(sp)
    80005fc0:	00813823          	sd	s0,16(sp)
    80005fc4:	00913423          	sd	s1,8(sp)
    80005fc8:	01213023          	sd	s2,0(sp)
    80005fcc:	02010413          	addi	s0,sp,32
    80005fd0:	00050493          	mv	s1,a0
    80005fd4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005fd8:	01853503          	ld	a0,24(a0)
    80005fdc:	ffffd097          	auipc	ra,0xffffd
    80005fe0:	8f0080e7          	jalr	-1808(ra) # 800028cc <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005fe4:	0304b503          	ld	a0,48(s1)
    80005fe8:	ffffd097          	auipc	ra,0xffffd
    80005fec:	8e4080e7          	jalr	-1820(ra) # 800028cc <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005ff0:	0084b783          	ld	a5,8(s1)
    80005ff4:	0144a703          	lw	a4,20(s1)
    80005ff8:	00271713          	slli	a4,a4,0x2
    80005ffc:	00e787b3          	add	a5,a5,a4
    80006000:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006004:	0144a783          	lw	a5,20(s1)
    80006008:	0017879b          	addiw	a5,a5,1
    8000600c:	0004a703          	lw	a4,0(s1)
    80006010:	02e7e7bb          	remw	a5,a5,a4
    80006014:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006018:	0304b503          	ld	a0,48(s1)
    8000601c:	ffffd097          	auipc	ra,0xffffd
    80006020:	8dc080e7          	jalr	-1828(ra) # 800028f8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006024:	0204b503          	ld	a0,32(s1)
    80006028:	ffffd097          	auipc	ra,0xffffd
    8000602c:	8d0080e7          	jalr	-1840(ra) # 800028f8 <_ZN9Semaphore6signalEv>

}
    80006030:	01813083          	ld	ra,24(sp)
    80006034:	01013403          	ld	s0,16(sp)
    80006038:	00813483          	ld	s1,8(sp)
    8000603c:	00013903          	ld	s2,0(sp)
    80006040:	02010113          	addi	sp,sp,32
    80006044:	00008067          	ret

0000000080006048 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006048:	fe010113          	addi	sp,sp,-32
    8000604c:	00113c23          	sd	ra,24(sp)
    80006050:	00813823          	sd	s0,16(sp)
    80006054:	00913423          	sd	s1,8(sp)
    80006058:	01213023          	sd	s2,0(sp)
    8000605c:	02010413          	addi	s0,sp,32
    80006060:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006064:	02053503          	ld	a0,32(a0)
    80006068:	ffffd097          	auipc	ra,0xffffd
    8000606c:	864080e7          	jalr	-1948(ra) # 800028cc <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006070:	0284b503          	ld	a0,40(s1)
    80006074:	ffffd097          	auipc	ra,0xffffd
    80006078:	858080e7          	jalr	-1960(ra) # 800028cc <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000607c:	0084b703          	ld	a4,8(s1)
    80006080:	0104a783          	lw	a5,16(s1)
    80006084:	00279693          	slli	a3,a5,0x2
    80006088:	00d70733          	add	a4,a4,a3
    8000608c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006090:	0017879b          	addiw	a5,a5,1
    80006094:	0004a703          	lw	a4,0(s1)
    80006098:	02e7e7bb          	remw	a5,a5,a4
    8000609c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800060a0:	0284b503          	ld	a0,40(s1)
    800060a4:	ffffd097          	auipc	ra,0xffffd
    800060a8:	854080e7          	jalr	-1964(ra) # 800028f8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800060ac:	0184b503          	ld	a0,24(s1)
    800060b0:	ffffd097          	auipc	ra,0xffffd
    800060b4:	848080e7          	jalr	-1976(ra) # 800028f8 <_ZN9Semaphore6signalEv>

    return ret;
}
    800060b8:	00090513          	mv	a0,s2
    800060bc:	01813083          	ld	ra,24(sp)
    800060c0:	01013403          	ld	s0,16(sp)
    800060c4:	00813483          	ld	s1,8(sp)
    800060c8:	00013903          	ld	s2,0(sp)
    800060cc:	02010113          	addi	sp,sp,32
    800060d0:	00008067          	ret

00000000800060d4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800060d4:	fe010113          	addi	sp,sp,-32
    800060d8:	00113c23          	sd	ra,24(sp)
    800060dc:	00813823          	sd	s0,16(sp)
    800060e0:	00913423          	sd	s1,8(sp)
    800060e4:	01213023          	sd	s2,0(sp)
    800060e8:	02010413          	addi	s0,sp,32
    800060ec:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800060f0:	02853503          	ld	a0,40(a0)
    800060f4:	ffffc097          	auipc	ra,0xffffc
    800060f8:	7d8080e7          	jalr	2008(ra) # 800028cc <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800060fc:	0304b503          	ld	a0,48(s1)
    80006100:	ffffc097          	auipc	ra,0xffffc
    80006104:	7cc080e7          	jalr	1996(ra) # 800028cc <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006108:	0144a783          	lw	a5,20(s1)
    8000610c:	0104a903          	lw	s2,16(s1)
    80006110:	0327ce63          	blt	a5,s2,8000614c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006114:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006118:	0304b503          	ld	a0,48(s1)
    8000611c:	ffffc097          	auipc	ra,0xffffc
    80006120:	7dc080e7          	jalr	2012(ra) # 800028f8 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006124:	0284b503          	ld	a0,40(s1)
    80006128:	ffffc097          	auipc	ra,0xffffc
    8000612c:	7d0080e7          	jalr	2000(ra) # 800028f8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006130:	00090513          	mv	a0,s2
    80006134:	01813083          	ld	ra,24(sp)
    80006138:	01013403          	ld	s0,16(sp)
    8000613c:	00813483          	ld	s1,8(sp)
    80006140:	00013903          	ld	s2,0(sp)
    80006144:	02010113          	addi	sp,sp,32
    80006148:	00008067          	ret
        ret = cap - head + tail;
    8000614c:	0004a703          	lw	a4,0(s1)
    80006150:	4127093b          	subw	s2,a4,s2
    80006154:	00f9093b          	addw	s2,s2,a5
    80006158:	fc1ff06f          	j	80006118 <_ZN9BufferCPP6getCntEv+0x44>

000000008000615c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000615c:	fe010113          	addi	sp,sp,-32
    80006160:	00113c23          	sd	ra,24(sp)
    80006164:	00813823          	sd	s0,16(sp)
    80006168:	00913423          	sd	s1,8(sp)
    8000616c:	02010413          	addi	s0,sp,32
    80006170:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006174:	00a00513          	li	a0,10
    80006178:	ffffd097          	auipc	ra,0xffffd
    8000617c:	83c080e7          	jalr	-1988(ra) # 800029b4 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006180:	00003517          	auipc	a0,0x3
    80006184:	5b850513          	addi	a0,a0,1464 # 80009738 <CONSOLE_STATUS+0x728>
    80006188:	00000097          	auipc	ra,0x0
    8000618c:	a0c080e7          	jalr	-1524(ra) # 80005b94 <_Z11printStringPKc>
    while (getCnt()) {
    80006190:	00048513          	mv	a0,s1
    80006194:	00000097          	auipc	ra,0x0
    80006198:	f40080e7          	jalr	-192(ra) # 800060d4 <_ZN9BufferCPP6getCntEv>
    8000619c:	02050c63          	beqz	a0,800061d4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800061a0:	0084b783          	ld	a5,8(s1)
    800061a4:	0104a703          	lw	a4,16(s1)
    800061a8:	00271713          	slli	a4,a4,0x2
    800061ac:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800061b0:	0007c503          	lbu	a0,0(a5)
    800061b4:	ffffd097          	auipc	ra,0xffffd
    800061b8:	800080e7          	jalr	-2048(ra) # 800029b4 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800061bc:	0104a783          	lw	a5,16(s1)
    800061c0:	0017879b          	addiw	a5,a5,1
    800061c4:	0004a703          	lw	a4,0(s1)
    800061c8:	02e7e7bb          	remw	a5,a5,a4
    800061cc:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800061d0:	fc1ff06f          	j	80006190 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800061d4:	02100513          	li	a0,33
    800061d8:	ffffc097          	auipc	ra,0xffffc
    800061dc:	7dc080e7          	jalr	2012(ra) # 800029b4 <_ZN7Console4putcEc>
    Console::putc('\n');
    800061e0:	00a00513          	li	a0,10
    800061e4:	ffffc097          	auipc	ra,0xffffc
    800061e8:	7d0080e7          	jalr	2000(ra) # 800029b4 <_ZN7Console4putcEc>
    mem_free(buffer);
    800061ec:	0084b503          	ld	a0,8(s1)
    800061f0:	ffffb097          	auipc	ra,0xffffb
    800061f4:	054080e7          	jalr	84(ra) # 80001244 <_Z8mem_freePv>
    delete itemAvailable;
    800061f8:	0204b503          	ld	a0,32(s1)
    800061fc:	00050863          	beqz	a0,8000620c <_ZN9BufferCPPD1Ev+0xb0>
    80006200:	00053783          	ld	a5,0(a0)
    80006204:	0087b783          	ld	a5,8(a5)
    80006208:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000620c:	0184b503          	ld	a0,24(s1)
    80006210:	00050863          	beqz	a0,80006220 <_ZN9BufferCPPD1Ev+0xc4>
    80006214:	00053783          	ld	a5,0(a0)
    80006218:	0087b783          	ld	a5,8(a5)
    8000621c:	000780e7          	jalr	a5
    delete mutexTail;
    80006220:	0304b503          	ld	a0,48(s1)
    80006224:	00050863          	beqz	a0,80006234 <_ZN9BufferCPPD1Ev+0xd8>
    80006228:	00053783          	ld	a5,0(a0)
    8000622c:	0087b783          	ld	a5,8(a5)
    80006230:	000780e7          	jalr	a5
    delete mutexHead;
    80006234:	0284b503          	ld	a0,40(s1)
    80006238:	00050863          	beqz	a0,80006248 <_ZN9BufferCPPD1Ev+0xec>
    8000623c:	00053783          	ld	a5,0(a0)
    80006240:	0087b783          	ld	a5,8(a5)
    80006244:	000780e7          	jalr	a5
}
    80006248:	01813083          	ld	ra,24(sp)
    8000624c:	01013403          	ld	s0,16(sp)
    80006250:	00813483          	ld	s1,8(sp)
    80006254:	02010113          	addi	sp,sp,32
    80006258:	00008067          	ret

000000008000625c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    8000625c:	fe010113          	addi	sp,sp,-32
    80006260:	00113c23          	sd	ra,24(sp)
    80006264:	00813823          	sd	s0,16(sp)
    80006268:	00913423          	sd	s1,8(sp)
    8000626c:	01213023          	sd	s2,0(sp)
    80006270:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006274:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006278:	00600493          	li	s1,6
    while (--i > 0) {
    8000627c:	fff4849b          	addiw	s1,s1,-1
    80006280:	04905463          	blez	s1,800062c8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006284:	00003517          	auipc	a0,0x3
    80006288:	4cc50513          	addi	a0,a0,1228 # 80009750 <CONSOLE_STATUS+0x740>
    8000628c:	00000097          	auipc	ra,0x0
    80006290:	908080e7          	jalr	-1784(ra) # 80005b94 <_Z11printStringPKc>
        printInt(sleep_time);
    80006294:	00000613          	li	a2,0
    80006298:	00a00593          	li	a1,10
    8000629c:	0009051b          	sext.w	a0,s2
    800062a0:	00000097          	auipc	ra,0x0
    800062a4:	aa4080e7          	jalr	-1372(ra) # 80005d44 <_Z8printIntiii>
        printString(" !\n");
    800062a8:	00003517          	auipc	a0,0x3
    800062ac:	4b050513          	addi	a0,a0,1200 # 80009758 <CONSOLE_STATUS+0x748>
    800062b0:	00000097          	auipc	ra,0x0
    800062b4:	8e4080e7          	jalr	-1820(ra) # 80005b94 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800062b8:	00090513          	mv	a0,s2
    800062bc:	ffffb097          	auipc	ra,0xffffb
    800062c0:	294080e7          	jalr	660(ra) # 80001550 <_Z10time_sleepm>
    while (--i > 0) {
    800062c4:	fb9ff06f          	j	8000627c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800062c8:	00a00793          	li	a5,10
    800062cc:	02f95933          	divu	s2,s2,a5
    800062d0:	fff90913          	addi	s2,s2,-1
    800062d4:	00006797          	auipc	a5,0x6
    800062d8:	e0478793          	addi	a5,a5,-508 # 8000c0d8 <_ZL8finished>
    800062dc:	01278933          	add	s2,a5,s2
    800062e0:	00100793          	li	a5,1
    800062e4:	00f90023          	sb	a5,0(s2)
}
    800062e8:	01813083          	ld	ra,24(sp)
    800062ec:	01013403          	ld	s0,16(sp)
    800062f0:	00813483          	ld	s1,8(sp)
    800062f4:	00013903          	ld	s2,0(sp)
    800062f8:	02010113          	addi	sp,sp,32
    800062fc:	00008067          	ret

0000000080006300 <_Z12testSleepingv>:

void testSleeping() {
    80006300:	fc010113          	addi	sp,sp,-64
    80006304:	02113c23          	sd	ra,56(sp)
    80006308:	02813823          	sd	s0,48(sp)
    8000630c:	02913423          	sd	s1,40(sp)
    80006310:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006314:	00a00793          	li	a5,10
    80006318:	fcf43823          	sd	a5,-48(s0)
    8000631c:	01400793          	li	a5,20
    80006320:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006324:	00000493          	li	s1,0
    80006328:	02c0006f          	j	80006354 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000632c:	00349793          	slli	a5,s1,0x3
    80006330:	fd040613          	addi	a2,s0,-48
    80006334:	00f60633          	add	a2,a2,a5
    80006338:	00000597          	auipc	a1,0x0
    8000633c:	f2458593          	addi	a1,a1,-220 # 8000625c <_ZL9sleepyRunPv>
    80006340:	fc040513          	addi	a0,s0,-64
    80006344:	00f50533          	add	a0,a0,a5
    80006348:	ffffb097          	auipc	ra,0xffffb
    8000634c:	f3c080e7          	jalr	-196(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006350:	0014849b          	addiw	s1,s1,1
    80006354:	00100793          	li	a5,1
    80006358:	fc97dae3          	bge	a5,s1,8000632c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    8000635c:	00006797          	auipc	a5,0x6
    80006360:	d7c7c783          	lbu	a5,-644(a5) # 8000c0d8 <_ZL8finished>
    80006364:	fe078ce3          	beqz	a5,8000635c <_Z12testSleepingv+0x5c>
    80006368:	00006797          	auipc	a5,0x6
    8000636c:	d717c783          	lbu	a5,-655(a5) # 8000c0d9 <_ZL8finished+0x1>
    80006370:	fe0786e3          	beqz	a5,8000635c <_Z12testSleepingv+0x5c>
}
    80006374:	03813083          	ld	ra,56(sp)
    80006378:	03013403          	ld	s0,48(sp)
    8000637c:	02813483          	ld	s1,40(sp)
    80006380:	04010113          	addi	sp,sp,64
    80006384:	00008067          	ret

0000000080006388 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006388:	fe010113          	addi	sp,sp,-32
    8000638c:	00113c23          	sd	ra,24(sp)
    80006390:	00813823          	sd	s0,16(sp)
    80006394:	00913423          	sd	s1,8(sp)
    80006398:	01213023          	sd	s2,0(sp)
    8000639c:	02010413          	addi	s0,sp,32
    800063a0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800063a4:	00100793          	li	a5,1
    800063a8:	02a7f863          	bgeu	a5,a0,800063d8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800063ac:	00a00793          	li	a5,10
    800063b0:	02f577b3          	remu	a5,a0,a5
    800063b4:	02078e63          	beqz	a5,800063f0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800063b8:	fff48513          	addi	a0,s1,-1
    800063bc:	00000097          	auipc	ra,0x0
    800063c0:	fcc080e7          	jalr	-52(ra) # 80006388 <_ZL9fibonaccim>
    800063c4:	00050913          	mv	s2,a0
    800063c8:	ffe48513          	addi	a0,s1,-2
    800063cc:	00000097          	auipc	ra,0x0
    800063d0:	fbc080e7          	jalr	-68(ra) # 80006388 <_ZL9fibonaccim>
    800063d4:	00a90533          	add	a0,s2,a0
}
    800063d8:	01813083          	ld	ra,24(sp)
    800063dc:	01013403          	ld	s0,16(sp)
    800063e0:	00813483          	ld	s1,8(sp)
    800063e4:	00013903          	ld	s2,0(sp)
    800063e8:	02010113          	addi	sp,sp,32
    800063ec:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800063f0:	ffffb097          	auipc	ra,0xffffb
    800063f4:	f98080e7          	jalr	-104(ra) # 80001388 <_Z15thread_dispatchv>
    800063f8:	fc1ff06f          	j	800063b8 <_ZL9fibonaccim+0x30>

00000000800063fc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800063fc:	fe010113          	addi	sp,sp,-32
    80006400:	00113c23          	sd	ra,24(sp)
    80006404:	00813823          	sd	s0,16(sp)
    80006408:	00913423          	sd	s1,8(sp)
    8000640c:	01213023          	sd	s2,0(sp)
    80006410:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006414:	00a00493          	li	s1,10
    80006418:	0400006f          	j	80006458 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000641c:	00003517          	auipc	a0,0x3
    80006420:	28450513          	addi	a0,a0,644 # 800096a0 <CONSOLE_STATUS+0x690>
    80006424:	fffff097          	auipc	ra,0xfffff
    80006428:	770080e7          	jalr	1904(ra) # 80005b94 <_Z11printStringPKc>
    8000642c:	00000613          	li	a2,0
    80006430:	00a00593          	li	a1,10
    80006434:	00048513          	mv	a0,s1
    80006438:	00000097          	auipc	ra,0x0
    8000643c:	90c080e7          	jalr	-1780(ra) # 80005d44 <_Z8printIntiii>
    80006440:	00003517          	auipc	a0,0x3
    80006444:	e7850513          	addi	a0,a0,-392 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006448:	fffff097          	auipc	ra,0xfffff
    8000644c:	74c080e7          	jalr	1868(ra) # 80005b94 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006450:	0014849b          	addiw	s1,s1,1
    80006454:	0ff4f493          	andi	s1,s1,255
    80006458:	00c00793          	li	a5,12
    8000645c:	fc97f0e3          	bgeu	a5,s1,8000641c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006460:	00003517          	auipc	a0,0x3
    80006464:	24850513          	addi	a0,a0,584 # 800096a8 <CONSOLE_STATUS+0x698>
    80006468:	fffff097          	auipc	ra,0xfffff
    8000646c:	72c080e7          	jalr	1836(ra) # 80005b94 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006470:	00500313          	li	t1,5
    thread_dispatch();
    80006474:	ffffb097          	auipc	ra,0xffffb
    80006478:	f14080e7          	jalr	-236(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000647c:	01000513          	li	a0,16
    80006480:	00000097          	auipc	ra,0x0
    80006484:	f08080e7          	jalr	-248(ra) # 80006388 <_ZL9fibonaccim>
    80006488:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000648c:	00003517          	auipc	a0,0x3
    80006490:	22c50513          	addi	a0,a0,556 # 800096b8 <CONSOLE_STATUS+0x6a8>
    80006494:	fffff097          	auipc	ra,0xfffff
    80006498:	700080e7          	jalr	1792(ra) # 80005b94 <_Z11printStringPKc>
    8000649c:	00000613          	li	a2,0
    800064a0:	00a00593          	li	a1,10
    800064a4:	0009051b          	sext.w	a0,s2
    800064a8:	00000097          	auipc	ra,0x0
    800064ac:	89c080e7          	jalr	-1892(ra) # 80005d44 <_Z8printIntiii>
    800064b0:	00003517          	auipc	a0,0x3
    800064b4:	e0850513          	addi	a0,a0,-504 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800064b8:	fffff097          	auipc	ra,0xfffff
    800064bc:	6dc080e7          	jalr	1756(ra) # 80005b94 <_Z11printStringPKc>
    800064c0:	0400006f          	j	80006500 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800064c4:	00003517          	auipc	a0,0x3
    800064c8:	1dc50513          	addi	a0,a0,476 # 800096a0 <CONSOLE_STATUS+0x690>
    800064cc:	fffff097          	auipc	ra,0xfffff
    800064d0:	6c8080e7          	jalr	1736(ra) # 80005b94 <_Z11printStringPKc>
    800064d4:	00000613          	li	a2,0
    800064d8:	00a00593          	li	a1,10
    800064dc:	00048513          	mv	a0,s1
    800064e0:	00000097          	auipc	ra,0x0
    800064e4:	864080e7          	jalr	-1948(ra) # 80005d44 <_Z8printIntiii>
    800064e8:	00003517          	auipc	a0,0x3
    800064ec:	dd050513          	addi	a0,a0,-560 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800064f0:	fffff097          	auipc	ra,0xfffff
    800064f4:	6a4080e7          	jalr	1700(ra) # 80005b94 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800064f8:	0014849b          	addiw	s1,s1,1
    800064fc:	0ff4f493          	andi	s1,s1,255
    80006500:	00f00793          	li	a5,15
    80006504:	fc97f0e3          	bgeu	a5,s1,800064c4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006508:	00003517          	auipc	a0,0x3
    8000650c:	1c050513          	addi	a0,a0,448 # 800096c8 <CONSOLE_STATUS+0x6b8>
    80006510:	fffff097          	auipc	ra,0xfffff
    80006514:	684080e7          	jalr	1668(ra) # 80005b94 <_Z11printStringPKc>
    finishedD = true;
    80006518:	00100793          	li	a5,1
    8000651c:	00006717          	auipc	a4,0x6
    80006520:	baf70f23          	sb	a5,-1090(a4) # 8000c0da <_ZL9finishedD>
    thread_dispatch();
    80006524:	ffffb097          	auipc	ra,0xffffb
    80006528:	e64080e7          	jalr	-412(ra) # 80001388 <_Z15thread_dispatchv>
}
    8000652c:	01813083          	ld	ra,24(sp)
    80006530:	01013403          	ld	s0,16(sp)
    80006534:	00813483          	ld	s1,8(sp)
    80006538:	00013903          	ld	s2,0(sp)
    8000653c:	02010113          	addi	sp,sp,32
    80006540:	00008067          	ret

0000000080006544 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006544:	fe010113          	addi	sp,sp,-32
    80006548:	00113c23          	sd	ra,24(sp)
    8000654c:	00813823          	sd	s0,16(sp)
    80006550:	00913423          	sd	s1,8(sp)
    80006554:	01213023          	sd	s2,0(sp)
    80006558:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000655c:	00000493          	li	s1,0
    80006560:	0400006f          	j	800065a0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006564:	00003517          	auipc	a0,0x3
    80006568:	10c50513          	addi	a0,a0,268 # 80009670 <CONSOLE_STATUS+0x660>
    8000656c:	fffff097          	auipc	ra,0xfffff
    80006570:	628080e7          	jalr	1576(ra) # 80005b94 <_Z11printStringPKc>
    80006574:	00000613          	li	a2,0
    80006578:	00a00593          	li	a1,10
    8000657c:	00048513          	mv	a0,s1
    80006580:	fffff097          	auipc	ra,0xfffff
    80006584:	7c4080e7          	jalr	1988(ra) # 80005d44 <_Z8printIntiii>
    80006588:	00003517          	auipc	a0,0x3
    8000658c:	d3050513          	addi	a0,a0,-720 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006590:	fffff097          	auipc	ra,0xfffff
    80006594:	604080e7          	jalr	1540(ra) # 80005b94 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006598:	0014849b          	addiw	s1,s1,1
    8000659c:	0ff4f493          	andi	s1,s1,255
    800065a0:	00200793          	li	a5,2
    800065a4:	fc97f0e3          	bgeu	a5,s1,80006564 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800065a8:	00003517          	auipc	a0,0x3
    800065ac:	0d050513          	addi	a0,a0,208 # 80009678 <CONSOLE_STATUS+0x668>
    800065b0:	fffff097          	auipc	ra,0xfffff
    800065b4:	5e4080e7          	jalr	1508(ra) # 80005b94 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800065b8:	00700313          	li	t1,7
    thread_dispatch();
    800065bc:	ffffb097          	auipc	ra,0xffffb
    800065c0:	dcc080e7          	jalr	-564(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800065c4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800065c8:	00003517          	auipc	a0,0x3
    800065cc:	0c050513          	addi	a0,a0,192 # 80009688 <CONSOLE_STATUS+0x678>
    800065d0:	fffff097          	auipc	ra,0xfffff
    800065d4:	5c4080e7          	jalr	1476(ra) # 80005b94 <_Z11printStringPKc>
    800065d8:	00000613          	li	a2,0
    800065dc:	00a00593          	li	a1,10
    800065e0:	0009051b          	sext.w	a0,s2
    800065e4:	fffff097          	auipc	ra,0xfffff
    800065e8:	760080e7          	jalr	1888(ra) # 80005d44 <_Z8printIntiii>
    800065ec:	00003517          	auipc	a0,0x3
    800065f0:	ccc50513          	addi	a0,a0,-820 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800065f4:	fffff097          	auipc	ra,0xfffff
    800065f8:	5a0080e7          	jalr	1440(ra) # 80005b94 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800065fc:	00c00513          	li	a0,12
    80006600:	00000097          	auipc	ra,0x0
    80006604:	d88080e7          	jalr	-632(ra) # 80006388 <_ZL9fibonaccim>
    80006608:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000660c:	00003517          	auipc	a0,0x3
    80006610:	08450513          	addi	a0,a0,132 # 80009690 <CONSOLE_STATUS+0x680>
    80006614:	fffff097          	auipc	ra,0xfffff
    80006618:	580080e7          	jalr	1408(ra) # 80005b94 <_Z11printStringPKc>
    8000661c:	00000613          	li	a2,0
    80006620:	00a00593          	li	a1,10
    80006624:	0009051b          	sext.w	a0,s2
    80006628:	fffff097          	auipc	ra,0xfffff
    8000662c:	71c080e7          	jalr	1820(ra) # 80005d44 <_Z8printIntiii>
    80006630:	00003517          	auipc	a0,0x3
    80006634:	c8850513          	addi	a0,a0,-888 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006638:	fffff097          	auipc	ra,0xfffff
    8000663c:	55c080e7          	jalr	1372(ra) # 80005b94 <_Z11printStringPKc>
    80006640:	0400006f          	j	80006680 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006644:	00003517          	auipc	a0,0x3
    80006648:	02c50513          	addi	a0,a0,44 # 80009670 <CONSOLE_STATUS+0x660>
    8000664c:	fffff097          	auipc	ra,0xfffff
    80006650:	548080e7          	jalr	1352(ra) # 80005b94 <_Z11printStringPKc>
    80006654:	00000613          	li	a2,0
    80006658:	00a00593          	li	a1,10
    8000665c:	00048513          	mv	a0,s1
    80006660:	fffff097          	auipc	ra,0xfffff
    80006664:	6e4080e7          	jalr	1764(ra) # 80005d44 <_Z8printIntiii>
    80006668:	00003517          	auipc	a0,0x3
    8000666c:	c5050513          	addi	a0,a0,-944 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006670:	fffff097          	auipc	ra,0xfffff
    80006674:	524080e7          	jalr	1316(ra) # 80005b94 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006678:	0014849b          	addiw	s1,s1,1
    8000667c:	0ff4f493          	andi	s1,s1,255
    80006680:	00500793          	li	a5,5
    80006684:	fc97f0e3          	bgeu	a5,s1,80006644 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006688:	00003517          	auipc	a0,0x3
    8000668c:	fc050513          	addi	a0,a0,-64 # 80009648 <CONSOLE_STATUS+0x638>
    80006690:	fffff097          	auipc	ra,0xfffff
    80006694:	504080e7          	jalr	1284(ra) # 80005b94 <_Z11printStringPKc>
    finishedC = true;
    80006698:	00100793          	li	a5,1
    8000669c:	00006717          	auipc	a4,0x6
    800066a0:	a2f70fa3          	sb	a5,-1473(a4) # 8000c0db <_ZL9finishedC>
    thread_dispatch();
    800066a4:	ffffb097          	auipc	ra,0xffffb
    800066a8:	ce4080e7          	jalr	-796(ra) # 80001388 <_Z15thread_dispatchv>
}
    800066ac:	01813083          	ld	ra,24(sp)
    800066b0:	01013403          	ld	s0,16(sp)
    800066b4:	00813483          	ld	s1,8(sp)
    800066b8:	00013903          	ld	s2,0(sp)
    800066bc:	02010113          	addi	sp,sp,32
    800066c0:	00008067          	ret

00000000800066c4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800066c4:	fe010113          	addi	sp,sp,-32
    800066c8:	00113c23          	sd	ra,24(sp)
    800066cc:	00813823          	sd	s0,16(sp)
    800066d0:	00913423          	sd	s1,8(sp)
    800066d4:	01213023          	sd	s2,0(sp)
    800066d8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800066dc:	00000913          	li	s2,0
    800066e0:	0400006f          	j	80006720 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800066e4:	ffffb097          	auipc	ra,0xffffb
    800066e8:	ca4080e7          	jalr	-860(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800066ec:	00148493          	addi	s1,s1,1
    800066f0:	000027b7          	lui	a5,0x2
    800066f4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800066f8:	0097ee63          	bltu	a5,s1,80006714 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800066fc:	00000713          	li	a4,0
    80006700:	000077b7          	lui	a5,0x7
    80006704:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006708:	fce7eee3          	bltu	a5,a4,800066e4 <_ZL11workerBodyBPv+0x20>
    8000670c:	00170713          	addi	a4,a4,1
    80006710:	ff1ff06f          	j	80006700 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006714:	00a00793          	li	a5,10
    80006718:	04f90663          	beq	s2,a5,80006764 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000671c:	00190913          	addi	s2,s2,1
    80006720:	00f00793          	li	a5,15
    80006724:	0527e463          	bltu	a5,s2,8000676c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006728:	00003517          	auipc	a0,0x3
    8000672c:	f3050513          	addi	a0,a0,-208 # 80009658 <CONSOLE_STATUS+0x648>
    80006730:	fffff097          	auipc	ra,0xfffff
    80006734:	464080e7          	jalr	1124(ra) # 80005b94 <_Z11printStringPKc>
    80006738:	00000613          	li	a2,0
    8000673c:	00a00593          	li	a1,10
    80006740:	0009051b          	sext.w	a0,s2
    80006744:	fffff097          	auipc	ra,0xfffff
    80006748:	600080e7          	jalr	1536(ra) # 80005d44 <_Z8printIntiii>
    8000674c:	00003517          	auipc	a0,0x3
    80006750:	b6c50513          	addi	a0,a0,-1172 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006754:	fffff097          	auipc	ra,0xfffff
    80006758:	440080e7          	jalr	1088(ra) # 80005b94 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000675c:	00000493          	li	s1,0
    80006760:	f91ff06f          	j	800066f0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006764:	14102ff3          	csrr	t6,sepc
    80006768:	fb5ff06f          	j	8000671c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000676c:	00003517          	auipc	a0,0x3
    80006770:	ef450513          	addi	a0,a0,-268 # 80009660 <CONSOLE_STATUS+0x650>
    80006774:	fffff097          	auipc	ra,0xfffff
    80006778:	420080e7          	jalr	1056(ra) # 80005b94 <_Z11printStringPKc>
    finishedB = true;
    8000677c:	00100793          	li	a5,1
    80006780:	00006717          	auipc	a4,0x6
    80006784:	94f70e23          	sb	a5,-1700(a4) # 8000c0dc <_ZL9finishedB>
    thread_dispatch();
    80006788:	ffffb097          	auipc	ra,0xffffb
    8000678c:	c00080e7          	jalr	-1024(ra) # 80001388 <_Z15thread_dispatchv>
}
    80006790:	01813083          	ld	ra,24(sp)
    80006794:	01013403          	ld	s0,16(sp)
    80006798:	00813483          	ld	s1,8(sp)
    8000679c:	00013903          	ld	s2,0(sp)
    800067a0:	02010113          	addi	sp,sp,32
    800067a4:	00008067          	ret

00000000800067a8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800067a8:	fe010113          	addi	sp,sp,-32
    800067ac:	00113c23          	sd	ra,24(sp)
    800067b0:	00813823          	sd	s0,16(sp)
    800067b4:	00913423          	sd	s1,8(sp)
    800067b8:	01213023          	sd	s2,0(sp)
    800067bc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800067c0:	00000913          	li	s2,0
    800067c4:	0380006f          	j	800067fc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800067c8:	ffffb097          	auipc	ra,0xffffb
    800067cc:	bc0080e7          	jalr	-1088(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800067d0:	00148493          	addi	s1,s1,1
    800067d4:	000027b7          	lui	a5,0x2
    800067d8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800067dc:	0097ee63          	bltu	a5,s1,800067f8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800067e0:	00000713          	li	a4,0
    800067e4:	000077b7          	lui	a5,0x7
    800067e8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800067ec:	fce7eee3          	bltu	a5,a4,800067c8 <_ZL11workerBodyAPv+0x20>
    800067f0:	00170713          	addi	a4,a4,1
    800067f4:	ff1ff06f          	j	800067e4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800067f8:	00190913          	addi	s2,s2,1
    800067fc:	00900793          	li	a5,9
    80006800:	0527e063          	bltu	a5,s2,80006840 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006804:	00003517          	auipc	a0,0x3
    80006808:	e3c50513          	addi	a0,a0,-452 # 80009640 <CONSOLE_STATUS+0x630>
    8000680c:	fffff097          	auipc	ra,0xfffff
    80006810:	388080e7          	jalr	904(ra) # 80005b94 <_Z11printStringPKc>
    80006814:	00000613          	li	a2,0
    80006818:	00a00593          	li	a1,10
    8000681c:	0009051b          	sext.w	a0,s2
    80006820:	fffff097          	auipc	ra,0xfffff
    80006824:	524080e7          	jalr	1316(ra) # 80005d44 <_Z8printIntiii>
    80006828:	00003517          	auipc	a0,0x3
    8000682c:	a9050513          	addi	a0,a0,-1392 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006830:	fffff097          	auipc	ra,0xfffff
    80006834:	364080e7          	jalr	868(ra) # 80005b94 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006838:	00000493          	li	s1,0
    8000683c:	f99ff06f          	j	800067d4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006840:	00003517          	auipc	a0,0x3
    80006844:	e0850513          	addi	a0,a0,-504 # 80009648 <CONSOLE_STATUS+0x638>
    80006848:	fffff097          	auipc	ra,0xfffff
    8000684c:	34c080e7          	jalr	844(ra) # 80005b94 <_Z11printStringPKc>
    finishedA = true;
    80006850:	00100793          	li	a5,1
    80006854:	00006717          	auipc	a4,0x6
    80006858:	88f704a3          	sb	a5,-1911(a4) # 8000c0dd <_ZL9finishedA>
}
    8000685c:	01813083          	ld	ra,24(sp)
    80006860:	01013403          	ld	s0,16(sp)
    80006864:	00813483          	ld	s1,8(sp)
    80006868:	00013903          	ld	s2,0(sp)
    8000686c:	02010113          	addi	sp,sp,32
    80006870:	00008067          	ret

0000000080006874 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006874:	fd010113          	addi	sp,sp,-48
    80006878:	02113423          	sd	ra,40(sp)
    8000687c:	02813023          	sd	s0,32(sp)
    80006880:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006884:	00000613          	li	a2,0
    80006888:	00000597          	auipc	a1,0x0
    8000688c:	f2058593          	addi	a1,a1,-224 # 800067a8 <_ZL11workerBodyAPv>
    80006890:	fd040513          	addi	a0,s0,-48
    80006894:	ffffb097          	auipc	ra,0xffffb
    80006898:	9f0080e7          	jalr	-1552(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    8000689c:	00003517          	auipc	a0,0x3
    800068a0:	e3c50513          	addi	a0,a0,-452 # 800096d8 <CONSOLE_STATUS+0x6c8>
    800068a4:	fffff097          	auipc	ra,0xfffff
    800068a8:	2f0080e7          	jalr	752(ra) # 80005b94 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800068ac:	00000613          	li	a2,0
    800068b0:	00000597          	auipc	a1,0x0
    800068b4:	e1458593          	addi	a1,a1,-492 # 800066c4 <_ZL11workerBodyBPv>
    800068b8:	fd840513          	addi	a0,s0,-40
    800068bc:	ffffb097          	auipc	ra,0xffffb
    800068c0:	9c8080e7          	jalr	-1592(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800068c4:	00003517          	auipc	a0,0x3
    800068c8:	e2c50513          	addi	a0,a0,-468 # 800096f0 <CONSOLE_STATUS+0x6e0>
    800068cc:	fffff097          	auipc	ra,0xfffff
    800068d0:	2c8080e7          	jalr	712(ra) # 80005b94 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800068d4:	00000613          	li	a2,0
    800068d8:	00000597          	auipc	a1,0x0
    800068dc:	c6c58593          	addi	a1,a1,-916 # 80006544 <_ZL11workerBodyCPv>
    800068e0:	fe040513          	addi	a0,s0,-32
    800068e4:	ffffb097          	auipc	ra,0xffffb
    800068e8:	9a0080e7          	jalr	-1632(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800068ec:	00003517          	auipc	a0,0x3
    800068f0:	e1c50513          	addi	a0,a0,-484 # 80009708 <CONSOLE_STATUS+0x6f8>
    800068f4:	fffff097          	auipc	ra,0xfffff
    800068f8:	2a0080e7          	jalr	672(ra) # 80005b94 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800068fc:	00000613          	li	a2,0
    80006900:	00000597          	auipc	a1,0x0
    80006904:	afc58593          	addi	a1,a1,-1284 # 800063fc <_ZL11workerBodyDPv>
    80006908:	fe840513          	addi	a0,s0,-24
    8000690c:	ffffb097          	auipc	ra,0xffffb
    80006910:	978080e7          	jalr	-1672(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80006914:	00003517          	auipc	a0,0x3
    80006918:	e0c50513          	addi	a0,a0,-500 # 80009720 <CONSOLE_STATUS+0x710>
    8000691c:	fffff097          	auipc	ra,0xfffff
    80006920:	278080e7          	jalr	632(ra) # 80005b94 <_Z11printStringPKc>
    80006924:	00c0006f          	j	80006930 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006928:	ffffb097          	auipc	ra,0xffffb
    8000692c:	a60080e7          	jalr	-1440(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006930:	00005797          	auipc	a5,0x5
    80006934:	7ad7c783          	lbu	a5,1965(a5) # 8000c0dd <_ZL9finishedA>
    80006938:	fe0788e3          	beqz	a5,80006928 <_Z16System_Mode_testv+0xb4>
    8000693c:	00005797          	auipc	a5,0x5
    80006940:	7a07c783          	lbu	a5,1952(a5) # 8000c0dc <_ZL9finishedB>
    80006944:	fe0782e3          	beqz	a5,80006928 <_Z16System_Mode_testv+0xb4>
    80006948:	00005797          	auipc	a5,0x5
    8000694c:	7937c783          	lbu	a5,1939(a5) # 8000c0db <_ZL9finishedC>
    80006950:	fc078ce3          	beqz	a5,80006928 <_Z16System_Mode_testv+0xb4>
    80006954:	00005797          	auipc	a5,0x5
    80006958:	7867c783          	lbu	a5,1926(a5) # 8000c0da <_ZL9finishedD>
    8000695c:	fc0786e3          	beqz	a5,80006928 <_Z16System_Mode_testv+0xb4>
    }

}
    80006960:	02813083          	ld	ra,40(sp)
    80006964:	02013403          	ld	s0,32(sp)
    80006968:	03010113          	addi	sp,sp,48
    8000696c:	00008067          	ret

0000000080006970 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006970:	fe010113          	addi	sp,sp,-32
    80006974:	00113c23          	sd	ra,24(sp)
    80006978:	00813823          	sd	s0,16(sp)
    8000697c:	00913423          	sd	s1,8(sp)
    80006980:	01213023          	sd	s2,0(sp)
    80006984:	02010413          	addi	s0,sp,32
    80006988:	00050493          	mv	s1,a0
    8000698c:	00058913          	mv	s2,a1
    80006990:	0015879b          	addiw	a5,a1,1
    80006994:	0007851b          	sext.w	a0,a5
    80006998:	00f4a023          	sw	a5,0(s1)
    8000699c:	0004a823          	sw	zero,16(s1)
    800069a0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800069a4:	00251513          	slli	a0,a0,0x2
    800069a8:	ffffb097          	auipc	ra,0xffffb
    800069ac:	850080e7          	jalr	-1968(ra) # 800011f8 <_Z9mem_allocm>
    800069b0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800069b4:	00000593          	li	a1,0
    800069b8:	02048513          	addi	a0,s1,32
    800069bc:	ffffb097          	auipc	ra,0xffffb
    800069c0:	a08080e7          	jalr	-1528(ra) # 800013c4 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800069c4:	00090593          	mv	a1,s2
    800069c8:	01848513          	addi	a0,s1,24
    800069cc:	ffffb097          	auipc	ra,0xffffb
    800069d0:	9f8080e7          	jalr	-1544(ra) # 800013c4 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800069d4:	00100593          	li	a1,1
    800069d8:	02848513          	addi	a0,s1,40
    800069dc:	ffffb097          	auipc	ra,0xffffb
    800069e0:	9e8080e7          	jalr	-1560(ra) # 800013c4 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    800069e4:	00100593          	li	a1,1
    800069e8:	03048513          	addi	a0,s1,48
    800069ec:	ffffb097          	auipc	ra,0xffffb
    800069f0:	9d8080e7          	jalr	-1576(ra) # 800013c4 <_Z8sem_openPP4_semj>
}
    800069f4:	01813083          	ld	ra,24(sp)
    800069f8:	01013403          	ld	s0,16(sp)
    800069fc:	00813483          	ld	s1,8(sp)
    80006a00:	00013903          	ld	s2,0(sp)
    80006a04:	02010113          	addi	sp,sp,32
    80006a08:	00008067          	ret

0000000080006a0c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006a0c:	fe010113          	addi	sp,sp,-32
    80006a10:	00113c23          	sd	ra,24(sp)
    80006a14:	00813823          	sd	s0,16(sp)
    80006a18:	00913423          	sd	s1,8(sp)
    80006a1c:	01213023          	sd	s2,0(sp)
    80006a20:	02010413          	addi	s0,sp,32
    80006a24:	00050493          	mv	s1,a0
    80006a28:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006a2c:	01853503          	ld	a0,24(a0)
    80006a30:	ffffb097          	auipc	ra,0xffffb
    80006a34:	a18080e7          	jalr	-1512(ra) # 80001448 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006a38:	0304b503          	ld	a0,48(s1)
    80006a3c:	ffffb097          	auipc	ra,0xffffb
    80006a40:	a0c080e7          	jalr	-1524(ra) # 80001448 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006a44:	0084b783          	ld	a5,8(s1)
    80006a48:	0144a703          	lw	a4,20(s1)
    80006a4c:	00271713          	slli	a4,a4,0x2
    80006a50:	00e787b3          	add	a5,a5,a4
    80006a54:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006a58:	0144a783          	lw	a5,20(s1)
    80006a5c:	0017879b          	addiw	a5,a5,1
    80006a60:	0004a703          	lw	a4,0(s1)
    80006a64:	02e7e7bb          	remw	a5,a5,a4
    80006a68:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006a6c:	0304b503          	ld	a0,48(s1)
    80006a70:	ffffb097          	auipc	ra,0xffffb
    80006a74:	a18080e7          	jalr	-1512(ra) # 80001488 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006a78:	0204b503          	ld	a0,32(s1)
    80006a7c:	ffffb097          	auipc	ra,0xffffb
    80006a80:	a0c080e7          	jalr	-1524(ra) # 80001488 <_Z10sem_signalP4_sem>

}
    80006a84:	01813083          	ld	ra,24(sp)
    80006a88:	01013403          	ld	s0,16(sp)
    80006a8c:	00813483          	ld	s1,8(sp)
    80006a90:	00013903          	ld	s2,0(sp)
    80006a94:	02010113          	addi	sp,sp,32
    80006a98:	00008067          	ret

0000000080006a9c <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006a9c:	fe010113          	addi	sp,sp,-32
    80006aa0:	00113c23          	sd	ra,24(sp)
    80006aa4:	00813823          	sd	s0,16(sp)
    80006aa8:	00913423          	sd	s1,8(sp)
    80006aac:	01213023          	sd	s2,0(sp)
    80006ab0:	02010413          	addi	s0,sp,32
    80006ab4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006ab8:	02053503          	ld	a0,32(a0)
    80006abc:	ffffb097          	auipc	ra,0xffffb
    80006ac0:	98c080e7          	jalr	-1652(ra) # 80001448 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006ac4:	0284b503          	ld	a0,40(s1)
    80006ac8:	ffffb097          	auipc	ra,0xffffb
    80006acc:	980080e7          	jalr	-1664(ra) # 80001448 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006ad0:	0084b703          	ld	a4,8(s1)
    80006ad4:	0104a783          	lw	a5,16(s1)
    80006ad8:	00279693          	slli	a3,a5,0x2
    80006adc:	00d70733          	add	a4,a4,a3
    80006ae0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006ae4:	0017879b          	addiw	a5,a5,1
    80006ae8:	0004a703          	lw	a4,0(s1)
    80006aec:	02e7e7bb          	remw	a5,a5,a4
    80006af0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006af4:	0284b503          	ld	a0,40(s1)
    80006af8:	ffffb097          	auipc	ra,0xffffb
    80006afc:	990080e7          	jalr	-1648(ra) # 80001488 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006b00:	0184b503          	ld	a0,24(s1)
    80006b04:	ffffb097          	auipc	ra,0xffffb
    80006b08:	984080e7          	jalr	-1660(ra) # 80001488 <_Z10sem_signalP4_sem>

    return ret;
}
    80006b0c:	00090513          	mv	a0,s2
    80006b10:	01813083          	ld	ra,24(sp)
    80006b14:	01013403          	ld	s0,16(sp)
    80006b18:	00813483          	ld	s1,8(sp)
    80006b1c:	00013903          	ld	s2,0(sp)
    80006b20:	02010113          	addi	sp,sp,32
    80006b24:	00008067          	ret

0000000080006b28 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006b28:	fe010113          	addi	sp,sp,-32
    80006b2c:	00113c23          	sd	ra,24(sp)
    80006b30:	00813823          	sd	s0,16(sp)
    80006b34:	00913423          	sd	s1,8(sp)
    80006b38:	01213023          	sd	s2,0(sp)
    80006b3c:	02010413          	addi	s0,sp,32
    80006b40:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006b44:	02853503          	ld	a0,40(a0)
    80006b48:	ffffb097          	auipc	ra,0xffffb
    80006b4c:	900080e7          	jalr	-1792(ra) # 80001448 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006b50:	0304b503          	ld	a0,48(s1)
    80006b54:	ffffb097          	auipc	ra,0xffffb
    80006b58:	8f4080e7          	jalr	-1804(ra) # 80001448 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006b5c:	0144a783          	lw	a5,20(s1)
    80006b60:	0104a903          	lw	s2,16(s1)
    80006b64:	0327ce63          	blt	a5,s2,80006ba0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006b68:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006b6c:	0304b503          	ld	a0,48(s1)
    80006b70:	ffffb097          	auipc	ra,0xffffb
    80006b74:	918080e7          	jalr	-1768(ra) # 80001488 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006b78:	0284b503          	ld	a0,40(s1)
    80006b7c:	ffffb097          	auipc	ra,0xffffb
    80006b80:	90c080e7          	jalr	-1780(ra) # 80001488 <_Z10sem_signalP4_sem>

    return ret;
}
    80006b84:	00090513          	mv	a0,s2
    80006b88:	01813083          	ld	ra,24(sp)
    80006b8c:	01013403          	ld	s0,16(sp)
    80006b90:	00813483          	ld	s1,8(sp)
    80006b94:	00013903          	ld	s2,0(sp)
    80006b98:	02010113          	addi	sp,sp,32
    80006b9c:	00008067          	ret
        ret = cap - head + tail;
    80006ba0:	0004a703          	lw	a4,0(s1)
    80006ba4:	4127093b          	subw	s2,a4,s2
    80006ba8:	00f9093b          	addw	s2,s2,a5
    80006bac:	fc1ff06f          	j	80006b6c <_ZN6Buffer6getCntEv+0x44>

0000000080006bb0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006bb0:	fe010113          	addi	sp,sp,-32
    80006bb4:	00113c23          	sd	ra,24(sp)
    80006bb8:	00813823          	sd	s0,16(sp)
    80006bbc:	00913423          	sd	s1,8(sp)
    80006bc0:	02010413          	addi	s0,sp,32
    80006bc4:	00050493          	mv	s1,a0
    putc('\n');
    80006bc8:	00a00513          	li	a0,10
    80006bcc:	ffffb097          	auipc	ra,0xffffb
    80006bd0:	a04080e7          	jalr	-1532(ra) # 800015d0 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006bd4:	00003517          	auipc	a0,0x3
    80006bd8:	b6450513          	addi	a0,a0,-1180 # 80009738 <CONSOLE_STATUS+0x728>
    80006bdc:	fffff097          	auipc	ra,0xfffff
    80006be0:	fb8080e7          	jalr	-72(ra) # 80005b94 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006be4:	00048513          	mv	a0,s1
    80006be8:	00000097          	auipc	ra,0x0
    80006bec:	f40080e7          	jalr	-192(ra) # 80006b28 <_ZN6Buffer6getCntEv>
    80006bf0:	02a05c63          	blez	a0,80006c28 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006bf4:	0084b783          	ld	a5,8(s1)
    80006bf8:	0104a703          	lw	a4,16(s1)
    80006bfc:	00271713          	slli	a4,a4,0x2
    80006c00:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006c04:	0007c503          	lbu	a0,0(a5)
    80006c08:	ffffb097          	auipc	ra,0xffffb
    80006c0c:	9c8080e7          	jalr	-1592(ra) # 800015d0 <_Z4putcc>
        head = (head + 1) % cap;
    80006c10:	0104a783          	lw	a5,16(s1)
    80006c14:	0017879b          	addiw	a5,a5,1
    80006c18:	0004a703          	lw	a4,0(s1)
    80006c1c:	02e7e7bb          	remw	a5,a5,a4
    80006c20:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006c24:	fc1ff06f          	j	80006be4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006c28:	02100513          	li	a0,33
    80006c2c:	ffffb097          	auipc	ra,0xffffb
    80006c30:	9a4080e7          	jalr	-1628(ra) # 800015d0 <_Z4putcc>
    putc('\n');
    80006c34:	00a00513          	li	a0,10
    80006c38:	ffffb097          	auipc	ra,0xffffb
    80006c3c:	998080e7          	jalr	-1640(ra) # 800015d0 <_Z4putcc>
    mem_free(buffer);
    80006c40:	0084b503          	ld	a0,8(s1)
    80006c44:	ffffa097          	auipc	ra,0xffffa
    80006c48:	600080e7          	jalr	1536(ra) # 80001244 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006c4c:	0204b503          	ld	a0,32(s1)
    80006c50:	ffffa097          	auipc	ra,0xffffa
    80006c54:	7b8080e7          	jalr	1976(ra) # 80001408 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006c58:	0184b503          	ld	a0,24(s1)
    80006c5c:	ffffa097          	auipc	ra,0xffffa
    80006c60:	7ac080e7          	jalr	1964(ra) # 80001408 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006c64:	0304b503          	ld	a0,48(s1)
    80006c68:	ffffa097          	auipc	ra,0xffffa
    80006c6c:	7a0080e7          	jalr	1952(ra) # 80001408 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006c70:	0284b503          	ld	a0,40(s1)
    80006c74:	ffffa097          	auipc	ra,0xffffa
    80006c78:	794080e7          	jalr	1940(ra) # 80001408 <_Z9sem_closeP4_sem>
}
    80006c7c:	01813083          	ld	ra,24(sp)
    80006c80:	01013403          	ld	s0,16(sp)
    80006c84:	00813483          	ld	s1,8(sp)
    80006c88:	02010113          	addi	sp,sp,32
    80006c8c:	00008067          	ret

0000000080006c90 <start>:
    80006c90:	ff010113          	addi	sp,sp,-16
    80006c94:	00813423          	sd	s0,8(sp)
    80006c98:	01010413          	addi	s0,sp,16
    80006c9c:	300027f3          	csrr	a5,mstatus
    80006ca0:	ffffe737          	lui	a4,0xffffe
    80006ca4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff14bf>
    80006ca8:	00e7f7b3          	and	a5,a5,a4
    80006cac:	00001737          	lui	a4,0x1
    80006cb0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006cb4:	00e7e7b3          	or	a5,a5,a4
    80006cb8:	30079073          	csrw	mstatus,a5
    80006cbc:	00000797          	auipc	a5,0x0
    80006cc0:	16078793          	addi	a5,a5,352 # 80006e1c <system_main>
    80006cc4:	34179073          	csrw	mepc,a5
    80006cc8:	00000793          	li	a5,0
    80006ccc:	18079073          	csrw	satp,a5
    80006cd0:	000107b7          	lui	a5,0x10
    80006cd4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006cd8:	30279073          	csrw	medeleg,a5
    80006cdc:	30379073          	csrw	mideleg,a5
    80006ce0:	104027f3          	csrr	a5,sie
    80006ce4:	2227e793          	ori	a5,a5,546
    80006ce8:	10479073          	csrw	sie,a5
    80006cec:	fff00793          	li	a5,-1
    80006cf0:	00a7d793          	srli	a5,a5,0xa
    80006cf4:	3b079073          	csrw	pmpaddr0,a5
    80006cf8:	00f00793          	li	a5,15
    80006cfc:	3a079073          	csrw	pmpcfg0,a5
    80006d00:	f14027f3          	csrr	a5,mhartid
    80006d04:	0200c737          	lui	a4,0x200c
    80006d08:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006d0c:	0007869b          	sext.w	a3,a5
    80006d10:	00269713          	slli	a4,a3,0x2
    80006d14:	000f4637          	lui	a2,0xf4
    80006d18:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006d1c:	00d70733          	add	a4,a4,a3
    80006d20:	0037979b          	slliw	a5,a5,0x3
    80006d24:	020046b7          	lui	a3,0x2004
    80006d28:	00d787b3          	add	a5,a5,a3
    80006d2c:	00c585b3          	add	a1,a1,a2
    80006d30:	00371693          	slli	a3,a4,0x3
    80006d34:	00005717          	auipc	a4,0x5
    80006d38:	3ac70713          	addi	a4,a4,940 # 8000c0e0 <timer_scratch>
    80006d3c:	00b7b023          	sd	a1,0(a5)
    80006d40:	00d70733          	add	a4,a4,a3
    80006d44:	00f73c23          	sd	a5,24(a4)
    80006d48:	02c73023          	sd	a2,32(a4)
    80006d4c:	34071073          	csrw	mscratch,a4
    80006d50:	00000797          	auipc	a5,0x0
    80006d54:	6e078793          	addi	a5,a5,1760 # 80007430 <timervec>
    80006d58:	30579073          	csrw	mtvec,a5
    80006d5c:	300027f3          	csrr	a5,mstatus
    80006d60:	0087e793          	ori	a5,a5,8
    80006d64:	30079073          	csrw	mstatus,a5
    80006d68:	304027f3          	csrr	a5,mie
    80006d6c:	0807e793          	ori	a5,a5,128
    80006d70:	30479073          	csrw	mie,a5
    80006d74:	f14027f3          	csrr	a5,mhartid
    80006d78:	0007879b          	sext.w	a5,a5
    80006d7c:	00078213          	mv	tp,a5
    80006d80:	30200073          	mret
    80006d84:	00813403          	ld	s0,8(sp)
    80006d88:	01010113          	addi	sp,sp,16
    80006d8c:	00008067          	ret

0000000080006d90 <timerinit>:
    80006d90:	ff010113          	addi	sp,sp,-16
    80006d94:	00813423          	sd	s0,8(sp)
    80006d98:	01010413          	addi	s0,sp,16
    80006d9c:	f14027f3          	csrr	a5,mhartid
    80006da0:	0200c737          	lui	a4,0x200c
    80006da4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006da8:	0007869b          	sext.w	a3,a5
    80006dac:	00269713          	slli	a4,a3,0x2
    80006db0:	000f4637          	lui	a2,0xf4
    80006db4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006db8:	00d70733          	add	a4,a4,a3
    80006dbc:	0037979b          	slliw	a5,a5,0x3
    80006dc0:	020046b7          	lui	a3,0x2004
    80006dc4:	00d787b3          	add	a5,a5,a3
    80006dc8:	00c585b3          	add	a1,a1,a2
    80006dcc:	00371693          	slli	a3,a4,0x3
    80006dd0:	00005717          	auipc	a4,0x5
    80006dd4:	31070713          	addi	a4,a4,784 # 8000c0e0 <timer_scratch>
    80006dd8:	00b7b023          	sd	a1,0(a5)
    80006ddc:	00d70733          	add	a4,a4,a3
    80006de0:	00f73c23          	sd	a5,24(a4)
    80006de4:	02c73023          	sd	a2,32(a4)
    80006de8:	34071073          	csrw	mscratch,a4
    80006dec:	00000797          	auipc	a5,0x0
    80006df0:	64478793          	addi	a5,a5,1604 # 80007430 <timervec>
    80006df4:	30579073          	csrw	mtvec,a5
    80006df8:	300027f3          	csrr	a5,mstatus
    80006dfc:	0087e793          	ori	a5,a5,8
    80006e00:	30079073          	csrw	mstatus,a5
    80006e04:	304027f3          	csrr	a5,mie
    80006e08:	0807e793          	ori	a5,a5,128
    80006e0c:	30479073          	csrw	mie,a5
    80006e10:	00813403          	ld	s0,8(sp)
    80006e14:	01010113          	addi	sp,sp,16
    80006e18:	00008067          	ret

0000000080006e1c <system_main>:
    80006e1c:	fe010113          	addi	sp,sp,-32
    80006e20:	00813823          	sd	s0,16(sp)
    80006e24:	00913423          	sd	s1,8(sp)
    80006e28:	00113c23          	sd	ra,24(sp)
    80006e2c:	02010413          	addi	s0,sp,32
    80006e30:	00000097          	auipc	ra,0x0
    80006e34:	0c4080e7          	jalr	196(ra) # 80006ef4 <cpuid>
    80006e38:	00005497          	auipc	s1,0x5
    80006e3c:	e9848493          	addi	s1,s1,-360 # 8000bcd0 <started>
    80006e40:	02050263          	beqz	a0,80006e64 <system_main+0x48>
    80006e44:	0004a783          	lw	a5,0(s1)
    80006e48:	0007879b          	sext.w	a5,a5
    80006e4c:	fe078ce3          	beqz	a5,80006e44 <system_main+0x28>
    80006e50:	0ff0000f          	fence
    80006e54:	00003517          	auipc	a0,0x3
    80006e58:	93c50513          	addi	a0,a0,-1732 # 80009790 <CONSOLE_STATUS+0x780>
    80006e5c:	00001097          	auipc	ra,0x1
    80006e60:	a70080e7          	jalr	-1424(ra) # 800078cc <panic>
    80006e64:	00001097          	auipc	ra,0x1
    80006e68:	9c4080e7          	jalr	-1596(ra) # 80007828 <consoleinit>
    80006e6c:	00001097          	auipc	ra,0x1
    80006e70:	150080e7          	jalr	336(ra) # 80007fbc <printfinit>
    80006e74:	00002517          	auipc	a0,0x2
    80006e78:	44450513          	addi	a0,a0,1092 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006e7c:	00001097          	auipc	ra,0x1
    80006e80:	aac080e7          	jalr	-1364(ra) # 80007928 <__printf>
    80006e84:	00003517          	auipc	a0,0x3
    80006e88:	8dc50513          	addi	a0,a0,-1828 # 80009760 <CONSOLE_STATUS+0x750>
    80006e8c:	00001097          	auipc	ra,0x1
    80006e90:	a9c080e7          	jalr	-1380(ra) # 80007928 <__printf>
    80006e94:	00002517          	auipc	a0,0x2
    80006e98:	42450513          	addi	a0,a0,1060 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006e9c:	00001097          	auipc	ra,0x1
    80006ea0:	a8c080e7          	jalr	-1396(ra) # 80007928 <__printf>
    80006ea4:	00001097          	auipc	ra,0x1
    80006ea8:	4a4080e7          	jalr	1188(ra) # 80008348 <kinit>
    80006eac:	00000097          	auipc	ra,0x0
    80006eb0:	148080e7          	jalr	328(ra) # 80006ff4 <trapinit>
    80006eb4:	00000097          	auipc	ra,0x0
    80006eb8:	16c080e7          	jalr	364(ra) # 80007020 <trapinithart>
    80006ebc:	00000097          	auipc	ra,0x0
    80006ec0:	5b4080e7          	jalr	1460(ra) # 80007470 <plicinit>
    80006ec4:	00000097          	auipc	ra,0x0
    80006ec8:	5d4080e7          	jalr	1492(ra) # 80007498 <plicinithart>
    80006ecc:	00000097          	auipc	ra,0x0
    80006ed0:	078080e7          	jalr	120(ra) # 80006f44 <userinit>
    80006ed4:	0ff0000f          	fence
    80006ed8:	00100793          	li	a5,1
    80006edc:	00003517          	auipc	a0,0x3
    80006ee0:	89c50513          	addi	a0,a0,-1892 # 80009778 <CONSOLE_STATUS+0x768>
    80006ee4:	00f4a023          	sw	a5,0(s1)
    80006ee8:	00001097          	auipc	ra,0x1
    80006eec:	a40080e7          	jalr	-1472(ra) # 80007928 <__printf>
    80006ef0:	0000006f          	j	80006ef0 <system_main+0xd4>

0000000080006ef4 <cpuid>:
    80006ef4:	ff010113          	addi	sp,sp,-16
    80006ef8:	00813423          	sd	s0,8(sp)
    80006efc:	01010413          	addi	s0,sp,16
    80006f00:	00020513          	mv	a0,tp
    80006f04:	00813403          	ld	s0,8(sp)
    80006f08:	0005051b          	sext.w	a0,a0
    80006f0c:	01010113          	addi	sp,sp,16
    80006f10:	00008067          	ret

0000000080006f14 <mycpu>:
    80006f14:	ff010113          	addi	sp,sp,-16
    80006f18:	00813423          	sd	s0,8(sp)
    80006f1c:	01010413          	addi	s0,sp,16
    80006f20:	00020793          	mv	a5,tp
    80006f24:	00813403          	ld	s0,8(sp)
    80006f28:	0007879b          	sext.w	a5,a5
    80006f2c:	00779793          	slli	a5,a5,0x7
    80006f30:	00006517          	auipc	a0,0x6
    80006f34:	1e050513          	addi	a0,a0,480 # 8000d110 <cpus>
    80006f38:	00f50533          	add	a0,a0,a5
    80006f3c:	01010113          	addi	sp,sp,16
    80006f40:	00008067          	ret

0000000080006f44 <userinit>:
    80006f44:	ff010113          	addi	sp,sp,-16
    80006f48:	00813423          	sd	s0,8(sp)
    80006f4c:	01010413          	addi	s0,sp,16
    80006f50:	00813403          	ld	s0,8(sp)
    80006f54:	01010113          	addi	sp,sp,16
    80006f58:	ffffb317          	auipc	t1,0xffffb
    80006f5c:	66830067          	jr	1640(t1) # 800025c0 <main>

0000000080006f60 <either_copyout>:
    80006f60:	ff010113          	addi	sp,sp,-16
    80006f64:	00813023          	sd	s0,0(sp)
    80006f68:	00113423          	sd	ra,8(sp)
    80006f6c:	01010413          	addi	s0,sp,16
    80006f70:	02051663          	bnez	a0,80006f9c <either_copyout+0x3c>
    80006f74:	00058513          	mv	a0,a1
    80006f78:	00060593          	mv	a1,a2
    80006f7c:	0006861b          	sext.w	a2,a3
    80006f80:	00002097          	auipc	ra,0x2
    80006f84:	c54080e7          	jalr	-940(ra) # 80008bd4 <__memmove>
    80006f88:	00813083          	ld	ra,8(sp)
    80006f8c:	00013403          	ld	s0,0(sp)
    80006f90:	00000513          	li	a0,0
    80006f94:	01010113          	addi	sp,sp,16
    80006f98:	00008067          	ret
    80006f9c:	00003517          	auipc	a0,0x3
    80006fa0:	81c50513          	addi	a0,a0,-2020 # 800097b8 <CONSOLE_STATUS+0x7a8>
    80006fa4:	00001097          	auipc	ra,0x1
    80006fa8:	928080e7          	jalr	-1752(ra) # 800078cc <panic>

0000000080006fac <either_copyin>:
    80006fac:	ff010113          	addi	sp,sp,-16
    80006fb0:	00813023          	sd	s0,0(sp)
    80006fb4:	00113423          	sd	ra,8(sp)
    80006fb8:	01010413          	addi	s0,sp,16
    80006fbc:	02059463          	bnez	a1,80006fe4 <either_copyin+0x38>
    80006fc0:	00060593          	mv	a1,a2
    80006fc4:	0006861b          	sext.w	a2,a3
    80006fc8:	00002097          	auipc	ra,0x2
    80006fcc:	c0c080e7          	jalr	-1012(ra) # 80008bd4 <__memmove>
    80006fd0:	00813083          	ld	ra,8(sp)
    80006fd4:	00013403          	ld	s0,0(sp)
    80006fd8:	00000513          	li	a0,0
    80006fdc:	01010113          	addi	sp,sp,16
    80006fe0:	00008067          	ret
    80006fe4:	00002517          	auipc	a0,0x2
    80006fe8:	7fc50513          	addi	a0,a0,2044 # 800097e0 <CONSOLE_STATUS+0x7d0>
    80006fec:	00001097          	auipc	ra,0x1
    80006ff0:	8e0080e7          	jalr	-1824(ra) # 800078cc <panic>

0000000080006ff4 <trapinit>:
    80006ff4:	ff010113          	addi	sp,sp,-16
    80006ff8:	00813423          	sd	s0,8(sp)
    80006ffc:	01010413          	addi	s0,sp,16
    80007000:	00813403          	ld	s0,8(sp)
    80007004:	00003597          	auipc	a1,0x3
    80007008:	80458593          	addi	a1,a1,-2044 # 80009808 <CONSOLE_STATUS+0x7f8>
    8000700c:	00006517          	auipc	a0,0x6
    80007010:	18450513          	addi	a0,a0,388 # 8000d190 <tickslock>
    80007014:	01010113          	addi	sp,sp,16
    80007018:	00001317          	auipc	t1,0x1
    8000701c:	5c030067          	jr	1472(t1) # 800085d8 <initlock>

0000000080007020 <trapinithart>:
    80007020:	ff010113          	addi	sp,sp,-16
    80007024:	00813423          	sd	s0,8(sp)
    80007028:	01010413          	addi	s0,sp,16
    8000702c:	00000797          	auipc	a5,0x0
    80007030:	2f478793          	addi	a5,a5,756 # 80007320 <kernelvec>
    80007034:	10579073          	csrw	stvec,a5
    80007038:	00813403          	ld	s0,8(sp)
    8000703c:	01010113          	addi	sp,sp,16
    80007040:	00008067          	ret

0000000080007044 <usertrap>:
    80007044:	ff010113          	addi	sp,sp,-16
    80007048:	00813423          	sd	s0,8(sp)
    8000704c:	01010413          	addi	s0,sp,16
    80007050:	00813403          	ld	s0,8(sp)
    80007054:	01010113          	addi	sp,sp,16
    80007058:	00008067          	ret

000000008000705c <usertrapret>:
    8000705c:	ff010113          	addi	sp,sp,-16
    80007060:	00813423          	sd	s0,8(sp)
    80007064:	01010413          	addi	s0,sp,16
    80007068:	00813403          	ld	s0,8(sp)
    8000706c:	01010113          	addi	sp,sp,16
    80007070:	00008067          	ret

0000000080007074 <kerneltrap>:
    80007074:	fe010113          	addi	sp,sp,-32
    80007078:	00813823          	sd	s0,16(sp)
    8000707c:	00113c23          	sd	ra,24(sp)
    80007080:	00913423          	sd	s1,8(sp)
    80007084:	02010413          	addi	s0,sp,32
    80007088:	142025f3          	csrr	a1,scause
    8000708c:	100027f3          	csrr	a5,sstatus
    80007090:	0027f793          	andi	a5,a5,2
    80007094:	10079c63          	bnez	a5,800071ac <kerneltrap+0x138>
    80007098:	142027f3          	csrr	a5,scause
    8000709c:	0207ce63          	bltz	a5,800070d8 <kerneltrap+0x64>
    800070a0:	00002517          	auipc	a0,0x2
    800070a4:	7b050513          	addi	a0,a0,1968 # 80009850 <CONSOLE_STATUS+0x840>
    800070a8:	00001097          	auipc	ra,0x1
    800070ac:	880080e7          	jalr	-1920(ra) # 80007928 <__printf>
    800070b0:	141025f3          	csrr	a1,sepc
    800070b4:	14302673          	csrr	a2,stval
    800070b8:	00002517          	auipc	a0,0x2
    800070bc:	7a850513          	addi	a0,a0,1960 # 80009860 <CONSOLE_STATUS+0x850>
    800070c0:	00001097          	auipc	ra,0x1
    800070c4:	868080e7          	jalr	-1944(ra) # 80007928 <__printf>
    800070c8:	00002517          	auipc	a0,0x2
    800070cc:	7b050513          	addi	a0,a0,1968 # 80009878 <CONSOLE_STATUS+0x868>
    800070d0:	00000097          	auipc	ra,0x0
    800070d4:	7fc080e7          	jalr	2044(ra) # 800078cc <panic>
    800070d8:	0ff7f713          	andi	a4,a5,255
    800070dc:	00900693          	li	a3,9
    800070e0:	04d70063          	beq	a4,a3,80007120 <kerneltrap+0xac>
    800070e4:	fff00713          	li	a4,-1
    800070e8:	03f71713          	slli	a4,a4,0x3f
    800070ec:	00170713          	addi	a4,a4,1
    800070f0:	fae798e3          	bne	a5,a4,800070a0 <kerneltrap+0x2c>
    800070f4:	00000097          	auipc	ra,0x0
    800070f8:	e00080e7          	jalr	-512(ra) # 80006ef4 <cpuid>
    800070fc:	06050663          	beqz	a0,80007168 <kerneltrap+0xf4>
    80007100:	144027f3          	csrr	a5,sip
    80007104:	ffd7f793          	andi	a5,a5,-3
    80007108:	14479073          	csrw	sip,a5
    8000710c:	01813083          	ld	ra,24(sp)
    80007110:	01013403          	ld	s0,16(sp)
    80007114:	00813483          	ld	s1,8(sp)
    80007118:	02010113          	addi	sp,sp,32
    8000711c:	00008067          	ret
    80007120:	00000097          	auipc	ra,0x0
    80007124:	3c4080e7          	jalr	964(ra) # 800074e4 <plic_claim>
    80007128:	00a00793          	li	a5,10
    8000712c:	00050493          	mv	s1,a0
    80007130:	06f50863          	beq	a0,a5,800071a0 <kerneltrap+0x12c>
    80007134:	fc050ce3          	beqz	a0,8000710c <kerneltrap+0x98>
    80007138:	00050593          	mv	a1,a0
    8000713c:	00002517          	auipc	a0,0x2
    80007140:	6f450513          	addi	a0,a0,1780 # 80009830 <CONSOLE_STATUS+0x820>
    80007144:	00000097          	auipc	ra,0x0
    80007148:	7e4080e7          	jalr	2020(ra) # 80007928 <__printf>
    8000714c:	01013403          	ld	s0,16(sp)
    80007150:	01813083          	ld	ra,24(sp)
    80007154:	00048513          	mv	a0,s1
    80007158:	00813483          	ld	s1,8(sp)
    8000715c:	02010113          	addi	sp,sp,32
    80007160:	00000317          	auipc	t1,0x0
    80007164:	3bc30067          	jr	956(t1) # 8000751c <plic_complete>
    80007168:	00006517          	auipc	a0,0x6
    8000716c:	02850513          	addi	a0,a0,40 # 8000d190 <tickslock>
    80007170:	00001097          	auipc	ra,0x1
    80007174:	48c080e7          	jalr	1164(ra) # 800085fc <acquire>
    80007178:	00005717          	auipc	a4,0x5
    8000717c:	b5c70713          	addi	a4,a4,-1188 # 8000bcd4 <ticks>
    80007180:	00072783          	lw	a5,0(a4)
    80007184:	00006517          	auipc	a0,0x6
    80007188:	00c50513          	addi	a0,a0,12 # 8000d190 <tickslock>
    8000718c:	0017879b          	addiw	a5,a5,1
    80007190:	00f72023          	sw	a5,0(a4)
    80007194:	00001097          	auipc	ra,0x1
    80007198:	534080e7          	jalr	1332(ra) # 800086c8 <release>
    8000719c:	f65ff06f          	j	80007100 <kerneltrap+0x8c>
    800071a0:	00001097          	auipc	ra,0x1
    800071a4:	090080e7          	jalr	144(ra) # 80008230 <uartintr>
    800071a8:	fa5ff06f          	j	8000714c <kerneltrap+0xd8>
    800071ac:	00002517          	auipc	a0,0x2
    800071b0:	66450513          	addi	a0,a0,1636 # 80009810 <CONSOLE_STATUS+0x800>
    800071b4:	00000097          	auipc	ra,0x0
    800071b8:	718080e7          	jalr	1816(ra) # 800078cc <panic>

00000000800071bc <clockintr>:
    800071bc:	fe010113          	addi	sp,sp,-32
    800071c0:	00813823          	sd	s0,16(sp)
    800071c4:	00913423          	sd	s1,8(sp)
    800071c8:	00113c23          	sd	ra,24(sp)
    800071cc:	02010413          	addi	s0,sp,32
    800071d0:	00006497          	auipc	s1,0x6
    800071d4:	fc048493          	addi	s1,s1,-64 # 8000d190 <tickslock>
    800071d8:	00048513          	mv	a0,s1
    800071dc:	00001097          	auipc	ra,0x1
    800071e0:	420080e7          	jalr	1056(ra) # 800085fc <acquire>
    800071e4:	00005717          	auipc	a4,0x5
    800071e8:	af070713          	addi	a4,a4,-1296 # 8000bcd4 <ticks>
    800071ec:	00072783          	lw	a5,0(a4)
    800071f0:	01013403          	ld	s0,16(sp)
    800071f4:	01813083          	ld	ra,24(sp)
    800071f8:	00048513          	mv	a0,s1
    800071fc:	0017879b          	addiw	a5,a5,1
    80007200:	00813483          	ld	s1,8(sp)
    80007204:	00f72023          	sw	a5,0(a4)
    80007208:	02010113          	addi	sp,sp,32
    8000720c:	00001317          	auipc	t1,0x1
    80007210:	4bc30067          	jr	1212(t1) # 800086c8 <release>

0000000080007214 <devintr>:
    80007214:	142027f3          	csrr	a5,scause
    80007218:	00000513          	li	a0,0
    8000721c:	0007c463          	bltz	a5,80007224 <devintr+0x10>
    80007220:	00008067          	ret
    80007224:	fe010113          	addi	sp,sp,-32
    80007228:	00813823          	sd	s0,16(sp)
    8000722c:	00113c23          	sd	ra,24(sp)
    80007230:	00913423          	sd	s1,8(sp)
    80007234:	02010413          	addi	s0,sp,32
    80007238:	0ff7f713          	andi	a4,a5,255
    8000723c:	00900693          	li	a3,9
    80007240:	04d70c63          	beq	a4,a3,80007298 <devintr+0x84>
    80007244:	fff00713          	li	a4,-1
    80007248:	03f71713          	slli	a4,a4,0x3f
    8000724c:	00170713          	addi	a4,a4,1
    80007250:	00e78c63          	beq	a5,a4,80007268 <devintr+0x54>
    80007254:	01813083          	ld	ra,24(sp)
    80007258:	01013403          	ld	s0,16(sp)
    8000725c:	00813483          	ld	s1,8(sp)
    80007260:	02010113          	addi	sp,sp,32
    80007264:	00008067          	ret
    80007268:	00000097          	auipc	ra,0x0
    8000726c:	c8c080e7          	jalr	-884(ra) # 80006ef4 <cpuid>
    80007270:	06050663          	beqz	a0,800072dc <devintr+0xc8>
    80007274:	144027f3          	csrr	a5,sip
    80007278:	ffd7f793          	andi	a5,a5,-3
    8000727c:	14479073          	csrw	sip,a5
    80007280:	01813083          	ld	ra,24(sp)
    80007284:	01013403          	ld	s0,16(sp)
    80007288:	00813483          	ld	s1,8(sp)
    8000728c:	00200513          	li	a0,2
    80007290:	02010113          	addi	sp,sp,32
    80007294:	00008067          	ret
    80007298:	00000097          	auipc	ra,0x0
    8000729c:	24c080e7          	jalr	588(ra) # 800074e4 <plic_claim>
    800072a0:	00a00793          	li	a5,10
    800072a4:	00050493          	mv	s1,a0
    800072a8:	06f50663          	beq	a0,a5,80007314 <devintr+0x100>
    800072ac:	00100513          	li	a0,1
    800072b0:	fa0482e3          	beqz	s1,80007254 <devintr+0x40>
    800072b4:	00048593          	mv	a1,s1
    800072b8:	00002517          	auipc	a0,0x2
    800072bc:	57850513          	addi	a0,a0,1400 # 80009830 <CONSOLE_STATUS+0x820>
    800072c0:	00000097          	auipc	ra,0x0
    800072c4:	668080e7          	jalr	1640(ra) # 80007928 <__printf>
    800072c8:	00048513          	mv	a0,s1
    800072cc:	00000097          	auipc	ra,0x0
    800072d0:	250080e7          	jalr	592(ra) # 8000751c <plic_complete>
    800072d4:	00100513          	li	a0,1
    800072d8:	f7dff06f          	j	80007254 <devintr+0x40>
    800072dc:	00006517          	auipc	a0,0x6
    800072e0:	eb450513          	addi	a0,a0,-332 # 8000d190 <tickslock>
    800072e4:	00001097          	auipc	ra,0x1
    800072e8:	318080e7          	jalr	792(ra) # 800085fc <acquire>
    800072ec:	00005717          	auipc	a4,0x5
    800072f0:	9e870713          	addi	a4,a4,-1560 # 8000bcd4 <ticks>
    800072f4:	00072783          	lw	a5,0(a4)
    800072f8:	00006517          	auipc	a0,0x6
    800072fc:	e9850513          	addi	a0,a0,-360 # 8000d190 <tickslock>
    80007300:	0017879b          	addiw	a5,a5,1
    80007304:	00f72023          	sw	a5,0(a4)
    80007308:	00001097          	auipc	ra,0x1
    8000730c:	3c0080e7          	jalr	960(ra) # 800086c8 <release>
    80007310:	f65ff06f          	j	80007274 <devintr+0x60>
    80007314:	00001097          	auipc	ra,0x1
    80007318:	f1c080e7          	jalr	-228(ra) # 80008230 <uartintr>
    8000731c:	fadff06f          	j	800072c8 <devintr+0xb4>

0000000080007320 <kernelvec>:
    80007320:	f0010113          	addi	sp,sp,-256
    80007324:	00113023          	sd	ra,0(sp)
    80007328:	00213423          	sd	sp,8(sp)
    8000732c:	00313823          	sd	gp,16(sp)
    80007330:	00413c23          	sd	tp,24(sp)
    80007334:	02513023          	sd	t0,32(sp)
    80007338:	02613423          	sd	t1,40(sp)
    8000733c:	02713823          	sd	t2,48(sp)
    80007340:	02813c23          	sd	s0,56(sp)
    80007344:	04913023          	sd	s1,64(sp)
    80007348:	04a13423          	sd	a0,72(sp)
    8000734c:	04b13823          	sd	a1,80(sp)
    80007350:	04c13c23          	sd	a2,88(sp)
    80007354:	06d13023          	sd	a3,96(sp)
    80007358:	06e13423          	sd	a4,104(sp)
    8000735c:	06f13823          	sd	a5,112(sp)
    80007360:	07013c23          	sd	a6,120(sp)
    80007364:	09113023          	sd	a7,128(sp)
    80007368:	09213423          	sd	s2,136(sp)
    8000736c:	09313823          	sd	s3,144(sp)
    80007370:	09413c23          	sd	s4,152(sp)
    80007374:	0b513023          	sd	s5,160(sp)
    80007378:	0b613423          	sd	s6,168(sp)
    8000737c:	0b713823          	sd	s7,176(sp)
    80007380:	0b813c23          	sd	s8,184(sp)
    80007384:	0d913023          	sd	s9,192(sp)
    80007388:	0da13423          	sd	s10,200(sp)
    8000738c:	0db13823          	sd	s11,208(sp)
    80007390:	0dc13c23          	sd	t3,216(sp)
    80007394:	0fd13023          	sd	t4,224(sp)
    80007398:	0fe13423          	sd	t5,232(sp)
    8000739c:	0ff13823          	sd	t6,240(sp)
    800073a0:	cd5ff0ef          	jal	ra,80007074 <kerneltrap>
    800073a4:	00013083          	ld	ra,0(sp)
    800073a8:	00813103          	ld	sp,8(sp)
    800073ac:	01013183          	ld	gp,16(sp)
    800073b0:	02013283          	ld	t0,32(sp)
    800073b4:	02813303          	ld	t1,40(sp)
    800073b8:	03013383          	ld	t2,48(sp)
    800073bc:	03813403          	ld	s0,56(sp)
    800073c0:	04013483          	ld	s1,64(sp)
    800073c4:	04813503          	ld	a0,72(sp)
    800073c8:	05013583          	ld	a1,80(sp)
    800073cc:	05813603          	ld	a2,88(sp)
    800073d0:	06013683          	ld	a3,96(sp)
    800073d4:	06813703          	ld	a4,104(sp)
    800073d8:	07013783          	ld	a5,112(sp)
    800073dc:	07813803          	ld	a6,120(sp)
    800073e0:	08013883          	ld	a7,128(sp)
    800073e4:	08813903          	ld	s2,136(sp)
    800073e8:	09013983          	ld	s3,144(sp)
    800073ec:	09813a03          	ld	s4,152(sp)
    800073f0:	0a013a83          	ld	s5,160(sp)
    800073f4:	0a813b03          	ld	s6,168(sp)
    800073f8:	0b013b83          	ld	s7,176(sp)
    800073fc:	0b813c03          	ld	s8,184(sp)
    80007400:	0c013c83          	ld	s9,192(sp)
    80007404:	0c813d03          	ld	s10,200(sp)
    80007408:	0d013d83          	ld	s11,208(sp)
    8000740c:	0d813e03          	ld	t3,216(sp)
    80007410:	0e013e83          	ld	t4,224(sp)
    80007414:	0e813f03          	ld	t5,232(sp)
    80007418:	0f013f83          	ld	t6,240(sp)
    8000741c:	10010113          	addi	sp,sp,256
    80007420:	10200073          	sret
    80007424:	00000013          	nop
    80007428:	00000013          	nop
    8000742c:	00000013          	nop

0000000080007430 <timervec>:
    80007430:	34051573          	csrrw	a0,mscratch,a0
    80007434:	00b53023          	sd	a1,0(a0)
    80007438:	00c53423          	sd	a2,8(a0)
    8000743c:	00d53823          	sd	a3,16(a0)
    80007440:	01853583          	ld	a1,24(a0)
    80007444:	02053603          	ld	a2,32(a0)
    80007448:	0005b683          	ld	a3,0(a1)
    8000744c:	00c686b3          	add	a3,a3,a2
    80007450:	00d5b023          	sd	a3,0(a1)
    80007454:	00200593          	li	a1,2
    80007458:	14459073          	csrw	sip,a1
    8000745c:	01053683          	ld	a3,16(a0)
    80007460:	00853603          	ld	a2,8(a0)
    80007464:	00053583          	ld	a1,0(a0)
    80007468:	34051573          	csrrw	a0,mscratch,a0
    8000746c:	30200073          	mret

0000000080007470 <plicinit>:
    80007470:	ff010113          	addi	sp,sp,-16
    80007474:	00813423          	sd	s0,8(sp)
    80007478:	01010413          	addi	s0,sp,16
    8000747c:	00813403          	ld	s0,8(sp)
    80007480:	0c0007b7          	lui	a5,0xc000
    80007484:	00100713          	li	a4,1
    80007488:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000748c:	00e7a223          	sw	a4,4(a5)
    80007490:	01010113          	addi	sp,sp,16
    80007494:	00008067          	ret

0000000080007498 <plicinithart>:
    80007498:	ff010113          	addi	sp,sp,-16
    8000749c:	00813023          	sd	s0,0(sp)
    800074a0:	00113423          	sd	ra,8(sp)
    800074a4:	01010413          	addi	s0,sp,16
    800074a8:	00000097          	auipc	ra,0x0
    800074ac:	a4c080e7          	jalr	-1460(ra) # 80006ef4 <cpuid>
    800074b0:	0085171b          	slliw	a4,a0,0x8
    800074b4:	0c0027b7          	lui	a5,0xc002
    800074b8:	00e787b3          	add	a5,a5,a4
    800074bc:	40200713          	li	a4,1026
    800074c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800074c4:	00813083          	ld	ra,8(sp)
    800074c8:	00013403          	ld	s0,0(sp)
    800074cc:	00d5151b          	slliw	a0,a0,0xd
    800074d0:	0c2017b7          	lui	a5,0xc201
    800074d4:	00a78533          	add	a0,a5,a0
    800074d8:	00052023          	sw	zero,0(a0)
    800074dc:	01010113          	addi	sp,sp,16
    800074e0:	00008067          	ret

00000000800074e4 <plic_claim>:
    800074e4:	ff010113          	addi	sp,sp,-16
    800074e8:	00813023          	sd	s0,0(sp)
    800074ec:	00113423          	sd	ra,8(sp)
    800074f0:	01010413          	addi	s0,sp,16
    800074f4:	00000097          	auipc	ra,0x0
    800074f8:	a00080e7          	jalr	-1536(ra) # 80006ef4 <cpuid>
    800074fc:	00813083          	ld	ra,8(sp)
    80007500:	00013403          	ld	s0,0(sp)
    80007504:	00d5151b          	slliw	a0,a0,0xd
    80007508:	0c2017b7          	lui	a5,0xc201
    8000750c:	00a78533          	add	a0,a5,a0
    80007510:	00452503          	lw	a0,4(a0)
    80007514:	01010113          	addi	sp,sp,16
    80007518:	00008067          	ret

000000008000751c <plic_complete>:
    8000751c:	fe010113          	addi	sp,sp,-32
    80007520:	00813823          	sd	s0,16(sp)
    80007524:	00913423          	sd	s1,8(sp)
    80007528:	00113c23          	sd	ra,24(sp)
    8000752c:	02010413          	addi	s0,sp,32
    80007530:	00050493          	mv	s1,a0
    80007534:	00000097          	auipc	ra,0x0
    80007538:	9c0080e7          	jalr	-1600(ra) # 80006ef4 <cpuid>
    8000753c:	01813083          	ld	ra,24(sp)
    80007540:	01013403          	ld	s0,16(sp)
    80007544:	00d5179b          	slliw	a5,a0,0xd
    80007548:	0c201737          	lui	a4,0xc201
    8000754c:	00f707b3          	add	a5,a4,a5
    80007550:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007554:	00813483          	ld	s1,8(sp)
    80007558:	02010113          	addi	sp,sp,32
    8000755c:	00008067          	ret

0000000080007560 <consolewrite>:
    80007560:	fb010113          	addi	sp,sp,-80
    80007564:	04813023          	sd	s0,64(sp)
    80007568:	04113423          	sd	ra,72(sp)
    8000756c:	02913c23          	sd	s1,56(sp)
    80007570:	03213823          	sd	s2,48(sp)
    80007574:	03313423          	sd	s3,40(sp)
    80007578:	03413023          	sd	s4,32(sp)
    8000757c:	01513c23          	sd	s5,24(sp)
    80007580:	05010413          	addi	s0,sp,80
    80007584:	06c05c63          	blez	a2,800075fc <consolewrite+0x9c>
    80007588:	00060993          	mv	s3,a2
    8000758c:	00050a13          	mv	s4,a0
    80007590:	00058493          	mv	s1,a1
    80007594:	00000913          	li	s2,0
    80007598:	fff00a93          	li	s5,-1
    8000759c:	01c0006f          	j	800075b8 <consolewrite+0x58>
    800075a0:	fbf44503          	lbu	a0,-65(s0)
    800075a4:	0019091b          	addiw	s2,s2,1
    800075a8:	00148493          	addi	s1,s1,1
    800075ac:	00001097          	auipc	ra,0x1
    800075b0:	a9c080e7          	jalr	-1380(ra) # 80008048 <uartputc>
    800075b4:	03298063          	beq	s3,s2,800075d4 <consolewrite+0x74>
    800075b8:	00048613          	mv	a2,s1
    800075bc:	00100693          	li	a3,1
    800075c0:	000a0593          	mv	a1,s4
    800075c4:	fbf40513          	addi	a0,s0,-65
    800075c8:	00000097          	auipc	ra,0x0
    800075cc:	9e4080e7          	jalr	-1564(ra) # 80006fac <either_copyin>
    800075d0:	fd5518e3          	bne	a0,s5,800075a0 <consolewrite+0x40>
    800075d4:	04813083          	ld	ra,72(sp)
    800075d8:	04013403          	ld	s0,64(sp)
    800075dc:	03813483          	ld	s1,56(sp)
    800075e0:	02813983          	ld	s3,40(sp)
    800075e4:	02013a03          	ld	s4,32(sp)
    800075e8:	01813a83          	ld	s5,24(sp)
    800075ec:	00090513          	mv	a0,s2
    800075f0:	03013903          	ld	s2,48(sp)
    800075f4:	05010113          	addi	sp,sp,80
    800075f8:	00008067          	ret
    800075fc:	00000913          	li	s2,0
    80007600:	fd5ff06f          	j	800075d4 <consolewrite+0x74>

0000000080007604 <consoleread>:
    80007604:	f9010113          	addi	sp,sp,-112
    80007608:	06813023          	sd	s0,96(sp)
    8000760c:	04913c23          	sd	s1,88(sp)
    80007610:	05213823          	sd	s2,80(sp)
    80007614:	05313423          	sd	s3,72(sp)
    80007618:	05413023          	sd	s4,64(sp)
    8000761c:	03513c23          	sd	s5,56(sp)
    80007620:	03613823          	sd	s6,48(sp)
    80007624:	03713423          	sd	s7,40(sp)
    80007628:	03813023          	sd	s8,32(sp)
    8000762c:	06113423          	sd	ra,104(sp)
    80007630:	01913c23          	sd	s9,24(sp)
    80007634:	07010413          	addi	s0,sp,112
    80007638:	00060b93          	mv	s7,a2
    8000763c:	00050913          	mv	s2,a0
    80007640:	00058c13          	mv	s8,a1
    80007644:	00060b1b          	sext.w	s6,a2
    80007648:	00006497          	auipc	s1,0x6
    8000764c:	b7048493          	addi	s1,s1,-1168 # 8000d1b8 <cons>
    80007650:	00400993          	li	s3,4
    80007654:	fff00a13          	li	s4,-1
    80007658:	00a00a93          	li	s5,10
    8000765c:	05705e63          	blez	s7,800076b8 <consoleread+0xb4>
    80007660:	09c4a703          	lw	a4,156(s1)
    80007664:	0984a783          	lw	a5,152(s1)
    80007668:	0007071b          	sext.w	a4,a4
    8000766c:	08e78463          	beq	a5,a4,800076f4 <consoleread+0xf0>
    80007670:	07f7f713          	andi	a4,a5,127
    80007674:	00e48733          	add	a4,s1,a4
    80007678:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000767c:	0017869b          	addiw	a3,a5,1
    80007680:	08d4ac23          	sw	a3,152(s1)
    80007684:	00070c9b          	sext.w	s9,a4
    80007688:	0b370663          	beq	a4,s3,80007734 <consoleread+0x130>
    8000768c:	00100693          	li	a3,1
    80007690:	f9f40613          	addi	a2,s0,-97
    80007694:	000c0593          	mv	a1,s8
    80007698:	00090513          	mv	a0,s2
    8000769c:	f8e40fa3          	sb	a4,-97(s0)
    800076a0:	00000097          	auipc	ra,0x0
    800076a4:	8c0080e7          	jalr	-1856(ra) # 80006f60 <either_copyout>
    800076a8:	01450863          	beq	a0,s4,800076b8 <consoleread+0xb4>
    800076ac:	001c0c13          	addi	s8,s8,1
    800076b0:	fffb8b9b          	addiw	s7,s7,-1
    800076b4:	fb5c94e3          	bne	s9,s5,8000765c <consoleread+0x58>
    800076b8:	000b851b          	sext.w	a0,s7
    800076bc:	06813083          	ld	ra,104(sp)
    800076c0:	06013403          	ld	s0,96(sp)
    800076c4:	05813483          	ld	s1,88(sp)
    800076c8:	05013903          	ld	s2,80(sp)
    800076cc:	04813983          	ld	s3,72(sp)
    800076d0:	04013a03          	ld	s4,64(sp)
    800076d4:	03813a83          	ld	s5,56(sp)
    800076d8:	02813b83          	ld	s7,40(sp)
    800076dc:	02013c03          	ld	s8,32(sp)
    800076e0:	01813c83          	ld	s9,24(sp)
    800076e4:	40ab053b          	subw	a0,s6,a0
    800076e8:	03013b03          	ld	s6,48(sp)
    800076ec:	07010113          	addi	sp,sp,112
    800076f0:	00008067          	ret
    800076f4:	00001097          	auipc	ra,0x1
    800076f8:	1d8080e7          	jalr	472(ra) # 800088cc <push_on>
    800076fc:	0984a703          	lw	a4,152(s1)
    80007700:	09c4a783          	lw	a5,156(s1)
    80007704:	0007879b          	sext.w	a5,a5
    80007708:	fef70ce3          	beq	a4,a5,80007700 <consoleread+0xfc>
    8000770c:	00001097          	auipc	ra,0x1
    80007710:	234080e7          	jalr	564(ra) # 80008940 <pop_on>
    80007714:	0984a783          	lw	a5,152(s1)
    80007718:	07f7f713          	andi	a4,a5,127
    8000771c:	00e48733          	add	a4,s1,a4
    80007720:	01874703          	lbu	a4,24(a4)
    80007724:	0017869b          	addiw	a3,a5,1
    80007728:	08d4ac23          	sw	a3,152(s1)
    8000772c:	00070c9b          	sext.w	s9,a4
    80007730:	f5371ee3          	bne	a4,s3,8000768c <consoleread+0x88>
    80007734:	000b851b          	sext.w	a0,s7
    80007738:	f96bf2e3          	bgeu	s7,s6,800076bc <consoleread+0xb8>
    8000773c:	08f4ac23          	sw	a5,152(s1)
    80007740:	f7dff06f          	j	800076bc <consoleread+0xb8>

0000000080007744 <consputc>:
    80007744:	10000793          	li	a5,256
    80007748:	00f50663          	beq	a0,a5,80007754 <consputc+0x10>
    8000774c:	00001317          	auipc	t1,0x1
    80007750:	9f430067          	jr	-1548(t1) # 80008140 <uartputc_sync>
    80007754:	ff010113          	addi	sp,sp,-16
    80007758:	00113423          	sd	ra,8(sp)
    8000775c:	00813023          	sd	s0,0(sp)
    80007760:	01010413          	addi	s0,sp,16
    80007764:	00800513          	li	a0,8
    80007768:	00001097          	auipc	ra,0x1
    8000776c:	9d8080e7          	jalr	-1576(ra) # 80008140 <uartputc_sync>
    80007770:	02000513          	li	a0,32
    80007774:	00001097          	auipc	ra,0x1
    80007778:	9cc080e7          	jalr	-1588(ra) # 80008140 <uartputc_sync>
    8000777c:	00013403          	ld	s0,0(sp)
    80007780:	00813083          	ld	ra,8(sp)
    80007784:	00800513          	li	a0,8
    80007788:	01010113          	addi	sp,sp,16
    8000778c:	00001317          	auipc	t1,0x1
    80007790:	9b430067          	jr	-1612(t1) # 80008140 <uartputc_sync>

0000000080007794 <consoleintr>:
    80007794:	fe010113          	addi	sp,sp,-32
    80007798:	00813823          	sd	s0,16(sp)
    8000779c:	00913423          	sd	s1,8(sp)
    800077a0:	01213023          	sd	s2,0(sp)
    800077a4:	00113c23          	sd	ra,24(sp)
    800077a8:	02010413          	addi	s0,sp,32
    800077ac:	00006917          	auipc	s2,0x6
    800077b0:	a0c90913          	addi	s2,s2,-1524 # 8000d1b8 <cons>
    800077b4:	00050493          	mv	s1,a0
    800077b8:	00090513          	mv	a0,s2
    800077bc:	00001097          	auipc	ra,0x1
    800077c0:	e40080e7          	jalr	-448(ra) # 800085fc <acquire>
    800077c4:	02048c63          	beqz	s1,800077fc <consoleintr+0x68>
    800077c8:	0a092783          	lw	a5,160(s2)
    800077cc:	09892703          	lw	a4,152(s2)
    800077d0:	07f00693          	li	a3,127
    800077d4:	40e7873b          	subw	a4,a5,a4
    800077d8:	02e6e263          	bltu	a3,a4,800077fc <consoleintr+0x68>
    800077dc:	00d00713          	li	a4,13
    800077e0:	04e48063          	beq	s1,a4,80007820 <consoleintr+0x8c>
    800077e4:	07f7f713          	andi	a4,a5,127
    800077e8:	00e90733          	add	a4,s2,a4
    800077ec:	0017879b          	addiw	a5,a5,1
    800077f0:	0af92023          	sw	a5,160(s2)
    800077f4:	00970c23          	sb	s1,24(a4)
    800077f8:	08f92e23          	sw	a5,156(s2)
    800077fc:	01013403          	ld	s0,16(sp)
    80007800:	01813083          	ld	ra,24(sp)
    80007804:	00813483          	ld	s1,8(sp)
    80007808:	00013903          	ld	s2,0(sp)
    8000780c:	00006517          	auipc	a0,0x6
    80007810:	9ac50513          	addi	a0,a0,-1620 # 8000d1b8 <cons>
    80007814:	02010113          	addi	sp,sp,32
    80007818:	00001317          	auipc	t1,0x1
    8000781c:	eb030067          	jr	-336(t1) # 800086c8 <release>
    80007820:	00a00493          	li	s1,10
    80007824:	fc1ff06f          	j	800077e4 <consoleintr+0x50>

0000000080007828 <consoleinit>:
    80007828:	fe010113          	addi	sp,sp,-32
    8000782c:	00113c23          	sd	ra,24(sp)
    80007830:	00813823          	sd	s0,16(sp)
    80007834:	00913423          	sd	s1,8(sp)
    80007838:	02010413          	addi	s0,sp,32
    8000783c:	00006497          	auipc	s1,0x6
    80007840:	97c48493          	addi	s1,s1,-1668 # 8000d1b8 <cons>
    80007844:	00048513          	mv	a0,s1
    80007848:	00002597          	auipc	a1,0x2
    8000784c:	04058593          	addi	a1,a1,64 # 80009888 <CONSOLE_STATUS+0x878>
    80007850:	00001097          	auipc	ra,0x1
    80007854:	d88080e7          	jalr	-632(ra) # 800085d8 <initlock>
    80007858:	00000097          	auipc	ra,0x0
    8000785c:	7ac080e7          	jalr	1964(ra) # 80008004 <uartinit>
    80007860:	01813083          	ld	ra,24(sp)
    80007864:	01013403          	ld	s0,16(sp)
    80007868:	00000797          	auipc	a5,0x0
    8000786c:	d9c78793          	addi	a5,a5,-612 # 80007604 <consoleread>
    80007870:	0af4bc23          	sd	a5,184(s1)
    80007874:	00000797          	auipc	a5,0x0
    80007878:	cec78793          	addi	a5,a5,-788 # 80007560 <consolewrite>
    8000787c:	0cf4b023          	sd	a5,192(s1)
    80007880:	00813483          	ld	s1,8(sp)
    80007884:	02010113          	addi	sp,sp,32
    80007888:	00008067          	ret

000000008000788c <console_read>:
    8000788c:	ff010113          	addi	sp,sp,-16
    80007890:	00813423          	sd	s0,8(sp)
    80007894:	01010413          	addi	s0,sp,16
    80007898:	00813403          	ld	s0,8(sp)
    8000789c:	00006317          	auipc	t1,0x6
    800078a0:	9d433303          	ld	t1,-1580(t1) # 8000d270 <devsw+0x10>
    800078a4:	01010113          	addi	sp,sp,16
    800078a8:	00030067          	jr	t1

00000000800078ac <console_write>:
    800078ac:	ff010113          	addi	sp,sp,-16
    800078b0:	00813423          	sd	s0,8(sp)
    800078b4:	01010413          	addi	s0,sp,16
    800078b8:	00813403          	ld	s0,8(sp)
    800078bc:	00006317          	auipc	t1,0x6
    800078c0:	9bc33303          	ld	t1,-1604(t1) # 8000d278 <devsw+0x18>
    800078c4:	01010113          	addi	sp,sp,16
    800078c8:	00030067          	jr	t1

00000000800078cc <panic>:
    800078cc:	fe010113          	addi	sp,sp,-32
    800078d0:	00113c23          	sd	ra,24(sp)
    800078d4:	00813823          	sd	s0,16(sp)
    800078d8:	00913423          	sd	s1,8(sp)
    800078dc:	02010413          	addi	s0,sp,32
    800078e0:	00050493          	mv	s1,a0
    800078e4:	00002517          	auipc	a0,0x2
    800078e8:	fac50513          	addi	a0,a0,-84 # 80009890 <CONSOLE_STATUS+0x880>
    800078ec:	00006797          	auipc	a5,0x6
    800078f0:	a207a623          	sw	zero,-1492(a5) # 8000d318 <pr+0x18>
    800078f4:	00000097          	auipc	ra,0x0
    800078f8:	034080e7          	jalr	52(ra) # 80007928 <__printf>
    800078fc:	00048513          	mv	a0,s1
    80007900:	00000097          	auipc	ra,0x0
    80007904:	028080e7          	jalr	40(ra) # 80007928 <__printf>
    80007908:	00002517          	auipc	a0,0x2
    8000790c:	9b050513          	addi	a0,a0,-1616 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80007910:	00000097          	auipc	ra,0x0
    80007914:	018080e7          	jalr	24(ra) # 80007928 <__printf>
    80007918:	00100793          	li	a5,1
    8000791c:	00004717          	auipc	a4,0x4
    80007920:	3af72e23          	sw	a5,956(a4) # 8000bcd8 <panicked>
    80007924:	0000006f          	j	80007924 <panic+0x58>

0000000080007928 <__printf>:
    80007928:	f3010113          	addi	sp,sp,-208
    8000792c:	08813023          	sd	s0,128(sp)
    80007930:	07313423          	sd	s3,104(sp)
    80007934:	09010413          	addi	s0,sp,144
    80007938:	05813023          	sd	s8,64(sp)
    8000793c:	08113423          	sd	ra,136(sp)
    80007940:	06913c23          	sd	s1,120(sp)
    80007944:	07213823          	sd	s2,112(sp)
    80007948:	07413023          	sd	s4,96(sp)
    8000794c:	05513c23          	sd	s5,88(sp)
    80007950:	05613823          	sd	s6,80(sp)
    80007954:	05713423          	sd	s7,72(sp)
    80007958:	03913c23          	sd	s9,56(sp)
    8000795c:	03a13823          	sd	s10,48(sp)
    80007960:	03b13423          	sd	s11,40(sp)
    80007964:	00006317          	auipc	t1,0x6
    80007968:	99c30313          	addi	t1,t1,-1636 # 8000d300 <pr>
    8000796c:	01832c03          	lw	s8,24(t1)
    80007970:	00b43423          	sd	a1,8(s0)
    80007974:	00c43823          	sd	a2,16(s0)
    80007978:	00d43c23          	sd	a3,24(s0)
    8000797c:	02e43023          	sd	a4,32(s0)
    80007980:	02f43423          	sd	a5,40(s0)
    80007984:	03043823          	sd	a6,48(s0)
    80007988:	03143c23          	sd	a7,56(s0)
    8000798c:	00050993          	mv	s3,a0
    80007990:	4a0c1663          	bnez	s8,80007e3c <__printf+0x514>
    80007994:	60098c63          	beqz	s3,80007fac <__printf+0x684>
    80007998:	0009c503          	lbu	a0,0(s3)
    8000799c:	00840793          	addi	a5,s0,8
    800079a0:	f6f43c23          	sd	a5,-136(s0)
    800079a4:	00000493          	li	s1,0
    800079a8:	22050063          	beqz	a0,80007bc8 <__printf+0x2a0>
    800079ac:	00002a37          	lui	s4,0x2
    800079b0:	00018ab7          	lui	s5,0x18
    800079b4:	000f4b37          	lui	s6,0xf4
    800079b8:	00989bb7          	lui	s7,0x989
    800079bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800079c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800079c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800079c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800079cc:	00148c9b          	addiw	s9,s1,1
    800079d0:	02500793          	li	a5,37
    800079d4:	01998933          	add	s2,s3,s9
    800079d8:	38f51263          	bne	a0,a5,80007d5c <__printf+0x434>
    800079dc:	00094783          	lbu	a5,0(s2)
    800079e0:	00078c9b          	sext.w	s9,a5
    800079e4:	1e078263          	beqz	a5,80007bc8 <__printf+0x2a0>
    800079e8:	0024849b          	addiw	s1,s1,2
    800079ec:	07000713          	li	a4,112
    800079f0:	00998933          	add	s2,s3,s1
    800079f4:	38e78a63          	beq	a5,a4,80007d88 <__printf+0x460>
    800079f8:	20f76863          	bltu	a4,a5,80007c08 <__printf+0x2e0>
    800079fc:	42a78863          	beq	a5,a0,80007e2c <__printf+0x504>
    80007a00:	06400713          	li	a4,100
    80007a04:	40e79663          	bne	a5,a4,80007e10 <__printf+0x4e8>
    80007a08:	f7843783          	ld	a5,-136(s0)
    80007a0c:	0007a603          	lw	a2,0(a5)
    80007a10:	00878793          	addi	a5,a5,8
    80007a14:	f6f43c23          	sd	a5,-136(s0)
    80007a18:	42064a63          	bltz	a2,80007e4c <__printf+0x524>
    80007a1c:	00a00713          	li	a4,10
    80007a20:	02e677bb          	remuw	a5,a2,a4
    80007a24:	00002d97          	auipc	s11,0x2
    80007a28:	e94d8d93          	addi	s11,s11,-364 # 800098b8 <digits>
    80007a2c:	00900593          	li	a1,9
    80007a30:	0006051b          	sext.w	a0,a2
    80007a34:	00000c93          	li	s9,0
    80007a38:	02079793          	slli	a5,a5,0x20
    80007a3c:	0207d793          	srli	a5,a5,0x20
    80007a40:	00fd87b3          	add	a5,s11,a5
    80007a44:	0007c783          	lbu	a5,0(a5)
    80007a48:	02e656bb          	divuw	a3,a2,a4
    80007a4c:	f8f40023          	sb	a5,-128(s0)
    80007a50:	14c5d863          	bge	a1,a2,80007ba0 <__printf+0x278>
    80007a54:	06300593          	li	a1,99
    80007a58:	00100c93          	li	s9,1
    80007a5c:	02e6f7bb          	remuw	a5,a3,a4
    80007a60:	02079793          	slli	a5,a5,0x20
    80007a64:	0207d793          	srli	a5,a5,0x20
    80007a68:	00fd87b3          	add	a5,s11,a5
    80007a6c:	0007c783          	lbu	a5,0(a5)
    80007a70:	02e6d73b          	divuw	a4,a3,a4
    80007a74:	f8f400a3          	sb	a5,-127(s0)
    80007a78:	12a5f463          	bgeu	a1,a0,80007ba0 <__printf+0x278>
    80007a7c:	00a00693          	li	a3,10
    80007a80:	00900593          	li	a1,9
    80007a84:	02d777bb          	remuw	a5,a4,a3
    80007a88:	02079793          	slli	a5,a5,0x20
    80007a8c:	0207d793          	srli	a5,a5,0x20
    80007a90:	00fd87b3          	add	a5,s11,a5
    80007a94:	0007c503          	lbu	a0,0(a5)
    80007a98:	02d757bb          	divuw	a5,a4,a3
    80007a9c:	f8a40123          	sb	a0,-126(s0)
    80007aa0:	48e5f263          	bgeu	a1,a4,80007f24 <__printf+0x5fc>
    80007aa4:	06300513          	li	a0,99
    80007aa8:	02d7f5bb          	remuw	a1,a5,a3
    80007aac:	02059593          	slli	a1,a1,0x20
    80007ab0:	0205d593          	srli	a1,a1,0x20
    80007ab4:	00bd85b3          	add	a1,s11,a1
    80007ab8:	0005c583          	lbu	a1,0(a1)
    80007abc:	02d7d7bb          	divuw	a5,a5,a3
    80007ac0:	f8b401a3          	sb	a1,-125(s0)
    80007ac4:	48e57263          	bgeu	a0,a4,80007f48 <__printf+0x620>
    80007ac8:	3e700513          	li	a0,999
    80007acc:	02d7f5bb          	remuw	a1,a5,a3
    80007ad0:	02059593          	slli	a1,a1,0x20
    80007ad4:	0205d593          	srli	a1,a1,0x20
    80007ad8:	00bd85b3          	add	a1,s11,a1
    80007adc:	0005c583          	lbu	a1,0(a1)
    80007ae0:	02d7d7bb          	divuw	a5,a5,a3
    80007ae4:	f8b40223          	sb	a1,-124(s0)
    80007ae8:	46e57663          	bgeu	a0,a4,80007f54 <__printf+0x62c>
    80007aec:	02d7f5bb          	remuw	a1,a5,a3
    80007af0:	02059593          	slli	a1,a1,0x20
    80007af4:	0205d593          	srli	a1,a1,0x20
    80007af8:	00bd85b3          	add	a1,s11,a1
    80007afc:	0005c583          	lbu	a1,0(a1)
    80007b00:	02d7d7bb          	divuw	a5,a5,a3
    80007b04:	f8b402a3          	sb	a1,-123(s0)
    80007b08:	46ea7863          	bgeu	s4,a4,80007f78 <__printf+0x650>
    80007b0c:	02d7f5bb          	remuw	a1,a5,a3
    80007b10:	02059593          	slli	a1,a1,0x20
    80007b14:	0205d593          	srli	a1,a1,0x20
    80007b18:	00bd85b3          	add	a1,s11,a1
    80007b1c:	0005c583          	lbu	a1,0(a1)
    80007b20:	02d7d7bb          	divuw	a5,a5,a3
    80007b24:	f8b40323          	sb	a1,-122(s0)
    80007b28:	3eeaf863          	bgeu	s5,a4,80007f18 <__printf+0x5f0>
    80007b2c:	02d7f5bb          	remuw	a1,a5,a3
    80007b30:	02059593          	slli	a1,a1,0x20
    80007b34:	0205d593          	srli	a1,a1,0x20
    80007b38:	00bd85b3          	add	a1,s11,a1
    80007b3c:	0005c583          	lbu	a1,0(a1)
    80007b40:	02d7d7bb          	divuw	a5,a5,a3
    80007b44:	f8b403a3          	sb	a1,-121(s0)
    80007b48:	42eb7e63          	bgeu	s6,a4,80007f84 <__printf+0x65c>
    80007b4c:	02d7f5bb          	remuw	a1,a5,a3
    80007b50:	02059593          	slli	a1,a1,0x20
    80007b54:	0205d593          	srli	a1,a1,0x20
    80007b58:	00bd85b3          	add	a1,s11,a1
    80007b5c:	0005c583          	lbu	a1,0(a1)
    80007b60:	02d7d7bb          	divuw	a5,a5,a3
    80007b64:	f8b40423          	sb	a1,-120(s0)
    80007b68:	42ebfc63          	bgeu	s7,a4,80007fa0 <__printf+0x678>
    80007b6c:	02079793          	slli	a5,a5,0x20
    80007b70:	0207d793          	srli	a5,a5,0x20
    80007b74:	00fd8db3          	add	s11,s11,a5
    80007b78:	000dc703          	lbu	a4,0(s11)
    80007b7c:	00a00793          	li	a5,10
    80007b80:	00900c93          	li	s9,9
    80007b84:	f8e404a3          	sb	a4,-119(s0)
    80007b88:	00065c63          	bgez	a2,80007ba0 <__printf+0x278>
    80007b8c:	f9040713          	addi	a4,s0,-112
    80007b90:	00f70733          	add	a4,a4,a5
    80007b94:	02d00693          	li	a3,45
    80007b98:	fed70823          	sb	a3,-16(a4)
    80007b9c:	00078c93          	mv	s9,a5
    80007ba0:	f8040793          	addi	a5,s0,-128
    80007ba4:	01978cb3          	add	s9,a5,s9
    80007ba8:	f7f40d13          	addi	s10,s0,-129
    80007bac:	000cc503          	lbu	a0,0(s9)
    80007bb0:	fffc8c93          	addi	s9,s9,-1
    80007bb4:	00000097          	auipc	ra,0x0
    80007bb8:	b90080e7          	jalr	-1136(ra) # 80007744 <consputc>
    80007bbc:	ffac98e3          	bne	s9,s10,80007bac <__printf+0x284>
    80007bc0:	00094503          	lbu	a0,0(s2)
    80007bc4:	e00514e3          	bnez	a0,800079cc <__printf+0xa4>
    80007bc8:	1a0c1663          	bnez	s8,80007d74 <__printf+0x44c>
    80007bcc:	08813083          	ld	ra,136(sp)
    80007bd0:	08013403          	ld	s0,128(sp)
    80007bd4:	07813483          	ld	s1,120(sp)
    80007bd8:	07013903          	ld	s2,112(sp)
    80007bdc:	06813983          	ld	s3,104(sp)
    80007be0:	06013a03          	ld	s4,96(sp)
    80007be4:	05813a83          	ld	s5,88(sp)
    80007be8:	05013b03          	ld	s6,80(sp)
    80007bec:	04813b83          	ld	s7,72(sp)
    80007bf0:	04013c03          	ld	s8,64(sp)
    80007bf4:	03813c83          	ld	s9,56(sp)
    80007bf8:	03013d03          	ld	s10,48(sp)
    80007bfc:	02813d83          	ld	s11,40(sp)
    80007c00:	0d010113          	addi	sp,sp,208
    80007c04:	00008067          	ret
    80007c08:	07300713          	li	a4,115
    80007c0c:	1ce78a63          	beq	a5,a4,80007de0 <__printf+0x4b8>
    80007c10:	07800713          	li	a4,120
    80007c14:	1ee79e63          	bne	a5,a4,80007e10 <__printf+0x4e8>
    80007c18:	f7843783          	ld	a5,-136(s0)
    80007c1c:	0007a703          	lw	a4,0(a5)
    80007c20:	00878793          	addi	a5,a5,8
    80007c24:	f6f43c23          	sd	a5,-136(s0)
    80007c28:	28074263          	bltz	a4,80007eac <__printf+0x584>
    80007c2c:	00002d97          	auipc	s11,0x2
    80007c30:	c8cd8d93          	addi	s11,s11,-884 # 800098b8 <digits>
    80007c34:	00f77793          	andi	a5,a4,15
    80007c38:	00fd87b3          	add	a5,s11,a5
    80007c3c:	0007c683          	lbu	a3,0(a5)
    80007c40:	00f00613          	li	a2,15
    80007c44:	0007079b          	sext.w	a5,a4
    80007c48:	f8d40023          	sb	a3,-128(s0)
    80007c4c:	0047559b          	srliw	a1,a4,0x4
    80007c50:	0047569b          	srliw	a3,a4,0x4
    80007c54:	00000c93          	li	s9,0
    80007c58:	0ee65063          	bge	a2,a4,80007d38 <__printf+0x410>
    80007c5c:	00f6f693          	andi	a3,a3,15
    80007c60:	00dd86b3          	add	a3,s11,a3
    80007c64:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007c68:	0087d79b          	srliw	a5,a5,0x8
    80007c6c:	00100c93          	li	s9,1
    80007c70:	f8d400a3          	sb	a3,-127(s0)
    80007c74:	0cb67263          	bgeu	a2,a1,80007d38 <__printf+0x410>
    80007c78:	00f7f693          	andi	a3,a5,15
    80007c7c:	00dd86b3          	add	a3,s11,a3
    80007c80:	0006c583          	lbu	a1,0(a3)
    80007c84:	00f00613          	li	a2,15
    80007c88:	0047d69b          	srliw	a3,a5,0x4
    80007c8c:	f8b40123          	sb	a1,-126(s0)
    80007c90:	0047d593          	srli	a1,a5,0x4
    80007c94:	28f67e63          	bgeu	a2,a5,80007f30 <__printf+0x608>
    80007c98:	00f6f693          	andi	a3,a3,15
    80007c9c:	00dd86b3          	add	a3,s11,a3
    80007ca0:	0006c503          	lbu	a0,0(a3)
    80007ca4:	0087d813          	srli	a6,a5,0x8
    80007ca8:	0087d69b          	srliw	a3,a5,0x8
    80007cac:	f8a401a3          	sb	a0,-125(s0)
    80007cb0:	28b67663          	bgeu	a2,a1,80007f3c <__printf+0x614>
    80007cb4:	00f6f693          	andi	a3,a3,15
    80007cb8:	00dd86b3          	add	a3,s11,a3
    80007cbc:	0006c583          	lbu	a1,0(a3)
    80007cc0:	00c7d513          	srli	a0,a5,0xc
    80007cc4:	00c7d69b          	srliw	a3,a5,0xc
    80007cc8:	f8b40223          	sb	a1,-124(s0)
    80007ccc:	29067a63          	bgeu	a2,a6,80007f60 <__printf+0x638>
    80007cd0:	00f6f693          	andi	a3,a3,15
    80007cd4:	00dd86b3          	add	a3,s11,a3
    80007cd8:	0006c583          	lbu	a1,0(a3)
    80007cdc:	0107d813          	srli	a6,a5,0x10
    80007ce0:	0107d69b          	srliw	a3,a5,0x10
    80007ce4:	f8b402a3          	sb	a1,-123(s0)
    80007ce8:	28a67263          	bgeu	a2,a0,80007f6c <__printf+0x644>
    80007cec:	00f6f693          	andi	a3,a3,15
    80007cf0:	00dd86b3          	add	a3,s11,a3
    80007cf4:	0006c683          	lbu	a3,0(a3)
    80007cf8:	0147d79b          	srliw	a5,a5,0x14
    80007cfc:	f8d40323          	sb	a3,-122(s0)
    80007d00:	21067663          	bgeu	a2,a6,80007f0c <__printf+0x5e4>
    80007d04:	02079793          	slli	a5,a5,0x20
    80007d08:	0207d793          	srli	a5,a5,0x20
    80007d0c:	00fd8db3          	add	s11,s11,a5
    80007d10:	000dc683          	lbu	a3,0(s11)
    80007d14:	00800793          	li	a5,8
    80007d18:	00700c93          	li	s9,7
    80007d1c:	f8d403a3          	sb	a3,-121(s0)
    80007d20:	00075c63          	bgez	a4,80007d38 <__printf+0x410>
    80007d24:	f9040713          	addi	a4,s0,-112
    80007d28:	00f70733          	add	a4,a4,a5
    80007d2c:	02d00693          	li	a3,45
    80007d30:	fed70823          	sb	a3,-16(a4)
    80007d34:	00078c93          	mv	s9,a5
    80007d38:	f8040793          	addi	a5,s0,-128
    80007d3c:	01978cb3          	add	s9,a5,s9
    80007d40:	f7f40d13          	addi	s10,s0,-129
    80007d44:	000cc503          	lbu	a0,0(s9)
    80007d48:	fffc8c93          	addi	s9,s9,-1
    80007d4c:	00000097          	auipc	ra,0x0
    80007d50:	9f8080e7          	jalr	-1544(ra) # 80007744 <consputc>
    80007d54:	ff9d18e3          	bne	s10,s9,80007d44 <__printf+0x41c>
    80007d58:	0100006f          	j	80007d68 <__printf+0x440>
    80007d5c:	00000097          	auipc	ra,0x0
    80007d60:	9e8080e7          	jalr	-1560(ra) # 80007744 <consputc>
    80007d64:	000c8493          	mv	s1,s9
    80007d68:	00094503          	lbu	a0,0(s2)
    80007d6c:	c60510e3          	bnez	a0,800079cc <__printf+0xa4>
    80007d70:	e40c0ee3          	beqz	s8,80007bcc <__printf+0x2a4>
    80007d74:	00005517          	auipc	a0,0x5
    80007d78:	58c50513          	addi	a0,a0,1420 # 8000d300 <pr>
    80007d7c:	00001097          	auipc	ra,0x1
    80007d80:	94c080e7          	jalr	-1716(ra) # 800086c8 <release>
    80007d84:	e49ff06f          	j	80007bcc <__printf+0x2a4>
    80007d88:	f7843783          	ld	a5,-136(s0)
    80007d8c:	03000513          	li	a0,48
    80007d90:	01000d13          	li	s10,16
    80007d94:	00878713          	addi	a4,a5,8
    80007d98:	0007bc83          	ld	s9,0(a5)
    80007d9c:	f6e43c23          	sd	a4,-136(s0)
    80007da0:	00000097          	auipc	ra,0x0
    80007da4:	9a4080e7          	jalr	-1628(ra) # 80007744 <consputc>
    80007da8:	07800513          	li	a0,120
    80007dac:	00000097          	auipc	ra,0x0
    80007db0:	998080e7          	jalr	-1640(ra) # 80007744 <consputc>
    80007db4:	00002d97          	auipc	s11,0x2
    80007db8:	b04d8d93          	addi	s11,s11,-1276 # 800098b8 <digits>
    80007dbc:	03ccd793          	srli	a5,s9,0x3c
    80007dc0:	00fd87b3          	add	a5,s11,a5
    80007dc4:	0007c503          	lbu	a0,0(a5)
    80007dc8:	fffd0d1b          	addiw	s10,s10,-1
    80007dcc:	004c9c93          	slli	s9,s9,0x4
    80007dd0:	00000097          	auipc	ra,0x0
    80007dd4:	974080e7          	jalr	-1676(ra) # 80007744 <consputc>
    80007dd8:	fe0d12e3          	bnez	s10,80007dbc <__printf+0x494>
    80007ddc:	f8dff06f          	j	80007d68 <__printf+0x440>
    80007de0:	f7843783          	ld	a5,-136(s0)
    80007de4:	0007bc83          	ld	s9,0(a5)
    80007de8:	00878793          	addi	a5,a5,8
    80007dec:	f6f43c23          	sd	a5,-136(s0)
    80007df0:	000c9a63          	bnez	s9,80007e04 <__printf+0x4dc>
    80007df4:	1080006f          	j	80007efc <__printf+0x5d4>
    80007df8:	001c8c93          	addi	s9,s9,1
    80007dfc:	00000097          	auipc	ra,0x0
    80007e00:	948080e7          	jalr	-1720(ra) # 80007744 <consputc>
    80007e04:	000cc503          	lbu	a0,0(s9)
    80007e08:	fe0518e3          	bnez	a0,80007df8 <__printf+0x4d0>
    80007e0c:	f5dff06f          	j	80007d68 <__printf+0x440>
    80007e10:	02500513          	li	a0,37
    80007e14:	00000097          	auipc	ra,0x0
    80007e18:	930080e7          	jalr	-1744(ra) # 80007744 <consputc>
    80007e1c:	000c8513          	mv	a0,s9
    80007e20:	00000097          	auipc	ra,0x0
    80007e24:	924080e7          	jalr	-1756(ra) # 80007744 <consputc>
    80007e28:	f41ff06f          	j	80007d68 <__printf+0x440>
    80007e2c:	02500513          	li	a0,37
    80007e30:	00000097          	auipc	ra,0x0
    80007e34:	914080e7          	jalr	-1772(ra) # 80007744 <consputc>
    80007e38:	f31ff06f          	j	80007d68 <__printf+0x440>
    80007e3c:	00030513          	mv	a0,t1
    80007e40:	00000097          	auipc	ra,0x0
    80007e44:	7bc080e7          	jalr	1980(ra) # 800085fc <acquire>
    80007e48:	b4dff06f          	j	80007994 <__printf+0x6c>
    80007e4c:	40c0053b          	negw	a0,a2
    80007e50:	00a00713          	li	a4,10
    80007e54:	02e576bb          	remuw	a3,a0,a4
    80007e58:	00002d97          	auipc	s11,0x2
    80007e5c:	a60d8d93          	addi	s11,s11,-1440 # 800098b8 <digits>
    80007e60:	ff700593          	li	a1,-9
    80007e64:	02069693          	slli	a3,a3,0x20
    80007e68:	0206d693          	srli	a3,a3,0x20
    80007e6c:	00dd86b3          	add	a3,s11,a3
    80007e70:	0006c683          	lbu	a3,0(a3)
    80007e74:	02e557bb          	divuw	a5,a0,a4
    80007e78:	f8d40023          	sb	a3,-128(s0)
    80007e7c:	10b65e63          	bge	a2,a1,80007f98 <__printf+0x670>
    80007e80:	06300593          	li	a1,99
    80007e84:	02e7f6bb          	remuw	a3,a5,a4
    80007e88:	02069693          	slli	a3,a3,0x20
    80007e8c:	0206d693          	srli	a3,a3,0x20
    80007e90:	00dd86b3          	add	a3,s11,a3
    80007e94:	0006c683          	lbu	a3,0(a3)
    80007e98:	02e7d73b          	divuw	a4,a5,a4
    80007e9c:	00200793          	li	a5,2
    80007ea0:	f8d400a3          	sb	a3,-127(s0)
    80007ea4:	bca5ece3          	bltu	a1,a0,80007a7c <__printf+0x154>
    80007ea8:	ce5ff06f          	j	80007b8c <__printf+0x264>
    80007eac:	40e007bb          	negw	a5,a4
    80007eb0:	00002d97          	auipc	s11,0x2
    80007eb4:	a08d8d93          	addi	s11,s11,-1528 # 800098b8 <digits>
    80007eb8:	00f7f693          	andi	a3,a5,15
    80007ebc:	00dd86b3          	add	a3,s11,a3
    80007ec0:	0006c583          	lbu	a1,0(a3)
    80007ec4:	ff100613          	li	a2,-15
    80007ec8:	0047d69b          	srliw	a3,a5,0x4
    80007ecc:	f8b40023          	sb	a1,-128(s0)
    80007ed0:	0047d59b          	srliw	a1,a5,0x4
    80007ed4:	0ac75e63          	bge	a4,a2,80007f90 <__printf+0x668>
    80007ed8:	00f6f693          	andi	a3,a3,15
    80007edc:	00dd86b3          	add	a3,s11,a3
    80007ee0:	0006c603          	lbu	a2,0(a3)
    80007ee4:	00f00693          	li	a3,15
    80007ee8:	0087d79b          	srliw	a5,a5,0x8
    80007eec:	f8c400a3          	sb	a2,-127(s0)
    80007ef0:	d8b6e4e3          	bltu	a3,a1,80007c78 <__printf+0x350>
    80007ef4:	00200793          	li	a5,2
    80007ef8:	e2dff06f          	j	80007d24 <__printf+0x3fc>
    80007efc:	00002c97          	auipc	s9,0x2
    80007f00:	99cc8c93          	addi	s9,s9,-1636 # 80009898 <CONSOLE_STATUS+0x888>
    80007f04:	02800513          	li	a0,40
    80007f08:	ef1ff06f          	j	80007df8 <__printf+0x4d0>
    80007f0c:	00700793          	li	a5,7
    80007f10:	00600c93          	li	s9,6
    80007f14:	e0dff06f          	j	80007d20 <__printf+0x3f8>
    80007f18:	00700793          	li	a5,7
    80007f1c:	00600c93          	li	s9,6
    80007f20:	c69ff06f          	j	80007b88 <__printf+0x260>
    80007f24:	00300793          	li	a5,3
    80007f28:	00200c93          	li	s9,2
    80007f2c:	c5dff06f          	j	80007b88 <__printf+0x260>
    80007f30:	00300793          	li	a5,3
    80007f34:	00200c93          	li	s9,2
    80007f38:	de9ff06f          	j	80007d20 <__printf+0x3f8>
    80007f3c:	00400793          	li	a5,4
    80007f40:	00300c93          	li	s9,3
    80007f44:	dddff06f          	j	80007d20 <__printf+0x3f8>
    80007f48:	00400793          	li	a5,4
    80007f4c:	00300c93          	li	s9,3
    80007f50:	c39ff06f          	j	80007b88 <__printf+0x260>
    80007f54:	00500793          	li	a5,5
    80007f58:	00400c93          	li	s9,4
    80007f5c:	c2dff06f          	j	80007b88 <__printf+0x260>
    80007f60:	00500793          	li	a5,5
    80007f64:	00400c93          	li	s9,4
    80007f68:	db9ff06f          	j	80007d20 <__printf+0x3f8>
    80007f6c:	00600793          	li	a5,6
    80007f70:	00500c93          	li	s9,5
    80007f74:	dadff06f          	j	80007d20 <__printf+0x3f8>
    80007f78:	00600793          	li	a5,6
    80007f7c:	00500c93          	li	s9,5
    80007f80:	c09ff06f          	j	80007b88 <__printf+0x260>
    80007f84:	00800793          	li	a5,8
    80007f88:	00700c93          	li	s9,7
    80007f8c:	bfdff06f          	j	80007b88 <__printf+0x260>
    80007f90:	00100793          	li	a5,1
    80007f94:	d91ff06f          	j	80007d24 <__printf+0x3fc>
    80007f98:	00100793          	li	a5,1
    80007f9c:	bf1ff06f          	j	80007b8c <__printf+0x264>
    80007fa0:	00900793          	li	a5,9
    80007fa4:	00800c93          	li	s9,8
    80007fa8:	be1ff06f          	j	80007b88 <__printf+0x260>
    80007fac:	00002517          	auipc	a0,0x2
    80007fb0:	8f450513          	addi	a0,a0,-1804 # 800098a0 <CONSOLE_STATUS+0x890>
    80007fb4:	00000097          	auipc	ra,0x0
    80007fb8:	918080e7          	jalr	-1768(ra) # 800078cc <panic>

0000000080007fbc <printfinit>:
    80007fbc:	fe010113          	addi	sp,sp,-32
    80007fc0:	00813823          	sd	s0,16(sp)
    80007fc4:	00913423          	sd	s1,8(sp)
    80007fc8:	00113c23          	sd	ra,24(sp)
    80007fcc:	02010413          	addi	s0,sp,32
    80007fd0:	00005497          	auipc	s1,0x5
    80007fd4:	33048493          	addi	s1,s1,816 # 8000d300 <pr>
    80007fd8:	00048513          	mv	a0,s1
    80007fdc:	00002597          	auipc	a1,0x2
    80007fe0:	8d458593          	addi	a1,a1,-1836 # 800098b0 <CONSOLE_STATUS+0x8a0>
    80007fe4:	00000097          	auipc	ra,0x0
    80007fe8:	5f4080e7          	jalr	1524(ra) # 800085d8 <initlock>
    80007fec:	01813083          	ld	ra,24(sp)
    80007ff0:	01013403          	ld	s0,16(sp)
    80007ff4:	0004ac23          	sw	zero,24(s1)
    80007ff8:	00813483          	ld	s1,8(sp)
    80007ffc:	02010113          	addi	sp,sp,32
    80008000:	00008067          	ret

0000000080008004 <uartinit>:
    80008004:	ff010113          	addi	sp,sp,-16
    80008008:	00813423          	sd	s0,8(sp)
    8000800c:	01010413          	addi	s0,sp,16
    80008010:	100007b7          	lui	a5,0x10000
    80008014:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008018:	f8000713          	li	a4,-128
    8000801c:	00e781a3          	sb	a4,3(a5)
    80008020:	00300713          	li	a4,3
    80008024:	00e78023          	sb	a4,0(a5)
    80008028:	000780a3          	sb	zero,1(a5)
    8000802c:	00e781a3          	sb	a4,3(a5)
    80008030:	00700693          	li	a3,7
    80008034:	00d78123          	sb	a3,2(a5)
    80008038:	00e780a3          	sb	a4,1(a5)
    8000803c:	00813403          	ld	s0,8(sp)
    80008040:	01010113          	addi	sp,sp,16
    80008044:	00008067          	ret

0000000080008048 <uartputc>:
    80008048:	00004797          	auipc	a5,0x4
    8000804c:	c907a783          	lw	a5,-880(a5) # 8000bcd8 <panicked>
    80008050:	00078463          	beqz	a5,80008058 <uartputc+0x10>
    80008054:	0000006f          	j	80008054 <uartputc+0xc>
    80008058:	fd010113          	addi	sp,sp,-48
    8000805c:	02813023          	sd	s0,32(sp)
    80008060:	00913c23          	sd	s1,24(sp)
    80008064:	01213823          	sd	s2,16(sp)
    80008068:	01313423          	sd	s3,8(sp)
    8000806c:	02113423          	sd	ra,40(sp)
    80008070:	03010413          	addi	s0,sp,48
    80008074:	00004917          	auipc	s2,0x4
    80008078:	c6c90913          	addi	s2,s2,-916 # 8000bce0 <uart_tx_r>
    8000807c:	00093783          	ld	a5,0(s2)
    80008080:	00004497          	auipc	s1,0x4
    80008084:	c6848493          	addi	s1,s1,-920 # 8000bce8 <uart_tx_w>
    80008088:	0004b703          	ld	a4,0(s1)
    8000808c:	02078693          	addi	a3,a5,32
    80008090:	00050993          	mv	s3,a0
    80008094:	02e69c63          	bne	a3,a4,800080cc <uartputc+0x84>
    80008098:	00001097          	auipc	ra,0x1
    8000809c:	834080e7          	jalr	-1996(ra) # 800088cc <push_on>
    800080a0:	00093783          	ld	a5,0(s2)
    800080a4:	0004b703          	ld	a4,0(s1)
    800080a8:	02078793          	addi	a5,a5,32
    800080ac:	00e79463          	bne	a5,a4,800080b4 <uartputc+0x6c>
    800080b0:	0000006f          	j	800080b0 <uartputc+0x68>
    800080b4:	00001097          	auipc	ra,0x1
    800080b8:	88c080e7          	jalr	-1908(ra) # 80008940 <pop_on>
    800080bc:	00093783          	ld	a5,0(s2)
    800080c0:	0004b703          	ld	a4,0(s1)
    800080c4:	02078693          	addi	a3,a5,32
    800080c8:	fce688e3          	beq	a3,a4,80008098 <uartputc+0x50>
    800080cc:	01f77693          	andi	a3,a4,31
    800080d0:	00005597          	auipc	a1,0x5
    800080d4:	25058593          	addi	a1,a1,592 # 8000d320 <uart_tx_buf>
    800080d8:	00d586b3          	add	a3,a1,a3
    800080dc:	00170713          	addi	a4,a4,1
    800080e0:	01368023          	sb	s3,0(a3)
    800080e4:	00e4b023          	sd	a4,0(s1)
    800080e8:	10000637          	lui	a2,0x10000
    800080ec:	02f71063          	bne	a4,a5,8000810c <uartputc+0xc4>
    800080f0:	0340006f          	j	80008124 <uartputc+0xdc>
    800080f4:	00074703          	lbu	a4,0(a4)
    800080f8:	00f93023          	sd	a5,0(s2)
    800080fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008100:	00093783          	ld	a5,0(s2)
    80008104:	0004b703          	ld	a4,0(s1)
    80008108:	00f70e63          	beq	a4,a5,80008124 <uartputc+0xdc>
    8000810c:	00564683          	lbu	a3,5(a2)
    80008110:	01f7f713          	andi	a4,a5,31
    80008114:	00e58733          	add	a4,a1,a4
    80008118:	0206f693          	andi	a3,a3,32
    8000811c:	00178793          	addi	a5,a5,1
    80008120:	fc069ae3          	bnez	a3,800080f4 <uartputc+0xac>
    80008124:	02813083          	ld	ra,40(sp)
    80008128:	02013403          	ld	s0,32(sp)
    8000812c:	01813483          	ld	s1,24(sp)
    80008130:	01013903          	ld	s2,16(sp)
    80008134:	00813983          	ld	s3,8(sp)
    80008138:	03010113          	addi	sp,sp,48
    8000813c:	00008067          	ret

0000000080008140 <uartputc_sync>:
    80008140:	ff010113          	addi	sp,sp,-16
    80008144:	00813423          	sd	s0,8(sp)
    80008148:	01010413          	addi	s0,sp,16
    8000814c:	00004717          	auipc	a4,0x4
    80008150:	b8c72703          	lw	a4,-1140(a4) # 8000bcd8 <panicked>
    80008154:	02071663          	bnez	a4,80008180 <uartputc_sync+0x40>
    80008158:	00050793          	mv	a5,a0
    8000815c:	100006b7          	lui	a3,0x10000
    80008160:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008164:	02077713          	andi	a4,a4,32
    80008168:	fe070ce3          	beqz	a4,80008160 <uartputc_sync+0x20>
    8000816c:	0ff7f793          	andi	a5,a5,255
    80008170:	00f68023          	sb	a5,0(a3)
    80008174:	00813403          	ld	s0,8(sp)
    80008178:	01010113          	addi	sp,sp,16
    8000817c:	00008067          	ret
    80008180:	0000006f          	j	80008180 <uartputc_sync+0x40>

0000000080008184 <uartstart>:
    80008184:	ff010113          	addi	sp,sp,-16
    80008188:	00813423          	sd	s0,8(sp)
    8000818c:	01010413          	addi	s0,sp,16
    80008190:	00004617          	auipc	a2,0x4
    80008194:	b5060613          	addi	a2,a2,-1200 # 8000bce0 <uart_tx_r>
    80008198:	00004517          	auipc	a0,0x4
    8000819c:	b5050513          	addi	a0,a0,-1200 # 8000bce8 <uart_tx_w>
    800081a0:	00063783          	ld	a5,0(a2)
    800081a4:	00053703          	ld	a4,0(a0)
    800081a8:	04f70263          	beq	a4,a5,800081ec <uartstart+0x68>
    800081ac:	100005b7          	lui	a1,0x10000
    800081b0:	00005817          	auipc	a6,0x5
    800081b4:	17080813          	addi	a6,a6,368 # 8000d320 <uart_tx_buf>
    800081b8:	01c0006f          	j	800081d4 <uartstart+0x50>
    800081bc:	0006c703          	lbu	a4,0(a3)
    800081c0:	00f63023          	sd	a5,0(a2)
    800081c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800081c8:	00063783          	ld	a5,0(a2)
    800081cc:	00053703          	ld	a4,0(a0)
    800081d0:	00f70e63          	beq	a4,a5,800081ec <uartstart+0x68>
    800081d4:	01f7f713          	andi	a4,a5,31
    800081d8:	00e806b3          	add	a3,a6,a4
    800081dc:	0055c703          	lbu	a4,5(a1)
    800081e0:	00178793          	addi	a5,a5,1
    800081e4:	02077713          	andi	a4,a4,32
    800081e8:	fc071ae3          	bnez	a4,800081bc <uartstart+0x38>
    800081ec:	00813403          	ld	s0,8(sp)
    800081f0:	01010113          	addi	sp,sp,16
    800081f4:	00008067          	ret

00000000800081f8 <uartgetc>:
    800081f8:	ff010113          	addi	sp,sp,-16
    800081fc:	00813423          	sd	s0,8(sp)
    80008200:	01010413          	addi	s0,sp,16
    80008204:	10000737          	lui	a4,0x10000
    80008208:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000820c:	0017f793          	andi	a5,a5,1
    80008210:	00078c63          	beqz	a5,80008228 <uartgetc+0x30>
    80008214:	00074503          	lbu	a0,0(a4)
    80008218:	0ff57513          	andi	a0,a0,255
    8000821c:	00813403          	ld	s0,8(sp)
    80008220:	01010113          	addi	sp,sp,16
    80008224:	00008067          	ret
    80008228:	fff00513          	li	a0,-1
    8000822c:	ff1ff06f          	j	8000821c <uartgetc+0x24>

0000000080008230 <uartintr>:
    80008230:	100007b7          	lui	a5,0x10000
    80008234:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008238:	0017f793          	andi	a5,a5,1
    8000823c:	0a078463          	beqz	a5,800082e4 <uartintr+0xb4>
    80008240:	fe010113          	addi	sp,sp,-32
    80008244:	00813823          	sd	s0,16(sp)
    80008248:	00913423          	sd	s1,8(sp)
    8000824c:	00113c23          	sd	ra,24(sp)
    80008250:	02010413          	addi	s0,sp,32
    80008254:	100004b7          	lui	s1,0x10000
    80008258:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000825c:	0ff57513          	andi	a0,a0,255
    80008260:	fffff097          	auipc	ra,0xfffff
    80008264:	534080e7          	jalr	1332(ra) # 80007794 <consoleintr>
    80008268:	0054c783          	lbu	a5,5(s1)
    8000826c:	0017f793          	andi	a5,a5,1
    80008270:	fe0794e3          	bnez	a5,80008258 <uartintr+0x28>
    80008274:	00004617          	auipc	a2,0x4
    80008278:	a6c60613          	addi	a2,a2,-1428 # 8000bce0 <uart_tx_r>
    8000827c:	00004517          	auipc	a0,0x4
    80008280:	a6c50513          	addi	a0,a0,-1428 # 8000bce8 <uart_tx_w>
    80008284:	00063783          	ld	a5,0(a2)
    80008288:	00053703          	ld	a4,0(a0)
    8000828c:	04f70263          	beq	a4,a5,800082d0 <uartintr+0xa0>
    80008290:	100005b7          	lui	a1,0x10000
    80008294:	00005817          	auipc	a6,0x5
    80008298:	08c80813          	addi	a6,a6,140 # 8000d320 <uart_tx_buf>
    8000829c:	01c0006f          	j	800082b8 <uartintr+0x88>
    800082a0:	0006c703          	lbu	a4,0(a3)
    800082a4:	00f63023          	sd	a5,0(a2)
    800082a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800082ac:	00063783          	ld	a5,0(a2)
    800082b0:	00053703          	ld	a4,0(a0)
    800082b4:	00f70e63          	beq	a4,a5,800082d0 <uartintr+0xa0>
    800082b8:	01f7f713          	andi	a4,a5,31
    800082bc:	00e806b3          	add	a3,a6,a4
    800082c0:	0055c703          	lbu	a4,5(a1)
    800082c4:	00178793          	addi	a5,a5,1
    800082c8:	02077713          	andi	a4,a4,32
    800082cc:	fc071ae3          	bnez	a4,800082a0 <uartintr+0x70>
    800082d0:	01813083          	ld	ra,24(sp)
    800082d4:	01013403          	ld	s0,16(sp)
    800082d8:	00813483          	ld	s1,8(sp)
    800082dc:	02010113          	addi	sp,sp,32
    800082e0:	00008067          	ret
    800082e4:	00004617          	auipc	a2,0x4
    800082e8:	9fc60613          	addi	a2,a2,-1540 # 8000bce0 <uart_tx_r>
    800082ec:	00004517          	auipc	a0,0x4
    800082f0:	9fc50513          	addi	a0,a0,-1540 # 8000bce8 <uart_tx_w>
    800082f4:	00063783          	ld	a5,0(a2)
    800082f8:	00053703          	ld	a4,0(a0)
    800082fc:	04f70263          	beq	a4,a5,80008340 <uartintr+0x110>
    80008300:	100005b7          	lui	a1,0x10000
    80008304:	00005817          	auipc	a6,0x5
    80008308:	01c80813          	addi	a6,a6,28 # 8000d320 <uart_tx_buf>
    8000830c:	01c0006f          	j	80008328 <uartintr+0xf8>
    80008310:	0006c703          	lbu	a4,0(a3)
    80008314:	00f63023          	sd	a5,0(a2)
    80008318:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000831c:	00063783          	ld	a5,0(a2)
    80008320:	00053703          	ld	a4,0(a0)
    80008324:	02f70063          	beq	a4,a5,80008344 <uartintr+0x114>
    80008328:	01f7f713          	andi	a4,a5,31
    8000832c:	00e806b3          	add	a3,a6,a4
    80008330:	0055c703          	lbu	a4,5(a1)
    80008334:	00178793          	addi	a5,a5,1
    80008338:	02077713          	andi	a4,a4,32
    8000833c:	fc071ae3          	bnez	a4,80008310 <uartintr+0xe0>
    80008340:	00008067          	ret
    80008344:	00008067          	ret

0000000080008348 <kinit>:
    80008348:	fc010113          	addi	sp,sp,-64
    8000834c:	02913423          	sd	s1,40(sp)
    80008350:	fffff7b7          	lui	a5,0xfffff
    80008354:	00006497          	auipc	s1,0x6
    80008358:	feb48493          	addi	s1,s1,-21 # 8000e33f <end+0xfff>
    8000835c:	02813823          	sd	s0,48(sp)
    80008360:	01313c23          	sd	s3,24(sp)
    80008364:	00f4f4b3          	and	s1,s1,a5
    80008368:	02113c23          	sd	ra,56(sp)
    8000836c:	03213023          	sd	s2,32(sp)
    80008370:	01413823          	sd	s4,16(sp)
    80008374:	01513423          	sd	s5,8(sp)
    80008378:	04010413          	addi	s0,sp,64
    8000837c:	000017b7          	lui	a5,0x1
    80008380:	01100993          	li	s3,17
    80008384:	00f487b3          	add	a5,s1,a5
    80008388:	01b99993          	slli	s3,s3,0x1b
    8000838c:	06f9e063          	bltu	s3,a5,800083ec <kinit+0xa4>
    80008390:	00005a97          	auipc	s5,0x5
    80008394:	fb0a8a93          	addi	s5,s5,-80 # 8000d340 <end>
    80008398:	0754ec63          	bltu	s1,s5,80008410 <kinit+0xc8>
    8000839c:	0734fa63          	bgeu	s1,s3,80008410 <kinit+0xc8>
    800083a0:	00088a37          	lui	s4,0x88
    800083a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800083a8:	00004917          	auipc	s2,0x4
    800083ac:	94890913          	addi	s2,s2,-1720 # 8000bcf0 <kmem>
    800083b0:	00ca1a13          	slli	s4,s4,0xc
    800083b4:	0140006f          	j	800083c8 <kinit+0x80>
    800083b8:	000017b7          	lui	a5,0x1
    800083bc:	00f484b3          	add	s1,s1,a5
    800083c0:	0554e863          	bltu	s1,s5,80008410 <kinit+0xc8>
    800083c4:	0534f663          	bgeu	s1,s3,80008410 <kinit+0xc8>
    800083c8:	00001637          	lui	a2,0x1
    800083cc:	00100593          	li	a1,1
    800083d0:	00048513          	mv	a0,s1
    800083d4:	00000097          	auipc	ra,0x0
    800083d8:	5e4080e7          	jalr	1508(ra) # 800089b8 <__memset>
    800083dc:	00093783          	ld	a5,0(s2)
    800083e0:	00f4b023          	sd	a5,0(s1)
    800083e4:	00993023          	sd	s1,0(s2)
    800083e8:	fd4498e3          	bne	s1,s4,800083b8 <kinit+0x70>
    800083ec:	03813083          	ld	ra,56(sp)
    800083f0:	03013403          	ld	s0,48(sp)
    800083f4:	02813483          	ld	s1,40(sp)
    800083f8:	02013903          	ld	s2,32(sp)
    800083fc:	01813983          	ld	s3,24(sp)
    80008400:	01013a03          	ld	s4,16(sp)
    80008404:	00813a83          	ld	s5,8(sp)
    80008408:	04010113          	addi	sp,sp,64
    8000840c:	00008067          	ret
    80008410:	00001517          	auipc	a0,0x1
    80008414:	4c050513          	addi	a0,a0,1216 # 800098d0 <digits+0x18>
    80008418:	fffff097          	auipc	ra,0xfffff
    8000841c:	4b4080e7          	jalr	1204(ra) # 800078cc <panic>

0000000080008420 <freerange>:
    80008420:	fc010113          	addi	sp,sp,-64
    80008424:	000017b7          	lui	a5,0x1
    80008428:	02913423          	sd	s1,40(sp)
    8000842c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008430:	009504b3          	add	s1,a0,s1
    80008434:	fffff537          	lui	a0,0xfffff
    80008438:	02813823          	sd	s0,48(sp)
    8000843c:	02113c23          	sd	ra,56(sp)
    80008440:	03213023          	sd	s2,32(sp)
    80008444:	01313c23          	sd	s3,24(sp)
    80008448:	01413823          	sd	s4,16(sp)
    8000844c:	01513423          	sd	s5,8(sp)
    80008450:	01613023          	sd	s6,0(sp)
    80008454:	04010413          	addi	s0,sp,64
    80008458:	00a4f4b3          	and	s1,s1,a0
    8000845c:	00f487b3          	add	a5,s1,a5
    80008460:	06f5e463          	bltu	a1,a5,800084c8 <freerange+0xa8>
    80008464:	00005a97          	auipc	s5,0x5
    80008468:	edca8a93          	addi	s5,s5,-292 # 8000d340 <end>
    8000846c:	0954e263          	bltu	s1,s5,800084f0 <freerange+0xd0>
    80008470:	01100993          	li	s3,17
    80008474:	01b99993          	slli	s3,s3,0x1b
    80008478:	0734fc63          	bgeu	s1,s3,800084f0 <freerange+0xd0>
    8000847c:	00058a13          	mv	s4,a1
    80008480:	00004917          	auipc	s2,0x4
    80008484:	87090913          	addi	s2,s2,-1936 # 8000bcf0 <kmem>
    80008488:	00002b37          	lui	s6,0x2
    8000848c:	0140006f          	j	800084a0 <freerange+0x80>
    80008490:	000017b7          	lui	a5,0x1
    80008494:	00f484b3          	add	s1,s1,a5
    80008498:	0554ec63          	bltu	s1,s5,800084f0 <freerange+0xd0>
    8000849c:	0534fa63          	bgeu	s1,s3,800084f0 <freerange+0xd0>
    800084a0:	00001637          	lui	a2,0x1
    800084a4:	00100593          	li	a1,1
    800084a8:	00048513          	mv	a0,s1
    800084ac:	00000097          	auipc	ra,0x0
    800084b0:	50c080e7          	jalr	1292(ra) # 800089b8 <__memset>
    800084b4:	00093703          	ld	a4,0(s2)
    800084b8:	016487b3          	add	a5,s1,s6
    800084bc:	00e4b023          	sd	a4,0(s1)
    800084c0:	00993023          	sd	s1,0(s2)
    800084c4:	fcfa76e3          	bgeu	s4,a5,80008490 <freerange+0x70>
    800084c8:	03813083          	ld	ra,56(sp)
    800084cc:	03013403          	ld	s0,48(sp)
    800084d0:	02813483          	ld	s1,40(sp)
    800084d4:	02013903          	ld	s2,32(sp)
    800084d8:	01813983          	ld	s3,24(sp)
    800084dc:	01013a03          	ld	s4,16(sp)
    800084e0:	00813a83          	ld	s5,8(sp)
    800084e4:	00013b03          	ld	s6,0(sp)
    800084e8:	04010113          	addi	sp,sp,64
    800084ec:	00008067          	ret
    800084f0:	00001517          	auipc	a0,0x1
    800084f4:	3e050513          	addi	a0,a0,992 # 800098d0 <digits+0x18>
    800084f8:	fffff097          	auipc	ra,0xfffff
    800084fc:	3d4080e7          	jalr	980(ra) # 800078cc <panic>

0000000080008500 <kfree>:
    80008500:	fe010113          	addi	sp,sp,-32
    80008504:	00813823          	sd	s0,16(sp)
    80008508:	00113c23          	sd	ra,24(sp)
    8000850c:	00913423          	sd	s1,8(sp)
    80008510:	02010413          	addi	s0,sp,32
    80008514:	03451793          	slli	a5,a0,0x34
    80008518:	04079c63          	bnez	a5,80008570 <kfree+0x70>
    8000851c:	00005797          	auipc	a5,0x5
    80008520:	e2478793          	addi	a5,a5,-476 # 8000d340 <end>
    80008524:	00050493          	mv	s1,a0
    80008528:	04f56463          	bltu	a0,a5,80008570 <kfree+0x70>
    8000852c:	01100793          	li	a5,17
    80008530:	01b79793          	slli	a5,a5,0x1b
    80008534:	02f57e63          	bgeu	a0,a5,80008570 <kfree+0x70>
    80008538:	00001637          	lui	a2,0x1
    8000853c:	00100593          	li	a1,1
    80008540:	00000097          	auipc	ra,0x0
    80008544:	478080e7          	jalr	1144(ra) # 800089b8 <__memset>
    80008548:	00003797          	auipc	a5,0x3
    8000854c:	7a878793          	addi	a5,a5,1960 # 8000bcf0 <kmem>
    80008550:	0007b703          	ld	a4,0(a5)
    80008554:	01813083          	ld	ra,24(sp)
    80008558:	01013403          	ld	s0,16(sp)
    8000855c:	00e4b023          	sd	a4,0(s1)
    80008560:	0097b023          	sd	s1,0(a5)
    80008564:	00813483          	ld	s1,8(sp)
    80008568:	02010113          	addi	sp,sp,32
    8000856c:	00008067          	ret
    80008570:	00001517          	auipc	a0,0x1
    80008574:	36050513          	addi	a0,a0,864 # 800098d0 <digits+0x18>
    80008578:	fffff097          	auipc	ra,0xfffff
    8000857c:	354080e7          	jalr	852(ra) # 800078cc <panic>

0000000080008580 <kalloc>:
    80008580:	fe010113          	addi	sp,sp,-32
    80008584:	00813823          	sd	s0,16(sp)
    80008588:	00913423          	sd	s1,8(sp)
    8000858c:	00113c23          	sd	ra,24(sp)
    80008590:	02010413          	addi	s0,sp,32
    80008594:	00003797          	auipc	a5,0x3
    80008598:	75c78793          	addi	a5,a5,1884 # 8000bcf0 <kmem>
    8000859c:	0007b483          	ld	s1,0(a5)
    800085a0:	02048063          	beqz	s1,800085c0 <kalloc+0x40>
    800085a4:	0004b703          	ld	a4,0(s1)
    800085a8:	00001637          	lui	a2,0x1
    800085ac:	00500593          	li	a1,5
    800085b0:	00048513          	mv	a0,s1
    800085b4:	00e7b023          	sd	a4,0(a5)
    800085b8:	00000097          	auipc	ra,0x0
    800085bc:	400080e7          	jalr	1024(ra) # 800089b8 <__memset>
    800085c0:	01813083          	ld	ra,24(sp)
    800085c4:	01013403          	ld	s0,16(sp)
    800085c8:	00048513          	mv	a0,s1
    800085cc:	00813483          	ld	s1,8(sp)
    800085d0:	02010113          	addi	sp,sp,32
    800085d4:	00008067          	ret

00000000800085d8 <initlock>:
    800085d8:	ff010113          	addi	sp,sp,-16
    800085dc:	00813423          	sd	s0,8(sp)
    800085e0:	01010413          	addi	s0,sp,16
    800085e4:	00813403          	ld	s0,8(sp)
    800085e8:	00b53423          	sd	a1,8(a0)
    800085ec:	00052023          	sw	zero,0(a0)
    800085f0:	00053823          	sd	zero,16(a0)
    800085f4:	01010113          	addi	sp,sp,16
    800085f8:	00008067          	ret

00000000800085fc <acquire>:
    800085fc:	fe010113          	addi	sp,sp,-32
    80008600:	00813823          	sd	s0,16(sp)
    80008604:	00913423          	sd	s1,8(sp)
    80008608:	00113c23          	sd	ra,24(sp)
    8000860c:	01213023          	sd	s2,0(sp)
    80008610:	02010413          	addi	s0,sp,32
    80008614:	00050493          	mv	s1,a0
    80008618:	10002973          	csrr	s2,sstatus
    8000861c:	100027f3          	csrr	a5,sstatus
    80008620:	ffd7f793          	andi	a5,a5,-3
    80008624:	10079073          	csrw	sstatus,a5
    80008628:	fffff097          	auipc	ra,0xfffff
    8000862c:	8ec080e7          	jalr	-1812(ra) # 80006f14 <mycpu>
    80008630:	07852783          	lw	a5,120(a0)
    80008634:	06078e63          	beqz	a5,800086b0 <acquire+0xb4>
    80008638:	fffff097          	auipc	ra,0xfffff
    8000863c:	8dc080e7          	jalr	-1828(ra) # 80006f14 <mycpu>
    80008640:	07852783          	lw	a5,120(a0)
    80008644:	0004a703          	lw	a4,0(s1)
    80008648:	0017879b          	addiw	a5,a5,1
    8000864c:	06f52c23          	sw	a5,120(a0)
    80008650:	04071063          	bnez	a4,80008690 <acquire+0x94>
    80008654:	00100713          	li	a4,1
    80008658:	00070793          	mv	a5,a4
    8000865c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008660:	0007879b          	sext.w	a5,a5
    80008664:	fe079ae3          	bnez	a5,80008658 <acquire+0x5c>
    80008668:	0ff0000f          	fence
    8000866c:	fffff097          	auipc	ra,0xfffff
    80008670:	8a8080e7          	jalr	-1880(ra) # 80006f14 <mycpu>
    80008674:	01813083          	ld	ra,24(sp)
    80008678:	01013403          	ld	s0,16(sp)
    8000867c:	00a4b823          	sd	a0,16(s1)
    80008680:	00013903          	ld	s2,0(sp)
    80008684:	00813483          	ld	s1,8(sp)
    80008688:	02010113          	addi	sp,sp,32
    8000868c:	00008067          	ret
    80008690:	0104b903          	ld	s2,16(s1)
    80008694:	fffff097          	auipc	ra,0xfffff
    80008698:	880080e7          	jalr	-1920(ra) # 80006f14 <mycpu>
    8000869c:	faa91ce3          	bne	s2,a0,80008654 <acquire+0x58>
    800086a0:	00001517          	auipc	a0,0x1
    800086a4:	23850513          	addi	a0,a0,568 # 800098d8 <digits+0x20>
    800086a8:	fffff097          	auipc	ra,0xfffff
    800086ac:	224080e7          	jalr	548(ra) # 800078cc <panic>
    800086b0:	00195913          	srli	s2,s2,0x1
    800086b4:	fffff097          	auipc	ra,0xfffff
    800086b8:	860080e7          	jalr	-1952(ra) # 80006f14 <mycpu>
    800086bc:	00197913          	andi	s2,s2,1
    800086c0:	07252e23          	sw	s2,124(a0)
    800086c4:	f75ff06f          	j	80008638 <acquire+0x3c>

00000000800086c8 <release>:
    800086c8:	fe010113          	addi	sp,sp,-32
    800086cc:	00813823          	sd	s0,16(sp)
    800086d0:	00113c23          	sd	ra,24(sp)
    800086d4:	00913423          	sd	s1,8(sp)
    800086d8:	01213023          	sd	s2,0(sp)
    800086dc:	02010413          	addi	s0,sp,32
    800086e0:	00052783          	lw	a5,0(a0)
    800086e4:	00079a63          	bnez	a5,800086f8 <release+0x30>
    800086e8:	00001517          	auipc	a0,0x1
    800086ec:	1f850513          	addi	a0,a0,504 # 800098e0 <digits+0x28>
    800086f0:	fffff097          	auipc	ra,0xfffff
    800086f4:	1dc080e7          	jalr	476(ra) # 800078cc <panic>
    800086f8:	01053903          	ld	s2,16(a0)
    800086fc:	00050493          	mv	s1,a0
    80008700:	fffff097          	auipc	ra,0xfffff
    80008704:	814080e7          	jalr	-2028(ra) # 80006f14 <mycpu>
    80008708:	fea910e3          	bne	s2,a0,800086e8 <release+0x20>
    8000870c:	0004b823          	sd	zero,16(s1)
    80008710:	0ff0000f          	fence
    80008714:	0f50000f          	fence	iorw,ow
    80008718:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000871c:	ffffe097          	auipc	ra,0xffffe
    80008720:	7f8080e7          	jalr	2040(ra) # 80006f14 <mycpu>
    80008724:	100027f3          	csrr	a5,sstatus
    80008728:	0027f793          	andi	a5,a5,2
    8000872c:	04079a63          	bnez	a5,80008780 <release+0xb8>
    80008730:	07852783          	lw	a5,120(a0)
    80008734:	02f05e63          	blez	a5,80008770 <release+0xa8>
    80008738:	fff7871b          	addiw	a4,a5,-1
    8000873c:	06e52c23          	sw	a4,120(a0)
    80008740:	00071c63          	bnez	a4,80008758 <release+0x90>
    80008744:	07c52783          	lw	a5,124(a0)
    80008748:	00078863          	beqz	a5,80008758 <release+0x90>
    8000874c:	100027f3          	csrr	a5,sstatus
    80008750:	0027e793          	ori	a5,a5,2
    80008754:	10079073          	csrw	sstatus,a5
    80008758:	01813083          	ld	ra,24(sp)
    8000875c:	01013403          	ld	s0,16(sp)
    80008760:	00813483          	ld	s1,8(sp)
    80008764:	00013903          	ld	s2,0(sp)
    80008768:	02010113          	addi	sp,sp,32
    8000876c:	00008067          	ret
    80008770:	00001517          	auipc	a0,0x1
    80008774:	19050513          	addi	a0,a0,400 # 80009900 <digits+0x48>
    80008778:	fffff097          	auipc	ra,0xfffff
    8000877c:	154080e7          	jalr	340(ra) # 800078cc <panic>
    80008780:	00001517          	auipc	a0,0x1
    80008784:	16850513          	addi	a0,a0,360 # 800098e8 <digits+0x30>
    80008788:	fffff097          	auipc	ra,0xfffff
    8000878c:	144080e7          	jalr	324(ra) # 800078cc <panic>

0000000080008790 <holding>:
    80008790:	00052783          	lw	a5,0(a0)
    80008794:	00079663          	bnez	a5,800087a0 <holding+0x10>
    80008798:	00000513          	li	a0,0
    8000879c:	00008067          	ret
    800087a0:	fe010113          	addi	sp,sp,-32
    800087a4:	00813823          	sd	s0,16(sp)
    800087a8:	00913423          	sd	s1,8(sp)
    800087ac:	00113c23          	sd	ra,24(sp)
    800087b0:	02010413          	addi	s0,sp,32
    800087b4:	01053483          	ld	s1,16(a0)
    800087b8:	ffffe097          	auipc	ra,0xffffe
    800087bc:	75c080e7          	jalr	1884(ra) # 80006f14 <mycpu>
    800087c0:	01813083          	ld	ra,24(sp)
    800087c4:	01013403          	ld	s0,16(sp)
    800087c8:	40a48533          	sub	a0,s1,a0
    800087cc:	00153513          	seqz	a0,a0
    800087d0:	00813483          	ld	s1,8(sp)
    800087d4:	02010113          	addi	sp,sp,32
    800087d8:	00008067          	ret

00000000800087dc <push_off>:
    800087dc:	fe010113          	addi	sp,sp,-32
    800087e0:	00813823          	sd	s0,16(sp)
    800087e4:	00113c23          	sd	ra,24(sp)
    800087e8:	00913423          	sd	s1,8(sp)
    800087ec:	02010413          	addi	s0,sp,32
    800087f0:	100024f3          	csrr	s1,sstatus
    800087f4:	100027f3          	csrr	a5,sstatus
    800087f8:	ffd7f793          	andi	a5,a5,-3
    800087fc:	10079073          	csrw	sstatus,a5
    80008800:	ffffe097          	auipc	ra,0xffffe
    80008804:	714080e7          	jalr	1812(ra) # 80006f14 <mycpu>
    80008808:	07852783          	lw	a5,120(a0)
    8000880c:	02078663          	beqz	a5,80008838 <push_off+0x5c>
    80008810:	ffffe097          	auipc	ra,0xffffe
    80008814:	704080e7          	jalr	1796(ra) # 80006f14 <mycpu>
    80008818:	07852783          	lw	a5,120(a0)
    8000881c:	01813083          	ld	ra,24(sp)
    80008820:	01013403          	ld	s0,16(sp)
    80008824:	0017879b          	addiw	a5,a5,1
    80008828:	06f52c23          	sw	a5,120(a0)
    8000882c:	00813483          	ld	s1,8(sp)
    80008830:	02010113          	addi	sp,sp,32
    80008834:	00008067          	ret
    80008838:	0014d493          	srli	s1,s1,0x1
    8000883c:	ffffe097          	auipc	ra,0xffffe
    80008840:	6d8080e7          	jalr	1752(ra) # 80006f14 <mycpu>
    80008844:	0014f493          	andi	s1,s1,1
    80008848:	06952e23          	sw	s1,124(a0)
    8000884c:	fc5ff06f          	j	80008810 <push_off+0x34>

0000000080008850 <pop_off>:
    80008850:	ff010113          	addi	sp,sp,-16
    80008854:	00813023          	sd	s0,0(sp)
    80008858:	00113423          	sd	ra,8(sp)
    8000885c:	01010413          	addi	s0,sp,16
    80008860:	ffffe097          	auipc	ra,0xffffe
    80008864:	6b4080e7          	jalr	1716(ra) # 80006f14 <mycpu>
    80008868:	100027f3          	csrr	a5,sstatus
    8000886c:	0027f793          	andi	a5,a5,2
    80008870:	04079663          	bnez	a5,800088bc <pop_off+0x6c>
    80008874:	07852783          	lw	a5,120(a0)
    80008878:	02f05a63          	blez	a5,800088ac <pop_off+0x5c>
    8000887c:	fff7871b          	addiw	a4,a5,-1
    80008880:	06e52c23          	sw	a4,120(a0)
    80008884:	00071c63          	bnez	a4,8000889c <pop_off+0x4c>
    80008888:	07c52783          	lw	a5,124(a0)
    8000888c:	00078863          	beqz	a5,8000889c <pop_off+0x4c>
    80008890:	100027f3          	csrr	a5,sstatus
    80008894:	0027e793          	ori	a5,a5,2
    80008898:	10079073          	csrw	sstatus,a5
    8000889c:	00813083          	ld	ra,8(sp)
    800088a0:	00013403          	ld	s0,0(sp)
    800088a4:	01010113          	addi	sp,sp,16
    800088a8:	00008067          	ret
    800088ac:	00001517          	auipc	a0,0x1
    800088b0:	05450513          	addi	a0,a0,84 # 80009900 <digits+0x48>
    800088b4:	fffff097          	auipc	ra,0xfffff
    800088b8:	018080e7          	jalr	24(ra) # 800078cc <panic>
    800088bc:	00001517          	auipc	a0,0x1
    800088c0:	02c50513          	addi	a0,a0,44 # 800098e8 <digits+0x30>
    800088c4:	fffff097          	auipc	ra,0xfffff
    800088c8:	008080e7          	jalr	8(ra) # 800078cc <panic>

00000000800088cc <push_on>:
    800088cc:	fe010113          	addi	sp,sp,-32
    800088d0:	00813823          	sd	s0,16(sp)
    800088d4:	00113c23          	sd	ra,24(sp)
    800088d8:	00913423          	sd	s1,8(sp)
    800088dc:	02010413          	addi	s0,sp,32
    800088e0:	100024f3          	csrr	s1,sstatus
    800088e4:	100027f3          	csrr	a5,sstatus
    800088e8:	0027e793          	ori	a5,a5,2
    800088ec:	10079073          	csrw	sstatus,a5
    800088f0:	ffffe097          	auipc	ra,0xffffe
    800088f4:	624080e7          	jalr	1572(ra) # 80006f14 <mycpu>
    800088f8:	07852783          	lw	a5,120(a0)
    800088fc:	02078663          	beqz	a5,80008928 <push_on+0x5c>
    80008900:	ffffe097          	auipc	ra,0xffffe
    80008904:	614080e7          	jalr	1556(ra) # 80006f14 <mycpu>
    80008908:	07852783          	lw	a5,120(a0)
    8000890c:	01813083          	ld	ra,24(sp)
    80008910:	01013403          	ld	s0,16(sp)
    80008914:	0017879b          	addiw	a5,a5,1
    80008918:	06f52c23          	sw	a5,120(a0)
    8000891c:	00813483          	ld	s1,8(sp)
    80008920:	02010113          	addi	sp,sp,32
    80008924:	00008067          	ret
    80008928:	0014d493          	srli	s1,s1,0x1
    8000892c:	ffffe097          	auipc	ra,0xffffe
    80008930:	5e8080e7          	jalr	1512(ra) # 80006f14 <mycpu>
    80008934:	0014f493          	andi	s1,s1,1
    80008938:	06952e23          	sw	s1,124(a0)
    8000893c:	fc5ff06f          	j	80008900 <push_on+0x34>

0000000080008940 <pop_on>:
    80008940:	ff010113          	addi	sp,sp,-16
    80008944:	00813023          	sd	s0,0(sp)
    80008948:	00113423          	sd	ra,8(sp)
    8000894c:	01010413          	addi	s0,sp,16
    80008950:	ffffe097          	auipc	ra,0xffffe
    80008954:	5c4080e7          	jalr	1476(ra) # 80006f14 <mycpu>
    80008958:	100027f3          	csrr	a5,sstatus
    8000895c:	0027f793          	andi	a5,a5,2
    80008960:	04078463          	beqz	a5,800089a8 <pop_on+0x68>
    80008964:	07852783          	lw	a5,120(a0)
    80008968:	02f05863          	blez	a5,80008998 <pop_on+0x58>
    8000896c:	fff7879b          	addiw	a5,a5,-1
    80008970:	06f52c23          	sw	a5,120(a0)
    80008974:	07853783          	ld	a5,120(a0)
    80008978:	00079863          	bnez	a5,80008988 <pop_on+0x48>
    8000897c:	100027f3          	csrr	a5,sstatus
    80008980:	ffd7f793          	andi	a5,a5,-3
    80008984:	10079073          	csrw	sstatus,a5
    80008988:	00813083          	ld	ra,8(sp)
    8000898c:	00013403          	ld	s0,0(sp)
    80008990:	01010113          	addi	sp,sp,16
    80008994:	00008067          	ret
    80008998:	00001517          	auipc	a0,0x1
    8000899c:	f9050513          	addi	a0,a0,-112 # 80009928 <digits+0x70>
    800089a0:	fffff097          	auipc	ra,0xfffff
    800089a4:	f2c080e7          	jalr	-212(ra) # 800078cc <panic>
    800089a8:	00001517          	auipc	a0,0x1
    800089ac:	f6050513          	addi	a0,a0,-160 # 80009908 <digits+0x50>
    800089b0:	fffff097          	auipc	ra,0xfffff
    800089b4:	f1c080e7          	jalr	-228(ra) # 800078cc <panic>

00000000800089b8 <__memset>:
    800089b8:	ff010113          	addi	sp,sp,-16
    800089bc:	00813423          	sd	s0,8(sp)
    800089c0:	01010413          	addi	s0,sp,16
    800089c4:	1a060e63          	beqz	a2,80008b80 <__memset+0x1c8>
    800089c8:	40a007b3          	neg	a5,a0
    800089cc:	0077f793          	andi	a5,a5,7
    800089d0:	00778693          	addi	a3,a5,7
    800089d4:	00b00813          	li	a6,11
    800089d8:	0ff5f593          	andi	a1,a1,255
    800089dc:	fff6071b          	addiw	a4,a2,-1
    800089e0:	1b06e663          	bltu	a3,a6,80008b8c <__memset+0x1d4>
    800089e4:	1cd76463          	bltu	a4,a3,80008bac <__memset+0x1f4>
    800089e8:	1a078e63          	beqz	a5,80008ba4 <__memset+0x1ec>
    800089ec:	00b50023          	sb	a1,0(a0)
    800089f0:	00100713          	li	a4,1
    800089f4:	1ae78463          	beq	a5,a4,80008b9c <__memset+0x1e4>
    800089f8:	00b500a3          	sb	a1,1(a0)
    800089fc:	00200713          	li	a4,2
    80008a00:	1ae78a63          	beq	a5,a4,80008bb4 <__memset+0x1fc>
    80008a04:	00b50123          	sb	a1,2(a0)
    80008a08:	00300713          	li	a4,3
    80008a0c:	18e78463          	beq	a5,a4,80008b94 <__memset+0x1dc>
    80008a10:	00b501a3          	sb	a1,3(a0)
    80008a14:	00400713          	li	a4,4
    80008a18:	1ae78263          	beq	a5,a4,80008bbc <__memset+0x204>
    80008a1c:	00b50223          	sb	a1,4(a0)
    80008a20:	00500713          	li	a4,5
    80008a24:	1ae78063          	beq	a5,a4,80008bc4 <__memset+0x20c>
    80008a28:	00b502a3          	sb	a1,5(a0)
    80008a2c:	00700713          	li	a4,7
    80008a30:	18e79e63          	bne	a5,a4,80008bcc <__memset+0x214>
    80008a34:	00b50323          	sb	a1,6(a0)
    80008a38:	00700e93          	li	t4,7
    80008a3c:	00859713          	slli	a4,a1,0x8
    80008a40:	00e5e733          	or	a4,a1,a4
    80008a44:	01059e13          	slli	t3,a1,0x10
    80008a48:	01c76e33          	or	t3,a4,t3
    80008a4c:	01859313          	slli	t1,a1,0x18
    80008a50:	006e6333          	or	t1,t3,t1
    80008a54:	02059893          	slli	a7,a1,0x20
    80008a58:	40f60e3b          	subw	t3,a2,a5
    80008a5c:	011368b3          	or	a7,t1,a7
    80008a60:	02859813          	slli	a6,a1,0x28
    80008a64:	0108e833          	or	a6,a7,a6
    80008a68:	03059693          	slli	a3,a1,0x30
    80008a6c:	003e589b          	srliw	a7,t3,0x3
    80008a70:	00d866b3          	or	a3,a6,a3
    80008a74:	03859713          	slli	a4,a1,0x38
    80008a78:	00389813          	slli	a6,a7,0x3
    80008a7c:	00f507b3          	add	a5,a0,a5
    80008a80:	00e6e733          	or	a4,a3,a4
    80008a84:	000e089b          	sext.w	a7,t3
    80008a88:	00f806b3          	add	a3,a6,a5
    80008a8c:	00e7b023          	sd	a4,0(a5)
    80008a90:	00878793          	addi	a5,a5,8
    80008a94:	fed79ce3          	bne	a5,a3,80008a8c <__memset+0xd4>
    80008a98:	ff8e7793          	andi	a5,t3,-8
    80008a9c:	0007871b          	sext.w	a4,a5
    80008aa0:	01d787bb          	addw	a5,a5,t4
    80008aa4:	0ce88e63          	beq	a7,a4,80008b80 <__memset+0x1c8>
    80008aa8:	00f50733          	add	a4,a0,a5
    80008aac:	00b70023          	sb	a1,0(a4)
    80008ab0:	0017871b          	addiw	a4,a5,1
    80008ab4:	0cc77663          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008ab8:	00e50733          	add	a4,a0,a4
    80008abc:	00b70023          	sb	a1,0(a4)
    80008ac0:	0027871b          	addiw	a4,a5,2
    80008ac4:	0ac77e63          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008ac8:	00e50733          	add	a4,a0,a4
    80008acc:	00b70023          	sb	a1,0(a4)
    80008ad0:	0037871b          	addiw	a4,a5,3
    80008ad4:	0ac77663          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008ad8:	00e50733          	add	a4,a0,a4
    80008adc:	00b70023          	sb	a1,0(a4)
    80008ae0:	0047871b          	addiw	a4,a5,4
    80008ae4:	08c77e63          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008ae8:	00e50733          	add	a4,a0,a4
    80008aec:	00b70023          	sb	a1,0(a4)
    80008af0:	0057871b          	addiw	a4,a5,5
    80008af4:	08c77663          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008af8:	00e50733          	add	a4,a0,a4
    80008afc:	00b70023          	sb	a1,0(a4)
    80008b00:	0067871b          	addiw	a4,a5,6
    80008b04:	06c77e63          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008b08:	00e50733          	add	a4,a0,a4
    80008b0c:	00b70023          	sb	a1,0(a4)
    80008b10:	0077871b          	addiw	a4,a5,7
    80008b14:	06c77663          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008b18:	00e50733          	add	a4,a0,a4
    80008b1c:	00b70023          	sb	a1,0(a4)
    80008b20:	0087871b          	addiw	a4,a5,8
    80008b24:	04c77e63          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008b28:	00e50733          	add	a4,a0,a4
    80008b2c:	00b70023          	sb	a1,0(a4)
    80008b30:	0097871b          	addiw	a4,a5,9
    80008b34:	04c77663          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008b38:	00e50733          	add	a4,a0,a4
    80008b3c:	00b70023          	sb	a1,0(a4)
    80008b40:	00a7871b          	addiw	a4,a5,10
    80008b44:	02c77e63          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008b48:	00e50733          	add	a4,a0,a4
    80008b4c:	00b70023          	sb	a1,0(a4)
    80008b50:	00b7871b          	addiw	a4,a5,11
    80008b54:	02c77663          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008b58:	00e50733          	add	a4,a0,a4
    80008b5c:	00b70023          	sb	a1,0(a4)
    80008b60:	00c7871b          	addiw	a4,a5,12
    80008b64:	00c77e63          	bgeu	a4,a2,80008b80 <__memset+0x1c8>
    80008b68:	00e50733          	add	a4,a0,a4
    80008b6c:	00b70023          	sb	a1,0(a4)
    80008b70:	00d7879b          	addiw	a5,a5,13
    80008b74:	00c7f663          	bgeu	a5,a2,80008b80 <__memset+0x1c8>
    80008b78:	00f507b3          	add	a5,a0,a5
    80008b7c:	00b78023          	sb	a1,0(a5)
    80008b80:	00813403          	ld	s0,8(sp)
    80008b84:	01010113          	addi	sp,sp,16
    80008b88:	00008067          	ret
    80008b8c:	00b00693          	li	a3,11
    80008b90:	e55ff06f          	j	800089e4 <__memset+0x2c>
    80008b94:	00300e93          	li	t4,3
    80008b98:	ea5ff06f          	j	80008a3c <__memset+0x84>
    80008b9c:	00100e93          	li	t4,1
    80008ba0:	e9dff06f          	j	80008a3c <__memset+0x84>
    80008ba4:	00000e93          	li	t4,0
    80008ba8:	e95ff06f          	j	80008a3c <__memset+0x84>
    80008bac:	00000793          	li	a5,0
    80008bb0:	ef9ff06f          	j	80008aa8 <__memset+0xf0>
    80008bb4:	00200e93          	li	t4,2
    80008bb8:	e85ff06f          	j	80008a3c <__memset+0x84>
    80008bbc:	00400e93          	li	t4,4
    80008bc0:	e7dff06f          	j	80008a3c <__memset+0x84>
    80008bc4:	00500e93          	li	t4,5
    80008bc8:	e75ff06f          	j	80008a3c <__memset+0x84>
    80008bcc:	00600e93          	li	t4,6
    80008bd0:	e6dff06f          	j	80008a3c <__memset+0x84>

0000000080008bd4 <__memmove>:
    80008bd4:	ff010113          	addi	sp,sp,-16
    80008bd8:	00813423          	sd	s0,8(sp)
    80008bdc:	01010413          	addi	s0,sp,16
    80008be0:	0e060863          	beqz	a2,80008cd0 <__memmove+0xfc>
    80008be4:	fff6069b          	addiw	a3,a2,-1
    80008be8:	0006881b          	sext.w	a6,a3
    80008bec:	0ea5e863          	bltu	a1,a0,80008cdc <__memmove+0x108>
    80008bf0:	00758713          	addi	a4,a1,7
    80008bf4:	00a5e7b3          	or	a5,a1,a0
    80008bf8:	40a70733          	sub	a4,a4,a0
    80008bfc:	0077f793          	andi	a5,a5,7
    80008c00:	00f73713          	sltiu	a4,a4,15
    80008c04:	00174713          	xori	a4,a4,1
    80008c08:	0017b793          	seqz	a5,a5
    80008c0c:	00e7f7b3          	and	a5,a5,a4
    80008c10:	10078863          	beqz	a5,80008d20 <__memmove+0x14c>
    80008c14:	00900793          	li	a5,9
    80008c18:	1107f463          	bgeu	a5,a6,80008d20 <__memmove+0x14c>
    80008c1c:	0036581b          	srliw	a6,a2,0x3
    80008c20:	fff8081b          	addiw	a6,a6,-1
    80008c24:	02081813          	slli	a6,a6,0x20
    80008c28:	01d85893          	srli	a7,a6,0x1d
    80008c2c:	00858813          	addi	a6,a1,8
    80008c30:	00058793          	mv	a5,a1
    80008c34:	00050713          	mv	a4,a0
    80008c38:	01088833          	add	a6,a7,a6
    80008c3c:	0007b883          	ld	a7,0(a5)
    80008c40:	00878793          	addi	a5,a5,8
    80008c44:	00870713          	addi	a4,a4,8
    80008c48:	ff173c23          	sd	a7,-8(a4)
    80008c4c:	ff0798e3          	bne	a5,a6,80008c3c <__memmove+0x68>
    80008c50:	ff867713          	andi	a4,a2,-8
    80008c54:	02071793          	slli	a5,a4,0x20
    80008c58:	0207d793          	srli	a5,a5,0x20
    80008c5c:	00f585b3          	add	a1,a1,a5
    80008c60:	40e686bb          	subw	a3,a3,a4
    80008c64:	00f507b3          	add	a5,a0,a5
    80008c68:	06e60463          	beq	a2,a4,80008cd0 <__memmove+0xfc>
    80008c6c:	0005c703          	lbu	a4,0(a1)
    80008c70:	00e78023          	sb	a4,0(a5)
    80008c74:	04068e63          	beqz	a3,80008cd0 <__memmove+0xfc>
    80008c78:	0015c603          	lbu	a2,1(a1)
    80008c7c:	00100713          	li	a4,1
    80008c80:	00c780a3          	sb	a2,1(a5)
    80008c84:	04e68663          	beq	a3,a4,80008cd0 <__memmove+0xfc>
    80008c88:	0025c603          	lbu	a2,2(a1)
    80008c8c:	00200713          	li	a4,2
    80008c90:	00c78123          	sb	a2,2(a5)
    80008c94:	02e68e63          	beq	a3,a4,80008cd0 <__memmove+0xfc>
    80008c98:	0035c603          	lbu	a2,3(a1)
    80008c9c:	00300713          	li	a4,3
    80008ca0:	00c781a3          	sb	a2,3(a5)
    80008ca4:	02e68663          	beq	a3,a4,80008cd0 <__memmove+0xfc>
    80008ca8:	0045c603          	lbu	a2,4(a1)
    80008cac:	00400713          	li	a4,4
    80008cb0:	00c78223          	sb	a2,4(a5)
    80008cb4:	00e68e63          	beq	a3,a4,80008cd0 <__memmove+0xfc>
    80008cb8:	0055c603          	lbu	a2,5(a1)
    80008cbc:	00500713          	li	a4,5
    80008cc0:	00c782a3          	sb	a2,5(a5)
    80008cc4:	00e68663          	beq	a3,a4,80008cd0 <__memmove+0xfc>
    80008cc8:	0065c703          	lbu	a4,6(a1)
    80008ccc:	00e78323          	sb	a4,6(a5)
    80008cd0:	00813403          	ld	s0,8(sp)
    80008cd4:	01010113          	addi	sp,sp,16
    80008cd8:	00008067          	ret
    80008cdc:	02061713          	slli	a4,a2,0x20
    80008ce0:	02075713          	srli	a4,a4,0x20
    80008ce4:	00e587b3          	add	a5,a1,a4
    80008ce8:	f0f574e3          	bgeu	a0,a5,80008bf0 <__memmove+0x1c>
    80008cec:	02069613          	slli	a2,a3,0x20
    80008cf0:	02065613          	srli	a2,a2,0x20
    80008cf4:	fff64613          	not	a2,a2
    80008cf8:	00e50733          	add	a4,a0,a4
    80008cfc:	00c78633          	add	a2,a5,a2
    80008d00:	fff7c683          	lbu	a3,-1(a5)
    80008d04:	fff78793          	addi	a5,a5,-1
    80008d08:	fff70713          	addi	a4,a4,-1
    80008d0c:	00d70023          	sb	a3,0(a4)
    80008d10:	fec798e3          	bne	a5,a2,80008d00 <__memmove+0x12c>
    80008d14:	00813403          	ld	s0,8(sp)
    80008d18:	01010113          	addi	sp,sp,16
    80008d1c:	00008067          	ret
    80008d20:	02069713          	slli	a4,a3,0x20
    80008d24:	02075713          	srli	a4,a4,0x20
    80008d28:	00170713          	addi	a4,a4,1
    80008d2c:	00e50733          	add	a4,a0,a4
    80008d30:	00050793          	mv	a5,a0
    80008d34:	0005c683          	lbu	a3,0(a1)
    80008d38:	00178793          	addi	a5,a5,1
    80008d3c:	00158593          	addi	a1,a1,1
    80008d40:	fed78fa3          	sb	a3,-1(a5)
    80008d44:	fee798e3          	bne	a5,a4,80008d34 <__memmove+0x160>
    80008d48:	f89ff06f          	j	80008cd0 <__memmove+0xfc>

0000000080008d4c <__putc>:
    80008d4c:	fe010113          	addi	sp,sp,-32
    80008d50:	00813823          	sd	s0,16(sp)
    80008d54:	00113c23          	sd	ra,24(sp)
    80008d58:	02010413          	addi	s0,sp,32
    80008d5c:	00050793          	mv	a5,a0
    80008d60:	fef40593          	addi	a1,s0,-17
    80008d64:	00100613          	li	a2,1
    80008d68:	00000513          	li	a0,0
    80008d6c:	fef407a3          	sb	a5,-17(s0)
    80008d70:	fffff097          	auipc	ra,0xfffff
    80008d74:	b3c080e7          	jalr	-1220(ra) # 800078ac <console_write>
    80008d78:	01813083          	ld	ra,24(sp)
    80008d7c:	01013403          	ld	s0,16(sp)
    80008d80:	02010113          	addi	sp,sp,32
    80008d84:	00008067          	ret

0000000080008d88 <__getc>:
    80008d88:	fe010113          	addi	sp,sp,-32
    80008d8c:	00813823          	sd	s0,16(sp)
    80008d90:	00113c23          	sd	ra,24(sp)
    80008d94:	02010413          	addi	s0,sp,32
    80008d98:	fe840593          	addi	a1,s0,-24
    80008d9c:	00100613          	li	a2,1
    80008da0:	00000513          	li	a0,0
    80008da4:	fffff097          	auipc	ra,0xfffff
    80008da8:	ae8080e7          	jalr	-1304(ra) # 8000788c <console_read>
    80008dac:	fe844503          	lbu	a0,-24(s0)
    80008db0:	01813083          	ld	ra,24(sp)
    80008db4:	01013403          	ld	s0,16(sp)
    80008db8:	02010113          	addi	sp,sp,32
    80008dbc:	00008067          	ret

0000000080008dc0 <console_handler>:
    80008dc0:	fe010113          	addi	sp,sp,-32
    80008dc4:	00813823          	sd	s0,16(sp)
    80008dc8:	00113c23          	sd	ra,24(sp)
    80008dcc:	00913423          	sd	s1,8(sp)
    80008dd0:	02010413          	addi	s0,sp,32
    80008dd4:	14202773          	csrr	a4,scause
    80008dd8:	100027f3          	csrr	a5,sstatus
    80008ddc:	0027f793          	andi	a5,a5,2
    80008de0:	06079e63          	bnez	a5,80008e5c <console_handler+0x9c>
    80008de4:	00074c63          	bltz	a4,80008dfc <console_handler+0x3c>
    80008de8:	01813083          	ld	ra,24(sp)
    80008dec:	01013403          	ld	s0,16(sp)
    80008df0:	00813483          	ld	s1,8(sp)
    80008df4:	02010113          	addi	sp,sp,32
    80008df8:	00008067          	ret
    80008dfc:	0ff77713          	andi	a4,a4,255
    80008e00:	00900793          	li	a5,9
    80008e04:	fef712e3          	bne	a4,a5,80008de8 <console_handler+0x28>
    80008e08:	ffffe097          	auipc	ra,0xffffe
    80008e0c:	6dc080e7          	jalr	1756(ra) # 800074e4 <plic_claim>
    80008e10:	00a00793          	li	a5,10
    80008e14:	00050493          	mv	s1,a0
    80008e18:	02f50c63          	beq	a0,a5,80008e50 <console_handler+0x90>
    80008e1c:	fc0506e3          	beqz	a0,80008de8 <console_handler+0x28>
    80008e20:	00050593          	mv	a1,a0
    80008e24:	00001517          	auipc	a0,0x1
    80008e28:	a0c50513          	addi	a0,a0,-1524 # 80009830 <CONSOLE_STATUS+0x820>
    80008e2c:	fffff097          	auipc	ra,0xfffff
    80008e30:	afc080e7          	jalr	-1284(ra) # 80007928 <__printf>
    80008e34:	01013403          	ld	s0,16(sp)
    80008e38:	01813083          	ld	ra,24(sp)
    80008e3c:	00048513          	mv	a0,s1
    80008e40:	00813483          	ld	s1,8(sp)
    80008e44:	02010113          	addi	sp,sp,32
    80008e48:	ffffe317          	auipc	t1,0xffffe
    80008e4c:	6d430067          	jr	1748(t1) # 8000751c <plic_complete>
    80008e50:	fffff097          	auipc	ra,0xfffff
    80008e54:	3e0080e7          	jalr	992(ra) # 80008230 <uartintr>
    80008e58:	fddff06f          	j	80008e34 <console_handler+0x74>
    80008e5c:	00001517          	auipc	a0,0x1
    80008e60:	ad450513          	addi	a0,a0,-1324 # 80009930 <digits+0x78>
    80008e64:	fffff097          	auipc	ra,0xfffff
    80008e68:	a68080e7          	jalr	-1432(ra) # 800078cc <panic>
	...
