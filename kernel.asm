
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	cb813103          	ld	sp,-840(sp) # 8000bcb8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2b9060ef          	jal	ra,80006ad4 <start>

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
    80001090:	29d000ef          	jal	ra,80001b2c <handleSupervisorTrap>

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
    8000164c:	578080e7          	jalr	1400(ra) # 80002bc0 <_ZN15MemoryAllocator11getInstanceEv>
    80001650:	00050493          	mv	s1,a0
    80001654:	00090513          	mv	a0,s2
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	fb4080e7          	jalr	-76(ra) # 8000160c <_ZL23blocksForBytesSemaphorem>
    80001660:	00050593          	mv	a1,a0
    80001664:	00048513          	mv	a0,s1
    80001668:	00001097          	auipc	ra,0x1
    8000166c:	5d8080e7          	jalr	1496(ra) # 80002c40 <_ZN15MemoryAllocator6mallocEm>
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
    800016a8:	51c080e7          	jalr	1308(ra) # 80002bc0 <_ZN15MemoryAllocator11getInstanceEv>
    800016ac:	00048593          	mv	a1,s1
    800016b0:	00001097          	auipc	ra,0x1
    800016b4:	6ec080e7          	jalr	1772(ra) # 80002d9c <_ZN15MemoryAllocator4freeEPv>
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

    return 0;
}

void _sem::block(BlockedNode* node) {
    if (node == nullptr) {
    80001784:	0e058663          	beqz	a1,80001870 <_ZN4_sem5blockEPNS_11BlockedNodeE+0xec>
void _sem::block(BlockedNode* node) {
    80001788:	fc010113          	addi	sp,sp,-64
    8000178c:	02113c23          	sd	ra,56(sp)
    80001790:	02813823          	sd	s0,48(sp)
    80001794:	02913423          	sd	s1,40(sp)
    80001798:	03213023          	sd	s2,32(sp)
    8000179c:	01313c23          	sd	s3,24(sp)
    800017a0:	01413823          	sd	s4,16(sp)
    800017a4:	01513423          	sd	s5,8(sp)
    800017a8:	04010413          	addi	s0,sp,64
    800017ac:	00050a93          	mv	s5,a0
    800017b0:	00058993          	mv	s3,a1
        return;
    }

    node->next = nullptr;
    800017b4:	0005b823          	sd	zero,16(a1)

    if (head == nullptr) {
    800017b8:	00853783          	ld	a5,8(a0)
    800017bc:	06078063          	beqz	a5,8000181c <_ZN4_sem5blockEPNS_11BlockedNodeE+0x98>
        head = node;
        tail = node;
        return;
    }
    if (node->thread->getId() < head->thread->getId()) {
    800017c0:	0005b503          	ld	a0,0(a1)
    800017c4:	00001097          	auipc	ra,0x1
    800017c8:	b08080e7          	jalr	-1272(ra) # 800022cc <_ZN7_thread5getIdEv>
    800017cc:	00050493          	mv	s1,a0
    800017d0:	008ab783          	ld	a5,8(s5)
    800017d4:	0007b503          	ld	a0,0(a5)
    800017d8:	00001097          	auipc	ra,0x1
    800017dc:	af4080e7          	jalr	-1292(ra) # 800022cc <_ZN7_thread5getIdEv>
    800017e0:	04a4c463          	blt	s1,a0,80001828 <_ZN4_sem5blockEPNS_11BlockedNodeE+0xa4>
        node->next = head;
        head = node;
        return;
    }

    BlockedNode* prev = head;
    800017e4:	008aba03          	ld	s4,8(s5)
    BlockedNode* curr = head->next;
    800017e8:	010a3483          	ld	s1,16(s4)

    while (curr != nullptr && curr->thread->getId() < node->thread->getId()) {
    800017ec:	04048663          	beqz	s1,80001838 <_ZN4_sem5blockEPNS_11BlockedNodeE+0xb4>
    800017f0:	0004b503          	ld	a0,0(s1)
    800017f4:	00001097          	auipc	ra,0x1
    800017f8:	ad8080e7          	jalr	-1320(ra) # 800022cc <_ZN7_thread5getIdEv>
    800017fc:	00050913          	mv	s2,a0
    80001800:	0009b503          	ld	a0,0(s3)
    80001804:	00001097          	auipc	ra,0x1
    80001808:	ac8080e7          	jalr	-1336(ra) # 800022cc <_ZN7_thread5getIdEv>
    8000180c:	02a95663          	bge	s2,a0,80001838 <_ZN4_sem5blockEPNS_11BlockedNodeE+0xb4>
        prev = curr;
    80001810:	00048a13          	mv	s4,s1
        curr = curr->next;
    80001814:	0104b483          	ld	s1,16(s1)
    while (curr != nullptr && curr->thread->getId() < node->thread->getId()) {
    80001818:	fd5ff06f          	j	800017ec <_ZN4_sem5blockEPNS_11BlockedNodeE+0x68>
        head = node;
    8000181c:	00b53423          	sd	a1,8(a0)
        tail = node;
    80001820:	00b53823          	sd	a1,16(a0)
        return;
    80001824:	0200006f          	j	80001844 <_ZN4_sem5blockEPNS_11BlockedNodeE+0xc0>
        node->next = head;
    80001828:	008ab783          	ld	a5,8(s5)
    8000182c:	00f9b823          	sd	a5,16(s3)
        head = node;
    80001830:	013ab423          	sd	s3,8(s5)
        return;
    80001834:	0100006f          	j	80001844 <_ZN4_sem5blockEPNS_11BlockedNodeE+0xc0>
    }

    node->next = curr;
    80001838:	0099b823          	sd	s1,16(s3)
    prev->next = node;
    8000183c:	013a3823          	sd	s3,16(s4)

    if (curr == nullptr) {
    80001840:	02048463          	beqz	s1,80001868 <_ZN4_sem5blockEPNS_11BlockedNodeE+0xe4>
        tail = node;
    }
}
    80001844:	03813083          	ld	ra,56(sp)
    80001848:	03013403          	ld	s0,48(sp)
    8000184c:	02813483          	ld	s1,40(sp)
    80001850:	02013903          	ld	s2,32(sp)
    80001854:	01813983          	ld	s3,24(sp)
    80001858:	01013a03          	ld	s4,16(sp)
    8000185c:	00813a83          	ld	s5,8(sp)
    80001860:	04010113          	addi	sp,sp,64
    80001864:	00008067          	ret
        tail = node;
    80001868:	013ab823          	sd	s3,16(s5)
    8000186c:	fd9ff06f          	j	80001844 <_ZN4_sem5blockEPNS_11BlockedNodeE+0xc0>
    80001870:	00008067          	ret

0000000080001874 <_ZN4_sem5waitNEj>:
    if (_thread::running == nullptr) {
    80001874:	0000a797          	auipc	a5,0xa
    80001878:	4347b783          	ld	a5,1076(a5) # 8000bca8 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000187c:	0007b783          	ld	a5,0(a5)
    80001880:	08078a63          	beqz	a5,80001914 <_ZN4_sem5waitNEj+0xa0>
    if (closed) {
    80001884:	00454703          	lbu	a4,4(a0)
    80001888:	08071a63          	bnez	a4,8000191c <_ZN4_sem5waitNEj+0xa8>
    if (n == 0) {
    8000188c:	08058c63          	beqz	a1,80001924 <_ZN4_sem5waitNEj+0xb0>
    if (head == nullptr && val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
    80001890:	00853703          	ld	a4,8(a0)
    80001894:	06070263          	beqz	a4,800018f8 <_ZN4_sem5waitNEj+0x84>
int _sem::waitN(unsigned n) {
    80001898:	fd010113          	addi	sp,sp,-48
    8000189c:	02113423          	sd	ra,40(sp)
    800018a0:	02813023          	sd	s0,32(sp)
    800018a4:	03010413          	addi	s0,sp,48
    node.thread = _thread::running;
    800018a8:	fcf43c23          	sd	a5,-40(s0)
    node.requested = n;
    800018ac:	feb42023          	sw	a1,-32(s0)
    node.status = 0;
    800018b0:	fe042223          	sw	zero,-28(s0)
    node.next = nullptr;
    800018b4:	fe043423          	sd	zero,-24(s0)
    block(&node);
    800018b8:	fd840593          	addi	a1,s0,-40
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	ec8080e7          	jalr	-312(ra) # 80001784 <_ZN4_sem5blockEPNS_11BlockedNodeE>
    _thread::running->setState(_thread::BLOCKED);
    800018c4:	00300593          	li	a1,3
    800018c8:	0000a797          	auipc	a5,0xa
    800018cc:	3e07b783          	ld	a5,992(a5) # 8000bca8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800018d0:	0007b503          	ld	a0,0(a5)
    800018d4:	00001097          	auipc	ra,0x1
    800018d8:	a84080e7          	jalr	-1404(ra) # 80002358 <_ZN7_thread8setStateENS_5StateE>
    _thread::dispatch();
    800018dc:	00001097          	auipc	ra,0x1
    800018e0:	8e4080e7          	jalr	-1820(ra) # 800021c0 <_ZN7_thread8dispatchEv>
    return node.status;
    800018e4:	fe442503          	lw	a0,-28(s0)
}
    800018e8:	02813083          	ld	ra,40(sp)
    800018ec:	02013403          	ld	s0,32(sp)
    800018f0:	03010113          	addi	sp,sp,48
    800018f4:	00008067          	ret
    if (head == nullptr && val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
    800018f8:	00052703          	lw	a4,0(a0)
    800018fc:	0005869b          	sext.w	a3,a1
    80001900:	f8d74ce3          	blt	a4,a3,80001898 <_ZN4_sem5waitNEj+0x24>
        val -= (int)n;
    80001904:	40d7073b          	subw	a4,a4,a3
    80001908:	00e52023          	sw	a4,0(a0)
        return 0;
    8000190c:	00000513          	li	a0,0
    80001910:	00008067          	ret
        return -1;
    80001914:	fff00513          	li	a0,-1
    80001918:	00008067          	ret
        return -1;
    8000191c:	fff00513          	li	a0,-1
    80001920:	00008067          	ret
        return 0;
    80001924:	00000513          	li	a0,0
}
    80001928:	00008067          	ret

000000008000192c <_ZN4_sem4waitEv>:
int _sem::wait() {
    8000192c:	ff010113          	addi	sp,sp,-16
    80001930:	00113423          	sd	ra,8(sp)
    80001934:	00813023          	sd	s0,0(sp)
    80001938:	01010413          	addi	s0,sp,16
    return waitN(1);
    8000193c:	00100593          	li	a1,1
    80001940:	00000097          	auipc	ra,0x0
    80001944:	f34080e7          	jalr	-204(ra) # 80001874 <_ZN4_sem5waitNEj>
}
    80001948:	00813083          	ld	ra,8(sp)
    8000194c:	00013403          	ld	s0,0(sp)
    80001950:	01010113          	addi	sp,sp,16
    80001954:	00008067          	ret

0000000080001958 <_ZN4_sem12unblockReadyEv>:

void _sem::unblockReady() {
    80001958:	fe010113          	addi	sp,sp,-32
    8000195c:	00113c23          	sd	ra,24(sp)
    80001960:	00813823          	sd	s0,16(sp)
    80001964:	00913423          	sd	s1,8(sp)
    80001968:	01213023          	sd	s2,0(sp)
    8000196c:	02010413          	addi	s0,sp,32
    80001970:	00050913          	mv	s2,a0
    80001974:	0240006f          	j	80001998 <_ZN4_sem12unblockReadyEv+0x40>
        BlockedNode* node = head;

        head = head->next;

        if (head == nullptr) {
            tail = nullptr;
    80001978:	00093823          	sd	zero,16(s2)
        }

        val -= (int)node->requested;
    8000197c:	0084a703          	lw	a4,8(s1)
    80001980:	40e787bb          	subw	a5,a5,a4
    80001984:	00f92023          	sw	a5,0(s2)

        node->status = 0;//znaci da ce waitN vratiti 0
    80001988:	0004a623          	sw	zero,12(s1)
        node->next = nullptr;
    8000198c:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    80001990:	0004b503          	ld	a0,0(s1)
    80001994:	02051463          	bnez	a0,800019bc <_ZN4_sem12unblockReadyEv+0x64>
    while (head != nullptr && val >= (int)head->requested) {
    80001998:	00893483          	ld	s1,8(s2)
    8000199c:	02048e63          	beqz	s1,800019d8 <_ZN4_sem12unblockReadyEv+0x80>
    800019a0:	00092783          	lw	a5,0(s2)
    800019a4:	0084a703          	lw	a4,8(s1)
    800019a8:	02e7c863          	blt	a5,a4,800019d8 <_ZN4_sem12unblockReadyEv+0x80>
        head = head->next;
    800019ac:	0104b703          	ld	a4,16(s1)
    800019b0:	00e93423          	sd	a4,8(s2)
        if (head == nullptr) {
    800019b4:	fc0714e3          	bnez	a4,8000197c <_ZN4_sem12unblockReadyEv+0x24>
    800019b8:	fc1ff06f          	j	80001978 <_ZN4_sem12unblockReadyEv+0x20>
            node->thread->setState(_thread::READY);
    800019bc:	00100593          	li	a1,1
    800019c0:	00001097          	auipc	ra,0x1
    800019c4:	998080e7          	jalr	-1640(ra) # 80002358 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    800019c8:	0004b503          	ld	a0,0(s1)
    800019cc:	00001097          	auipc	ra,0x1
    800019d0:	b38080e7          	jalr	-1224(ra) # 80002504 <_ZN9Scheduler3putEP7_thread>
    800019d4:	fc5ff06f          	j	80001998 <_ZN4_sem12unblockReadyEv+0x40>
        }
    }
}
    800019d8:	01813083          	ld	ra,24(sp)
    800019dc:	01013403          	ld	s0,16(sp)
    800019e0:	00813483          	ld	s1,8(sp)
    800019e4:	00013903          	ld	s2,0(sp)
    800019e8:	02010113          	addi	sp,sp,32
    800019ec:	00008067          	ret

00000000800019f0 <_ZN4_sem7signalNEj>:
    if (closed) {
    800019f0:	00454783          	lbu	a5,4(a0)
    800019f4:	04079463          	bnez	a5,80001a3c <_ZN4_sem7signalNEj+0x4c>
    if (n == 0) {
    800019f8:	00059663          	bnez	a1,80001a04 <_ZN4_sem7signalNEj+0x14>
        return 0;
    800019fc:	00000513          	li	a0,0
}
    80001a00:	00008067          	ret
int _sem::signalN(unsigned n) {
    80001a04:	ff010113          	addi	sp,sp,-16
    80001a08:	00113423          	sd	ra,8(sp)
    80001a0c:	00813023          	sd	s0,0(sp)
    80001a10:	01010413          	addi	s0,sp,16
    val += (int)n;
    80001a14:	00052783          	lw	a5,0(a0)
    80001a18:	00b785bb          	addw	a1,a5,a1
    80001a1c:	00b52023          	sw	a1,0(a0)
    unblockReady();
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	f38080e7          	jalr	-200(ra) # 80001958 <_ZN4_sem12unblockReadyEv>
    return 0;
    80001a28:	00000513          	li	a0,0
}
    80001a2c:	00813083          	ld	ra,8(sp)
    80001a30:	00013403          	ld	s0,0(sp)
    80001a34:	01010113          	addi	sp,sp,16
    80001a38:	00008067          	ret
        return -1;
    80001a3c:	fff00513          	li	a0,-1
    80001a40:	00008067          	ret

0000000080001a44 <_ZN4_sem6signalEv>:
int _sem::signal() {
    80001a44:	ff010113          	addi	sp,sp,-16
    80001a48:	00113423          	sd	ra,8(sp)
    80001a4c:	00813023          	sd	s0,0(sp)
    80001a50:	01010413          	addi	s0,sp,16
    return signalN(1);
    80001a54:	00100593          	li	a1,1
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	f98080e7          	jalr	-104(ra) # 800019f0 <_ZN4_sem7signalNEj>
}
    80001a60:	00813083          	ld	ra,8(sp)
    80001a64:	00013403          	ld	s0,0(sp)
    80001a68:	01010113          	addi	sp,sp,16
    80001a6c:	00008067          	ret

0000000080001a70 <_ZN4_sem10unblockAllEv>:

void _sem::unblockAll() {
    80001a70:	fe010113          	addi	sp,sp,-32
    80001a74:	00113c23          	sd	ra,24(sp)
    80001a78:	00813823          	sd	s0,16(sp)
    80001a7c:	00913423          	sd	s1,8(sp)
    80001a80:	01213023          	sd	s2,0(sp)
    80001a84:	02010413          	addi	s0,sp,32
    80001a88:	00050913          	mv	s2,a0
    while (head != nullptr) {
    80001a8c:	00893483          	ld	s1,8(s2)
    80001a90:	02048e63          	beqz	s1,80001acc <_ZN4_sem10unblockAllEv+0x5c>
        BlockedNode* node = head;

        head = head->next;
    80001a94:	0104b783          	ld	a5,16(s1)
    80001a98:	00f93423          	sd	a5,8(s2)

        node->status = -1;
    80001a9c:	fff00793          	li	a5,-1
    80001aa0:	00f4a623          	sw	a5,12(s1)
        node->next = nullptr;
    80001aa4:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    80001aa8:	0004b503          	ld	a0,0(s1)
    80001aac:	fe0500e3          	beqz	a0,80001a8c <_ZN4_sem10unblockAllEv+0x1c>
            node->thread->setState(_thread::READY);
    80001ab0:	00100593          	li	a1,1
    80001ab4:	00001097          	auipc	ra,0x1
    80001ab8:	8a4080e7          	jalr	-1884(ra) # 80002358 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001abc:	0004b503          	ld	a0,0(s1)
    80001ac0:	00001097          	auipc	ra,0x1
    80001ac4:	a44080e7          	jalr	-1468(ra) # 80002504 <_ZN9Scheduler3putEP7_thread>
    80001ac8:	fc5ff06f          	j	80001a8c <_ZN4_sem10unblockAllEv+0x1c>
        }
    }

    tail = nullptr;
    80001acc:	00093823          	sd	zero,16(s2)
    80001ad0:	01813083          	ld	ra,24(sp)
    80001ad4:	01013403          	ld	s0,16(sp)
    80001ad8:	00813483          	ld	s1,8(sp)
    80001adc:	00013903          	ld	s2,0(sp)
    80001ae0:	02010113          	addi	sp,sp,32
    80001ae4:	00008067          	ret

0000000080001ae8 <_ZN4_sem5closeEv>:
    if (closed) {
    80001ae8:	00454783          	lbu	a5,4(a0)
    80001aec:	02079c63          	bnez	a5,80001b24 <_ZN4_sem5closeEv+0x3c>
int _sem::close() {
    80001af0:	ff010113          	addi	sp,sp,-16
    80001af4:	00113423          	sd	ra,8(sp)
    80001af8:	00813023          	sd	s0,0(sp)
    80001afc:	01010413          	addi	s0,sp,16
    closed = true;
    80001b00:	00100793          	li	a5,1
    80001b04:	00f50223          	sb	a5,4(a0)
    unblockAll();
    80001b08:	00000097          	auipc	ra,0x0
    80001b0c:	f68080e7          	jalr	-152(ra) # 80001a70 <_ZN4_sem10unblockAllEv>
    return 0;
    80001b10:	00000513          	li	a0,0
}
    80001b14:	00813083          	ld	ra,8(sp)
    80001b18:	00013403          	ld	s0,0(sp)
    80001b1c:	01010113          	addi	sp,sp,16
    80001b20:	00008067          	ret
        return -1;
    80001b24:	fff00513          	li	a0,-1
}
    80001b28:	00008067          	ret

0000000080001b2c <handleSupervisorTrap>:
#include "../lib/console.h"
#include "../test/printing.hpp"

extern "C" void handleSupervisorTrap(TrapFrame* frame);

extern "C" void handleSupervisorTrap(TrapFrame* frame) {
    80001b2c:	fd010113          	addi	sp,sp,-48
    80001b30:	02113423          	sd	ra,40(sp)
    80001b34:	02813023          	sd	s0,32(sp)
    80001b38:	00913c23          	sd	s1,24(sp)
    80001b3c:	01213823          	sd	s2,16(sp)
    80001b40:	01313423          	sd	s3,8(sp)
    80001b44:	03010413          	addi	s0,sp,48
    80001b48:	00050493          	mv	s1,a0
    static const uint64 SSTATUS_SPIE = (1UL << 5);
    static const uint64 SSTATUS_SPP = (1UL << 8);

    static uint64 r_scause() {
        uint64 x;
        asm volatile("csrr %0, scause" : "=r"(x));//upis vrednosti scause u x
    80001b4c:	14202973          	csrr	s2,scause
    uint64 scause = Riscv::r_scause();

    if (scause == 8 || scause == 9) {
    80001b50:	ff890713          	addi	a4,s2,-8
    80001b54:	00100793          	li	a5,1
    80001b58:	02e7f863          	bgeu	a5,a4,80001b88 <handleSupervisorTrap+0x5c>

        frame->sepc += 4;
        return;
    }

    if (scause == 0x8000000000000001UL) {
    80001b5c:	fff00793          	li	a5,-1
    80001b60:	03f79793          	slli	a5,a5,0x3f
    80001b64:	00178793          	addi	a5,a5,1
    80001b68:	28f90663          	beq	s2,a5,80001df4 <handleSupervisorTrap+0x2c8>
        Riscv::mc_sip(Riscv::SIP_SSIP);//birsanje pending bita
        return;
    }

    if (scause == 0x8000000000000009UL) {//spoljasnji hardverski prekid 9
    80001b6c:	fff00793          	li	a5,-1
    80001b70:	03f79793          	slli	a5,a5,0x3f
    80001b74:	00978793          	addi	a5,a5,9
    80001b78:	28f90463          	beq	s2,a5,80001e00 <handleSupervisorTrap+0x2d4>
        console_handler();
        return;
    }
    if (scause == 2) { // illegal instruction
    80001b7c:	00200793          	li	a5,2
    80001b80:	28f90663          	beq	s2,a5,80001e0c <handleSupervisorTrap+0x2e0>
        frame->sepc += 4;
        Riscv::w_sepc(frame->sepc);
        return;
    }

    while (true) {}
    80001b84:	0000006f          	j	80001b84 <handleSupervisorTrap+0x58>
        uint64 syscallCode = frame->a0;
    80001b88:	04053783          	ld	a5,64(a0)
        uint64 arg1 = frame->a1;
    80001b8c:	04853903          	ld	s2,72(a0)
        uint64 arg2 = frame->a2;
    80001b90:	05053503          	ld	a0,80(a0)
        uint64 arg3 = frame->a3;
    80001b94:	0584b583          	ld	a1,88(s1)
        uint64 arg4 = frame->a4;
    80001b98:	0604b603          	ld	a2,96(s1)
        switch (syscallCode) {
    80001b9c:	04200713          	li	a4,66
    80001ba0:	24f76463          	bltu	a4,a5,80001de8 <handleSupervisorTrap+0x2bc>
    80001ba4:	00279793          	slli	a5,a5,0x2
    80001ba8:	00007717          	auipc	a4,0x7
    80001bac:	49070713          	addi	a4,a4,1168 # 80009038 <CONSOLE_STATUS+0x28>
    80001bb0:	00e787b3          	add	a5,a5,a4
    80001bb4:	0007a783          	lw	a5,0(a5)
    80001bb8:	00e787b3          	add	a5,a5,a4
    80001bbc:	00078067          	jr	a5
                frame->a0 = (uint64)MemoryAllocator::getInstance().malloc((size_t)arg1);
    80001bc0:	00001097          	auipc	ra,0x1
    80001bc4:	000080e7          	jalr	ra # 80002bc0 <_ZN15MemoryAllocator11getInstanceEv>
    80001bc8:	00090593          	mv	a1,s2
    80001bcc:	00001097          	auipc	ra,0x1
    80001bd0:	074080e7          	jalr	116(ra) # 80002c40 <_ZN15MemoryAllocator6mallocEm>
    80001bd4:	04a4b023          	sd	a0,64(s1)
        frame->sepc += 4;
    80001bd8:	0f04b783          	ld	a5,240(s1)
    80001bdc:	00478793          	addi	a5,a5,4
    80001be0:	0ef4b823          	sd	a5,240(s1)
    80001be4:	02813083          	ld	ra,40(sp)
    80001be8:	02013403          	ld	s0,32(sp)
    80001bec:	01813483          	ld	s1,24(sp)
    80001bf0:	01013903          	ld	s2,16(sp)
    80001bf4:	00813983          	ld	s3,8(sp)
    80001bf8:	03010113          	addi	sp,sp,48
    80001bfc:	00008067          	ret
                frame->a0 = (uint64)MemoryAllocator::getInstance().free((void*)arg1);
    80001c00:	00001097          	auipc	ra,0x1
    80001c04:	fc0080e7          	jalr	-64(ra) # 80002bc0 <_ZN15MemoryAllocator11getInstanceEv>
    80001c08:	00090593          	mv	a1,s2
    80001c0c:	00001097          	auipc	ra,0x1
    80001c10:	190080e7          	jalr	400(ra) # 80002d9c <_ZN15MemoryAllocator4freeEPv>
    80001c14:	04a4b023          	sd	a0,64(s1)
                break;
    80001c18:	fc1ff06f          	j	80001bd8 <handleSupervisorTrap+0xac>
                if (handle == nullptr || body == nullptr || stackSpace == nullptr) {
    80001c1c:	00090663          	beqz	s2,80001c28 <handleSupervisorTrap+0xfc>
    80001c20:	00050463          	beqz	a0,80001c28 <handleSupervisorTrap+0xfc>
    80001c24:	00061863          	bnez	a2,80001c34 <handleSupervisorTrap+0x108>
                    frame->a0 = (uint64)-1;
    80001c28:	fff00793          	li	a5,-1
    80001c2c:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c30:	fa9ff06f          	j	80001bd8 <handleSupervisorTrap+0xac>
                _thread* thread = _thread::createThread(body, arg, stackSpace);
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	4b4080e7          	jalr	1204(ra) # 800020e8 <_ZN7_thread12createThreadEPFvPvES0_S0_>
                if (thread == nullptr) {
    80001c3c:	00050c63          	beqz	a0,80001c54 <handleSupervisorTrap+0x128>
                *handle = thread;//korisnik dobija rucku nove niti
    80001c40:	00a93023          	sd	a0,0(s2)
                Scheduler::put(thread);
    80001c44:	00001097          	auipc	ra,0x1
    80001c48:	8c0080e7          	jalr	-1856(ra) # 80002504 <_ZN9Scheduler3putEP7_thread>
                frame->a0 = 0;
    80001c4c:	0404b023          	sd	zero,64(s1)
                break;
    80001c50:	f89ff06f          	j	80001bd8 <handleSupervisorTrap+0xac>
                    frame->a0 = (uint64)-1;
    80001c54:	fff00793          	li	a5,-1
    80001c58:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c5c:	f7dff06f          	j	80001bd8 <handleSupervisorTrap+0xac>
                frame->sepc += 4;
    80001c60:	0f04b783          	ld	a5,240(s1)
    80001c64:	00478793          	addi	a5,a5,4
    80001c68:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)_thread::exit();
    80001c6c:	00000097          	auipc	ra,0x0
    80001c70:	5fc080e7          	jalr	1532(ra) # 80002268 <_ZN7_thread4exitEv>
    80001c74:	04a4b023          	sd	a0,64(s1)
                return;
    80001c78:	f6dff06f          	j	80001be4 <handleSupervisorTrap+0xb8>
                frame->sepc += 4;
    80001c7c:	0f04b783          	ld	a5,240(s1)
    80001c80:	00478793          	addi	a5,a5,4
    80001c84:	0ef4b823          	sd	a5,240(s1)
                _thread::dispatch();//nismo frame->a0 jer dispatch nema povratnu value
    80001c88:	00000097          	auipc	ra,0x0
    80001c8c:	538080e7          	jalr	1336(ra) # 800021c0 <_ZN7_thread8dispatchEv>
                return;
    80001c90:	f55ff06f          	j	80001be4 <handleSupervisorTrap+0xb8>
                unsigned init = (unsigned)arg2;
    80001c94:	0005051b          	sext.w	a0,a0
                if (handle == nullptr) {
    80001c98:	00091863          	bnez	s2,80001ca8 <handleSupervisorTrap+0x17c>
                    frame->a0 = (uint64)-1;
    80001c9c:	fff00793          	li	a5,-1
    80001ca0:	04f4b023          	sd	a5,64(s1)
                    break;
    80001ca4:	f35ff06f          	j	80001bd8 <handleSupervisorTrap+0xac>
                _sem* sem = _sem::createSemaphore(init);
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	a50080e7          	jalr	-1456(ra) # 800016f8 <_ZN4_sem15createSemaphoreEj>
                if (sem == nullptr) {
    80001cb0:	00050863          	beqz	a0,80001cc0 <handleSupervisorTrap+0x194>
                *handle = sem;
    80001cb4:	00a93023          	sd	a0,0(s2)
                frame->a0 = 0;
    80001cb8:	0404b023          	sd	zero,64(s1)
                break;
    80001cbc:	f1dff06f          	j	80001bd8 <handleSupervisorTrap+0xac>
                    frame->a0 = (uint64)-1;
    80001cc0:	fff00793          	li	a5,-1
    80001cc4:	04f4b023          	sd	a5,64(s1)
                    break;
    80001cc8:	f11ff06f          	j	80001bd8 <handleSupervisorTrap+0xac>
                if (sem == nullptr) {
    80001ccc:	00091863          	bnez	s2,80001cdc <handleSupervisorTrap+0x1b0>
                    frame->a0 = (uint64)-1;
    80001cd0:	fff00793          	li	a5,-1
    80001cd4:	04f4b023          	sd	a5,64(s1)
                    break;
    80001cd8:	f01ff06f          	j	80001bd8 <handleSupervisorTrap+0xac>
                int ret = sem->close();
    80001cdc:	00090513          	mv	a0,s2
    80001ce0:	00000097          	auipc	ra,0x0
    80001ce4:	e08080e7          	jalr	-504(ra) # 80001ae8 <_ZN4_sem5closeEv>
    80001ce8:	00050993          	mv	s3,a0
                if (ret == 0) {
    80001cec:	00050663          	beqz	a0,80001cf8 <handleSupervisorTrap+0x1cc>
                frame->a0 = (uint64)ret;
    80001cf0:	0534b023          	sd	s3,64(s1)
                break;
    80001cf4:	ee5ff06f          	j	80001bd8 <handleSupervisorTrap+0xac>
                    _sem::destroySemaphore(sem);
    80001cf8:	00090513          	mv	a0,s2
    80001cfc:	00000097          	auipc	ra,0x0
    80001d00:	a50080e7          	jalr	-1456(ra) # 8000174c <_ZN4_sem16destroySemaphoreEPS_>
    80001d04:	fedff06f          	j	80001cf0 <handleSupervisorTrap+0x1c4>
                if (sem == nullptr) {
    80001d08:	00091863          	bnez	s2,80001d18 <handleSupervisorTrap+0x1ec>
                    frame->a0 = (uint64)-1;
    80001d0c:	fff00793          	li	a5,-1
    80001d10:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d14:	ec5ff06f          	j	80001bd8 <handleSupervisorTrap+0xac>
                frame->sepc += 4;
    80001d18:	0f04b783          	ld	a5,240(s1)
    80001d1c:	00478793          	addi	a5,a5,4
    80001d20:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->wait();
    80001d24:	00090513          	mv	a0,s2
    80001d28:	00000097          	auipc	ra,0x0
    80001d2c:	c04080e7          	jalr	-1020(ra) # 8000192c <_ZN4_sem4waitEv>
    80001d30:	04a4b023          	sd	a0,64(s1)
                return;
    80001d34:	eb1ff06f          	j	80001be4 <handleSupervisorTrap+0xb8>
                if (sem == nullptr) {
    80001d38:	00091863          	bnez	s2,80001d48 <handleSupervisorTrap+0x21c>
                    frame->a0 = (uint64)-1;
    80001d3c:	fff00793          	li	a5,-1
    80001d40:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d44:	e95ff06f          	j	80001bd8 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)sem->signal();
    80001d48:	00090513          	mv	a0,s2
    80001d4c:	00000097          	auipc	ra,0x0
    80001d50:	cf8080e7          	jalr	-776(ra) # 80001a44 <_ZN4_sem6signalEv>
    80001d54:	04a4b023          	sd	a0,64(s1)
                break;
    80001d58:	e81ff06f          	j	80001bd8 <handleSupervisorTrap+0xac>
                unsigned n = (unsigned)arg2;
    80001d5c:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001d60:	00091863          	bnez	s2,80001d70 <handleSupervisorTrap+0x244>
                    frame->a0 = (uint64)-1;
    80001d64:	fff00793          	li	a5,-1
    80001d68:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d6c:	e6dff06f          	j	80001bd8 <handleSupervisorTrap+0xac>
                frame->sepc += 4;
    80001d70:	0f04b783          	ld	a5,240(s1)
    80001d74:	00478793          	addi	a5,a5,4
    80001d78:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->waitN(n);
    80001d7c:	00090513          	mv	a0,s2
    80001d80:	00000097          	auipc	ra,0x0
    80001d84:	af4080e7          	jalr	-1292(ra) # 80001874 <_ZN4_sem5waitNEj>
    80001d88:	04a4b023          	sd	a0,64(s1)
                return;
    80001d8c:	e59ff06f          	j	80001be4 <handleSupervisorTrap+0xb8>
                unsigned n = (unsigned)arg2;
    80001d90:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001d94:	00091863          	bnez	s2,80001da4 <handleSupervisorTrap+0x278>
                    frame->a0 = (uint64)-1;
    80001d98:	fff00793          	li	a5,-1
    80001d9c:	04f4b023          	sd	a5,64(s1)
                    break;
    80001da0:	e39ff06f          	j	80001bd8 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)sem->signalN(n);
    80001da4:	00090513          	mv	a0,s2
    80001da8:	00000097          	auipc	ra,0x0
    80001dac:	c48080e7          	jalr	-952(ra) # 800019f0 <_ZN4_sem7signalNEj>
    80001db0:	04a4b023          	sd	a0,64(s1)
                break;
    80001db4:	e25ff06f          	j	80001bd8 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)-1;
    80001db8:	fff00793          	li	a5,-1
    80001dbc:	04f4b023          	sd	a5,64(s1)
                break;
    80001dc0:	e19ff06f          	j	80001bd8 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)__getc();
    80001dc4:	00007097          	auipc	ra,0x7
    80001dc8:	e14080e7          	jalr	-492(ra) # 80008bd8 <__getc>
    80001dcc:	04a4b023          	sd	a0,64(s1)
                break;
    80001dd0:	e09ff06f          	j	80001bd8 <handleSupervisorTrap+0xac>
                __putc((char)arg1);
    80001dd4:	0ff97513          	andi	a0,s2,255
    80001dd8:	00007097          	auipc	ra,0x7
    80001ddc:	dc4080e7          	jalr	-572(ra) # 80008b9c <__putc>
                frame->a0 = 0;
    80001de0:	0404b023          	sd	zero,64(s1)
                break;
    80001de4:	df5ff06f          	j	80001bd8 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)-1;
    80001de8:	fff00793          	li	a5,-1
    80001dec:	04f4b023          	sd	a5,64(s1)
                break;
    80001df0:	de9ff06f          	j	80001bd8 <handleSupervisorTrap+0xac>

    static void mc_sstatus(uint64 mask) {
        asm volatile("csrc sstatus, %0" : : "r"(mask));//vrati prekide
    }
    static void mc_sip(uint64 mask) {
        asm volatile("csrc sip, %0" : : "r"(mask));
    80001df4:	00200793          	li	a5,2
    80001df8:	1447b073          	csrc	sip,a5
        return;
    80001dfc:	de9ff06f          	j	80001be4 <handleSupervisorTrap+0xb8>
        console_handler();
    80001e00:	00007097          	auipc	ra,0x7
    80001e04:	e10080e7          	jalr	-496(ra) # 80008c10 <console_handler>
        return;
    80001e08:	dddff06f          	j	80001be4 <handleSupervisorTrap+0xb8>
        printString("ERROR, scause: ");
    80001e0c:	00007517          	auipc	a0,0x7
    80001e10:	21450513          	addi	a0,a0,532 # 80009020 <CONSOLE_STATUS+0x10>
    80001e14:	00003097          	auipc	ra,0x3
    80001e18:	7f8080e7          	jalr	2040(ra) # 8000560c <_Z11printStringPKc>
        printInt(scause);
    80001e1c:	00000613          	li	a2,0
    80001e20:	00a00593          	li	a1,10
    80001e24:	0009051b          	sext.w	a0,s2
    80001e28:	00004097          	auipc	ra,0x4
    80001e2c:	994080e7          	jalr	-1644(ra) # 800057bc <_Z8printIntiii>
        printString(",sepc ");
    80001e30:	00007517          	auipc	a0,0x7
    80001e34:	20050513          	addi	a0,a0,512 # 80009030 <CONSOLE_STATUS+0x20>
    80001e38:	00003097          	auipc	ra,0x3
    80001e3c:	7d4080e7          	jalr	2004(ra) # 8000560c <_Z11printStringPKc>
        printInt(frame->sepc);
    80001e40:	00000613          	li	a2,0
    80001e44:	00a00593          	li	a1,10
    80001e48:	0f04a503          	lw	a0,240(s1)
    80001e4c:	00004097          	auipc	ra,0x4
    80001e50:	970080e7          	jalr	-1680(ra) # 800057bc <_Z8printIntiii>
        printString("\n");
    80001e54:	00007517          	auipc	a0,0x7
    80001e58:	46450513          	addi	a0,a0,1124 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80001e5c:	00003097          	auipc	ra,0x3
    80001e60:	7b0080e7          	jalr	1968(ra) # 8000560c <_Z11printStringPKc>
        frame->sepc += 4;
    80001e64:	0f04b783          	ld	a5,240(s1)
    80001e68:	00478793          	addi	a5,a5,4
    80001e6c:	0ef4b823          	sd	a5,240(s1)
        asm volatile("csrw sepc, %0" : : "r"(x));//upis u sepc
    80001e70:	14179073          	csrw	sepc,a5
        return;
    80001e74:	d71ff06f          	j	80001be4 <handleSupervisorTrap+0xb8>

0000000080001e78 <_ZL14blocksForBytesm>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"

_thread* _thread::running = nullptr;
int _thread::nextId = 0;
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
    }
    static void popSppSpie() {
        uint64 target;

        asm volatile("la %0, 1f" : "=r"(target));//skoci na adresu odmah posle sret-a, labela 1
    80001ea8:	0000a797          	auipc	a5,0xa
    80001eac:	df07b783          	ld	a5,-528(a5) # 8000bc98 <_GLOBAL_OFFSET_TABLE_+0x8>

        asm volatile("csrw sepc, %0" : : "r"(target));
    80001eb0:	14179073          	csrw	sepc,a5
        asm volatile("csrc sstatus, %0" : : "r"(SSTATUS_SPP));//vrati se u user mode
    80001eb4:	10000793          	li	a5,256
    80001eb8:	1007b073          	csrc	sstatus,a5
        asm volatile("csrs sstatus, %0" : : "r"(SSTATUS_SPIE));//enable prekide posle sret-a
    80001ebc:	02000793          	li	a5,32
    80001ec0:	1007a073          	csrs	sstatus,a5

        asm volatile(
            "sret\n"//sret menja rezim
            "1:\n"//procesor posle sret skoci ovde, da bi se vratio u threadWrapper
        );
    80001ec4:	10200073          	sret
    Riscv::popSppSpie();

    if (running != nullptr && running->body != nullptr) {
    80001ec8:	0000a797          	auipc	a5,0xa
    80001ecc:	e487b783          	ld	a5,-440(a5) # 8000bd10 <_ZN7_thread7runningE>
    80001ed0:	00078a63          	beqz	a5,80001ee4 <_ZN7_thread13threadWrapperEv+0x4c>
    80001ed4:	0007b703          	ld	a4,0(a5)
    80001ed8:	00070663          	beqz	a4,80001ee4 <_ZN7_thread13threadWrapperEv+0x4c>
        running->body(running->arg);
    80001edc:	0087b503          	ld	a0,8(a5)
    80001ee0:	000700e7          	jalr	a4
    }

    thread_exit();
    80001ee4:	fffff097          	auipc	ra,0xfffff
    80001ee8:	464080e7          	jalr	1124(ra) # 80001348 <_Z11thread_exitv>
    80001eec:	00813083          	ld	ra,8(sp)
    80001ef0:	00013403          	ld	s0,0(sp)
    80001ef4:	01010113          	addi	sp,sp,16
    80001ef8:	00008067          	ret

0000000080001efc <_ZN7_threadnwEm>:
void* _thread::operator new(size_t size) {
    80001efc:	fe010113          	addi	sp,sp,-32
    80001f00:	00113c23          	sd	ra,24(sp)
    80001f04:	00813823          	sd	s0,16(sp)
    80001f08:	00913423          	sd	s1,8(sp)
    80001f0c:	01213023          	sd	s2,0(sp)
    80001f10:	02010413          	addi	s0,sp,32
    80001f14:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001f18:	00001097          	auipc	ra,0x1
    80001f1c:	ca8080e7          	jalr	-856(ra) # 80002bc0 <_ZN15MemoryAllocator11getInstanceEv>
    80001f20:	00050493          	mv	s1,a0
    80001f24:	00090513          	mv	a0,s2
    80001f28:	00000097          	auipc	ra,0x0
    80001f2c:	f50080e7          	jalr	-176(ra) # 80001e78 <_ZL14blocksForBytesm>
    80001f30:	00050593          	mv	a1,a0
    80001f34:	00048513          	mv	a0,s1
    80001f38:	00001097          	auipc	ra,0x1
    80001f3c:	d08080e7          	jalr	-760(ra) # 80002c40 <_ZN15MemoryAllocator6mallocEm>
}
    80001f40:	01813083          	ld	ra,24(sp)
    80001f44:	01013403          	ld	s0,16(sp)
    80001f48:	00813483          	ld	s1,8(sp)
    80001f4c:	00013903          	ld	s2,0(sp)
    80001f50:	02010113          	addi	sp,sp,32
    80001f54:	00008067          	ret

0000000080001f58 <_ZN7_threadnaEm>:
void* _thread::operator new[](size_t size) {
    80001f58:	fe010113          	addi	sp,sp,-32
    80001f5c:	00113c23          	sd	ra,24(sp)
    80001f60:	00813823          	sd	s0,16(sp)
    80001f64:	00913423          	sd	s1,8(sp)
    80001f68:	01213023          	sd	s2,0(sp)
    80001f6c:	02010413          	addi	s0,sp,32
    80001f70:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001f74:	00001097          	auipc	ra,0x1
    80001f78:	c4c080e7          	jalr	-948(ra) # 80002bc0 <_ZN15MemoryAllocator11getInstanceEv>
    80001f7c:	00050493          	mv	s1,a0
    80001f80:	00090513          	mv	a0,s2
    80001f84:	00000097          	auipc	ra,0x0
    80001f88:	ef4080e7          	jalr	-268(ra) # 80001e78 <_ZL14blocksForBytesm>
    80001f8c:	00050593          	mv	a1,a0
    80001f90:	00048513          	mv	a0,s1
    80001f94:	00001097          	auipc	ra,0x1
    80001f98:	cac080e7          	jalr	-852(ra) # 80002c40 <_ZN15MemoryAllocator6mallocEm>
}
    80001f9c:	01813083          	ld	ra,24(sp)
    80001fa0:	01013403          	ld	s0,16(sp)
    80001fa4:	00813483          	ld	s1,8(sp)
    80001fa8:	00013903          	ld	s2,0(sp)
    80001fac:	02010113          	addi	sp,sp,32
    80001fb0:	00008067          	ret

0000000080001fb4 <_ZN7_threaddlEPv>:
    if (ptr == nullptr) {
    80001fb4:	04050263          	beqz	a0,80001ff8 <_ZN7_threaddlEPv+0x44>
void _thread::operator delete(void* ptr) {
    80001fb8:	fe010113          	addi	sp,sp,-32
    80001fbc:	00113c23          	sd	ra,24(sp)
    80001fc0:	00813823          	sd	s0,16(sp)
    80001fc4:	00913423          	sd	s1,8(sp)
    80001fc8:	02010413          	addi	s0,sp,32
    80001fcc:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance().free(ptr);
    80001fd0:	00001097          	auipc	ra,0x1
    80001fd4:	bf0080e7          	jalr	-1040(ra) # 80002bc0 <_ZN15MemoryAllocator11getInstanceEv>
    80001fd8:	00048593          	mv	a1,s1
    80001fdc:	00001097          	auipc	ra,0x1
    80001fe0:	dc0080e7          	jalr	-576(ra) # 80002d9c <_ZN15MemoryAllocator4freeEPv>
}
    80001fe4:	01813083          	ld	ra,24(sp)
    80001fe8:	01013403          	ld	s0,16(sp)
    80001fec:	00813483          	ld	s1,8(sp)
    80001ff0:	02010113          	addi	sp,sp,32
    80001ff4:	00008067          	ret
    80001ff8:	00008067          	ret

0000000080001ffc <_ZN7_threaddaEPv>:
    if (ptr == nullptr) {
    80001ffc:	04050263          	beqz	a0,80002040 <_ZN7_threaddaEPv+0x44>
void _thread::operator delete[](void* ptr) {
    80002000:	fe010113          	addi	sp,sp,-32
    80002004:	00113c23          	sd	ra,24(sp)
    80002008:	00813823          	sd	s0,16(sp)
    8000200c:	00913423          	sd	s1,8(sp)
    80002010:	02010413          	addi	s0,sp,32
    80002014:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance().free(ptr);
    80002018:	00001097          	auipc	ra,0x1
    8000201c:	ba8080e7          	jalr	-1112(ra) # 80002bc0 <_ZN15MemoryAllocator11getInstanceEv>
    80002020:	00048593          	mv	a1,s1
    80002024:	00001097          	auipc	ra,0x1
    80002028:	d78080e7          	jalr	-648(ra) # 80002d9c <_ZN15MemoryAllocator4freeEPv>
}
    8000202c:	01813083          	ld	ra,24(sp)
    80002030:	01013403          	ld	s0,16(sp)
    80002034:	00813483          	ld	s1,8(sp)
    80002038:	02010113          	addi	sp,sp,32
    8000203c:	00008067          	ret
    80002040:	00008067          	ret

0000000080002044 <_ZN7_threadC1EPFvPvES0_S0_>:
_thread::_thread(Body body, void* arg, void* stackSpace) {
    80002044:	ff010113          	addi	sp,sp,-16
    80002048:	00813423          	sd	s0,8(sp)
    8000204c:	01010413          	addi	s0,sp,16
    this->body = body;
    80002050:	00b53023          	sd	a1,0(a0)
    this->arg = arg;
    80002054:	00c53423          	sd	a2,8(a0)
    if (stackSpace != nullptr) {
    80002058:	08068263          	beqz	a3,800020dc <_ZN7_threadC1EPFvPvES0_S0_+0x98>
        this->stack = (void*)((uint64)stackSpace - DEFAULT_STACK_SIZE);
    8000205c:	fffff7b7          	lui	a5,0xfffff
    80002060:	00f687b3          	add	a5,a3,a5
    80002064:	00f53823          	sd	a5,16(a0)
        this->context.sp = (uint64)stackSpace;
    80002068:	02d53023          	sd	a3,32(a0)
    this->context.s0 = 0;
    8000206c:	02053423          	sd	zero,40(a0)
    this->context.s1 = 0;
    80002070:	02053823          	sd	zero,48(a0)
    this->context.s2 = 0;
    80002074:	02053c23          	sd	zero,56(a0)
    this->context.s3 = 0;
    80002078:	04053023          	sd	zero,64(a0)
    this->context.s4 = 0;
    8000207c:	04053423          	sd	zero,72(a0)
    this->context.s5 = 0;
    80002080:	04053823          	sd	zero,80(a0)
    this->context.s6 = 0;
    80002084:	04053c23          	sd	zero,88(a0)
    this->context.s7 = 0;
    80002088:	06053023          	sd	zero,96(a0)
    this->context.s8 = 0;
    8000208c:	06053423          	sd	zero,104(a0)
    this->context.s9 = 0;
    80002090:	06053823          	sd	zero,112(a0)
    this->context.s10 = 0;
    80002094:	06053c23          	sd	zero,120(a0)
    this->context.s11 = 0;
    80002098:	08053023          	sd	zero,128(a0)
    this->context.ra = (uint64)&_thread::threadWrapper;//nit nigde nije radila pa upisujemo povratnu adresu
    8000209c:	00000797          	auipc	a5,0x0
    800020a0:	dfc78793          	addi	a5,a5,-516 # 80001e98 <_ZN7_thread13threadWrapperEv>
    800020a4:	00f53c23          	sd	a5,24(a0)
    this->timeSlice = DEFAULT_TIME_SLICE;
    800020a8:	00200793          	li	a5,2
    800020ac:	08f53423          	sd	a5,136(a0)
    this->state = CREATED;//nakon ovoga u trap.cpp radimo ready
    800020b0:	08052823          	sw	zero,144(a0)
    this->next = nullptr;
    800020b4:	08053c23          	sd	zero,152(a0)
    this->id = nextId++;
    800020b8:	0000a717          	auipc	a4,0xa
    800020bc:	c5870713          	addi	a4,a4,-936 # 8000bd10 <_ZN7_thread7runningE>
    800020c0:	00872783          	lw	a5,8(a4)
    800020c4:	0017869b          	addiw	a3,a5,1
    800020c8:	00d72423          	sw	a3,8(a4)
    800020cc:	0af52023          	sw	a5,160(a0)
}
    800020d0:	00813403          	ld	s0,8(sp)
    800020d4:	01010113          	addi	sp,sp,16
    800020d8:	00008067          	ret
        this->stack = nullptr;
    800020dc:	00053823          	sd	zero,16(a0)
        this->context.sp = 0;
    800020e0:	02053023          	sd	zero,32(a0)
    800020e4:	f89ff06f          	j	8000206c <_ZN7_threadC1EPFvPvES0_S0_+0x28>

00000000800020e8 <_ZN7_thread12createThreadEPFvPvES0_S0_>:
_thread* _thread::createThread(Body body, void* arg, void* stackSpace) {
    800020e8:	fd010113          	addi	sp,sp,-48
    800020ec:	02113423          	sd	ra,40(sp)
    800020f0:	02813023          	sd	s0,32(sp)
    800020f4:	00913c23          	sd	s1,24(sp)
    800020f8:	01213823          	sd	s2,16(sp)
    800020fc:	01313423          	sd	s3,8(sp)
    80002100:	01413023          	sd	s4,0(sp)
    80002104:	03010413          	addi	s0,sp,48
    80002108:	00050913          	mv	s2,a0
    8000210c:	00058993          	mv	s3,a1
    80002110:	00060a13          	mv	s4,a2
    return new _thread(body, arg, stackSpace);
    80002114:	0a800513          	li	a0,168
    80002118:	00000097          	auipc	ra,0x0
    8000211c:	de4080e7          	jalr	-540(ra) # 80001efc <_ZN7_threadnwEm>
    80002120:	00050493          	mv	s1,a0
    80002124:	000a0693          	mv	a3,s4
    80002128:	00098613          	mv	a2,s3
    8000212c:	00090593          	mv	a1,s2
    80002130:	00000097          	auipc	ra,0x0
    80002134:	f14080e7          	jalr	-236(ra) # 80002044 <_ZN7_threadC1EPFvPvES0_S0_>
}
    80002138:	00048513          	mv	a0,s1
    8000213c:	02813083          	ld	ra,40(sp)
    80002140:	02013403          	ld	s0,32(sp)
    80002144:	01813483          	ld	s1,24(sp)
    80002148:	01013903          	ld	s2,16(sp)
    8000214c:	00813983          	ld	s3,8(sp)
    80002150:	00013a03          	ld	s4,0(sp)
    80002154:	03010113          	addi	sp,sp,48
    80002158:	00008067          	ret

000000008000215c <_ZN7_thread13destroyThreadEPS_>:
    if (thread == nullptr) {
    8000215c:	04050e63          	beqz	a0,800021b8 <_ZN7_thread13destroyThreadEPS_+0x5c>
int _thread::destroyThread(_thread* thread) {
    80002160:	fe010113          	addi	sp,sp,-32
    80002164:	00113c23          	sd	ra,24(sp)
    80002168:	00813823          	sd	s0,16(sp)
    8000216c:	00913423          	sd	s1,8(sp)
    80002170:	02010413          	addi	s0,sp,32
    80002174:	00050493          	mv	s1,a0
    if (thread->stack != nullptr) {
    80002178:	01053783          	ld	a5,16(a0)
    8000217c:	00078c63          	beqz	a5,80002194 <_ZN7_thread13destroyThreadEPS_+0x38>
        MemoryAllocator::getInstance().free(thread->stack);
    80002180:	00001097          	auipc	ra,0x1
    80002184:	a40080e7          	jalr	-1472(ra) # 80002bc0 <_ZN15MemoryAllocator11getInstanceEv>
    80002188:	0104b583          	ld	a1,16(s1)
    8000218c:	00001097          	auipc	ra,0x1
    80002190:	c10080e7          	jalr	-1008(ra) # 80002d9c <_ZN15MemoryAllocator4freeEPv>
    delete thread;
    80002194:	00048513          	mv	a0,s1
    80002198:	00000097          	auipc	ra,0x0
    8000219c:	e1c080e7          	jalr	-484(ra) # 80001fb4 <_ZN7_threaddlEPv>
    return 0;
    800021a0:	00000513          	li	a0,0
}
    800021a4:	01813083          	ld	ra,24(sp)
    800021a8:	01013403          	ld	s0,16(sp)
    800021ac:	00813483          	ld	s1,8(sp)
    800021b0:	02010113          	addi	sp,sp,32
    800021b4:	00008067          	ret
        return -1;
    800021b8:	fff00513          	li	a0,-1
}
    800021bc:	00008067          	ret

00000000800021c0 <_ZN7_thread8dispatchEv>:
void _thread::dispatch() {
    800021c0:	fe010113          	addi	sp,sp,-32
    800021c4:	00113c23          	sd	ra,24(sp)
    800021c8:	00813823          	sd	s0,16(sp)
    800021cc:	00913423          	sd	s1,8(sp)
    800021d0:	02010413          	addi	s0,sp,32
    _thread* old = running;
    800021d4:	0000a497          	auipc	s1,0xa
    800021d8:	b3c4b483          	ld	s1,-1220(s1) # 8000bd10 <_ZN7_thread7runningE>
    if (old != nullptr && old->state != FINISHED && old->state != BLOCKED) {
    800021dc:	00048c63          	beqz	s1,800021f4 <_ZN7_thread8dispatchEv+0x34>
    800021e0:	0904a783          	lw	a5,144(s1)
    800021e4:	00400713          	li	a4,4
    800021e8:	00e78663          	beq	a5,a4,800021f4 <_ZN7_thread8dispatchEv+0x34>
    800021ec:	00300713          	li	a4,3
    800021f0:	04e79663          	bne	a5,a4,8000223c <_ZN7_thread8dispatchEv+0x7c>
    _thread* next = Scheduler::get();
    800021f4:	00000097          	auipc	ra,0x0
    800021f8:	37c080e7          	jalr	892(ra) # 80002570 <_ZN9Scheduler3getEv>
    if (next == nullptr) {
    800021fc:	04050863          	beqz	a0,8000224c <_ZN7_thread8dispatchEv+0x8c>
    running = next;
    80002200:	0000a797          	auipc	a5,0xa
    80002204:	b0a7b823          	sd	a0,-1264(a5) # 8000bd10 <_ZN7_thread7runningE>
    running->state = RUNNING;
    80002208:	00200793          	li	a5,2
    8000220c:	08f52823          	sw	a5,144(a0)
    if (old != nullptr && old != running) {//ako je scheduler vratio istu nit ne treba contextswitch
    80002210:	00048c63          	beqz	s1,80002228 <_ZN7_thread8dispatchEv+0x68>
    80002214:	00a48a63          	beq	s1,a0,80002228 <_ZN7_thread8dispatchEv+0x68>
        contextSwitch(&old->context, &running->context);
    80002218:	01850593          	addi	a1,a0,24
    8000221c:	01848513          	addi	a0,s1,24
    80002220:	fffff097          	auipc	ra,0xfffff
    80002224:	f10080e7          	jalr	-240(ra) # 80001130 <contextSwitch>
}
    80002228:	01813083          	ld	ra,24(sp)
    8000222c:	01013403          	ld	s0,16(sp)
    80002230:	00813483          	ld	s1,8(sp)
    80002234:	02010113          	addi	sp,sp,32
    80002238:	00008067          	ret
        Scheduler::put(old);
    8000223c:	00048513          	mv	a0,s1
    80002240:	00000097          	auipc	ra,0x0
    80002244:	2c4080e7          	jalr	708(ra) # 80002504 <_ZN9Scheduler3putEP7_thread>
    80002248:	fadff06f          	j	800021f4 <_ZN7_thread8dispatchEv+0x34>
        if (old != nullptr && old->state == RUNNING) {
    8000224c:	fc048ee3          	beqz	s1,80002228 <_ZN7_thread8dispatchEv+0x68>
    80002250:	0904a703          	lw	a4,144(s1)
    80002254:	00200793          	li	a5,2
    80002258:	fcf718e3          	bne	a4,a5,80002228 <_ZN7_thread8dispatchEv+0x68>
            running = old;
    8000225c:	0000a797          	auipc	a5,0xa
    80002260:	aa97ba23          	sd	s1,-1356(a5) # 8000bd10 <_ZN7_thread7runningE>
        return;
    80002264:	fc5ff06f          	j	80002228 <_ZN7_thread8dispatchEv+0x68>

0000000080002268 <_ZN7_thread4exitEv>:
    if (running == nullptr) {
    80002268:	0000a797          	auipc	a5,0xa
    8000226c:	aa87b783          	ld	a5,-1368(a5) # 8000bd10 <_ZN7_thread7runningE>
    80002270:	02078c63          	beqz	a5,800022a8 <_ZN7_thread4exitEv+0x40>
int _thread::exit() {
    80002274:	ff010113          	addi	sp,sp,-16
    80002278:	00113423          	sd	ra,8(sp)
    8000227c:	00813023          	sd	s0,0(sp)
    80002280:	01010413          	addi	s0,sp,16
    running->state = FINISHED;
    80002284:	00400713          	li	a4,4
    80002288:	08e7a823          	sw	a4,144(a5)
    dispatch();
    8000228c:	00000097          	auipc	ra,0x0
    80002290:	f34080e7          	jalr	-204(ra) # 800021c0 <_ZN7_thread8dispatchEv>
    return 0;
    80002294:	00000513          	li	a0,0
}
    80002298:	00813083          	ld	ra,8(sp)
    8000229c:	00013403          	ld	s0,0(sp)
    800022a0:	01010113          	addi	sp,sp,16
    800022a4:	00008067          	ret
        return -1;
    800022a8:	fff00513          	li	a0,-1
}
    800022ac:	00008067          	ret

00000000800022b0 <_ZNK7_thread7getBodyEv>:
_thread::Body _thread::getBody() const {
    800022b0:	ff010113          	addi	sp,sp,-16
    800022b4:	00813423          	sd	s0,8(sp)
    800022b8:	01010413          	addi	s0,sp,16
}
    800022bc:	00053503          	ld	a0,0(a0)
    800022c0:	00813403          	ld	s0,8(sp)
    800022c4:	01010113          	addi	sp,sp,16
    800022c8:	00008067          	ret

00000000800022cc <_ZN7_thread5getIdEv>:
int _thread::getId() {
    800022cc:	ff010113          	addi	sp,sp,-16
    800022d0:	00813423          	sd	s0,8(sp)
    800022d4:	01010413          	addi	s0,sp,16
}
    800022d8:	0a052503          	lw	a0,160(a0)
    800022dc:	00813403          	ld	s0,8(sp)
    800022e0:	01010113          	addi	sp,sp,16
    800022e4:	00008067          	ret

00000000800022e8 <_ZNK7_thread6getArgEv>:
void* _thread::getArg() const {
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00813423          	sd	s0,8(sp)
    800022f0:	01010413          	addi	s0,sp,16
}
    800022f4:	00853503          	ld	a0,8(a0)
    800022f8:	00813403          	ld	s0,8(sp)
    800022fc:	01010113          	addi	sp,sp,16
    80002300:	00008067          	ret

0000000080002304 <_ZNK7_thread8getStackEv>:
void* _thread::getStack() const {
    80002304:	ff010113          	addi	sp,sp,-16
    80002308:	00813423          	sd	s0,8(sp)
    8000230c:	01010413          	addi	s0,sp,16
}
    80002310:	01053503          	ld	a0,16(a0)
    80002314:	00813403          	ld	s0,8(sp)
    80002318:	01010113          	addi	sp,sp,16
    8000231c:	00008067          	ret

0000000080002320 <_ZN7_thread10getContextEv>:
_thread::Context* _thread::getContext() {
    80002320:	ff010113          	addi	sp,sp,-16
    80002324:	00813423          	sd	s0,8(sp)
    80002328:	01010413          	addi	s0,sp,16
}
    8000232c:	01850513          	addi	a0,a0,24
    80002330:	00813403          	ld	s0,8(sp)
    80002334:	01010113          	addi	sp,sp,16
    80002338:	00008067          	ret

000000008000233c <_ZNK7_thread8getStateEv>:
_thread::State _thread::getState() const {
    8000233c:	ff010113          	addi	sp,sp,-16
    80002340:	00813423          	sd	s0,8(sp)
    80002344:	01010413          	addi	s0,sp,16
}
    80002348:	09052503          	lw	a0,144(a0)
    8000234c:	00813403          	ld	s0,8(sp)
    80002350:	01010113          	addi	sp,sp,16
    80002354:	00008067          	ret

0000000080002358 <_ZN7_thread8setStateENS_5StateE>:
void _thread::setState(State state) {
    80002358:	ff010113          	addi	sp,sp,-16
    8000235c:	00813423          	sd	s0,8(sp)
    80002360:	01010413          	addi	s0,sp,16
    this->state = state;
    80002364:	08b52823          	sw	a1,144(a0)
}
    80002368:	00813403          	ld	s0,8(sp)
    8000236c:	01010113          	addi	sp,sp,16
    80002370:	00008067          	ret

0000000080002374 <_ZNK7_thread12getTimeSliceEv>:
uint64 _thread::getTimeSlice() const {
    80002374:	ff010113          	addi	sp,sp,-16
    80002378:	00813423          	sd	s0,8(sp)
    8000237c:	01010413          	addi	s0,sp,16
}
    80002380:	08853503          	ld	a0,136(a0)
    80002384:	00813403          	ld	s0,8(sp)
    80002388:	01010113          	addi	sp,sp,16
    8000238c:	00008067          	ret

0000000080002390 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80002390:	fe010113          	addi	sp,sp,-32
    80002394:	00113c23          	sd	ra,24(sp)
    80002398:	00813823          	sd	s0,16(sp)
    8000239c:	00913423          	sd	s1,8(sp)
    800023a0:	01213023          	sd	s2,0(sp)
    800023a4:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800023a8:	00007517          	auipc	a0,0x7
    800023ac:	da050513          	addi	a0,a0,-608 # 80009148 <CONSOLE_STATUS+0x138>
    800023b0:	00003097          	auipc	ra,0x3
    800023b4:	25c080e7          	jalr	604(ra) # 8000560c <_Z11printStringPKc>
    int test = getc() - '0';
    800023b8:	fffff097          	auipc	ra,0xfffff
    800023bc:	1d8080e7          	jalr	472(ra) # 80001590 <_Z4getcv>
    800023c0:	00050913          	mv	s2,a0
    800023c4:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800023c8:	fffff097          	auipc	ra,0xfffff
    800023cc:	1c8080e7          	jalr	456(ra) # 80001590 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800023d0:	fcb9091b          	addiw	s2,s2,-53
    800023d4:	00100793          	li	a5,1
    800023d8:	0327f463          	bgeu	a5,s2,80002400 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800023dc:	00800793          	li	a5,8
    800023e0:	1097e863          	bltu	a5,s1,800024f0 <_Z8userMainv+0x160>
    800023e4:	00249493          	slli	s1,s1,0x2
    800023e8:	00007717          	auipc	a4,0x7
    800023ec:	f7870713          	addi	a4,a4,-136 # 80009360 <CONSOLE_STATUS+0x350>
    800023f0:	00e484b3          	add	s1,s1,a4
    800023f4:	0004a783          	lw	a5,0(s1)
    800023f8:	00e787b3          	add	a5,a5,a4
    800023fc:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80002400:	00007517          	auipc	a0,0x7
    80002404:	d6850513          	addi	a0,a0,-664 # 80009168 <CONSOLE_STATUS+0x158>
    80002408:	00003097          	auipc	ra,0x3
    8000240c:	204080e7          	jalr	516(ra) # 8000560c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80002410:	01813083          	ld	ra,24(sp)
    80002414:	01013403          	ld	s0,16(sp)
    80002418:	00813483          	ld	s1,8(sp)
    8000241c:	00013903          	ld	s2,0(sp)
    80002420:	02010113          	addi	sp,sp,32
    80002424:	00008067          	ret
            Threads_C_API_test();
    80002428:	00003097          	auipc	ra,0x3
    8000242c:	85c080e7          	jalr	-1956(ra) # 80004c84 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80002430:	00007517          	auipc	a0,0x7
    80002434:	d6850513          	addi	a0,a0,-664 # 80009198 <CONSOLE_STATUS+0x188>
    80002438:	00003097          	auipc	ra,0x3
    8000243c:	1d4080e7          	jalr	468(ra) # 8000560c <_Z11printStringPKc>
            break;
    80002440:	fd1ff06f          	j	80002410 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80002444:	00001097          	auipc	ra,0x1
    80002448:	720080e7          	jalr	1824(ra) # 80003b64 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    8000244c:	00007517          	auipc	a0,0x7
    80002450:	d8c50513          	addi	a0,a0,-628 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80002454:	00003097          	auipc	ra,0x3
    80002458:	1b8080e7          	jalr	440(ra) # 8000560c <_Z11printStringPKc>
            break;
    8000245c:	fb5ff06f          	j	80002410 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80002460:	00001097          	auipc	ra,0x1
    80002464:	f58080e7          	jalr	-168(ra) # 800033b8 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80002468:	00007517          	auipc	a0,0x7
    8000246c:	db050513          	addi	a0,a0,-592 # 80009218 <CONSOLE_STATUS+0x208>
    80002470:	00003097          	auipc	ra,0x3
    80002474:	19c080e7          	jalr	412(ra) # 8000560c <_Z11printStringPKc>
            break;
    80002478:	f99ff06f          	j	80002410 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    8000247c:	00003097          	auipc	ra,0x3
    80002480:	b4c080e7          	jalr	-1204(ra) # 80004fc8 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80002484:	00007517          	auipc	a0,0x7
    80002488:	de450513          	addi	a0,a0,-540 # 80009268 <CONSOLE_STATUS+0x258>
    8000248c:	00003097          	auipc	ra,0x3
    80002490:	180080e7          	jalr	384(ra) # 8000560c <_Z11printStringPKc>
            break;
    80002494:	f7dff06f          	j	80002410 <_Z8userMainv+0x80>
            System_Mode_test();
    80002498:	00004097          	auipc	ra,0x4
    8000249c:	220080e7          	jalr	544(ra) # 800066b8 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800024a0:	00007517          	auipc	a0,0x7
    800024a4:	e2050513          	addi	a0,a0,-480 # 800092c0 <CONSOLE_STATUS+0x2b0>
    800024a8:	00003097          	auipc	ra,0x3
    800024ac:	164080e7          	jalr	356(ra) # 8000560c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800024b0:	00007517          	auipc	a0,0x7
    800024b4:	e3050513          	addi	a0,a0,-464 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800024b8:	00003097          	auipc	ra,0x3
    800024bc:	154080e7          	jalr	340(ra) # 8000560c <_Z11printStringPKc>
            break;
    800024c0:	f51ff06f          	j	80002410 <_Z8userMainv+0x80>
            modCplus();
    800024c4:	00004097          	auipc	ra,0x4
    800024c8:	810080e7          	jalr	-2032(ra) # 80005cd4 <_Z8modCplusv>
            printString("Test se nije uspesno zavrsio\n");
    800024cc:	00007517          	auipc	a0,0x7
    800024d0:	df450513          	addi	a0,a0,-524 # 800092c0 <CONSOLE_STATUS+0x2b0>
    800024d4:	00003097          	auipc	ra,0x3
    800024d8:	138080e7          	jalr	312(ra) # 8000560c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800024dc:	00007517          	auipc	a0,0x7
    800024e0:	e0450513          	addi	a0,a0,-508 # 800092e0 <CONSOLE_STATUS+0x2d0>
    800024e4:	00003097          	auipc	ra,0x3
    800024e8:	128080e7          	jalr	296(ra) # 8000560c <_Z11printStringPKc>
            break;
    800024ec:	f25ff06f          	j	80002410 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800024f0:	00007517          	auipc	a0,0x7
    800024f4:	e4850513          	addi	a0,a0,-440 # 80009338 <CONSOLE_STATUS+0x328>
    800024f8:	00003097          	auipc	ra,0x3
    800024fc:	114080e7          	jalr	276(ra) # 8000560c <_Z11printStringPKc>
    80002500:	f11ff06f          	j	80002410 <_Z8userMainv+0x80>

0000000080002504 <_ZN9Scheduler3putEP7_thread>:
#include "../h/Thread.hpp"

_thread* Scheduler::head = nullptr;
_thread* Scheduler::tail = nullptr;

void Scheduler::put(_thread* thread) {
    80002504:	ff010113          	addi	sp,sp,-16
    80002508:	00813423          	sd	s0,8(sp)
    8000250c:	01010413          	addi	s0,sp,16
    if (thread == nullptr) {
    80002510:	04050063          	beqz	a0,80002550 <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    if (thread->state == _thread::FINISHED || thread->state == _thread::BLOCKED) {
    80002514:	09052783          	lw	a5,144(a0)
    80002518:	ffd7879b          	addiw	a5,a5,-3
    8000251c:	00100713          	li	a4,1
    80002520:	02f77863          	bgeu	a4,a5,80002550 <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    thread->state = _thread::READY;
    80002524:	00100793          	li	a5,1
    80002528:	08f52823          	sw	a5,144(a0)
    thread->next = nullptr;
    8000252c:	08053c23          	sd	zero,152(a0)

    if (head == nullptr) {
    80002530:	00009797          	auipc	a5,0x9
    80002534:	7f07b783          	ld	a5,2032(a5) # 8000bd20 <_ZN9Scheduler4headE>
    80002538:	02078263          	beqz	a5,8000255c <_ZN9Scheduler3putEP7_thread+0x58>
        head = thread;
        tail = thread;
    } else {
        tail->next = thread;
    8000253c:	00009797          	auipc	a5,0x9
    80002540:	7e478793          	addi	a5,a5,2020 # 8000bd20 <_ZN9Scheduler4headE>
    80002544:	0087b703          	ld	a4,8(a5)
    80002548:	08a73c23          	sd	a0,152(a4)
        tail = thread;
    8000254c:	00a7b423          	sd	a0,8(a5)
    }
}
    80002550:	00813403          	ld	s0,8(sp)
    80002554:	01010113          	addi	sp,sp,16
    80002558:	00008067          	ret
        head = thread;
    8000255c:	00009797          	auipc	a5,0x9
    80002560:	7c478793          	addi	a5,a5,1988 # 8000bd20 <_ZN9Scheduler4headE>
    80002564:	00a7b023          	sd	a0,0(a5)
        tail = thread;
    80002568:	00a7b423          	sd	a0,8(a5)
    8000256c:	fe5ff06f          	j	80002550 <_ZN9Scheduler3putEP7_thread+0x4c>

0000000080002570 <_ZN9Scheduler3getEv>:

_thread* Scheduler::get() {
    80002570:	ff010113          	addi	sp,sp,-16
    80002574:	00813423          	sd	s0,8(sp)
    80002578:	01010413          	addi	s0,sp,16
    if (head == nullptr) {
    8000257c:	00009517          	auipc	a0,0x9
    80002580:	7a453503          	ld	a0,1956(a0) # 8000bd20 <_ZN9Scheduler4headE>
    80002584:	00050c63          	beqz	a0,8000259c <_ZN9Scheduler3getEv+0x2c>
        return nullptr;
    }

    _thread* thread = head;

    head = head->next;
    80002588:	09853783          	ld	a5,152(a0)
    8000258c:	00009717          	auipc	a4,0x9
    80002590:	78f73a23          	sd	a5,1940(a4) # 8000bd20 <_ZN9Scheduler4headE>

    if (head == nullptr) {
    80002594:	00078a63          	beqz	a5,800025a8 <_ZN9Scheduler3getEv+0x38>
        tail = nullptr;
    }

    thread->next = nullptr;
    80002598:	08053c23          	sd	zero,152(a0)

    return thread;
}
    8000259c:	00813403          	ld	s0,8(sp)
    800025a0:	01010113          	addi	sp,sp,16
    800025a4:	00008067          	ret
        tail = nullptr;
    800025a8:	00009797          	auipc	a5,0x9
    800025ac:	7807b023          	sd	zero,1920(a5) # 8000bd28 <_ZN9Scheduler4tailE>
    800025b0:	fe9ff06f          	j	80002598 <_ZN9Scheduler3getEv+0x28>

00000000800025b4 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    800025b4:	ff010113          	addi	sp,sp,-16
    800025b8:	00813423          	sd	s0,8(sp)
    800025bc:	01010413          	addi	s0,sp,16
    return head == nullptr;
    800025c0:	00009517          	auipc	a0,0x9
    800025c4:	76053503          	ld	a0,1888(a0) # 8000bd20 <_ZN9Scheduler4headE>
    800025c8:	00153513          	seqz	a0,a0
    800025cc:	00813403          	ld	s0,8(sp)
    800025d0:	01010113          	addi	sp,sp,16
    800025d4:	00008067          	ret

00000000800025d8 <_Znwm>:
#include "../h/new.hpp"
#include "../h/syscall_c.hpp"

void* operator new(size_t size) {
    800025d8:	ff010113          	addi	sp,sp,-16
    800025dc:	00113423          	sd	ra,8(sp)
    800025e0:	00813023          	sd	s0,0(sp)
    800025e4:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800025e8:	fffff097          	auipc	ra,0xfffff
    800025ec:	c10080e7          	jalr	-1008(ra) # 800011f8 <_Z9mem_allocm>
}
    800025f0:	00813083          	ld	ra,8(sp)
    800025f4:	00013403          	ld	s0,0(sp)
    800025f8:	01010113          	addi	sp,sp,16
    800025fc:	00008067          	ret

0000000080002600 <_Znam>:

void* operator new[](size_t size) {
    80002600:	ff010113          	addi	sp,sp,-16
    80002604:	00113423          	sd	ra,8(sp)
    80002608:	00813023          	sd	s0,0(sp)
    8000260c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002610:	fffff097          	auipc	ra,0xfffff
    80002614:	be8080e7          	jalr	-1048(ra) # 800011f8 <_Z9mem_allocm>
}
    80002618:	00813083          	ld	ra,8(sp)
    8000261c:	00013403          	ld	s0,0(sp)
    80002620:	01010113          	addi	sp,sp,16
    80002624:	00008067          	ret

0000000080002628 <_ZdlPv>:

void operator delete(void* ptr) {
    80002628:	ff010113          	addi	sp,sp,-16
    8000262c:	00113423          	sd	ra,8(sp)
    80002630:	00813023          	sd	s0,0(sp)
    80002634:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80002638:	fffff097          	auipc	ra,0xfffff
    8000263c:	c0c080e7          	jalr	-1012(ra) # 80001244 <_Z8mem_freePv>
}
    80002640:	00813083          	ld	ra,8(sp)
    80002644:	00013403          	ld	s0,0(sp)
    80002648:	01010113          	addi	sp,sp,16
    8000264c:	00008067          	ret

0000000080002650 <_ZdaPv>:

void operator delete[](void* ptr) {
    80002650:	ff010113          	addi	sp,sp,-16
    80002654:	00113423          	sd	ra,8(sp)
    80002658:	00813023          	sd	s0,0(sp)
    8000265c:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80002660:	fffff097          	auipc	ra,0xfffff
    80002664:	be4080e7          	jalr	-1052(ra) # 80001244 <_Z8mem_freePv>
    80002668:	00813083          	ld	ra,8(sp)
    8000266c:	00013403          	ld	s0,0(sp)
    80002670:	01010113          	addi	sp,sp,16
    80002674:	00008067          	ret

0000000080002678 <_ZL15userMainWrapperPv>:
extern "C" void supervisorTrap();
extern void userMain();

static volatile bool userMainFinished = false;

static void userMainWrapper(void*) {
    80002678:	ff010113          	addi	sp,sp,-16
    8000267c:	00113423          	sd	ra,8(sp)
    80002680:	00813023          	sd	s0,0(sp)
    80002684:	01010413          	addi	s0,sp,16
    userMain();
    80002688:	00000097          	auipc	ra,0x0
    8000268c:	d08080e7          	jalr	-760(ra) # 80002390 <_Z8userMainv>
    userMainFinished = true;
    80002690:	00100793          	li	a5,1
    80002694:	00009717          	auipc	a4,0x9
    80002698:	68f70e23          	sb	a5,1692(a4) # 8000bd30 <_ZL16userMainFinished>
    thread_exit();
    8000269c:	fffff097          	auipc	ra,0xfffff
    800026a0:	cac080e7          	jalr	-852(ra) # 80001348 <_Z11thread_exitv>
}
    800026a4:	00813083          	ld	ra,8(sp)
    800026a8:	00013403          	ld	s0,0(sp)
    800026ac:	01010113          	addi	sp,sp,16
    800026b0:	00008067          	ret

00000000800026b4 <main>:

int main() {
    800026b4:	f3010113          	addi	sp,sp,-208
    800026b8:	0c113423          	sd	ra,200(sp)
    800026bc:	0c813023          	sd	s0,192(sp)
    800026c0:	0a913c23          	sd	s1,184(sp)
    800026c4:	0d010413          	addi	s0,sp,208
    Riscv::w_stvec((uint64)&supervisorTrap);
    800026c8:	00009797          	auipc	a5,0x9
    800026cc:	5e87b783          	ld	a5,1512(a5) # 8000bcb0 <_GLOBAL_OFFSET_TABLE_+0x20>
        asm volatile("csrw stvec, %0" : : "r"(x));//adresa prekidne rutine, da bi skocilo na supervisorTrap
    800026d0:	10579073          	csrw	stvec,a5
        asm volatile("csrs sstatus, %0" : : "r"(mask));//omoguci prekide
    800026d4:	00200793          	li	a5,2
    800026d8:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    _thread mainThread(nullptr, nullptr, nullptr);//poziv konstruktora
    800026dc:	00000693          	li	a3,0
    800026e0:	00000613          	li	a2,0
    800026e4:	00000593          	li	a1,0
    800026e8:	f3840493          	addi	s1,s0,-200
    800026ec:	00048513          	mv	a0,s1
    800026f0:	00000097          	auipc	ra,0x0
    800026f4:	954080e7          	jalr	-1708(ra) # 80002044 <_ZN7_threadC1EPFvPvES0_S0_>
    mainThread.setState(_thread::RUNNING);
    800026f8:	00200593          	li	a1,2
    800026fc:	00048513          	mv	a0,s1
    80002700:	00000097          	auipc	ra,0x0
    80002704:	c58080e7          	jalr	-936(ra) # 80002358 <_ZN7_thread8setStateENS_5StateE>
    _thread::running = &mainThread;//pravimo main nit zbog dispatch-a, jer nemamo running na pocetku, i scheduler radi samo sa _thread
    80002708:	00009797          	auipc	a5,0x9
    8000270c:	5a07b783          	ld	a5,1440(a5) # 8000bca8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002710:	0097b023          	sd	s1,0(a5)

    thread_t userThread = nullptr;
    80002714:	f2043823          	sd	zero,-208(s0)
    int ret = thread_create(&userThread, userMainWrapper, nullptr);
    80002718:	00000613          	li	a2,0
    8000271c:	00000597          	auipc	a1,0x0
    80002720:	f5c58593          	addi	a1,a1,-164 # 80002678 <_ZL15userMainWrapperPv>
    80002724:	f3040513          	addi	a0,s0,-208
    80002728:	fffff097          	auipc	ra,0xfffff
    8000272c:	b5c080e7          	jalr	-1188(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>

    if (ret < 0 || userThread == nullptr) {
    80002730:	00054663          	bltz	a0,8000273c <main+0x88>
    80002734:	f3043783          	ld	a5,-208(s0)
    80002738:	02079063          	bnez	a5,80002758 <main+0xa4>
        volatile uint32* qemu = (uint32*)0x100000;
        *qemu = 0x5555;
    8000273c:	00100737          	lui	a4,0x100
    80002740:	000057b7          	lui	a5,0x5
    80002744:	5557879b          	addiw	a5,a5,1365
    80002748:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
        return ret;
    8000274c:	02c0006f          	j	80002778 <main+0xc4>
    }

    while (!userMainFinished) {
        thread_dispatch();
    80002750:	fffff097          	auipc	ra,0xfffff
    80002754:	c38080e7          	jalr	-968(ra) # 80001388 <_Z15thread_dispatchv>
    while (!userMainFinished) {
    80002758:	00009797          	auipc	a5,0x9
    8000275c:	5d87c783          	lbu	a5,1496(a5) # 8000bd30 <_ZL16userMainFinished>
    80002760:	fe0788e3          	beqz	a5,80002750 <main+0x9c>
    }

    volatile uint32* qemu = (uint32*)0x100000;
    *qemu = 0x5555;
    80002764:	00100737          	lui	a4,0x100
    80002768:	000057b7          	lui	a5,0x5
    8000276c:	5557879b          	addiw	a5,a5,1365
    80002770:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>

    return 0;
    80002774:	00000513          	li	a0,0
}
    80002778:	0c813083          	ld	ra,200(sp)
    8000277c:	0c013403          	ld	s0,192(sp)
    80002780:	0b813483          	ld	s1,184(sp)
    80002784:	0d010113          	addi	sp,sp,208
    80002788:	00008067          	ret

000000008000278c <_ZN6ThreadD1Ev>:
    this->myHandle = nullptr;
    this->body = nullptr;
    this->arg = nullptr;
}

Thread::~Thread() {
    8000278c:	ff010113          	addi	sp,sp,-16
    80002790:	00813423          	sd	s0,8(sp)
    80002794:	01010413          	addi	s0,sp,16
}
    80002798:	00813403          	ld	s0,8(sp)
    8000279c:	01010113          	addi	sp,sp,16
    800027a0:	00008067          	ret

00000000800027a4 <_ZN6Thread13threadWrapperEPv>:
}

void Thread::threadWrapper(void* thread) {
    Thread* t = (Thread*)thread;

    if (t != nullptr) {
    800027a4:	02050863          	beqz	a0,800027d4 <_ZN6Thread13threadWrapperEPv+0x30>
void Thread::threadWrapper(void* thread) {
    800027a8:	ff010113          	addi	sp,sp,-16
    800027ac:	00113423          	sd	ra,8(sp)
    800027b0:	00813023          	sd	s0,0(sp)
    800027b4:	01010413          	addi	s0,sp,16
        t->run();
    800027b8:	00053783          	ld	a5,0(a0)
    800027bc:	0107b783          	ld	a5,16(a5) # 5010 <_entry-0x7fffaff0>
    800027c0:	000780e7          	jalr	a5
    }
}
    800027c4:	00813083          	ld	ra,8(sp)
    800027c8:	00013403          	ld	s0,0(sp)
    800027cc:	01010113          	addi	sp,sp,16
    800027d0:	00008067          	ret
    800027d4:	00008067          	ret

00000000800027d8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800027d8:	ff010113          	addi	sp,sp,-16
    800027dc:	00113423          	sd	ra,8(sp)
    800027e0:	00813023          	sd	s0,0(sp)
    800027e4:	01010413          	addi	s0,sp,16
}
    800027e8:	00000097          	auipc	ra,0x0
    800027ec:	e40080e7          	jalr	-448(ra) # 80002628 <_ZdlPv>
    800027f0:	00813083          	ld	ra,8(sp)
    800027f4:	00013403          	ld	s0,0(sp)
    800027f8:	01010113          	addi	sp,sp,16
    800027fc:	00008067          	ret

0000000080002800 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80002800:	00009797          	auipc	a5,0x9
    80002804:	2a878793          	addi	a5,a5,680 # 8000baa8 <_ZTV9Semaphore+0x10>
    80002808:	00f53023          	sd	a5,0(a0)
    if (myHandle != nullptr) {
    8000280c:	00853503          	ld	a0,8(a0)
    80002810:	02050663          	beqz	a0,8000283c <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80002814:	ff010113          	addi	sp,sp,-16
    80002818:	00113423          	sd	ra,8(sp)
    8000281c:	00813023          	sd	s0,0(sp)
    80002820:	01010413          	addi	s0,sp,16
        sem_close(myHandle);
    80002824:	fffff097          	auipc	ra,0xfffff
    80002828:	be4080e7          	jalr	-1052(ra) # 80001408 <_Z9sem_closeP4_sem>
    }
}
    8000282c:	00813083          	ld	ra,8(sp)
    80002830:	00013403          	ld	s0,0(sp)
    80002834:	01010113          	addi	sp,sp,16
    80002838:	00008067          	ret
    8000283c:	00008067          	ret

0000000080002840 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002840:	fe010113          	addi	sp,sp,-32
    80002844:	00113c23          	sd	ra,24(sp)
    80002848:	00813823          	sd	s0,16(sp)
    8000284c:	00913423          	sd	s1,8(sp)
    80002850:	02010413          	addi	s0,sp,32
    80002854:	00050493          	mv	s1,a0
}
    80002858:	00000097          	auipc	ra,0x0
    8000285c:	fa8080e7          	jalr	-88(ra) # 80002800 <_ZN9SemaphoreD1Ev>
    80002860:	00048513          	mv	a0,s1
    80002864:	00000097          	auipc	ra,0x0
    80002868:	dc4080e7          	jalr	-572(ra) # 80002628 <_ZdlPv>
    8000286c:	01813083          	ld	ra,24(sp)
    80002870:	01013403          	ld	s0,16(sp)
    80002874:	00813483          	ld	s1,8(sp)
    80002878:	02010113          	addi	sp,sp,32
    8000287c:	00008067          	ret

0000000080002880 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    80002880:	ff010113          	addi	sp,sp,-16
    80002884:	00813423          	sd	s0,8(sp)
    80002888:	01010413          	addi	s0,sp,16
    8000288c:	00009797          	auipc	a5,0x9
    80002890:	1f478793          	addi	a5,a5,500 # 8000ba80 <_ZTV6Thread+0x10>
    80002894:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80002898:	00053423          	sd	zero,8(a0)
    this->body = body;
    8000289c:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    800028a0:	00c53c23          	sd	a2,24(a0)
}
    800028a4:	00813403          	ld	s0,8(sp)
    800028a8:	01010113          	addi	sp,sp,16
    800028ac:	00008067          	ret

00000000800028b0 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800028b0:	ff010113          	addi	sp,sp,-16
    800028b4:	00813423          	sd	s0,8(sp)
    800028b8:	01010413          	addi	s0,sp,16
    800028bc:	00009797          	auipc	a5,0x9
    800028c0:	1c478793          	addi	a5,a5,452 # 8000ba80 <_ZTV6Thread+0x10>
    800028c4:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    800028c8:	00053423          	sd	zero,8(a0)
    this->body = nullptr;
    800028cc:	00053823          	sd	zero,16(a0)
    this->arg = nullptr;
    800028d0:	00053c23          	sd	zero,24(a0)
}
    800028d4:	00813403          	ld	s0,8(sp)
    800028d8:	01010113          	addi	sp,sp,16
    800028dc:	00008067          	ret

00000000800028e0 <_ZN6Thread5startEv>:
int Thread::start() {
    800028e0:	ff010113          	addi	sp,sp,-16
    800028e4:	00113423          	sd	ra,8(sp)
    800028e8:	00813023          	sd	s0,0(sp)
    800028ec:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    800028f0:	01053583          	ld	a1,16(a0)
    800028f4:	02058263          	beqz	a1,80002918 <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    800028f8:	01853603          	ld	a2,24(a0)
    800028fc:	00850513          	addi	a0,a0,8
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	984080e7          	jalr	-1660(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80002908:	00813083          	ld	ra,8(sp)
    8000290c:	00013403          	ld	s0,0(sp)
    80002910:	01010113          	addi	sp,sp,16
    80002914:	00008067          	ret
    return thread_create(&myHandle, Thread::threadWrapper, this);//kada korisnik ocekuje da se izvrsi run(), pa se u thread wrapper poziva run
    80002918:	00050613          	mv	a2,a0
    8000291c:	00000597          	auipc	a1,0x0
    80002920:	e8858593          	addi	a1,a1,-376 # 800027a4 <_ZN6Thread13threadWrapperEPv>
    80002924:	00850513          	addi	a0,a0,8
    80002928:	fffff097          	auipc	ra,0xfffff
    8000292c:	95c080e7          	jalr	-1700(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    80002930:	fd9ff06f          	j	80002908 <_ZN6Thread5startEv+0x28>

0000000080002934 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002934:	ff010113          	addi	sp,sp,-16
    80002938:	00113423          	sd	ra,8(sp)
    8000293c:	00813023          	sd	s0,0(sp)
    80002940:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002944:	fffff097          	auipc	ra,0xfffff
    80002948:	a44080e7          	jalr	-1468(ra) # 80001388 <_Z15thread_dispatchv>
}
    8000294c:	00813083          	ld	ra,8(sp)
    80002950:	00013403          	ld	s0,0(sp)
    80002954:	01010113          	addi	sp,sp,16
    80002958:	00008067          	ret

000000008000295c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    8000295c:	ff010113          	addi	sp,sp,-16
    80002960:	00113423          	sd	ra,8(sp)
    80002964:	00813023          	sd	s0,0(sp)
    80002968:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    8000296c:	fffff097          	auipc	ra,0xfffff
    80002970:	be4080e7          	jalr	-1052(ra) # 80001550 <_Z10time_sleepm>
}
    80002974:	00813083          	ld	ra,8(sp)
    80002978:	00013403          	ld	s0,0(sp)
    8000297c:	01010113          	addi	sp,sp,16
    80002980:	00008067          	ret

0000000080002984 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80002984:	ff010113          	addi	sp,sp,-16
    80002988:	00113423          	sd	ra,8(sp)
    8000298c:	00813023          	sd	s0,0(sp)
    80002990:	01010413          	addi	s0,sp,16
    80002994:	00009797          	auipc	a5,0x9
    80002998:	11478793          	addi	a5,a5,276 # 8000baa8 <_ZTV9Semaphore+0x10>
    8000299c:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800029a0:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    800029a4:	00850513          	addi	a0,a0,8
    800029a8:	fffff097          	auipc	ra,0xfffff
    800029ac:	a1c080e7          	jalr	-1508(ra) # 800013c4 <_Z8sem_openPP4_semj>
}
    800029b0:	00813083          	ld	ra,8(sp)
    800029b4:	00013403          	ld	s0,0(sp)
    800029b8:	01010113          	addi	sp,sp,16
    800029bc:	00008067          	ret

00000000800029c0 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    800029c0:	ff010113          	addi	sp,sp,-16
    800029c4:	00113423          	sd	ra,8(sp)
    800029c8:	00813023          	sd	s0,0(sp)
    800029cc:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800029d0:	00853503          	ld	a0,8(a0)
    800029d4:	fffff097          	auipc	ra,0xfffff
    800029d8:	a74080e7          	jalr	-1420(ra) # 80001448 <_Z8sem_waitP4_sem>
}
    800029dc:	00813083          	ld	ra,8(sp)
    800029e0:	00013403          	ld	s0,0(sp)
    800029e4:	01010113          	addi	sp,sp,16
    800029e8:	00008067          	ret

00000000800029ec <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    800029ec:	ff010113          	addi	sp,sp,-16
    800029f0:	00113423          	sd	ra,8(sp)
    800029f4:	00813023          	sd	s0,0(sp)
    800029f8:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800029fc:	00853503          	ld	a0,8(a0)
    80002a00:	fffff097          	auipc	ra,0xfffff
    80002a04:	a88080e7          	jalr	-1400(ra) # 80001488 <_Z10sem_signalP4_sem>
}
    80002a08:	00813083          	ld	ra,8(sp)
    80002a0c:	00013403          	ld	s0,0(sp)
    80002a10:	01010113          	addi	sp,sp,16
    80002a14:	00008067          	ret

0000000080002a18 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    80002a18:	fe010113          	addi	sp,sp,-32
    80002a1c:	00113c23          	sd	ra,24(sp)
    80002a20:	00813823          	sd	s0,16(sp)
    80002a24:	00913423          	sd	s1,8(sp)
    80002a28:	01213023          	sd	s2,0(sp)
    80002a2c:	02010413          	addi	s0,sp,32
    80002a30:	00050493          	mv	s1,a0
    80002a34:	00058913          	mv	s2,a1
    80002a38:	00000097          	auipc	ra,0x0
    80002a3c:	e78080e7          	jalr	-392(ra) # 800028b0 <_ZN6ThreadC1Ev>
    80002a40:	00009797          	auipc	a5,0x9
    80002a44:	01078793          	addi	a5,a5,16 # 8000ba50 <_ZTV14PeriodicThread+0x10>
    80002a48:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80002a4c:	0324b023          	sd	s2,32(s1)
}
    80002a50:	01813083          	ld	ra,24(sp)
    80002a54:	01013403          	ld	s0,16(sp)
    80002a58:	00813483          	ld	s1,8(sp)
    80002a5c:	00013903          	ld	s2,0(sp)
    80002a60:	02010113          	addi	sp,sp,32
    80002a64:	00008067          	ret

0000000080002a68 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002a68:	ff010113          	addi	sp,sp,-16
    80002a6c:	00813423          	sd	s0,8(sp)
    80002a70:	01010413          	addi	s0,sp,16
    /*
     * PeriodicThread je deo zadatka 4.
     * Pošto ga ne radiš, ovo ostaje prazno.
     */
}
    80002a74:	00813403          	ld	s0,8(sp)
    80002a78:	01010113          	addi	sp,sp,16
    80002a7c:	00008067          	ret

0000000080002a80 <_ZN7Console4getcEv>:

char Console::getc() {
    80002a80:	ff010113          	addi	sp,sp,-16
    80002a84:	00113423          	sd	ra,8(sp)
    80002a88:	00813023          	sd	s0,0(sp)
    80002a8c:	01010413          	addi	s0,sp,16
    return ::getc();
    80002a90:	fffff097          	auipc	ra,0xfffff
    80002a94:	b00080e7          	jalr	-1280(ra) # 80001590 <_Z4getcv>
}
    80002a98:	00813083          	ld	ra,8(sp)
    80002a9c:	00013403          	ld	s0,0(sp)
    80002aa0:	01010113          	addi	sp,sp,16
    80002aa4:	00008067          	ret

0000000080002aa8 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002aa8:	ff010113          	addi	sp,sp,-16
    80002aac:	00113423          	sd	ra,8(sp)
    80002ab0:	00813023          	sd	s0,0(sp)
    80002ab4:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002ab8:	fffff097          	auipc	ra,0xfffff
    80002abc:	b18080e7          	jalr	-1256(ra) # 800015d0 <_Z4putcc>
    80002ac0:	00813083          	ld	ra,8(sp)
    80002ac4:	00013403          	ld	s0,0(sp)
    80002ac8:	01010113          	addi	sp,sp,16
    80002acc:	00008067          	ret

0000000080002ad0 <_ZN6Thread3runEv>:
    static int sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80002ad0:	ff010113          	addi	sp,sp,-16
    80002ad4:	00813423          	sd	s0,8(sp)
    80002ad8:	01010413          	addi	s0,sp,16
    80002adc:	00813403          	ld	s0,8(sp)
    80002ae0:	01010113          	addi	sp,sp,16
    80002ae4:	00008067          	ret

0000000080002ae8 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate();

protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    80002ae8:	ff010113          	addi	sp,sp,-16
    80002aec:	00813423          	sd	s0,8(sp)
    80002af0:	01010413          	addi	s0,sp,16
    80002af4:	00813403          	ld	s0,8(sp)
    80002af8:	01010113          	addi	sp,sp,16
    80002afc:	00008067          	ret

0000000080002b00 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002b00:	ff010113          	addi	sp,sp,-16
    80002b04:	00813423          	sd	s0,8(sp)
    80002b08:	01010413          	addi	s0,sp,16
    80002b0c:	00009797          	auipc	a5,0x9
    80002b10:	f4478793          	addi	a5,a5,-188 # 8000ba50 <_ZTV14PeriodicThread+0x10>
    80002b14:	00f53023          	sd	a5,0(a0)
    80002b18:	00813403          	ld	s0,8(sp)
    80002b1c:	01010113          	addi	sp,sp,16
    80002b20:	00008067          	ret

0000000080002b24 <_ZN14PeriodicThreadD0Ev>:
    80002b24:	ff010113          	addi	sp,sp,-16
    80002b28:	00113423          	sd	ra,8(sp)
    80002b2c:	00813023          	sd	s0,0(sp)
    80002b30:	01010413          	addi	s0,sp,16
    80002b34:	00009797          	auipc	a5,0x9
    80002b38:	f1c78793          	addi	a5,a5,-228 # 8000ba50 <_ZTV14PeriodicThread+0x10>
    80002b3c:	00f53023          	sd	a5,0(a0)
    80002b40:	00000097          	auipc	ra,0x0
    80002b44:	ae8080e7          	jalr	-1304(ra) # 80002628 <_ZdlPv>
    80002b48:	00813083          	ld	ra,8(sp)
    80002b4c:	00013403          	ld	s0,0(sp)
    80002b50:	01010113          	addi	sp,sp,16
    80002b54:	00008067          	ret

0000000080002b58 <_ZN15MemoryAllocatorC1Ev>:
#include "../h/MemoryAllocator.hpp"

MemoryAllocator::MemoryAllocator() : freeHead(nullptr), initialized(false) {}
    80002b58:	ff010113          	addi	sp,sp,-16
    80002b5c:	00813423          	sd	s0,8(sp)
    80002b60:	01010413          	addi	s0,sp,16
    80002b64:	00053023          	sd	zero,0(a0)
    80002b68:	00050423          	sb	zero,8(a0)
    80002b6c:	00813403          	ld	s0,8(sp)
    80002b70:	01010113          	addi	sp,sp,16
    80002b74:	00008067          	ret

0000000080002b78 <_Z41__static_initialization_and_destruction_0ii>:
            block->next->prev = block;
        }
        nextBlock->next = nullptr;
        nextBlock->prev = nullptr;
    }
    80002b78:	00100793          	li	a5,1
    80002b7c:	00f50463          	beq	a0,a5,80002b84 <_Z41__static_initialization_and_destruction_0ii+0xc>
    80002b80:	00008067          	ret
    80002b84:	000107b7          	lui	a5,0x10
    80002b88:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002b8c:	fef59ae3          	bne	a1,a5,80002b80 <_Z41__static_initialization_and_destruction_0ii+0x8>
    80002b90:	ff010113          	addi	sp,sp,-16
    80002b94:	00113423          	sd	ra,8(sp)
    80002b98:	00813023          	sd	s0,0(sp)
    80002b9c:	01010413          	addi	s0,sp,16
MemoryAllocator MemoryAllocator::instance;
    80002ba0:	00009517          	auipc	a0,0x9
    80002ba4:	19850513          	addi	a0,a0,408 # 8000bd38 <_ZN15MemoryAllocator8instanceE>
    80002ba8:	00000097          	auipc	ra,0x0
    80002bac:	fb0080e7          	jalr	-80(ra) # 80002b58 <_ZN15MemoryAllocatorC1Ev>
    80002bb0:	00813083          	ld	ra,8(sp)
    80002bb4:	00013403          	ld	s0,0(sp)
    80002bb8:	01010113          	addi	sp,sp,16
    80002bbc:	00008067          	ret

0000000080002bc0 <_ZN15MemoryAllocator11getInstanceEv>:
MemoryAllocator& MemoryAllocator::getInstance() {
    80002bc0:	ff010113          	addi	sp,sp,-16
    80002bc4:	00813423          	sd	s0,8(sp)
    80002bc8:	01010413          	addi	s0,sp,16
}
    80002bcc:	00009517          	auipc	a0,0x9
    80002bd0:	16c50513          	addi	a0,a0,364 # 8000bd38 <_ZN15MemoryAllocator8instanceE>
    80002bd4:	00813403          	ld	s0,8(sp)
    80002bd8:	01010113          	addi	sp,sp,16
    80002bdc:	00008067          	ret

0000000080002be0 <_ZN15MemoryAllocator4initEv>:
void MemoryAllocator::init() {
    80002be0:	ff010113          	addi	sp,sp,-16
    80002be4:	00813423          	sd	s0,8(sp)
    80002be8:	01010413          	addi	s0,sp,16
    if (initialized) return;
    80002bec:	00854783          	lbu	a5,8(a0)
    80002bf0:	04079263          	bnez	a5,80002c34 <_ZN15MemoryAllocator4initEv+0x54>
    uint64 heapStart = (uint64) HEAP_START_ADDR;
    80002bf4:	00009797          	auipc	a5,0x9
    80002bf8:	0ac7b783          	ld	a5,172(a5) # 8000bca0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002bfc:	0007b703          	ld	a4,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002c00:	00009797          	auipc	a5,0x9
    80002c04:	0c07b783          	ld	a5,192(a5) # 8000bcc0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002c08:	0007b783          	ld	a5,0(a5)
    size_t heapSize = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002c0c:	40e787b3          	sub	a5,a5,a4
    80002c10:	0067d793          	srli	a5,a5,0x6
    freeHead = (FreeBlock*) heapStart;
    80002c14:	00e53023          	sd	a4,0(a0)
    freeHead->size = heapSize;
    80002c18:	00f73023          	sd	a5,0(a4)
    freeHead->next = nullptr;
    80002c1c:	00053783          	ld	a5,0(a0)
    80002c20:	0007b423          	sd	zero,8(a5)
    freeHead->prev = nullptr;
    80002c24:	00053783          	ld	a5,0(a0)
    80002c28:	0007b823          	sd	zero,16(a5)
    initialized = true;
    80002c2c:	00100793          	li	a5,1
    80002c30:	00f50423          	sb	a5,8(a0)
}
    80002c34:	00813403          	ld	s0,8(sp)
    80002c38:	01010113          	addi	sp,sp,16
    80002c3c:	00008067          	ret

0000000080002c40 <_ZN15MemoryAllocator6mallocEm>:
void* MemoryAllocator::malloc(size_t numBlocks) {
    80002c40:	fe010113          	addi	sp,sp,-32
    80002c44:	00113c23          	sd	ra,24(sp)
    80002c48:	00813823          	sd	s0,16(sp)
    80002c4c:	00913423          	sd	s1,8(sp)
    80002c50:	01213023          	sd	s2,0(sp)
    80002c54:	02010413          	addi	s0,sp,32
    80002c58:	00050913          	mv	s2,a0
    80002c5c:	00058493          	mv	s1,a1
    init();
    80002c60:	00000097          	auipc	ra,0x0
    80002c64:	f80080e7          	jalr	-128(ra) # 80002be0 <_ZN15MemoryAllocator4initEv>
    if (numBlocks == 0) return nullptr;
    80002c68:	0c048863          	beqz	s1,80002d38 <_ZN15MemoryAllocator6mallocEm+0xf8>
    size_t neededBlocks = numBlocks + 1;
    80002c6c:	00148593          	addi	a1,s1,1
    FreeBlock* current = freeHead;
    80002c70:	00093503          	ld	a0,0(s2)
    while(current != nullptr && current->size < neededBlocks){
    80002c74:	00050a63          	beqz	a0,80002c88 <_ZN15MemoryAllocator6mallocEm+0x48>
    80002c78:	00053783          	ld	a5,0(a0)
    80002c7c:	00b7f663          	bgeu	a5,a1,80002c88 <_ZN15MemoryAllocator6mallocEm+0x48>
        current = current->next;
    80002c80:	00853503          	ld	a0,8(a0)
    while(current != nullptr && current->size < neededBlocks){
    80002c84:	ff1ff06f          	j	80002c74 <_ZN15MemoryAllocator6mallocEm+0x34>
    if (current == nullptr){
    80002c88:	04050063          	beqz	a0,80002cc8 <_ZN15MemoryAllocator6mallocEm+0x88>
    size_t remainingBlocks = current->size - neededBlocks;
    80002c8c:	00053783          	ld	a5,0(a0)
    80002c90:	40b787b3          	sub	a5,a5,a1
    if (remainingBlocks >= 2){
    80002c94:	00100713          	li	a4,1
    80002c98:	04f76463          	bltu	a4,a5,80002ce0 <_ZN15MemoryAllocator6mallocEm+0xa0>
    if (current->prev != nullptr){
    80002c9c:	01053783          	ld	a5,16(a0)
    80002ca0:	08078663          	beqz	a5,80002d2c <_ZN15MemoryAllocator6mallocEm+0xec>
        current->prev->next = current->next;
    80002ca4:	00853703          	ld	a4,8(a0)
    80002ca8:	00e7b423          	sd	a4,8(a5)
    if (current->next != nullptr){
    80002cac:	00853783          	ld	a5,8(a0)
    80002cb0:	00078663          	beqz	a5,80002cbc <_ZN15MemoryAllocator6mallocEm+0x7c>
        current->next->prev = current->prev;
    80002cb4:	01053703          	ld	a4,16(a0)
    80002cb8:	00e7b823          	sd	a4,16(a5)
    current->next = nullptr;
    80002cbc:	00053423          	sd	zero,8(a0)
    current->prev = nullptr;
    80002cc0:	00053823          	sd	zero,16(a0)
    return (void*) ((char*) current +MEM_BLOCK_SIZE);
    80002cc4:	04050513          	addi	a0,a0,64
}
    80002cc8:	01813083          	ld	ra,24(sp)
    80002ccc:	01013403          	ld	s0,16(sp)
    80002cd0:	00813483          	ld	s1,8(sp)
    80002cd4:	00013903          	ld	s2,0(sp)
    80002cd8:	02010113          	addi	sp,sp,32
    80002cdc:	00008067          	ret
        FreeBlock* newFree = (FreeBlock*) ((char*) current + neededBlocks * MEM_BLOCK_SIZE);
    80002ce0:	00659713          	slli	a4,a1,0x6
    80002ce4:	00e50733          	add	a4,a0,a4
        newFree->size = remainingBlocks;
    80002ce8:	00f73023          	sd	a5,0(a4)
        newFree->next = current->next;
    80002cec:	00853783          	ld	a5,8(a0)
    80002cf0:	00f73423          	sd	a5,8(a4)
        newFree->prev = current->prev;
    80002cf4:	01053783          	ld	a5,16(a0)
    80002cf8:	00f73823          	sd	a5,16(a4)
        if (current->prev != nullptr){
    80002cfc:	02078463          	beqz	a5,80002d24 <_ZN15MemoryAllocator6mallocEm+0xe4>
            current->prev->next = newFree;
    80002d00:	00e7b423          	sd	a4,8(a5)
        if (current->next != nullptr){
    80002d04:	00853783          	ld	a5,8(a0)
    80002d08:	00078463          	beqz	a5,80002d10 <_ZN15MemoryAllocator6mallocEm+0xd0>
            current->next->prev = newFree;
    80002d0c:	00e7b823          	sd	a4,16(a5)
        current->size = neededBlocks;
    80002d10:	00b53023          	sd	a1,0(a0)
        current->next = nullptr;
    80002d14:	00053423          	sd	zero,8(a0)
        current->prev = nullptr;
    80002d18:	00053823          	sd	zero,16(a0)
        return (void*) ((char*) current + MEM_BLOCK_SIZE);
    80002d1c:	04050513          	addi	a0,a0,64
    80002d20:	fa9ff06f          	j	80002cc8 <_ZN15MemoryAllocator6mallocEm+0x88>
            freeHead = newFree;
    80002d24:	00e93023          	sd	a4,0(s2)
    80002d28:	fddff06f          	j	80002d04 <_ZN15MemoryAllocator6mallocEm+0xc4>
        freeHead = current->next;
    80002d2c:	00853783          	ld	a5,8(a0)
    80002d30:	00f93023          	sd	a5,0(s2)
    80002d34:	f79ff06f          	j	80002cac <_ZN15MemoryAllocator6mallocEm+0x6c>
    if (numBlocks == 0) return nullptr;
    80002d38:	00000513          	li	a0,0
    80002d3c:	f8dff06f          	j	80002cc8 <_ZN15MemoryAllocator6mallocEm+0x88>

0000000080002d40 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>:
void MemoryAllocator::tryToJoin(FreeBlock *block) {
    80002d40:	ff010113          	addi	sp,sp,-16
    80002d44:	00813423          	sd	s0,8(sp)
    80002d48:	01010413          	addi	s0,sp,16
    if (block == nullptr || block->next == nullptr) return;
    80002d4c:	00058e63          	beqz	a1,80002d68 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    80002d50:	0085b783          	ld	a5,8(a1)
    80002d54:	00078a63          	beqz	a5,80002d68 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    char* endOfBlock = (char*) block + block->size * MEM_BLOCK_SIZE;
    80002d58:	0005b683          	ld	a3,0(a1)
    80002d5c:	00669713          	slli	a4,a3,0x6
    80002d60:	00e58733          	add	a4,a1,a4
    if (endOfBlock == (char*) block->next){
    80002d64:	00e78863          	beq	a5,a4,80002d74 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x34>
    80002d68:	00813403          	ld	s0,8(sp)
    80002d6c:	01010113          	addi	sp,sp,16
    80002d70:	00008067          	ret
        block->size += nextBlock->size;
    80002d74:	0007b703          	ld	a4,0(a5)
    80002d78:	00e686b3          	add	a3,a3,a4
    80002d7c:	00d5b023          	sd	a3,0(a1)
        block->next = nextBlock->next;
    80002d80:	0087b703          	ld	a4,8(a5)
    80002d84:	00e5b423          	sd	a4,8(a1)
        if (block->next != nullptr){
    80002d88:	00070463          	beqz	a4,80002d90 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x50>
            block->next->prev = block;
    80002d8c:	00b73823          	sd	a1,16(a4)
        nextBlock->next = nullptr;
    80002d90:	0007b423          	sd	zero,8(a5)
        nextBlock->prev = nullptr;
    80002d94:	0007b823          	sd	zero,16(a5)
    80002d98:	fd1ff06f          	j	80002d68 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>

0000000080002d9c <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void* ptr){
    80002d9c:	fd010113          	addi	sp,sp,-48
    80002da0:	02113423          	sd	ra,40(sp)
    80002da4:	02813023          	sd	s0,32(sp)
    80002da8:	00913c23          	sd	s1,24(sp)
    80002dac:	01213823          	sd	s2,16(sp)
    80002db0:	01313423          	sd	s3,8(sp)
    80002db4:	03010413          	addi	s0,sp,48
    80002db8:	00050993          	mv	s3,a0
    80002dbc:	00058913          	mv	s2,a1
    init();
    80002dc0:	00000097          	auipc	ra,0x0
    80002dc4:	e20080e7          	jalr	-480(ra) # 80002be0 <_ZN15MemoryAllocator4initEv>
    if (ptr == nullptr) return -1;
    80002dc8:	0e090863          	beqz	s2,80002eb8 <_ZN15MemoryAllocator4freeEPv+0x11c>
    uint64 heapStart = (uint64)HEAP_START_ADDR;
    80002dcc:	00009797          	auipc	a5,0x9
    80002dd0:	ed47b783          	ld	a5,-300(a5) # 8000bca0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002dd4:	0007b683          	ld	a3,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002dd8:	00009797          	auipc	a5,0x9
    80002ddc:	ee87b783          	ld	a5,-280(a5) # 8000bcc0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002de0:	0007b603          	ld	a2,0(a5)
    if (ptrAddr < heapStart + MEM_BLOCK_SIZE || ptrAddr >= heapEnd){
    80002de4:	04068793          	addi	a5,a3,64
    80002de8:	0cf96c63          	bltu	s2,a5,80002ec0 <_ZN15MemoryAllocator4freeEPv+0x124>
    80002dec:	0cc97e63          	bgeu	s2,a2,80002ec8 <_ZN15MemoryAllocator4freeEPv+0x12c>
    if ((ptrAddr - heapStart) % MEM_BLOCK_SIZE != 0){
    80002df0:	40d907b3          	sub	a5,s2,a3
    80002df4:	03f7f793          	andi	a5,a5,63
    80002df8:	0c079c63          	bnez	a5,80002ed0 <_ZN15MemoryAllocator4freeEPv+0x134>
    FreeBlock* block = (FreeBlock*) ((char*) ptr - MEM_BLOCK_SIZE);
    80002dfc:	fc090593          	addi	a1,s2,-64
    if (block->size < 2){
    80002e00:	fc093783          	ld	a5,-64(s2)
    80002e04:	00100713          	li	a4,1
    80002e08:	0cf77863          	bgeu	a4,a5,80002ed8 <_ZN15MemoryAllocator4freeEPv+0x13c>
    if ((uint64) block < heapStart){
    80002e0c:	00058713          	mv	a4,a1
    80002e10:	0cd5e863          	bltu	a1,a3,80002ee0 <_ZN15MemoryAllocator4freeEPv+0x144>
    if ((uint64) block + block->size * MEM_BLOCK_SIZE > heapEnd){
    80002e14:	00679793          	slli	a5,a5,0x6
    80002e18:	00f586b3          	add	a3,a1,a5
    80002e1c:	0cd66663          	bltu	a2,a3,80002ee8 <_ZN15MemoryAllocator4freeEPv+0x14c>
    FreeBlock* current = freeHead;
    80002e20:	0009b783          	ld	a5,0(s3)
    FreeBlock* prev = nullptr;
    80002e24:	00000493          	li	s1,0
    while (current != nullptr && (uint64) current < (uint64) block){
    80002e28:	00078a63          	beqz	a5,80002e3c <_ZN15MemoryAllocator4freeEPv+0xa0>
    80002e2c:	00e7f863          	bgeu	a5,a4,80002e3c <_ZN15MemoryAllocator4freeEPv+0xa0>
        prev = current;
    80002e30:	00078493          	mv	s1,a5
        current = current->next;
    80002e34:	0087b783          	ld	a5,8(a5)
    while (current != nullptr && (uint64) current < (uint64) block){
    80002e38:	ff1ff06f          	j	80002e28 <_ZN15MemoryAllocator4freeEPv+0x8c>
    if (prev != nullptr &&
    80002e3c:	00048a63          	beqz	s1,80002e50 <_ZN15MemoryAllocator4freeEPv+0xb4>
        (uint64) prev + prev->size * MEM_BLOCK_SIZE > (uint64) block) {
    80002e40:	0004b603          	ld	a2,0(s1)
    80002e44:	00661613          	slli	a2,a2,0x6
    80002e48:	00c48633          	add	a2,s1,a2
    if (prev != nullptr &&
    80002e4c:	0ac76263          	bltu	a4,a2,80002ef0 <_ZN15MemoryAllocator4freeEPv+0x154>
    if (current!= nullptr && (uint64)block + block->size * MEM_BLOCK_SIZE > (uint64) current){
    80002e50:	00078463          	beqz	a5,80002e58 <_ZN15MemoryAllocator4freeEPv+0xbc>
    80002e54:	0ad7e263          	bltu	a5,a3,80002ef8 <_ZN15MemoryAllocator4freeEPv+0x15c>
    block->prev = prev;
    80002e58:	fc993823          	sd	s1,-48(s2)
    block->next = current;
    80002e5c:	fcf93423          	sd	a5,-56(s2)
    if (prev != nullptr){
    80002e60:	04048863          	beqz	s1,80002eb0 <_ZN15MemoryAllocator4freeEPv+0x114>
        prev->next = block;
    80002e64:	00b4b423          	sd	a1,8(s1)
    if (current != nullptr){
    80002e68:	00078463          	beqz	a5,80002e70 <_ZN15MemoryAllocator4freeEPv+0xd4>
        current->prev = block;
    80002e6c:	00b7b823          	sd	a1,16(a5)
    tryToJoin(block);
    80002e70:	00098513          	mv	a0,s3
    80002e74:	00000097          	auipc	ra,0x0
    80002e78:	ecc080e7          	jalr	-308(ra) # 80002d40 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    if (prev != nullptr){
    80002e7c:	08048263          	beqz	s1,80002f00 <_ZN15MemoryAllocator4freeEPv+0x164>
        tryToJoin(prev);
    80002e80:	00048593          	mv	a1,s1
    80002e84:	00098513          	mv	a0,s3
    80002e88:	00000097          	auipc	ra,0x0
    80002e8c:	eb8080e7          	jalr	-328(ra) # 80002d40 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    return 0;
    80002e90:	00000513          	li	a0,0
}
    80002e94:	02813083          	ld	ra,40(sp)
    80002e98:	02013403          	ld	s0,32(sp)
    80002e9c:	01813483          	ld	s1,24(sp)
    80002ea0:	01013903          	ld	s2,16(sp)
    80002ea4:	00813983          	ld	s3,8(sp)
    80002ea8:	03010113          	addi	sp,sp,48
    80002eac:	00008067          	ret
        freeHead = block;
    80002eb0:	00b9b023          	sd	a1,0(s3)
    80002eb4:	fb5ff06f          	j	80002e68 <_ZN15MemoryAllocator4freeEPv+0xcc>
    if (ptr == nullptr) return -1;
    80002eb8:	fff00513          	li	a0,-1
    80002ebc:	fd9ff06f          	j	80002e94 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002ec0:	fff00513          	li	a0,-1
    80002ec4:	fd1ff06f          	j	80002e94 <_ZN15MemoryAllocator4freeEPv+0xf8>
    80002ec8:	fff00513          	li	a0,-1
    80002ecc:	fc9ff06f          	j	80002e94 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002ed0:	fff00513          	li	a0,-1
    80002ed4:	fc1ff06f          	j	80002e94 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002ed8:	fff00513          	li	a0,-1
    80002edc:	fb9ff06f          	j	80002e94 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002ee0:	fff00513          	li	a0,-1
    80002ee4:	fb1ff06f          	j	80002e94 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002ee8:	fff00513          	li	a0,-1
    80002eec:	fa9ff06f          	j	80002e94 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002ef0:	fff00513          	li	a0,-1
    80002ef4:	fa1ff06f          	j	80002e94 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002ef8:	fff00513          	li	a0,-1
    80002efc:	f99ff06f          	j	80002e94 <_ZN15MemoryAllocator4freeEPv+0xf8>
    return 0;
    80002f00:	00000513          	li	a0,0
    80002f04:	f91ff06f          	j	80002e94 <_ZN15MemoryAllocator4freeEPv+0xf8>

0000000080002f08 <_GLOBAL__sub_I__ZN15MemoryAllocatorC2Ev>:
    80002f08:	ff010113          	addi	sp,sp,-16
    80002f0c:	00113423          	sd	ra,8(sp)
    80002f10:	00813023          	sd	s0,0(sp)
    80002f14:	01010413          	addi	s0,sp,16
    80002f18:	000105b7          	lui	a1,0x10
    80002f1c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002f20:	00100513          	li	a0,1
    80002f24:	00000097          	auipc	ra,0x0
    80002f28:	c54080e7          	jalr	-940(ra) # 80002b78 <_Z41__static_initialization_and_destruction_0ii>
    80002f2c:	00813083          	ld	ra,8(sp)
    80002f30:	00013403          	ld	s0,0(sp)
    80002f34:	01010113          	addi	sp,sp,16
    80002f38:	00008067          	ret

0000000080002f3c <_ZL11workerBodyAPv>:
static void busyWait(int id) {
    int limit = 1000+id*300;
    for (int i = 0; i < limit; i++) {}
}

static void workerBodyA(void* arg) {
    80002f3c:	fd010113          	addi	sp,sp,-48
    80002f40:	02113423          	sd	ra,40(sp)
    80002f44:	02813023          	sd	s0,32(sp)
    80002f48:	00913c23          	sd	s1,24(sp)
    80002f4c:	01213823          	sd	s2,16(sp)
    80002f50:	01313423          	sd	s3,8(sp)
    80002f54:	03010413          	addi	s0,sp,48
    Args* args = (Args*) arg;
    Data* data = (Data*) args->data;
    80002f58:	00053983          	ld	s3,0(a0)
    int id = args->id;
    80002f5c:	00852903          	lw	s2,8(a0)
    for (int i = 0; i < ITERATIONS; i++) {
    80002f60:	00000493          	li	s1,0
    80002f64:	1380006f          	j	8000309c <_ZL11workerBodyAPv+0x160>
        printString("Thread ");
    80002f68:	00006517          	auipc	a0,0x6
    80002f6c:	72050513          	addi	a0,a0,1824 # 80009688 <CONSOLE_STATUS+0x678>
    80002f70:	00002097          	auipc	ra,0x2
    80002f74:	69c080e7          	jalr	1692(ra) # 8000560c <_Z11printStringPKc>
        printInt(id);
    80002f78:	00000613          	li	a2,0
    80002f7c:	00a00593          	li	a1,10
    80002f80:	00090513          	mv	a0,s2
    80002f84:	00003097          	auipc	ra,0x3
    80002f88:	838080e7          	jalr	-1992(ra) # 800057bc <_Z8printIntiii>
        printString(" trying to enter, iteration ");
    80002f8c:	00006517          	auipc	a0,0x6
    80002f90:	3fc50513          	addi	a0,a0,1020 # 80009388 <CONSOLE_STATUS+0x378>
    80002f94:	00002097          	auipc	ra,0x2
    80002f98:	678080e7          	jalr	1656(ra) # 8000560c <_Z11printStringPKc>
        printInt(i);
    80002f9c:	00000613          	li	a2,0
    80002fa0:	00a00593          	li	a1,10
    80002fa4:	00048513          	mv	a0,s1
    80002fa8:	00003097          	auipc	ra,0x3
    80002fac:	814080e7          	jalr	-2028(ra) # 800057bc <_Z8printIntiii>
        printString("\n");
    80002fb0:	00006517          	auipc	a0,0x6
    80002fb4:	30850513          	addi	a0,a0,776 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80002fb8:	00002097          	auipc	ra,0x2
    80002fbc:	654080e7          	jalr	1620(ra) # 8000560c <_Z11printStringPKc>

        sem_wait(data->sharedSem);
    80002fc0:	0009b503          	ld	a0,0(s3)
    80002fc4:	ffffe097          	auipc	ra,0xffffe
    80002fc8:	484080e7          	jalr	1156(ra) # 80001448 <_Z8sem_waitP4_sem>

        printString(">>> Thread ");
    80002fcc:	00006517          	auipc	a0,0x6
    80002fd0:	3dc50513          	addi	a0,a0,988 # 800093a8 <CONSOLE_STATUS+0x398>
    80002fd4:	00002097          	auipc	ra,0x2
    80002fd8:	638080e7          	jalr	1592(ra) # 8000560c <_Z11printStringPKc>
        printInt(id);
    80002fdc:	00000613          	li	a2,0
    80002fe0:	00a00593          	li	a1,10
    80002fe4:	00090513          	mv	a0,s2
    80002fe8:	00002097          	auipc	ra,0x2
    80002fec:	7d4080e7          	jalr	2004(ra) # 800057bc <_Z8printIntiii>
        printString(" ENTERED critical section, iteration ");
    80002ff0:	00006517          	auipc	a0,0x6
    80002ff4:	3c850513          	addi	a0,a0,968 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80002ff8:	00002097          	auipc	ra,0x2
    80002ffc:	614080e7          	jalr	1556(ra) # 8000560c <_Z11printStringPKc>
        printInt(i);
    80003000:	00000613          	li	a2,0
    80003004:	00a00593          	li	a1,10
    80003008:	00048513          	mv	a0,s1
    8000300c:	00002097          	auipc	ra,0x2
    80003010:	7b0080e7          	jalr	1968(ra) # 800057bc <_Z8printIntiii>
        printString("\n");
    80003014:	00006517          	auipc	a0,0x6
    80003018:	2a450513          	addi	a0,a0,676 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000301c:	00002097          	auipc	ra,0x2
    80003020:	5f0080e7          	jalr	1520(ra) # 8000560c <_Z11printStringPKc>
        busyWait(id);
        thread_dispatch();
    80003024:	ffffe097          	auipc	ra,0xffffe
    80003028:	364080e7          	jalr	868(ra) # 80001388 <_Z15thread_dispatchv>

        busyWait(id);

        printString("<<< Thread ");
    8000302c:	00006517          	auipc	a0,0x6
    80003030:	3b450513          	addi	a0,a0,948 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80003034:	00002097          	auipc	ra,0x2
    80003038:	5d8080e7          	jalr	1496(ra) # 8000560c <_Z11printStringPKc>
        printInt(id);
    8000303c:	00000613          	li	a2,0
    80003040:	00a00593          	li	a1,10
    80003044:	00090513          	mv	a0,s2
    80003048:	00002097          	auipc	ra,0x2
    8000304c:	774080e7          	jalr	1908(ra) # 800057bc <_Z8printIntiii>
        printString(" EXITED critical section, iteration ");
    80003050:	00006517          	auipc	a0,0x6
    80003054:	3a050513          	addi	a0,a0,928 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80003058:	00002097          	auipc	ra,0x2
    8000305c:	5b4080e7          	jalr	1460(ra) # 8000560c <_Z11printStringPKc>
        printInt(i);
    80003060:	00000613          	li	a2,0
    80003064:	00a00593          	li	a1,10
    80003068:	00048513          	mv	a0,s1
    8000306c:	00002097          	auipc	ra,0x2
    80003070:	750080e7          	jalr	1872(ra) # 800057bc <_Z8printIntiii>
        printString("\n");
    80003074:	00006517          	auipc	a0,0x6
    80003078:	24450513          	addi	a0,a0,580 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000307c:	00002097          	auipc	ra,0x2
    80003080:	590080e7          	jalr	1424(ra) # 8000560c <_Z11printStringPKc>

        sem_signal(data->sharedSem);
    80003084:	0009b503          	ld	a0,0(s3)
    80003088:	ffffe097          	auipc	ra,0xffffe
    8000308c:	400080e7          	jalr	1024(ra) # 80001488 <_Z10sem_signalP4_sem>

        thread_dispatch();
    80003090:	ffffe097          	auipc	ra,0xffffe
    80003094:	2f8080e7          	jalr	760(ra) # 80001388 <_Z15thread_dispatchv>
    for (int i = 0; i < ITERATIONS; i++) {
    80003098:	0014849b          	addiw	s1,s1,1
    8000309c:	00200793          	li	a5,2
    800030a0:	ec97d4e3          	bge	a5,s1,80002f68 <_ZL11workerBodyAPv+0x2c>
    }
}
    800030a4:	02813083          	ld	ra,40(sp)
    800030a8:	02013403          	ld	s0,32(sp)
    800030ac:	01813483          	ld	s1,24(sp)
    800030b0:	01013903          	ld	s2,16(sp)
    800030b4:	00813983          	ld	s3,8(sp)
    800030b8:	03010113          	addi	sp,sp,48
    800030bc:	00008067          	ret

00000000800030c0 <_Z3modv>:

void mod() {
    800030c0:	b2010113          	addi	sp,sp,-1248
    800030c4:	4c113c23          	sd	ra,1240(sp)
    800030c8:	4c813823          	sd	s0,1232(sp)
    800030cc:	4c913423          	sd	s1,1224(sp)
    800030d0:	4e010413          	addi	s0,sp,1248
    printString("Semaphore priority test started\n");
    800030d4:	00006517          	auipc	a0,0x6
    800030d8:	34450513          	addi	a0,a0,836 # 80009418 <CONSOLE_STATUS+0x408>
    800030dc:	00002097          	auipc	ra,0x2
    800030e0:	530080e7          	jalr	1328(ra) # 8000560c <_Z11printStringPKc>
    Data data;
    sem_open(&data.sharedSem, 5);
    800030e4:	00500593          	li	a1,5
    800030e8:	fd840513          	addi	a0,s0,-40
    800030ec:	ffffe097          	auipc	ra,0xffffe
    800030f0:	2d8080e7          	jalr	728(ra) # 800013c4 <_Z8sem_openPP4_semj>
    thread_t threads[THREAD_COUNT];
    Args args[THREAD_COUNT];
    for (int i = 0; i < THREAD_COUNT; i++) {
    800030f4:	00000493          	li	s1,0
    800030f8:	03100793          	li	a5,49
    800030fc:	0497c463          	blt	a5,s1,80003144 <_Z3modv+0x84>
        args[i].data = &data;
    80003100:	00449793          	slli	a5,s1,0x4
    80003104:	fe040713          	addi	a4,s0,-32
    80003108:	00f70733          	add	a4,a4,a5
    8000310c:	fd840693          	addi	a3,s0,-40
    80003110:	b4d73423          	sd	a3,-1208(a4)
        args[i].id = i;
    80003114:	b4972823          	sw	s1,-1200(a4)
        thread_create(&threads[i], workerBodyA, (void*) &args[i]);
    80003118:	00349713          	slli	a4,s1,0x3
    8000311c:	b2840613          	addi	a2,s0,-1240
    80003120:	00f60633          	add	a2,a2,a5
    80003124:	00000597          	auipc	a1,0x0
    80003128:	e1858593          	addi	a1,a1,-488 # 80002f3c <_ZL11workerBodyAPv>
    8000312c:	e4840513          	addi	a0,s0,-440
    80003130:	00e50533          	add	a0,a0,a4
    80003134:	ffffe097          	auipc	ra,0xffffe
    80003138:	150080e7          	jalr	336(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < THREAD_COUNT; i++) {
    8000313c:	0014849b          	addiw	s1,s1,1
    80003140:	fb9ff06f          	j	800030f8 <_Z3modv+0x38>
    }
    for (int i = 0; i < 10000; i++) {
    80003144:	00000493          	li	s1,0
    80003148:	000027b7          	lui	a5,0x2
    8000314c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003150:	0097ca63          	blt	a5,s1,80003164 <_Z3modv+0xa4>
        thread_dispatch();
    80003154:	ffffe097          	auipc	ra,0xffffe
    80003158:	234080e7          	jalr	564(ra) # 80001388 <_Z15thread_dispatchv>
    for (int i = 0; i < 10000; i++) {
    8000315c:	0014849b          	addiw	s1,s1,1
    80003160:	fe9ff06f          	j	80003148 <_Z3modv+0x88>
    }

    sem_close(data.sharedSem);
    80003164:	fd843503          	ld	a0,-40(s0)
    80003168:	ffffe097          	auipc	ra,0xffffe
    8000316c:	2a0080e7          	jalr	672(ra) # 80001408 <_Z9sem_closeP4_sem>

    printString("Semaphore priority test finished\n");
    80003170:	00006517          	auipc	a0,0x6
    80003174:	2d050513          	addi	a0,a0,720 # 80009440 <CONSOLE_STATUS+0x430>
    80003178:	00002097          	auipc	ra,0x2
    8000317c:	494080e7          	jalr	1172(ra) # 8000560c <_Z11printStringPKc>
}
    80003180:	4d813083          	ld	ra,1240(sp)
    80003184:	4d013403          	ld	s0,1232(sp)
    80003188:	4c813483          	ld	s1,1224(sp)
    8000318c:	4e010113          	addi	sp,sp,1248
    80003190:	00008067          	ret

0000000080003194 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003194:	fe010113          	addi	sp,sp,-32
    80003198:	00113c23          	sd	ra,24(sp)
    8000319c:	00813823          	sd	s0,16(sp)
    800031a0:	00913423          	sd	s1,8(sp)
    800031a4:	01213023          	sd	s2,0(sp)
    800031a8:	02010413          	addi	s0,sp,32
    800031ac:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800031b0:	00000913          	li	s2,0
    800031b4:	00c0006f          	j	800031c0 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800031b8:	ffffe097          	auipc	ra,0xffffe
    800031bc:	1d0080e7          	jalr	464(ra) # 80001388 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800031c0:	ffffe097          	auipc	ra,0xffffe
    800031c4:	3d0080e7          	jalr	976(ra) # 80001590 <_Z4getcv>
    800031c8:	0005059b          	sext.w	a1,a0
    800031cc:	01b00793          	li	a5,27
    800031d0:	02f58a63          	beq	a1,a5,80003204 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800031d4:	0084b503          	ld	a0,8(s1)
    800031d8:	00003097          	auipc	ra,0x3
    800031dc:	678080e7          	jalr	1656(ra) # 80006850 <_ZN6Buffer3putEi>
        i++;
    800031e0:	0019071b          	addiw	a4,s2,1
    800031e4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800031e8:	0004a683          	lw	a3,0(s1)
    800031ec:	0026979b          	slliw	a5,a3,0x2
    800031f0:	00d787bb          	addw	a5,a5,a3
    800031f4:	0017979b          	slliw	a5,a5,0x1
    800031f8:	02f767bb          	remw	a5,a4,a5
    800031fc:	fc0792e3          	bnez	a5,800031c0 <_ZL16producerKeyboardPv+0x2c>
    80003200:	fb9ff06f          	j	800031b8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003204:	00100793          	li	a5,1
    80003208:	00009717          	auipc	a4,0x9
    8000320c:	b4f72023          	sw	a5,-1216(a4) # 8000bd48 <_ZL9threadEnd>
    data->buffer->put('!');
    80003210:	02100593          	li	a1,33
    80003214:	0084b503          	ld	a0,8(s1)
    80003218:	00003097          	auipc	ra,0x3
    8000321c:	638080e7          	jalr	1592(ra) # 80006850 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003220:	0104b503          	ld	a0,16(s1)
    80003224:	ffffe097          	auipc	ra,0xffffe
    80003228:	264080e7          	jalr	612(ra) # 80001488 <_Z10sem_signalP4_sem>
}
    8000322c:	01813083          	ld	ra,24(sp)
    80003230:	01013403          	ld	s0,16(sp)
    80003234:	00813483          	ld	s1,8(sp)
    80003238:	00013903          	ld	s2,0(sp)
    8000323c:	02010113          	addi	sp,sp,32
    80003240:	00008067          	ret

0000000080003244 <_ZL8producerPv>:

static void producer(void *arg) {
    80003244:	fe010113          	addi	sp,sp,-32
    80003248:	00113c23          	sd	ra,24(sp)
    8000324c:	00813823          	sd	s0,16(sp)
    80003250:	00913423          	sd	s1,8(sp)
    80003254:	01213023          	sd	s2,0(sp)
    80003258:	02010413          	addi	s0,sp,32
    8000325c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003260:	00000913          	li	s2,0
    80003264:	00c0006f          	j	80003270 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003268:	ffffe097          	auipc	ra,0xffffe
    8000326c:	120080e7          	jalr	288(ra) # 80001388 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003270:	00009797          	auipc	a5,0x9
    80003274:	ad87a783          	lw	a5,-1320(a5) # 8000bd48 <_ZL9threadEnd>
    80003278:	02079e63          	bnez	a5,800032b4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    8000327c:	0004a583          	lw	a1,0(s1)
    80003280:	0305859b          	addiw	a1,a1,48
    80003284:	0084b503          	ld	a0,8(s1)
    80003288:	00003097          	auipc	ra,0x3
    8000328c:	5c8080e7          	jalr	1480(ra) # 80006850 <_ZN6Buffer3putEi>
        i++;
    80003290:	0019071b          	addiw	a4,s2,1
    80003294:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003298:	0004a683          	lw	a3,0(s1)
    8000329c:	0026979b          	slliw	a5,a3,0x2
    800032a0:	00d787bb          	addw	a5,a5,a3
    800032a4:	0017979b          	slliw	a5,a5,0x1
    800032a8:	02f767bb          	remw	a5,a4,a5
    800032ac:	fc0792e3          	bnez	a5,80003270 <_ZL8producerPv+0x2c>
    800032b0:	fb9ff06f          	j	80003268 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800032b4:	0104b503          	ld	a0,16(s1)
    800032b8:	ffffe097          	auipc	ra,0xffffe
    800032bc:	1d0080e7          	jalr	464(ra) # 80001488 <_Z10sem_signalP4_sem>
}
    800032c0:	01813083          	ld	ra,24(sp)
    800032c4:	01013403          	ld	s0,16(sp)
    800032c8:	00813483          	ld	s1,8(sp)
    800032cc:	00013903          	ld	s2,0(sp)
    800032d0:	02010113          	addi	sp,sp,32
    800032d4:	00008067          	ret

00000000800032d8 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800032d8:	fd010113          	addi	sp,sp,-48
    800032dc:	02113423          	sd	ra,40(sp)
    800032e0:	02813023          	sd	s0,32(sp)
    800032e4:	00913c23          	sd	s1,24(sp)
    800032e8:	01213823          	sd	s2,16(sp)
    800032ec:	01313423          	sd	s3,8(sp)
    800032f0:	03010413          	addi	s0,sp,48
    800032f4:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800032f8:	00000993          	li	s3,0
    800032fc:	01c0006f          	j	80003318 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003300:	ffffe097          	auipc	ra,0xffffe
    80003304:	088080e7          	jalr	136(ra) # 80001388 <_Z15thread_dispatchv>
    80003308:	0500006f          	j	80003358 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000330c:	00a00513          	li	a0,10
    80003310:	ffffe097          	auipc	ra,0xffffe
    80003314:	2c0080e7          	jalr	704(ra) # 800015d0 <_Z4putcc>
    while (!threadEnd) {
    80003318:	00009797          	auipc	a5,0x9
    8000331c:	a307a783          	lw	a5,-1488(a5) # 8000bd48 <_ZL9threadEnd>
    80003320:	06079063          	bnez	a5,80003380 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003324:	00893503          	ld	a0,8(s2)
    80003328:	00003097          	auipc	ra,0x3
    8000332c:	5b8080e7          	jalr	1464(ra) # 800068e0 <_ZN6Buffer3getEv>
        i++;
    80003330:	0019849b          	addiw	s1,s3,1
    80003334:	0004899b          	sext.w	s3,s1
        putc(key);
    80003338:	0ff57513          	andi	a0,a0,255
    8000333c:	ffffe097          	auipc	ra,0xffffe
    80003340:	294080e7          	jalr	660(ra) # 800015d0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003344:	00092703          	lw	a4,0(s2)
    80003348:	0027179b          	slliw	a5,a4,0x2
    8000334c:	00e787bb          	addw	a5,a5,a4
    80003350:	02f4e7bb          	remw	a5,s1,a5
    80003354:	fa0786e3          	beqz	a5,80003300 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003358:	05000793          	li	a5,80
    8000335c:	02f4e4bb          	remw	s1,s1,a5
    80003360:	fa049ce3          	bnez	s1,80003318 <_ZL8consumerPv+0x40>
    80003364:	fa9ff06f          	j	8000330c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003368:	00893503          	ld	a0,8(s2)
    8000336c:	00003097          	auipc	ra,0x3
    80003370:	574080e7          	jalr	1396(ra) # 800068e0 <_ZN6Buffer3getEv>
        putc(key);
    80003374:	0ff57513          	andi	a0,a0,255
    80003378:	ffffe097          	auipc	ra,0xffffe
    8000337c:	258080e7          	jalr	600(ra) # 800015d0 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003380:	00893503          	ld	a0,8(s2)
    80003384:	00003097          	auipc	ra,0x3
    80003388:	5e8080e7          	jalr	1512(ra) # 8000696c <_ZN6Buffer6getCntEv>
    8000338c:	fca04ee3          	bgtz	a0,80003368 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003390:	01093503          	ld	a0,16(s2)
    80003394:	ffffe097          	auipc	ra,0xffffe
    80003398:	0f4080e7          	jalr	244(ra) # 80001488 <_Z10sem_signalP4_sem>
}
    8000339c:	02813083          	ld	ra,40(sp)
    800033a0:	02013403          	ld	s0,32(sp)
    800033a4:	01813483          	ld	s1,24(sp)
    800033a8:	01013903          	ld	s2,16(sp)
    800033ac:	00813983          	ld	s3,8(sp)
    800033b0:	03010113          	addi	sp,sp,48
    800033b4:	00008067          	ret

00000000800033b8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800033b8:	f9010113          	addi	sp,sp,-112
    800033bc:	06113423          	sd	ra,104(sp)
    800033c0:	06813023          	sd	s0,96(sp)
    800033c4:	04913c23          	sd	s1,88(sp)
    800033c8:	05213823          	sd	s2,80(sp)
    800033cc:	05313423          	sd	s3,72(sp)
    800033d0:	05413023          	sd	s4,64(sp)
    800033d4:	03513c23          	sd	s5,56(sp)
    800033d8:	03613823          	sd	s6,48(sp)
    800033dc:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800033e0:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800033e4:	00006517          	auipc	a0,0x6
    800033e8:	08450513          	addi	a0,a0,132 # 80009468 <CONSOLE_STATUS+0x458>
    800033ec:	00002097          	auipc	ra,0x2
    800033f0:	220080e7          	jalr	544(ra) # 8000560c <_Z11printStringPKc>
    getString(input, 30);
    800033f4:	01e00593          	li	a1,30
    800033f8:	fa040493          	addi	s1,s0,-96
    800033fc:	00048513          	mv	a0,s1
    80003400:	00002097          	auipc	ra,0x2
    80003404:	294080e7          	jalr	660(ra) # 80005694 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003408:	00048513          	mv	a0,s1
    8000340c:	00002097          	auipc	ra,0x2
    80003410:	360080e7          	jalr	864(ra) # 8000576c <_Z11stringToIntPKc>
    80003414:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003418:	00006517          	auipc	a0,0x6
    8000341c:	07050513          	addi	a0,a0,112 # 80009488 <CONSOLE_STATUS+0x478>
    80003420:	00002097          	auipc	ra,0x2
    80003424:	1ec080e7          	jalr	492(ra) # 8000560c <_Z11printStringPKc>
    getString(input, 30);
    80003428:	01e00593          	li	a1,30
    8000342c:	00048513          	mv	a0,s1
    80003430:	00002097          	auipc	ra,0x2
    80003434:	264080e7          	jalr	612(ra) # 80005694 <_Z9getStringPci>
    n = stringToInt(input);
    80003438:	00048513          	mv	a0,s1
    8000343c:	00002097          	auipc	ra,0x2
    80003440:	330080e7          	jalr	816(ra) # 8000576c <_Z11stringToIntPKc>
    80003444:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003448:	00006517          	auipc	a0,0x6
    8000344c:	06050513          	addi	a0,a0,96 # 800094a8 <CONSOLE_STATUS+0x498>
    80003450:	00002097          	auipc	ra,0x2
    80003454:	1bc080e7          	jalr	444(ra) # 8000560c <_Z11printStringPKc>
    80003458:	00000613          	li	a2,0
    8000345c:	00a00593          	li	a1,10
    80003460:	00090513          	mv	a0,s2
    80003464:	00002097          	auipc	ra,0x2
    80003468:	358080e7          	jalr	856(ra) # 800057bc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000346c:	00006517          	auipc	a0,0x6
    80003470:	05450513          	addi	a0,a0,84 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80003474:	00002097          	auipc	ra,0x2
    80003478:	198080e7          	jalr	408(ra) # 8000560c <_Z11printStringPKc>
    8000347c:	00000613          	li	a2,0
    80003480:	00a00593          	li	a1,10
    80003484:	00048513          	mv	a0,s1
    80003488:	00002097          	auipc	ra,0x2
    8000348c:	334080e7          	jalr	820(ra) # 800057bc <_Z8printIntiii>
    printString(".\n");
    80003490:	00006517          	auipc	a0,0x6
    80003494:	04850513          	addi	a0,a0,72 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80003498:	00002097          	auipc	ra,0x2
    8000349c:	174080e7          	jalr	372(ra) # 8000560c <_Z11printStringPKc>
    if(threadNum > n) {
    800034a0:	0324c463          	blt	s1,s2,800034c8 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800034a4:	03205c63          	blez	s2,800034dc <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800034a8:	03800513          	li	a0,56
    800034ac:	fffff097          	auipc	ra,0xfffff
    800034b0:	12c080e7          	jalr	300(ra) # 800025d8 <_Znwm>
    800034b4:	00050a13          	mv	s4,a0
    800034b8:	00048593          	mv	a1,s1
    800034bc:	00003097          	auipc	ra,0x3
    800034c0:	2f8080e7          	jalr	760(ra) # 800067b4 <_ZN6BufferC1Ei>
    800034c4:	0300006f          	j	800034f4 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800034c8:	00006517          	auipc	a0,0x6
    800034cc:	01850513          	addi	a0,a0,24 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800034d0:	00002097          	auipc	ra,0x2
    800034d4:	13c080e7          	jalr	316(ra) # 8000560c <_Z11printStringPKc>
        return;
    800034d8:	0140006f          	j	800034ec <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800034dc:	00006517          	auipc	a0,0x6
    800034e0:	04450513          	addi	a0,a0,68 # 80009520 <CONSOLE_STATUS+0x510>
    800034e4:	00002097          	auipc	ra,0x2
    800034e8:	128080e7          	jalr	296(ra) # 8000560c <_Z11printStringPKc>
        return;
    800034ec:	000b0113          	mv	sp,s6
    800034f0:	1500006f          	j	80003640 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800034f4:	00000593          	li	a1,0
    800034f8:	00009517          	auipc	a0,0x9
    800034fc:	85850513          	addi	a0,a0,-1960 # 8000bd50 <_ZL10waitForAll>
    80003500:	ffffe097          	auipc	ra,0xffffe
    80003504:	ec4080e7          	jalr	-316(ra) # 800013c4 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003508:	00391793          	slli	a5,s2,0x3
    8000350c:	00f78793          	addi	a5,a5,15
    80003510:	ff07f793          	andi	a5,a5,-16
    80003514:	40f10133          	sub	sp,sp,a5
    80003518:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000351c:	0019071b          	addiw	a4,s2,1
    80003520:	00171793          	slli	a5,a4,0x1
    80003524:	00e787b3          	add	a5,a5,a4
    80003528:	00379793          	slli	a5,a5,0x3
    8000352c:	00f78793          	addi	a5,a5,15
    80003530:	ff07f793          	andi	a5,a5,-16
    80003534:	40f10133          	sub	sp,sp,a5
    80003538:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    8000353c:	00191613          	slli	a2,s2,0x1
    80003540:	012607b3          	add	a5,a2,s2
    80003544:	00379793          	slli	a5,a5,0x3
    80003548:	00f987b3          	add	a5,s3,a5
    8000354c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003550:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003554:	00008717          	auipc	a4,0x8
    80003558:	7fc73703          	ld	a4,2044(a4) # 8000bd50 <_ZL10waitForAll>
    8000355c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003560:	00078613          	mv	a2,a5
    80003564:	00000597          	auipc	a1,0x0
    80003568:	d7458593          	addi	a1,a1,-652 # 800032d8 <_ZL8consumerPv>
    8000356c:	f9840513          	addi	a0,s0,-104
    80003570:	ffffe097          	auipc	ra,0xffffe
    80003574:	d14080e7          	jalr	-748(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003578:	00000493          	li	s1,0
    8000357c:	0280006f          	j	800035a4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003580:	00000597          	auipc	a1,0x0
    80003584:	c1458593          	addi	a1,a1,-1004 # 80003194 <_ZL16producerKeyboardPv>
                      data + i);
    80003588:	00179613          	slli	a2,a5,0x1
    8000358c:	00f60633          	add	a2,a2,a5
    80003590:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003594:	00c98633          	add	a2,s3,a2
    80003598:	ffffe097          	auipc	ra,0xffffe
    8000359c:	cec080e7          	jalr	-788(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800035a0:	0014849b          	addiw	s1,s1,1
    800035a4:	0524d263          	bge	s1,s2,800035e8 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800035a8:	00149793          	slli	a5,s1,0x1
    800035ac:	009787b3          	add	a5,a5,s1
    800035b0:	00379793          	slli	a5,a5,0x3
    800035b4:	00f987b3          	add	a5,s3,a5
    800035b8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800035bc:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800035c0:	00008717          	auipc	a4,0x8
    800035c4:	79073703          	ld	a4,1936(a4) # 8000bd50 <_ZL10waitForAll>
    800035c8:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800035cc:	00048793          	mv	a5,s1
    800035d0:	00349513          	slli	a0,s1,0x3
    800035d4:	00aa8533          	add	a0,s5,a0
    800035d8:	fa9054e3          	blez	s1,80003580 <_Z22producerConsumer_C_APIv+0x1c8>
    800035dc:	00000597          	auipc	a1,0x0
    800035e0:	c6858593          	addi	a1,a1,-920 # 80003244 <_ZL8producerPv>
    800035e4:	fa5ff06f          	j	80003588 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800035e8:	ffffe097          	auipc	ra,0xffffe
    800035ec:	da0080e7          	jalr	-608(ra) # 80001388 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800035f0:	00000493          	li	s1,0
    800035f4:	00994e63          	blt	s2,s1,80003610 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800035f8:	00008517          	auipc	a0,0x8
    800035fc:	75853503          	ld	a0,1880(a0) # 8000bd50 <_ZL10waitForAll>
    80003600:	ffffe097          	auipc	ra,0xffffe
    80003604:	e48080e7          	jalr	-440(ra) # 80001448 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003608:	0014849b          	addiw	s1,s1,1
    8000360c:	fe9ff06f          	j	800035f4 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003610:	00008517          	auipc	a0,0x8
    80003614:	74053503          	ld	a0,1856(a0) # 8000bd50 <_ZL10waitForAll>
    80003618:	ffffe097          	auipc	ra,0xffffe
    8000361c:	df0080e7          	jalr	-528(ra) # 80001408 <_Z9sem_closeP4_sem>
    delete buffer;
    80003620:	000a0e63          	beqz	s4,8000363c <_Z22producerConsumer_C_APIv+0x284>
    80003624:	000a0513          	mv	a0,s4
    80003628:	00003097          	auipc	ra,0x3
    8000362c:	3cc080e7          	jalr	972(ra) # 800069f4 <_ZN6BufferD1Ev>
    80003630:	000a0513          	mv	a0,s4
    80003634:	fffff097          	auipc	ra,0xfffff
    80003638:	ff4080e7          	jalr	-12(ra) # 80002628 <_ZdlPv>
    8000363c:	000b0113          	mv	sp,s6

}
    80003640:	f9040113          	addi	sp,s0,-112
    80003644:	06813083          	ld	ra,104(sp)
    80003648:	06013403          	ld	s0,96(sp)
    8000364c:	05813483          	ld	s1,88(sp)
    80003650:	05013903          	ld	s2,80(sp)
    80003654:	04813983          	ld	s3,72(sp)
    80003658:	04013a03          	ld	s4,64(sp)
    8000365c:	03813a83          	ld	s5,56(sp)
    80003660:	03013b03          	ld	s6,48(sp)
    80003664:	07010113          	addi	sp,sp,112
    80003668:	00008067          	ret
    8000366c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003670:	000a0513          	mv	a0,s4
    80003674:	fffff097          	auipc	ra,0xfffff
    80003678:	fb4080e7          	jalr	-76(ra) # 80002628 <_ZdlPv>
    8000367c:	00048513          	mv	a0,s1
    80003680:	00009097          	auipc	ra,0x9
    80003684:	7e8080e7          	jalr	2024(ra) # 8000ce68 <_Unwind_Resume>

0000000080003688 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003688:	fe010113          	addi	sp,sp,-32
    8000368c:	00113c23          	sd	ra,24(sp)
    80003690:	00813823          	sd	s0,16(sp)
    80003694:	00913423          	sd	s1,8(sp)
    80003698:	01213023          	sd	s2,0(sp)
    8000369c:	02010413          	addi	s0,sp,32
    800036a0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800036a4:	00100793          	li	a5,1
    800036a8:	02a7f863          	bgeu	a5,a0,800036d8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800036ac:	00a00793          	li	a5,10
    800036b0:	02f577b3          	remu	a5,a0,a5
    800036b4:	02078e63          	beqz	a5,800036f0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800036b8:	fff48513          	addi	a0,s1,-1
    800036bc:	00000097          	auipc	ra,0x0
    800036c0:	fcc080e7          	jalr	-52(ra) # 80003688 <_ZL9fibonaccim>
    800036c4:	00050913          	mv	s2,a0
    800036c8:	ffe48513          	addi	a0,s1,-2
    800036cc:	00000097          	auipc	ra,0x0
    800036d0:	fbc080e7          	jalr	-68(ra) # 80003688 <_ZL9fibonaccim>
    800036d4:	00a90533          	add	a0,s2,a0
}
    800036d8:	01813083          	ld	ra,24(sp)
    800036dc:	01013403          	ld	s0,16(sp)
    800036e0:	00813483          	ld	s1,8(sp)
    800036e4:	00013903          	ld	s2,0(sp)
    800036e8:	02010113          	addi	sp,sp,32
    800036ec:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800036f0:	ffffe097          	auipc	ra,0xffffe
    800036f4:	c98080e7          	jalr	-872(ra) # 80001388 <_Z15thread_dispatchv>
    800036f8:	fc1ff06f          	j	800036b8 <_ZL9fibonaccim+0x30>

00000000800036fc <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800036fc:	fe010113          	addi	sp,sp,-32
    80003700:	00113c23          	sd	ra,24(sp)
    80003704:	00813823          	sd	s0,16(sp)
    80003708:	00913423          	sd	s1,8(sp)
    8000370c:	01213023          	sd	s2,0(sp)
    80003710:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003714:	00000913          	li	s2,0
    80003718:	0380006f          	j	80003750 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000371c:	ffffe097          	auipc	ra,0xffffe
    80003720:	c6c080e7          	jalr	-916(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003724:	00148493          	addi	s1,s1,1
    80003728:	000027b7          	lui	a5,0x2
    8000372c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003730:	0097ee63          	bltu	a5,s1,8000374c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003734:	00000713          	li	a4,0
    80003738:	000077b7          	lui	a5,0x7
    8000373c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003740:	fce7eee3          	bltu	a5,a4,8000371c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003744:	00170713          	addi	a4,a4,1
    80003748:	ff1ff06f          	j	80003738 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000374c:	00190913          	addi	s2,s2,1
    80003750:	00900793          	li	a5,9
    80003754:	0527e063          	bltu	a5,s2,80003794 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003758:	00006517          	auipc	a0,0x6
    8000375c:	df850513          	addi	a0,a0,-520 # 80009550 <CONSOLE_STATUS+0x540>
    80003760:	00002097          	auipc	ra,0x2
    80003764:	eac080e7          	jalr	-340(ra) # 8000560c <_Z11printStringPKc>
    80003768:	00000613          	li	a2,0
    8000376c:	00a00593          	li	a1,10
    80003770:	0009051b          	sext.w	a0,s2
    80003774:	00002097          	auipc	ra,0x2
    80003778:	048080e7          	jalr	72(ra) # 800057bc <_Z8printIntiii>
    8000377c:	00006517          	auipc	a0,0x6
    80003780:	b3c50513          	addi	a0,a0,-1220 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003784:	00002097          	auipc	ra,0x2
    80003788:	e88080e7          	jalr	-376(ra) # 8000560c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000378c:	00000493          	li	s1,0
    80003790:	f99ff06f          	j	80003728 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003794:	00006517          	auipc	a0,0x6
    80003798:	dc450513          	addi	a0,a0,-572 # 80009558 <CONSOLE_STATUS+0x548>
    8000379c:	00002097          	auipc	ra,0x2
    800037a0:	e70080e7          	jalr	-400(ra) # 8000560c <_Z11printStringPKc>
    finishedA = true;
    800037a4:	00100793          	li	a5,1
    800037a8:	00008717          	auipc	a4,0x8
    800037ac:	5af70823          	sb	a5,1456(a4) # 8000bd58 <_ZL9finishedA>
}
    800037b0:	01813083          	ld	ra,24(sp)
    800037b4:	01013403          	ld	s0,16(sp)
    800037b8:	00813483          	ld	s1,8(sp)
    800037bc:	00013903          	ld	s2,0(sp)
    800037c0:	02010113          	addi	sp,sp,32
    800037c4:	00008067          	ret

00000000800037c8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800037c8:	fe010113          	addi	sp,sp,-32
    800037cc:	00113c23          	sd	ra,24(sp)
    800037d0:	00813823          	sd	s0,16(sp)
    800037d4:	00913423          	sd	s1,8(sp)
    800037d8:	01213023          	sd	s2,0(sp)
    800037dc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800037e0:	00000913          	li	s2,0
    800037e4:	0380006f          	j	8000381c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800037e8:	ffffe097          	auipc	ra,0xffffe
    800037ec:	ba0080e7          	jalr	-1120(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800037f0:	00148493          	addi	s1,s1,1
    800037f4:	000027b7          	lui	a5,0x2
    800037f8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800037fc:	0097ee63          	bltu	a5,s1,80003818 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003800:	00000713          	li	a4,0
    80003804:	000077b7          	lui	a5,0x7
    80003808:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000380c:	fce7eee3          	bltu	a5,a4,800037e8 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003810:	00170713          	addi	a4,a4,1
    80003814:	ff1ff06f          	j	80003804 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003818:	00190913          	addi	s2,s2,1
    8000381c:	00f00793          	li	a5,15
    80003820:	0527e063          	bltu	a5,s2,80003860 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003824:	00006517          	auipc	a0,0x6
    80003828:	d4450513          	addi	a0,a0,-700 # 80009568 <CONSOLE_STATUS+0x558>
    8000382c:	00002097          	auipc	ra,0x2
    80003830:	de0080e7          	jalr	-544(ra) # 8000560c <_Z11printStringPKc>
    80003834:	00000613          	li	a2,0
    80003838:	00a00593          	li	a1,10
    8000383c:	0009051b          	sext.w	a0,s2
    80003840:	00002097          	auipc	ra,0x2
    80003844:	f7c080e7          	jalr	-132(ra) # 800057bc <_Z8printIntiii>
    80003848:	00006517          	auipc	a0,0x6
    8000384c:	a7050513          	addi	a0,a0,-1424 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003850:	00002097          	auipc	ra,0x2
    80003854:	dbc080e7          	jalr	-580(ra) # 8000560c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003858:	00000493          	li	s1,0
    8000385c:	f99ff06f          	j	800037f4 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003860:	00006517          	auipc	a0,0x6
    80003864:	d1050513          	addi	a0,a0,-752 # 80009570 <CONSOLE_STATUS+0x560>
    80003868:	00002097          	auipc	ra,0x2
    8000386c:	da4080e7          	jalr	-604(ra) # 8000560c <_Z11printStringPKc>
    finishedB = true;
    80003870:	00100793          	li	a5,1
    80003874:	00008717          	auipc	a4,0x8
    80003878:	4ef702a3          	sb	a5,1253(a4) # 8000bd59 <_ZL9finishedB>
    thread_dispatch();
    8000387c:	ffffe097          	auipc	ra,0xffffe
    80003880:	b0c080e7          	jalr	-1268(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003884:	01813083          	ld	ra,24(sp)
    80003888:	01013403          	ld	s0,16(sp)
    8000388c:	00813483          	ld	s1,8(sp)
    80003890:	00013903          	ld	s2,0(sp)
    80003894:	02010113          	addi	sp,sp,32
    80003898:	00008067          	ret

000000008000389c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000389c:	fe010113          	addi	sp,sp,-32
    800038a0:	00113c23          	sd	ra,24(sp)
    800038a4:	00813823          	sd	s0,16(sp)
    800038a8:	00913423          	sd	s1,8(sp)
    800038ac:	01213023          	sd	s2,0(sp)
    800038b0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800038b4:	00000493          	li	s1,0
    800038b8:	0400006f          	j	800038f8 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800038bc:	00006517          	auipc	a0,0x6
    800038c0:	cc450513          	addi	a0,a0,-828 # 80009580 <CONSOLE_STATUS+0x570>
    800038c4:	00002097          	auipc	ra,0x2
    800038c8:	d48080e7          	jalr	-696(ra) # 8000560c <_Z11printStringPKc>
    800038cc:	00000613          	li	a2,0
    800038d0:	00a00593          	li	a1,10
    800038d4:	00048513          	mv	a0,s1
    800038d8:	00002097          	auipc	ra,0x2
    800038dc:	ee4080e7          	jalr	-284(ra) # 800057bc <_Z8printIntiii>
    800038e0:	00006517          	auipc	a0,0x6
    800038e4:	9d850513          	addi	a0,a0,-1576 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800038e8:	00002097          	auipc	ra,0x2
    800038ec:	d24080e7          	jalr	-732(ra) # 8000560c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800038f0:	0014849b          	addiw	s1,s1,1
    800038f4:	0ff4f493          	andi	s1,s1,255
    800038f8:	00200793          	li	a5,2
    800038fc:	fc97f0e3          	bgeu	a5,s1,800038bc <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003900:	00006517          	auipc	a0,0x6
    80003904:	c8850513          	addi	a0,a0,-888 # 80009588 <CONSOLE_STATUS+0x578>
    80003908:	00002097          	auipc	ra,0x2
    8000390c:	d04080e7          	jalr	-764(ra) # 8000560c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003910:	00700313          	li	t1,7
    thread_dispatch();
    80003914:	ffffe097          	auipc	ra,0xffffe
    80003918:	a74080e7          	jalr	-1420(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000391c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003920:	00006517          	auipc	a0,0x6
    80003924:	c7850513          	addi	a0,a0,-904 # 80009598 <CONSOLE_STATUS+0x588>
    80003928:	00002097          	auipc	ra,0x2
    8000392c:	ce4080e7          	jalr	-796(ra) # 8000560c <_Z11printStringPKc>
    80003930:	00000613          	li	a2,0
    80003934:	00a00593          	li	a1,10
    80003938:	0009051b          	sext.w	a0,s2
    8000393c:	00002097          	auipc	ra,0x2
    80003940:	e80080e7          	jalr	-384(ra) # 800057bc <_Z8printIntiii>
    80003944:	00006517          	auipc	a0,0x6
    80003948:	97450513          	addi	a0,a0,-1676 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000394c:	00002097          	auipc	ra,0x2
    80003950:	cc0080e7          	jalr	-832(ra) # 8000560c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003954:	00c00513          	li	a0,12
    80003958:	00000097          	auipc	ra,0x0
    8000395c:	d30080e7          	jalr	-720(ra) # 80003688 <_ZL9fibonaccim>
    80003960:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003964:	00006517          	auipc	a0,0x6
    80003968:	c3c50513          	addi	a0,a0,-964 # 800095a0 <CONSOLE_STATUS+0x590>
    8000396c:	00002097          	auipc	ra,0x2
    80003970:	ca0080e7          	jalr	-864(ra) # 8000560c <_Z11printStringPKc>
    80003974:	00000613          	li	a2,0
    80003978:	00a00593          	li	a1,10
    8000397c:	0009051b          	sext.w	a0,s2
    80003980:	00002097          	auipc	ra,0x2
    80003984:	e3c080e7          	jalr	-452(ra) # 800057bc <_Z8printIntiii>
    80003988:	00006517          	auipc	a0,0x6
    8000398c:	93050513          	addi	a0,a0,-1744 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003990:	00002097          	auipc	ra,0x2
    80003994:	c7c080e7          	jalr	-900(ra) # 8000560c <_Z11printStringPKc>
    80003998:	0400006f          	j	800039d8 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000399c:	00006517          	auipc	a0,0x6
    800039a0:	be450513          	addi	a0,a0,-1052 # 80009580 <CONSOLE_STATUS+0x570>
    800039a4:	00002097          	auipc	ra,0x2
    800039a8:	c68080e7          	jalr	-920(ra) # 8000560c <_Z11printStringPKc>
    800039ac:	00000613          	li	a2,0
    800039b0:	00a00593          	li	a1,10
    800039b4:	00048513          	mv	a0,s1
    800039b8:	00002097          	auipc	ra,0x2
    800039bc:	e04080e7          	jalr	-508(ra) # 800057bc <_Z8printIntiii>
    800039c0:	00006517          	auipc	a0,0x6
    800039c4:	8f850513          	addi	a0,a0,-1800 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800039c8:	00002097          	auipc	ra,0x2
    800039cc:	c44080e7          	jalr	-956(ra) # 8000560c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800039d0:	0014849b          	addiw	s1,s1,1
    800039d4:	0ff4f493          	andi	s1,s1,255
    800039d8:	00500793          	li	a5,5
    800039dc:	fc97f0e3          	bgeu	a5,s1,8000399c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800039e0:	00006517          	auipc	a0,0x6
    800039e4:	b7850513          	addi	a0,a0,-1160 # 80009558 <CONSOLE_STATUS+0x548>
    800039e8:	00002097          	auipc	ra,0x2
    800039ec:	c24080e7          	jalr	-988(ra) # 8000560c <_Z11printStringPKc>
    finishedC = true;
    800039f0:	00100793          	li	a5,1
    800039f4:	00008717          	auipc	a4,0x8
    800039f8:	36f70323          	sb	a5,870(a4) # 8000bd5a <_ZL9finishedC>
    thread_dispatch();
    800039fc:	ffffe097          	auipc	ra,0xffffe
    80003a00:	98c080e7          	jalr	-1652(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003a04:	01813083          	ld	ra,24(sp)
    80003a08:	01013403          	ld	s0,16(sp)
    80003a0c:	00813483          	ld	s1,8(sp)
    80003a10:	00013903          	ld	s2,0(sp)
    80003a14:	02010113          	addi	sp,sp,32
    80003a18:	00008067          	ret

0000000080003a1c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003a1c:	fe010113          	addi	sp,sp,-32
    80003a20:	00113c23          	sd	ra,24(sp)
    80003a24:	00813823          	sd	s0,16(sp)
    80003a28:	00913423          	sd	s1,8(sp)
    80003a2c:	01213023          	sd	s2,0(sp)
    80003a30:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003a34:	00a00493          	li	s1,10
    80003a38:	0400006f          	j	80003a78 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003a3c:	00006517          	auipc	a0,0x6
    80003a40:	b7450513          	addi	a0,a0,-1164 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80003a44:	00002097          	auipc	ra,0x2
    80003a48:	bc8080e7          	jalr	-1080(ra) # 8000560c <_Z11printStringPKc>
    80003a4c:	00000613          	li	a2,0
    80003a50:	00a00593          	li	a1,10
    80003a54:	00048513          	mv	a0,s1
    80003a58:	00002097          	auipc	ra,0x2
    80003a5c:	d64080e7          	jalr	-668(ra) # 800057bc <_Z8printIntiii>
    80003a60:	00006517          	auipc	a0,0x6
    80003a64:	85850513          	addi	a0,a0,-1960 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003a68:	00002097          	auipc	ra,0x2
    80003a6c:	ba4080e7          	jalr	-1116(ra) # 8000560c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003a70:	0014849b          	addiw	s1,s1,1
    80003a74:	0ff4f493          	andi	s1,s1,255
    80003a78:	00c00793          	li	a5,12
    80003a7c:	fc97f0e3          	bgeu	a5,s1,80003a3c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003a80:	00006517          	auipc	a0,0x6
    80003a84:	b3850513          	addi	a0,a0,-1224 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80003a88:	00002097          	auipc	ra,0x2
    80003a8c:	b84080e7          	jalr	-1148(ra) # 8000560c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003a90:	00500313          	li	t1,5
    thread_dispatch();
    80003a94:	ffffe097          	auipc	ra,0xffffe
    80003a98:	8f4080e7          	jalr	-1804(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003a9c:	01000513          	li	a0,16
    80003aa0:	00000097          	auipc	ra,0x0
    80003aa4:	be8080e7          	jalr	-1048(ra) # 80003688 <_ZL9fibonaccim>
    80003aa8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003aac:	00006517          	auipc	a0,0x6
    80003ab0:	b1c50513          	addi	a0,a0,-1252 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80003ab4:	00002097          	auipc	ra,0x2
    80003ab8:	b58080e7          	jalr	-1192(ra) # 8000560c <_Z11printStringPKc>
    80003abc:	00000613          	li	a2,0
    80003ac0:	00a00593          	li	a1,10
    80003ac4:	0009051b          	sext.w	a0,s2
    80003ac8:	00002097          	auipc	ra,0x2
    80003acc:	cf4080e7          	jalr	-780(ra) # 800057bc <_Z8printIntiii>
    80003ad0:	00005517          	auipc	a0,0x5
    80003ad4:	7e850513          	addi	a0,a0,2024 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003ad8:	00002097          	auipc	ra,0x2
    80003adc:	b34080e7          	jalr	-1228(ra) # 8000560c <_Z11printStringPKc>
    80003ae0:	0400006f          	j	80003b20 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003ae4:	00006517          	auipc	a0,0x6
    80003ae8:	acc50513          	addi	a0,a0,-1332 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80003aec:	00002097          	auipc	ra,0x2
    80003af0:	b20080e7          	jalr	-1248(ra) # 8000560c <_Z11printStringPKc>
    80003af4:	00000613          	li	a2,0
    80003af8:	00a00593          	li	a1,10
    80003afc:	00048513          	mv	a0,s1
    80003b00:	00002097          	auipc	ra,0x2
    80003b04:	cbc080e7          	jalr	-836(ra) # 800057bc <_Z8printIntiii>
    80003b08:	00005517          	auipc	a0,0x5
    80003b0c:	7b050513          	addi	a0,a0,1968 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003b10:	00002097          	auipc	ra,0x2
    80003b14:	afc080e7          	jalr	-1284(ra) # 8000560c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003b18:	0014849b          	addiw	s1,s1,1
    80003b1c:	0ff4f493          	andi	s1,s1,255
    80003b20:	00f00793          	li	a5,15
    80003b24:	fc97f0e3          	bgeu	a5,s1,80003ae4 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003b28:	00006517          	auipc	a0,0x6
    80003b2c:	ab050513          	addi	a0,a0,-1360 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80003b30:	00002097          	auipc	ra,0x2
    80003b34:	adc080e7          	jalr	-1316(ra) # 8000560c <_Z11printStringPKc>
    finishedD = true;
    80003b38:	00100793          	li	a5,1
    80003b3c:	00008717          	auipc	a4,0x8
    80003b40:	20f70fa3          	sb	a5,543(a4) # 8000bd5b <_ZL9finishedD>
    thread_dispatch();
    80003b44:	ffffe097          	auipc	ra,0xffffe
    80003b48:	844080e7          	jalr	-1980(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003b4c:	01813083          	ld	ra,24(sp)
    80003b50:	01013403          	ld	s0,16(sp)
    80003b54:	00813483          	ld	s1,8(sp)
    80003b58:	00013903          	ld	s2,0(sp)
    80003b5c:	02010113          	addi	sp,sp,32
    80003b60:	00008067          	ret

0000000080003b64 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003b64:	fc010113          	addi	sp,sp,-64
    80003b68:	02113c23          	sd	ra,56(sp)
    80003b6c:	02813823          	sd	s0,48(sp)
    80003b70:	02913423          	sd	s1,40(sp)
    80003b74:	03213023          	sd	s2,32(sp)
    80003b78:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003b7c:	02000513          	li	a0,32
    80003b80:	fffff097          	auipc	ra,0xfffff
    80003b84:	a58080e7          	jalr	-1448(ra) # 800025d8 <_Znwm>
    80003b88:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003b8c:	fffff097          	auipc	ra,0xfffff
    80003b90:	d24080e7          	jalr	-732(ra) # 800028b0 <_ZN6ThreadC1Ev>
    80003b94:	00008797          	auipc	a5,0x8
    80003b98:	f3c78793          	addi	a5,a5,-196 # 8000bad0 <_ZTV7WorkerA+0x10>
    80003b9c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003ba0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003ba4:	00006517          	auipc	a0,0x6
    80003ba8:	a4450513          	addi	a0,a0,-1468 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80003bac:	00002097          	auipc	ra,0x2
    80003bb0:	a60080e7          	jalr	-1440(ra) # 8000560c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003bb4:	02000513          	li	a0,32
    80003bb8:	fffff097          	auipc	ra,0xfffff
    80003bbc:	a20080e7          	jalr	-1504(ra) # 800025d8 <_Znwm>
    80003bc0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003bc4:	fffff097          	auipc	ra,0xfffff
    80003bc8:	cec080e7          	jalr	-788(ra) # 800028b0 <_ZN6ThreadC1Ev>
    80003bcc:	00008797          	auipc	a5,0x8
    80003bd0:	f2c78793          	addi	a5,a5,-212 # 8000baf8 <_ZTV7WorkerB+0x10>
    80003bd4:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003bd8:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003bdc:	00006517          	auipc	a0,0x6
    80003be0:	a2450513          	addi	a0,a0,-1500 # 80009600 <CONSOLE_STATUS+0x5f0>
    80003be4:	00002097          	auipc	ra,0x2
    80003be8:	a28080e7          	jalr	-1496(ra) # 8000560c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003bec:	02000513          	li	a0,32
    80003bf0:	fffff097          	auipc	ra,0xfffff
    80003bf4:	9e8080e7          	jalr	-1560(ra) # 800025d8 <_Znwm>
    80003bf8:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003bfc:	fffff097          	auipc	ra,0xfffff
    80003c00:	cb4080e7          	jalr	-844(ra) # 800028b0 <_ZN6ThreadC1Ev>
    80003c04:	00008797          	auipc	a5,0x8
    80003c08:	f1c78793          	addi	a5,a5,-228 # 8000bb20 <_ZTV7WorkerC+0x10>
    80003c0c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003c10:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003c14:	00006517          	auipc	a0,0x6
    80003c18:	a0450513          	addi	a0,a0,-1532 # 80009618 <CONSOLE_STATUS+0x608>
    80003c1c:	00002097          	auipc	ra,0x2
    80003c20:	9f0080e7          	jalr	-1552(ra) # 8000560c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003c24:	02000513          	li	a0,32
    80003c28:	fffff097          	auipc	ra,0xfffff
    80003c2c:	9b0080e7          	jalr	-1616(ra) # 800025d8 <_Znwm>
    80003c30:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003c34:	fffff097          	auipc	ra,0xfffff
    80003c38:	c7c080e7          	jalr	-900(ra) # 800028b0 <_ZN6ThreadC1Ev>
    80003c3c:	00008797          	auipc	a5,0x8
    80003c40:	f0c78793          	addi	a5,a5,-244 # 8000bb48 <_ZTV7WorkerD+0x10>
    80003c44:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003c48:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003c4c:	00006517          	auipc	a0,0x6
    80003c50:	9e450513          	addi	a0,a0,-1564 # 80009630 <CONSOLE_STATUS+0x620>
    80003c54:	00002097          	auipc	ra,0x2
    80003c58:	9b8080e7          	jalr	-1608(ra) # 8000560c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003c5c:	00000493          	li	s1,0
    80003c60:	00300793          	li	a5,3
    80003c64:	0297c663          	blt	a5,s1,80003c90 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003c68:	00349793          	slli	a5,s1,0x3
    80003c6c:	fe040713          	addi	a4,s0,-32
    80003c70:	00f707b3          	add	a5,a4,a5
    80003c74:	fe07b503          	ld	a0,-32(a5)
    80003c78:	fffff097          	auipc	ra,0xfffff
    80003c7c:	c68080e7          	jalr	-920(ra) # 800028e0 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003c80:	0014849b          	addiw	s1,s1,1
    80003c84:	fddff06f          	j	80003c60 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003c88:	fffff097          	auipc	ra,0xfffff
    80003c8c:	cac080e7          	jalr	-852(ra) # 80002934 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003c90:	00008797          	auipc	a5,0x8
    80003c94:	0c87c783          	lbu	a5,200(a5) # 8000bd58 <_ZL9finishedA>
    80003c98:	fe0788e3          	beqz	a5,80003c88 <_Z20Threads_CPP_API_testv+0x124>
    80003c9c:	00008797          	auipc	a5,0x8
    80003ca0:	0bd7c783          	lbu	a5,189(a5) # 8000bd59 <_ZL9finishedB>
    80003ca4:	fe0782e3          	beqz	a5,80003c88 <_Z20Threads_CPP_API_testv+0x124>
    80003ca8:	00008797          	auipc	a5,0x8
    80003cac:	0b27c783          	lbu	a5,178(a5) # 8000bd5a <_ZL9finishedC>
    80003cb0:	fc078ce3          	beqz	a5,80003c88 <_Z20Threads_CPP_API_testv+0x124>
    80003cb4:	00008797          	auipc	a5,0x8
    80003cb8:	0a77c783          	lbu	a5,167(a5) # 8000bd5b <_ZL9finishedD>
    80003cbc:	fc0786e3          	beqz	a5,80003c88 <_Z20Threads_CPP_API_testv+0x124>
    80003cc0:	fc040493          	addi	s1,s0,-64
    80003cc4:	0080006f          	j	80003ccc <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003cc8:	00848493          	addi	s1,s1,8
    80003ccc:	fe040793          	addi	a5,s0,-32
    80003cd0:	08f48663          	beq	s1,a5,80003d5c <_Z20Threads_CPP_API_testv+0x1f8>
    80003cd4:	0004b503          	ld	a0,0(s1)
    80003cd8:	fe0508e3          	beqz	a0,80003cc8 <_Z20Threads_CPP_API_testv+0x164>
    80003cdc:	00053783          	ld	a5,0(a0)
    80003ce0:	0087b783          	ld	a5,8(a5)
    80003ce4:	000780e7          	jalr	a5
    80003ce8:	fe1ff06f          	j	80003cc8 <_Z20Threads_CPP_API_testv+0x164>
    80003cec:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003cf0:	00048513          	mv	a0,s1
    80003cf4:	fffff097          	auipc	ra,0xfffff
    80003cf8:	934080e7          	jalr	-1740(ra) # 80002628 <_ZdlPv>
    80003cfc:	00090513          	mv	a0,s2
    80003d00:	00009097          	auipc	ra,0x9
    80003d04:	168080e7          	jalr	360(ra) # 8000ce68 <_Unwind_Resume>
    80003d08:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003d0c:	00048513          	mv	a0,s1
    80003d10:	fffff097          	auipc	ra,0xfffff
    80003d14:	918080e7          	jalr	-1768(ra) # 80002628 <_ZdlPv>
    80003d18:	00090513          	mv	a0,s2
    80003d1c:	00009097          	auipc	ra,0x9
    80003d20:	14c080e7          	jalr	332(ra) # 8000ce68 <_Unwind_Resume>
    80003d24:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003d28:	00048513          	mv	a0,s1
    80003d2c:	fffff097          	auipc	ra,0xfffff
    80003d30:	8fc080e7          	jalr	-1796(ra) # 80002628 <_ZdlPv>
    80003d34:	00090513          	mv	a0,s2
    80003d38:	00009097          	auipc	ra,0x9
    80003d3c:	130080e7          	jalr	304(ra) # 8000ce68 <_Unwind_Resume>
    80003d40:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003d44:	00048513          	mv	a0,s1
    80003d48:	fffff097          	auipc	ra,0xfffff
    80003d4c:	8e0080e7          	jalr	-1824(ra) # 80002628 <_ZdlPv>
    80003d50:	00090513          	mv	a0,s2
    80003d54:	00009097          	auipc	ra,0x9
    80003d58:	114080e7          	jalr	276(ra) # 8000ce68 <_Unwind_Resume>
}
    80003d5c:	03813083          	ld	ra,56(sp)
    80003d60:	03013403          	ld	s0,48(sp)
    80003d64:	02813483          	ld	s1,40(sp)
    80003d68:	02013903          	ld	s2,32(sp)
    80003d6c:	04010113          	addi	sp,sp,64
    80003d70:	00008067          	ret

0000000080003d74 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003d74:	ff010113          	addi	sp,sp,-16
    80003d78:	00113423          	sd	ra,8(sp)
    80003d7c:	00813023          	sd	s0,0(sp)
    80003d80:	01010413          	addi	s0,sp,16
    80003d84:	00008797          	auipc	a5,0x8
    80003d88:	d4c78793          	addi	a5,a5,-692 # 8000bad0 <_ZTV7WorkerA+0x10>
    80003d8c:	00f53023          	sd	a5,0(a0)
    80003d90:	fffff097          	auipc	ra,0xfffff
    80003d94:	9fc080e7          	jalr	-1540(ra) # 8000278c <_ZN6ThreadD1Ev>
    80003d98:	00813083          	ld	ra,8(sp)
    80003d9c:	00013403          	ld	s0,0(sp)
    80003da0:	01010113          	addi	sp,sp,16
    80003da4:	00008067          	ret

0000000080003da8 <_ZN7WorkerAD0Ev>:
    80003da8:	fe010113          	addi	sp,sp,-32
    80003dac:	00113c23          	sd	ra,24(sp)
    80003db0:	00813823          	sd	s0,16(sp)
    80003db4:	00913423          	sd	s1,8(sp)
    80003db8:	02010413          	addi	s0,sp,32
    80003dbc:	00050493          	mv	s1,a0
    80003dc0:	00008797          	auipc	a5,0x8
    80003dc4:	d1078793          	addi	a5,a5,-752 # 8000bad0 <_ZTV7WorkerA+0x10>
    80003dc8:	00f53023          	sd	a5,0(a0)
    80003dcc:	fffff097          	auipc	ra,0xfffff
    80003dd0:	9c0080e7          	jalr	-1600(ra) # 8000278c <_ZN6ThreadD1Ev>
    80003dd4:	00048513          	mv	a0,s1
    80003dd8:	fffff097          	auipc	ra,0xfffff
    80003ddc:	850080e7          	jalr	-1968(ra) # 80002628 <_ZdlPv>
    80003de0:	01813083          	ld	ra,24(sp)
    80003de4:	01013403          	ld	s0,16(sp)
    80003de8:	00813483          	ld	s1,8(sp)
    80003dec:	02010113          	addi	sp,sp,32
    80003df0:	00008067          	ret

0000000080003df4 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003df4:	ff010113          	addi	sp,sp,-16
    80003df8:	00113423          	sd	ra,8(sp)
    80003dfc:	00813023          	sd	s0,0(sp)
    80003e00:	01010413          	addi	s0,sp,16
    80003e04:	00008797          	auipc	a5,0x8
    80003e08:	cf478793          	addi	a5,a5,-780 # 8000baf8 <_ZTV7WorkerB+0x10>
    80003e0c:	00f53023          	sd	a5,0(a0)
    80003e10:	fffff097          	auipc	ra,0xfffff
    80003e14:	97c080e7          	jalr	-1668(ra) # 8000278c <_ZN6ThreadD1Ev>
    80003e18:	00813083          	ld	ra,8(sp)
    80003e1c:	00013403          	ld	s0,0(sp)
    80003e20:	01010113          	addi	sp,sp,16
    80003e24:	00008067          	ret

0000000080003e28 <_ZN7WorkerBD0Ev>:
    80003e28:	fe010113          	addi	sp,sp,-32
    80003e2c:	00113c23          	sd	ra,24(sp)
    80003e30:	00813823          	sd	s0,16(sp)
    80003e34:	00913423          	sd	s1,8(sp)
    80003e38:	02010413          	addi	s0,sp,32
    80003e3c:	00050493          	mv	s1,a0
    80003e40:	00008797          	auipc	a5,0x8
    80003e44:	cb878793          	addi	a5,a5,-840 # 8000baf8 <_ZTV7WorkerB+0x10>
    80003e48:	00f53023          	sd	a5,0(a0)
    80003e4c:	fffff097          	auipc	ra,0xfffff
    80003e50:	940080e7          	jalr	-1728(ra) # 8000278c <_ZN6ThreadD1Ev>
    80003e54:	00048513          	mv	a0,s1
    80003e58:	ffffe097          	auipc	ra,0xffffe
    80003e5c:	7d0080e7          	jalr	2000(ra) # 80002628 <_ZdlPv>
    80003e60:	01813083          	ld	ra,24(sp)
    80003e64:	01013403          	ld	s0,16(sp)
    80003e68:	00813483          	ld	s1,8(sp)
    80003e6c:	02010113          	addi	sp,sp,32
    80003e70:	00008067          	ret

0000000080003e74 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003e74:	ff010113          	addi	sp,sp,-16
    80003e78:	00113423          	sd	ra,8(sp)
    80003e7c:	00813023          	sd	s0,0(sp)
    80003e80:	01010413          	addi	s0,sp,16
    80003e84:	00008797          	auipc	a5,0x8
    80003e88:	c9c78793          	addi	a5,a5,-868 # 8000bb20 <_ZTV7WorkerC+0x10>
    80003e8c:	00f53023          	sd	a5,0(a0)
    80003e90:	fffff097          	auipc	ra,0xfffff
    80003e94:	8fc080e7          	jalr	-1796(ra) # 8000278c <_ZN6ThreadD1Ev>
    80003e98:	00813083          	ld	ra,8(sp)
    80003e9c:	00013403          	ld	s0,0(sp)
    80003ea0:	01010113          	addi	sp,sp,16
    80003ea4:	00008067          	ret

0000000080003ea8 <_ZN7WorkerCD0Ev>:
    80003ea8:	fe010113          	addi	sp,sp,-32
    80003eac:	00113c23          	sd	ra,24(sp)
    80003eb0:	00813823          	sd	s0,16(sp)
    80003eb4:	00913423          	sd	s1,8(sp)
    80003eb8:	02010413          	addi	s0,sp,32
    80003ebc:	00050493          	mv	s1,a0
    80003ec0:	00008797          	auipc	a5,0x8
    80003ec4:	c6078793          	addi	a5,a5,-928 # 8000bb20 <_ZTV7WorkerC+0x10>
    80003ec8:	00f53023          	sd	a5,0(a0)
    80003ecc:	fffff097          	auipc	ra,0xfffff
    80003ed0:	8c0080e7          	jalr	-1856(ra) # 8000278c <_ZN6ThreadD1Ev>
    80003ed4:	00048513          	mv	a0,s1
    80003ed8:	ffffe097          	auipc	ra,0xffffe
    80003edc:	750080e7          	jalr	1872(ra) # 80002628 <_ZdlPv>
    80003ee0:	01813083          	ld	ra,24(sp)
    80003ee4:	01013403          	ld	s0,16(sp)
    80003ee8:	00813483          	ld	s1,8(sp)
    80003eec:	02010113          	addi	sp,sp,32
    80003ef0:	00008067          	ret

0000000080003ef4 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003ef4:	ff010113          	addi	sp,sp,-16
    80003ef8:	00113423          	sd	ra,8(sp)
    80003efc:	00813023          	sd	s0,0(sp)
    80003f00:	01010413          	addi	s0,sp,16
    80003f04:	00008797          	auipc	a5,0x8
    80003f08:	c4478793          	addi	a5,a5,-956 # 8000bb48 <_ZTV7WorkerD+0x10>
    80003f0c:	00f53023          	sd	a5,0(a0)
    80003f10:	fffff097          	auipc	ra,0xfffff
    80003f14:	87c080e7          	jalr	-1924(ra) # 8000278c <_ZN6ThreadD1Ev>
    80003f18:	00813083          	ld	ra,8(sp)
    80003f1c:	00013403          	ld	s0,0(sp)
    80003f20:	01010113          	addi	sp,sp,16
    80003f24:	00008067          	ret

0000000080003f28 <_ZN7WorkerDD0Ev>:
    80003f28:	fe010113          	addi	sp,sp,-32
    80003f2c:	00113c23          	sd	ra,24(sp)
    80003f30:	00813823          	sd	s0,16(sp)
    80003f34:	00913423          	sd	s1,8(sp)
    80003f38:	02010413          	addi	s0,sp,32
    80003f3c:	00050493          	mv	s1,a0
    80003f40:	00008797          	auipc	a5,0x8
    80003f44:	c0878793          	addi	a5,a5,-1016 # 8000bb48 <_ZTV7WorkerD+0x10>
    80003f48:	00f53023          	sd	a5,0(a0)
    80003f4c:	fffff097          	auipc	ra,0xfffff
    80003f50:	840080e7          	jalr	-1984(ra) # 8000278c <_ZN6ThreadD1Ev>
    80003f54:	00048513          	mv	a0,s1
    80003f58:	ffffe097          	auipc	ra,0xffffe
    80003f5c:	6d0080e7          	jalr	1744(ra) # 80002628 <_ZdlPv>
    80003f60:	01813083          	ld	ra,24(sp)
    80003f64:	01013403          	ld	s0,16(sp)
    80003f68:	00813483          	ld	s1,8(sp)
    80003f6c:	02010113          	addi	sp,sp,32
    80003f70:	00008067          	ret

0000000080003f74 <_ZN7WorkerA3runEv>:
    void run() override {
    80003f74:	ff010113          	addi	sp,sp,-16
    80003f78:	00113423          	sd	ra,8(sp)
    80003f7c:	00813023          	sd	s0,0(sp)
    80003f80:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003f84:	00000593          	li	a1,0
    80003f88:	fffff097          	auipc	ra,0xfffff
    80003f8c:	774080e7          	jalr	1908(ra) # 800036fc <_ZN7WorkerA11workerBodyAEPv>
    }
    80003f90:	00813083          	ld	ra,8(sp)
    80003f94:	00013403          	ld	s0,0(sp)
    80003f98:	01010113          	addi	sp,sp,16
    80003f9c:	00008067          	ret

0000000080003fa0 <_ZN7WorkerB3runEv>:
    void run() override {
    80003fa0:	ff010113          	addi	sp,sp,-16
    80003fa4:	00113423          	sd	ra,8(sp)
    80003fa8:	00813023          	sd	s0,0(sp)
    80003fac:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003fb0:	00000593          	li	a1,0
    80003fb4:	00000097          	auipc	ra,0x0
    80003fb8:	814080e7          	jalr	-2028(ra) # 800037c8 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003fbc:	00813083          	ld	ra,8(sp)
    80003fc0:	00013403          	ld	s0,0(sp)
    80003fc4:	01010113          	addi	sp,sp,16
    80003fc8:	00008067          	ret

0000000080003fcc <_ZN7WorkerC3runEv>:
    void run() override {
    80003fcc:	ff010113          	addi	sp,sp,-16
    80003fd0:	00113423          	sd	ra,8(sp)
    80003fd4:	00813023          	sd	s0,0(sp)
    80003fd8:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003fdc:	00000593          	li	a1,0
    80003fe0:	00000097          	auipc	ra,0x0
    80003fe4:	8bc080e7          	jalr	-1860(ra) # 8000389c <_ZN7WorkerC11workerBodyCEPv>
    }
    80003fe8:	00813083          	ld	ra,8(sp)
    80003fec:	00013403          	ld	s0,0(sp)
    80003ff0:	01010113          	addi	sp,sp,16
    80003ff4:	00008067          	ret

0000000080003ff8 <_ZN7WorkerD3runEv>:
    void run() override {
    80003ff8:	ff010113          	addi	sp,sp,-16
    80003ffc:	00113423          	sd	ra,8(sp)
    80004000:	00813023          	sd	s0,0(sp)
    80004004:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004008:	00000593          	li	a1,0
    8000400c:	00000097          	auipc	ra,0x0
    80004010:	a10080e7          	jalr	-1520(ra) # 80003a1c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004014:	00813083          	ld	ra,8(sp)
    80004018:	00013403          	ld	s0,0(sp)
    8000401c:	01010113          	addi	sp,sp,16
    80004020:	00008067          	ret

0000000080004024 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004024:	f8010113          	addi	sp,sp,-128
    80004028:	06113c23          	sd	ra,120(sp)
    8000402c:	06813823          	sd	s0,112(sp)
    80004030:	06913423          	sd	s1,104(sp)
    80004034:	07213023          	sd	s2,96(sp)
    80004038:	05313c23          	sd	s3,88(sp)
    8000403c:	05413823          	sd	s4,80(sp)
    80004040:	05513423          	sd	s5,72(sp)
    80004044:	05613023          	sd	s6,64(sp)
    80004048:	03713c23          	sd	s7,56(sp)
    8000404c:	03813823          	sd	s8,48(sp)
    80004050:	03913423          	sd	s9,40(sp)
    80004054:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004058:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000405c:	00005517          	auipc	a0,0x5
    80004060:	40c50513          	addi	a0,a0,1036 # 80009468 <CONSOLE_STATUS+0x458>
    80004064:	00001097          	auipc	ra,0x1
    80004068:	5a8080e7          	jalr	1448(ra) # 8000560c <_Z11printStringPKc>
    getString(input, 30);
    8000406c:	01e00593          	li	a1,30
    80004070:	f8040493          	addi	s1,s0,-128
    80004074:	00048513          	mv	a0,s1
    80004078:	00001097          	auipc	ra,0x1
    8000407c:	61c080e7          	jalr	1564(ra) # 80005694 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004080:	00048513          	mv	a0,s1
    80004084:	00001097          	auipc	ra,0x1
    80004088:	6e8080e7          	jalr	1768(ra) # 8000576c <_Z11stringToIntPKc>
    8000408c:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004090:	00005517          	auipc	a0,0x5
    80004094:	3f850513          	addi	a0,a0,1016 # 80009488 <CONSOLE_STATUS+0x478>
    80004098:	00001097          	auipc	ra,0x1
    8000409c:	574080e7          	jalr	1396(ra) # 8000560c <_Z11printStringPKc>
    getString(input, 30);
    800040a0:	01e00593          	li	a1,30
    800040a4:	00048513          	mv	a0,s1
    800040a8:	00001097          	auipc	ra,0x1
    800040ac:	5ec080e7          	jalr	1516(ra) # 80005694 <_Z9getStringPci>
    n = stringToInt(input);
    800040b0:	00048513          	mv	a0,s1
    800040b4:	00001097          	auipc	ra,0x1
    800040b8:	6b8080e7          	jalr	1720(ra) # 8000576c <_Z11stringToIntPKc>
    800040bc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800040c0:	00005517          	auipc	a0,0x5
    800040c4:	3e850513          	addi	a0,a0,1000 # 800094a8 <CONSOLE_STATUS+0x498>
    800040c8:	00001097          	auipc	ra,0x1
    800040cc:	544080e7          	jalr	1348(ra) # 8000560c <_Z11printStringPKc>
    printInt(threadNum);
    800040d0:	00000613          	li	a2,0
    800040d4:	00a00593          	li	a1,10
    800040d8:	00098513          	mv	a0,s3
    800040dc:	00001097          	auipc	ra,0x1
    800040e0:	6e0080e7          	jalr	1760(ra) # 800057bc <_Z8printIntiii>
    printString(" i velicina bafera ");
    800040e4:	00005517          	auipc	a0,0x5
    800040e8:	3dc50513          	addi	a0,a0,988 # 800094c0 <CONSOLE_STATUS+0x4b0>
    800040ec:	00001097          	auipc	ra,0x1
    800040f0:	520080e7          	jalr	1312(ra) # 8000560c <_Z11printStringPKc>
    printInt(n);
    800040f4:	00000613          	li	a2,0
    800040f8:	00a00593          	li	a1,10
    800040fc:	00048513          	mv	a0,s1
    80004100:	00001097          	auipc	ra,0x1
    80004104:	6bc080e7          	jalr	1724(ra) # 800057bc <_Z8printIntiii>
    printString(".\n");
    80004108:	00005517          	auipc	a0,0x5
    8000410c:	3d050513          	addi	a0,a0,976 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80004110:	00001097          	auipc	ra,0x1
    80004114:	4fc080e7          	jalr	1276(ra) # 8000560c <_Z11printStringPKc>
    if (threadNum > n) {
    80004118:	0334c463          	blt	s1,s3,80004140 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000411c:	03305c63          	blez	s3,80004154 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004120:	03800513          	li	a0,56
    80004124:	ffffe097          	auipc	ra,0xffffe
    80004128:	4b4080e7          	jalr	1204(ra) # 800025d8 <_Znwm>
    8000412c:	00050a93          	mv	s5,a0
    80004130:	00048593          	mv	a1,s1
    80004134:	00001097          	auipc	ra,0x1
    80004138:	7a8080e7          	jalr	1960(ra) # 800058dc <_ZN9BufferCPPC1Ei>
    8000413c:	0300006f          	j	8000416c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004140:	00005517          	auipc	a0,0x5
    80004144:	3a050513          	addi	a0,a0,928 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80004148:	00001097          	auipc	ra,0x1
    8000414c:	4c4080e7          	jalr	1220(ra) # 8000560c <_Z11printStringPKc>
        return;
    80004150:	0140006f          	j	80004164 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004154:	00005517          	auipc	a0,0x5
    80004158:	3cc50513          	addi	a0,a0,972 # 80009520 <CONSOLE_STATUS+0x510>
    8000415c:	00001097          	auipc	ra,0x1
    80004160:	4b0080e7          	jalr	1200(ra) # 8000560c <_Z11printStringPKc>
        return;
    80004164:	000c0113          	mv	sp,s8
    80004168:	2140006f          	j	8000437c <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    8000416c:	01000513          	li	a0,16
    80004170:	ffffe097          	auipc	ra,0xffffe
    80004174:	468080e7          	jalr	1128(ra) # 800025d8 <_Znwm>
    80004178:	00050913          	mv	s2,a0
    8000417c:	00000593          	li	a1,0
    80004180:	fffff097          	auipc	ra,0xfffff
    80004184:	804080e7          	jalr	-2044(ra) # 80002984 <_ZN9SemaphoreC1Ej>
    80004188:	00008797          	auipc	a5,0x8
    8000418c:	bf27b023          	sd	s2,-1056(a5) # 8000bd68 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004190:	00399793          	slli	a5,s3,0x3
    80004194:	00f78793          	addi	a5,a5,15
    80004198:	ff07f793          	andi	a5,a5,-16
    8000419c:	40f10133          	sub	sp,sp,a5
    800041a0:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800041a4:	0019871b          	addiw	a4,s3,1
    800041a8:	00171793          	slli	a5,a4,0x1
    800041ac:	00e787b3          	add	a5,a5,a4
    800041b0:	00379793          	slli	a5,a5,0x3
    800041b4:	00f78793          	addi	a5,a5,15
    800041b8:	ff07f793          	andi	a5,a5,-16
    800041bc:	40f10133          	sub	sp,sp,a5
    800041c0:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800041c4:	00199493          	slli	s1,s3,0x1
    800041c8:	013484b3          	add	s1,s1,s3
    800041cc:	00349493          	slli	s1,s1,0x3
    800041d0:	009b04b3          	add	s1,s6,s1
    800041d4:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800041d8:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800041dc:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800041e0:	02800513          	li	a0,40
    800041e4:	ffffe097          	auipc	ra,0xffffe
    800041e8:	3f4080e7          	jalr	1012(ra) # 800025d8 <_Znwm>
    800041ec:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800041f0:	ffffe097          	auipc	ra,0xffffe
    800041f4:	6c0080e7          	jalr	1728(ra) # 800028b0 <_ZN6ThreadC1Ev>
    800041f8:	00008797          	auipc	a5,0x8
    800041fc:	9c878793          	addi	a5,a5,-1592 # 8000bbc0 <_ZTV8Consumer+0x10>
    80004200:	00fbb023          	sd	a5,0(s7)
    80004204:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004208:	000b8513          	mv	a0,s7
    8000420c:	ffffe097          	auipc	ra,0xffffe
    80004210:	6d4080e7          	jalr	1748(ra) # 800028e0 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004214:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004218:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    8000421c:	00008797          	auipc	a5,0x8
    80004220:	b4c7b783          	ld	a5,-1204(a5) # 8000bd68 <_ZL10waitForAll>
    80004224:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004228:	02800513          	li	a0,40
    8000422c:	ffffe097          	auipc	ra,0xffffe
    80004230:	3ac080e7          	jalr	940(ra) # 800025d8 <_Znwm>
    80004234:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004238:	ffffe097          	auipc	ra,0xffffe
    8000423c:	678080e7          	jalr	1656(ra) # 800028b0 <_ZN6ThreadC1Ev>
    80004240:	00008797          	auipc	a5,0x8
    80004244:	93078793          	addi	a5,a5,-1744 # 8000bb70 <_ZTV16ProducerKeyborad+0x10>
    80004248:	00f4b023          	sd	a5,0(s1)
    8000424c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004250:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004254:	00048513          	mv	a0,s1
    80004258:	ffffe097          	auipc	ra,0xffffe
    8000425c:	688080e7          	jalr	1672(ra) # 800028e0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004260:	00100913          	li	s2,1
    80004264:	0300006f          	j	80004294 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004268:	00008797          	auipc	a5,0x8
    8000426c:	93078793          	addi	a5,a5,-1744 # 8000bb98 <_ZTV8Producer+0x10>
    80004270:	00fcb023          	sd	a5,0(s9)
    80004274:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004278:	00391793          	slli	a5,s2,0x3
    8000427c:	00fa07b3          	add	a5,s4,a5
    80004280:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004284:	000c8513          	mv	a0,s9
    80004288:	ffffe097          	auipc	ra,0xffffe
    8000428c:	658080e7          	jalr	1624(ra) # 800028e0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004290:	0019091b          	addiw	s2,s2,1
    80004294:	05395263          	bge	s2,s3,800042d8 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004298:	00191493          	slli	s1,s2,0x1
    8000429c:	012484b3          	add	s1,s1,s2
    800042a0:	00349493          	slli	s1,s1,0x3
    800042a4:	009b04b3          	add	s1,s6,s1
    800042a8:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800042ac:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800042b0:	00008797          	auipc	a5,0x8
    800042b4:	ab87b783          	ld	a5,-1352(a5) # 8000bd68 <_ZL10waitForAll>
    800042b8:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800042bc:	02800513          	li	a0,40
    800042c0:	ffffe097          	auipc	ra,0xffffe
    800042c4:	318080e7          	jalr	792(ra) # 800025d8 <_Znwm>
    800042c8:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800042cc:	ffffe097          	auipc	ra,0xffffe
    800042d0:	5e4080e7          	jalr	1508(ra) # 800028b0 <_ZN6ThreadC1Ev>
    800042d4:	f95ff06f          	j	80004268 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800042d8:	ffffe097          	auipc	ra,0xffffe
    800042dc:	65c080e7          	jalr	1628(ra) # 80002934 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800042e0:	00000493          	li	s1,0
    800042e4:	0099ce63          	blt	s3,s1,80004300 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800042e8:	00008517          	auipc	a0,0x8
    800042ec:	a8053503          	ld	a0,-1408(a0) # 8000bd68 <_ZL10waitForAll>
    800042f0:	ffffe097          	auipc	ra,0xffffe
    800042f4:	6d0080e7          	jalr	1744(ra) # 800029c0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800042f8:	0014849b          	addiw	s1,s1,1
    800042fc:	fe9ff06f          	j	800042e4 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004300:	00008517          	auipc	a0,0x8
    80004304:	a6853503          	ld	a0,-1432(a0) # 8000bd68 <_ZL10waitForAll>
    80004308:	00050863          	beqz	a0,80004318 <_Z20testConsumerProducerv+0x2f4>
    8000430c:	00053783          	ld	a5,0(a0)
    80004310:	0087b783          	ld	a5,8(a5)
    80004314:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004318:	00000493          	li	s1,0
    8000431c:	0080006f          	j	80004324 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004320:	0014849b          	addiw	s1,s1,1
    80004324:	0334d263          	bge	s1,s3,80004348 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004328:	00349793          	slli	a5,s1,0x3
    8000432c:	00fa07b3          	add	a5,s4,a5
    80004330:	0007b503          	ld	a0,0(a5)
    80004334:	fe0506e3          	beqz	a0,80004320 <_Z20testConsumerProducerv+0x2fc>
    80004338:	00053783          	ld	a5,0(a0)
    8000433c:	0087b783          	ld	a5,8(a5)
    80004340:	000780e7          	jalr	a5
    80004344:	fddff06f          	j	80004320 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004348:	000b8a63          	beqz	s7,8000435c <_Z20testConsumerProducerv+0x338>
    8000434c:	000bb783          	ld	a5,0(s7)
    80004350:	0087b783          	ld	a5,8(a5)
    80004354:	000b8513          	mv	a0,s7
    80004358:	000780e7          	jalr	a5
    delete buffer;
    8000435c:	000a8e63          	beqz	s5,80004378 <_Z20testConsumerProducerv+0x354>
    80004360:	000a8513          	mv	a0,s5
    80004364:	00002097          	auipc	ra,0x2
    80004368:	870080e7          	jalr	-1936(ra) # 80005bd4 <_ZN9BufferCPPD1Ev>
    8000436c:	000a8513          	mv	a0,s5
    80004370:	ffffe097          	auipc	ra,0xffffe
    80004374:	2b8080e7          	jalr	696(ra) # 80002628 <_ZdlPv>
    80004378:	000c0113          	mv	sp,s8
}
    8000437c:	f8040113          	addi	sp,s0,-128
    80004380:	07813083          	ld	ra,120(sp)
    80004384:	07013403          	ld	s0,112(sp)
    80004388:	06813483          	ld	s1,104(sp)
    8000438c:	06013903          	ld	s2,96(sp)
    80004390:	05813983          	ld	s3,88(sp)
    80004394:	05013a03          	ld	s4,80(sp)
    80004398:	04813a83          	ld	s5,72(sp)
    8000439c:	04013b03          	ld	s6,64(sp)
    800043a0:	03813b83          	ld	s7,56(sp)
    800043a4:	03013c03          	ld	s8,48(sp)
    800043a8:	02813c83          	ld	s9,40(sp)
    800043ac:	08010113          	addi	sp,sp,128
    800043b0:	00008067          	ret
    800043b4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800043b8:	000a8513          	mv	a0,s5
    800043bc:	ffffe097          	auipc	ra,0xffffe
    800043c0:	26c080e7          	jalr	620(ra) # 80002628 <_ZdlPv>
    800043c4:	00048513          	mv	a0,s1
    800043c8:	00009097          	auipc	ra,0x9
    800043cc:	aa0080e7          	jalr	-1376(ra) # 8000ce68 <_Unwind_Resume>
    800043d0:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800043d4:	00090513          	mv	a0,s2
    800043d8:	ffffe097          	auipc	ra,0xffffe
    800043dc:	250080e7          	jalr	592(ra) # 80002628 <_ZdlPv>
    800043e0:	00048513          	mv	a0,s1
    800043e4:	00009097          	auipc	ra,0x9
    800043e8:	a84080e7          	jalr	-1404(ra) # 8000ce68 <_Unwind_Resume>
    800043ec:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800043f0:	000b8513          	mv	a0,s7
    800043f4:	ffffe097          	auipc	ra,0xffffe
    800043f8:	234080e7          	jalr	564(ra) # 80002628 <_ZdlPv>
    800043fc:	00048513          	mv	a0,s1
    80004400:	00009097          	auipc	ra,0x9
    80004404:	a68080e7          	jalr	-1432(ra) # 8000ce68 <_Unwind_Resume>
    80004408:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000440c:	00048513          	mv	a0,s1
    80004410:	ffffe097          	auipc	ra,0xffffe
    80004414:	218080e7          	jalr	536(ra) # 80002628 <_ZdlPv>
    80004418:	00090513          	mv	a0,s2
    8000441c:	00009097          	auipc	ra,0x9
    80004420:	a4c080e7          	jalr	-1460(ra) # 8000ce68 <_Unwind_Resume>
    80004424:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004428:	000c8513          	mv	a0,s9
    8000442c:	ffffe097          	auipc	ra,0xffffe
    80004430:	1fc080e7          	jalr	508(ra) # 80002628 <_ZdlPv>
    80004434:	00048513          	mv	a0,s1
    80004438:	00009097          	auipc	ra,0x9
    8000443c:	a30080e7          	jalr	-1488(ra) # 8000ce68 <_Unwind_Resume>

0000000080004440 <_ZN8Consumer3runEv>:
    void run() override {
    80004440:	fd010113          	addi	sp,sp,-48
    80004444:	02113423          	sd	ra,40(sp)
    80004448:	02813023          	sd	s0,32(sp)
    8000444c:	00913c23          	sd	s1,24(sp)
    80004450:	01213823          	sd	s2,16(sp)
    80004454:	01313423          	sd	s3,8(sp)
    80004458:	03010413          	addi	s0,sp,48
    8000445c:	00050913          	mv	s2,a0
        int i = 0;
    80004460:	00000993          	li	s3,0
    80004464:	0100006f          	j	80004474 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004468:	00a00513          	li	a0,10
    8000446c:	ffffe097          	auipc	ra,0xffffe
    80004470:	63c080e7          	jalr	1596(ra) # 80002aa8 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004474:	00008797          	auipc	a5,0x8
    80004478:	8ec7a783          	lw	a5,-1812(a5) # 8000bd60 <_ZL9threadEnd>
    8000447c:	04079a63          	bnez	a5,800044d0 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004480:	02093783          	ld	a5,32(s2)
    80004484:	0087b503          	ld	a0,8(a5)
    80004488:	00001097          	auipc	ra,0x1
    8000448c:	638080e7          	jalr	1592(ra) # 80005ac0 <_ZN9BufferCPP3getEv>
            i++;
    80004490:	0019849b          	addiw	s1,s3,1
    80004494:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004498:	0ff57513          	andi	a0,a0,255
    8000449c:	ffffe097          	auipc	ra,0xffffe
    800044a0:	60c080e7          	jalr	1548(ra) # 80002aa8 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800044a4:	05000793          	li	a5,80
    800044a8:	02f4e4bb          	remw	s1,s1,a5
    800044ac:	fc0494e3          	bnez	s1,80004474 <_ZN8Consumer3runEv+0x34>
    800044b0:	fb9ff06f          	j	80004468 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800044b4:	02093783          	ld	a5,32(s2)
    800044b8:	0087b503          	ld	a0,8(a5)
    800044bc:	00001097          	auipc	ra,0x1
    800044c0:	604080e7          	jalr	1540(ra) # 80005ac0 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800044c4:	0ff57513          	andi	a0,a0,255
    800044c8:	ffffe097          	auipc	ra,0xffffe
    800044cc:	5e0080e7          	jalr	1504(ra) # 80002aa8 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800044d0:	02093783          	ld	a5,32(s2)
    800044d4:	0087b503          	ld	a0,8(a5)
    800044d8:	00001097          	auipc	ra,0x1
    800044dc:	674080e7          	jalr	1652(ra) # 80005b4c <_ZN9BufferCPP6getCntEv>
    800044e0:	fca04ae3          	bgtz	a0,800044b4 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800044e4:	02093783          	ld	a5,32(s2)
    800044e8:	0107b503          	ld	a0,16(a5)
    800044ec:	ffffe097          	auipc	ra,0xffffe
    800044f0:	500080e7          	jalr	1280(ra) # 800029ec <_ZN9Semaphore6signalEv>
    }
    800044f4:	02813083          	ld	ra,40(sp)
    800044f8:	02013403          	ld	s0,32(sp)
    800044fc:	01813483          	ld	s1,24(sp)
    80004500:	01013903          	ld	s2,16(sp)
    80004504:	00813983          	ld	s3,8(sp)
    80004508:	03010113          	addi	sp,sp,48
    8000450c:	00008067          	ret

0000000080004510 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004510:	ff010113          	addi	sp,sp,-16
    80004514:	00113423          	sd	ra,8(sp)
    80004518:	00813023          	sd	s0,0(sp)
    8000451c:	01010413          	addi	s0,sp,16
    80004520:	00007797          	auipc	a5,0x7
    80004524:	6a078793          	addi	a5,a5,1696 # 8000bbc0 <_ZTV8Consumer+0x10>
    80004528:	00f53023          	sd	a5,0(a0)
    8000452c:	ffffe097          	auipc	ra,0xffffe
    80004530:	260080e7          	jalr	608(ra) # 8000278c <_ZN6ThreadD1Ev>
    80004534:	00813083          	ld	ra,8(sp)
    80004538:	00013403          	ld	s0,0(sp)
    8000453c:	01010113          	addi	sp,sp,16
    80004540:	00008067          	ret

0000000080004544 <_ZN8ConsumerD0Ev>:
    80004544:	fe010113          	addi	sp,sp,-32
    80004548:	00113c23          	sd	ra,24(sp)
    8000454c:	00813823          	sd	s0,16(sp)
    80004550:	00913423          	sd	s1,8(sp)
    80004554:	02010413          	addi	s0,sp,32
    80004558:	00050493          	mv	s1,a0
    8000455c:	00007797          	auipc	a5,0x7
    80004560:	66478793          	addi	a5,a5,1636 # 8000bbc0 <_ZTV8Consumer+0x10>
    80004564:	00f53023          	sd	a5,0(a0)
    80004568:	ffffe097          	auipc	ra,0xffffe
    8000456c:	224080e7          	jalr	548(ra) # 8000278c <_ZN6ThreadD1Ev>
    80004570:	00048513          	mv	a0,s1
    80004574:	ffffe097          	auipc	ra,0xffffe
    80004578:	0b4080e7          	jalr	180(ra) # 80002628 <_ZdlPv>
    8000457c:	01813083          	ld	ra,24(sp)
    80004580:	01013403          	ld	s0,16(sp)
    80004584:	00813483          	ld	s1,8(sp)
    80004588:	02010113          	addi	sp,sp,32
    8000458c:	00008067          	ret

0000000080004590 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004590:	ff010113          	addi	sp,sp,-16
    80004594:	00113423          	sd	ra,8(sp)
    80004598:	00813023          	sd	s0,0(sp)
    8000459c:	01010413          	addi	s0,sp,16
    800045a0:	00007797          	auipc	a5,0x7
    800045a4:	5d078793          	addi	a5,a5,1488 # 8000bb70 <_ZTV16ProducerKeyborad+0x10>
    800045a8:	00f53023          	sd	a5,0(a0)
    800045ac:	ffffe097          	auipc	ra,0xffffe
    800045b0:	1e0080e7          	jalr	480(ra) # 8000278c <_ZN6ThreadD1Ev>
    800045b4:	00813083          	ld	ra,8(sp)
    800045b8:	00013403          	ld	s0,0(sp)
    800045bc:	01010113          	addi	sp,sp,16
    800045c0:	00008067          	ret

00000000800045c4 <_ZN16ProducerKeyboradD0Ev>:
    800045c4:	fe010113          	addi	sp,sp,-32
    800045c8:	00113c23          	sd	ra,24(sp)
    800045cc:	00813823          	sd	s0,16(sp)
    800045d0:	00913423          	sd	s1,8(sp)
    800045d4:	02010413          	addi	s0,sp,32
    800045d8:	00050493          	mv	s1,a0
    800045dc:	00007797          	auipc	a5,0x7
    800045e0:	59478793          	addi	a5,a5,1428 # 8000bb70 <_ZTV16ProducerKeyborad+0x10>
    800045e4:	00f53023          	sd	a5,0(a0)
    800045e8:	ffffe097          	auipc	ra,0xffffe
    800045ec:	1a4080e7          	jalr	420(ra) # 8000278c <_ZN6ThreadD1Ev>
    800045f0:	00048513          	mv	a0,s1
    800045f4:	ffffe097          	auipc	ra,0xffffe
    800045f8:	034080e7          	jalr	52(ra) # 80002628 <_ZdlPv>
    800045fc:	01813083          	ld	ra,24(sp)
    80004600:	01013403          	ld	s0,16(sp)
    80004604:	00813483          	ld	s1,8(sp)
    80004608:	02010113          	addi	sp,sp,32
    8000460c:	00008067          	ret

0000000080004610 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004610:	ff010113          	addi	sp,sp,-16
    80004614:	00113423          	sd	ra,8(sp)
    80004618:	00813023          	sd	s0,0(sp)
    8000461c:	01010413          	addi	s0,sp,16
    80004620:	00007797          	auipc	a5,0x7
    80004624:	57878793          	addi	a5,a5,1400 # 8000bb98 <_ZTV8Producer+0x10>
    80004628:	00f53023          	sd	a5,0(a0)
    8000462c:	ffffe097          	auipc	ra,0xffffe
    80004630:	160080e7          	jalr	352(ra) # 8000278c <_ZN6ThreadD1Ev>
    80004634:	00813083          	ld	ra,8(sp)
    80004638:	00013403          	ld	s0,0(sp)
    8000463c:	01010113          	addi	sp,sp,16
    80004640:	00008067          	ret

0000000080004644 <_ZN8ProducerD0Ev>:
    80004644:	fe010113          	addi	sp,sp,-32
    80004648:	00113c23          	sd	ra,24(sp)
    8000464c:	00813823          	sd	s0,16(sp)
    80004650:	00913423          	sd	s1,8(sp)
    80004654:	02010413          	addi	s0,sp,32
    80004658:	00050493          	mv	s1,a0
    8000465c:	00007797          	auipc	a5,0x7
    80004660:	53c78793          	addi	a5,a5,1340 # 8000bb98 <_ZTV8Producer+0x10>
    80004664:	00f53023          	sd	a5,0(a0)
    80004668:	ffffe097          	auipc	ra,0xffffe
    8000466c:	124080e7          	jalr	292(ra) # 8000278c <_ZN6ThreadD1Ev>
    80004670:	00048513          	mv	a0,s1
    80004674:	ffffe097          	auipc	ra,0xffffe
    80004678:	fb4080e7          	jalr	-76(ra) # 80002628 <_ZdlPv>
    8000467c:	01813083          	ld	ra,24(sp)
    80004680:	01013403          	ld	s0,16(sp)
    80004684:	00813483          	ld	s1,8(sp)
    80004688:	02010113          	addi	sp,sp,32
    8000468c:	00008067          	ret

0000000080004690 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004690:	fe010113          	addi	sp,sp,-32
    80004694:	00113c23          	sd	ra,24(sp)
    80004698:	00813823          	sd	s0,16(sp)
    8000469c:	00913423          	sd	s1,8(sp)
    800046a0:	02010413          	addi	s0,sp,32
    800046a4:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800046a8:	ffffd097          	auipc	ra,0xffffd
    800046ac:	ee8080e7          	jalr	-280(ra) # 80001590 <_Z4getcv>
    800046b0:	0005059b          	sext.w	a1,a0
    800046b4:	01b00793          	li	a5,27
    800046b8:	00f58c63          	beq	a1,a5,800046d0 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800046bc:	0204b783          	ld	a5,32(s1)
    800046c0:	0087b503          	ld	a0,8(a5)
    800046c4:	00001097          	auipc	ra,0x1
    800046c8:	36c080e7          	jalr	876(ra) # 80005a30 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800046cc:	fddff06f          	j	800046a8 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800046d0:	00100793          	li	a5,1
    800046d4:	00007717          	auipc	a4,0x7
    800046d8:	68f72623          	sw	a5,1676(a4) # 8000bd60 <_ZL9threadEnd>
        td->buffer->put('!');
    800046dc:	0204b783          	ld	a5,32(s1)
    800046e0:	02100593          	li	a1,33
    800046e4:	0087b503          	ld	a0,8(a5)
    800046e8:	00001097          	auipc	ra,0x1
    800046ec:	348080e7          	jalr	840(ra) # 80005a30 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800046f0:	0204b783          	ld	a5,32(s1)
    800046f4:	0107b503          	ld	a0,16(a5)
    800046f8:	ffffe097          	auipc	ra,0xffffe
    800046fc:	2f4080e7          	jalr	756(ra) # 800029ec <_ZN9Semaphore6signalEv>
    }
    80004700:	01813083          	ld	ra,24(sp)
    80004704:	01013403          	ld	s0,16(sp)
    80004708:	00813483          	ld	s1,8(sp)
    8000470c:	02010113          	addi	sp,sp,32
    80004710:	00008067          	ret

0000000080004714 <_ZN8Producer3runEv>:
    void run() override {
    80004714:	fe010113          	addi	sp,sp,-32
    80004718:	00113c23          	sd	ra,24(sp)
    8000471c:	00813823          	sd	s0,16(sp)
    80004720:	00913423          	sd	s1,8(sp)
    80004724:	01213023          	sd	s2,0(sp)
    80004728:	02010413          	addi	s0,sp,32
    8000472c:	00050493          	mv	s1,a0
        int i = 0;
    80004730:	00000913          	li	s2,0
        while (!threadEnd) {
    80004734:	00007797          	auipc	a5,0x7
    80004738:	62c7a783          	lw	a5,1580(a5) # 8000bd60 <_ZL9threadEnd>
    8000473c:	04079263          	bnez	a5,80004780 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004740:	0204b783          	ld	a5,32(s1)
    80004744:	0007a583          	lw	a1,0(a5)
    80004748:	0305859b          	addiw	a1,a1,48
    8000474c:	0087b503          	ld	a0,8(a5)
    80004750:	00001097          	auipc	ra,0x1
    80004754:	2e0080e7          	jalr	736(ra) # 80005a30 <_ZN9BufferCPP3putEi>
            i++;
    80004758:	0019071b          	addiw	a4,s2,1
    8000475c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004760:	0204b783          	ld	a5,32(s1)
    80004764:	0007a783          	lw	a5,0(a5)
    80004768:	00e787bb          	addw	a5,a5,a4
    8000476c:	00500513          	li	a0,5
    80004770:	02a7e53b          	remw	a0,a5,a0
    80004774:	ffffe097          	auipc	ra,0xffffe
    80004778:	1e8080e7          	jalr	488(ra) # 8000295c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    8000477c:	fb9ff06f          	j	80004734 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004780:	0204b783          	ld	a5,32(s1)
    80004784:	0107b503          	ld	a0,16(a5)
    80004788:	ffffe097          	auipc	ra,0xffffe
    8000478c:	264080e7          	jalr	612(ra) # 800029ec <_ZN9Semaphore6signalEv>
    }
    80004790:	01813083          	ld	ra,24(sp)
    80004794:	01013403          	ld	s0,16(sp)
    80004798:	00813483          	ld	s1,8(sp)
    8000479c:	00013903          	ld	s2,0(sp)
    800047a0:	02010113          	addi	sp,sp,32
    800047a4:	00008067          	ret

00000000800047a8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800047a8:	fe010113          	addi	sp,sp,-32
    800047ac:	00113c23          	sd	ra,24(sp)
    800047b0:	00813823          	sd	s0,16(sp)
    800047b4:	00913423          	sd	s1,8(sp)
    800047b8:	01213023          	sd	s2,0(sp)
    800047bc:	02010413          	addi	s0,sp,32
    800047c0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800047c4:	00100793          	li	a5,1
    800047c8:	02a7f863          	bgeu	a5,a0,800047f8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800047cc:	00a00793          	li	a5,10
    800047d0:	02f577b3          	remu	a5,a0,a5
    800047d4:	02078e63          	beqz	a5,80004810 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800047d8:	fff48513          	addi	a0,s1,-1
    800047dc:	00000097          	auipc	ra,0x0
    800047e0:	fcc080e7          	jalr	-52(ra) # 800047a8 <_ZL9fibonaccim>
    800047e4:	00050913          	mv	s2,a0
    800047e8:	ffe48513          	addi	a0,s1,-2
    800047ec:	00000097          	auipc	ra,0x0
    800047f0:	fbc080e7          	jalr	-68(ra) # 800047a8 <_ZL9fibonaccim>
    800047f4:	00a90533          	add	a0,s2,a0
}
    800047f8:	01813083          	ld	ra,24(sp)
    800047fc:	01013403          	ld	s0,16(sp)
    80004800:	00813483          	ld	s1,8(sp)
    80004804:	00013903          	ld	s2,0(sp)
    80004808:	02010113          	addi	sp,sp,32
    8000480c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004810:	ffffd097          	auipc	ra,0xffffd
    80004814:	b78080e7          	jalr	-1160(ra) # 80001388 <_Z15thread_dispatchv>
    80004818:	fc1ff06f          	j	800047d8 <_ZL9fibonaccim+0x30>

000000008000481c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000481c:	fe010113          	addi	sp,sp,-32
    80004820:	00113c23          	sd	ra,24(sp)
    80004824:	00813823          	sd	s0,16(sp)
    80004828:	00913423          	sd	s1,8(sp)
    8000482c:	01213023          	sd	s2,0(sp)
    80004830:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004834:	00a00493          	li	s1,10
    80004838:	0400006f          	j	80004878 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000483c:	00005517          	auipc	a0,0x5
    80004840:	d7450513          	addi	a0,a0,-652 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80004844:	00001097          	auipc	ra,0x1
    80004848:	dc8080e7          	jalr	-568(ra) # 8000560c <_Z11printStringPKc>
    8000484c:	00000613          	li	a2,0
    80004850:	00a00593          	li	a1,10
    80004854:	00048513          	mv	a0,s1
    80004858:	00001097          	auipc	ra,0x1
    8000485c:	f64080e7          	jalr	-156(ra) # 800057bc <_Z8printIntiii>
    80004860:	00005517          	auipc	a0,0x5
    80004864:	a5850513          	addi	a0,a0,-1448 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004868:	00001097          	auipc	ra,0x1
    8000486c:	da4080e7          	jalr	-604(ra) # 8000560c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004870:	0014849b          	addiw	s1,s1,1
    80004874:	0ff4f493          	andi	s1,s1,255
    80004878:	00c00793          	li	a5,12
    8000487c:	fc97f0e3          	bgeu	a5,s1,8000483c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004880:	00005517          	auipc	a0,0x5
    80004884:	d3850513          	addi	a0,a0,-712 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80004888:	00001097          	auipc	ra,0x1
    8000488c:	d84080e7          	jalr	-636(ra) # 8000560c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004890:	00500313          	li	t1,5
    thread_dispatch();
    80004894:	ffffd097          	auipc	ra,0xffffd
    80004898:	af4080e7          	jalr	-1292(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000489c:	01000513          	li	a0,16
    800048a0:	00000097          	auipc	ra,0x0
    800048a4:	f08080e7          	jalr	-248(ra) # 800047a8 <_ZL9fibonaccim>
    800048a8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800048ac:	00005517          	auipc	a0,0x5
    800048b0:	d1c50513          	addi	a0,a0,-740 # 800095c8 <CONSOLE_STATUS+0x5b8>
    800048b4:	00001097          	auipc	ra,0x1
    800048b8:	d58080e7          	jalr	-680(ra) # 8000560c <_Z11printStringPKc>
    800048bc:	00000613          	li	a2,0
    800048c0:	00a00593          	li	a1,10
    800048c4:	0009051b          	sext.w	a0,s2
    800048c8:	00001097          	auipc	ra,0x1
    800048cc:	ef4080e7          	jalr	-268(ra) # 800057bc <_Z8printIntiii>
    800048d0:	00005517          	auipc	a0,0x5
    800048d4:	9e850513          	addi	a0,a0,-1560 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800048d8:	00001097          	auipc	ra,0x1
    800048dc:	d34080e7          	jalr	-716(ra) # 8000560c <_Z11printStringPKc>
    800048e0:	0400006f          	j	80004920 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800048e4:	00005517          	auipc	a0,0x5
    800048e8:	ccc50513          	addi	a0,a0,-820 # 800095b0 <CONSOLE_STATUS+0x5a0>
    800048ec:	00001097          	auipc	ra,0x1
    800048f0:	d20080e7          	jalr	-736(ra) # 8000560c <_Z11printStringPKc>
    800048f4:	00000613          	li	a2,0
    800048f8:	00a00593          	li	a1,10
    800048fc:	00048513          	mv	a0,s1
    80004900:	00001097          	auipc	ra,0x1
    80004904:	ebc080e7          	jalr	-324(ra) # 800057bc <_Z8printIntiii>
    80004908:	00005517          	auipc	a0,0x5
    8000490c:	9b050513          	addi	a0,a0,-1616 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004910:	00001097          	auipc	ra,0x1
    80004914:	cfc080e7          	jalr	-772(ra) # 8000560c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004918:	0014849b          	addiw	s1,s1,1
    8000491c:	0ff4f493          	andi	s1,s1,255
    80004920:	00f00793          	li	a5,15
    80004924:	fc97f0e3          	bgeu	a5,s1,800048e4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004928:	00005517          	auipc	a0,0x5
    8000492c:	cb050513          	addi	a0,a0,-848 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80004930:	00001097          	auipc	ra,0x1
    80004934:	cdc080e7          	jalr	-804(ra) # 8000560c <_Z11printStringPKc>
    finishedD = true;
    80004938:	00100793          	li	a5,1
    8000493c:	00007717          	auipc	a4,0x7
    80004940:	42f70a23          	sb	a5,1076(a4) # 8000bd70 <_ZL9finishedD>
    thread_dispatch();
    80004944:	ffffd097          	auipc	ra,0xffffd
    80004948:	a44080e7          	jalr	-1468(ra) # 80001388 <_Z15thread_dispatchv>
}
    8000494c:	01813083          	ld	ra,24(sp)
    80004950:	01013403          	ld	s0,16(sp)
    80004954:	00813483          	ld	s1,8(sp)
    80004958:	00013903          	ld	s2,0(sp)
    8000495c:	02010113          	addi	sp,sp,32
    80004960:	00008067          	ret

0000000080004964 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004964:	fe010113          	addi	sp,sp,-32
    80004968:	00113c23          	sd	ra,24(sp)
    8000496c:	00813823          	sd	s0,16(sp)
    80004970:	00913423          	sd	s1,8(sp)
    80004974:	01213023          	sd	s2,0(sp)
    80004978:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000497c:	00000493          	li	s1,0
    80004980:	0400006f          	j	800049c0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004984:	00005517          	auipc	a0,0x5
    80004988:	bfc50513          	addi	a0,a0,-1028 # 80009580 <CONSOLE_STATUS+0x570>
    8000498c:	00001097          	auipc	ra,0x1
    80004990:	c80080e7          	jalr	-896(ra) # 8000560c <_Z11printStringPKc>
    80004994:	00000613          	li	a2,0
    80004998:	00a00593          	li	a1,10
    8000499c:	00048513          	mv	a0,s1
    800049a0:	00001097          	auipc	ra,0x1
    800049a4:	e1c080e7          	jalr	-484(ra) # 800057bc <_Z8printIntiii>
    800049a8:	00005517          	auipc	a0,0x5
    800049ac:	91050513          	addi	a0,a0,-1776 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800049b0:	00001097          	auipc	ra,0x1
    800049b4:	c5c080e7          	jalr	-932(ra) # 8000560c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800049b8:	0014849b          	addiw	s1,s1,1
    800049bc:	0ff4f493          	andi	s1,s1,255
    800049c0:	00200793          	li	a5,2
    800049c4:	fc97f0e3          	bgeu	a5,s1,80004984 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800049c8:	00005517          	auipc	a0,0x5
    800049cc:	bc050513          	addi	a0,a0,-1088 # 80009588 <CONSOLE_STATUS+0x578>
    800049d0:	00001097          	auipc	ra,0x1
    800049d4:	c3c080e7          	jalr	-964(ra) # 8000560c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800049d8:	00700313          	li	t1,7
    thread_dispatch();
    800049dc:	ffffd097          	auipc	ra,0xffffd
    800049e0:	9ac080e7          	jalr	-1620(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800049e4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800049e8:	00005517          	auipc	a0,0x5
    800049ec:	bb050513          	addi	a0,a0,-1104 # 80009598 <CONSOLE_STATUS+0x588>
    800049f0:	00001097          	auipc	ra,0x1
    800049f4:	c1c080e7          	jalr	-996(ra) # 8000560c <_Z11printStringPKc>
    800049f8:	00000613          	li	a2,0
    800049fc:	00a00593          	li	a1,10
    80004a00:	0009051b          	sext.w	a0,s2
    80004a04:	00001097          	auipc	ra,0x1
    80004a08:	db8080e7          	jalr	-584(ra) # 800057bc <_Z8printIntiii>
    80004a0c:	00005517          	auipc	a0,0x5
    80004a10:	8ac50513          	addi	a0,a0,-1876 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004a14:	00001097          	auipc	ra,0x1
    80004a18:	bf8080e7          	jalr	-1032(ra) # 8000560c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004a1c:	00c00513          	li	a0,12
    80004a20:	00000097          	auipc	ra,0x0
    80004a24:	d88080e7          	jalr	-632(ra) # 800047a8 <_ZL9fibonaccim>
    80004a28:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004a2c:	00005517          	auipc	a0,0x5
    80004a30:	b7450513          	addi	a0,a0,-1164 # 800095a0 <CONSOLE_STATUS+0x590>
    80004a34:	00001097          	auipc	ra,0x1
    80004a38:	bd8080e7          	jalr	-1064(ra) # 8000560c <_Z11printStringPKc>
    80004a3c:	00000613          	li	a2,0
    80004a40:	00a00593          	li	a1,10
    80004a44:	0009051b          	sext.w	a0,s2
    80004a48:	00001097          	auipc	ra,0x1
    80004a4c:	d74080e7          	jalr	-652(ra) # 800057bc <_Z8printIntiii>
    80004a50:	00005517          	auipc	a0,0x5
    80004a54:	86850513          	addi	a0,a0,-1944 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004a58:	00001097          	auipc	ra,0x1
    80004a5c:	bb4080e7          	jalr	-1100(ra) # 8000560c <_Z11printStringPKc>
    80004a60:	0400006f          	j	80004aa0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004a64:	00005517          	auipc	a0,0x5
    80004a68:	b1c50513          	addi	a0,a0,-1252 # 80009580 <CONSOLE_STATUS+0x570>
    80004a6c:	00001097          	auipc	ra,0x1
    80004a70:	ba0080e7          	jalr	-1120(ra) # 8000560c <_Z11printStringPKc>
    80004a74:	00000613          	li	a2,0
    80004a78:	00a00593          	li	a1,10
    80004a7c:	00048513          	mv	a0,s1
    80004a80:	00001097          	auipc	ra,0x1
    80004a84:	d3c080e7          	jalr	-708(ra) # 800057bc <_Z8printIntiii>
    80004a88:	00005517          	auipc	a0,0x5
    80004a8c:	83050513          	addi	a0,a0,-2000 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004a90:	00001097          	auipc	ra,0x1
    80004a94:	b7c080e7          	jalr	-1156(ra) # 8000560c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004a98:	0014849b          	addiw	s1,s1,1
    80004a9c:	0ff4f493          	andi	s1,s1,255
    80004aa0:	00500793          	li	a5,5
    80004aa4:	fc97f0e3          	bgeu	a5,s1,80004a64 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004aa8:	00005517          	auipc	a0,0x5
    80004aac:	ab050513          	addi	a0,a0,-1360 # 80009558 <CONSOLE_STATUS+0x548>
    80004ab0:	00001097          	auipc	ra,0x1
    80004ab4:	b5c080e7          	jalr	-1188(ra) # 8000560c <_Z11printStringPKc>
    finishedC = true;
    80004ab8:	00100793          	li	a5,1
    80004abc:	00007717          	auipc	a4,0x7
    80004ac0:	2af70aa3          	sb	a5,693(a4) # 8000bd71 <_ZL9finishedC>
    thread_dispatch();
    80004ac4:	ffffd097          	auipc	ra,0xffffd
    80004ac8:	8c4080e7          	jalr	-1852(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004acc:	01813083          	ld	ra,24(sp)
    80004ad0:	01013403          	ld	s0,16(sp)
    80004ad4:	00813483          	ld	s1,8(sp)
    80004ad8:	00013903          	ld	s2,0(sp)
    80004adc:	02010113          	addi	sp,sp,32
    80004ae0:	00008067          	ret

0000000080004ae4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004ae4:	fe010113          	addi	sp,sp,-32
    80004ae8:	00113c23          	sd	ra,24(sp)
    80004aec:	00813823          	sd	s0,16(sp)
    80004af0:	00913423          	sd	s1,8(sp)
    80004af4:	01213023          	sd	s2,0(sp)
    80004af8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004afc:	00000913          	li	s2,0
    80004b00:	0380006f          	j	80004b38 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004b04:	ffffd097          	auipc	ra,0xffffd
    80004b08:	884080e7          	jalr	-1916(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004b0c:	00148493          	addi	s1,s1,1
    80004b10:	000027b7          	lui	a5,0x2
    80004b14:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004b18:	0097ee63          	bltu	a5,s1,80004b34 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004b1c:	00000713          	li	a4,0
    80004b20:	000077b7          	lui	a5,0x7
    80004b24:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004b28:	fce7eee3          	bltu	a5,a4,80004b04 <_ZL11workerBodyBPv+0x20>
    80004b2c:	00170713          	addi	a4,a4,1
    80004b30:	ff1ff06f          	j	80004b20 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004b34:	00190913          	addi	s2,s2,1
    80004b38:	00f00793          	li	a5,15
    80004b3c:	0527e063          	bltu	a5,s2,80004b7c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004b40:	00005517          	auipc	a0,0x5
    80004b44:	a2850513          	addi	a0,a0,-1496 # 80009568 <CONSOLE_STATUS+0x558>
    80004b48:	00001097          	auipc	ra,0x1
    80004b4c:	ac4080e7          	jalr	-1340(ra) # 8000560c <_Z11printStringPKc>
    80004b50:	00000613          	li	a2,0
    80004b54:	00a00593          	li	a1,10
    80004b58:	0009051b          	sext.w	a0,s2
    80004b5c:	00001097          	auipc	ra,0x1
    80004b60:	c60080e7          	jalr	-928(ra) # 800057bc <_Z8printIntiii>
    80004b64:	00004517          	auipc	a0,0x4
    80004b68:	75450513          	addi	a0,a0,1876 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004b6c:	00001097          	auipc	ra,0x1
    80004b70:	aa0080e7          	jalr	-1376(ra) # 8000560c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004b74:	00000493          	li	s1,0
    80004b78:	f99ff06f          	j	80004b10 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004b7c:	00005517          	auipc	a0,0x5
    80004b80:	9f450513          	addi	a0,a0,-1548 # 80009570 <CONSOLE_STATUS+0x560>
    80004b84:	00001097          	auipc	ra,0x1
    80004b88:	a88080e7          	jalr	-1400(ra) # 8000560c <_Z11printStringPKc>
    finishedB = true;
    80004b8c:	00100793          	li	a5,1
    80004b90:	00007717          	auipc	a4,0x7
    80004b94:	1ef70123          	sb	a5,482(a4) # 8000bd72 <_ZL9finishedB>
    thread_dispatch();
    80004b98:	ffffc097          	auipc	ra,0xffffc
    80004b9c:	7f0080e7          	jalr	2032(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004ba0:	01813083          	ld	ra,24(sp)
    80004ba4:	01013403          	ld	s0,16(sp)
    80004ba8:	00813483          	ld	s1,8(sp)
    80004bac:	00013903          	ld	s2,0(sp)
    80004bb0:	02010113          	addi	sp,sp,32
    80004bb4:	00008067          	ret

0000000080004bb8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004bb8:	fe010113          	addi	sp,sp,-32
    80004bbc:	00113c23          	sd	ra,24(sp)
    80004bc0:	00813823          	sd	s0,16(sp)
    80004bc4:	00913423          	sd	s1,8(sp)
    80004bc8:	01213023          	sd	s2,0(sp)
    80004bcc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004bd0:	00000913          	li	s2,0
    80004bd4:	0380006f          	j	80004c0c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004bd8:	ffffc097          	auipc	ra,0xffffc
    80004bdc:	7b0080e7          	jalr	1968(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004be0:	00148493          	addi	s1,s1,1
    80004be4:	000027b7          	lui	a5,0x2
    80004be8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004bec:	0097ee63          	bltu	a5,s1,80004c08 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004bf0:	00000713          	li	a4,0
    80004bf4:	000077b7          	lui	a5,0x7
    80004bf8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004bfc:	fce7eee3          	bltu	a5,a4,80004bd8 <_ZL11workerBodyAPv+0x20>
    80004c00:	00170713          	addi	a4,a4,1
    80004c04:	ff1ff06f          	j	80004bf4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004c08:	00190913          	addi	s2,s2,1
    80004c0c:	00900793          	li	a5,9
    80004c10:	0527e063          	bltu	a5,s2,80004c50 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004c14:	00005517          	auipc	a0,0x5
    80004c18:	93c50513          	addi	a0,a0,-1732 # 80009550 <CONSOLE_STATUS+0x540>
    80004c1c:	00001097          	auipc	ra,0x1
    80004c20:	9f0080e7          	jalr	-1552(ra) # 8000560c <_Z11printStringPKc>
    80004c24:	00000613          	li	a2,0
    80004c28:	00a00593          	li	a1,10
    80004c2c:	0009051b          	sext.w	a0,s2
    80004c30:	00001097          	auipc	ra,0x1
    80004c34:	b8c080e7          	jalr	-1140(ra) # 800057bc <_Z8printIntiii>
    80004c38:	00004517          	auipc	a0,0x4
    80004c3c:	68050513          	addi	a0,a0,1664 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004c40:	00001097          	auipc	ra,0x1
    80004c44:	9cc080e7          	jalr	-1588(ra) # 8000560c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004c48:	00000493          	li	s1,0
    80004c4c:	f99ff06f          	j	80004be4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004c50:	00005517          	auipc	a0,0x5
    80004c54:	90850513          	addi	a0,a0,-1784 # 80009558 <CONSOLE_STATUS+0x548>
    80004c58:	00001097          	auipc	ra,0x1
    80004c5c:	9b4080e7          	jalr	-1612(ra) # 8000560c <_Z11printStringPKc>
    finishedA = true;
    80004c60:	00100793          	li	a5,1
    80004c64:	00007717          	auipc	a4,0x7
    80004c68:	10f707a3          	sb	a5,271(a4) # 8000bd73 <_ZL9finishedA>
}
    80004c6c:	01813083          	ld	ra,24(sp)
    80004c70:	01013403          	ld	s0,16(sp)
    80004c74:	00813483          	ld	s1,8(sp)
    80004c78:	00013903          	ld	s2,0(sp)
    80004c7c:	02010113          	addi	sp,sp,32
    80004c80:	00008067          	ret

0000000080004c84 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004c84:	fd010113          	addi	sp,sp,-48
    80004c88:	02113423          	sd	ra,40(sp)
    80004c8c:	02813023          	sd	s0,32(sp)
    80004c90:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004c94:	00000613          	li	a2,0
    80004c98:	00000597          	auipc	a1,0x0
    80004c9c:	f2058593          	addi	a1,a1,-224 # 80004bb8 <_ZL11workerBodyAPv>
    80004ca0:	fd040513          	addi	a0,s0,-48
    80004ca4:	ffffc097          	auipc	ra,0xffffc
    80004ca8:	5e0080e7          	jalr	1504(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80004cac:	00005517          	auipc	a0,0x5
    80004cb0:	93c50513          	addi	a0,a0,-1732 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80004cb4:	00001097          	auipc	ra,0x1
    80004cb8:	958080e7          	jalr	-1704(ra) # 8000560c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004cbc:	00000613          	li	a2,0
    80004cc0:	00000597          	auipc	a1,0x0
    80004cc4:	e2458593          	addi	a1,a1,-476 # 80004ae4 <_ZL11workerBodyBPv>
    80004cc8:	fd840513          	addi	a0,s0,-40
    80004ccc:	ffffc097          	auipc	ra,0xffffc
    80004cd0:	5b8080e7          	jalr	1464(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80004cd4:	00005517          	auipc	a0,0x5
    80004cd8:	92c50513          	addi	a0,a0,-1748 # 80009600 <CONSOLE_STATUS+0x5f0>
    80004cdc:	00001097          	auipc	ra,0x1
    80004ce0:	930080e7          	jalr	-1744(ra) # 8000560c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004ce4:	00000613          	li	a2,0
    80004ce8:	00000597          	auipc	a1,0x0
    80004cec:	c7c58593          	addi	a1,a1,-900 # 80004964 <_ZL11workerBodyCPv>
    80004cf0:	fe040513          	addi	a0,s0,-32
    80004cf4:	ffffc097          	auipc	ra,0xffffc
    80004cf8:	590080e7          	jalr	1424(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80004cfc:	00005517          	auipc	a0,0x5
    80004d00:	91c50513          	addi	a0,a0,-1764 # 80009618 <CONSOLE_STATUS+0x608>
    80004d04:	00001097          	auipc	ra,0x1
    80004d08:	908080e7          	jalr	-1784(ra) # 8000560c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004d0c:	00000613          	li	a2,0
    80004d10:	00000597          	auipc	a1,0x0
    80004d14:	b0c58593          	addi	a1,a1,-1268 # 8000481c <_ZL11workerBodyDPv>
    80004d18:	fe840513          	addi	a0,s0,-24
    80004d1c:	ffffc097          	auipc	ra,0xffffc
    80004d20:	568080e7          	jalr	1384(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80004d24:	00005517          	auipc	a0,0x5
    80004d28:	90c50513          	addi	a0,a0,-1780 # 80009630 <CONSOLE_STATUS+0x620>
    80004d2c:	00001097          	auipc	ra,0x1
    80004d30:	8e0080e7          	jalr	-1824(ra) # 8000560c <_Z11printStringPKc>
    80004d34:	00c0006f          	j	80004d40 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004d38:	ffffc097          	auipc	ra,0xffffc
    80004d3c:	650080e7          	jalr	1616(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004d40:	00007797          	auipc	a5,0x7
    80004d44:	0337c783          	lbu	a5,51(a5) # 8000bd73 <_ZL9finishedA>
    80004d48:	fe0788e3          	beqz	a5,80004d38 <_Z18Threads_C_API_testv+0xb4>
    80004d4c:	00007797          	auipc	a5,0x7
    80004d50:	0267c783          	lbu	a5,38(a5) # 8000bd72 <_ZL9finishedB>
    80004d54:	fe0782e3          	beqz	a5,80004d38 <_Z18Threads_C_API_testv+0xb4>
    80004d58:	00007797          	auipc	a5,0x7
    80004d5c:	0197c783          	lbu	a5,25(a5) # 8000bd71 <_ZL9finishedC>
    80004d60:	fc078ce3          	beqz	a5,80004d38 <_Z18Threads_C_API_testv+0xb4>
    80004d64:	00007797          	auipc	a5,0x7
    80004d68:	00c7c783          	lbu	a5,12(a5) # 8000bd70 <_ZL9finishedD>
    80004d6c:	fc0786e3          	beqz	a5,80004d38 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004d70:	02813083          	ld	ra,40(sp)
    80004d74:	02013403          	ld	s0,32(sp)
    80004d78:	03010113          	addi	sp,sp,48
    80004d7c:	00008067          	ret

0000000080004d80 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004d80:	fd010113          	addi	sp,sp,-48
    80004d84:	02113423          	sd	ra,40(sp)
    80004d88:	02813023          	sd	s0,32(sp)
    80004d8c:	00913c23          	sd	s1,24(sp)
    80004d90:	01213823          	sd	s2,16(sp)
    80004d94:	01313423          	sd	s3,8(sp)
    80004d98:	03010413          	addi	s0,sp,48
    80004d9c:	00050993          	mv	s3,a0
    80004da0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004da4:	00000913          	li	s2,0
    80004da8:	00c0006f          	j	80004db4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004dac:	ffffe097          	auipc	ra,0xffffe
    80004db0:	b88080e7          	jalr	-1144(ra) # 80002934 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004db4:	ffffc097          	auipc	ra,0xffffc
    80004db8:	7dc080e7          	jalr	2012(ra) # 80001590 <_Z4getcv>
    80004dbc:	0005059b          	sext.w	a1,a0
    80004dc0:	01b00793          	li	a5,27
    80004dc4:	02f58a63          	beq	a1,a5,80004df8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004dc8:	0084b503          	ld	a0,8(s1)
    80004dcc:	00001097          	auipc	ra,0x1
    80004dd0:	c64080e7          	jalr	-924(ra) # 80005a30 <_ZN9BufferCPP3putEi>
        i++;
    80004dd4:	0019071b          	addiw	a4,s2,1
    80004dd8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004ddc:	0004a683          	lw	a3,0(s1)
    80004de0:	0026979b          	slliw	a5,a3,0x2
    80004de4:	00d787bb          	addw	a5,a5,a3
    80004de8:	0017979b          	slliw	a5,a5,0x1
    80004dec:	02f767bb          	remw	a5,a4,a5
    80004df0:	fc0792e3          	bnez	a5,80004db4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004df4:	fb9ff06f          	j	80004dac <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004df8:	00100793          	li	a5,1
    80004dfc:	00007717          	auipc	a4,0x7
    80004e00:	f6f72e23          	sw	a5,-132(a4) # 8000bd78 <_ZL9threadEnd>
    td->buffer->put('!');
    80004e04:	0209b783          	ld	a5,32(s3)
    80004e08:	02100593          	li	a1,33
    80004e0c:	0087b503          	ld	a0,8(a5)
    80004e10:	00001097          	auipc	ra,0x1
    80004e14:	c20080e7          	jalr	-992(ra) # 80005a30 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004e18:	0104b503          	ld	a0,16(s1)
    80004e1c:	ffffe097          	auipc	ra,0xffffe
    80004e20:	bd0080e7          	jalr	-1072(ra) # 800029ec <_ZN9Semaphore6signalEv>
}
    80004e24:	02813083          	ld	ra,40(sp)
    80004e28:	02013403          	ld	s0,32(sp)
    80004e2c:	01813483          	ld	s1,24(sp)
    80004e30:	01013903          	ld	s2,16(sp)
    80004e34:	00813983          	ld	s3,8(sp)
    80004e38:	03010113          	addi	sp,sp,48
    80004e3c:	00008067          	ret

0000000080004e40 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004e40:	fe010113          	addi	sp,sp,-32
    80004e44:	00113c23          	sd	ra,24(sp)
    80004e48:	00813823          	sd	s0,16(sp)
    80004e4c:	00913423          	sd	s1,8(sp)
    80004e50:	01213023          	sd	s2,0(sp)
    80004e54:	02010413          	addi	s0,sp,32
    80004e58:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004e5c:	00000913          	li	s2,0
    80004e60:	00c0006f          	j	80004e6c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004e64:	ffffe097          	auipc	ra,0xffffe
    80004e68:	ad0080e7          	jalr	-1328(ra) # 80002934 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004e6c:	00007797          	auipc	a5,0x7
    80004e70:	f0c7a783          	lw	a5,-244(a5) # 8000bd78 <_ZL9threadEnd>
    80004e74:	02079e63          	bnez	a5,80004eb0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004e78:	0004a583          	lw	a1,0(s1)
    80004e7c:	0305859b          	addiw	a1,a1,48
    80004e80:	0084b503          	ld	a0,8(s1)
    80004e84:	00001097          	auipc	ra,0x1
    80004e88:	bac080e7          	jalr	-1108(ra) # 80005a30 <_ZN9BufferCPP3putEi>
        i++;
    80004e8c:	0019071b          	addiw	a4,s2,1
    80004e90:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004e94:	0004a683          	lw	a3,0(s1)
    80004e98:	0026979b          	slliw	a5,a3,0x2
    80004e9c:	00d787bb          	addw	a5,a5,a3
    80004ea0:	0017979b          	slliw	a5,a5,0x1
    80004ea4:	02f767bb          	remw	a5,a4,a5
    80004ea8:	fc0792e3          	bnez	a5,80004e6c <_ZN12ProducerSync8producerEPv+0x2c>
    80004eac:	fb9ff06f          	j	80004e64 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004eb0:	0104b503          	ld	a0,16(s1)
    80004eb4:	ffffe097          	auipc	ra,0xffffe
    80004eb8:	b38080e7          	jalr	-1224(ra) # 800029ec <_ZN9Semaphore6signalEv>
}
    80004ebc:	01813083          	ld	ra,24(sp)
    80004ec0:	01013403          	ld	s0,16(sp)
    80004ec4:	00813483          	ld	s1,8(sp)
    80004ec8:	00013903          	ld	s2,0(sp)
    80004ecc:	02010113          	addi	sp,sp,32
    80004ed0:	00008067          	ret

0000000080004ed4 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004ed4:	fd010113          	addi	sp,sp,-48
    80004ed8:	02113423          	sd	ra,40(sp)
    80004edc:	02813023          	sd	s0,32(sp)
    80004ee0:	00913c23          	sd	s1,24(sp)
    80004ee4:	01213823          	sd	s2,16(sp)
    80004ee8:	01313423          	sd	s3,8(sp)
    80004eec:	01413023          	sd	s4,0(sp)
    80004ef0:	03010413          	addi	s0,sp,48
    80004ef4:	00050993          	mv	s3,a0
    80004ef8:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004efc:	00000a13          	li	s4,0
    80004f00:	01c0006f          	j	80004f1c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004f04:	ffffe097          	auipc	ra,0xffffe
    80004f08:	a30080e7          	jalr	-1488(ra) # 80002934 <_ZN6Thread8dispatchEv>
    80004f0c:	0500006f          	j	80004f5c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004f10:	00a00513          	li	a0,10
    80004f14:	ffffc097          	auipc	ra,0xffffc
    80004f18:	6bc080e7          	jalr	1724(ra) # 800015d0 <_Z4putcc>
    while (!threadEnd) {
    80004f1c:	00007797          	auipc	a5,0x7
    80004f20:	e5c7a783          	lw	a5,-420(a5) # 8000bd78 <_ZL9threadEnd>
    80004f24:	06079263          	bnez	a5,80004f88 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004f28:	00893503          	ld	a0,8(s2)
    80004f2c:	00001097          	auipc	ra,0x1
    80004f30:	b94080e7          	jalr	-1132(ra) # 80005ac0 <_ZN9BufferCPP3getEv>
        i++;
    80004f34:	001a049b          	addiw	s1,s4,1
    80004f38:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004f3c:	0ff57513          	andi	a0,a0,255
    80004f40:	ffffc097          	auipc	ra,0xffffc
    80004f44:	690080e7          	jalr	1680(ra) # 800015d0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004f48:	00092703          	lw	a4,0(s2)
    80004f4c:	0027179b          	slliw	a5,a4,0x2
    80004f50:	00e787bb          	addw	a5,a5,a4
    80004f54:	02f4e7bb          	remw	a5,s1,a5
    80004f58:	fa0786e3          	beqz	a5,80004f04 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004f5c:	05000793          	li	a5,80
    80004f60:	02f4e4bb          	remw	s1,s1,a5
    80004f64:	fa049ce3          	bnez	s1,80004f1c <_ZN12ConsumerSync8consumerEPv+0x48>
    80004f68:	fa9ff06f          	j	80004f10 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004f6c:	0209b783          	ld	a5,32(s3)
    80004f70:	0087b503          	ld	a0,8(a5)
    80004f74:	00001097          	auipc	ra,0x1
    80004f78:	b4c080e7          	jalr	-1204(ra) # 80005ac0 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004f7c:	0ff57513          	andi	a0,a0,255
    80004f80:	ffffe097          	auipc	ra,0xffffe
    80004f84:	b28080e7          	jalr	-1240(ra) # 80002aa8 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004f88:	0209b783          	ld	a5,32(s3)
    80004f8c:	0087b503          	ld	a0,8(a5)
    80004f90:	00001097          	auipc	ra,0x1
    80004f94:	bbc080e7          	jalr	-1092(ra) # 80005b4c <_ZN9BufferCPP6getCntEv>
    80004f98:	fca04ae3          	bgtz	a0,80004f6c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004f9c:	01093503          	ld	a0,16(s2)
    80004fa0:	ffffe097          	auipc	ra,0xffffe
    80004fa4:	a4c080e7          	jalr	-1460(ra) # 800029ec <_ZN9Semaphore6signalEv>
}
    80004fa8:	02813083          	ld	ra,40(sp)
    80004fac:	02013403          	ld	s0,32(sp)
    80004fb0:	01813483          	ld	s1,24(sp)
    80004fb4:	01013903          	ld	s2,16(sp)
    80004fb8:	00813983          	ld	s3,8(sp)
    80004fbc:	00013a03          	ld	s4,0(sp)
    80004fc0:	03010113          	addi	sp,sp,48
    80004fc4:	00008067          	ret

0000000080004fc8 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004fc8:	f8010113          	addi	sp,sp,-128
    80004fcc:	06113c23          	sd	ra,120(sp)
    80004fd0:	06813823          	sd	s0,112(sp)
    80004fd4:	06913423          	sd	s1,104(sp)
    80004fd8:	07213023          	sd	s2,96(sp)
    80004fdc:	05313c23          	sd	s3,88(sp)
    80004fe0:	05413823          	sd	s4,80(sp)
    80004fe4:	05513423          	sd	s5,72(sp)
    80004fe8:	05613023          	sd	s6,64(sp)
    80004fec:	03713c23          	sd	s7,56(sp)
    80004ff0:	03813823          	sd	s8,48(sp)
    80004ff4:	03913423          	sd	s9,40(sp)
    80004ff8:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004ffc:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005000:	00004517          	auipc	a0,0x4
    80005004:	46850513          	addi	a0,a0,1128 # 80009468 <CONSOLE_STATUS+0x458>
    80005008:	00000097          	auipc	ra,0x0
    8000500c:	604080e7          	jalr	1540(ra) # 8000560c <_Z11printStringPKc>
    getString(input, 30);
    80005010:	01e00593          	li	a1,30
    80005014:	f8040493          	addi	s1,s0,-128
    80005018:	00048513          	mv	a0,s1
    8000501c:	00000097          	auipc	ra,0x0
    80005020:	678080e7          	jalr	1656(ra) # 80005694 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005024:	00048513          	mv	a0,s1
    80005028:	00000097          	auipc	ra,0x0
    8000502c:	744080e7          	jalr	1860(ra) # 8000576c <_Z11stringToIntPKc>
    80005030:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005034:	00004517          	auipc	a0,0x4
    80005038:	45450513          	addi	a0,a0,1108 # 80009488 <CONSOLE_STATUS+0x478>
    8000503c:	00000097          	auipc	ra,0x0
    80005040:	5d0080e7          	jalr	1488(ra) # 8000560c <_Z11printStringPKc>
    getString(input, 30);
    80005044:	01e00593          	li	a1,30
    80005048:	00048513          	mv	a0,s1
    8000504c:	00000097          	auipc	ra,0x0
    80005050:	648080e7          	jalr	1608(ra) # 80005694 <_Z9getStringPci>
    n = stringToInt(input);
    80005054:	00048513          	mv	a0,s1
    80005058:	00000097          	auipc	ra,0x0
    8000505c:	714080e7          	jalr	1812(ra) # 8000576c <_Z11stringToIntPKc>
    80005060:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005064:	00004517          	auipc	a0,0x4
    80005068:	44450513          	addi	a0,a0,1092 # 800094a8 <CONSOLE_STATUS+0x498>
    8000506c:	00000097          	auipc	ra,0x0
    80005070:	5a0080e7          	jalr	1440(ra) # 8000560c <_Z11printStringPKc>
    80005074:	00000613          	li	a2,0
    80005078:	00a00593          	li	a1,10
    8000507c:	00090513          	mv	a0,s2
    80005080:	00000097          	auipc	ra,0x0
    80005084:	73c080e7          	jalr	1852(ra) # 800057bc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005088:	00004517          	auipc	a0,0x4
    8000508c:	43850513          	addi	a0,a0,1080 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80005090:	00000097          	auipc	ra,0x0
    80005094:	57c080e7          	jalr	1404(ra) # 8000560c <_Z11printStringPKc>
    80005098:	00000613          	li	a2,0
    8000509c:	00a00593          	li	a1,10
    800050a0:	00048513          	mv	a0,s1
    800050a4:	00000097          	auipc	ra,0x0
    800050a8:	718080e7          	jalr	1816(ra) # 800057bc <_Z8printIntiii>
    printString(".\n");
    800050ac:	00004517          	auipc	a0,0x4
    800050b0:	42c50513          	addi	a0,a0,1068 # 800094d8 <CONSOLE_STATUS+0x4c8>
    800050b4:	00000097          	auipc	ra,0x0
    800050b8:	558080e7          	jalr	1368(ra) # 8000560c <_Z11printStringPKc>
    if(threadNum > n) {
    800050bc:	0324c463          	blt	s1,s2,800050e4 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800050c0:	03205c63          	blez	s2,800050f8 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800050c4:	03800513          	li	a0,56
    800050c8:	ffffd097          	auipc	ra,0xffffd
    800050cc:	510080e7          	jalr	1296(ra) # 800025d8 <_Znwm>
    800050d0:	00050a93          	mv	s5,a0
    800050d4:	00048593          	mv	a1,s1
    800050d8:	00001097          	auipc	ra,0x1
    800050dc:	804080e7          	jalr	-2044(ra) # 800058dc <_ZN9BufferCPPC1Ei>
    800050e0:	0300006f          	j	80005110 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800050e4:	00004517          	auipc	a0,0x4
    800050e8:	3fc50513          	addi	a0,a0,1020 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800050ec:	00000097          	auipc	ra,0x0
    800050f0:	520080e7          	jalr	1312(ra) # 8000560c <_Z11printStringPKc>
        return;
    800050f4:	0140006f          	j	80005108 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800050f8:	00004517          	auipc	a0,0x4
    800050fc:	42850513          	addi	a0,a0,1064 # 80009520 <CONSOLE_STATUS+0x510>
    80005100:	00000097          	auipc	ra,0x0
    80005104:	50c080e7          	jalr	1292(ra) # 8000560c <_Z11printStringPKc>
        return;
    80005108:	000b8113          	mv	sp,s7
    8000510c:	2380006f          	j	80005344 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005110:	01000513          	li	a0,16
    80005114:	ffffd097          	auipc	ra,0xffffd
    80005118:	4c4080e7          	jalr	1220(ra) # 800025d8 <_Znwm>
    8000511c:	00050493          	mv	s1,a0
    80005120:	00000593          	li	a1,0
    80005124:	ffffe097          	auipc	ra,0xffffe
    80005128:	860080e7          	jalr	-1952(ra) # 80002984 <_ZN9SemaphoreC1Ej>
    8000512c:	00007797          	auipc	a5,0x7
    80005130:	c497ba23          	sd	s1,-940(a5) # 8000bd80 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005134:	00391793          	slli	a5,s2,0x3
    80005138:	00f78793          	addi	a5,a5,15
    8000513c:	ff07f793          	andi	a5,a5,-16
    80005140:	40f10133          	sub	sp,sp,a5
    80005144:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005148:	0019071b          	addiw	a4,s2,1
    8000514c:	00171793          	slli	a5,a4,0x1
    80005150:	00e787b3          	add	a5,a5,a4
    80005154:	00379793          	slli	a5,a5,0x3
    80005158:	00f78793          	addi	a5,a5,15
    8000515c:	ff07f793          	andi	a5,a5,-16
    80005160:	40f10133          	sub	sp,sp,a5
    80005164:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005168:	00191c13          	slli	s8,s2,0x1
    8000516c:	012c07b3          	add	a5,s8,s2
    80005170:	00379793          	slli	a5,a5,0x3
    80005174:	00fa07b3          	add	a5,s4,a5
    80005178:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000517c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005180:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005184:	02800513          	li	a0,40
    80005188:	ffffd097          	auipc	ra,0xffffd
    8000518c:	450080e7          	jalr	1104(ra) # 800025d8 <_Znwm>
    80005190:	00050b13          	mv	s6,a0
    80005194:	012c0c33          	add	s8,s8,s2
    80005198:	003c1c13          	slli	s8,s8,0x3
    8000519c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800051a0:	ffffd097          	auipc	ra,0xffffd
    800051a4:	710080e7          	jalr	1808(ra) # 800028b0 <_ZN6ThreadC1Ev>
    800051a8:	00007797          	auipc	a5,0x7
    800051ac:	a9078793          	addi	a5,a5,-1392 # 8000bc38 <_ZTV12ConsumerSync+0x10>
    800051b0:	00fb3023          	sd	a5,0(s6)
    800051b4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800051b8:	000b0513          	mv	a0,s6
    800051bc:	ffffd097          	auipc	ra,0xffffd
    800051c0:	724080e7          	jalr	1828(ra) # 800028e0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800051c4:	00000493          	li	s1,0
    800051c8:	0380006f          	j	80005200 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800051cc:	00007797          	auipc	a5,0x7
    800051d0:	a4478793          	addi	a5,a5,-1468 # 8000bc10 <_ZTV12ProducerSync+0x10>
    800051d4:	00fcb023          	sd	a5,0(s9)
    800051d8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800051dc:	00349793          	slli	a5,s1,0x3
    800051e0:	00f987b3          	add	a5,s3,a5
    800051e4:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800051e8:	00349793          	slli	a5,s1,0x3
    800051ec:	00f987b3          	add	a5,s3,a5
    800051f0:	0007b503          	ld	a0,0(a5)
    800051f4:	ffffd097          	auipc	ra,0xffffd
    800051f8:	6ec080e7          	jalr	1772(ra) # 800028e0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800051fc:	0014849b          	addiw	s1,s1,1
    80005200:	0b24d063          	bge	s1,s2,800052a0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005204:	00149793          	slli	a5,s1,0x1
    80005208:	009787b3          	add	a5,a5,s1
    8000520c:	00379793          	slli	a5,a5,0x3
    80005210:	00fa07b3          	add	a5,s4,a5
    80005214:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005218:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000521c:	00007717          	auipc	a4,0x7
    80005220:	b6473703          	ld	a4,-1180(a4) # 8000bd80 <_ZL10waitForAll>
    80005224:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005228:	02905863          	blez	s1,80005258 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    8000522c:	02800513          	li	a0,40
    80005230:	ffffd097          	auipc	ra,0xffffd
    80005234:	3a8080e7          	jalr	936(ra) # 800025d8 <_Znwm>
    80005238:	00050c93          	mv	s9,a0
    8000523c:	00149c13          	slli	s8,s1,0x1
    80005240:	009c0c33          	add	s8,s8,s1
    80005244:	003c1c13          	slli	s8,s8,0x3
    80005248:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000524c:	ffffd097          	auipc	ra,0xffffd
    80005250:	664080e7          	jalr	1636(ra) # 800028b0 <_ZN6ThreadC1Ev>
    80005254:	f79ff06f          	j	800051cc <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005258:	02800513          	li	a0,40
    8000525c:	ffffd097          	auipc	ra,0xffffd
    80005260:	37c080e7          	jalr	892(ra) # 800025d8 <_Znwm>
    80005264:	00050c93          	mv	s9,a0
    80005268:	00149c13          	slli	s8,s1,0x1
    8000526c:	009c0c33          	add	s8,s8,s1
    80005270:	003c1c13          	slli	s8,s8,0x3
    80005274:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005278:	ffffd097          	auipc	ra,0xffffd
    8000527c:	638080e7          	jalr	1592(ra) # 800028b0 <_ZN6ThreadC1Ev>
    80005280:	00007797          	auipc	a5,0x7
    80005284:	96878793          	addi	a5,a5,-1688 # 8000bbe8 <_ZTV16ProducerKeyboard+0x10>
    80005288:	00fcb023          	sd	a5,0(s9)
    8000528c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005290:	00349793          	slli	a5,s1,0x3
    80005294:	00f987b3          	add	a5,s3,a5
    80005298:	0197b023          	sd	s9,0(a5)
    8000529c:	f4dff06f          	j	800051e8 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800052a0:	ffffd097          	auipc	ra,0xffffd
    800052a4:	694080e7          	jalr	1684(ra) # 80002934 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800052a8:	00000493          	li	s1,0
    800052ac:	00994e63          	blt	s2,s1,800052c8 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800052b0:	00007517          	auipc	a0,0x7
    800052b4:	ad053503          	ld	a0,-1328(a0) # 8000bd80 <_ZL10waitForAll>
    800052b8:	ffffd097          	auipc	ra,0xffffd
    800052bc:	708080e7          	jalr	1800(ra) # 800029c0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800052c0:	0014849b          	addiw	s1,s1,1
    800052c4:	fe9ff06f          	j	800052ac <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800052c8:	00000493          	li	s1,0
    800052cc:	0080006f          	j	800052d4 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800052d0:	0014849b          	addiw	s1,s1,1
    800052d4:	0324d263          	bge	s1,s2,800052f8 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800052d8:	00349793          	slli	a5,s1,0x3
    800052dc:	00f987b3          	add	a5,s3,a5
    800052e0:	0007b503          	ld	a0,0(a5)
    800052e4:	fe0506e3          	beqz	a0,800052d0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800052e8:	00053783          	ld	a5,0(a0)
    800052ec:	0087b783          	ld	a5,8(a5)
    800052f0:	000780e7          	jalr	a5
    800052f4:	fddff06f          	j	800052d0 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800052f8:	000b0a63          	beqz	s6,8000530c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800052fc:	000b3783          	ld	a5,0(s6)
    80005300:	0087b783          	ld	a5,8(a5)
    80005304:	000b0513          	mv	a0,s6
    80005308:	000780e7          	jalr	a5
    delete waitForAll;
    8000530c:	00007517          	auipc	a0,0x7
    80005310:	a7453503          	ld	a0,-1420(a0) # 8000bd80 <_ZL10waitForAll>
    80005314:	00050863          	beqz	a0,80005324 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005318:	00053783          	ld	a5,0(a0)
    8000531c:	0087b783          	ld	a5,8(a5)
    80005320:	000780e7          	jalr	a5
    delete buffer;
    80005324:	000a8e63          	beqz	s5,80005340 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005328:	000a8513          	mv	a0,s5
    8000532c:	00001097          	auipc	ra,0x1
    80005330:	8a8080e7          	jalr	-1880(ra) # 80005bd4 <_ZN9BufferCPPD1Ev>
    80005334:	000a8513          	mv	a0,s5
    80005338:	ffffd097          	auipc	ra,0xffffd
    8000533c:	2f0080e7          	jalr	752(ra) # 80002628 <_ZdlPv>
    80005340:	000b8113          	mv	sp,s7

}
    80005344:	f8040113          	addi	sp,s0,-128
    80005348:	07813083          	ld	ra,120(sp)
    8000534c:	07013403          	ld	s0,112(sp)
    80005350:	06813483          	ld	s1,104(sp)
    80005354:	06013903          	ld	s2,96(sp)
    80005358:	05813983          	ld	s3,88(sp)
    8000535c:	05013a03          	ld	s4,80(sp)
    80005360:	04813a83          	ld	s5,72(sp)
    80005364:	04013b03          	ld	s6,64(sp)
    80005368:	03813b83          	ld	s7,56(sp)
    8000536c:	03013c03          	ld	s8,48(sp)
    80005370:	02813c83          	ld	s9,40(sp)
    80005374:	08010113          	addi	sp,sp,128
    80005378:	00008067          	ret
    8000537c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005380:	000a8513          	mv	a0,s5
    80005384:	ffffd097          	auipc	ra,0xffffd
    80005388:	2a4080e7          	jalr	676(ra) # 80002628 <_ZdlPv>
    8000538c:	00048513          	mv	a0,s1
    80005390:	00008097          	auipc	ra,0x8
    80005394:	ad8080e7          	jalr	-1320(ra) # 8000ce68 <_Unwind_Resume>
    80005398:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    8000539c:	00048513          	mv	a0,s1
    800053a0:	ffffd097          	auipc	ra,0xffffd
    800053a4:	288080e7          	jalr	648(ra) # 80002628 <_ZdlPv>
    800053a8:	00090513          	mv	a0,s2
    800053ac:	00008097          	auipc	ra,0x8
    800053b0:	abc080e7          	jalr	-1348(ra) # 8000ce68 <_Unwind_Resume>
    800053b4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800053b8:	000b0513          	mv	a0,s6
    800053bc:	ffffd097          	auipc	ra,0xffffd
    800053c0:	26c080e7          	jalr	620(ra) # 80002628 <_ZdlPv>
    800053c4:	00048513          	mv	a0,s1
    800053c8:	00008097          	auipc	ra,0x8
    800053cc:	aa0080e7          	jalr	-1376(ra) # 8000ce68 <_Unwind_Resume>
    800053d0:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800053d4:	000c8513          	mv	a0,s9
    800053d8:	ffffd097          	auipc	ra,0xffffd
    800053dc:	250080e7          	jalr	592(ra) # 80002628 <_ZdlPv>
    800053e0:	00048513          	mv	a0,s1
    800053e4:	00008097          	auipc	ra,0x8
    800053e8:	a84080e7          	jalr	-1404(ra) # 8000ce68 <_Unwind_Resume>
    800053ec:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800053f0:	000c8513          	mv	a0,s9
    800053f4:	ffffd097          	auipc	ra,0xffffd
    800053f8:	234080e7          	jalr	564(ra) # 80002628 <_ZdlPv>
    800053fc:	00048513          	mv	a0,s1
    80005400:	00008097          	auipc	ra,0x8
    80005404:	a68080e7          	jalr	-1432(ra) # 8000ce68 <_Unwind_Resume>

0000000080005408 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005408:	ff010113          	addi	sp,sp,-16
    8000540c:	00113423          	sd	ra,8(sp)
    80005410:	00813023          	sd	s0,0(sp)
    80005414:	01010413          	addi	s0,sp,16
    80005418:	00007797          	auipc	a5,0x7
    8000541c:	82078793          	addi	a5,a5,-2016 # 8000bc38 <_ZTV12ConsumerSync+0x10>
    80005420:	00f53023          	sd	a5,0(a0)
    80005424:	ffffd097          	auipc	ra,0xffffd
    80005428:	368080e7          	jalr	872(ra) # 8000278c <_ZN6ThreadD1Ev>
    8000542c:	00813083          	ld	ra,8(sp)
    80005430:	00013403          	ld	s0,0(sp)
    80005434:	01010113          	addi	sp,sp,16
    80005438:	00008067          	ret

000000008000543c <_ZN12ConsumerSyncD0Ev>:
    8000543c:	fe010113          	addi	sp,sp,-32
    80005440:	00113c23          	sd	ra,24(sp)
    80005444:	00813823          	sd	s0,16(sp)
    80005448:	00913423          	sd	s1,8(sp)
    8000544c:	02010413          	addi	s0,sp,32
    80005450:	00050493          	mv	s1,a0
    80005454:	00006797          	auipc	a5,0x6
    80005458:	7e478793          	addi	a5,a5,2020 # 8000bc38 <_ZTV12ConsumerSync+0x10>
    8000545c:	00f53023          	sd	a5,0(a0)
    80005460:	ffffd097          	auipc	ra,0xffffd
    80005464:	32c080e7          	jalr	812(ra) # 8000278c <_ZN6ThreadD1Ev>
    80005468:	00048513          	mv	a0,s1
    8000546c:	ffffd097          	auipc	ra,0xffffd
    80005470:	1bc080e7          	jalr	444(ra) # 80002628 <_ZdlPv>
    80005474:	01813083          	ld	ra,24(sp)
    80005478:	01013403          	ld	s0,16(sp)
    8000547c:	00813483          	ld	s1,8(sp)
    80005480:	02010113          	addi	sp,sp,32
    80005484:	00008067          	ret

0000000080005488 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005488:	ff010113          	addi	sp,sp,-16
    8000548c:	00113423          	sd	ra,8(sp)
    80005490:	00813023          	sd	s0,0(sp)
    80005494:	01010413          	addi	s0,sp,16
    80005498:	00006797          	auipc	a5,0x6
    8000549c:	77878793          	addi	a5,a5,1912 # 8000bc10 <_ZTV12ProducerSync+0x10>
    800054a0:	00f53023          	sd	a5,0(a0)
    800054a4:	ffffd097          	auipc	ra,0xffffd
    800054a8:	2e8080e7          	jalr	744(ra) # 8000278c <_ZN6ThreadD1Ev>
    800054ac:	00813083          	ld	ra,8(sp)
    800054b0:	00013403          	ld	s0,0(sp)
    800054b4:	01010113          	addi	sp,sp,16
    800054b8:	00008067          	ret

00000000800054bc <_ZN12ProducerSyncD0Ev>:
    800054bc:	fe010113          	addi	sp,sp,-32
    800054c0:	00113c23          	sd	ra,24(sp)
    800054c4:	00813823          	sd	s0,16(sp)
    800054c8:	00913423          	sd	s1,8(sp)
    800054cc:	02010413          	addi	s0,sp,32
    800054d0:	00050493          	mv	s1,a0
    800054d4:	00006797          	auipc	a5,0x6
    800054d8:	73c78793          	addi	a5,a5,1852 # 8000bc10 <_ZTV12ProducerSync+0x10>
    800054dc:	00f53023          	sd	a5,0(a0)
    800054e0:	ffffd097          	auipc	ra,0xffffd
    800054e4:	2ac080e7          	jalr	684(ra) # 8000278c <_ZN6ThreadD1Ev>
    800054e8:	00048513          	mv	a0,s1
    800054ec:	ffffd097          	auipc	ra,0xffffd
    800054f0:	13c080e7          	jalr	316(ra) # 80002628 <_ZdlPv>
    800054f4:	01813083          	ld	ra,24(sp)
    800054f8:	01013403          	ld	s0,16(sp)
    800054fc:	00813483          	ld	s1,8(sp)
    80005500:	02010113          	addi	sp,sp,32
    80005504:	00008067          	ret

0000000080005508 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005508:	ff010113          	addi	sp,sp,-16
    8000550c:	00113423          	sd	ra,8(sp)
    80005510:	00813023          	sd	s0,0(sp)
    80005514:	01010413          	addi	s0,sp,16
    80005518:	00006797          	auipc	a5,0x6
    8000551c:	6d078793          	addi	a5,a5,1744 # 8000bbe8 <_ZTV16ProducerKeyboard+0x10>
    80005520:	00f53023          	sd	a5,0(a0)
    80005524:	ffffd097          	auipc	ra,0xffffd
    80005528:	268080e7          	jalr	616(ra) # 8000278c <_ZN6ThreadD1Ev>
    8000552c:	00813083          	ld	ra,8(sp)
    80005530:	00013403          	ld	s0,0(sp)
    80005534:	01010113          	addi	sp,sp,16
    80005538:	00008067          	ret

000000008000553c <_ZN16ProducerKeyboardD0Ev>:
    8000553c:	fe010113          	addi	sp,sp,-32
    80005540:	00113c23          	sd	ra,24(sp)
    80005544:	00813823          	sd	s0,16(sp)
    80005548:	00913423          	sd	s1,8(sp)
    8000554c:	02010413          	addi	s0,sp,32
    80005550:	00050493          	mv	s1,a0
    80005554:	00006797          	auipc	a5,0x6
    80005558:	69478793          	addi	a5,a5,1684 # 8000bbe8 <_ZTV16ProducerKeyboard+0x10>
    8000555c:	00f53023          	sd	a5,0(a0)
    80005560:	ffffd097          	auipc	ra,0xffffd
    80005564:	22c080e7          	jalr	556(ra) # 8000278c <_ZN6ThreadD1Ev>
    80005568:	00048513          	mv	a0,s1
    8000556c:	ffffd097          	auipc	ra,0xffffd
    80005570:	0bc080e7          	jalr	188(ra) # 80002628 <_ZdlPv>
    80005574:	01813083          	ld	ra,24(sp)
    80005578:	01013403          	ld	s0,16(sp)
    8000557c:	00813483          	ld	s1,8(sp)
    80005580:	02010113          	addi	sp,sp,32
    80005584:	00008067          	ret

0000000080005588 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005588:	ff010113          	addi	sp,sp,-16
    8000558c:	00113423          	sd	ra,8(sp)
    80005590:	00813023          	sd	s0,0(sp)
    80005594:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005598:	02053583          	ld	a1,32(a0)
    8000559c:	fffff097          	auipc	ra,0xfffff
    800055a0:	7e4080e7          	jalr	2020(ra) # 80004d80 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800055a4:	00813083          	ld	ra,8(sp)
    800055a8:	00013403          	ld	s0,0(sp)
    800055ac:	01010113          	addi	sp,sp,16
    800055b0:	00008067          	ret

00000000800055b4 <_ZN12ProducerSync3runEv>:
    void run() override {
    800055b4:	ff010113          	addi	sp,sp,-16
    800055b8:	00113423          	sd	ra,8(sp)
    800055bc:	00813023          	sd	s0,0(sp)
    800055c0:	01010413          	addi	s0,sp,16
        producer(td);
    800055c4:	02053583          	ld	a1,32(a0)
    800055c8:	00000097          	auipc	ra,0x0
    800055cc:	878080e7          	jalr	-1928(ra) # 80004e40 <_ZN12ProducerSync8producerEPv>
    }
    800055d0:	00813083          	ld	ra,8(sp)
    800055d4:	00013403          	ld	s0,0(sp)
    800055d8:	01010113          	addi	sp,sp,16
    800055dc:	00008067          	ret

00000000800055e0 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800055e0:	ff010113          	addi	sp,sp,-16
    800055e4:	00113423          	sd	ra,8(sp)
    800055e8:	00813023          	sd	s0,0(sp)
    800055ec:	01010413          	addi	s0,sp,16
        consumer(td);
    800055f0:	02053583          	ld	a1,32(a0)
    800055f4:	00000097          	auipc	ra,0x0
    800055f8:	8e0080e7          	jalr	-1824(ra) # 80004ed4 <_ZN12ConsumerSync8consumerEPv>
    }
    800055fc:	00813083          	ld	ra,8(sp)
    80005600:	00013403          	ld	s0,0(sp)
    80005604:	01010113          	addi	sp,sp,16
    80005608:	00008067          	ret

000000008000560c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000560c:	fe010113          	addi	sp,sp,-32
    80005610:	00113c23          	sd	ra,24(sp)
    80005614:	00813823          	sd	s0,16(sp)
    80005618:	00913423          	sd	s1,8(sp)
    8000561c:	02010413          	addi	s0,sp,32
    80005620:	00050493          	mv	s1,a0
    LOCK();
    80005624:	00100613          	li	a2,1
    80005628:	00000593          	li	a1,0
    8000562c:	00006517          	auipc	a0,0x6
    80005630:	75c50513          	addi	a0,a0,1884 # 8000bd88 <lockPrint>
    80005634:	ffffc097          	auipc	ra,0xffffc
    80005638:	b70080e7          	jalr	-1168(ra) # 800011a4 <copy_and_swap>
    8000563c:	00050863          	beqz	a0,8000564c <_Z11printStringPKc+0x40>
    80005640:	ffffc097          	auipc	ra,0xffffc
    80005644:	d48080e7          	jalr	-696(ra) # 80001388 <_Z15thread_dispatchv>
    80005648:	fddff06f          	j	80005624 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000564c:	0004c503          	lbu	a0,0(s1)
    80005650:	00050a63          	beqz	a0,80005664 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005654:	ffffc097          	auipc	ra,0xffffc
    80005658:	f7c080e7          	jalr	-132(ra) # 800015d0 <_Z4putcc>
        string++;
    8000565c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005660:	fedff06f          	j	8000564c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005664:	00000613          	li	a2,0
    80005668:	00100593          	li	a1,1
    8000566c:	00006517          	auipc	a0,0x6
    80005670:	71c50513          	addi	a0,a0,1820 # 8000bd88 <lockPrint>
    80005674:	ffffc097          	auipc	ra,0xffffc
    80005678:	b30080e7          	jalr	-1232(ra) # 800011a4 <copy_and_swap>
    8000567c:	fe0514e3          	bnez	a0,80005664 <_Z11printStringPKc+0x58>
}
    80005680:	01813083          	ld	ra,24(sp)
    80005684:	01013403          	ld	s0,16(sp)
    80005688:	00813483          	ld	s1,8(sp)
    8000568c:	02010113          	addi	sp,sp,32
    80005690:	00008067          	ret

0000000080005694 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005694:	fd010113          	addi	sp,sp,-48
    80005698:	02113423          	sd	ra,40(sp)
    8000569c:	02813023          	sd	s0,32(sp)
    800056a0:	00913c23          	sd	s1,24(sp)
    800056a4:	01213823          	sd	s2,16(sp)
    800056a8:	01313423          	sd	s3,8(sp)
    800056ac:	01413023          	sd	s4,0(sp)
    800056b0:	03010413          	addi	s0,sp,48
    800056b4:	00050993          	mv	s3,a0
    800056b8:	00058a13          	mv	s4,a1
    LOCK();
    800056bc:	00100613          	li	a2,1
    800056c0:	00000593          	li	a1,0
    800056c4:	00006517          	auipc	a0,0x6
    800056c8:	6c450513          	addi	a0,a0,1732 # 8000bd88 <lockPrint>
    800056cc:	ffffc097          	auipc	ra,0xffffc
    800056d0:	ad8080e7          	jalr	-1320(ra) # 800011a4 <copy_and_swap>
    800056d4:	00050863          	beqz	a0,800056e4 <_Z9getStringPci+0x50>
    800056d8:	ffffc097          	auipc	ra,0xffffc
    800056dc:	cb0080e7          	jalr	-848(ra) # 80001388 <_Z15thread_dispatchv>
    800056e0:	fddff06f          	j	800056bc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800056e4:	00000913          	li	s2,0
    800056e8:	00090493          	mv	s1,s2
    800056ec:	0019091b          	addiw	s2,s2,1
    800056f0:	03495a63          	bge	s2,s4,80005724 <_Z9getStringPci+0x90>
        cc = getc();
    800056f4:	ffffc097          	auipc	ra,0xffffc
    800056f8:	e9c080e7          	jalr	-356(ra) # 80001590 <_Z4getcv>
        if(cc < 1)
    800056fc:	02050463          	beqz	a0,80005724 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005700:	009984b3          	add	s1,s3,s1
    80005704:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005708:	00a00793          	li	a5,10
    8000570c:	00f50a63          	beq	a0,a5,80005720 <_Z9getStringPci+0x8c>
    80005710:	00d00793          	li	a5,13
    80005714:	fcf51ae3          	bne	a0,a5,800056e8 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005718:	00090493          	mv	s1,s2
    8000571c:	0080006f          	j	80005724 <_Z9getStringPci+0x90>
    80005720:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005724:	009984b3          	add	s1,s3,s1
    80005728:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000572c:	00000613          	li	a2,0
    80005730:	00100593          	li	a1,1
    80005734:	00006517          	auipc	a0,0x6
    80005738:	65450513          	addi	a0,a0,1620 # 8000bd88 <lockPrint>
    8000573c:	ffffc097          	auipc	ra,0xffffc
    80005740:	a68080e7          	jalr	-1432(ra) # 800011a4 <copy_and_swap>
    80005744:	fe0514e3          	bnez	a0,8000572c <_Z9getStringPci+0x98>
    return buf;
}
    80005748:	00098513          	mv	a0,s3
    8000574c:	02813083          	ld	ra,40(sp)
    80005750:	02013403          	ld	s0,32(sp)
    80005754:	01813483          	ld	s1,24(sp)
    80005758:	01013903          	ld	s2,16(sp)
    8000575c:	00813983          	ld	s3,8(sp)
    80005760:	00013a03          	ld	s4,0(sp)
    80005764:	03010113          	addi	sp,sp,48
    80005768:	00008067          	ret

000000008000576c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000576c:	ff010113          	addi	sp,sp,-16
    80005770:	00813423          	sd	s0,8(sp)
    80005774:	01010413          	addi	s0,sp,16
    80005778:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000577c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005780:	0006c603          	lbu	a2,0(a3)
    80005784:	fd06071b          	addiw	a4,a2,-48
    80005788:	0ff77713          	andi	a4,a4,255
    8000578c:	00900793          	li	a5,9
    80005790:	02e7e063          	bltu	a5,a4,800057b0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005794:	0025179b          	slliw	a5,a0,0x2
    80005798:	00a787bb          	addw	a5,a5,a0
    8000579c:	0017979b          	slliw	a5,a5,0x1
    800057a0:	00168693          	addi	a3,a3,1
    800057a4:	00c787bb          	addw	a5,a5,a2
    800057a8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800057ac:	fd5ff06f          	j	80005780 <_Z11stringToIntPKc+0x14>
    return n;
}
    800057b0:	00813403          	ld	s0,8(sp)
    800057b4:	01010113          	addi	sp,sp,16
    800057b8:	00008067          	ret

00000000800057bc <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800057bc:	fc010113          	addi	sp,sp,-64
    800057c0:	02113c23          	sd	ra,56(sp)
    800057c4:	02813823          	sd	s0,48(sp)
    800057c8:	02913423          	sd	s1,40(sp)
    800057cc:	03213023          	sd	s2,32(sp)
    800057d0:	01313c23          	sd	s3,24(sp)
    800057d4:	04010413          	addi	s0,sp,64
    800057d8:	00050493          	mv	s1,a0
    800057dc:	00058913          	mv	s2,a1
    800057e0:	00060993          	mv	s3,a2
    LOCK();
    800057e4:	00100613          	li	a2,1
    800057e8:	00000593          	li	a1,0
    800057ec:	00006517          	auipc	a0,0x6
    800057f0:	59c50513          	addi	a0,a0,1436 # 8000bd88 <lockPrint>
    800057f4:	ffffc097          	auipc	ra,0xffffc
    800057f8:	9b0080e7          	jalr	-1616(ra) # 800011a4 <copy_and_swap>
    800057fc:	00050863          	beqz	a0,8000580c <_Z8printIntiii+0x50>
    80005800:	ffffc097          	auipc	ra,0xffffc
    80005804:	b88080e7          	jalr	-1144(ra) # 80001388 <_Z15thread_dispatchv>
    80005808:	fddff06f          	j	800057e4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000580c:	00098463          	beqz	s3,80005814 <_Z8printIntiii+0x58>
    80005810:	0804c463          	bltz	s1,80005898 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005814:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005818:	00000593          	li	a1,0
    }

    i = 0;
    8000581c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005820:	0009079b          	sext.w	a5,s2
    80005824:	0325773b          	remuw	a4,a0,s2
    80005828:	00048613          	mv	a2,s1
    8000582c:	0014849b          	addiw	s1,s1,1
    80005830:	02071693          	slli	a3,a4,0x20
    80005834:	0206d693          	srli	a3,a3,0x20
    80005838:	00006717          	auipc	a4,0x6
    8000583c:	41870713          	addi	a4,a4,1048 # 8000bc50 <digits>
    80005840:	00d70733          	add	a4,a4,a3
    80005844:	00074683          	lbu	a3,0(a4)
    80005848:	fd040713          	addi	a4,s0,-48
    8000584c:	00c70733          	add	a4,a4,a2
    80005850:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005854:	0005071b          	sext.w	a4,a0
    80005858:	0325553b          	divuw	a0,a0,s2
    8000585c:	fcf772e3          	bgeu	a4,a5,80005820 <_Z8printIntiii+0x64>
    if(neg)
    80005860:	00058c63          	beqz	a1,80005878 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005864:	fd040793          	addi	a5,s0,-48
    80005868:	009784b3          	add	s1,a5,s1
    8000586c:	02d00793          	li	a5,45
    80005870:	fef48823          	sb	a5,-16(s1)
    80005874:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005878:	fff4849b          	addiw	s1,s1,-1
    8000587c:	0204c463          	bltz	s1,800058a4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005880:	fd040793          	addi	a5,s0,-48
    80005884:	009787b3          	add	a5,a5,s1
    80005888:	ff07c503          	lbu	a0,-16(a5)
    8000588c:	ffffc097          	auipc	ra,0xffffc
    80005890:	d44080e7          	jalr	-700(ra) # 800015d0 <_Z4putcc>
    80005894:	fe5ff06f          	j	80005878 <_Z8printIntiii+0xbc>
        x = -xx;
    80005898:	4090053b          	negw	a0,s1
        neg = 1;
    8000589c:	00100593          	li	a1,1
        x = -xx;
    800058a0:	f7dff06f          	j	8000581c <_Z8printIntiii+0x60>

    UNLOCK();
    800058a4:	00000613          	li	a2,0
    800058a8:	00100593          	li	a1,1
    800058ac:	00006517          	auipc	a0,0x6
    800058b0:	4dc50513          	addi	a0,a0,1244 # 8000bd88 <lockPrint>
    800058b4:	ffffc097          	auipc	ra,0xffffc
    800058b8:	8f0080e7          	jalr	-1808(ra) # 800011a4 <copy_and_swap>
    800058bc:	fe0514e3          	bnez	a0,800058a4 <_Z8printIntiii+0xe8>
    800058c0:	03813083          	ld	ra,56(sp)
    800058c4:	03013403          	ld	s0,48(sp)
    800058c8:	02813483          	ld	s1,40(sp)
    800058cc:	02013903          	ld	s2,32(sp)
    800058d0:	01813983          	ld	s3,24(sp)
    800058d4:	04010113          	addi	sp,sp,64
    800058d8:	00008067          	ret

00000000800058dc <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800058dc:	fd010113          	addi	sp,sp,-48
    800058e0:	02113423          	sd	ra,40(sp)
    800058e4:	02813023          	sd	s0,32(sp)
    800058e8:	00913c23          	sd	s1,24(sp)
    800058ec:	01213823          	sd	s2,16(sp)
    800058f0:	01313423          	sd	s3,8(sp)
    800058f4:	03010413          	addi	s0,sp,48
    800058f8:	00050493          	mv	s1,a0
    800058fc:	00058913          	mv	s2,a1
    80005900:	0015879b          	addiw	a5,a1,1
    80005904:	0007851b          	sext.w	a0,a5
    80005908:	00f4a023          	sw	a5,0(s1)
    8000590c:	0004a823          	sw	zero,16(s1)
    80005910:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005914:	00251513          	slli	a0,a0,0x2
    80005918:	ffffc097          	auipc	ra,0xffffc
    8000591c:	8e0080e7          	jalr	-1824(ra) # 800011f8 <_Z9mem_allocm>
    80005920:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005924:	01000513          	li	a0,16
    80005928:	ffffd097          	auipc	ra,0xffffd
    8000592c:	cb0080e7          	jalr	-848(ra) # 800025d8 <_Znwm>
    80005930:	00050993          	mv	s3,a0
    80005934:	00000593          	li	a1,0
    80005938:	ffffd097          	auipc	ra,0xffffd
    8000593c:	04c080e7          	jalr	76(ra) # 80002984 <_ZN9SemaphoreC1Ej>
    80005940:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005944:	01000513          	li	a0,16
    80005948:	ffffd097          	auipc	ra,0xffffd
    8000594c:	c90080e7          	jalr	-880(ra) # 800025d8 <_Znwm>
    80005950:	00050993          	mv	s3,a0
    80005954:	00090593          	mv	a1,s2
    80005958:	ffffd097          	auipc	ra,0xffffd
    8000595c:	02c080e7          	jalr	44(ra) # 80002984 <_ZN9SemaphoreC1Ej>
    80005960:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005964:	01000513          	li	a0,16
    80005968:	ffffd097          	auipc	ra,0xffffd
    8000596c:	c70080e7          	jalr	-912(ra) # 800025d8 <_Znwm>
    80005970:	00050913          	mv	s2,a0
    80005974:	00100593          	li	a1,1
    80005978:	ffffd097          	auipc	ra,0xffffd
    8000597c:	00c080e7          	jalr	12(ra) # 80002984 <_ZN9SemaphoreC1Ej>
    80005980:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005984:	01000513          	li	a0,16
    80005988:	ffffd097          	auipc	ra,0xffffd
    8000598c:	c50080e7          	jalr	-944(ra) # 800025d8 <_Znwm>
    80005990:	00050913          	mv	s2,a0
    80005994:	00100593          	li	a1,1
    80005998:	ffffd097          	auipc	ra,0xffffd
    8000599c:	fec080e7          	jalr	-20(ra) # 80002984 <_ZN9SemaphoreC1Ej>
    800059a0:	0324b823          	sd	s2,48(s1)
}
    800059a4:	02813083          	ld	ra,40(sp)
    800059a8:	02013403          	ld	s0,32(sp)
    800059ac:	01813483          	ld	s1,24(sp)
    800059b0:	01013903          	ld	s2,16(sp)
    800059b4:	00813983          	ld	s3,8(sp)
    800059b8:	03010113          	addi	sp,sp,48
    800059bc:	00008067          	ret
    800059c0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800059c4:	00098513          	mv	a0,s3
    800059c8:	ffffd097          	auipc	ra,0xffffd
    800059cc:	c60080e7          	jalr	-928(ra) # 80002628 <_ZdlPv>
    800059d0:	00048513          	mv	a0,s1
    800059d4:	00007097          	auipc	ra,0x7
    800059d8:	494080e7          	jalr	1172(ra) # 8000ce68 <_Unwind_Resume>
    800059dc:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800059e0:	00098513          	mv	a0,s3
    800059e4:	ffffd097          	auipc	ra,0xffffd
    800059e8:	c44080e7          	jalr	-956(ra) # 80002628 <_ZdlPv>
    800059ec:	00048513          	mv	a0,s1
    800059f0:	00007097          	auipc	ra,0x7
    800059f4:	478080e7          	jalr	1144(ra) # 8000ce68 <_Unwind_Resume>
    800059f8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800059fc:	00090513          	mv	a0,s2
    80005a00:	ffffd097          	auipc	ra,0xffffd
    80005a04:	c28080e7          	jalr	-984(ra) # 80002628 <_ZdlPv>
    80005a08:	00048513          	mv	a0,s1
    80005a0c:	00007097          	auipc	ra,0x7
    80005a10:	45c080e7          	jalr	1116(ra) # 8000ce68 <_Unwind_Resume>
    80005a14:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005a18:	00090513          	mv	a0,s2
    80005a1c:	ffffd097          	auipc	ra,0xffffd
    80005a20:	c0c080e7          	jalr	-1012(ra) # 80002628 <_ZdlPv>
    80005a24:	00048513          	mv	a0,s1
    80005a28:	00007097          	auipc	ra,0x7
    80005a2c:	440080e7          	jalr	1088(ra) # 8000ce68 <_Unwind_Resume>

0000000080005a30 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005a30:	fe010113          	addi	sp,sp,-32
    80005a34:	00113c23          	sd	ra,24(sp)
    80005a38:	00813823          	sd	s0,16(sp)
    80005a3c:	00913423          	sd	s1,8(sp)
    80005a40:	01213023          	sd	s2,0(sp)
    80005a44:	02010413          	addi	s0,sp,32
    80005a48:	00050493          	mv	s1,a0
    80005a4c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005a50:	01853503          	ld	a0,24(a0)
    80005a54:	ffffd097          	auipc	ra,0xffffd
    80005a58:	f6c080e7          	jalr	-148(ra) # 800029c0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005a5c:	0304b503          	ld	a0,48(s1)
    80005a60:	ffffd097          	auipc	ra,0xffffd
    80005a64:	f60080e7          	jalr	-160(ra) # 800029c0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005a68:	0084b783          	ld	a5,8(s1)
    80005a6c:	0144a703          	lw	a4,20(s1)
    80005a70:	00271713          	slli	a4,a4,0x2
    80005a74:	00e787b3          	add	a5,a5,a4
    80005a78:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005a7c:	0144a783          	lw	a5,20(s1)
    80005a80:	0017879b          	addiw	a5,a5,1
    80005a84:	0004a703          	lw	a4,0(s1)
    80005a88:	02e7e7bb          	remw	a5,a5,a4
    80005a8c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005a90:	0304b503          	ld	a0,48(s1)
    80005a94:	ffffd097          	auipc	ra,0xffffd
    80005a98:	f58080e7          	jalr	-168(ra) # 800029ec <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005a9c:	0204b503          	ld	a0,32(s1)
    80005aa0:	ffffd097          	auipc	ra,0xffffd
    80005aa4:	f4c080e7          	jalr	-180(ra) # 800029ec <_ZN9Semaphore6signalEv>

}
    80005aa8:	01813083          	ld	ra,24(sp)
    80005aac:	01013403          	ld	s0,16(sp)
    80005ab0:	00813483          	ld	s1,8(sp)
    80005ab4:	00013903          	ld	s2,0(sp)
    80005ab8:	02010113          	addi	sp,sp,32
    80005abc:	00008067          	ret

0000000080005ac0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005ac0:	fe010113          	addi	sp,sp,-32
    80005ac4:	00113c23          	sd	ra,24(sp)
    80005ac8:	00813823          	sd	s0,16(sp)
    80005acc:	00913423          	sd	s1,8(sp)
    80005ad0:	01213023          	sd	s2,0(sp)
    80005ad4:	02010413          	addi	s0,sp,32
    80005ad8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005adc:	02053503          	ld	a0,32(a0)
    80005ae0:	ffffd097          	auipc	ra,0xffffd
    80005ae4:	ee0080e7          	jalr	-288(ra) # 800029c0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005ae8:	0284b503          	ld	a0,40(s1)
    80005aec:	ffffd097          	auipc	ra,0xffffd
    80005af0:	ed4080e7          	jalr	-300(ra) # 800029c0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005af4:	0084b703          	ld	a4,8(s1)
    80005af8:	0104a783          	lw	a5,16(s1)
    80005afc:	00279693          	slli	a3,a5,0x2
    80005b00:	00d70733          	add	a4,a4,a3
    80005b04:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005b08:	0017879b          	addiw	a5,a5,1
    80005b0c:	0004a703          	lw	a4,0(s1)
    80005b10:	02e7e7bb          	remw	a5,a5,a4
    80005b14:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005b18:	0284b503          	ld	a0,40(s1)
    80005b1c:	ffffd097          	auipc	ra,0xffffd
    80005b20:	ed0080e7          	jalr	-304(ra) # 800029ec <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005b24:	0184b503          	ld	a0,24(s1)
    80005b28:	ffffd097          	auipc	ra,0xffffd
    80005b2c:	ec4080e7          	jalr	-316(ra) # 800029ec <_ZN9Semaphore6signalEv>

    return ret;
}
    80005b30:	00090513          	mv	a0,s2
    80005b34:	01813083          	ld	ra,24(sp)
    80005b38:	01013403          	ld	s0,16(sp)
    80005b3c:	00813483          	ld	s1,8(sp)
    80005b40:	00013903          	ld	s2,0(sp)
    80005b44:	02010113          	addi	sp,sp,32
    80005b48:	00008067          	ret

0000000080005b4c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005b4c:	fe010113          	addi	sp,sp,-32
    80005b50:	00113c23          	sd	ra,24(sp)
    80005b54:	00813823          	sd	s0,16(sp)
    80005b58:	00913423          	sd	s1,8(sp)
    80005b5c:	01213023          	sd	s2,0(sp)
    80005b60:	02010413          	addi	s0,sp,32
    80005b64:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005b68:	02853503          	ld	a0,40(a0)
    80005b6c:	ffffd097          	auipc	ra,0xffffd
    80005b70:	e54080e7          	jalr	-428(ra) # 800029c0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005b74:	0304b503          	ld	a0,48(s1)
    80005b78:	ffffd097          	auipc	ra,0xffffd
    80005b7c:	e48080e7          	jalr	-440(ra) # 800029c0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005b80:	0144a783          	lw	a5,20(s1)
    80005b84:	0104a903          	lw	s2,16(s1)
    80005b88:	0327ce63          	blt	a5,s2,80005bc4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005b8c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005b90:	0304b503          	ld	a0,48(s1)
    80005b94:	ffffd097          	auipc	ra,0xffffd
    80005b98:	e58080e7          	jalr	-424(ra) # 800029ec <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005b9c:	0284b503          	ld	a0,40(s1)
    80005ba0:	ffffd097          	auipc	ra,0xffffd
    80005ba4:	e4c080e7          	jalr	-436(ra) # 800029ec <_ZN9Semaphore6signalEv>

    return ret;
}
    80005ba8:	00090513          	mv	a0,s2
    80005bac:	01813083          	ld	ra,24(sp)
    80005bb0:	01013403          	ld	s0,16(sp)
    80005bb4:	00813483          	ld	s1,8(sp)
    80005bb8:	00013903          	ld	s2,0(sp)
    80005bbc:	02010113          	addi	sp,sp,32
    80005bc0:	00008067          	ret
        ret = cap - head + tail;
    80005bc4:	0004a703          	lw	a4,0(s1)
    80005bc8:	4127093b          	subw	s2,a4,s2
    80005bcc:	00f9093b          	addw	s2,s2,a5
    80005bd0:	fc1ff06f          	j	80005b90 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005bd4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005bd4:	fe010113          	addi	sp,sp,-32
    80005bd8:	00113c23          	sd	ra,24(sp)
    80005bdc:	00813823          	sd	s0,16(sp)
    80005be0:	00913423          	sd	s1,8(sp)
    80005be4:	02010413          	addi	s0,sp,32
    80005be8:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005bec:	00a00513          	li	a0,10
    80005bf0:	ffffd097          	auipc	ra,0xffffd
    80005bf4:	eb8080e7          	jalr	-328(ra) # 80002aa8 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005bf8:	00004517          	auipc	a0,0x4
    80005bfc:	a5050513          	addi	a0,a0,-1456 # 80009648 <CONSOLE_STATUS+0x638>
    80005c00:	00000097          	auipc	ra,0x0
    80005c04:	a0c080e7          	jalr	-1524(ra) # 8000560c <_Z11printStringPKc>
    while (getCnt()) {
    80005c08:	00048513          	mv	a0,s1
    80005c0c:	00000097          	auipc	ra,0x0
    80005c10:	f40080e7          	jalr	-192(ra) # 80005b4c <_ZN9BufferCPP6getCntEv>
    80005c14:	02050c63          	beqz	a0,80005c4c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005c18:	0084b783          	ld	a5,8(s1)
    80005c1c:	0104a703          	lw	a4,16(s1)
    80005c20:	00271713          	slli	a4,a4,0x2
    80005c24:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005c28:	0007c503          	lbu	a0,0(a5)
    80005c2c:	ffffd097          	auipc	ra,0xffffd
    80005c30:	e7c080e7          	jalr	-388(ra) # 80002aa8 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005c34:	0104a783          	lw	a5,16(s1)
    80005c38:	0017879b          	addiw	a5,a5,1
    80005c3c:	0004a703          	lw	a4,0(s1)
    80005c40:	02e7e7bb          	remw	a5,a5,a4
    80005c44:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005c48:	fc1ff06f          	j	80005c08 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005c4c:	02100513          	li	a0,33
    80005c50:	ffffd097          	auipc	ra,0xffffd
    80005c54:	e58080e7          	jalr	-424(ra) # 80002aa8 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005c58:	00a00513          	li	a0,10
    80005c5c:	ffffd097          	auipc	ra,0xffffd
    80005c60:	e4c080e7          	jalr	-436(ra) # 80002aa8 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005c64:	0084b503          	ld	a0,8(s1)
    80005c68:	ffffb097          	auipc	ra,0xffffb
    80005c6c:	5dc080e7          	jalr	1500(ra) # 80001244 <_Z8mem_freePv>
    delete itemAvailable;
    80005c70:	0204b503          	ld	a0,32(s1)
    80005c74:	00050863          	beqz	a0,80005c84 <_ZN9BufferCPPD1Ev+0xb0>
    80005c78:	00053783          	ld	a5,0(a0)
    80005c7c:	0087b783          	ld	a5,8(a5)
    80005c80:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005c84:	0184b503          	ld	a0,24(s1)
    80005c88:	00050863          	beqz	a0,80005c98 <_ZN9BufferCPPD1Ev+0xc4>
    80005c8c:	00053783          	ld	a5,0(a0)
    80005c90:	0087b783          	ld	a5,8(a5)
    80005c94:	000780e7          	jalr	a5
    delete mutexTail;
    80005c98:	0304b503          	ld	a0,48(s1)
    80005c9c:	00050863          	beqz	a0,80005cac <_ZN9BufferCPPD1Ev+0xd8>
    80005ca0:	00053783          	ld	a5,0(a0)
    80005ca4:	0087b783          	ld	a5,8(a5)
    80005ca8:	000780e7          	jalr	a5
    delete mutexHead;
    80005cac:	0284b503          	ld	a0,40(s1)
    80005cb0:	00050863          	beqz	a0,80005cc0 <_ZN9BufferCPPD1Ev+0xec>
    80005cb4:	00053783          	ld	a5,0(a0)
    80005cb8:	0087b783          	ld	a5,8(a5)
    80005cbc:	000780e7          	jalr	a5
}
    80005cc0:	01813083          	ld	ra,24(sp)
    80005cc4:	01013403          	ld	s0,16(sp)
    80005cc8:	00813483          	ld	s1,8(sp)
    80005ccc:	02010113          	addi	sp,sp,32
    80005cd0:	00008067          	ret

0000000080005cd4 <_Z8modCplusv>:
private:
    Semaphore* sharedSem;
    int id;
};

void modCplus() {
    80005cd4:	e4010113          	addi	sp,sp,-448
    80005cd8:	1a113c23          	sd	ra,440(sp)
    80005cdc:	1a813823          	sd	s0,432(sp)
    80005ce0:	1a913423          	sd	s1,424(sp)
    80005ce4:	1b213023          	sd	s2,416(sp)
    80005ce8:	19313c23          	sd	s3,408(sp)
    80005cec:	1c010413          	addi	s0,sp,448
    printString("C++ API semaphore priority test started\n");
    80005cf0:	00004517          	auipc	a0,0x4
    80005cf4:	9a050513          	addi	a0,a0,-1632 # 80009690 <CONSOLE_STATUS+0x680>
    80005cf8:	00000097          	auipc	ra,0x0
    80005cfc:	914080e7          	jalr	-1772(ra) # 8000560c <_Z11printStringPKc>

    Semaphore* sharedSem = new Semaphore(5);
    80005d00:	01000513          	li	a0,16
    80005d04:	ffffd097          	auipc	ra,0xffffd
    80005d08:	8d4080e7          	jalr	-1836(ra) # 800025d8 <_Znwm>
    80005d0c:	00050993          	mv	s3,a0
    80005d10:	00500593          	li	a1,5
    80005d14:	ffffd097          	auipc	ra,0xffffd
    80005d18:	c70080e7          	jalr	-912(ra) # 80002984 <_ZN9SemaphoreC1Ej>

    PriorityThreadCpp* threads[CPP_THREAD_COUNT];

    for (int i = 0; i < CPP_THREAD_COUNT; i++) {
    80005d1c:	00000913          	li	s2,0
    80005d20:	0380006f          	j	80005d58 <_Z8modCplusv+0x84>
            : Thread(), sharedSem(sharedSem), id(id) {}
    80005d24:	00006797          	auipc	a5,0x6
    80005d28:	f5478793          	addi	a5,a5,-172 # 8000bc78 <_ZTV17PriorityThreadCpp+0x10>
    80005d2c:	00f4b023          	sd	a5,0(s1)
    80005d30:	0334b023          	sd	s3,32(s1)
    80005d34:	0324a423          	sw	s2,40(s1)
        threads[i] = new PriorityThreadCpp(sharedSem, i);
    80005d38:	00391793          	slli	a5,s2,0x3
    80005d3c:	fd040713          	addi	a4,s0,-48
    80005d40:	00f707b3          	add	a5,a4,a5
    80005d44:	e697b823          	sd	s1,-400(a5)
        threads[i]->start();
    80005d48:	00048513          	mv	a0,s1
    80005d4c:	ffffd097          	auipc	ra,0xffffd
    80005d50:	b94080e7          	jalr	-1132(ra) # 800028e0 <_ZN6Thread5startEv>
    for (int i = 0; i < CPP_THREAD_COUNT; i++) {
    80005d54:	0019091b          	addiw	s2,s2,1
    80005d58:	03100793          	li	a5,49
    80005d5c:	0327c063          	blt	a5,s2,80005d7c <_Z8modCplusv+0xa8>
        threads[i] = new PriorityThreadCpp(sharedSem, i);
    80005d60:	03000513          	li	a0,48
    80005d64:	ffffd097          	auipc	ra,0xffffd
    80005d68:	874080e7          	jalr	-1932(ra) # 800025d8 <_Znwm>
    80005d6c:	00050493          	mv	s1,a0
            : Thread(), sharedSem(sharedSem), id(id) {}
    80005d70:	ffffd097          	auipc	ra,0xffffd
    80005d74:	b40080e7          	jalr	-1216(ra) # 800028b0 <_ZN6ThreadC1Ev>
    80005d78:	fadff06f          	j	80005d24 <_Z8modCplusv+0x50>
    }

    // Nemamo join, pa main/userMain dosta puta prepusta procesor.
    for (int i = 0; i < 10000; i++) {
    80005d7c:	00000493          	li	s1,0
    80005d80:	000027b7          	lui	a5,0x2
    80005d84:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005d88:	0097ca63          	blt	a5,s1,80005d9c <_Z8modCplusv+0xc8>
        Thread::dispatch();
    80005d8c:	ffffd097          	auipc	ra,0xffffd
    80005d90:	ba8080e7          	jalr	-1112(ra) # 80002934 <_ZN6Thread8dispatchEv>
    for (int i = 0; i < 10000; i++) {
    80005d94:	0014849b          	addiw	s1,s1,1
    80005d98:	fe9ff06f          	j	80005d80 <_Z8modCplusv+0xac>
    }

    for (int i = 0; i < CPP_THREAD_COUNT; i++) {
    80005d9c:	00000493          	li	s1,0
    80005da0:	0080006f          	j	80005da8 <_Z8modCplusv+0xd4>
    80005da4:	0014849b          	addiw	s1,s1,1
    80005da8:	03100793          	li	a5,49
    80005dac:	0297c463          	blt	a5,s1,80005dd4 <_Z8modCplusv+0x100>
        delete threads[i];
    80005db0:	00349793          	slli	a5,s1,0x3
    80005db4:	fd040713          	addi	a4,s0,-48
    80005db8:	00f707b3          	add	a5,a4,a5
    80005dbc:	e707b503          	ld	a0,-400(a5)
    80005dc0:	fe0502e3          	beqz	a0,80005da4 <_Z8modCplusv+0xd0>
    80005dc4:	00053783          	ld	a5,0(a0)
    80005dc8:	0087b783          	ld	a5,8(a5)
    80005dcc:	000780e7          	jalr	a5
    80005dd0:	fd5ff06f          	j	80005da4 <_Z8modCplusv+0xd0>
    }

    delete sharedSem;
    80005dd4:	00098a63          	beqz	s3,80005de8 <_Z8modCplusv+0x114>
    80005dd8:	0009b783          	ld	a5,0(s3)
    80005ddc:	0087b783          	ld	a5,8(a5)
    80005de0:	00098513          	mv	a0,s3
    80005de4:	000780e7          	jalr	a5

    printString("C++ API semaphore priority test finished\n");
    80005de8:	00004517          	auipc	a0,0x4
    80005dec:	8d850513          	addi	a0,a0,-1832 # 800096c0 <CONSOLE_STATUS+0x6b0>
    80005df0:	00000097          	auipc	ra,0x0
    80005df4:	81c080e7          	jalr	-2020(ra) # 8000560c <_Z11printStringPKc>
    80005df8:	1b813083          	ld	ra,440(sp)
    80005dfc:	1b013403          	ld	s0,432(sp)
    80005e00:	1a813483          	ld	s1,424(sp)
    80005e04:	1a013903          	ld	s2,416(sp)
    80005e08:	19813983          	ld	s3,408(sp)
    80005e0c:	1c010113          	addi	sp,sp,448
    80005e10:	00008067          	ret
    80005e14:	00050493          	mv	s1,a0
    Semaphore* sharedSem = new Semaphore(5);
    80005e18:	00098513          	mv	a0,s3
    80005e1c:	ffffd097          	auipc	ra,0xffffd
    80005e20:	80c080e7          	jalr	-2036(ra) # 80002628 <_ZdlPv>
    80005e24:	00048513          	mv	a0,s1
    80005e28:	00007097          	auipc	ra,0x7
    80005e2c:	040080e7          	jalr	64(ra) # 8000ce68 <_Unwind_Resume>
    80005e30:	00050913          	mv	s2,a0
        threads[i] = new PriorityThreadCpp(sharedSem, i);
    80005e34:	00048513          	mv	a0,s1
    80005e38:	ffffc097          	auipc	ra,0xffffc
    80005e3c:	7f0080e7          	jalr	2032(ra) # 80002628 <_ZdlPv>
    80005e40:	00090513          	mv	a0,s2
    80005e44:	00007097          	auipc	ra,0x7
    80005e48:	024080e7          	jalr	36(ra) # 8000ce68 <_Unwind_Resume>

0000000080005e4c <_ZL11busyWaitCppi>:
static void busyWaitCpp(int id) {
    80005e4c:	fe010113          	addi	sp,sp,-32
    80005e50:	00813c23          	sd	s0,24(sp)
    80005e54:	02010413          	addi	s0,sp,32
    volatile int counter = 0;
    80005e58:	fe042623          	sw	zero,-20(s0)
    int limit = 1000 + id * 300;
    80005e5c:	12c00793          	li	a5,300
    80005e60:	02a7853b          	mulw	a0,a5,a0
    80005e64:	3e85051b          	addiw	a0,a0,1000
    for (int i = 0; i < limit; i++) {
    80005e68:	00000713          	li	a4,0
    80005e6c:	00a75c63          	bge	a4,a0,80005e84 <_ZL11busyWaitCppi+0x38>
        counter++;
    80005e70:	fec42783          	lw	a5,-20(s0)
    80005e74:	0017879b          	addiw	a5,a5,1
    80005e78:	fef42623          	sw	a5,-20(s0)
    for (int i = 0; i < limit; i++) {
    80005e7c:	0017071b          	addiw	a4,a4,1
    80005e80:	fedff06f          	j	80005e6c <_ZL11busyWaitCppi+0x20>
}
    80005e84:	01813403          	ld	s0,24(sp)
    80005e88:	02010113          	addi	sp,sp,32
    80005e8c:	00008067          	ret

0000000080005e90 <_ZN17PriorityThreadCpp3runEv>:
    void run() override {
    80005e90:	fe010113          	addi	sp,sp,-32
    80005e94:	00113c23          	sd	ra,24(sp)
    80005e98:	00813823          	sd	s0,16(sp)
    80005e9c:	00913423          	sd	s1,8(sp)
    80005ea0:	01213023          	sd	s2,0(sp)
    80005ea4:	02010413          	addi	s0,sp,32
    80005ea8:	00050493          	mv	s1,a0
        for (int i = 0; i < CPP_ITERATIONS; i++) {
    80005eac:	00000913          	li	s2,0
    80005eb0:	1500006f          	j	80006000 <_ZN17PriorityThreadCpp3runEv+0x170>
            printString("CPP Thread ");
    80005eb4:	00003517          	auipc	a0,0x3
    80005eb8:	7ac50513          	addi	a0,a0,1964 # 80009660 <CONSOLE_STATUS+0x650>
    80005ebc:	fffff097          	auipc	ra,0xfffff
    80005ec0:	750080e7          	jalr	1872(ra) # 8000560c <_Z11printStringPKc>
            printInt(id);
    80005ec4:	00000613          	li	a2,0
    80005ec8:	00a00593          	li	a1,10
    80005ecc:	0284a503          	lw	a0,40(s1)
    80005ed0:	00000097          	auipc	ra,0x0
    80005ed4:	8ec080e7          	jalr	-1812(ra) # 800057bc <_Z8printIntiii>
            printString(" trying to enter, iteration ");
    80005ed8:	00003517          	auipc	a0,0x3
    80005edc:	4b050513          	addi	a0,a0,1200 # 80009388 <CONSOLE_STATUS+0x378>
    80005ee0:	fffff097          	auipc	ra,0xfffff
    80005ee4:	72c080e7          	jalr	1836(ra) # 8000560c <_Z11printStringPKc>
            printInt(i);
    80005ee8:	00000613          	li	a2,0
    80005eec:	00a00593          	li	a1,10
    80005ef0:	00090513          	mv	a0,s2
    80005ef4:	00000097          	auipc	ra,0x0
    80005ef8:	8c8080e7          	jalr	-1848(ra) # 800057bc <_Z8printIntiii>
            printString("\n");
    80005efc:	00003517          	auipc	a0,0x3
    80005f00:	3bc50513          	addi	a0,a0,956 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80005f04:	fffff097          	auipc	ra,0xfffff
    80005f08:	708080e7          	jalr	1800(ra) # 8000560c <_Z11printStringPKc>
            sharedSem->wait();
    80005f0c:	0204b503          	ld	a0,32(s1)
    80005f10:	ffffd097          	auipc	ra,0xffffd
    80005f14:	ab0080e7          	jalr	-1360(ra) # 800029c0 <_ZN9Semaphore4waitEv>
            printString(">>> CPP Thread ");
    80005f18:	00003517          	auipc	a0,0x3
    80005f1c:	75850513          	addi	a0,a0,1880 # 80009670 <CONSOLE_STATUS+0x660>
    80005f20:	fffff097          	auipc	ra,0xfffff
    80005f24:	6ec080e7          	jalr	1772(ra) # 8000560c <_Z11printStringPKc>
            printInt(id);
    80005f28:	00000613          	li	a2,0
    80005f2c:	00a00593          	li	a1,10
    80005f30:	0284a503          	lw	a0,40(s1)
    80005f34:	00000097          	auipc	ra,0x0
    80005f38:	888080e7          	jalr	-1912(ra) # 800057bc <_Z8printIntiii>
            printString(" ENTERED critical section, iteration ");
    80005f3c:	00003517          	auipc	a0,0x3
    80005f40:	47c50513          	addi	a0,a0,1148 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80005f44:	fffff097          	auipc	ra,0xfffff
    80005f48:	6c8080e7          	jalr	1736(ra) # 8000560c <_Z11printStringPKc>
            printInt(i);
    80005f4c:	00000613          	li	a2,0
    80005f50:	00a00593          	li	a1,10
    80005f54:	00090513          	mv	a0,s2
    80005f58:	00000097          	auipc	ra,0x0
    80005f5c:	864080e7          	jalr	-1948(ra) # 800057bc <_Z8printIntiii>
            printString("\n");
    80005f60:	00003517          	auipc	a0,0x3
    80005f64:	35850513          	addi	a0,a0,856 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80005f68:	fffff097          	auipc	ra,0xfffff
    80005f6c:	6a4080e7          	jalr	1700(ra) # 8000560c <_Z11printStringPKc>
            busyWaitCpp(id);
    80005f70:	0284a503          	lw	a0,40(s1)
    80005f74:	00000097          	auipc	ra,0x0
    80005f78:	ed8080e7          	jalr	-296(ra) # 80005e4c <_ZL11busyWaitCppi>
            Thread::dispatch();
    80005f7c:	ffffd097          	auipc	ra,0xffffd
    80005f80:	9b8080e7          	jalr	-1608(ra) # 80002934 <_ZN6Thread8dispatchEv>
            busyWaitCpp(id);
    80005f84:	0284a503          	lw	a0,40(s1)
    80005f88:	00000097          	auipc	ra,0x0
    80005f8c:	ec4080e7          	jalr	-316(ra) # 80005e4c <_ZL11busyWaitCppi>
            printString("<<< CPP Thread ");
    80005f90:	00003517          	auipc	a0,0x3
    80005f94:	6f050513          	addi	a0,a0,1776 # 80009680 <CONSOLE_STATUS+0x670>
    80005f98:	fffff097          	auipc	ra,0xfffff
    80005f9c:	674080e7          	jalr	1652(ra) # 8000560c <_Z11printStringPKc>
            printInt(id);
    80005fa0:	00000613          	li	a2,0
    80005fa4:	00a00593          	li	a1,10
    80005fa8:	0284a503          	lw	a0,40(s1)
    80005fac:	00000097          	auipc	ra,0x0
    80005fb0:	810080e7          	jalr	-2032(ra) # 800057bc <_Z8printIntiii>
            printString(" EXITED critical section, iteration ");
    80005fb4:	00003517          	auipc	a0,0x3
    80005fb8:	43c50513          	addi	a0,a0,1084 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80005fbc:	fffff097          	auipc	ra,0xfffff
    80005fc0:	650080e7          	jalr	1616(ra) # 8000560c <_Z11printStringPKc>
            printInt(i);
    80005fc4:	00000613          	li	a2,0
    80005fc8:	00a00593          	li	a1,10
    80005fcc:	00090513          	mv	a0,s2
    80005fd0:	fffff097          	auipc	ra,0xfffff
    80005fd4:	7ec080e7          	jalr	2028(ra) # 800057bc <_Z8printIntiii>
            printString("\n");
    80005fd8:	00003517          	auipc	a0,0x3
    80005fdc:	2e050513          	addi	a0,a0,736 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80005fe0:	fffff097          	auipc	ra,0xfffff
    80005fe4:	62c080e7          	jalr	1580(ra) # 8000560c <_Z11printStringPKc>
            sharedSem->signal();
    80005fe8:	0204b503          	ld	a0,32(s1)
    80005fec:	ffffd097          	auipc	ra,0xffffd
    80005ff0:	a00080e7          	jalr	-1536(ra) # 800029ec <_ZN9Semaphore6signalEv>
            Thread::dispatch();
    80005ff4:	ffffd097          	auipc	ra,0xffffd
    80005ff8:	940080e7          	jalr	-1728(ra) # 80002934 <_ZN6Thread8dispatchEv>
        for (int i = 0; i < CPP_ITERATIONS; i++) {
    80005ffc:	0019091b          	addiw	s2,s2,1
    80006000:	00200793          	li	a5,2
    80006004:	eb27d8e3          	bge	a5,s2,80005eb4 <_ZN17PriorityThreadCpp3runEv+0x24>
    }
    80006008:	01813083          	ld	ra,24(sp)
    8000600c:	01013403          	ld	s0,16(sp)
    80006010:	00813483          	ld	s1,8(sp)
    80006014:	00013903          	ld	s2,0(sp)
    80006018:	02010113          	addi	sp,sp,32
    8000601c:	00008067          	ret

0000000080006020 <_ZN17PriorityThreadCppD1Ev>:
class PriorityThreadCpp : public Thread {
    80006020:	ff010113          	addi	sp,sp,-16
    80006024:	00113423          	sd	ra,8(sp)
    80006028:	00813023          	sd	s0,0(sp)
    8000602c:	01010413          	addi	s0,sp,16
    80006030:	00006797          	auipc	a5,0x6
    80006034:	c4878793          	addi	a5,a5,-952 # 8000bc78 <_ZTV17PriorityThreadCpp+0x10>
    80006038:	00f53023          	sd	a5,0(a0)
    8000603c:	ffffc097          	auipc	ra,0xffffc
    80006040:	750080e7          	jalr	1872(ra) # 8000278c <_ZN6ThreadD1Ev>
    80006044:	00813083          	ld	ra,8(sp)
    80006048:	00013403          	ld	s0,0(sp)
    8000604c:	01010113          	addi	sp,sp,16
    80006050:	00008067          	ret

0000000080006054 <_ZN17PriorityThreadCppD0Ev>:
    80006054:	fe010113          	addi	sp,sp,-32
    80006058:	00113c23          	sd	ra,24(sp)
    8000605c:	00813823          	sd	s0,16(sp)
    80006060:	00913423          	sd	s1,8(sp)
    80006064:	02010413          	addi	s0,sp,32
    80006068:	00050493          	mv	s1,a0
    8000606c:	00006797          	auipc	a5,0x6
    80006070:	c0c78793          	addi	a5,a5,-1012 # 8000bc78 <_ZTV17PriorityThreadCpp+0x10>
    80006074:	00f53023          	sd	a5,0(a0)
    80006078:	ffffc097          	auipc	ra,0xffffc
    8000607c:	714080e7          	jalr	1812(ra) # 8000278c <_ZN6ThreadD1Ev>
    80006080:	00048513          	mv	a0,s1
    80006084:	ffffc097          	auipc	ra,0xffffc
    80006088:	5a4080e7          	jalr	1444(ra) # 80002628 <_ZdlPv>
    8000608c:	01813083          	ld	ra,24(sp)
    80006090:	01013403          	ld	s0,16(sp)
    80006094:	00813483          	ld	s1,8(sp)
    80006098:	02010113          	addi	sp,sp,32
    8000609c:	00008067          	ret

00000000800060a0 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800060a0:	fe010113          	addi	sp,sp,-32
    800060a4:	00113c23          	sd	ra,24(sp)
    800060a8:	00813823          	sd	s0,16(sp)
    800060ac:	00913423          	sd	s1,8(sp)
    800060b0:	01213023          	sd	s2,0(sp)
    800060b4:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800060b8:	00053903          	ld	s2,0(a0)
    int i = 6;
    800060bc:	00600493          	li	s1,6
    while (--i > 0) {
    800060c0:	fff4849b          	addiw	s1,s1,-1
    800060c4:	04905463          	blez	s1,8000610c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800060c8:	00003517          	auipc	a0,0x3
    800060cc:	62850513          	addi	a0,a0,1576 # 800096f0 <CONSOLE_STATUS+0x6e0>
    800060d0:	fffff097          	auipc	ra,0xfffff
    800060d4:	53c080e7          	jalr	1340(ra) # 8000560c <_Z11printStringPKc>
        printInt(sleep_time);
    800060d8:	00000613          	li	a2,0
    800060dc:	00a00593          	li	a1,10
    800060e0:	0009051b          	sext.w	a0,s2
    800060e4:	fffff097          	auipc	ra,0xfffff
    800060e8:	6d8080e7          	jalr	1752(ra) # 800057bc <_Z8printIntiii>
        printString(" !\n");
    800060ec:	00003517          	auipc	a0,0x3
    800060f0:	60c50513          	addi	a0,a0,1548 # 800096f8 <CONSOLE_STATUS+0x6e8>
    800060f4:	fffff097          	auipc	ra,0xfffff
    800060f8:	518080e7          	jalr	1304(ra) # 8000560c <_Z11printStringPKc>
        time_sleep(sleep_time);
    800060fc:	00090513          	mv	a0,s2
    80006100:	ffffb097          	auipc	ra,0xffffb
    80006104:	450080e7          	jalr	1104(ra) # 80001550 <_Z10time_sleepm>
    while (--i > 0) {
    80006108:	fb9ff06f          	j	800060c0 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    8000610c:	00a00793          	li	a5,10
    80006110:	02f95933          	divu	s2,s2,a5
    80006114:	fff90913          	addi	s2,s2,-1
    80006118:	00006797          	auipc	a5,0x6
    8000611c:	c7878793          	addi	a5,a5,-904 # 8000bd90 <_ZL8finished>
    80006120:	01278933          	add	s2,a5,s2
    80006124:	00100793          	li	a5,1
    80006128:	00f90023          	sb	a5,0(s2)
}
    8000612c:	01813083          	ld	ra,24(sp)
    80006130:	01013403          	ld	s0,16(sp)
    80006134:	00813483          	ld	s1,8(sp)
    80006138:	00013903          	ld	s2,0(sp)
    8000613c:	02010113          	addi	sp,sp,32
    80006140:	00008067          	ret

0000000080006144 <_Z12testSleepingv>:

void testSleeping() {
    80006144:	fc010113          	addi	sp,sp,-64
    80006148:	02113c23          	sd	ra,56(sp)
    8000614c:	02813823          	sd	s0,48(sp)
    80006150:	02913423          	sd	s1,40(sp)
    80006154:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006158:	00a00793          	li	a5,10
    8000615c:	fcf43823          	sd	a5,-48(s0)
    80006160:	01400793          	li	a5,20
    80006164:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006168:	00000493          	li	s1,0
    8000616c:	02c0006f          	j	80006198 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006170:	00349793          	slli	a5,s1,0x3
    80006174:	fd040613          	addi	a2,s0,-48
    80006178:	00f60633          	add	a2,a2,a5
    8000617c:	00000597          	auipc	a1,0x0
    80006180:	f2458593          	addi	a1,a1,-220 # 800060a0 <_ZL9sleepyRunPv>
    80006184:	fc040513          	addi	a0,s0,-64
    80006188:	00f50533          	add	a0,a0,a5
    8000618c:	ffffb097          	auipc	ra,0xffffb
    80006190:	0f8080e7          	jalr	248(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006194:	0014849b          	addiw	s1,s1,1
    80006198:	00100793          	li	a5,1
    8000619c:	fc97dae3          	bge	a5,s1,80006170 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800061a0:	00006797          	auipc	a5,0x6
    800061a4:	bf07c783          	lbu	a5,-1040(a5) # 8000bd90 <_ZL8finished>
    800061a8:	fe078ce3          	beqz	a5,800061a0 <_Z12testSleepingv+0x5c>
    800061ac:	00006797          	auipc	a5,0x6
    800061b0:	be57c783          	lbu	a5,-1051(a5) # 8000bd91 <_ZL8finished+0x1>
    800061b4:	fe0786e3          	beqz	a5,800061a0 <_Z12testSleepingv+0x5c>
}
    800061b8:	03813083          	ld	ra,56(sp)
    800061bc:	03013403          	ld	s0,48(sp)
    800061c0:	02813483          	ld	s1,40(sp)
    800061c4:	04010113          	addi	sp,sp,64
    800061c8:	00008067          	ret

00000000800061cc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800061cc:	fe010113          	addi	sp,sp,-32
    800061d0:	00113c23          	sd	ra,24(sp)
    800061d4:	00813823          	sd	s0,16(sp)
    800061d8:	00913423          	sd	s1,8(sp)
    800061dc:	01213023          	sd	s2,0(sp)
    800061e0:	02010413          	addi	s0,sp,32
    800061e4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800061e8:	00100793          	li	a5,1
    800061ec:	02a7f863          	bgeu	a5,a0,8000621c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800061f0:	00a00793          	li	a5,10
    800061f4:	02f577b3          	remu	a5,a0,a5
    800061f8:	02078e63          	beqz	a5,80006234 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800061fc:	fff48513          	addi	a0,s1,-1
    80006200:	00000097          	auipc	ra,0x0
    80006204:	fcc080e7          	jalr	-52(ra) # 800061cc <_ZL9fibonaccim>
    80006208:	00050913          	mv	s2,a0
    8000620c:	ffe48513          	addi	a0,s1,-2
    80006210:	00000097          	auipc	ra,0x0
    80006214:	fbc080e7          	jalr	-68(ra) # 800061cc <_ZL9fibonaccim>
    80006218:	00a90533          	add	a0,s2,a0
}
    8000621c:	01813083          	ld	ra,24(sp)
    80006220:	01013403          	ld	s0,16(sp)
    80006224:	00813483          	ld	s1,8(sp)
    80006228:	00013903          	ld	s2,0(sp)
    8000622c:	02010113          	addi	sp,sp,32
    80006230:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006234:	ffffb097          	auipc	ra,0xffffb
    80006238:	154080e7          	jalr	340(ra) # 80001388 <_Z15thread_dispatchv>
    8000623c:	fc1ff06f          	j	800061fc <_ZL9fibonaccim+0x30>

0000000080006240 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006240:	fe010113          	addi	sp,sp,-32
    80006244:	00113c23          	sd	ra,24(sp)
    80006248:	00813823          	sd	s0,16(sp)
    8000624c:	00913423          	sd	s1,8(sp)
    80006250:	01213023          	sd	s2,0(sp)
    80006254:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006258:	00a00493          	li	s1,10
    8000625c:	0400006f          	j	8000629c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006260:	00003517          	auipc	a0,0x3
    80006264:	35050513          	addi	a0,a0,848 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80006268:	fffff097          	auipc	ra,0xfffff
    8000626c:	3a4080e7          	jalr	932(ra) # 8000560c <_Z11printStringPKc>
    80006270:	00000613          	li	a2,0
    80006274:	00a00593          	li	a1,10
    80006278:	00048513          	mv	a0,s1
    8000627c:	fffff097          	auipc	ra,0xfffff
    80006280:	540080e7          	jalr	1344(ra) # 800057bc <_Z8printIntiii>
    80006284:	00003517          	auipc	a0,0x3
    80006288:	03450513          	addi	a0,a0,52 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000628c:	fffff097          	auipc	ra,0xfffff
    80006290:	380080e7          	jalr	896(ra) # 8000560c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006294:	0014849b          	addiw	s1,s1,1
    80006298:	0ff4f493          	andi	s1,s1,255
    8000629c:	00c00793          	li	a5,12
    800062a0:	fc97f0e3          	bgeu	a5,s1,80006260 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800062a4:	00003517          	auipc	a0,0x3
    800062a8:	31450513          	addi	a0,a0,788 # 800095b8 <CONSOLE_STATUS+0x5a8>
    800062ac:	fffff097          	auipc	ra,0xfffff
    800062b0:	360080e7          	jalr	864(ra) # 8000560c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800062b4:	00500313          	li	t1,5
    thread_dispatch();
    800062b8:	ffffb097          	auipc	ra,0xffffb
    800062bc:	0d0080e7          	jalr	208(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800062c0:	01000513          	li	a0,16
    800062c4:	00000097          	auipc	ra,0x0
    800062c8:	f08080e7          	jalr	-248(ra) # 800061cc <_ZL9fibonaccim>
    800062cc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800062d0:	00003517          	auipc	a0,0x3
    800062d4:	2f850513          	addi	a0,a0,760 # 800095c8 <CONSOLE_STATUS+0x5b8>
    800062d8:	fffff097          	auipc	ra,0xfffff
    800062dc:	334080e7          	jalr	820(ra) # 8000560c <_Z11printStringPKc>
    800062e0:	00000613          	li	a2,0
    800062e4:	00a00593          	li	a1,10
    800062e8:	0009051b          	sext.w	a0,s2
    800062ec:	fffff097          	auipc	ra,0xfffff
    800062f0:	4d0080e7          	jalr	1232(ra) # 800057bc <_Z8printIntiii>
    800062f4:	00003517          	auipc	a0,0x3
    800062f8:	fc450513          	addi	a0,a0,-60 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800062fc:	fffff097          	auipc	ra,0xfffff
    80006300:	310080e7          	jalr	784(ra) # 8000560c <_Z11printStringPKc>
    80006304:	0400006f          	j	80006344 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006308:	00003517          	auipc	a0,0x3
    8000630c:	2a850513          	addi	a0,a0,680 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80006310:	fffff097          	auipc	ra,0xfffff
    80006314:	2fc080e7          	jalr	764(ra) # 8000560c <_Z11printStringPKc>
    80006318:	00000613          	li	a2,0
    8000631c:	00a00593          	li	a1,10
    80006320:	00048513          	mv	a0,s1
    80006324:	fffff097          	auipc	ra,0xfffff
    80006328:	498080e7          	jalr	1176(ra) # 800057bc <_Z8printIntiii>
    8000632c:	00003517          	auipc	a0,0x3
    80006330:	f8c50513          	addi	a0,a0,-116 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006334:	fffff097          	auipc	ra,0xfffff
    80006338:	2d8080e7          	jalr	728(ra) # 8000560c <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000633c:	0014849b          	addiw	s1,s1,1
    80006340:	0ff4f493          	andi	s1,s1,255
    80006344:	00f00793          	li	a5,15
    80006348:	fc97f0e3          	bgeu	a5,s1,80006308 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000634c:	00003517          	auipc	a0,0x3
    80006350:	28c50513          	addi	a0,a0,652 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006354:	fffff097          	auipc	ra,0xfffff
    80006358:	2b8080e7          	jalr	696(ra) # 8000560c <_Z11printStringPKc>
    finishedD = true;
    8000635c:	00100793          	li	a5,1
    80006360:	00006717          	auipc	a4,0x6
    80006364:	a2f70923          	sb	a5,-1486(a4) # 8000bd92 <_ZL9finishedD>
    thread_dispatch();
    80006368:	ffffb097          	auipc	ra,0xffffb
    8000636c:	020080e7          	jalr	32(ra) # 80001388 <_Z15thread_dispatchv>
}
    80006370:	01813083          	ld	ra,24(sp)
    80006374:	01013403          	ld	s0,16(sp)
    80006378:	00813483          	ld	s1,8(sp)
    8000637c:	00013903          	ld	s2,0(sp)
    80006380:	02010113          	addi	sp,sp,32
    80006384:	00008067          	ret

0000000080006388 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006388:	fe010113          	addi	sp,sp,-32
    8000638c:	00113c23          	sd	ra,24(sp)
    80006390:	00813823          	sd	s0,16(sp)
    80006394:	00913423          	sd	s1,8(sp)
    80006398:	01213023          	sd	s2,0(sp)
    8000639c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800063a0:	00000493          	li	s1,0
    800063a4:	0400006f          	j	800063e4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800063a8:	00003517          	auipc	a0,0x3
    800063ac:	1d850513          	addi	a0,a0,472 # 80009580 <CONSOLE_STATUS+0x570>
    800063b0:	fffff097          	auipc	ra,0xfffff
    800063b4:	25c080e7          	jalr	604(ra) # 8000560c <_Z11printStringPKc>
    800063b8:	00000613          	li	a2,0
    800063bc:	00a00593          	li	a1,10
    800063c0:	00048513          	mv	a0,s1
    800063c4:	fffff097          	auipc	ra,0xfffff
    800063c8:	3f8080e7          	jalr	1016(ra) # 800057bc <_Z8printIntiii>
    800063cc:	00003517          	auipc	a0,0x3
    800063d0:	eec50513          	addi	a0,a0,-276 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800063d4:	fffff097          	auipc	ra,0xfffff
    800063d8:	238080e7          	jalr	568(ra) # 8000560c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800063dc:	0014849b          	addiw	s1,s1,1
    800063e0:	0ff4f493          	andi	s1,s1,255
    800063e4:	00200793          	li	a5,2
    800063e8:	fc97f0e3          	bgeu	a5,s1,800063a8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800063ec:	00003517          	auipc	a0,0x3
    800063f0:	19c50513          	addi	a0,a0,412 # 80009588 <CONSOLE_STATUS+0x578>
    800063f4:	fffff097          	auipc	ra,0xfffff
    800063f8:	218080e7          	jalr	536(ra) # 8000560c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800063fc:	00700313          	li	t1,7
    thread_dispatch();
    80006400:	ffffb097          	auipc	ra,0xffffb
    80006404:	f88080e7          	jalr	-120(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006408:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000640c:	00003517          	auipc	a0,0x3
    80006410:	18c50513          	addi	a0,a0,396 # 80009598 <CONSOLE_STATUS+0x588>
    80006414:	fffff097          	auipc	ra,0xfffff
    80006418:	1f8080e7          	jalr	504(ra) # 8000560c <_Z11printStringPKc>
    8000641c:	00000613          	li	a2,0
    80006420:	00a00593          	li	a1,10
    80006424:	0009051b          	sext.w	a0,s2
    80006428:	fffff097          	auipc	ra,0xfffff
    8000642c:	394080e7          	jalr	916(ra) # 800057bc <_Z8printIntiii>
    80006430:	00003517          	auipc	a0,0x3
    80006434:	e8850513          	addi	a0,a0,-376 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006438:	fffff097          	auipc	ra,0xfffff
    8000643c:	1d4080e7          	jalr	468(ra) # 8000560c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006440:	00c00513          	li	a0,12
    80006444:	00000097          	auipc	ra,0x0
    80006448:	d88080e7          	jalr	-632(ra) # 800061cc <_ZL9fibonaccim>
    8000644c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006450:	00003517          	auipc	a0,0x3
    80006454:	15050513          	addi	a0,a0,336 # 800095a0 <CONSOLE_STATUS+0x590>
    80006458:	fffff097          	auipc	ra,0xfffff
    8000645c:	1b4080e7          	jalr	436(ra) # 8000560c <_Z11printStringPKc>
    80006460:	00000613          	li	a2,0
    80006464:	00a00593          	li	a1,10
    80006468:	0009051b          	sext.w	a0,s2
    8000646c:	fffff097          	auipc	ra,0xfffff
    80006470:	350080e7          	jalr	848(ra) # 800057bc <_Z8printIntiii>
    80006474:	00003517          	auipc	a0,0x3
    80006478:	e4450513          	addi	a0,a0,-444 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000647c:	fffff097          	auipc	ra,0xfffff
    80006480:	190080e7          	jalr	400(ra) # 8000560c <_Z11printStringPKc>
    80006484:	0400006f          	j	800064c4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006488:	00003517          	auipc	a0,0x3
    8000648c:	0f850513          	addi	a0,a0,248 # 80009580 <CONSOLE_STATUS+0x570>
    80006490:	fffff097          	auipc	ra,0xfffff
    80006494:	17c080e7          	jalr	380(ra) # 8000560c <_Z11printStringPKc>
    80006498:	00000613          	li	a2,0
    8000649c:	00a00593          	li	a1,10
    800064a0:	00048513          	mv	a0,s1
    800064a4:	fffff097          	auipc	ra,0xfffff
    800064a8:	318080e7          	jalr	792(ra) # 800057bc <_Z8printIntiii>
    800064ac:	00003517          	auipc	a0,0x3
    800064b0:	e0c50513          	addi	a0,a0,-500 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800064b4:	fffff097          	auipc	ra,0xfffff
    800064b8:	158080e7          	jalr	344(ra) # 8000560c <_Z11printStringPKc>
    for (; i < 6; i++) {
    800064bc:	0014849b          	addiw	s1,s1,1
    800064c0:	0ff4f493          	andi	s1,s1,255
    800064c4:	00500793          	li	a5,5
    800064c8:	fc97f0e3          	bgeu	a5,s1,80006488 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800064cc:	00003517          	auipc	a0,0x3
    800064d0:	08c50513          	addi	a0,a0,140 # 80009558 <CONSOLE_STATUS+0x548>
    800064d4:	fffff097          	auipc	ra,0xfffff
    800064d8:	138080e7          	jalr	312(ra) # 8000560c <_Z11printStringPKc>
    finishedC = true;
    800064dc:	00100793          	li	a5,1
    800064e0:	00006717          	auipc	a4,0x6
    800064e4:	8af709a3          	sb	a5,-1869(a4) # 8000bd93 <_ZL9finishedC>
    thread_dispatch();
    800064e8:	ffffb097          	auipc	ra,0xffffb
    800064ec:	ea0080e7          	jalr	-352(ra) # 80001388 <_Z15thread_dispatchv>
}
    800064f0:	01813083          	ld	ra,24(sp)
    800064f4:	01013403          	ld	s0,16(sp)
    800064f8:	00813483          	ld	s1,8(sp)
    800064fc:	00013903          	ld	s2,0(sp)
    80006500:	02010113          	addi	sp,sp,32
    80006504:	00008067          	ret

0000000080006508 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006508:	fe010113          	addi	sp,sp,-32
    8000650c:	00113c23          	sd	ra,24(sp)
    80006510:	00813823          	sd	s0,16(sp)
    80006514:	00913423          	sd	s1,8(sp)
    80006518:	01213023          	sd	s2,0(sp)
    8000651c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006520:	00000913          	li	s2,0
    80006524:	0400006f          	j	80006564 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006528:	ffffb097          	auipc	ra,0xffffb
    8000652c:	e60080e7          	jalr	-416(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006530:	00148493          	addi	s1,s1,1
    80006534:	000027b7          	lui	a5,0x2
    80006538:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000653c:	0097ee63          	bltu	a5,s1,80006558 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006540:	00000713          	li	a4,0
    80006544:	000077b7          	lui	a5,0x7
    80006548:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000654c:	fce7eee3          	bltu	a5,a4,80006528 <_ZL11workerBodyBPv+0x20>
    80006550:	00170713          	addi	a4,a4,1
    80006554:	ff1ff06f          	j	80006544 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006558:	00a00793          	li	a5,10
    8000655c:	04f90663          	beq	s2,a5,800065a8 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006560:	00190913          	addi	s2,s2,1
    80006564:	00f00793          	li	a5,15
    80006568:	0527e463          	bltu	a5,s2,800065b0 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    8000656c:	00003517          	auipc	a0,0x3
    80006570:	ffc50513          	addi	a0,a0,-4 # 80009568 <CONSOLE_STATUS+0x558>
    80006574:	fffff097          	auipc	ra,0xfffff
    80006578:	098080e7          	jalr	152(ra) # 8000560c <_Z11printStringPKc>
    8000657c:	00000613          	li	a2,0
    80006580:	00a00593          	li	a1,10
    80006584:	0009051b          	sext.w	a0,s2
    80006588:	fffff097          	auipc	ra,0xfffff
    8000658c:	234080e7          	jalr	564(ra) # 800057bc <_Z8printIntiii>
    80006590:	00003517          	auipc	a0,0x3
    80006594:	d2850513          	addi	a0,a0,-728 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006598:	fffff097          	auipc	ra,0xfffff
    8000659c:	074080e7          	jalr	116(ra) # 8000560c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800065a0:	00000493          	li	s1,0
    800065a4:	f91ff06f          	j	80006534 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800065a8:	14102ff3          	csrr	t6,sepc
    800065ac:	fb5ff06f          	j	80006560 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800065b0:	00003517          	auipc	a0,0x3
    800065b4:	fc050513          	addi	a0,a0,-64 # 80009570 <CONSOLE_STATUS+0x560>
    800065b8:	fffff097          	auipc	ra,0xfffff
    800065bc:	054080e7          	jalr	84(ra) # 8000560c <_Z11printStringPKc>
    finishedB = true;
    800065c0:	00100793          	li	a5,1
    800065c4:	00005717          	auipc	a4,0x5
    800065c8:	7cf70823          	sb	a5,2000(a4) # 8000bd94 <_ZL9finishedB>
    thread_dispatch();
    800065cc:	ffffb097          	auipc	ra,0xffffb
    800065d0:	dbc080e7          	jalr	-580(ra) # 80001388 <_Z15thread_dispatchv>
}
    800065d4:	01813083          	ld	ra,24(sp)
    800065d8:	01013403          	ld	s0,16(sp)
    800065dc:	00813483          	ld	s1,8(sp)
    800065e0:	00013903          	ld	s2,0(sp)
    800065e4:	02010113          	addi	sp,sp,32
    800065e8:	00008067          	ret

00000000800065ec <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800065ec:	fe010113          	addi	sp,sp,-32
    800065f0:	00113c23          	sd	ra,24(sp)
    800065f4:	00813823          	sd	s0,16(sp)
    800065f8:	00913423          	sd	s1,8(sp)
    800065fc:	01213023          	sd	s2,0(sp)
    80006600:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006604:	00000913          	li	s2,0
    80006608:	0380006f          	j	80006640 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000660c:	ffffb097          	auipc	ra,0xffffb
    80006610:	d7c080e7          	jalr	-644(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006614:	00148493          	addi	s1,s1,1
    80006618:	000027b7          	lui	a5,0x2
    8000661c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006620:	0097ee63          	bltu	a5,s1,8000663c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006624:	00000713          	li	a4,0
    80006628:	000077b7          	lui	a5,0x7
    8000662c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006630:	fce7eee3          	bltu	a5,a4,8000660c <_ZL11workerBodyAPv+0x20>
    80006634:	00170713          	addi	a4,a4,1
    80006638:	ff1ff06f          	j	80006628 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000663c:	00190913          	addi	s2,s2,1
    80006640:	00900793          	li	a5,9
    80006644:	0527e063          	bltu	a5,s2,80006684 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006648:	00003517          	auipc	a0,0x3
    8000664c:	f0850513          	addi	a0,a0,-248 # 80009550 <CONSOLE_STATUS+0x540>
    80006650:	fffff097          	auipc	ra,0xfffff
    80006654:	fbc080e7          	jalr	-68(ra) # 8000560c <_Z11printStringPKc>
    80006658:	00000613          	li	a2,0
    8000665c:	00a00593          	li	a1,10
    80006660:	0009051b          	sext.w	a0,s2
    80006664:	fffff097          	auipc	ra,0xfffff
    80006668:	158080e7          	jalr	344(ra) # 800057bc <_Z8printIntiii>
    8000666c:	00003517          	auipc	a0,0x3
    80006670:	c4c50513          	addi	a0,a0,-948 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006674:	fffff097          	auipc	ra,0xfffff
    80006678:	f98080e7          	jalr	-104(ra) # 8000560c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000667c:	00000493          	li	s1,0
    80006680:	f99ff06f          	j	80006618 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006684:	00003517          	auipc	a0,0x3
    80006688:	ed450513          	addi	a0,a0,-300 # 80009558 <CONSOLE_STATUS+0x548>
    8000668c:	fffff097          	auipc	ra,0xfffff
    80006690:	f80080e7          	jalr	-128(ra) # 8000560c <_Z11printStringPKc>
    finishedA = true;
    80006694:	00100793          	li	a5,1
    80006698:	00005717          	auipc	a4,0x5
    8000669c:	6ef70ea3          	sb	a5,1789(a4) # 8000bd95 <_ZL9finishedA>
}
    800066a0:	01813083          	ld	ra,24(sp)
    800066a4:	01013403          	ld	s0,16(sp)
    800066a8:	00813483          	ld	s1,8(sp)
    800066ac:	00013903          	ld	s2,0(sp)
    800066b0:	02010113          	addi	sp,sp,32
    800066b4:	00008067          	ret

00000000800066b8 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800066b8:	fd010113          	addi	sp,sp,-48
    800066bc:	02113423          	sd	ra,40(sp)
    800066c0:	02813023          	sd	s0,32(sp)
    800066c4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800066c8:	00000613          	li	a2,0
    800066cc:	00000597          	auipc	a1,0x0
    800066d0:	f2058593          	addi	a1,a1,-224 # 800065ec <_ZL11workerBodyAPv>
    800066d4:	fd040513          	addi	a0,s0,-48
    800066d8:	ffffb097          	auipc	ra,0xffffb
    800066dc:	bac080e7          	jalr	-1108(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800066e0:	00003517          	auipc	a0,0x3
    800066e4:	f0850513          	addi	a0,a0,-248 # 800095e8 <CONSOLE_STATUS+0x5d8>
    800066e8:	fffff097          	auipc	ra,0xfffff
    800066ec:	f24080e7          	jalr	-220(ra) # 8000560c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800066f0:	00000613          	li	a2,0
    800066f4:	00000597          	auipc	a1,0x0
    800066f8:	e1458593          	addi	a1,a1,-492 # 80006508 <_ZL11workerBodyBPv>
    800066fc:	fd840513          	addi	a0,s0,-40
    80006700:	ffffb097          	auipc	ra,0xffffb
    80006704:	b84080e7          	jalr	-1148(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80006708:	00003517          	auipc	a0,0x3
    8000670c:	ef850513          	addi	a0,a0,-264 # 80009600 <CONSOLE_STATUS+0x5f0>
    80006710:	fffff097          	auipc	ra,0xfffff
    80006714:	efc080e7          	jalr	-260(ra) # 8000560c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006718:	00000613          	li	a2,0
    8000671c:	00000597          	auipc	a1,0x0
    80006720:	c6c58593          	addi	a1,a1,-916 # 80006388 <_ZL11workerBodyCPv>
    80006724:	fe040513          	addi	a0,s0,-32
    80006728:	ffffb097          	auipc	ra,0xffffb
    8000672c:	b5c080e7          	jalr	-1188(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80006730:	00003517          	auipc	a0,0x3
    80006734:	ee850513          	addi	a0,a0,-280 # 80009618 <CONSOLE_STATUS+0x608>
    80006738:	fffff097          	auipc	ra,0xfffff
    8000673c:	ed4080e7          	jalr	-300(ra) # 8000560c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006740:	00000613          	li	a2,0
    80006744:	00000597          	auipc	a1,0x0
    80006748:	afc58593          	addi	a1,a1,-1284 # 80006240 <_ZL11workerBodyDPv>
    8000674c:	fe840513          	addi	a0,s0,-24
    80006750:	ffffb097          	auipc	ra,0xffffb
    80006754:	b34080e7          	jalr	-1228(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80006758:	00003517          	auipc	a0,0x3
    8000675c:	ed850513          	addi	a0,a0,-296 # 80009630 <CONSOLE_STATUS+0x620>
    80006760:	fffff097          	auipc	ra,0xfffff
    80006764:	eac080e7          	jalr	-340(ra) # 8000560c <_Z11printStringPKc>
    80006768:	00c0006f          	j	80006774 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000676c:	ffffb097          	auipc	ra,0xffffb
    80006770:	c1c080e7          	jalr	-996(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006774:	00005797          	auipc	a5,0x5
    80006778:	6217c783          	lbu	a5,1569(a5) # 8000bd95 <_ZL9finishedA>
    8000677c:	fe0788e3          	beqz	a5,8000676c <_Z16System_Mode_testv+0xb4>
    80006780:	00005797          	auipc	a5,0x5
    80006784:	6147c783          	lbu	a5,1556(a5) # 8000bd94 <_ZL9finishedB>
    80006788:	fe0782e3          	beqz	a5,8000676c <_Z16System_Mode_testv+0xb4>
    8000678c:	00005797          	auipc	a5,0x5
    80006790:	6077c783          	lbu	a5,1543(a5) # 8000bd93 <_ZL9finishedC>
    80006794:	fc078ce3          	beqz	a5,8000676c <_Z16System_Mode_testv+0xb4>
    80006798:	00005797          	auipc	a5,0x5
    8000679c:	5fa7c783          	lbu	a5,1530(a5) # 8000bd92 <_ZL9finishedD>
    800067a0:	fc0786e3          	beqz	a5,8000676c <_Z16System_Mode_testv+0xb4>
    }

}
    800067a4:	02813083          	ld	ra,40(sp)
    800067a8:	02013403          	ld	s0,32(sp)
    800067ac:	03010113          	addi	sp,sp,48
    800067b0:	00008067          	ret

00000000800067b4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800067b4:	fe010113          	addi	sp,sp,-32
    800067b8:	00113c23          	sd	ra,24(sp)
    800067bc:	00813823          	sd	s0,16(sp)
    800067c0:	00913423          	sd	s1,8(sp)
    800067c4:	01213023          	sd	s2,0(sp)
    800067c8:	02010413          	addi	s0,sp,32
    800067cc:	00050493          	mv	s1,a0
    800067d0:	00058913          	mv	s2,a1
    800067d4:	0015879b          	addiw	a5,a1,1
    800067d8:	0007851b          	sext.w	a0,a5
    800067dc:	00f4a023          	sw	a5,0(s1)
    800067e0:	0004a823          	sw	zero,16(s1)
    800067e4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800067e8:	00251513          	slli	a0,a0,0x2
    800067ec:	ffffb097          	auipc	ra,0xffffb
    800067f0:	a0c080e7          	jalr	-1524(ra) # 800011f8 <_Z9mem_allocm>
    800067f4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800067f8:	00000593          	li	a1,0
    800067fc:	02048513          	addi	a0,s1,32
    80006800:	ffffb097          	auipc	ra,0xffffb
    80006804:	bc4080e7          	jalr	-1084(ra) # 800013c4 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80006808:	00090593          	mv	a1,s2
    8000680c:	01848513          	addi	a0,s1,24
    80006810:	ffffb097          	auipc	ra,0xffffb
    80006814:	bb4080e7          	jalr	-1100(ra) # 800013c4 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80006818:	00100593          	li	a1,1
    8000681c:	02848513          	addi	a0,s1,40
    80006820:	ffffb097          	auipc	ra,0xffffb
    80006824:	ba4080e7          	jalr	-1116(ra) # 800013c4 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006828:	00100593          	li	a1,1
    8000682c:	03048513          	addi	a0,s1,48
    80006830:	ffffb097          	auipc	ra,0xffffb
    80006834:	b94080e7          	jalr	-1132(ra) # 800013c4 <_Z8sem_openPP4_semj>
}
    80006838:	01813083          	ld	ra,24(sp)
    8000683c:	01013403          	ld	s0,16(sp)
    80006840:	00813483          	ld	s1,8(sp)
    80006844:	00013903          	ld	s2,0(sp)
    80006848:	02010113          	addi	sp,sp,32
    8000684c:	00008067          	ret

0000000080006850 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006850:	fe010113          	addi	sp,sp,-32
    80006854:	00113c23          	sd	ra,24(sp)
    80006858:	00813823          	sd	s0,16(sp)
    8000685c:	00913423          	sd	s1,8(sp)
    80006860:	01213023          	sd	s2,0(sp)
    80006864:	02010413          	addi	s0,sp,32
    80006868:	00050493          	mv	s1,a0
    8000686c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006870:	01853503          	ld	a0,24(a0)
    80006874:	ffffb097          	auipc	ra,0xffffb
    80006878:	bd4080e7          	jalr	-1068(ra) # 80001448 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    8000687c:	0304b503          	ld	a0,48(s1)
    80006880:	ffffb097          	auipc	ra,0xffffb
    80006884:	bc8080e7          	jalr	-1080(ra) # 80001448 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006888:	0084b783          	ld	a5,8(s1)
    8000688c:	0144a703          	lw	a4,20(s1)
    80006890:	00271713          	slli	a4,a4,0x2
    80006894:	00e787b3          	add	a5,a5,a4
    80006898:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000689c:	0144a783          	lw	a5,20(s1)
    800068a0:	0017879b          	addiw	a5,a5,1
    800068a4:	0004a703          	lw	a4,0(s1)
    800068a8:	02e7e7bb          	remw	a5,a5,a4
    800068ac:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800068b0:	0304b503          	ld	a0,48(s1)
    800068b4:	ffffb097          	auipc	ra,0xffffb
    800068b8:	bd4080e7          	jalr	-1068(ra) # 80001488 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    800068bc:	0204b503          	ld	a0,32(s1)
    800068c0:	ffffb097          	auipc	ra,0xffffb
    800068c4:	bc8080e7          	jalr	-1080(ra) # 80001488 <_Z10sem_signalP4_sem>

}
    800068c8:	01813083          	ld	ra,24(sp)
    800068cc:	01013403          	ld	s0,16(sp)
    800068d0:	00813483          	ld	s1,8(sp)
    800068d4:	00013903          	ld	s2,0(sp)
    800068d8:	02010113          	addi	sp,sp,32
    800068dc:	00008067          	ret

00000000800068e0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800068e0:	fe010113          	addi	sp,sp,-32
    800068e4:	00113c23          	sd	ra,24(sp)
    800068e8:	00813823          	sd	s0,16(sp)
    800068ec:	00913423          	sd	s1,8(sp)
    800068f0:	01213023          	sd	s2,0(sp)
    800068f4:	02010413          	addi	s0,sp,32
    800068f8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800068fc:	02053503          	ld	a0,32(a0)
    80006900:	ffffb097          	auipc	ra,0xffffb
    80006904:	b48080e7          	jalr	-1208(ra) # 80001448 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006908:	0284b503          	ld	a0,40(s1)
    8000690c:	ffffb097          	auipc	ra,0xffffb
    80006910:	b3c080e7          	jalr	-1220(ra) # 80001448 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006914:	0084b703          	ld	a4,8(s1)
    80006918:	0104a783          	lw	a5,16(s1)
    8000691c:	00279693          	slli	a3,a5,0x2
    80006920:	00d70733          	add	a4,a4,a3
    80006924:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006928:	0017879b          	addiw	a5,a5,1
    8000692c:	0004a703          	lw	a4,0(s1)
    80006930:	02e7e7bb          	remw	a5,a5,a4
    80006934:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006938:	0284b503          	ld	a0,40(s1)
    8000693c:	ffffb097          	auipc	ra,0xffffb
    80006940:	b4c080e7          	jalr	-1204(ra) # 80001488 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006944:	0184b503          	ld	a0,24(s1)
    80006948:	ffffb097          	auipc	ra,0xffffb
    8000694c:	b40080e7          	jalr	-1216(ra) # 80001488 <_Z10sem_signalP4_sem>

    return ret;
}
    80006950:	00090513          	mv	a0,s2
    80006954:	01813083          	ld	ra,24(sp)
    80006958:	01013403          	ld	s0,16(sp)
    8000695c:	00813483          	ld	s1,8(sp)
    80006960:	00013903          	ld	s2,0(sp)
    80006964:	02010113          	addi	sp,sp,32
    80006968:	00008067          	ret

000000008000696c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000696c:	fe010113          	addi	sp,sp,-32
    80006970:	00113c23          	sd	ra,24(sp)
    80006974:	00813823          	sd	s0,16(sp)
    80006978:	00913423          	sd	s1,8(sp)
    8000697c:	01213023          	sd	s2,0(sp)
    80006980:	02010413          	addi	s0,sp,32
    80006984:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006988:	02853503          	ld	a0,40(a0)
    8000698c:	ffffb097          	auipc	ra,0xffffb
    80006990:	abc080e7          	jalr	-1348(ra) # 80001448 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006994:	0304b503          	ld	a0,48(s1)
    80006998:	ffffb097          	auipc	ra,0xffffb
    8000699c:	ab0080e7          	jalr	-1360(ra) # 80001448 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    800069a0:	0144a783          	lw	a5,20(s1)
    800069a4:	0104a903          	lw	s2,16(s1)
    800069a8:	0327ce63          	blt	a5,s2,800069e4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800069ac:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800069b0:	0304b503          	ld	a0,48(s1)
    800069b4:	ffffb097          	auipc	ra,0xffffb
    800069b8:	ad4080e7          	jalr	-1324(ra) # 80001488 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    800069bc:	0284b503          	ld	a0,40(s1)
    800069c0:	ffffb097          	auipc	ra,0xffffb
    800069c4:	ac8080e7          	jalr	-1336(ra) # 80001488 <_Z10sem_signalP4_sem>

    return ret;
}
    800069c8:	00090513          	mv	a0,s2
    800069cc:	01813083          	ld	ra,24(sp)
    800069d0:	01013403          	ld	s0,16(sp)
    800069d4:	00813483          	ld	s1,8(sp)
    800069d8:	00013903          	ld	s2,0(sp)
    800069dc:	02010113          	addi	sp,sp,32
    800069e0:	00008067          	ret
        ret = cap - head + tail;
    800069e4:	0004a703          	lw	a4,0(s1)
    800069e8:	4127093b          	subw	s2,a4,s2
    800069ec:	00f9093b          	addw	s2,s2,a5
    800069f0:	fc1ff06f          	j	800069b0 <_ZN6Buffer6getCntEv+0x44>

00000000800069f4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800069f4:	fe010113          	addi	sp,sp,-32
    800069f8:	00113c23          	sd	ra,24(sp)
    800069fc:	00813823          	sd	s0,16(sp)
    80006a00:	00913423          	sd	s1,8(sp)
    80006a04:	02010413          	addi	s0,sp,32
    80006a08:	00050493          	mv	s1,a0
    putc('\n');
    80006a0c:	00a00513          	li	a0,10
    80006a10:	ffffb097          	auipc	ra,0xffffb
    80006a14:	bc0080e7          	jalr	-1088(ra) # 800015d0 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006a18:	00003517          	auipc	a0,0x3
    80006a1c:	c3050513          	addi	a0,a0,-976 # 80009648 <CONSOLE_STATUS+0x638>
    80006a20:	fffff097          	auipc	ra,0xfffff
    80006a24:	bec080e7          	jalr	-1044(ra) # 8000560c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006a28:	00048513          	mv	a0,s1
    80006a2c:	00000097          	auipc	ra,0x0
    80006a30:	f40080e7          	jalr	-192(ra) # 8000696c <_ZN6Buffer6getCntEv>
    80006a34:	02a05c63          	blez	a0,80006a6c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006a38:	0084b783          	ld	a5,8(s1)
    80006a3c:	0104a703          	lw	a4,16(s1)
    80006a40:	00271713          	slli	a4,a4,0x2
    80006a44:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006a48:	0007c503          	lbu	a0,0(a5)
    80006a4c:	ffffb097          	auipc	ra,0xffffb
    80006a50:	b84080e7          	jalr	-1148(ra) # 800015d0 <_Z4putcc>
        head = (head + 1) % cap;
    80006a54:	0104a783          	lw	a5,16(s1)
    80006a58:	0017879b          	addiw	a5,a5,1
    80006a5c:	0004a703          	lw	a4,0(s1)
    80006a60:	02e7e7bb          	remw	a5,a5,a4
    80006a64:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006a68:	fc1ff06f          	j	80006a28 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006a6c:	02100513          	li	a0,33
    80006a70:	ffffb097          	auipc	ra,0xffffb
    80006a74:	b60080e7          	jalr	-1184(ra) # 800015d0 <_Z4putcc>
    putc('\n');
    80006a78:	00a00513          	li	a0,10
    80006a7c:	ffffb097          	auipc	ra,0xffffb
    80006a80:	b54080e7          	jalr	-1196(ra) # 800015d0 <_Z4putcc>
    mem_free(buffer);
    80006a84:	0084b503          	ld	a0,8(s1)
    80006a88:	ffffa097          	auipc	ra,0xffffa
    80006a8c:	7bc080e7          	jalr	1980(ra) # 80001244 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006a90:	0204b503          	ld	a0,32(s1)
    80006a94:	ffffb097          	auipc	ra,0xffffb
    80006a98:	974080e7          	jalr	-1676(ra) # 80001408 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006a9c:	0184b503          	ld	a0,24(s1)
    80006aa0:	ffffb097          	auipc	ra,0xffffb
    80006aa4:	968080e7          	jalr	-1688(ra) # 80001408 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006aa8:	0304b503          	ld	a0,48(s1)
    80006aac:	ffffb097          	auipc	ra,0xffffb
    80006ab0:	95c080e7          	jalr	-1700(ra) # 80001408 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006ab4:	0284b503          	ld	a0,40(s1)
    80006ab8:	ffffb097          	auipc	ra,0xffffb
    80006abc:	950080e7          	jalr	-1712(ra) # 80001408 <_Z9sem_closeP4_sem>
}
    80006ac0:	01813083          	ld	ra,24(sp)
    80006ac4:	01013403          	ld	s0,16(sp)
    80006ac8:	00813483          	ld	s1,8(sp)
    80006acc:	02010113          	addi	sp,sp,32
    80006ad0:	00008067          	ret

0000000080006ad4 <start>:
    80006ad4:	ff010113          	addi	sp,sp,-16
    80006ad8:	00813423          	sd	s0,8(sp)
    80006adc:	01010413          	addi	s0,sp,16
    80006ae0:	300027f3          	csrr	a5,mstatus
    80006ae4:	ffffe737          	lui	a4,0xffffe
    80006ae8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff17ff>
    80006aec:	00e7f7b3          	and	a5,a5,a4
    80006af0:	00001737          	lui	a4,0x1
    80006af4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006af8:	00e7e7b3          	or	a5,a5,a4
    80006afc:	30079073          	csrw	mstatus,a5
    80006b00:	00000797          	auipc	a5,0x0
    80006b04:	16078793          	addi	a5,a5,352 # 80006c60 <system_main>
    80006b08:	34179073          	csrw	mepc,a5
    80006b0c:	00000793          	li	a5,0
    80006b10:	18079073          	csrw	satp,a5
    80006b14:	000107b7          	lui	a5,0x10
    80006b18:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006b1c:	30279073          	csrw	medeleg,a5
    80006b20:	30379073          	csrw	mideleg,a5
    80006b24:	104027f3          	csrr	a5,sie
    80006b28:	2227e793          	ori	a5,a5,546
    80006b2c:	10479073          	csrw	sie,a5
    80006b30:	fff00793          	li	a5,-1
    80006b34:	00a7d793          	srli	a5,a5,0xa
    80006b38:	3b079073          	csrw	pmpaddr0,a5
    80006b3c:	00f00793          	li	a5,15
    80006b40:	3a079073          	csrw	pmpcfg0,a5
    80006b44:	f14027f3          	csrr	a5,mhartid
    80006b48:	0200c737          	lui	a4,0x200c
    80006b4c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006b50:	0007869b          	sext.w	a3,a5
    80006b54:	00269713          	slli	a4,a3,0x2
    80006b58:	000f4637          	lui	a2,0xf4
    80006b5c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006b60:	00d70733          	add	a4,a4,a3
    80006b64:	0037979b          	slliw	a5,a5,0x3
    80006b68:	020046b7          	lui	a3,0x2004
    80006b6c:	00d787b3          	add	a5,a5,a3
    80006b70:	00c585b3          	add	a1,a1,a2
    80006b74:	00371693          	slli	a3,a4,0x3
    80006b78:	00005717          	auipc	a4,0x5
    80006b7c:	22870713          	addi	a4,a4,552 # 8000bda0 <timer_scratch>
    80006b80:	00b7b023          	sd	a1,0(a5)
    80006b84:	00d70733          	add	a4,a4,a3
    80006b88:	00f73c23          	sd	a5,24(a4)
    80006b8c:	02c73023          	sd	a2,32(a4)
    80006b90:	34071073          	csrw	mscratch,a4
    80006b94:	00000797          	auipc	a5,0x0
    80006b98:	6ec78793          	addi	a5,a5,1772 # 80007280 <timervec>
    80006b9c:	30579073          	csrw	mtvec,a5
    80006ba0:	300027f3          	csrr	a5,mstatus
    80006ba4:	0087e793          	ori	a5,a5,8
    80006ba8:	30079073          	csrw	mstatus,a5
    80006bac:	304027f3          	csrr	a5,mie
    80006bb0:	0807e793          	ori	a5,a5,128
    80006bb4:	30479073          	csrw	mie,a5
    80006bb8:	f14027f3          	csrr	a5,mhartid
    80006bbc:	0007879b          	sext.w	a5,a5
    80006bc0:	00078213          	mv	tp,a5
    80006bc4:	30200073          	mret
    80006bc8:	00813403          	ld	s0,8(sp)
    80006bcc:	01010113          	addi	sp,sp,16
    80006bd0:	00008067          	ret

0000000080006bd4 <timerinit>:
    80006bd4:	ff010113          	addi	sp,sp,-16
    80006bd8:	00813423          	sd	s0,8(sp)
    80006bdc:	01010413          	addi	s0,sp,16
    80006be0:	f14027f3          	csrr	a5,mhartid
    80006be4:	0200c737          	lui	a4,0x200c
    80006be8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006bec:	0007869b          	sext.w	a3,a5
    80006bf0:	00269713          	slli	a4,a3,0x2
    80006bf4:	000f4637          	lui	a2,0xf4
    80006bf8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006bfc:	00d70733          	add	a4,a4,a3
    80006c00:	0037979b          	slliw	a5,a5,0x3
    80006c04:	020046b7          	lui	a3,0x2004
    80006c08:	00d787b3          	add	a5,a5,a3
    80006c0c:	00c585b3          	add	a1,a1,a2
    80006c10:	00371693          	slli	a3,a4,0x3
    80006c14:	00005717          	auipc	a4,0x5
    80006c18:	18c70713          	addi	a4,a4,396 # 8000bda0 <timer_scratch>
    80006c1c:	00b7b023          	sd	a1,0(a5)
    80006c20:	00d70733          	add	a4,a4,a3
    80006c24:	00f73c23          	sd	a5,24(a4)
    80006c28:	02c73023          	sd	a2,32(a4)
    80006c2c:	34071073          	csrw	mscratch,a4
    80006c30:	00000797          	auipc	a5,0x0
    80006c34:	65078793          	addi	a5,a5,1616 # 80007280 <timervec>
    80006c38:	30579073          	csrw	mtvec,a5
    80006c3c:	300027f3          	csrr	a5,mstatus
    80006c40:	0087e793          	ori	a5,a5,8
    80006c44:	30079073          	csrw	mstatus,a5
    80006c48:	304027f3          	csrr	a5,mie
    80006c4c:	0807e793          	ori	a5,a5,128
    80006c50:	30479073          	csrw	mie,a5
    80006c54:	00813403          	ld	s0,8(sp)
    80006c58:	01010113          	addi	sp,sp,16
    80006c5c:	00008067          	ret

0000000080006c60 <system_main>:
    80006c60:	fe010113          	addi	sp,sp,-32
    80006c64:	00813823          	sd	s0,16(sp)
    80006c68:	00913423          	sd	s1,8(sp)
    80006c6c:	00113c23          	sd	ra,24(sp)
    80006c70:	02010413          	addi	s0,sp,32
    80006c74:	00000097          	auipc	ra,0x0
    80006c78:	0c4080e7          	jalr	196(ra) # 80006d38 <cpuid>
    80006c7c:	00005497          	auipc	s1,0x5
    80006c80:	06448493          	addi	s1,s1,100 # 8000bce0 <started>
    80006c84:	02050263          	beqz	a0,80006ca8 <system_main+0x48>
    80006c88:	0004a783          	lw	a5,0(s1)
    80006c8c:	0007879b          	sext.w	a5,a5
    80006c90:	fe078ce3          	beqz	a5,80006c88 <system_main+0x28>
    80006c94:	0ff0000f          	fence
    80006c98:	00003517          	auipc	a0,0x3
    80006c9c:	a9850513          	addi	a0,a0,-1384 # 80009730 <CONSOLE_STATUS+0x720>
    80006ca0:	00001097          	auipc	ra,0x1
    80006ca4:	a7c080e7          	jalr	-1412(ra) # 8000771c <panic>
    80006ca8:	00001097          	auipc	ra,0x1
    80006cac:	9d0080e7          	jalr	-1584(ra) # 80007678 <consoleinit>
    80006cb0:	00001097          	auipc	ra,0x1
    80006cb4:	15c080e7          	jalr	348(ra) # 80007e0c <printfinit>
    80006cb8:	00002517          	auipc	a0,0x2
    80006cbc:	60050513          	addi	a0,a0,1536 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006cc0:	00001097          	auipc	ra,0x1
    80006cc4:	ab8080e7          	jalr	-1352(ra) # 80007778 <__printf>
    80006cc8:	00003517          	auipc	a0,0x3
    80006ccc:	a3850513          	addi	a0,a0,-1480 # 80009700 <CONSOLE_STATUS+0x6f0>
    80006cd0:	00001097          	auipc	ra,0x1
    80006cd4:	aa8080e7          	jalr	-1368(ra) # 80007778 <__printf>
    80006cd8:	00002517          	auipc	a0,0x2
    80006cdc:	5e050513          	addi	a0,a0,1504 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006ce0:	00001097          	auipc	ra,0x1
    80006ce4:	a98080e7          	jalr	-1384(ra) # 80007778 <__printf>
    80006ce8:	00001097          	auipc	ra,0x1
    80006cec:	4b0080e7          	jalr	1200(ra) # 80008198 <kinit>
    80006cf0:	00000097          	auipc	ra,0x0
    80006cf4:	148080e7          	jalr	328(ra) # 80006e38 <trapinit>
    80006cf8:	00000097          	auipc	ra,0x0
    80006cfc:	16c080e7          	jalr	364(ra) # 80006e64 <trapinithart>
    80006d00:	00000097          	auipc	ra,0x0
    80006d04:	5c0080e7          	jalr	1472(ra) # 800072c0 <plicinit>
    80006d08:	00000097          	auipc	ra,0x0
    80006d0c:	5e0080e7          	jalr	1504(ra) # 800072e8 <plicinithart>
    80006d10:	00000097          	auipc	ra,0x0
    80006d14:	078080e7          	jalr	120(ra) # 80006d88 <userinit>
    80006d18:	0ff0000f          	fence
    80006d1c:	00100793          	li	a5,1
    80006d20:	00003517          	auipc	a0,0x3
    80006d24:	9f850513          	addi	a0,a0,-1544 # 80009718 <CONSOLE_STATUS+0x708>
    80006d28:	00f4a023          	sw	a5,0(s1)
    80006d2c:	00001097          	auipc	ra,0x1
    80006d30:	a4c080e7          	jalr	-1460(ra) # 80007778 <__printf>
    80006d34:	0000006f          	j	80006d34 <system_main+0xd4>

0000000080006d38 <cpuid>:
    80006d38:	ff010113          	addi	sp,sp,-16
    80006d3c:	00813423          	sd	s0,8(sp)
    80006d40:	01010413          	addi	s0,sp,16
    80006d44:	00020513          	mv	a0,tp
    80006d48:	00813403          	ld	s0,8(sp)
    80006d4c:	0005051b          	sext.w	a0,a0
    80006d50:	01010113          	addi	sp,sp,16
    80006d54:	00008067          	ret

0000000080006d58 <mycpu>:
    80006d58:	ff010113          	addi	sp,sp,-16
    80006d5c:	00813423          	sd	s0,8(sp)
    80006d60:	01010413          	addi	s0,sp,16
    80006d64:	00020793          	mv	a5,tp
    80006d68:	00813403          	ld	s0,8(sp)
    80006d6c:	0007879b          	sext.w	a5,a5
    80006d70:	00779793          	slli	a5,a5,0x7
    80006d74:	00006517          	auipc	a0,0x6
    80006d78:	05c50513          	addi	a0,a0,92 # 8000cdd0 <cpus>
    80006d7c:	00f50533          	add	a0,a0,a5
    80006d80:	01010113          	addi	sp,sp,16
    80006d84:	00008067          	ret

0000000080006d88 <userinit>:
    80006d88:	ff010113          	addi	sp,sp,-16
    80006d8c:	00813423          	sd	s0,8(sp)
    80006d90:	01010413          	addi	s0,sp,16
    80006d94:	00813403          	ld	s0,8(sp)
    80006d98:	01010113          	addi	sp,sp,16
    80006d9c:	ffffc317          	auipc	t1,0xffffc
    80006da0:	91830067          	jr	-1768(t1) # 800026b4 <main>

0000000080006da4 <either_copyout>:
    80006da4:	ff010113          	addi	sp,sp,-16
    80006da8:	00813023          	sd	s0,0(sp)
    80006dac:	00113423          	sd	ra,8(sp)
    80006db0:	01010413          	addi	s0,sp,16
    80006db4:	02051663          	bnez	a0,80006de0 <either_copyout+0x3c>
    80006db8:	00058513          	mv	a0,a1
    80006dbc:	00060593          	mv	a1,a2
    80006dc0:	0006861b          	sext.w	a2,a3
    80006dc4:	00002097          	auipc	ra,0x2
    80006dc8:	c60080e7          	jalr	-928(ra) # 80008a24 <__memmove>
    80006dcc:	00813083          	ld	ra,8(sp)
    80006dd0:	00013403          	ld	s0,0(sp)
    80006dd4:	00000513          	li	a0,0
    80006dd8:	01010113          	addi	sp,sp,16
    80006ddc:	00008067          	ret
    80006de0:	00003517          	auipc	a0,0x3
    80006de4:	97850513          	addi	a0,a0,-1672 # 80009758 <CONSOLE_STATUS+0x748>
    80006de8:	00001097          	auipc	ra,0x1
    80006dec:	934080e7          	jalr	-1740(ra) # 8000771c <panic>

0000000080006df0 <either_copyin>:
    80006df0:	ff010113          	addi	sp,sp,-16
    80006df4:	00813023          	sd	s0,0(sp)
    80006df8:	00113423          	sd	ra,8(sp)
    80006dfc:	01010413          	addi	s0,sp,16
    80006e00:	02059463          	bnez	a1,80006e28 <either_copyin+0x38>
    80006e04:	00060593          	mv	a1,a2
    80006e08:	0006861b          	sext.w	a2,a3
    80006e0c:	00002097          	auipc	ra,0x2
    80006e10:	c18080e7          	jalr	-1000(ra) # 80008a24 <__memmove>
    80006e14:	00813083          	ld	ra,8(sp)
    80006e18:	00013403          	ld	s0,0(sp)
    80006e1c:	00000513          	li	a0,0
    80006e20:	01010113          	addi	sp,sp,16
    80006e24:	00008067          	ret
    80006e28:	00003517          	auipc	a0,0x3
    80006e2c:	95850513          	addi	a0,a0,-1704 # 80009780 <CONSOLE_STATUS+0x770>
    80006e30:	00001097          	auipc	ra,0x1
    80006e34:	8ec080e7          	jalr	-1812(ra) # 8000771c <panic>

0000000080006e38 <trapinit>:
    80006e38:	ff010113          	addi	sp,sp,-16
    80006e3c:	00813423          	sd	s0,8(sp)
    80006e40:	01010413          	addi	s0,sp,16
    80006e44:	00813403          	ld	s0,8(sp)
    80006e48:	00003597          	auipc	a1,0x3
    80006e4c:	96058593          	addi	a1,a1,-1696 # 800097a8 <CONSOLE_STATUS+0x798>
    80006e50:	00006517          	auipc	a0,0x6
    80006e54:	00050513          	mv	a0,a0
    80006e58:	01010113          	addi	sp,sp,16
    80006e5c:	00001317          	auipc	t1,0x1
    80006e60:	5cc30067          	jr	1484(t1) # 80008428 <initlock>

0000000080006e64 <trapinithart>:
    80006e64:	ff010113          	addi	sp,sp,-16
    80006e68:	00813423          	sd	s0,8(sp)
    80006e6c:	01010413          	addi	s0,sp,16
    80006e70:	00000797          	auipc	a5,0x0
    80006e74:	30078793          	addi	a5,a5,768 # 80007170 <kernelvec>
    80006e78:	10579073          	csrw	stvec,a5
    80006e7c:	00813403          	ld	s0,8(sp)
    80006e80:	01010113          	addi	sp,sp,16
    80006e84:	00008067          	ret

0000000080006e88 <usertrap>:
    80006e88:	ff010113          	addi	sp,sp,-16
    80006e8c:	00813423          	sd	s0,8(sp)
    80006e90:	01010413          	addi	s0,sp,16
    80006e94:	00813403          	ld	s0,8(sp)
    80006e98:	01010113          	addi	sp,sp,16
    80006e9c:	00008067          	ret

0000000080006ea0 <usertrapret>:
    80006ea0:	ff010113          	addi	sp,sp,-16
    80006ea4:	00813423          	sd	s0,8(sp)
    80006ea8:	01010413          	addi	s0,sp,16
    80006eac:	00813403          	ld	s0,8(sp)
    80006eb0:	01010113          	addi	sp,sp,16
    80006eb4:	00008067          	ret

0000000080006eb8 <kerneltrap>:
    80006eb8:	fe010113          	addi	sp,sp,-32
    80006ebc:	00813823          	sd	s0,16(sp)
    80006ec0:	00113c23          	sd	ra,24(sp)
    80006ec4:	00913423          	sd	s1,8(sp)
    80006ec8:	02010413          	addi	s0,sp,32
    80006ecc:	142025f3          	csrr	a1,scause
    80006ed0:	100027f3          	csrr	a5,sstatus
    80006ed4:	0027f793          	andi	a5,a5,2
    80006ed8:	10079c63          	bnez	a5,80006ff0 <kerneltrap+0x138>
    80006edc:	142027f3          	csrr	a5,scause
    80006ee0:	0207ce63          	bltz	a5,80006f1c <kerneltrap+0x64>
    80006ee4:	00003517          	auipc	a0,0x3
    80006ee8:	90c50513          	addi	a0,a0,-1780 # 800097f0 <CONSOLE_STATUS+0x7e0>
    80006eec:	00001097          	auipc	ra,0x1
    80006ef0:	88c080e7          	jalr	-1908(ra) # 80007778 <__printf>
    80006ef4:	141025f3          	csrr	a1,sepc
    80006ef8:	14302673          	csrr	a2,stval
    80006efc:	00003517          	auipc	a0,0x3
    80006f00:	90450513          	addi	a0,a0,-1788 # 80009800 <CONSOLE_STATUS+0x7f0>
    80006f04:	00001097          	auipc	ra,0x1
    80006f08:	874080e7          	jalr	-1932(ra) # 80007778 <__printf>
    80006f0c:	00003517          	auipc	a0,0x3
    80006f10:	90c50513          	addi	a0,a0,-1780 # 80009818 <CONSOLE_STATUS+0x808>
    80006f14:	00001097          	auipc	ra,0x1
    80006f18:	808080e7          	jalr	-2040(ra) # 8000771c <panic>
    80006f1c:	0ff7f713          	andi	a4,a5,255
    80006f20:	00900693          	li	a3,9
    80006f24:	04d70063          	beq	a4,a3,80006f64 <kerneltrap+0xac>
    80006f28:	fff00713          	li	a4,-1
    80006f2c:	03f71713          	slli	a4,a4,0x3f
    80006f30:	00170713          	addi	a4,a4,1
    80006f34:	fae798e3          	bne	a5,a4,80006ee4 <kerneltrap+0x2c>
    80006f38:	00000097          	auipc	ra,0x0
    80006f3c:	e00080e7          	jalr	-512(ra) # 80006d38 <cpuid>
    80006f40:	06050663          	beqz	a0,80006fac <kerneltrap+0xf4>
    80006f44:	144027f3          	csrr	a5,sip
    80006f48:	ffd7f793          	andi	a5,a5,-3
    80006f4c:	14479073          	csrw	sip,a5
    80006f50:	01813083          	ld	ra,24(sp)
    80006f54:	01013403          	ld	s0,16(sp)
    80006f58:	00813483          	ld	s1,8(sp)
    80006f5c:	02010113          	addi	sp,sp,32
    80006f60:	00008067          	ret
    80006f64:	00000097          	auipc	ra,0x0
    80006f68:	3d0080e7          	jalr	976(ra) # 80007334 <plic_claim>
    80006f6c:	00a00793          	li	a5,10
    80006f70:	00050493          	mv	s1,a0
    80006f74:	06f50863          	beq	a0,a5,80006fe4 <kerneltrap+0x12c>
    80006f78:	fc050ce3          	beqz	a0,80006f50 <kerneltrap+0x98>
    80006f7c:	00050593          	mv	a1,a0
    80006f80:	00003517          	auipc	a0,0x3
    80006f84:	85050513          	addi	a0,a0,-1968 # 800097d0 <CONSOLE_STATUS+0x7c0>
    80006f88:	00000097          	auipc	ra,0x0
    80006f8c:	7f0080e7          	jalr	2032(ra) # 80007778 <__printf>
    80006f90:	01013403          	ld	s0,16(sp)
    80006f94:	01813083          	ld	ra,24(sp)
    80006f98:	00048513          	mv	a0,s1
    80006f9c:	00813483          	ld	s1,8(sp)
    80006fa0:	02010113          	addi	sp,sp,32
    80006fa4:	00000317          	auipc	t1,0x0
    80006fa8:	3c830067          	jr	968(t1) # 8000736c <plic_complete>
    80006fac:	00006517          	auipc	a0,0x6
    80006fb0:	ea450513          	addi	a0,a0,-348 # 8000ce50 <tickslock>
    80006fb4:	00001097          	auipc	ra,0x1
    80006fb8:	498080e7          	jalr	1176(ra) # 8000844c <acquire>
    80006fbc:	00005717          	auipc	a4,0x5
    80006fc0:	d2870713          	addi	a4,a4,-728 # 8000bce4 <ticks>
    80006fc4:	00072783          	lw	a5,0(a4)
    80006fc8:	00006517          	auipc	a0,0x6
    80006fcc:	e8850513          	addi	a0,a0,-376 # 8000ce50 <tickslock>
    80006fd0:	0017879b          	addiw	a5,a5,1
    80006fd4:	00f72023          	sw	a5,0(a4)
    80006fd8:	00001097          	auipc	ra,0x1
    80006fdc:	540080e7          	jalr	1344(ra) # 80008518 <release>
    80006fe0:	f65ff06f          	j	80006f44 <kerneltrap+0x8c>
    80006fe4:	00001097          	auipc	ra,0x1
    80006fe8:	09c080e7          	jalr	156(ra) # 80008080 <uartintr>
    80006fec:	fa5ff06f          	j	80006f90 <kerneltrap+0xd8>
    80006ff0:	00002517          	auipc	a0,0x2
    80006ff4:	7c050513          	addi	a0,a0,1984 # 800097b0 <CONSOLE_STATUS+0x7a0>
    80006ff8:	00000097          	auipc	ra,0x0
    80006ffc:	724080e7          	jalr	1828(ra) # 8000771c <panic>

0000000080007000 <clockintr>:
    80007000:	fe010113          	addi	sp,sp,-32
    80007004:	00813823          	sd	s0,16(sp)
    80007008:	00913423          	sd	s1,8(sp)
    8000700c:	00113c23          	sd	ra,24(sp)
    80007010:	02010413          	addi	s0,sp,32
    80007014:	00006497          	auipc	s1,0x6
    80007018:	e3c48493          	addi	s1,s1,-452 # 8000ce50 <tickslock>
    8000701c:	00048513          	mv	a0,s1
    80007020:	00001097          	auipc	ra,0x1
    80007024:	42c080e7          	jalr	1068(ra) # 8000844c <acquire>
    80007028:	00005717          	auipc	a4,0x5
    8000702c:	cbc70713          	addi	a4,a4,-836 # 8000bce4 <ticks>
    80007030:	00072783          	lw	a5,0(a4)
    80007034:	01013403          	ld	s0,16(sp)
    80007038:	01813083          	ld	ra,24(sp)
    8000703c:	00048513          	mv	a0,s1
    80007040:	0017879b          	addiw	a5,a5,1
    80007044:	00813483          	ld	s1,8(sp)
    80007048:	00f72023          	sw	a5,0(a4)
    8000704c:	02010113          	addi	sp,sp,32
    80007050:	00001317          	auipc	t1,0x1
    80007054:	4c830067          	jr	1224(t1) # 80008518 <release>

0000000080007058 <devintr>:
    80007058:	142027f3          	csrr	a5,scause
    8000705c:	00000513          	li	a0,0
    80007060:	0007c463          	bltz	a5,80007068 <devintr+0x10>
    80007064:	00008067          	ret
    80007068:	fe010113          	addi	sp,sp,-32
    8000706c:	00813823          	sd	s0,16(sp)
    80007070:	00113c23          	sd	ra,24(sp)
    80007074:	00913423          	sd	s1,8(sp)
    80007078:	02010413          	addi	s0,sp,32
    8000707c:	0ff7f713          	andi	a4,a5,255
    80007080:	00900693          	li	a3,9
    80007084:	04d70c63          	beq	a4,a3,800070dc <devintr+0x84>
    80007088:	fff00713          	li	a4,-1
    8000708c:	03f71713          	slli	a4,a4,0x3f
    80007090:	00170713          	addi	a4,a4,1
    80007094:	00e78c63          	beq	a5,a4,800070ac <devintr+0x54>
    80007098:	01813083          	ld	ra,24(sp)
    8000709c:	01013403          	ld	s0,16(sp)
    800070a0:	00813483          	ld	s1,8(sp)
    800070a4:	02010113          	addi	sp,sp,32
    800070a8:	00008067          	ret
    800070ac:	00000097          	auipc	ra,0x0
    800070b0:	c8c080e7          	jalr	-884(ra) # 80006d38 <cpuid>
    800070b4:	06050663          	beqz	a0,80007120 <devintr+0xc8>
    800070b8:	144027f3          	csrr	a5,sip
    800070bc:	ffd7f793          	andi	a5,a5,-3
    800070c0:	14479073          	csrw	sip,a5
    800070c4:	01813083          	ld	ra,24(sp)
    800070c8:	01013403          	ld	s0,16(sp)
    800070cc:	00813483          	ld	s1,8(sp)
    800070d0:	00200513          	li	a0,2
    800070d4:	02010113          	addi	sp,sp,32
    800070d8:	00008067          	ret
    800070dc:	00000097          	auipc	ra,0x0
    800070e0:	258080e7          	jalr	600(ra) # 80007334 <plic_claim>
    800070e4:	00a00793          	li	a5,10
    800070e8:	00050493          	mv	s1,a0
    800070ec:	06f50663          	beq	a0,a5,80007158 <devintr+0x100>
    800070f0:	00100513          	li	a0,1
    800070f4:	fa0482e3          	beqz	s1,80007098 <devintr+0x40>
    800070f8:	00048593          	mv	a1,s1
    800070fc:	00002517          	auipc	a0,0x2
    80007100:	6d450513          	addi	a0,a0,1748 # 800097d0 <CONSOLE_STATUS+0x7c0>
    80007104:	00000097          	auipc	ra,0x0
    80007108:	674080e7          	jalr	1652(ra) # 80007778 <__printf>
    8000710c:	00048513          	mv	a0,s1
    80007110:	00000097          	auipc	ra,0x0
    80007114:	25c080e7          	jalr	604(ra) # 8000736c <plic_complete>
    80007118:	00100513          	li	a0,1
    8000711c:	f7dff06f          	j	80007098 <devintr+0x40>
    80007120:	00006517          	auipc	a0,0x6
    80007124:	d3050513          	addi	a0,a0,-720 # 8000ce50 <tickslock>
    80007128:	00001097          	auipc	ra,0x1
    8000712c:	324080e7          	jalr	804(ra) # 8000844c <acquire>
    80007130:	00005717          	auipc	a4,0x5
    80007134:	bb470713          	addi	a4,a4,-1100 # 8000bce4 <ticks>
    80007138:	00072783          	lw	a5,0(a4)
    8000713c:	00006517          	auipc	a0,0x6
    80007140:	d1450513          	addi	a0,a0,-748 # 8000ce50 <tickslock>
    80007144:	0017879b          	addiw	a5,a5,1
    80007148:	00f72023          	sw	a5,0(a4)
    8000714c:	00001097          	auipc	ra,0x1
    80007150:	3cc080e7          	jalr	972(ra) # 80008518 <release>
    80007154:	f65ff06f          	j	800070b8 <devintr+0x60>
    80007158:	00001097          	auipc	ra,0x1
    8000715c:	f28080e7          	jalr	-216(ra) # 80008080 <uartintr>
    80007160:	fadff06f          	j	8000710c <devintr+0xb4>
	...

0000000080007170 <kernelvec>:
    80007170:	f0010113          	addi	sp,sp,-256
    80007174:	00113023          	sd	ra,0(sp)
    80007178:	00213423          	sd	sp,8(sp)
    8000717c:	00313823          	sd	gp,16(sp)
    80007180:	00413c23          	sd	tp,24(sp)
    80007184:	02513023          	sd	t0,32(sp)
    80007188:	02613423          	sd	t1,40(sp)
    8000718c:	02713823          	sd	t2,48(sp)
    80007190:	02813c23          	sd	s0,56(sp)
    80007194:	04913023          	sd	s1,64(sp)
    80007198:	04a13423          	sd	a0,72(sp)
    8000719c:	04b13823          	sd	a1,80(sp)
    800071a0:	04c13c23          	sd	a2,88(sp)
    800071a4:	06d13023          	sd	a3,96(sp)
    800071a8:	06e13423          	sd	a4,104(sp)
    800071ac:	06f13823          	sd	a5,112(sp)
    800071b0:	07013c23          	sd	a6,120(sp)
    800071b4:	09113023          	sd	a7,128(sp)
    800071b8:	09213423          	sd	s2,136(sp)
    800071bc:	09313823          	sd	s3,144(sp)
    800071c0:	09413c23          	sd	s4,152(sp)
    800071c4:	0b513023          	sd	s5,160(sp)
    800071c8:	0b613423          	sd	s6,168(sp)
    800071cc:	0b713823          	sd	s7,176(sp)
    800071d0:	0b813c23          	sd	s8,184(sp)
    800071d4:	0d913023          	sd	s9,192(sp)
    800071d8:	0da13423          	sd	s10,200(sp)
    800071dc:	0db13823          	sd	s11,208(sp)
    800071e0:	0dc13c23          	sd	t3,216(sp)
    800071e4:	0fd13023          	sd	t4,224(sp)
    800071e8:	0fe13423          	sd	t5,232(sp)
    800071ec:	0ff13823          	sd	t6,240(sp)
    800071f0:	cc9ff0ef          	jal	ra,80006eb8 <kerneltrap>
    800071f4:	00013083          	ld	ra,0(sp)
    800071f8:	00813103          	ld	sp,8(sp)
    800071fc:	01013183          	ld	gp,16(sp)
    80007200:	02013283          	ld	t0,32(sp)
    80007204:	02813303          	ld	t1,40(sp)
    80007208:	03013383          	ld	t2,48(sp)
    8000720c:	03813403          	ld	s0,56(sp)
    80007210:	04013483          	ld	s1,64(sp)
    80007214:	04813503          	ld	a0,72(sp)
    80007218:	05013583          	ld	a1,80(sp)
    8000721c:	05813603          	ld	a2,88(sp)
    80007220:	06013683          	ld	a3,96(sp)
    80007224:	06813703          	ld	a4,104(sp)
    80007228:	07013783          	ld	a5,112(sp)
    8000722c:	07813803          	ld	a6,120(sp)
    80007230:	08013883          	ld	a7,128(sp)
    80007234:	08813903          	ld	s2,136(sp)
    80007238:	09013983          	ld	s3,144(sp)
    8000723c:	09813a03          	ld	s4,152(sp)
    80007240:	0a013a83          	ld	s5,160(sp)
    80007244:	0a813b03          	ld	s6,168(sp)
    80007248:	0b013b83          	ld	s7,176(sp)
    8000724c:	0b813c03          	ld	s8,184(sp)
    80007250:	0c013c83          	ld	s9,192(sp)
    80007254:	0c813d03          	ld	s10,200(sp)
    80007258:	0d013d83          	ld	s11,208(sp)
    8000725c:	0d813e03          	ld	t3,216(sp)
    80007260:	0e013e83          	ld	t4,224(sp)
    80007264:	0e813f03          	ld	t5,232(sp)
    80007268:	0f013f83          	ld	t6,240(sp)
    8000726c:	10010113          	addi	sp,sp,256
    80007270:	10200073          	sret
    80007274:	00000013          	nop
    80007278:	00000013          	nop
    8000727c:	00000013          	nop

0000000080007280 <timervec>:
    80007280:	34051573          	csrrw	a0,mscratch,a0
    80007284:	00b53023          	sd	a1,0(a0)
    80007288:	00c53423          	sd	a2,8(a0)
    8000728c:	00d53823          	sd	a3,16(a0)
    80007290:	01853583          	ld	a1,24(a0)
    80007294:	02053603          	ld	a2,32(a0)
    80007298:	0005b683          	ld	a3,0(a1)
    8000729c:	00c686b3          	add	a3,a3,a2
    800072a0:	00d5b023          	sd	a3,0(a1)
    800072a4:	00200593          	li	a1,2
    800072a8:	14459073          	csrw	sip,a1
    800072ac:	01053683          	ld	a3,16(a0)
    800072b0:	00853603          	ld	a2,8(a0)
    800072b4:	00053583          	ld	a1,0(a0)
    800072b8:	34051573          	csrrw	a0,mscratch,a0
    800072bc:	30200073          	mret

00000000800072c0 <plicinit>:
    800072c0:	ff010113          	addi	sp,sp,-16
    800072c4:	00813423          	sd	s0,8(sp)
    800072c8:	01010413          	addi	s0,sp,16
    800072cc:	00813403          	ld	s0,8(sp)
    800072d0:	0c0007b7          	lui	a5,0xc000
    800072d4:	00100713          	li	a4,1
    800072d8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800072dc:	00e7a223          	sw	a4,4(a5)
    800072e0:	01010113          	addi	sp,sp,16
    800072e4:	00008067          	ret

00000000800072e8 <plicinithart>:
    800072e8:	ff010113          	addi	sp,sp,-16
    800072ec:	00813023          	sd	s0,0(sp)
    800072f0:	00113423          	sd	ra,8(sp)
    800072f4:	01010413          	addi	s0,sp,16
    800072f8:	00000097          	auipc	ra,0x0
    800072fc:	a40080e7          	jalr	-1472(ra) # 80006d38 <cpuid>
    80007300:	0085171b          	slliw	a4,a0,0x8
    80007304:	0c0027b7          	lui	a5,0xc002
    80007308:	00e787b3          	add	a5,a5,a4
    8000730c:	40200713          	li	a4,1026
    80007310:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007314:	00813083          	ld	ra,8(sp)
    80007318:	00013403          	ld	s0,0(sp)
    8000731c:	00d5151b          	slliw	a0,a0,0xd
    80007320:	0c2017b7          	lui	a5,0xc201
    80007324:	00a78533          	add	a0,a5,a0
    80007328:	00052023          	sw	zero,0(a0)
    8000732c:	01010113          	addi	sp,sp,16
    80007330:	00008067          	ret

0000000080007334 <plic_claim>:
    80007334:	ff010113          	addi	sp,sp,-16
    80007338:	00813023          	sd	s0,0(sp)
    8000733c:	00113423          	sd	ra,8(sp)
    80007340:	01010413          	addi	s0,sp,16
    80007344:	00000097          	auipc	ra,0x0
    80007348:	9f4080e7          	jalr	-1548(ra) # 80006d38 <cpuid>
    8000734c:	00813083          	ld	ra,8(sp)
    80007350:	00013403          	ld	s0,0(sp)
    80007354:	00d5151b          	slliw	a0,a0,0xd
    80007358:	0c2017b7          	lui	a5,0xc201
    8000735c:	00a78533          	add	a0,a5,a0
    80007360:	00452503          	lw	a0,4(a0)
    80007364:	01010113          	addi	sp,sp,16
    80007368:	00008067          	ret

000000008000736c <plic_complete>:
    8000736c:	fe010113          	addi	sp,sp,-32
    80007370:	00813823          	sd	s0,16(sp)
    80007374:	00913423          	sd	s1,8(sp)
    80007378:	00113c23          	sd	ra,24(sp)
    8000737c:	02010413          	addi	s0,sp,32
    80007380:	00050493          	mv	s1,a0
    80007384:	00000097          	auipc	ra,0x0
    80007388:	9b4080e7          	jalr	-1612(ra) # 80006d38 <cpuid>
    8000738c:	01813083          	ld	ra,24(sp)
    80007390:	01013403          	ld	s0,16(sp)
    80007394:	00d5179b          	slliw	a5,a0,0xd
    80007398:	0c201737          	lui	a4,0xc201
    8000739c:	00f707b3          	add	a5,a4,a5
    800073a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800073a4:	00813483          	ld	s1,8(sp)
    800073a8:	02010113          	addi	sp,sp,32
    800073ac:	00008067          	ret

00000000800073b0 <consolewrite>:
    800073b0:	fb010113          	addi	sp,sp,-80
    800073b4:	04813023          	sd	s0,64(sp)
    800073b8:	04113423          	sd	ra,72(sp)
    800073bc:	02913c23          	sd	s1,56(sp)
    800073c0:	03213823          	sd	s2,48(sp)
    800073c4:	03313423          	sd	s3,40(sp)
    800073c8:	03413023          	sd	s4,32(sp)
    800073cc:	01513c23          	sd	s5,24(sp)
    800073d0:	05010413          	addi	s0,sp,80
    800073d4:	06c05c63          	blez	a2,8000744c <consolewrite+0x9c>
    800073d8:	00060993          	mv	s3,a2
    800073dc:	00050a13          	mv	s4,a0
    800073e0:	00058493          	mv	s1,a1
    800073e4:	00000913          	li	s2,0
    800073e8:	fff00a93          	li	s5,-1
    800073ec:	01c0006f          	j	80007408 <consolewrite+0x58>
    800073f0:	fbf44503          	lbu	a0,-65(s0)
    800073f4:	0019091b          	addiw	s2,s2,1
    800073f8:	00148493          	addi	s1,s1,1
    800073fc:	00001097          	auipc	ra,0x1
    80007400:	a9c080e7          	jalr	-1380(ra) # 80007e98 <uartputc>
    80007404:	03298063          	beq	s3,s2,80007424 <consolewrite+0x74>
    80007408:	00048613          	mv	a2,s1
    8000740c:	00100693          	li	a3,1
    80007410:	000a0593          	mv	a1,s4
    80007414:	fbf40513          	addi	a0,s0,-65
    80007418:	00000097          	auipc	ra,0x0
    8000741c:	9d8080e7          	jalr	-1576(ra) # 80006df0 <either_copyin>
    80007420:	fd5518e3          	bne	a0,s5,800073f0 <consolewrite+0x40>
    80007424:	04813083          	ld	ra,72(sp)
    80007428:	04013403          	ld	s0,64(sp)
    8000742c:	03813483          	ld	s1,56(sp)
    80007430:	02813983          	ld	s3,40(sp)
    80007434:	02013a03          	ld	s4,32(sp)
    80007438:	01813a83          	ld	s5,24(sp)
    8000743c:	00090513          	mv	a0,s2
    80007440:	03013903          	ld	s2,48(sp)
    80007444:	05010113          	addi	sp,sp,80
    80007448:	00008067          	ret
    8000744c:	00000913          	li	s2,0
    80007450:	fd5ff06f          	j	80007424 <consolewrite+0x74>

0000000080007454 <consoleread>:
    80007454:	f9010113          	addi	sp,sp,-112
    80007458:	06813023          	sd	s0,96(sp)
    8000745c:	04913c23          	sd	s1,88(sp)
    80007460:	05213823          	sd	s2,80(sp)
    80007464:	05313423          	sd	s3,72(sp)
    80007468:	05413023          	sd	s4,64(sp)
    8000746c:	03513c23          	sd	s5,56(sp)
    80007470:	03613823          	sd	s6,48(sp)
    80007474:	03713423          	sd	s7,40(sp)
    80007478:	03813023          	sd	s8,32(sp)
    8000747c:	06113423          	sd	ra,104(sp)
    80007480:	01913c23          	sd	s9,24(sp)
    80007484:	07010413          	addi	s0,sp,112
    80007488:	00060b93          	mv	s7,a2
    8000748c:	00050913          	mv	s2,a0
    80007490:	00058c13          	mv	s8,a1
    80007494:	00060b1b          	sext.w	s6,a2
    80007498:	00006497          	auipc	s1,0x6
    8000749c:	9e048493          	addi	s1,s1,-1568 # 8000ce78 <cons>
    800074a0:	00400993          	li	s3,4
    800074a4:	fff00a13          	li	s4,-1
    800074a8:	00a00a93          	li	s5,10
    800074ac:	05705e63          	blez	s7,80007508 <consoleread+0xb4>
    800074b0:	09c4a703          	lw	a4,156(s1)
    800074b4:	0984a783          	lw	a5,152(s1)
    800074b8:	0007071b          	sext.w	a4,a4
    800074bc:	08e78463          	beq	a5,a4,80007544 <consoleread+0xf0>
    800074c0:	07f7f713          	andi	a4,a5,127
    800074c4:	00e48733          	add	a4,s1,a4
    800074c8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800074cc:	0017869b          	addiw	a3,a5,1
    800074d0:	08d4ac23          	sw	a3,152(s1)
    800074d4:	00070c9b          	sext.w	s9,a4
    800074d8:	0b370663          	beq	a4,s3,80007584 <consoleread+0x130>
    800074dc:	00100693          	li	a3,1
    800074e0:	f9f40613          	addi	a2,s0,-97
    800074e4:	000c0593          	mv	a1,s8
    800074e8:	00090513          	mv	a0,s2
    800074ec:	f8e40fa3          	sb	a4,-97(s0)
    800074f0:	00000097          	auipc	ra,0x0
    800074f4:	8b4080e7          	jalr	-1868(ra) # 80006da4 <either_copyout>
    800074f8:	01450863          	beq	a0,s4,80007508 <consoleread+0xb4>
    800074fc:	001c0c13          	addi	s8,s8,1
    80007500:	fffb8b9b          	addiw	s7,s7,-1
    80007504:	fb5c94e3          	bne	s9,s5,800074ac <consoleread+0x58>
    80007508:	000b851b          	sext.w	a0,s7
    8000750c:	06813083          	ld	ra,104(sp)
    80007510:	06013403          	ld	s0,96(sp)
    80007514:	05813483          	ld	s1,88(sp)
    80007518:	05013903          	ld	s2,80(sp)
    8000751c:	04813983          	ld	s3,72(sp)
    80007520:	04013a03          	ld	s4,64(sp)
    80007524:	03813a83          	ld	s5,56(sp)
    80007528:	02813b83          	ld	s7,40(sp)
    8000752c:	02013c03          	ld	s8,32(sp)
    80007530:	01813c83          	ld	s9,24(sp)
    80007534:	40ab053b          	subw	a0,s6,a0
    80007538:	03013b03          	ld	s6,48(sp)
    8000753c:	07010113          	addi	sp,sp,112
    80007540:	00008067          	ret
    80007544:	00001097          	auipc	ra,0x1
    80007548:	1d8080e7          	jalr	472(ra) # 8000871c <push_on>
    8000754c:	0984a703          	lw	a4,152(s1)
    80007550:	09c4a783          	lw	a5,156(s1)
    80007554:	0007879b          	sext.w	a5,a5
    80007558:	fef70ce3          	beq	a4,a5,80007550 <consoleread+0xfc>
    8000755c:	00001097          	auipc	ra,0x1
    80007560:	234080e7          	jalr	564(ra) # 80008790 <pop_on>
    80007564:	0984a783          	lw	a5,152(s1)
    80007568:	07f7f713          	andi	a4,a5,127
    8000756c:	00e48733          	add	a4,s1,a4
    80007570:	01874703          	lbu	a4,24(a4)
    80007574:	0017869b          	addiw	a3,a5,1
    80007578:	08d4ac23          	sw	a3,152(s1)
    8000757c:	00070c9b          	sext.w	s9,a4
    80007580:	f5371ee3          	bne	a4,s3,800074dc <consoleread+0x88>
    80007584:	000b851b          	sext.w	a0,s7
    80007588:	f96bf2e3          	bgeu	s7,s6,8000750c <consoleread+0xb8>
    8000758c:	08f4ac23          	sw	a5,152(s1)
    80007590:	f7dff06f          	j	8000750c <consoleread+0xb8>

0000000080007594 <consputc>:
    80007594:	10000793          	li	a5,256
    80007598:	00f50663          	beq	a0,a5,800075a4 <consputc+0x10>
    8000759c:	00001317          	auipc	t1,0x1
    800075a0:	9f430067          	jr	-1548(t1) # 80007f90 <uartputc_sync>
    800075a4:	ff010113          	addi	sp,sp,-16
    800075a8:	00113423          	sd	ra,8(sp)
    800075ac:	00813023          	sd	s0,0(sp)
    800075b0:	01010413          	addi	s0,sp,16
    800075b4:	00800513          	li	a0,8
    800075b8:	00001097          	auipc	ra,0x1
    800075bc:	9d8080e7          	jalr	-1576(ra) # 80007f90 <uartputc_sync>
    800075c0:	02000513          	li	a0,32
    800075c4:	00001097          	auipc	ra,0x1
    800075c8:	9cc080e7          	jalr	-1588(ra) # 80007f90 <uartputc_sync>
    800075cc:	00013403          	ld	s0,0(sp)
    800075d0:	00813083          	ld	ra,8(sp)
    800075d4:	00800513          	li	a0,8
    800075d8:	01010113          	addi	sp,sp,16
    800075dc:	00001317          	auipc	t1,0x1
    800075e0:	9b430067          	jr	-1612(t1) # 80007f90 <uartputc_sync>

00000000800075e4 <consoleintr>:
    800075e4:	fe010113          	addi	sp,sp,-32
    800075e8:	00813823          	sd	s0,16(sp)
    800075ec:	00913423          	sd	s1,8(sp)
    800075f0:	01213023          	sd	s2,0(sp)
    800075f4:	00113c23          	sd	ra,24(sp)
    800075f8:	02010413          	addi	s0,sp,32
    800075fc:	00006917          	auipc	s2,0x6
    80007600:	87c90913          	addi	s2,s2,-1924 # 8000ce78 <cons>
    80007604:	00050493          	mv	s1,a0
    80007608:	00090513          	mv	a0,s2
    8000760c:	00001097          	auipc	ra,0x1
    80007610:	e40080e7          	jalr	-448(ra) # 8000844c <acquire>
    80007614:	02048c63          	beqz	s1,8000764c <consoleintr+0x68>
    80007618:	0a092783          	lw	a5,160(s2)
    8000761c:	09892703          	lw	a4,152(s2)
    80007620:	07f00693          	li	a3,127
    80007624:	40e7873b          	subw	a4,a5,a4
    80007628:	02e6e263          	bltu	a3,a4,8000764c <consoleintr+0x68>
    8000762c:	00d00713          	li	a4,13
    80007630:	04e48063          	beq	s1,a4,80007670 <consoleintr+0x8c>
    80007634:	07f7f713          	andi	a4,a5,127
    80007638:	00e90733          	add	a4,s2,a4
    8000763c:	0017879b          	addiw	a5,a5,1
    80007640:	0af92023          	sw	a5,160(s2)
    80007644:	00970c23          	sb	s1,24(a4)
    80007648:	08f92e23          	sw	a5,156(s2)
    8000764c:	01013403          	ld	s0,16(sp)
    80007650:	01813083          	ld	ra,24(sp)
    80007654:	00813483          	ld	s1,8(sp)
    80007658:	00013903          	ld	s2,0(sp)
    8000765c:	00006517          	auipc	a0,0x6
    80007660:	81c50513          	addi	a0,a0,-2020 # 8000ce78 <cons>
    80007664:	02010113          	addi	sp,sp,32
    80007668:	00001317          	auipc	t1,0x1
    8000766c:	eb030067          	jr	-336(t1) # 80008518 <release>
    80007670:	00a00493          	li	s1,10
    80007674:	fc1ff06f          	j	80007634 <consoleintr+0x50>

0000000080007678 <consoleinit>:
    80007678:	fe010113          	addi	sp,sp,-32
    8000767c:	00113c23          	sd	ra,24(sp)
    80007680:	00813823          	sd	s0,16(sp)
    80007684:	00913423          	sd	s1,8(sp)
    80007688:	02010413          	addi	s0,sp,32
    8000768c:	00005497          	auipc	s1,0x5
    80007690:	7ec48493          	addi	s1,s1,2028 # 8000ce78 <cons>
    80007694:	00048513          	mv	a0,s1
    80007698:	00002597          	auipc	a1,0x2
    8000769c:	19058593          	addi	a1,a1,400 # 80009828 <CONSOLE_STATUS+0x818>
    800076a0:	00001097          	auipc	ra,0x1
    800076a4:	d88080e7          	jalr	-632(ra) # 80008428 <initlock>
    800076a8:	00000097          	auipc	ra,0x0
    800076ac:	7ac080e7          	jalr	1964(ra) # 80007e54 <uartinit>
    800076b0:	01813083          	ld	ra,24(sp)
    800076b4:	01013403          	ld	s0,16(sp)
    800076b8:	00000797          	auipc	a5,0x0
    800076bc:	d9c78793          	addi	a5,a5,-612 # 80007454 <consoleread>
    800076c0:	0af4bc23          	sd	a5,184(s1)
    800076c4:	00000797          	auipc	a5,0x0
    800076c8:	cec78793          	addi	a5,a5,-788 # 800073b0 <consolewrite>
    800076cc:	0cf4b023          	sd	a5,192(s1)
    800076d0:	00813483          	ld	s1,8(sp)
    800076d4:	02010113          	addi	sp,sp,32
    800076d8:	00008067          	ret

00000000800076dc <console_read>:
    800076dc:	ff010113          	addi	sp,sp,-16
    800076e0:	00813423          	sd	s0,8(sp)
    800076e4:	01010413          	addi	s0,sp,16
    800076e8:	00813403          	ld	s0,8(sp)
    800076ec:	00006317          	auipc	t1,0x6
    800076f0:	84433303          	ld	t1,-1980(t1) # 8000cf30 <devsw+0x10>
    800076f4:	01010113          	addi	sp,sp,16
    800076f8:	00030067          	jr	t1

00000000800076fc <console_write>:
    800076fc:	ff010113          	addi	sp,sp,-16
    80007700:	00813423          	sd	s0,8(sp)
    80007704:	01010413          	addi	s0,sp,16
    80007708:	00813403          	ld	s0,8(sp)
    8000770c:	00006317          	auipc	t1,0x6
    80007710:	82c33303          	ld	t1,-2004(t1) # 8000cf38 <devsw+0x18>
    80007714:	01010113          	addi	sp,sp,16
    80007718:	00030067          	jr	t1

000000008000771c <panic>:
    8000771c:	fe010113          	addi	sp,sp,-32
    80007720:	00113c23          	sd	ra,24(sp)
    80007724:	00813823          	sd	s0,16(sp)
    80007728:	00913423          	sd	s1,8(sp)
    8000772c:	02010413          	addi	s0,sp,32
    80007730:	00050493          	mv	s1,a0
    80007734:	00002517          	auipc	a0,0x2
    80007738:	0fc50513          	addi	a0,a0,252 # 80009830 <CONSOLE_STATUS+0x820>
    8000773c:	00006797          	auipc	a5,0x6
    80007740:	8807ae23          	sw	zero,-1892(a5) # 8000cfd8 <pr+0x18>
    80007744:	00000097          	auipc	ra,0x0
    80007748:	034080e7          	jalr	52(ra) # 80007778 <__printf>
    8000774c:	00048513          	mv	a0,s1
    80007750:	00000097          	auipc	ra,0x0
    80007754:	028080e7          	jalr	40(ra) # 80007778 <__printf>
    80007758:	00002517          	auipc	a0,0x2
    8000775c:	b6050513          	addi	a0,a0,-1184 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80007760:	00000097          	auipc	ra,0x0
    80007764:	018080e7          	jalr	24(ra) # 80007778 <__printf>
    80007768:	00100793          	li	a5,1
    8000776c:	00004717          	auipc	a4,0x4
    80007770:	56f72e23          	sw	a5,1404(a4) # 8000bce8 <panicked>
    80007774:	0000006f          	j	80007774 <panic+0x58>

0000000080007778 <__printf>:
    80007778:	f3010113          	addi	sp,sp,-208
    8000777c:	08813023          	sd	s0,128(sp)
    80007780:	07313423          	sd	s3,104(sp)
    80007784:	09010413          	addi	s0,sp,144
    80007788:	05813023          	sd	s8,64(sp)
    8000778c:	08113423          	sd	ra,136(sp)
    80007790:	06913c23          	sd	s1,120(sp)
    80007794:	07213823          	sd	s2,112(sp)
    80007798:	07413023          	sd	s4,96(sp)
    8000779c:	05513c23          	sd	s5,88(sp)
    800077a0:	05613823          	sd	s6,80(sp)
    800077a4:	05713423          	sd	s7,72(sp)
    800077a8:	03913c23          	sd	s9,56(sp)
    800077ac:	03a13823          	sd	s10,48(sp)
    800077b0:	03b13423          	sd	s11,40(sp)
    800077b4:	00006317          	auipc	t1,0x6
    800077b8:	80c30313          	addi	t1,t1,-2036 # 8000cfc0 <pr>
    800077bc:	01832c03          	lw	s8,24(t1)
    800077c0:	00b43423          	sd	a1,8(s0)
    800077c4:	00c43823          	sd	a2,16(s0)
    800077c8:	00d43c23          	sd	a3,24(s0)
    800077cc:	02e43023          	sd	a4,32(s0)
    800077d0:	02f43423          	sd	a5,40(s0)
    800077d4:	03043823          	sd	a6,48(s0)
    800077d8:	03143c23          	sd	a7,56(s0)
    800077dc:	00050993          	mv	s3,a0
    800077e0:	4a0c1663          	bnez	s8,80007c8c <__printf+0x514>
    800077e4:	60098c63          	beqz	s3,80007dfc <__printf+0x684>
    800077e8:	0009c503          	lbu	a0,0(s3)
    800077ec:	00840793          	addi	a5,s0,8
    800077f0:	f6f43c23          	sd	a5,-136(s0)
    800077f4:	00000493          	li	s1,0
    800077f8:	22050063          	beqz	a0,80007a18 <__printf+0x2a0>
    800077fc:	00002a37          	lui	s4,0x2
    80007800:	00018ab7          	lui	s5,0x18
    80007804:	000f4b37          	lui	s6,0xf4
    80007808:	00989bb7          	lui	s7,0x989
    8000780c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007810:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007814:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007818:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000781c:	00148c9b          	addiw	s9,s1,1
    80007820:	02500793          	li	a5,37
    80007824:	01998933          	add	s2,s3,s9
    80007828:	38f51263          	bne	a0,a5,80007bac <__printf+0x434>
    8000782c:	00094783          	lbu	a5,0(s2)
    80007830:	00078c9b          	sext.w	s9,a5
    80007834:	1e078263          	beqz	a5,80007a18 <__printf+0x2a0>
    80007838:	0024849b          	addiw	s1,s1,2
    8000783c:	07000713          	li	a4,112
    80007840:	00998933          	add	s2,s3,s1
    80007844:	38e78a63          	beq	a5,a4,80007bd8 <__printf+0x460>
    80007848:	20f76863          	bltu	a4,a5,80007a58 <__printf+0x2e0>
    8000784c:	42a78863          	beq	a5,a0,80007c7c <__printf+0x504>
    80007850:	06400713          	li	a4,100
    80007854:	40e79663          	bne	a5,a4,80007c60 <__printf+0x4e8>
    80007858:	f7843783          	ld	a5,-136(s0)
    8000785c:	0007a603          	lw	a2,0(a5)
    80007860:	00878793          	addi	a5,a5,8
    80007864:	f6f43c23          	sd	a5,-136(s0)
    80007868:	42064a63          	bltz	a2,80007c9c <__printf+0x524>
    8000786c:	00a00713          	li	a4,10
    80007870:	02e677bb          	remuw	a5,a2,a4
    80007874:	00002d97          	auipc	s11,0x2
    80007878:	fe4d8d93          	addi	s11,s11,-28 # 80009858 <digits>
    8000787c:	00900593          	li	a1,9
    80007880:	0006051b          	sext.w	a0,a2
    80007884:	00000c93          	li	s9,0
    80007888:	02079793          	slli	a5,a5,0x20
    8000788c:	0207d793          	srli	a5,a5,0x20
    80007890:	00fd87b3          	add	a5,s11,a5
    80007894:	0007c783          	lbu	a5,0(a5)
    80007898:	02e656bb          	divuw	a3,a2,a4
    8000789c:	f8f40023          	sb	a5,-128(s0)
    800078a0:	14c5d863          	bge	a1,a2,800079f0 <__printf+0x278>
    800078a4:	06300593          	li	a1,99
    800078a8:	00100c93          	li	s9,1
    800078ac:	02e6f7bb          	remuw	a5,a3,a4
    800078b0:	02079793          	slli	a5,a5,0x20
    800078b4:	0207d793          	srli	a5,a5,0x20
    800078b8:	00fd87b3          	add	a5,s11,a5
    800078bc:	0007c783          	lbu	a5,0(a5)
    800078c0:	02e6d73b          	divuw	a4,a3,a4
    800078c4:	f8f400a3          	sb	a5,-127(s0)
    800078c8:	12a5f463          	bgeu	a1,a0,800079f0 <__printf+0x278>
    800078cc:	00a00693          	li	a3,10
    800078d0:	00900593          	li	a1,9
    800078d4:	02d777bb          	remuw	a5,a4,a3
    800078d8:	02079793          	slli	a5,a5,0x20
    800078dc:	0207d793          	srli	a5,a5,0x20
    800078e0:	00fd87b3          	add	a5,s11,a5
    800078e4:	0007c503          	lbu	a0,0(a5)
    800078e8:	02d757bb          	divuw	a5,a4,a3
    800078ec:	f8a40123          	sb	a0,-126(s0)
    800078f0:	48e5f263          	bgeu	a1,a4,80007d74 <__printf+0x5fc>
    800078f4:	06300513          	li	a0,99
    800078f8:	02d7f5bb          	remuw	a1,a5,a3
    800078fc:	02059593          	slli	a1,a1,0x20
    80007900:	0205d593          	srli	a1,a1,0x20
    80007904:	00bd85b3          	add	a1,s11,a1
    80007908:	0005c583          	lbu	a1,0(a1)
    8000790c:	02d7d7bb          	divuw	a5,a5,a3
    80007910:	f8b401a3          	sb	a1,-125(s0)
    80007914:	48e57263          	bgeu	a0,a4,80007d98 <__printf+0x620>
    80007918:	3e700513          	li	a0,999
    8000791c:	02d7f5bb          	remuw	a1,a5,a3
    80007920:	02059593          	slli	a1,a1,0x20
    80007924:	0205d593          	srli	a1,a1,0x20
    80007928:	00bd85b3          	add	a1,s11,a1
    8000792c:	0005c583          	lbu	a1,0(a1)
    80007930:	02d7d7bb          	divuw	a5,a5,a3
    80007934:	f8b40223          	sb	a1,-124(s0)
    80007938:	46e57663          	bgeu	a0,a4,80007da4 <__printf+0x62c>
    8000793c:	02d7f5bb          	remuw	a1,a5,a3
    80007940:	02059593          	slli	a1,a1,0x20
    80007944:	0205d593          	srli	a1,a1,0x20
    80007948:	00bd85b3          	add	a1,s11,a1
    8000794c:	0005c583          	lbu	a1,0(a1)
    80007950:	02d7d7bb          	divuw	a5,a5,a3
    80007954:	f8b402a3          	sb	a1,-123(s0)
    80007958:	46ea7863          	bgeu	s4,a4,80007dc8 <__printf+0x650>
    8000795c:	02d7f5bb          	remuw	a1,a5,a3
    80007960:	02059593          	slli	a1,a1,0x20
    80007964:	0205d593          	srli	a1,a1,0x20
    80007968:	00bd85b3          	add	a1,s11,a1
    8000796c:	0005c583          	lbu	a1,0(a1)
    80007970:	02d7d7bb          	divuw	a5,a5,a3
    80007974:	f8b40323          	sb	a1,-122(s0)
    80007978:	3eeaf863          	bgeu	s5,a4,80007d68 <__printf+0x5f0>
    8000797c:	02d7f5bb          	remuw	a1,a5,a3
    80007980:	02059593          	slli	a1,a1,0x20
    80007984:	0205d593          	srli	a1,a1,0x20
    80007988:	00bd85b3          	add	a1,s11,a1
    8000798c:	0005c583          	lbu	a1,0(a1)
    80007990:	02d7d7bb          	divuw	a5,a5,a3
    80007994:	f8b403a3          	sb	a1,-121(s0)
    80007998:	42eb7e63          	bgeu	s6,a4,80007dd4 <__printf+0x65c>
    8000799c:	02d7f5bb          	remuw	a1,a5,a3
    800079a0:	02059593          	slli	a1,a1,0x20
    800079a4:	0205d593          	srli	a1,a1,0x20
    800079a8:	00bd85b3          	add	a1,s11,a1
    800079ac:	0005c583          	lbu	a1,0(a1)
    800079b0:	02d7d7bb          	divuw	a5,a5,a3
    800079b4:	f8b40423          	sb	a1,-120(s0)
    800079b8:	42ebfc63          	bgeu	s7,a4,80007df0 <__printf+0x678>
    800079bc:	02079793          	slli	a5,a5,0x20
    800079c0:	0207d793          	srli	a5,a5,0x20
    800079c4:	00fd8db3          	add	s11,s11,a5
    800079c8:	000dc703          	lbu	a4,0(s11)
    800079cc:	00a00793          	li	a5,10
    800079d0:	00900c93          	li	s9,9
    800079d4:	f8e404a3          	sb	a4,-119(s0)
    800079d8:	00065c63          	bgez	a2,800079f0 <__printf+0x278>
    800079dc:	f9040713          	addi	a4,s0,-112
    800079e0:	00f70733          	add	a4,a4,a5
    800079e4:	02d00693          	li	a3,45
    800079e8:	fed70823          	sb	a3,-16(a4)
    800079ec:	00078c93          	mv	s9,a5
    800079f0:	f8040793          	addi	a5,s0,-128
    800079f4:	01978cb3          	add	s9,a5,s9
    800079f8:	f7f40d13          	addi	s10,s0,-129
    800079fc:	000cc503          	lbu	a0,0(s9)
    80007a00:	fffc8c93          	addi	s9,s9,-1
    80007a04:	00000097          	auipc	ra,0x0
    80007a08:	b90080e7          	jalr	-1136(ra) # 80007594 <consputc>
    80007a0c:	ffac98e3          	bne	s9,s10,800079fc <__printf+0x284>
    80007a10:	00094503          	lbu	a0,0(s2)
    80007a14:	e00514e3          	bnez	a0,8000781c <__printf+0xa4>
    80007a18:	1a0c1663          	bnez	s8,80007bc4 <__printf+0x44c>
    80007a1c:	08813083          	ld	ra,136(sp)
    80007a20:	08013403          	ld	s0,128(sp)
    80007a24:	07813483          	ld	s1,120(sp)
    80007a28:	07013903          	ld	s2,112(sp)
    80007a2c:	06813983          	ld	s3,104(sp)
    80007a30:	06013a03          	ld	s4,96(sp)
    80007a34:	05813a83          	ld	s5,88(sp)
    80007a38:	05013b03          	ld	s6,80(sp)
    80007a3c:	04813b83          	ld	s7,72(sp)
    80007a40:	04013c03          	ld	s8,64(sp)
    80007a44:	03813c83          	ld	s9,56(sp)
    80007a48:	03013d03          	ld	s10,48(sp)
    80007a4c:	02813d83          	ld	s11,40(sp)
    80007a50:	0d010113          	addi	sp,sp,208
    80007a54:	00008067          	ret
    80007a58:	07300713          	li	a4,115
    80007a5c:	1ce78a63          	beq	a5,a4,80007c30 <__printf+0x4b8>
    80007a60:	07800713          	li	a4,120
    80007a64:	1ee79e63          	bne	a5,a4,80007c60 <__printf+0x4e8>
    80007a68:	f7843783          	ld	a5,-136(s0)
    80007a6c:	0007a703          	lw	a4,0(a5)
    80007a70:	00878793          	addi	a5,a5,8
    80007a74:	f6f43c23          	sd	a5,-136(s0)
    80007a78:	28074263          	bltz	a4,80007cfc <__printf+0x584>
    80007a7c:	00002d97          	auipc	s11,0x2
    80007a80:	ddcd8d93          	addi	s11,s11,-548 # 80009858 <digits>
    80007a84:	00f77793          	andi	a5,a4,15
    80007a88:	00fd87b3          	add	a5,s11,a5
    80007a8c:	0007c683          	lbu	a3,0(a5)
    80007a90:	00f00613          	li	a2,15
    80007a94:	0007079b          	sext.w	a5,a4
    80007a98:	f8d40023          	sb	a3,-128(s0)
    80007a9c:	0047559b          	srliw	a1,a4,0x4
    80007aa0:	0047569b          	srliw	a3,a4,0x4
    80007aa4:	00000c93          	li	s9,0
    80007aa8:	0ee65063          	bge	a2,a4,80007b88 <__printf+0x410>
    80007aac:	00f6f693          	andi	a3,a3,15
    80007ab0:	00dd86b3          	add	a3,s11,a3
    80007ab4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007ab8:	0087d79b          	srliw	a5,a5,0x8
    80007abc:	00100c93          	li	s9,1
    80007ac0:	f8d400a3          	sb	a3,-127(s0)
    80007ac4:	0cb67263          	bgeu	a2,a1,80007b88 <__printf+0x410>
    80007ac8:	00f7f693          	andi	a3,a5,15
    80007acc:	00dd86b3          	add	a3,s11,a3
    80007ad0:	0006c583          	lbu	a1,0(a3)
    80007ad4:	00f00613          	li	a2,15
    80007ad8:	0047d69b          	srliw	a3,a5,0x4
    80007adc:	f8b40123          	sb	a1,-126(s0)
    80007ae0:	0047d593          	srli	a1,a5,0x4
    80007ae4:	28f67e63          	bgeu	a2,a5,80007d80 <__printf+0x608>
    80007ae8:	00f6f693          	andi	a3,a3,15
    80007aec:	00dd86b3          	add	a3,s11,a3
    80007af0:	0006c503          	lbu	a0,0(a3)
    80007af4:	0087d813          	srli	a6,a5,0x8
    80007af8:	0087d69b          	srliw	a3,a5,0x8
    80007afc:	f8a401a3          	sb	a0,-125(s0)
    80007b00:	28b67663          	bgeu	a2,a1,80007d8c <__printf+0x614>
    80007b04:	00f6f693          	andi	a3,a3,15
    80007b08:	00dd86b3          	add	a3,s11,a3
    80007b0c:	0006c583          	lbu	a1,0(a3)
    80007b10:	00c7d513          	srli	a0,a5,0xc
    80007b14:	00c7d69b          	srliw	a3,a5,0xc
    80007b18:	f8b40223          	sb	a1,-124(s0)
    80007b1c:	29067a63          	bgeu	a2,a6,80007db0 <__printf+0x638>
    80007b20:	00f6f693          	andi	a3,a3,15
    80007b24:	00dd86b3          	add	a3,s11,a3
    80007b28:	0006c583          	lbu	a1,0(a3)
    80007b2c:	0107d813          	srli	a6,a5,0x10
    80007b30:	0107d69b          	srliw	a3,a5,0x10
    80007b34:	f8b402a3          	sb	a1,-123(s0)
    80007b38:	28a67263          	bgeu	a2,a0,80007dbc <__printf+0x644>
    80007b3c:	00f6f693          	andi	a3,a3,15
    80007b40:	00dd86b3          	add	a3,s11,a3
    80007b44:	0006c683          	lbu	a3,0(a3)
    80007b48:	0147d79b          	srliw	a5,a5,0x14
    80007b4c:	f8d40323          	sb	a3,-122(s0)
    80007b50:	21067663          	bgeu	a2,a6,80007d5c <__printf+0x5e4>
    80007b54:	02079793          	slli	a5,a5,0x20
    80007b58:	0207d793          	srli	a5,a5,0x20
    80007b5c:	00fd8db3          	add	s11,s11,a5
    80007b60:	000dc683          	lbu	a3,0(s11)
    80007b64:	00800793          	li	a5,8
    80007b68:	00700c93          	li	s9,7
    80007b6c:	f8d403a3          	sb	a3,-121(s0)
    80007b70:	00075c63          	bgez	a4,80007b88 <__printf+0x410>
    80007b74:	f9040713          	addi	a4,s0,-112
    80007b78:	00f70733          	add	a4,a4,a5
    80007b7c:	02d00693          	li	a3,45
    80007b80:	fed70823          	sb	a3,-16(a4)
    80007b84:	00078c93          	mv	s9,a5
    80007b88:	f8040793          	addi	a5,s0,-128
    80007b8c:	01978cb3          	add	s9,a5,s9
    80007b90:	f7f40d13          	addi	s10,s0,-129
    80007b94:	000cc503          	lbu	a0,0(s9)
    80007b98:	fffc8c93          	addi	s9,s9,-1
    80007b9c:	00000097          	auipc	ra,0x0
    80007ba0:	9f8080e7          	jalr	-1544(ra) # 80007594 <consputc>
    80007ba4:	ff9d18e3          	bne	s10,s9,80007b94 <__printf+0x41c>
    80007ba8:	0100006f          	j	80007bb8 <__printf+0x440>
    80007bac:	00000097          	auipc	ra,0x0
    80007bb0:	9e8080e7          	jalr	-1560(ra) # 80007594 <consputc>
    80007bb4:	000c8493          	mv	s1,s9
    80007bb8:	00094503          	lbu	a0,0(s2)
    80007bbc:	c60510e3          	bnez	a0,8000781c <__printf+0xa4>
    80007bc0:	e40c0ee3          	beqz	s8,80007a1c <__printf+0x2a4>
    80007bc4:	00005517          	auipc	a0,0x5
    80007bc8:	3fc50513          	addi	a0,a0,1020 # 8000cfc0 <pr>
    80007bcc:	00001097          	auipc	ra,0x1
    80007bd0:	94c080e7          	jalr	-1716(ra) # 80008518 <release>
    80007bd4:	e49ff06f          	j	80007a1c <__printf+0x2a4>
    80007bd8:	f7843783          	ld	a5,-136(s0)
    80007bdc:	03000513          	li	a0,48
    80007be0:	01000d13          	li	s10,16
    80007be4:	00878713          	addi	a4,a5,8
    80007be8:	0007bc83          	ld	s9,0(a5)
    80007bec:	f6e43c23          	sd	a4,-136(s0)
    80007bf0:	00000097          	auipc	ra,0x0
    80007bf4:	9a4080e7          	jalr	-1628(ra) # 80007594 <consputc>
    80007bf8:	07800513          	li	a0,120
    80007bfc:	00000097          	auipc	ra,0x0
    80007c00:	998080e7          	jalr	-1640(ra) # 80007594 <consputc>
    80007c04:	00002d97          	auipc	s11,0x2
    80007c08:	c54d8d93          	addi	s11,s11,-940 # 80009858 <digits>
    80007c0c:	03ccd793          	srli	a5,s9,0x3c
    80007c10:	00fd87b3          	add	a5,s11,a5
    80007c14:	0007c503          	lbu	a0,0(a5)
    80007c18:	fffd0d1b          	addiw	s10,s10,-1
    80007c1c:	004c9c93          	slli	s9,s9,0x4
    80007c20:	00000097          	auipc	ra,0x0
    80007c24:	974080e7          	jalr	-1676(ra) # 80007594 <consputc>
    80007c28:	fe0d12e3          	bnez	s10,80007c0c <__printf+0x494>
    80007c2c:	f8dff06f          	j	80007bb8 <__printf+0x440>
    80007c30:	f7843783          	ld	a5,-136(s0)
    80007c34:	0007bc83          	ld	s9,0(a5)
    80007c38:	00878793          	addi	a5,a5,8
    80007c3c:	f6f43c23          	sd	a5,-136(s0)
    80007c40:	000c9a63          	bnez	s9,80007c54 <__printf+0x4dc>
    80007c44:	1080006f          	j	80007d4c <__printf+0x5d4>
    80007c48:	001c8c93          	addi	s9,s9,1
    80007c4c:	00000097          	auipc	ra,0x0
    80007c50:	948080e7          	jalr	-1720(ra) # 80007594 <consputc>
    80007c54:	000cc503          	lbu	a0,0(s9)
    80007c58:	fe0518e3          	bnez	a0,80007c48 <__printf+0x4d0>
    80007c5c:	f5dff06f          	j	80007bb8 <__printf+0x440>
    80007c60:	02500513          	li	a0,37
    80007c64:	00000097          	auipc	ra,0x0
    80007c68:	930080e7          	jalr	-1744(ra) # 80007594 <consputc>
    80007c6c:	000c8513          	mv	a0,s9
    80007c70:	00000097          	auipc	ra,0x0
    80007c74:	924080e7          	jalr	-1756(ra) # 80007594 <consputc>
    80007c78:	f41ff06f          	j	80007bb8 <__printf+0x440>
    80007c7c:	02500513          	li	a0,37
    80007c80:	00000097          	auipc	ra,0x0
    80007c84:	914080e7          	jalr	-1772(ra) # 80007594 <consputc>
    80007c88:	f31ff06f          	j	80007bb8 <__printf+0x440>
    80007c8c:	00030513          	mv	a0,t1
    80007c90:	00000097          	auipc	ra,0x0
    80007c94:	7bc080e7          	jalr	1980(ra) # 8000844c <acquire>
    80007c98:	b4dff06f          	j	800077e4 <__printf+0x6c>
    80007c9c:	40c0053b          	negw	a0,a2
    80007ca0:	00a00713          	li	a4,10
    80007ca4:	02e576bb          	remuw	a3,a0,a4
    80007ca8:	00002d97          	auipc	s11,0x2
    80007cac:	bb0d8d93          	addi	s11,s11,-1104 # 80009858 <digits>
    80007cb0:	ff700593          	li	a1,-9
    80007cb4:	02069693          	slli	a3,a3,0x20
    80007cb8:	0206d693          	srli	a3,a3,0x20
    80007cbc:	00dd86b3          	add	a3,s11,a3
    80007cc0:	0006c683          	lbu	a3,0(a3)
    80007cc4:	02e557bb          	divuw	a5,a0,a4
    80007cc8:	f8d40023          	sb	a3,-128(s0)
    80007ccc:	10b65e63          	bge	a2,a1,80007de8 <__printf+0x670>
    80007cd0:	06300593          	li	a1,99
    80007cd4:	02e7f6bb          	remuw	a3,a5,a4
    80007cd8:	02069693          	slli	a3,a3,0x20
    80007cdc:	0206d693          	srli	a3,a3,0x20
    80007ce0:	00dd86b3          	add	a3,s11,a3
    80007ce4:	0006c683          	lbu	a3,0(a3)
    80007ce8:	02e7d73b          	divuw	a4,a5,a4
    80007cec:	00200793          	li	a5,2
    80007cf0:	f8d400a3          	sb	a3,-127(s0)
    80007cf4:	bca5ece3          	bltu	a1,a0,800078cc <__printf+0x154>
    80007cf8:	ce5ff06f          	j	800079dc <__printf+0x264>
    80007cfc:	40e007bb          	negw	a5,a4
    80007d00:	00002d97          	auipc	s11,0x2
    80007d04:	b58d8d93          	addi	s11,s11,-1192 # 80009858 <digits>
    80007d08:	00f7f693          	andi	a3,a5,15
    80007d0c:	00dd86b3          	add	a3,s11,a3
    80007d10:	0006c583          	lbu	a1,0(a3)
    80007d14:	ff100613          	li	a2,-15
    80007d18:	0047d69b          	srliw	a3,a5,0x4
    80007d1c:	f8b40023          	sb	a1,-128(s0)
    80007d20:	0047d59b          	srliw	a1,a5,0x4
    80007d24:	0ac75e63          	bge	a4,a2,80007de0 <__printf+0x668>
    80007d28:	00f6f693          	andi	a3,a3,15
    80007d2c:	00dd86b3          	add	a3,s11,a3
    80007d30:	0006c603          	lbu	a2,0(a3)
    80007d34:	00f00693          	li	a3,15
    80007d38:	0087d79b          	srliw	a5,a5,0x8
    80007d3c:	f8c400a3          	sb	a2,-127(s0)
    80007d40:	d8b6e4e3          	bltu	a3,a1,80007ac8 <__printf+0x350>
    80007d44:	00200793          	li	a5,2
    80007d48:	e2dff06f          	j	80007b74 <__printf+0x3fc>
    80007d4c:	00002c97          	auipc	s9,0x2
    80007d50:	aecc8c93          	addi	s9,s9,-1300 # 80009838 <CONSOLE_STATUS+0x828>
    80007d54:	02800513          	li	a0,40
    80007d58:	ef1ff06f          	j	80007c48 <__printf+0x4d0>
    80007d5c:	00700793          	li	a5,7
    80007d60:	00600c93          	li	s9,6
    80007d64:	e0dff06f          	j	80007b70 <__printf+0x3f8>
    80007d68:	00700793          	li	a5,7
    80007d6c:	00600c93          	li	s9,6
    80007d70:	c69ff06f          	j	800079d8 <__printf+0x260>
    80007d74:	00300793          	li	a5,3
    80007d78:	00200c93          	li	s9,2
    80007d7c:	c5dff06f          	j	800079d8 <__printf+0x260>
    80007d80:	00300793          	li	a5,3
    80007d84:	00200c93          	li	s9,2
    80007d88:	de9ff06f          	j	80007b70 <__printf+0x3f8>
    80007d8c:	00400793          	li	a5,4
    80007d90:	00300c93          	li	s9,3
    80007d94:	dddff06f          	j	80007b70 <__printf+0x3f8>
    80007d98:	00400793          	li	a5,4
    80007d9c:	00300c93          	li	s9,3
    80007da0:	c39ff06f          	j	800079d8 <__printf+0x260>
    80007da4:	00500793          	li	a5,5
    80007da8:	00400c93          	li	s9,4
    80007dac:	c2dff06f          	j	800079d8 <__printf+0x260>
    80007db0:	00500793          	li	a5,5
    80007db4:	00400c93          	li	s9,4
    80007db8:	db9ff06f          	j	80007b70 <__printf+0x3f8>
    80007dbc:	00600793          	li	a5,6
    80007dc0:	00500c93          	li	s9,5
    80007dc4:	dadff06f          	j	80007b70 <__printf+0x3f8>
    80007dc8:	00600793          	li	a5,6
    80007dcc:	00500c93          	li	s9,5
    80007dd0:	c09ff06f          	j	800079d8 <__printf+0x260>
    80007dd4:	00800793          	li	a5,8
    80007dd8:	00700c93          	li	s9,7
    80007ddc:	bfdff06f          	j	800079d8 <__printf+0x260>
    80007de0:	00100793          	li	a5,1
    80007de4:	d91ff06f          	j	80007b74 <__printf+0x3fc>
    80007de8:	00100793          	li	a5,1
    80007dec:	bf1ff06f          	j	800079dc <__printf+0x264>
    80007df0:	00900793          	li	a5,9
    80007df4:	00800c93          	li	s9,8
    80007df8:	be1ff06f          	j	800079d8 <__printf+0x260>
    80007dfc:	00002517          	auipc	a0,0x2
    80007e00:	a4450513          	addi	a0,a0,-1468 # 80009840 <CONSOLE_STATUS+0x830>
    80007e04:	00000097          	auipc	ra,0x0
    80007e08:	918080e7          	jalr	-1768(ra) # 8000771c <panic>

0000000080007e0c <printfinit>:
    80007e0c:	fe010113          	addi	sp,sp,-32
    80007e10:	00813823          	sd	s0,16(sp)
    80007e14:	00913423          	sd	s1,8(sp)
    80007e18:	00113c23          	sd	ra,24(sp)
    80007e1c:	02010413          	addi	s0,sp,32
    80007e20:	00005497          	auipc	s1,0x5
    80007e24:	1a048493          	addi	s1,s1,416 # 8000cfc0 <pr>
    80007e28:	00048513          	mv	a0,s1
    80007e2c:	00002597          	auipc	a1,0x2
    80007e30:	a2458593          	addi	a1,a1,-1500 # 80009850 <CONSOLE_STATUS+0x840>
    80007e34:	00000097          	auipc	ra,0x0
    80007e38:	5f4080e7          	jalr	1524(ra) # 80008428 <initlock>
    80007e3c:	01813083          	ld	ra,24(sp)
    80007e40:	01013403          	ld	s0,16(sp)
    80007e44:	0004ac23          	sw	zero,24(s1)
    80007e48:	00813483          	ld	s1,8(sp)
    80007e4c:	02010113          	addi	sp,sp,32
    80007e50:	00008067          	ret

0000000080007e54 <uartinit>:
    80007e54:	ff010113          	addi	sp,sp,-16
    80007e58:	00813423          	sd	s0,8(sp)
    80007e5c:	01010413          	addi	s0,sp,16
    80007e60:	100007b7          	lui	a5,0x10000
    80007e64:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007e68:	f8000713          	li	a4,-128
    80007e6c:	00e781a3          	sb	a4,3(a5)
    80007e70:	00300713          	li	a4,3
    80007e74:	00e78023          	sb	a4,0(a5)
    80007e78:	000780a3          	sb	zero,1(a5)
    80007e7c:	00e781a3          	sb	a4,3(a5)
    80007e80:	00700693          	li	a3,7
    80007e84:	00d78123          	sb	a3,2(a5)
    80007e88:	00e780a3          	sb	a4,1(a5)
    80007e8c:	00813403          	ld	s0,8(sp)
    80007e90:	01010113          	addi	sp,sp,16
    80007e94:	00008067          	ret

0000000080007e98 <uartputc>:
    80007e98:	00004797          	auipc	a5,0x4
    80007e9c:	e507a783          	lw	a5,-432(a5) # 8000bce8 <panicked>
    80007ea0:	00078463          	beqz	a5,80007ea8 <uartputc+0x10>
    80007ea4:	0000006f          	j	80007ea4 <uartputc+0xc>
    80007ea8:	fd010113          	addi	sp,sp,-48
    80007eac:	02813023          	sd	s0,32(sp)
    80007eb0:	00913c23          	sd	s1,24(sp)
    80007eb4:	01213823          	sd	s2,16(sp)
    80007eb8:	01313423          	sd	s3,8(sp)
    80007ebc:	02113423          	sd	ra,40(sp)
    80007ec0:	03010413          	addi	s0,sp,48
    80007ec4:	00004917          	auipc	s2,0x4
    80007ec8:	e2c90913          	addi	s2,s2,-468 # 8000bcf0 <uart_tx_r>
    80007ecc:	00093783          	ld	a5,0(s2)
    80007ed0:	00004497          	auipc	s1,0x4
    80007ed4:	e2848493          	addi	s1,s1,-472 # 8000bcf8 <uart_tx_w>
    80007ed8:	0004b703          	ld	a4,0(s1)
    80007edc:	02078693          	addi	a3,a5,32
    80007ee0:	00050993          	mv	s3,a0
    80007ee4:	02e69c63          	bne	a3,a4,80007f1c <uartputc+0x84>
    80007ee8:	00001097          	auipc	ra,0x1
    80007eec:	834080e7          	jalr	-1996(ra) # 8000871c <push_on>
    80007ef0:	00093783          	ld	a5,0(s2)
    80007ef4:	0004b703          	ld	a4,0(s1)
    80007ef8:	02078793          	addi	a5,a5,32
    80007efc:	00e79463          	bne	a5,a4,80007f04 <uartputc+0x6c>
    80007f00:	0000006f          	j	80007f00 <uartputc+0x68>
    80007f04:	00001097          	auipc	ra,0x1
    80007f08:	88c080e7          	jalr	-1908(ra) # 80008790 <pop_on>
    80007f0c:	00093783          	ld	a5,0(s2)
    80007f10:	0004b703          	ld	a4,0(s1)
    80007f14:	02078693          	addi	a3,a5,32
    80007f18:	fce688e3          	beq	a3,a4,80007ee8 <uartputc+0x50>
    80007f1c:	01f77693          	andi	a3,a4,31
    80007f20:	00005597          	auipc	a1,0x5
    80007f24:	0c058593          	addi	a1,a1,192 # 8000cfe0 <uart_tx_buf>
    80007f28:	00d586b3          	add	a3,a1,a3
    80007f2c:	00170713          	addi	a4,a4,1
    80007f30:	01368023          	sb	s3,0(a3)
    80007f34:	00e4b023          	sd	a4,0(s1)
    80007f38:	10000637          	lui	a2,0x10000
    80007f3c:	02f71063          	bne	a4,a5,80007f5c <uartputc+0xc4>
    80007f40:	0340006f          	j	80007f74 <uartputc+0xdc>
    80007f44:	00074703          	lbu	a4,0(a4)
    80007f48:	00f93023          	sd	a5,0(s2)
    80007f4c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007f50:	00093783          	ld	a5,0(s2)
    80007f54:	0004b703          	ld	a4,0(s1)
    80007f58:	00f70e63          	beq	a4,a5,80007f74 <uartputc+0xdc>
    80007f5c:	00564683          	lbu	a3,5(a2)
    80007f60:	01f7f713          	andi	a4,a5,31
    80007f64:	00e58733          	add	a4,a1,a4
    80007f68:	0206f693          	andi	a3,a3,32
    80007f6c:	00178793          	addi	a5,a5,1
    80007f70:	fc069ae3          	bnez	a3,80007f44 <uartputc+0xac>
    80007f74:	02813083          	ld	ra,40(sp)
    80007f78:	02013403          	ld	s0,32(sp)
    80007f7c:	01813483          	ld	s1,24(sp)
    80007f80:	01013903          	ld	s2,16(sp)
    80007f84:	00813983          	ld	s3,8(sp)
    80007f88:	03010113          	addi	sp,sp,48
    80007f8c:	00008067          	ret

0000000080007f90 <uartputc_sync>:
    80007f90:	ff010113          	addi	sp,sp,-16
    80007f94:	00813423          	sd	s0,8(sp)
    80007f98:	01010413          	addi	s0,sp,16
    80007f9c:	00004717          	auipc	a4,0x4
    80007fa0:	d4c72703          	lw	a4,-692(a4) # 8000bce8 <panicked>
    80007fa4:	02071663          	bnez	a4,80007fd0 <uartputc_sync+0x40>
    80007fa8:	00050793          	mv	a5,a0
    80007fac:	100006b7          	lui	a3,0x10000
    80007fb0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007fb4:	02077713          	andi	a4,a4,32
    80007fb8:	fe070ce3          	beqz	a4,80007fb0 <uartputc_sync+0x20>
    80007fbc:	0ff7f793          	andi	a5,a5,255
    80007fc0:	00f68023          	sb	a5,0(a3)
    80007fc4:	00813403          	ld	s0,8(sp)
    80007fc8:	01010113          	addi	sp,sp,16
    80007fcc:	00008067          	ret
    80007fd0:	0000006f          	j	80007fd0 <uartputc_sync+0x40>

0000000080007fd4 <uartstart>:
    80007fd4:	ff010113          	addi	sp,sp,-16
    80007fd8:	00813423          	sd	s0,8(sp)
    80007fdc:	01010413          	addi	s0,sp,16
    80007fe0:	00004617          	auipc	a2,0x4
    80007fe4:	d1060613          	addi	a2,a2,-752 # 8000bcf0 <uart_tx_r>
    80007fe8:	00004517          	auipc	a0,0x4
    80007fec:	d1050513          	addi	a0,a0,-752 # 8000bcf8 <uart_tx_w>
    80007ff0:	00063783          	ld	a5,0(a2)
    80007ff4:	00053703          	ld	a4,0(a0)
    80007ff8:	04f70263          	beq	a4,a5,8000803c <uartstart+0x68>
    80007ffc:	100005b7          	lui	a1,0x10000
    80008000:	00005817          	auipc	a6,0x5
    80008004:	fe080813          	addi	a6,a6,-32 # 8000cfe0 <uart_tx_buf>
    80008008:	01c0006f          	j	80008024 <uartstart+0x50>
    8000800c:	0006c703          	lbu	a4,0(a3)
    80008010:	00f63023          	sd	a5,0(a2)
    80008014:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008018:	00063783          	ld	a5,0(a2)
    8000801c:	00053703          	ld	a4,0(a0)
    80008020:	00f70e63          	beq	a4,a5,8000803c <uartstart+0x68>
    80008024:	01f7f713          	andi	a4,a5,31
    80008028:	00e806b3          	add	a3,a6,a4
    8000802c:	0055c703          	lbu	a4,5(a1)
    80008030:	00178793          	addi	a5,a5,1
    80008034:	02077713          	andi	a4,a4,32
    80008038:	fc071ae3          	bnez	a4,8000800c <uartstart+0x38>
    8000803c:	00813403          	ld	s0,8(sp)
    80008040:	01010113          	addi	sp,sp,16
    80008044:	00008067          	ret

0000000080008048 <uartgetc>:
    80008048:	ff010113          	addi	sp,sp,-16
    8000804c:	00813423          	sd	s0,8(sp)
    80008050:	01010413          	addi	s0,sp,16
    80008054:	10000737          	lui	a4,0x10000
    80008058:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000805c:	0017f793          	andi	a5,a5,1
    80008060:	00078c63          	beqz	a5,80008078 <uartgetc+0x30>
    80008064:	00074503          	lbu	a0,0(a4)
    80008068:	0ff57513          	andi	a0,a0,255
    8000806c:	00813403          	ld	s0,8(sp)
    80008070:	01010113          	addi	sp,sp,16
    80008074:	00008067          	ret
    80008078:	fff00513          	li	a0,-1
    8000807c:	ff1ff06f          	j	8000806c <uartgetc+0x24>

0000000080008080 <uartintr>:
    80008080:	100007b7          	lui	a5,0x10000
    80008084:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008088:	0017f793          	andi	a5,a5,1
    8000808c:	0a078463          	beqz	a5,80008134 <uartintr+0xb4>
    80008090:	fe010113          	addi	sp,sp,-32
    80008094:	00813823          	sd	s0,16(sp)
    80008098:	00913423          	sd	s1,8(sp)
    8000809c:	00113c23          	sd	ra,24(sp)
    800080a0:	02010413          	addi	s0,sp,32
    800080a4:	100004b7          	lui	s1,0x10000
    800080a8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800080ac:	0ff57513          	andi	a0,a0,255
    800080b0:	fffff097          	auipc	ra,0xfffff
    800080b4:	534080e7          	jalr	1332(ra) # 800075e4 <consoleintr>
    800080b8:	0054c783          	lbu	a5,5(s1)
    800080bc:	0017f793          	andi	a5,a5,1
    800080c0:	fe0794e3          	bnez	a5,800080a8 <uartintr+0x28>
    800080c4:	00004617          	auipc	a2,0x4
    800080c8:	c2c60613          	addi	a2,a2,-980 # 8000bcf0 <uart_tx_r>
    800080cc:	00004517          	auipc	a0,0x4
    800080d0:	c2c50513          	addi	a0,a0,-980 # 8000bcf8 <uart_tx_w>
    800080d4:	00063783          	ld	a5,0(a2)
    800080d8:	00053703          	ld	a4,0(a0)
    800080dc:	04f70263          	beq	a4,a5,80008120 <uartintr+0xa0>
    800080e0:	100005b7          	lui	a1,0x10000
    800080e4:	00005817          	auipc	a6,0x5
    800080e8:	efc80813          	addi	a6,a6,-260 # 8000cfe0 <uart_tx_buf>
    800080ec:	01c0006f          	j	80008108 <uartintr+0x88>
    800080f0:	0006c703          	lbu	a4,0(a3)
    800080f4:	00f63023          	sd	a5,0(a2)
    800080f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800080fc:	00063783          	ld	a5,0(a2)
    80008100:	00053703          	ld	a4,0(a0)
    80008104:	00f70e63          	beq	a4,a5,80008120 <uartintr+0xa0>
    80008108:	01f7f713          	andi	a4,a5,31
    8000810c:	00e806b3          	add	a3,a6,a4
    80008110:	0055c703          	lbu	a4,5(a1)
    80008114:	00178793          	addi	a5,a5,1
    80008118:	02077713          	andi	a4,a4,32
    8000811c:	fc071ae3          	bnez	a4,800080f0 <uartintr+0x70>
    80008120:	01813083          	ld	ra,24(sp)
    80008124:	01013403          	ld	s0,16(sp)
    80008128:	00813483          	ld	s1,8(sp)
    8000812c:	02010113          	addi	sp,sp,32
    80008130:	00008067          	ret
    80008134:	00004617          	auipc	a2,0x4
    80008138:	bbc60613          	addi	a2,a2,-1092 # 8000bcf0 <uart_tx_r>
    8000813c:	00004517          	auipc	a0,0x4
    80008140:	bbc50513          	addi	a0,a0,-1092 # 8000bcf8 <uart_tx_w>
    80008144:	00063783          	ld	a5,0(a2)
    80008148:	00053703          	ld	a4,0(a0)
    8000814c:	04f70263          	beq	a4,a5,80008190 <uartintr+0x110>
    80008150:	100005b7          	lui	a1,0x10000
    80008154:	00005817          	auipc	a6,0x5
    80008158:	e8c80813          	addi	a6,a6,-372 # 8000cfe0 <uart_tx_buf>
    8000815c:	01c0006f          	j	80008178 <uartintr+0xf8>
    80008160:	0006c703          	lbu	a4,0(a3)
    80008164:	00f63023          	sd	a5,0(a2)
    80008168:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000816c:	00063783          	ld	a5,0(a2)
    80008170:	00053703          	ld	a4,0(a0)
    80008174:	02f70063          	beq	a4,a5,80008194 <uartintr+0x114>
    80008178:	01f7f713          	andi	a4,a5,31
    8000817c:	00e806b3          	add	a3,a6,a4
    80008180:	0055c703          	lbu	a4,5(a1)
    80008184:	00178793          	addi	a5,a5,1
    80008188:	02077713          	andi	a4,a4,32
    8000818c:	fc071ae3          	bnez	a4,80008160 <uartintr+0xe0>
    80008190:	00008067          	ret
    80008194:	00008067          	ret

0000000080008198 <kinit>:
    80008198:	fc010113          	addi	sp,sp,-64
    8000819c:	02913423          	sd	s1,40(sp)
    800081a0:	fffff7b7          	lui	a5,0xfffff
    800081a4:	00006497          	auipc	s1,0x6
    800081a8:	e5b48493          	addi	s1,s1,-421 # 8000dfff <end+0xfff>
    800081ac:	02813823          	sd	s0,48(sp)
    800081b0:	01313c23          	sd	s3,24(sp)
    800081b4:	00f4f4b3          	and	s1,s1,a5
    800081b8:	02113c23          	sd	ra,56(sp)
    800081bc:	03213023          	sd	s2,32(sp)
    800081c0:	01413823          	sd	s4,16(sp)
    800081c4:	01513423          	sd	s5,8(sp)
    800081c8:	04010413          	addi	s0,sp,64
    800081cc:	000017b7          	lui	a5,0x1
    800081d0:	01100993          	li	s3,17
    800081d4:	00f487b3          	add	a5,s1,a5
    800081d8:	01b99993          	slli	s3,s3,0x1b
    800081dc:	06f9e063          	bltu	s3,a5,8000823c <kinit+0xa4>
    800081e0:	00005a97          	auipc	s5,0x5
    800081e4:	e20a8a93          	addi	s5,s5,-480 # 8000d000 <end>
    800081e8:	0754ec63          	bltu	s1,s5,80008260 <kinit+0xc8>
    800081ec:	0734fa63          	bgeu	s1,s3,80008260 <kinit+0xc8>
    800081f0:	00088a37          	lui	s4,0x88
    800081f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800081f8:	00004917          	auipc	s2,0x4
    800081fc:	b0890913          	addi	s2,s2,-1272 # 8000bd00 <kmem>
    80008200:	00ca1a13          	slli	s4,s4,0xc
    80008204:	0140006f          	j	80008218 <kinit+0x80>
    80008208:	000017b7          	lui	a5,0x1
    8000820c:	00f484b3          	add	s1,s1,a5
    80008210:	0554e863          	bltu	s1,s5,80008260 <kinit+0xc8>
    80008214:	0534f663          	bgeu	s1,s3,80008260 <kinit+0xc8>
    80008218:	00001637          	lui	a2,0x1
    8000821c:	00100593          	li	a1,1
    80008220:	00048513          	mv	a0,s1
    80008224:	00000097          	auipc	ra,0x0
    80008228:	5e4080e7          	jalr	1508(ra) # 80008808 <__memset>
    8000822c:	00093783          	ld	a5,0(s2)
    80008230:	00f4b023          	sd	a5,0(s1)
    80008234:	00993023          	sd	s1,0(s2)
    80008238:	fd4498e3          	bne	s1,s4,80008208 <kinit+0x70>
    8000823c:	03813083          	ld	ra,56(sp)
    80008240:	03013403          	ld	s0,48(sp)
    80008244:	02813483          	ld	s1,40(sp)
    80008248:	02013903          	ld	s2,32(sp)
    8000824c:	01813983          	ld	s3,24(sp)
    80008250:	01013a03          	ld	s4,16(sp)
    80008254:	00813a83          	ld	s5,8(sp)
    80008258:	04010113          	addi	sp,sp,64
    8000825c:	00008067          	ret
    80008260:	00001517          	auipc	a0,0x1
    80008264:	61050513          	addi	a0,a0,1552 # 80009870 <digits+0x18>
    80008268:	fffff097          	auipc	ra,0xfffff
    8000826c:	4b4080e7          	jalr	1204(ra) # 8000771c <panic>

0000000080008270 <freerange>:
    80008270:	fc010113          	addi	sp,sp,-64
    80008274:	000017b7          	lui	a5,0x1
    80008278:	02913423          	sd	s1,40(sp)
    8000827c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008280:	009504b3          	add	s1,a0,s1
    80008284:	fffff537          	lui	a0,0xfffff
    80008288:	02813823          	sd	s0,48(sp)
    8000828c:	02113c23          	sd	ra,56(sp)
    80008290:	03213023          	sd	s2,32(sp)
    80008294:	01313c23          	sd	s3,24(sp)
    80008298:	01413823          	sd	s4,16(sp)
    8000829c:	01513423          	sd	s5,8(sp)
    800082a0:	01613023          	sd	s6,0(sp)
    800082a4:	04010413          	addi	s0,sp,64
    800082a8:	00a4f4b3          	and	s1,s1,a0
    800082ac:	00f487b3          	add	a5,s1,a5
    800082b0:	06f5e463          	bltu	a1,a5,80008318 <freerange+0xa8>
    800082b4:	00005a97          	auipc	s5,0x5
    800082b8:	d4ca8a93          	addi	s5,s5,-692 # 8000d000 <end>
    800082bc:	0954e263          	bltu	s1,s5,80008340 <freerange+0xd0>
    800082c0:	01100993          	li	s3,17
    800082c4:	01b99993          	slli	s3,s3,0x1b
    800082c8:	0734fc63          	bgeu	s1,s3,80008340 <freerange+0xd0>
    800082cc:	00058a13          	mv	s4,a1
    800082d0:	00004917          	auipc	s2,0x4
    800082d4:	a3090913          	addi	s2,s2,-1488 # 8000bd00 <kmem>
    800082d8:	00002b37          	lui	s6,0x2
    800082dc:	0140006f          	j	800082f0 <freerange+0x80>
    800082e0:	000017b7          	lui	a5,0x1
    800082e4:	00f484b3          	add	s1,s1,a5
    800082e8:	0554ec63          	bltu	s1,s5,80008340 <freerange+0xd0>
    800082ec:	0534fa63          	bgeu	s1,s3,80008340 <freerange+0xd0>
    800082f0:	00001637          	lui	a2,0x1
    800082f4:	00100593          	li	a1,1
    800082f8:	00048513          	mv	a0,s1
    800082fc:	00000097          	auipc	ra,0x0
    80008300:	50c080e7          	jalr	1292(ra) # 80008808 <__memset>
    80008304:	00093703          	ld	a4,0(s2)
    80008308:	016487b3          	add	a5,s1,s6
    8000830c:	00e4b023          	sd	a4,0(s1)
    80008310:	00993023          	sd	s1,0(s2)
    80008314:	fcfa76e3          	bgeu	s4,a5,800082e0 <freerange+0x70>
    80008318:	03813083          	ld	ra,56(sp)
    8000831c:	03013403          	ld	s0,48(sp)
    80008320:	02813483          	ld	s1,40(sp)
    80008324:	02013903          	ld	s2,32(sp)
    80008328:	01813983          	ld	s3,24(sp)
    8000832c:	01013a03          	ld	s4,16(sp)
    80008330:	00813a83          	ld	s5,8(sp)
    80008334:	00013b03          	ld	s6,0(sp)
    80008338:	04010113          	addi	sp,sp,64
    8000833c:	00008067          	ret
    80008340:	00001517          	auipc	a0,0x1
    80008344:	53050513          	addi	a0,a0,1328 # 80009870 <digits+0x18>
    80008348:	fffff097          	auipc	ra,0xfffff
    8000834c:	3d4080e7          	jalr	980(ra) # 8000771c <panic>

0000000080008350 <kfree>:
    80008350:	fe010113          	addi	sp,sp,-32
    80008354:	00813823          	sd	s0,16(sp)
    80008358:	00113c23          	sd	ra,24(sp)
    8000835c:	00913423          	sd	s1,8(sp)
    80008360:	02010413          	addi	s0,sp,32
    80008364:	03451793          	slli	a5,a0,0x34
    80008368:	04079c63          	bnez	a5,800083c0 <kfree+0x70>
    8000836c:	00005797          	auipc	a5,0x5
    80008370:	c9478793          	addi	a5,a5,-876 # 8000d000 <end>
    80008374:	00050493          	mv	s1,a0
    80008378:	04f56463          	bltu	a0,a5,800083c0 <kfree+0x70>
    8000837c:	01100793          	li	a5,17
    80008380:	01b79793          	slli	a5,a5,0x1b
    80008384:	02f57e63          	bgeu	a0,a5,800083c0 <kfree+0x70>
    80008388:	00001637          	lui	a2,0x1
    8000838c:	00100593          	li	a1,1
    80008390:	00000097          	auipc	ra,0x0
    80008394:	478080e7          	jalr	1144(ra) # 80008808 <__memset>
    80008398:	00004797          	auipc	a5,0x4
    8000839c:	96878793          	addi	a5,a5,-1688 # 8000bd00 <kmem>
    800083a0:	0007b703          	ld	a4,0(a5)
    800083a4:	01813083          	ld	ra,24(sp)
    800083a8:	01013403          	ld	s0,16(sp)
    800083ac:	00e4b023          	sd	a4,0(s1)
    800083b0:	0097b023          	sd	s1,0(a5)
    800083b4:	00813483          	ld	s1,8(sp)
    800083b8:	02010113          	addi	sp,sp,32
    800083bc:	00008067          	ret
    800083c0:	00001517          	auipc	a0,0x1
    800083c4:	4b050513          	addi	a0,a0,1200 # 80009870 <digits+0x18>
    800083c8:	fffff097          	auipc	ra,0xfffff
    800083cc:	354080e7          	jalr	852(ra) # 8000771c <panic>

00000000800083d0 <kalloc>:
    800083d0:	fe010113          	addi	sp,sp,-32
    800083d4:	00813823          	sd	s0,16(sp)
    800083d8:	00913423          	sd	s1,8(sp)
    800083dc:	00113c23          	sd	ra,24(sp)
    800083e0:	02010413          	addi	s0,sp,32
    800083e4:	00004797          	auipc	a5,0x4
    800083e8:	91c78793          	addi	a5,a5,-1764 # 8000bd00 <kmem>
    800083ec:	0007b483          	ld	s1,0(a5)
    800083f0:	02048063          	beqz	s1,80008410 <kalloc+0x40>
    800083f4:	0004b703          	ld	a4,0(s1)
    800083f8:	00001637          	lui	a2,0x1
    800083fc:	00500593          	li	a1,5
    80008400:	00048513          	mv	a0,s1
    80008404:	00e7b023          	sd	a4,0(a5)
    80008408:	00000097          	auipc	ra,0x0
    8000840c:	400080e7          	jalr	1024(ra) # 80008808 <__memset>
    80008410:	01813083          	ld	ra,24(sp)
    80008414:	01013403          	ld	s0,16(sp)
    80008418:	00048513          	mv	a0,s1
    8000841c:	00813483          	ld	s1,8(sp)
    80008420:	02010113          	addi	sp,sp,32
    80008424:	00008067          	ret

0000000080008428 <initlock>:
    80008428:	ff010113          	addi	sp,sp,-16
    8000842c:	00813423          	sd	s0,8(sp)
    80008430:	01010413          	addi	s0,sp,16
    80008434:	00813403          	ld	s0,8(sp)
    80008438:	00b53423          	sd	a1,8(a0)
    8000843c:	00052023          	sw	zero,0(a0)
    80008440:	00053823          	sd	zero,16(a0)
    80008444:	01010113          	addi	sp,sp,16
    80008448:	00008067          	ret

000000008000844c <acquire>:
    8000844c:	fe010113          	addi	sp,sp,-32
    80008450:	00813823          	sd	s0,16(sp)
    80008454:	00913423          	sd	s1,8(sp)
    80008458:	00113c23          	sd	ra,24(sp)
    8000845c:	01213023          	sd	s2,0(sp)
    80008460:	02010413          	addi	s0,sp,32
    80008464:	00050493          	mv	s1,a0
    80008468:	10002973          	csrr	s2,sstatus
    8000846c:	100027f3          	csrr	a5,sstatus
    80008470:	ffd7f793          	andi	a5,a5,-3
    80008474:	10079073          	csrw	sstatus,a5
    80008478:	fffff097          	auipc	ra,0xfffff
    8000847c:	8e0080e7          	jalr	-1824(ra) # 80006d58 <mycpu>
    80008480:	07852783          	lw	a5,120(a0)
    80008484:	06078e63          	beqz	a5,80008500 <acquire+0xb4>
    80008488:	fffff097          	auipc	ra,0xfffff
    8000848c:	8d0080e7          	jalr	-1840(ra) # 80006d58 <mycpu>
    80008490:	07852783          	lw	a5,120(a0)
    80008494:	0004a703          	lw	a4,0(s1)
    80008498:	0017879b          	addiw	a5,a5,1
    8000849c:	06f52c23          	sw	a5,120(a0)
    800084a0:	04071063          	bnez	a4,800084e0 <acquire+0x94>
    800084a4:	00100713          	li	a4,1
    800084a8:	00070793          	mv	a5,a4
    800084ac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800084b0:	0007879b          	sext.w	a5,a5
    800084b4:	fe079ae3          	bnez	a5,800084a8 <acquire+0x5c>
    800084b8:	0ff0000f          	fence
    800084bc:	fffff097          	auipc	ra,0xfffff
    800084c0:	89c080e7          	jalr	-1892(ra) # 80006d58 <mycpu>
    800084c4:	01813083          	ld	ra,24(sp)
    800084c8:	01013403          	ld	s0,16(sp)
    800084cc:	00a4b823          	sd	a0,16(s1)
    800084d0:	00013903          	ld	s2,0(sp)
    800084d4:	00813483          	ld	s1,8(sp)
    800084d8:	02010113          	addi	sp,sp,32
    800084dc:	00008067          	ret
    800084e0:	0104b903          	ld	s2,16(s1)
    800084e4:	fffff097          	auipc	ra,0xfffff
    800084e8:	874080e7          	jalr	-1932(ra) # 80006d58 <mycpu>
    800084ec:	faa91ce3          	bne	s2,a0,800084a4 <acquire+0x58>
    800084f0:	00001517          	auipc	a0,0x1
    800084f4:	38850513          	addi	a0,a0,904 # 80009878 <digits+0x20>
    800084f8:	fffff097          	auipc	ra,0xfffff
    800084fc:	224080e7          	jalr	548(ra) # 8000771c <panic>
    80008500:	00195913          	srli	s2,s2,0x1
    80008504:	fffff097          	auipc	ra,0xfffff
    80008508:	854080e7          	jalr	-1964(ra) # 80006d58 <mycpu>
    8000850c:	00197913          	andi	s2,s2,1
    80008510:	07252e23          	sw	s2,124(a0)
    80008514:	f75ff06f          	j	80008488 <acquire+0x3c>

0000000080008518 <release>:
    80008518:	fe010113          	addi	sp,sp,-32
    8000851c:	00813823          	sd	s0,16(sp)
    80008520:	00113c23          	sd	ra,24(sp)
    80008524:	00913423          	sd	s1,8(sp)
    80008528:	01213023          	sd	s2,0(sp)
    8000852c:	02010413          	addi	s0,sp,32
    80008530:	00052783          	lw	a5,0(a0)
    80008534:	00079a63          	bnez	a5,80008548 <release+0x30>
    80008538:	00001517          	auipc	a0,0x1
    8000853c:	34850513          	addi	a0,a0,840 # 80009880 <digits+0x28>
    80008540:	fffff097          	auipc	ra,0xfffff
    80008544:	1dc080e7          	jalr	476(ra) # 8000771c <panic>
    80008548:	01053903          	ld	s2,16(a0)
    8000854c:	00050493          	mv	s1,a0
    80008550:	fffff097          	auipc	ra,0xfffff
    80008554:	808080e7          	jalr	-2040(ra) # 80006d58 <mycpu>
    80008558:	fea910e3          	bne	s2,a0,80008538 <release+0x20>
    8000855c:	0004b823          	sd	zero,16(s1)
    80008560:	0ff0000f          	fence
    80008564:	0f50000f          	fence	iorw,ow
    80008568:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000856c:	ffffe097          	auipc	ra,0xffffe
    80008570:	7ec080e7          	jalr	2028(ra) # 80006d58 <mycpu>
    80008574:	100027f3          	csrr	a5,sstatus
    80008578:	0027f793          	andi	a5,a5,2
    8000857c:	04079a63          	bnez	a5,800085d0 <release+0xb8>
    80008580:	07852783          	lw	a5,120(a0)
    80008584:	02f05e63          	blez	a5,800085c0 <release+0xa8>
    80008588:	fff7871b          	addiw	a4,a5,-1
    8000858c:	06e52c23          	sw	a4,120(a0)
    80008590:	00071c63          	bnez	a4,800085a8 <release+0x90>
    80008594:	07c52783          	lw	a5,124(a0)
    80008598:	00078863          	beqz	a5,800085a8 <release+0x90>
    8000859c:	100027f3          	csrr	a5,sstatus
    800085a0:	0027e793          	ori	a5,a5,2
    800085a4:	10079073          	csrw	sstatus,a5
    800085a8:	01813083          	ld	ra,24(sp)
    800085ac:	01013403          	ld	s0,16(sp)
    800085b0:	00813483          	ld	s1,8(sp)
    800085b4:	00013903          	ld	s2,0(sp)
    800085b8:	02010113          	addi	sp,sp,32
    800085bc:	00008067          	ret
    800085c0:	00001517          	auipc	a0,0x1
    800085c4:	2e050513          	addi	a0,a0,736 # 800098a0 <digits+0x48>
    800085c8:	fffff097          	auipc	ra,0xfffff
    800085cc:	154080e7          	jalr	340(ra) # 8000771c <panic>
    800085d0:	00001517          	auipc	a0,0x1
    800085d4:	2b850513          	addi	a0,a0,696 # 80009888 <digits+0x30>
    800085d8:	fffff097          	auipc	ra,0xfffff
    800085dc:	144080e7          	jalr	324(ra) # 8000771c <panic>

00000000800085e0 <holding>:
    800085e0:	00052783          	lw	a5,0(a0)
    800085e4:	00079663          	bnez	a5,800085f0 <holding+0x10>
    800085e8:	00000513          	li	a0,0
    800085ec:	00008067          	ret
    800085f0:	fe010113          	addi	sp,sp,-32
    800085f4:	00813823          	sd	s0,16(sp)
    800085f8:	00913423          	sd	s1,8(sp)
    800085fc:	00113c23          	sd	ra,24(sp)
    80008600:	02010413          	addi	s0,sp,32
    80008604:	01053483          	ld	s1,16(a0)
    80008608:	ffffe097          	auipc	ra,0xffffe
    8000860c:	750080e7          	jalr	1872(ra) # 80006d58 <mycpu>
    80008610:	01813083          	ld	ra,24(sp)
    80008614:	01013403          	ld	s0,16(sp)
    80008618:	40a48533          	sub	a0,s1,a0
    8000861c:	00153513          	seqz	a0,a0
    80008620:	00813483          	ld	s1,8(sp)
    80008624:	02010113          	addi	sp,sp,32
    80008628:	00008067          	ret

000000008000862c <push_off>:
    8000862c:	fe010113          	addi	sp,sp,-32
    80008630:	00813823          	sd	s0,16(sp)
    80008634:	00113c23          	sd	ra,24(sp)
    80008638:	00913423          	sd	s1,8(sp)
    8000863c:	02010413          	addi	s0,sp,32
    80008640:	100024f3          	csrr	s1,sstatus
    80008644:	100027f3          	csrr	a5,sstatus
    80008648:	ffd7f793          	andi	a5,a5,-3
    8000864c:	10079073          	csrw	sstatus,a5
    80008650:	ffffe097          	auipc	ra,0xffffe
    80008654:	708080e7          	jalr	1800(ra) # 80006d58 <mycpu>
    80008658:	07852783          	lw	a5,120(a0)
    8000865c:	02078663          	beqz	a5,80008688 <push_off+0x5c>
    80008660:	ffffe097          	auipc	ra,0xffffe
    80008664:	6f8080e7          	jalr	1784(ra) # 80006d58 <mycpu>
    80008668:	07852783          	lw	a5,120(a0)
    8000866c:	01813083          	ld	ra,24(sp)
    80008670:	01013403          	ld	s0,16(sp)
    80008674:	0017879b          	addiw	a5,a5,1
    80008678:	06f52c23          	sw	a5,120(a0)
    8000867c:	00813483          	ld	s1,8(sp)
    80008680:	02010113          	addi	sp,sp,32
    80008684:	00008067          	ret
    80008688:	0014d493          	srli	s1,s1,0x1
    8000868c:	ffffe097          	auipc	ra,0xffffe
    80008690:	6cc080e7          	jalr	1740(ra) # 80006d58 <mycpu>
    80008694:	0014f493          	andi	s1,s1,1
    80008698:	06952e23          	sw	s1,124(a0)
    8000869c:	fc5ff06f          	j	80008660 <push_off+0x34>

00000000800086a0 <pop_off>:
    800086a0:	ff010113          	addi	sp,sp,-16
    800086a4:	00813023          	sd	s0,0(sp)
    800086a8:	00113423          	sd	ra,8(sp)
    800086ac:	01010413          	addi	s0,sp,16
    800086b0:	ffffe097          	auipc	ra,0xffffe
    800086b4:	6a8080e7          	jalr	1704(ra) # 80006d58 <mycpu>
    800086b8:	100027f3          	csrr	a5,sstatus
    800086bc:	0027f793          	andi	a5,a5,2
    800086c0:	04079663          	bnez	a5,8000870c <pop_off+0x6c>
    800086c4:	07852783          	lw	a5,120(a0)
    800086c8:	02f05a63          	blez	a5,800086fc <pop_off+0x5c>
    800086cc:	fff7871b          	addiw	a4,a5,-1
    800086d0:	06e52c23          	sw	a4,120(a0)
    800086d4:	00071c63          	bnez	a4,800086ec <pop_off+0x4c>
    800086d8:	07c52783          	lw	a5,124(a0)
    800086dc:	00078863          	beqz	a5,800086ec <pop_off+0x4c>
    800086e0:	100027f3          	csrr	a5,sstatus
    800086e4:	0027e793          	ori	a5,a5,2
    800086e8:	10079073          	csrw	sstatus,a5
    800086ec:	00813083          	ld	ra,8(sp)
    800086f0:	00013403          	ld	s0,0(sp)
    800086f4:	01010113          	addi	sp,sp,16
    800086f8:	00008067          	ret
    800086fc:	00001517          	auipc	a0,0x1
    80008700:	1a450513          	addi	a0,a0,420 # 800098a0 <digits+0x48>
    80008704:	fffff097          	auipc	ra,0xfffff
    80008708:	018080e7          	jalr	24(ra) # 8000771c <panic>
    8000870c:	00001517          	auipc	a0,0x1
    80008710:	17c50513          	addi	a0,a0,380 # 80009888 <digits+0x30>
    80008714:	fffff097          	auipc	ra,0xfffff
    80008718:	008080e7          	jalr	8(ra) # 8000771c <panic>

000000008000871c <push_on>:
    8000871c:	fe010113          	addi	sp,sp,-32
    80008720:	00813823          	sd	s0,16(sp)
    80008724:	00113c23          	sd	ra,24(sp)
    80008728:	00913423          	sd	s1,8(sp)
    8000872c:	02010413          	addi	s0,sp,32
    80008730:	100024f3          	csrr	s1,sstatus
    80008734:	100027f3          	csrr	a5,sstatus
    80008738:	0027e793          	ori	a5,a5,2
    8000873c:	10079073          	csrw	sstatus,a5
    80008740:	ffffe097          	auipc	ra,0xffffe
    80008744:	618080e7          	jalr	1560(ra) # 80006d58 <mycpu>
    80008748:	07852783          	lw	a5,120(a0)
    8000874c:	02078663          	beqz	a5,80008778 <push_on+0x5c>
    80008750:	ffffe097          	auipc	ra,0xffffe
    80008754:	608080e7          	jalr	1544(ra) # 80006d58 <mycpu>
    80008758:	07852783          	lw	a5,120(a0)
    8000875c:	01813083          	ld	ra,24(sp)
    80008760:	01013403          	ld	s0,16(sp)
    80008764:	0017879b          	addiw	a5,a5,1
    80008768:	06f52c23          	sw	a5,120(a0)
    8000876c:	00813483          	ld	s1,8(sp)
    80008770:	02010113          	addi	sp,sp,32
    80008774:	00008067          	ret
    80008778:	0014d493          	srli	s1,s1,0x1
    8000877c:	ffffe097          	auipc	ra,0xffffe
    80008780:	5dc080e7          	jalr	1500(ra) # 80006d58 <mycpu>
    80008784:	0014f493          	andi	s1,s1,1
    80008788:	06952e23          	sw	s1,124(a0)
    8000878c:	fc5ff06f          	j	80008750 <push_on+0x34>

0000000080008790 <pop_on>:
    80008790:	ff010113          	addi	sp,sp,-16
    80008794:	00813023          	sd	s0,0(sp)
    80008798:	00113423          	sd	ra,8(sp)
    8000879c:	01010413          	addi	s0,sp,16
    800087a0:	ffffe097          	auipc	ra,0xffffe
    800087a4:	5b8080e7          	jalr	1464(ra) # 80006d58 <mycpu>
    800087a8:	100027f3          	csrr	a5,sstatus
    800087ac:	0027f793          	andi	a5,a5,2
    800087b0:	04078463          	beqz	a5,800087f8 <pop_on+0x68>
    800087b4:	07852783          	lw	a5,120(a0)
    800087b8:	02f05863          	blez	a5,800087e8 <pop_on+0x58>
    800087bc:	fff7879b          	addiw	a5,a5,-1
    800087c0:	06f52c23          	sw	a5,120(a0)
    800087c4:	07853783          	ld	a5,120(a0)
    800087c8:	00079863          	bnez	a5,800087d8 <pop_on+0x48>
    800087cc:	100027f3          	csrr	a5,sstatus
    800087d0:	ffd7f793          	andi	a5,a5,-3
    800087d4:	10079073          	csrw	sstatus,a5
    800087d8:	00813083          	ld	ra,8(sp)
    800087dc:	00013403          	ld	s0,0(sp)
    800087e0:	01010113          	addi	sp,sp,16
    800087e4:	00008067          	ret
    800087e8:	00001517          	auipc	a0,0x1
    800087ec:	0e050513          	addi	a0,a0,224 # 800098c8 <digits+0x70>
    800087f0:	fffff097          	auipc	ra,0xfffff
    800087f4:	f2c080e7          	jalr	-212(ra) # 8000771c <panic>
    800087f8:	00001517          	auipc	a0,0x1
    800087fc:	0b050513          	addi	a0,a0,176 # 800098a8 <digits+0x50>
    80008800:	fffff097          	auipc	ra,0xfffff
    80008804:	f1c080e7          	jalr	-228(ra) # 8000771c <panic>

0000000080008808 <__memset>:
    80008808:	ff010113          	addi	sp,sp,-16
    8000880c:	00813423          	sd	s0,8(sp)
    80008810:	01010413          	addi	s0,sp,16
    80008814:	1a060e63          	beqz	a2,800089d0 <__memset+0x1c8>
    80008818:	40a007b3          	neg	a5,a0
    8000881c:	0077f793          	andi	a5,a5,7
    80008820:	00778693          	addi	a3,a5,7
    80008824:	00b00813          	li	a6,11
    80008828:	0ff5f593          	andi	a1,a1,255
    8000882c:	fff6071b          	addiw	a4,a2,-1
    80008830:	1b06e663          	bltu	a3,a6,800089dc <__memset+0x1d4>
    80008834:	1cd76463          	bltu	a4,a3,800089fc <__memset+0x1f4>
    80008838:	1a078e63          	beqz	a5,800089f4 <__memset+0x1ec>
    8000883c:	00b50023          	sb	a1,0(a0)
    80008840:	00100713          	li	a4,1
    80008844:	1ae78463          	beq	a5,a4,800089ec <__memset+0x1e4>
    80008848:	00b500a3          	sb	a1,1(a0)
    8000884c:	00200713          	li	a4,2
    80008850:	1ae78a63          	beq	a5,a4,80008a04 <__memset+0x1fc>
    80008854:	00b50123          	sb	a1,2(a0)
    80008858:	00300713          	li	a4,3
    8000885c:	18e78463          	beq	a5,a4,800089e4 <__memset+0x1dc>
    80008860:	00b501a3          	sb	a1,3(a0)
    80008864:	00400713          	li	a4,4
    80008868:	1ae78263          	beq	a5,a4,80008a0c <__memset+0x204>
    8000886c:	00b50223          	sb	a1,4(a0)
    80008870:	00500713          	li	a4,5
    80008874:	1ae78063          	beq	a5,a4,80008a14 <__memset+0x20c>
    80008878:	00b502a3          	sb	a1,5(a0)
    8000887c:	00700713          	li	a4,7
    80008880:	18e79e63          	bne	a5,a4,80008a1c <__memset+0x214>
    80008884:	00b50323          	sb	a1,6(a0)
    80008888:	00700e93          	li	t4,7
    8000888c:	00859713          	slli	a4,a1,0x8
    80008890:	00e5e733          	or	a4,a1,a4
    80008894:	01059e13          	slli	t3,a1,0x10
    80008898:	01c76e33          	or	t3,a4,t3
    8000889c:	01859313          	slli	t1,a1,0x18
    800088a0:	006e6333          	or	t1,t3,t1
    800088a4:	02059893          	slli	a7,a1,0x20
    800088a8:	40f60e3b          	subw	t3,a2,a5
    800088ac:	011368b3          	or	a7,t1,a7
    800088b0:	02859813          	slli	a6,a1,0x28
    800088b4:	0108e833          	or	a6,a7,a6
    800088b8:	03059693          	slli	a3,a1,0x30
    800088bc:	003e589b          	srliw	a7,t3,0x3
    800088c0:	00d866b3          	or	a3,a6,a3
    800088c4:	03859713          	slli	a4,a1,0x38
    800088c8:	00389813          	slli	a6,a7,0x3
    800088cc:	00f507b3          	add	a5,a0,a5
    800088d0:	00e6e733          	or	a4,a3,a4
    800088d4:	000e089b          	sext.w	a7,t3
    800088d8:	00f806b3          	add	a3,a6,a5
    800088dc:	00e7b023          	sd	a4,0(a5)
    800088e0:	00878793          	addi	a5,a5,8
    800088e4:	fed79ce3          	bne	a5,a3,800088dc <__memset+0xd4>
    800088e8:	ff8e7793          	andi	a5,t3,-8
    800088ec:	0007871b          	sext.w	a4,a5
    800088f0:	01d787bb          	addw	a5,a5,t4
    800088f4:	0ce88e63          	beq	a7,a4,800089d0 <__memset+0x1c8>
    800088f8:	00f50733          	add	a4,a0,a5
    800088fc:	00b70023          	sb	a1,0(a4)
    80008900:	0017871b          	addiw	a4,a5,1
    80008904:	0cc77663          	bgeu	a4,a2,800089d0 <__memset+0x1c8>
    80008908:	00e50733          	add	a4,a0,a4
    8000890c:	00b70023          	sb	a1,0(a4)
    80008910:	0027871b          	addiw	a4,a5,2
    80008914:	0ac77e63          	bgeu	a4,a2,800089d0 <__memset+0x1c8>
    80008918:	00e50733          	add	a4,a0,a4
    8000891c:	00b70023          	sb	a1,0(a4)
    80008920:	0037871b          	addiw	a4,a5,3
    80008924:	0ac77663          	bgeu	a4,a2,800089d0 <__memset+0x1c8>
    80008928:	00e50733          	add	a4,a0,a4
    8000892c:	00b70023          	sb	a1,0(a4)
    80008930:	0047871b          	addiw	a4,a5,4
    80008934:	08c77e63          	bgeu	a4,a2,800089d0 <__memset+0x1c8>
    80008938:	00e50733          	add	a4,a0,a4
    8000893c:	00b70023          	sb	a1,0(a4)
    80008940:	0057871b          	addiw	a4,a5,5
    80008944:	08c77663          	bgeu	a4,a2,800089d0 <__memset+0x1c8>
    80008948:	00e50733          	add	a4,a0,a4
    8000894c:	00b70023          	sb	a1,0(a4)
    80008950:	0067871b          	addiw	a4,a5,6
    80008954:	06c77e63          	bgeu	a4,a2,800089d0 <__memset+0x1c8>
    80008958:	00e50733          	add	a4,a0,a4
    8000895c:	00b70023          	sb	a1,0(a4)
    80008960:	0077871b          	addiw	a4,a5,7
    80008964:	06c77663          	bgeu	a4,a2,800089d0 <__memset+0x1c8>
    80008968:	00e50733          	add	a4,a0,a4
    8000896c:	00b70023          	sb	a1,0(a4)
    80008970:	0087871b          	addiw	a4,a5,8
    80008974:	04c77e63          	bgeu	a4,a2,800089d0 <__memset+0x1c8>
    80008978:	00e50733          	add	a4,a0,a4
    8000897c:	00b70023          	sb	a1,0(a4)
    80008980:	0097871b          	addiw	a4,a5,9
    80008984:	04c77663          	bgeu	a4,a2,800089d0 <__memset+0x1c8>
    80008988:	00e50733          	add	a4,a0,a4
    8000898c:	00b70023          	sb	a1,0(a4)
    80008990:	00a7871b          	addiw	a4,a5,10
    80008994:	02c77e63          	bgeu	a4,a2,800089d0 <__memset+0x1c8>
    80008998:	00e50733          	add	a4,a0,a4
    8000899c:	00b70023          	sb	a1,0(a4)
    800089a0:	00b7871b          	addiw	a4,a5,11
    800089a4:	02c77663          	bgeu	a4,a2,800089d0 <__memset+0x1c8>
    800089a8:	00e50733          	add	a4,a0,a4
    800089ac:	00b70023          	sb	a1,0(a4)
    800089b0:	00c7871b          	addiw	a4,a5,12
    800089b4:	00c77e63          	bgeu	a4,a2,800089d0 <__memset+0x1c8>
    800089b8:	00e50733          	add	a4,a0,a4
    800089bc:	00b70023          	sb	a1,0(a4)
    800089c0:	00d7879b          	addiw	a5,a5,13
    800089c4:	00c7f663          	bgeu	a5,a2,800089d0 <__memset+0x1c8>
    800089c8:	00f507b3          	add	a5,a0,a5
    800089cc:	00b78023          	sb	a1,0(a5)
    800089d0:	00813403          	ld	s0,8(sp)
    800089d4:	01010113          	addi	sp,sp,16
    800089d8:	00008067          	ret
    800089dc:	00b00693          	li	a3,11
    800089e0:	e55ff06f          	j	80008834 <__memset+0x2c>
    800089e4:	00300e93          	li	t4,3
    800089e8:	ea5ff06f          	j	8000888c <__memset+0x84>
    800089ec:	00100e93          	li	t4,1
    800089f0:	e9dff06f          	j	8000888c <__memset+0x84>
    800089f4:	00000e93          	li	t4,0
    800089f8:	e95ff06f          	j	8000888c <__memset+0x84>
    800089fc:	00000793          	li	a5,0
    80008a00:	ef9ff06f          	j	800088f8 <__memset+0xf0>
    80008a04:	00200e93          	li	t4,2
    80008a08:	e85ff06f          	j	8000888c <__memset+0x84>
    80008a0c:	00400e93          	li	t4,4
    80008a10:	e7dff06f          	j	8000888c <__memset+0x84>
    80008a14:	00500e93          	li	t4,5
    80008a18:	e75ff06f          	j	8000888c <__memset+0x84>
    80008a1c:	00600e93          	li	t4,6
    80008a20:	e6dff06f          	j	8000888c <__memset+0x84>

0000000080008a24 <__memmove>:
    80008a24:	ff010113          	addi	sp,sp,-16
    80008a28:	00813423          	sd	s0,8(sp)
    80008a2c:	01010413          	addi	s0,sp,16
    80008a30:	0e060863          	beqz	a2,80008b20 <__memmove+0xfc>
    80008a34:	fff6069b          	addiw	a3,a2,-1
    80008a38:	0006881b          	sext.w	a6,a3
    80008a3c:	0ea5e863          	bltu	a1,a0,80008b2c <__memmove+0x108>
    80008a40:	00758713          	addi	a4,a1,7
    80008a44:	00a5e7b3          	or	a5,a1,a0
    80008a48:	40a70733          	sub	a4,a4,a0
    80008a4c:	0077f793          	andi	a5,a5,7
    80008a50:	00f73713          	sltiu	a4,a4,15
    80008a54:	00174713          	xori	a4,a4,1
    80008a58:	0017b793          	seqz	a5,a5
    80008a5c:	00e7f7b3          	and	a5,a5,a4
    80008a60:	10078863          	beqz	a5,80008b70 <__memmove+0x14c>
    80008a64:	00900793          	li	a5,9
    80008a68:	1107f463          	bgeu	a5,a6,80008b70 <__memmove+0x14c>
    80008a6c:	0036581b          	srliw	a6,a2,0x3
    80008a70:	fff8081b          	addiw	a6,a6,-1
    80008a74:	02081813          	slli	a6,a6,0x20
    80008a78:	01d85893          	srli	a7,a6,0x1d
    80008a7c:	00858813          	addi	a6,a1,8
    80008a80:	00058793          	mv	a5,a1
    80008a84:	00050713          	mv	a4,a0
    80008a88:	01088833          	add	a6,a7,a6
    80008a8c:	0007b883          	ld	a7,0(a5)
    80008a90:	00878793          	addi	a5,a5,8
    80008a94:	00870713          	addi	a4,a4,8
    80008a98:	ff173c23          	sd	a7,-8(a4)
    80008a9c:	ff0798e3          	bne	a5,a6,80008a8c <__memmove+0x68>
    80008aa0:	ff867713          	andi	a4,a2,-8
    80008aa4:	02071793          	slli	a5,a4,0x20
    80008aa8:	0207d793          	srli	a5,a5,0x20
    80008aac:	00f585b3          	add	a1,a1,a5
    80008ab0:	40e686bb          	subw	a3,a3,a4
    80008ab4:	00f507b3          	add	a5,a0,a5
    80008ab8:	06e60463          	beq	a2,a4,80008b20 <__memmove+0xfc>
    80008abc:	0005c703          	lbu	a4,0(a1)
    80008ac0:	00e78023          	sb	a4,0(a5)
    80008ac4:	04068e63          	beqz	a3,80008b20 <__memmove+0xfc>
    80008ac8:	0015c603          	lbu	a2,1(a1)
    80008acc:	00100713          	li	a4,1
    80008ad0:	00c780a3          	sb	a2,1(a5)
    80008ad4:	04e68663          	beq	a3,a4,80008b20 <__memmove+0xfc>
    80008ad8:	0025c603          	lbu	a2,2(a1)
    80008adc:	00200713          	li	a4,2
    80008ae0:	00c78123          	sb	a2,2(a5)
    80008ae4:	02e68e63          	beq	a3,a4,80008b20 <__memmove+0xfc>
    80008ae8:	0035c603          	lbu	a2,3(a1)
    80008aec:	00300713          	li	a4,3
    80008af0:	00c781a3          	sb	a2,3(a5)
    80008af4:	02e68663          	beq	a3,a4,80008b20 <__memmove+0xfc>
    80008af8:	0045c603          	lbu	a2,4(a1)
    80008afc:	00400713          	li	a4,4
    80008b00:	00c78223          	sb	a2,4(a5)
    80008b04:	00e68e63          	beq	a3,a4,80008b20 <__memmove+0xfc>
    80008b08:	0055c603          	lbu	a2,5(a1)
    80008b0c:	00500713          	li	a4,5
    80008b10:	00c782a3          	sb	a2,5(a5)
    80008b14:	00e68663          	beq	a3,a4,80008b20 <__memmove+0xfc>
    80008b18:	0065c703          	lbu	a4,6(a1)
    80008b1c:	00e78323          	sb	a4,6(a5)
    80008b20:	00813403          	ld	s0,8(sp)
    80008b24:	01010113          	addi	sp,sp,16
    80008b28:	00008067          	ret
    80008b2c:	02061713          	slli	a4,a2,0x20
    80008b30:	02075713          	srli	a4,a4,0x20
    80008b34:	00e587b3          	add	a5,a1,a4
    80008b38:	f0f574e3          	bgeu	a0,a5,80008a40 <__memmove+0x1c>
    80008b3c:	02069613          	slli	a2,a3,0x20
    80008b40:	02065613          	srli	a2,a2,0x20
    80008b44:	fff64613          	not	a2,a2
    80008b48:	00e50733          	add	a4,a0,a4
    80008b4c:	00c78633          	add	a2,a5,a2
    80008b50:	fff7c683          	lbu	a3,-1(a5)
    80008b54:	fff78793          	addi	a5,a5,-1
    80008b58:	fff70713          	addi	a4,a4,-1
    80008b5c:	00d70023          	sb	a3,0(a4)
    80008b60:	fec798e3          	bne	a5,a2,80008b50 <__memmove+0x12c>
    80008b64:	00813403          	ld	s0,8(sp)
    80008b68:	01010113          	addi	sp,sp,16
    80008b6c:	00008067          	ret
    80008b70:	02069713          	slli	a4,a3,0x20
    80008b74:	02075713          	srli	a4,a4,0x20
    80008b78:	00170713          	addi	a4,a4,1
    80008b7c:	00e50733          	add	a4,a0,a4
    80008b80:	00050793          	mv	a5,a0
    80008b84:	0005c683          	lbu	a3,0(a1)
    80008b88:	00178793          	addi	a5,a5,1
    80008b8c:	00158593          	addi	a1,a1,1
    80008b90:	fed78fa3          	sb	a3,-1(a5)
    80008b94:	fee798e3          	bne	a5,a4,80008b84 <__memmove+0x160>
    80008b98:	f89ff06f          	j	80008b20 <__memmove+0xfc>

0000000080008b9c <__putc>:
    80008b9c:	fe010113          	addi	sp,sp,-32
    80008ba0:	00813823          	sd	s0,16(sp)
    80008ba4:	00113c23          	sd	ra,24(sp)
    80008ba8:	02010413          	addi	s0,sp,32
    80008bac:	00050793          	mv	a5,a0
    80008bb0:	fef40593          	addi	a1,s0,-17
    80008bb4:	00100613          	li	a2,1
    80008bb8:	00000513          	li	a0,0
    80008bbc:	fef407a3          	sb	a5,-17(s0)
    80008bc0:	fffff097          	auipc	ra,0xfffff
    80008bc4:	b3c080e7          	jalr	-1220(ra) # 800076fc <console_write>
    80008bc8:	01813083          	ld	ra,24(sp)
    80008bcc:	01013403          	ld	s0,16(sp)
    80008bd0:	02010113          	addi	sp,sp,32
    80008bd4:	00008067          	ret

0000000080008bd8 <__getc>:
    80008bd8:	fe010113          	addi	sp,sp,-32
    80008bdc:	00813823          	sd	s0,16(sp)
    80008be0:	00113c23          	sd	ra,24(sp)
    80008be4:	02010413          	addi	s0,sp,32
    80008be8:	fe840593          	addi	a1,s0,-24
    80008bec:	00100613          	li	a2,1
    80008bf0:	00000513          	li	a0,0
    80008bf4:	fffff097          	auipc	ra,0xfffff
    80008bf8:	ae8080e7          	jalr	-1304(ra) # 800076dc <console_read>
    80008bfc:	fe844503          	lbu	a0,-24(s0)
    80008c00:	01813083          	ld	ra,24(sp)
    80008c04:	01013403          	ld	s0,16(sp)
    80008c08:	02010113          	addi	sp,sp,32
    80008c0c:	00008067          	ret

0000000080008c10 <console_handler>:
    80008c10:	fe010113          	addi	sp,sp,-32
    80008c14:	00813823          	sd	s0,16(sp)
    80008c18:	00113c23          	sd	ra,24(sp)
    80008c1c:	00913423          	sd	s1,8(sp)
    80008c20:	02010413          	addi	s0,sp,32
    80008c24:	14202773          	csrr	a4,scause
    80008c28:	100027f3          	csrr	a5,sstatus
    80008c2c:	0027f793          	andi	a5,a5,2
    80008c30:	06079e63          	bnez	a5,80008cac <console_handler+0x9c>
    80008c34:	00074c63          	bltz	a4,80008c4c <console_handler+0x3c>
    80008c38:	01813083          	ld	ra,24(sp)
    80008c3c:	01013403          	ld	s0,16(sp)
    80008c40:	00813483          	ld	s1,8(sp)
    80008c44:	02010113          	addi	sp,sp,32
    80008c48:	00008067          	ret
    80008c4c:	0ff77713          	andi	a4,a4,255
    80008c50:	00900793          	li	a5,9
    80008c54:	fef712e3          	bne	a4,a5,80008c38 <console_handler+0x28>
    80008c58:	ffffe097          	auipc	ra,0xffffe
    80008c5c:	6dc080e7          	jalr	1756(ra) # 80007334 <plic_claim>
    80008c60:	00a00793          	li	a5,10
    80008c64:	00050493          	mv	s1,a0
    80008c68:	02f50c63          	beq	a0,a5,80008ca0 <console_handler+0x90>
    80008c6c:	fc0506e3          	beqz	a0,80008c38 <console_handler+0x28>
    80008c70:	00050593          	mv	a1,a0
    80008c74:	00001517          	auipc	a0,0x1
    80008c78:	b5c50513          	addi	a0,a0,-1188 # 800097d0 <CONSOLE_STATUS+0x7c0>
    80008c7c:	fffff097          	auipc	ra,0xfffff
    80008c80:	afc080e7          	jalr	-1284(ra) # 80007778 <__printf>
    80008c84:	01013403          	ld	s0,16(sp)
    80008c88:	01813083          	ld	ra,24(sp)
    80008c8c:	00048513          	mv	a0,s1
    80008c90:	00813483          	ld	s1,8(sp)
    80008c94:	02010113          	addi	sp,sp,32
    80008c98:	ffffe317          	auipc	t1,0xffffe
    80008c9c:	6d430067          	jr	1748(t1) # 8000736c <plic_complete>
    80008ca0:	fffff097          	auipc	ra,0xfffff
    80008ca4:	3e0080e7          	jalr	992(ra) # 80008080 <uartintr>
    80008ca8:	fddff06f          	j	80008c84 <console_handler+0x74>
    80008cac:	00001517          	auipc	a0,0x1
    80008cb0:	c2450513          	addi	a0,a0,-988 # 800098d0 <digits+0x78>
    80008cb4:	fffff097          	auipc	ra,0xfffff
    80008cb8:	a68080e7          	jalr	-1432(ra) # 8000771c <panic>
	...
