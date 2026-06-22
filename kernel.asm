
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	d8013103          	ld	sp,-640(sp) # 8000bd80 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	445060ef          	jal	ra,80006c60 <start>

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
    80001090:	2ad000ef          	jal	ra,80001b3c <handleSupervisorTrap>

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

00000000800013c4 <_Z11thread_pairP7_threadS0_>:
int thread_pair(thread_t t1, thread_t t2) {
    800013c4:	ff010113          	addi	sp,sp,-16
    800013c8:	00113423          	sd	ra,8(sp)
    800013cc:	00813023          	sd	s0,0(sp)
    800013d0:	01010413          	addi	s0,sp,16
    800013d4:	00058613          	mv	a2,a1
    return (int)doSyscall(0x16, (uint64)t1, (uint64)t2);
    800013d8:	00000713          	li	a4,0
    800013dc:	00000693          	li	a3,0
    800013e0:	00050593          	mv	a1,a0
    800013e4:	01600513          	li	a0,22
    800013e8:	00000097          	auipc	ra,0x0
    800013ec:	ddc080e7          	jalr	-548(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800013f0:	0005051b          	sext.w	a0,a0
    800013f4:	00813083          	ld	ra,8(sp)
    800013f8:	00013403          	ld	s0,0(sp)
    800013fc:	01010113          	addi	sp,sp,16
    80001400:	00008067          	ret

0000000080001404 <_Z11thread_syncv>:

int thread_sync() {
    80001404:	ff010113          	addi	sp,sp,-16
    80001408:	00113423          	sd	ra,8(sp)
    8000140c:	00813023          	sd	s0,0(sp)
    80001410:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x17);
    80001414:	00000713          	li	a4,0
    80001418:	00000693          	li	a3,0
    8000141c:	00000613          	li	a2,0
    80001420:	00000593          	li	a1,0
    80001424:	01700513          	li	a0,23
    80001428:	00000097          	auipc	ra,0x0
    8000142c:	d9c080e7          	jalr	-612(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001430:	0005051b          	sext.w	a0,a0
    80001434:	00813083          	ld	ra,8(sp)
    80001438:	00013403          	ld	s0,0(sp)
    8000143c:	01010113          	addi	sp,sp,16
    80001440:	00008067          	ret

0000000080001444 <_Z11getThreadIdv>:
int getThreadId() {
    80001444:	ff010113          	addi	sp,sp,-16
    80001448:	00113423          	sd	ra,8(sp)
    8000144c:	00813023          	sd	s0,0(sp)
    80001450:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x14);
    80001454:	00000713          	li	a4,0
    80001458:	00000693          	li	a3,0
    8000145c:	00000613          	li	a2,0
    80001460:	00000593          	li	a1,0
    80001464:	01400513          	li	a0,20
    80001468:	00000097          	auipc	ra,0x0
    8000146c:	d5c080e7          	jalr	-676(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001470:	0005051b          	sext.w	a0,a0
    80001474:	00813083          	ld	ra,8(sp)
    80001478:	00013403          	ld	s0,0(sp)
    8000147c:	01010113          	addi	sp,sp,16
    80001480:	00008067          	ret

0000000080001484 <_Z8sem_openPP4_semj>:
int sem_open(sem_t* handle, unsigned init) {
    80001484:	ff010113          	addi	sp,sp,-16
    80001488:	00113423          	sd	ra,8(sp)
    8000148c:	00813023          	sd	s0,0(sp)
    80001490:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x21, (uint64)handle, (uint64)init);
    80001494:	00000713          	li	a4,0
    80001498:	00000693          	li	a3,0
    8000149c:	02059613          	slli	a2,a1,0x20
    800014a0:	02065613          	srli	a2,a2,0x20
    800014a4:	00050593          	mv	a1,a0
    800014a8:	02100513          	li	a0,33
    800014ac:	00000097          	auipc	ra,0x0
    800014b0:	d18080e7          	jalr	-744(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800014b4:	0005051b          	sext.w	a0,a0
    800014b8:	00813083          	ld	ra,8(sp)
    800014bc:	00013403          	ld	s0,0(sp)
    800014c0:	01010113          	addi	sp,sp,16
    800014c4:	00008067          	ret

00000000800014c8 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    800014c8:	ff010113          	addi	sp,sp,-16
    800014cc:	00113423          	sd	ra,8(sp)
    800014d0:	00813023          	sd	s0,0(sp)
    800014d4:	01010413          	addi	s0,sp,16
    800014d8:	00050593          	mv	a1,a0
    return (int)doSyscall(0x22, (uint64)handle);
    800014dc:	00000713          	li	a4,0
    800014e0:	00000693          	li	a3,0
    800014e4:	00000613          	li	a2,0
    800014e8:	02200513          	li	a0,34
    800014ec:	00000097          	auipc	ra,0x0
    800014f0:	cd8080e7          	jalr	-808(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800014f4:	0005051b          	sext.w	a0,a0
    800014f8:	00813083          	ld	ra,8(sp)
    800014fc:	00013403          	ld	s0,0(sp)
    80001500:	01010113          	addi	sp,sp,16
    80001504:	00008067          	ret

0000000080001508 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    80001508:	ff010113          	addi	sp,sp,-16
    8000150c:	00113423          	sd	ra,8(sp)
    80001510:	00813023          	sd	s0,0(sp)
    80001514:	01010413          	addi	s0,sp,16
    80001518:	00050593          	mv	a1,a0
    return (int)doSyscall(0x23, (uint64)id);
    8000151c:	00000713          	li	a4,0
    80001520:	00000693          	li	a3,0
    80001524:	00000613          	li	a2,0
    80001528:	02300513          	li	a0,35
    8000152c:	00000097          	auipc	ra,0x0
    80001530:	c98080e7          	jalr	-872(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001534:	0005051b          	sext.w	a0,a0
    80001538:	00813083          	ld	ra,8(sp)
    8000153c:	00013403          	ld	s0,0(sp)
    80001540:	01010113          	addi	sp,sp,16
    80001544:	00008067          	ret

0000000080001548 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    80001548:	ff010113          	addi	sp,sp,-16
    8000154c:	00113423          	sd	ra,8(sp)
    80001550:	00813023          	sd	s0,0(sp)
    80001554:	01010413          	addi	s0,sp,16
    80001558:	00050593          	mv	a1,a0
    return (int)doSyscall(0x24, (uint64)id);
    8000155c:	00000713          	li	a4,0
    80001560:	00000693          	li	a3,0
    80001564:	00000613          	li	a2,0
    80001568:	02400513          	li	a0,36
    8000156c:	00000097          	auipc	ra,0x0
    80001570:	c58080e7          	jalr	-936(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001574:	0005051b          	sext.w	a0,a0
    80001578:	00813083          	ld	ra,8(sp)
    8000157c:	00013403          	ld	s0,0(sp)
    80001580:	01010113          	addi	sp,sp,16
    80001584:	00008067          	ret

0000000080001588 <_Z10sem_wait_nP4_semj>:

int sem_wait_n(sem_t id, unsigned n) {
    80001588:	ff010113          	addi	sp,sp,-16
    8000158c:	00113423          	sd	ra,8(sp)
    80001590:	00813023          	sd	s0,0(sp)
    80001594:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x25, (uint64)id, (uint64)n);
    80001598:	00000713          	li	a4,0
    8000159c:	00000693          	li	a3,0
    800015a0:	02059613          	slli	a2,a1,0x20
    800015a4:	02065613          	srli	a2,a2,0x20
    800015a8:	00050593          	mv	a1,a0
    800015ac:	02500513          	li	a0,37
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	c14080e7          	jalr	-1004(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800015b8:	0005051b          	sext.w	a0,a0
    800015bc:	00813083          	ld	ra,8(sp)
    800015c0:	00013403          	ld	s0,0(sp)
    800015c4:	01010113          	addi	sp,sp,16
    800015c8:	00008067          	ret

00000000800015cc <_Z12sem_signal_nP4_semj>:

int sem_signal_n(sem_t id, unsigned n) {
    800015cc:	ff010113          	addi	sp,sp,-16
    800015d0:	00113423          	sd	ra,8(sp)
    800015d4:	00813023          	sd	s0,0(sp)
    800015d8:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x26, (uint64)id, (uint64)n);
    800015dc:	00000713          	li	a4,0
    800015e0:	00000693          	li	a3,0
    800015e4:	02059613          	slli	a2,a1,0x20
    800015e8:	02065613          	srli	a2,a2,0x20
    800015ec:	00050593          	mv	a1,a0
    800015f0:	02600513          	li	a0,38
    800015f4:	00000097          	auipc	ra,0x0
    800015f8:	bd0080e7          	jalr	-1072(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800015fc:	0005051b          	sext.w	a0,a0
    80001600:	00813083          	ld	ra,8(sp)
    80001604:	00013403          	ld	s0,0(sp)
    80001608:	01010113          	addi	sp,sp,16
    8000160c:	00008067          	ret

0000000080001610 <_Z10time_sleepm>:
int time_sleep(time_t time) {
    80001610:	ff010113          	addi	sp,sp,-16
    80001614:	00113423          	sd	ra,8(sp)
    80001618:	00813023          	sd	s0,0(sp)
    8000161c:	01010413          	addi	s0,sp,16
    80001620:	00050593          	mv	a1,a0
    return (int)doSyscall(0x31, (uint64)time);
    80001624:	00000713          	li	a4,0
    80001628:	00000693          	li	a3,0
    8000162c:	00000613          	li	a2,0
    80001630:	03100513          	li	a0,49
    80001634:	00000097          	auipc	ra,0x0
    80001638:	b90080e7          	jalr	-1136(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    8000163c:	0005051b          	sext.w	a0,a0
    80001640:	00813083          	ld	ra,8(sp)
    80001644:	00013403          	ld	s0,0(sp)
    80001648:	01010113          	addi	sp,sp,16
    8000164c:	00008067          	ret

0000000080001650 <_Z4getcv>:

char getc() {
    80001650:	ff010113          	addi	sp,sp,-16
    80001654:	00113423          	sd	ra,8(sp)
    80001658:	00813023          	sd	s0,0(sp)
    8000165c:	01010413          	addi	s0,sp,16
    return (char)doSyscall(0x41);
    80001660:	00000713          	li	a4,0
    80001664:	00000693          	li	a3,0
    80001668:	00000613          	li	a2,0
    8000166c:	00000593          	li	a1,0
    80001670:	04100513          	li	a0,65
    80001674:	00000097          	auipc	ra,0x0
    80001678:	b50080e7          	jalr	-1200(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    8000167c:	0ff57513          	andi	a0,a0,255
    80001680:	00813083          	ld	ra,8(sp)
    80001684:	00013403          	ld	s0,0(sp)
    80001688:	01010113          	addi	sp,sp,16
    8000168c:	00008067          	ret

0000000080001690 <_Z4putcc>:

void putc(char c) {
    80001690:	ff010113          	addi	sp,sp,-16
    80001694:	00113423          	sd	ra,8(sp)
    80001698:	00813023          	sd	s0,0(sp)
    8000169c:	01010413          	addi	s0,sp,16
    800016a0:	00050593          	mv	a1,a0
    doSyscall(0x42, (uint64)c);
    800016a4:	00000713          	li	a4,0
    800016a8:	00000693          	li	a3,0
    800016ac:	00000613          	li	a2,0
    800016b0:	04200513          	li	a0,66
    800016b4:	00000097          	auipc	ra,0x0
    800016b8:	b10080e7          	jalr	-1264(ra) # 800011c4 <_ZL9doSyscallmmmmm>
    800016bc:	00813083          	ld	ra,8(sp)
    800016c0:	00013403          	ld	s0,0(sp)
    800016c4:	01010113          	addi	sp,sp,16
    800016c8:	00008067          	ret

00000000800016cc <_ZL23blocksForBytesSemaphorem>:
#include "../h/Semaphore.hpp"
#include "../h/Thread.hpp"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"

static size_t blocksForBytesSemaphore(size_t bytes) {
    800016cc:	ff010113          	addi	sp,sp,-16
    800016d0:	00813423          	sd	s0,8(sp)
    800016d4:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    800016d8:	03f50513          	addi	a0,a0,63 # 103f <_entry-0x7fffefc1>
}
    800016dc:	00655513          	srli	a0,a0,0x6
    800016e0:	00813403          	ld	s0,8(sp)
    800016e4:	01010113          	addi	sp,sp,16
    800016e8:	00008067          	ret

00000000800016ec <_ZN4_semnwEm>:

void* _sem::operator new(size_t size) {
    800016ec:	fe010113          	addi	sp,sp,-32
    800016f0:	00113c23          	sd	ra,24(sp)
    800016f4:	00813823          	sd	s0,16(sp)
    800016f8:	00913423          	sd	s1,8(sp)
    800016fc:	01213023          	sd	s2,0(sp)
    80001700:	02010413          	addi	s0,sp,32
    80001704:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytesSemaphore(size));
    80001708:	00001097          	auipc	ra,0x1
    8000170c:	6c8080e7          	jalr	1736(ra) # 80002dd0 <_ZN15MemoryAllocator11getInstanceEv>
    80001710:	00050493          	mv	s1,a0
    80001714:	00090513          	mv	a0,s2
    80001718:	00000097          	auipc	ra,0x0
    8000171c:	fb4080e7          	jalr	-76(ra) # 800016cc <_ZL23blocksForBytesSemaphorem>
    80001720:	00050593          	mv	a1,a0
    80001724:	00048513          	mv	a0,s1
    80001728:	00001097          	auipc	ra,0x1
    8000172c:	728080e7          	jalr	1832(ra) # 80002e50 <_ZN15MemoryAllocator6mallocEm>
}
    80001730:	01813083          	ld	ra,24(sp)
    80001734:	01013403          	ld	s0,16(sp)
    80001738:	00813483          	ld	s1,8(sp)
    8000173c:	00013903          	ld	s2,0(sp)
    80001740:	02010113          	addi	sp,sp,32
    80001744:	00008067          	ret

0000000080001748 <_ZN4_semdlEPv>:

void _sem::operator delete(void* ptr) {
    if (ptr == nullptr) {
    80001748:	04050263          	beqz	a0,8000178c <_ZN4_semdlEPv+0x44>
void _sem::operator delete(void* ptr) {
    8000174c:	fe010113          	addi	sp,sp,-32
    80001750:	00113c23          	sd	ra,24(sp)
    80001754:	00813823          	sd	s0,16(sp)
    80001758:	00913423          	sd	s1,8(sp)
    8000175c:	02010413          	addi	s0,sp,32
    80001760:	00050493          	mv	s1,a0
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
    80001764:	00001097          	auipc	ra,0x1
    80001768:	66c080e7          	jalr	1644(ra) # 80002dd0 <_ZN15MemoryAllocator11getInstanceEv>
    8000176c:	00048593          	mv	a1,s1
    80001770:	00002097          	auipc	ra,0x2
    80001774:	83c080e7          	jalr	-1988(ra) # 80002fac <_ZN15MemoryAllocator4freeEPv>
}
    80001778:	01813083          	ld	ra,24(sp)
    8000177c:	01013403          	ld	s0,16(sp)
    80001780:	00813483          	ld	s1,8(sp)
    80001784:	02010113          	addi	sp,sp,32
    80001788:	00008067          	ret
    8000178c:	00008067          	ret

0000000080001790 <_ZN4_semC1Ej>:

_sem::_sem(unsigned init) {
    80001790:	ff010113          	addi	sp,sp,-16
    80001794:	00813423          	sd	s0,8(sp)
    80001798:	01010413          	addi	s0,sp,16
    val = (int)init;
    8000179c:	00b52023          	sw	a1,0(a0)
    closed = false;
    800017a0:	00050223          	sb	zero,4(a0)
    head = nullptr;
    800017a4:	00053423          	sd	zero,8(a0)
    tail = nullptr;
    800017a8:	00053823          	sd	zero,16(a0)
}
    800017ac:	00813403          	ld	s0,8(sp)
    800017b0:	01010113          	addi	sp,sp,16
    800017b4:	00008067          	ret

00000000800017b8 <_ZN4_sem15createSemaphoreEj>:

_sem* _sem::createSemaphore(unsigned init) {
    800017b8:	fe010113          	addi	sp,sp,-32
    800017bc:	00113c23          	sd	ra,24(sp)
    800017c0:	00813823          	sd	s0,16(sp)
    800017c4:	00913423          	sd	s1,8(sp)
    800017c8:	01213023          	sd	s2,0(sp)
    800017cc:	02010413          	addi	s0,sp,32
    800017d0:	00050913          	mv	s2,a0
    return new _sem(init);
    800017d4:	01800513          	li	a0,24
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	f14080e7          	jalr	-236(ra) # 800016ec <_ZN4_semnwEm>
    800017e0:	00050493          	mv	s1,a0
    800017e4:	00090593          	mv	a1,s2
    800017e8:	00000097          	auipc	ra,0x0
    800017ec:	fa8080e7          	jalr	-88(ra) # 80001790 <_ZN4_semC1Ej>
}
    800017f0:	00048513          	mv	a0,s1
    800017f4:	01813083          	ld	ra,24(sp)
    800017f8:	01013403          	ld	s0,16(sp)
    800017fc:	00813483          	ld	s1,8(sp)
    80001800:	00013903          	ld	s2,0(sp)
    80001804:	02010113          	addi	sp,sp,32
    80001808:	00008067          	ret

000000008000180c <_ZN4_sem16destroySemaphoreEPS_>:

int _sem::destroySemaphore(_sem* sem) {
    if (sem == nullptr) {
    8000180c:	02050863          	beqz	a0,8000183c <_ZN4_sem16destroySemaphoreEPS_+0x30>
int _sem::destroySemaphore(_sem* sem) {
    80001810:	ff010113          	addi	sp,sp,-16
    80001814:	00113423          	sd	ra,8(sp)
    80001818:	00813023          	sd	s0,0(sp)
    8000181c:	01010413          	addi	s0,sp,16
        return -1;
    }

    delete sem;
    80001820:	00000097          	auipc	ra,0x0
    80001824:	f28080e7          	jalr	-216(ra) # 80001748 <_ZN4_semdlEPv>
    return 0;
    80001828:	00000513          	li	a0,0
}
    8000182c:	00813083          	ld	ra,8(sp)
    80001830:	00013403          	ld	s0,0(sp)
    80001834:	01010113          	addi	sp,sp,16
    80001838:	00008067          	ret
        return -1;
    8000183c:	fff00513          	li	a0,-1
}
    80001840:	00008067          	ret

0000000080001844 <_ZN4_sem5blockEPNS_11BlockedNodeE>:
    unblockReady();

    return 0;
}

void _sem::block(BlockedNode* node) {
    80001844:	ff010113          	addi	sp,sp,-16
    80001848:	00813423          	sd	s0,8(sp)
    8000184c:	01010413          	addi	s0,sp,16
    if (node == nullptr) {
    80001850:	00058e63          	beqz	a1,8000186c <_ZN4_sem5blockEPNS_11BlockedNodeE+0x28>
        return;
    }

    node->next = nullptr;
    80001854:	0005b823          	sd	zero,16(a1)

    if (head == nullptr) {
    80001858:	00853783          	ld	a5,8(a0)
    8000185c:	00078e63          	beqz	a5,80001878 <_ZN4_sem5blockEPNS_11BlockedNodeE+0x34>
        head = node;
        tail = node;
    } else {
        tail->next = node;
    80001860:	01053783          	ld	a5,16(a0)
    80001864:	00b7b823          	sd	a1,16(a5)
        tail = node;
    80001868:	00b53823          	sd	a1,16(a0)
    }
}
    8000186c:	00813403          	ld	s0,8(sp)
    80001870:	01010113          	addi	sp,sp,16
    80001874:	00008067          	ret
        head = node;
    80001878:	00b53423          	sd	a1,8(a0)
        tail = node;
    8000187c:	00b53823          	sd	a1,16(a0)
    80001880:	fedff06f          	j	8000186c <_ZN4_sem5blockEPNS_11BlockedNodeE+0x28>

0000000080001884 <_ZN4_sem5waitNEj>:
    if (_thread::running == nullptr) {
    80001884:	0000a797          	auipc	a5,0xa
    80001888:	4ec7b783          	ld	a5,1260(a5) # 8000bd70 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000188c:	0007b783          	ld	a5,0(a5)
    80001890:	08078a63          	beqz	a5,80001924 <_ZN4_sem5waitNEj+0xa0>
    if (closed) {
    80001894:	00454703          	lbu	a4,4(a0)
    80001898:	08071a63          	bnez	a4,8000192c <_ZN4_sem5waitNEj+0xa8>
    if (n == 0) {
    8000189c:	08058c63          	beqz	a1,80001934 <_ZN4_sem5waitNEj+0xb0>
    if (head == nullptr && val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
    800018a0:	00853703          	ld	a4,8(a0)
    800018a4:	06070263          	beqz	a4,80001908 <_ZN4_sem5waitNEj+0x84>
int _sem::waitN(unsigned n) {
    800018a8:	fd010113          	addi	sp,sp,-48
    800018ac:	02113423          	sd	ra,40(sp)
    800018b0:	02813023          	sd	s0,32(sp)
    800018b4:	03010413          	addi	s0,sp,48
    node.thread = _thread::running;
    800018b8:	fcf43c23          	sd	a5,-40(s0)
    node.requested = n;
    800018bc:	feb42023          	sw	a1,-32(s0)
    node.status = 0;
    800018c0:	fe042223          	sw	zero,-28(s0)
    node.next = nullptr;
    800018c4:	fe043423          	sd	zero,-24(s0)
    block(&node);
    800018c8:	fd840593          	addi	a1,s0,-40
    800018cc:	00000097          	auipc	ra,0x0
    800018d0:	f78080e7          	jalr	-136(ra) # 80001844 <_ZN4_sem5blockEPNS_11BlockedNodeE>
    _thread::running->setState(_thread::BLOCKED);
    800018d4:	00300593          	li	a1,3
    800018d8:	0000a797          	auipc	a5,0xa
    800018dc:	4987b783          	ld	a5,1176(a5) # 8000bd70 <_GLOBAL_OFFSET_TABLE_+0x10>
    800018e0:	0007b503          	ld	a0,0(a5)
    800018e4:	00001097          	auipc	ra,0x1
    800018e8:	a40080e7          	jalr	-1472(ra) # 80002324 <_ZN7_thread8setStateENS_5StateE>
    _thread::dispatch();
    800018ec:	00001097          	auipc	ra,0x1
    800018f0:	878080e7          	jalr	-1928(ra) # 80002164 <_ZN7_thread8dispatchEv>
    return node.status;
    800018f4:	fe442503          	lw	a0,-28(s0)
}
    800018f8:	02813083          	ld	ra,40(sp)
    800018fc:	02013403          	ld	s0,32(sp)
    80001900:	03010113          	addi	sp,sp,48
    80001904:	00008067          	ret
    if (head == nullptr && val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
    80001908:	00052703          	lw	a4,0(a0)
    8000190c:	0005869b          	sext.w	a3,a1
    80001910:	f8d74ce3          	blt	a4,a3,800018a8 <_ZN4_sem5waitNEj+0x24>
        val -= (int)n;
    80001914:	40d7073b          	subw	a4,a4,a3
    80001918:	00e52023          	sw	a4,0(a0)
        return 0;
    8000191c:	00000513          	li	a0,0
    80001920:	00008067          	ret
        return -1;
    80001924:	fff00513          	li	a0,-1
    80001928:	00008067          	ret
        return -1;
    8000192c:	fff00513          	li	a0,-1
    80001930:	00008067          	ret
        return 0;
    80001934:	00000513          	li	a0,0
}
    80001938:	00008067          	ret

000000008000193c <_ZN4_sem4waitEv>:
int _sem::wait() {
    8000193c:	ff010113          	addi	sp,sp,-16
    80001940:	00113423          	sd	ra,8(sp)
    80001944:	00813023          	sd	s0,0(sp)
    80001948:	01010413          	addi	s0,sp,16
    return waitN(1);
    8000194c:	00100593          	li	a1,1
    80001950:	00000097          	auipc	ra,0x0
    80001954:	f34080e7          	jalr	-204(ra) # 80001884 <_ZN4_sem5waitNEj>
}
    80001958:	00813083          	ld	ra,8(sp)
    8000195c:	00013403          	ld	s0,0(sp)
    80001960:	01010113          	addi	sp,sp,16
    80001964:	00008067          	ret

0000000080001968 <_ZN4_sem12unblockReadyEv>:

void _sem::unblockReady() {
    80001968:	fe010113          	addi	sp,sp,-32
    8000196c:	00113c23          	sd	ra,24(sp)
    80001970:	00813823          	sd	s0,16(sp)
    80001974:	00913423          	sd	s1,8(sp)
    80001978:	01213023          	sd	s2,0(sp)
    8000197c:	02010413          	addi	s0,sp,32
    80001980:	00050913          	mv	s2,a0
    80001984:	0240006f          	j	800019a8 <_ZN4_sem12unblockReadyEv+0x40>
        BlockedNode* node = head;

        head = head->next;

        if (head == nullptr) {
            tail = nullptr;
    80001988:	00093823          	sd	zero,16(s2)
        }

        val -= (int)node->requested;
    8000198c:	0084a703          	lw	a4,8(s1)
    80001990:	40e787bb          	subw	a5,a5,a4
    80001994:	00f92023          	sw	a5,0(s2)

        node->status = 0;//znaci da ce waitN vratiti 0
    80001998:	0004a623          	sw	zero,12(s1)
        node->next = nullptr;
    8000199c:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    800019a0:	0004b503          	ld	a0,0(s1)
    800019a4:	02051463          	bnez	a0,800019cc <_ZN4_sem12unblockReadyEv+0x64>
    while (head != nullptr && val >= (int)head->requested) {
    800019a8:	00893483          	ld	s1,8(s2)
    800019ac:	02048e63          	beqz	s1,800019e8 <_ZN4_sem12unblockReadyEv+0x80>
    800019b0:	00092783          	lw	a5,0(s2)
    800019b4:	0084a703          	lw	a4,8(s1)
    800019b8:	02e7c863          	blt	a5,a4,800019e8 <_ZN4_sem12unblockReadyEv+0x80>
        head = head->next;
    800019bc:	0104b703          	ld	a4,16(s1)
    800019c0:	00e93423          	sd	a4,8(s2)
        if (head == nullptr) {
    800019c4:	fc0714e3          	bnez	a4,8000198c <_ZN4_sem12unblockReadyEv+0x24>
    800019c8:	fc1ff06f          	j	80001988 <_ZN4_sem12unblockReadyEv+0x20>
            node->thread->setState(_thread::READY);
    800019cc:	00100593          	li	a1,1
    800019d0:	00001097          	auipc	ra,0x1
    800019d4:	954080e7          	jalr	-1708(ra) # 80002324 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    800019d8:	0004b503          	ld	a0,0(s1)
    800019dc:	00001097          	auipc	ra,0x1
    800019e0:	cac080e7          	jalr	-852(ra) # 80002688 <_ZN9Scheduler3putEP7_thread>
    800019e4:	fc5ff06f          	j	800019a8 <_ZN4_sem12unblockReadyEv+0x40>
        }
    }
}
    800019e8:	01813083          	ld	ra,24(sp)
    800019ec:	01013403          	ld	s0,16(sp)
    800019f0:	00813483          	ld	s1,8(sp)
    800019f4:	00013903          	ld	s2,0(sp)
    800019f8:	02010113          	addi	sp,sp,32
    800019fc:	00008067          	ret

0000000080001a00 <_ZN4_sem7signalNEj>:
    if (closed) {
    80001a00:	00454783          	lbu	a5,4(a0)
    80001a04:	04079463          	bnez	a5,80001a4c <_ZN4_sem7signalNEj+0x4c>
    if (n == 0) {
    80001a08:	00059663          	bnez	a1,80001a14 <_ZN4_sem7signalNEj+0x14>
        return 0;
    80001a0c:	00000513          	li	a0,0
}
    80001a10:	00008067          	ret
int _sem::signalN(unsigned n) {
    80001a14:	ff010113          	addi	sp,sp,-16
    80001a18:	00113423          	sd	ra,8(sp)
    80001a1c:	00813023          	sd	s0,0(sp)
    80001a20:	01010413          	addi	s0,sp,16
    val += (int)n;
    80001a24:	00052783          	lw	a5,0(a0)
    80001a28:	00b785bb          	addw	a1,a5,a1
    80001a2c:	00b52023          	sw	a1,0(a0)
    unblockReady();
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	f38080e7          	jalr	-200(ra) # 80001968 <_ZN4_sem12unblockReadyEv>
    return 0;
    80001a38:	00000513          	li	a0,0
}
    80001a3c:	00813083          	ld	ra,8(sp)
    80001a40:	00013403          	ld	s0,0(sp)
    80001a44:	01010113          	addi	sp,sp,16
    80001a48:	00008067          	ret
        return -1;
    80001a4c:	fff00513          	li	a0,-1
    80001a50:	00008067          	ret

0000000080001a54 <_ZN4_sem6signalEv>:
int _sem::signal() {
    80001a54:	ff010113          	addi	sp,sp,-16
    80001a58:	00113423          	sd	ra,8(sp)
    80001a5c:	00813023          	sd	s0,0(sp)
    80001a60:	01010413          	addi	s0,sp,16
    return signalN(1);
    80001a64:	00100593          	li	a1,1
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	f98080e7          	jalr	-104(ra) # 80001a00 <_ZN4_sem7signalNEj>
}
    80001a70:	00813083          	ld	ra,8(sp)
    80001a74:	00013403          	ld	s0,0(sp)
    80001a78:	01010113          	addi	sp,sp,16
    80001a7c:	00008067          	ret

0000000080001a80 <_ZN4_sem10unblockAllEv>:

void _sem::unblockAll() {
    80001a80:	fe010113          	addi	sp,sp,-32
    80001a84:	00113c23          	sd	ra,24(sp)
    80001a88:	00813823          	sd	s0,16(sp)
    80001a8c:	00913423          	sd	s1,8(sp)
    80001a90:	01213023          	sd	s2,0(sp)
    80001a94:	02010413          	addi	s0,sp,32
    80001a98:	00050913          	mv	s2,a0
    while (head != nullptr) {
    80001a9c:	00893483          	ld	s1,8(s2)
    80001aa0:	02048e63          	beqz	s1,80001adc <_ZN4_sem10unblockAllEv+0x5c>
        BlockedNode* node = head;

        head = head->next;
    80001aa4:	0104b783          	ld	a5,16(s1)
    80001aa8:	00f93423          	sd	a5,8(s2)

        node->status = -1;
    80001aac:	fff00793          	li	a5,-1
    80001ab0:	00f4a623          	sw	a5,12(s1)
        node->next = nullptr;
    80001ab4:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    80001ab8:	0004b503          	ld	a0,0(s1)
    80001abc:	fe0500e3          	beqz	a0,80001a9c <_ZN4_sem10unblockAllEv+0x1c>
            node->thread->setState(_thread::READY);
    80001ac0:	00100593          	li	a1,1
    80001ac4:	00001097          	auipc	ra,0x1
    80001ac8:	860080e7          	jalr	-1952(ra) # 80002324 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001acc:	0004b503          	ld	a0,0(s1)
    80001ad0:	00001097          	auipc	ra,0x1
    80001ad4:	bb8080e7          	jalr	-1096(ra) # 80002688 <_ZN9Scheduler3putEP7_thread>
    80001ad8:	fc5ff06f          	j	80001a9c <_ZN4_sem10unblockAllEv+0x1c>
        }
    }

    tail = nullptr;
    80001adc:	00093823          	sd	zero,16(s2)
    80001ae0:	01813083          	ld	ra,24(sp)
    80001ae4:	01013403          	ld	s0,16(sp)
    80001ae8:	00813483          	ld	s1,8(sp)
    80001aec:	00013903          	ld	s2,0(sp)
    80001af0:	02010113          	addi	sp,sp,32
    80001af4:	00008067          	ret

0000000080001af8 <_ZN4_sem5closeEv>:
    if (closed) {
    80001af8:	00454783          	lbu	a5,4(a0)
    80001afc:	02079c63          	bnez	a5,80001b34 <_ZN4_sem5closeEv+0x3c>
int _sem::close() {
    80001b00:	ff010113          	addi	sp,sp,-16
    80001b04:	00113423          	sd	ra,8(sp)
    80001b08:	00813023          	sd	s0,0(sp)
    80001b0c:	01010413          	addi	s0,sp,16
    closed = true;
    80001b10:	00100793          	li	a5,1
    80001b14:	00f50223          	sb	a5,4(a0)
    unblockAll();
    80001b18:	00000097          	auipc	ra,0x0
    80001b1c:	f68080e7          	jalr	-152(ra) # 80001a80 <_ZN4_sem10unblockAllEv>
    return 0;
    80001b20:	00000513          	li	a0,0
}
    80001b24:	00813083          	ld	ra,8(sp)
    80001b28:	00013403          	ld	s0,0(sp)
    80001b2c:	01010113          	addi	sp,sp,16
    80001b30:	00008067          	ret
        return -1;
    80001b34:	fff00513          	li	a0,-1
}
    80001b38:	00008067          	ret

0000000080001b3c <handleSupervisorTrap>:
#include "../h/Semaphore.hpp"
#include "../lib/console.h"

extern "C" void handleSupervisorTrap(TrapFrame* frame);

extern "C" void handleSupervisorTrap(TrapFrame* frame) {
    80001b3c:	fd010113          	addi	sp,sp,-48
    80001b40:	02113423          	sd	ra,40(sp)
    80001b44:	02813023          	sd	s0,32(sp)
    80001b48:	00913c23          	sd	s1,24(sp)
    80001b4c:	01213823          	sd	s2,16(sp)
    80001b50:	01313423          	sd	s3,8(sp)
    80001b54:	03010413          	addi	s0,sp,48
    static const uint64 SSTATUS_SIE = (1UL << 1);
    static const uint64 SIP_SSIP = (1UL << 1);

    static uint64 r_scause() {
        uint64 x;
        asm volatile("csrr %0, scause" : "=r"(x));//upis vrednosti scause u x
    80001b58:	14202773          	csrr	a4,scause
    uint64 scause = Riscv::r_scause();

    if (scause == 8 || scause == 9) {
    80001b5c:	ff870693          	addi	a3,a4,-8 # ff8 <_entry-0x7ffff008>
    80001b60:	00100793          	li	a5,1
    80001b64:	02d7f463          	bgeu	a5,a3,80001b8c <handleSupervisorTrap+0x50>

        frame->sepc += 4;
        return;
    }

    if (scause == 0x8000000000000001UL) {
    80001b68:	fff00793          	li	a5,-1
    80001b6c:	03f79793          	slli	a5,a5,0x3f
    80001b70:	00178793          	addi	a5,a5,1
    80001b74:	2ef70063          	beq	a4,a5,80001e54 <handleSupervisorTrap+0x318>
        Riscv::mc_sip(Riscv::SIP_SSIP);//birsanje pending bita
        return;
    }

    if (scause == 0x8000000000000009UL) {//spoljasnji hardverski prekid 9
    80001b78:	fff00793          	li	a5,-1
    80001b7c:	03f79793          	slli	a5,a5,0x3f
    80001b80:	00978793          	addi	a5,a5,9
    80001b84:	2cf70e63          	beq	a4,a5,80001e60 <handleSupervisorTrap+0x324>
        console_handler();
        return;
    }

    while (true) {}
    80001b88:	0000006f          	j	80001b88 <handleSupervisorTrap+0x4c>
    80001b8c:	00050493          	mv	s1,a0
        uint64 syscallCode = frame->a0;
    80001b90:	04053783          	ld	a5,64(a0)
        uint64 arg1 = frame->a1;
    80001b94:	04853903          	ld	s2,72(a0)
        uint64 arg2 = frame->a2;
    80001b98:	05053503          	ld	a0,80(a0)
        uint64 arg3 = frame->a3;
    80001b9c:	0584b583          	ld	a1,88(s1)
        uint64 arg4 = frame->a4;
    80001ba0:	0604b603          	ld	a2,96(s1)
        switch (syscallCode) {
    80001ba4:	04200713          	li	a4,66
    80001ba8:	2af76063          	bltu	a4,a5,80001e48 <handleSupervisorTrap+0x30c>
    80001bac:	00279793          	slli	a5,a5,0x2
    80001bb0:	00007717          	auipc	a4,0x7
    80001bb4:	47070713          	addi	a4,a4,1136 # 80009020 <CONSOLE_STATUS+0x10>
    80001bb8:	00e787b3          	add	a5,a5,a4
    80001bbc:	0007a783          	lw	a5,0(a5)
    80001bc0:	00e787b3          	add	a5,a5,a4
    80001bc4:	00078067          	jr	a5
                frame->a0 = (uint64)MemoryAllocator::getInstance().malloc((size_t)arg1);
    80001bc8:	00001097          	auipc	ra,0x1
    80001bcc:	208080e7          	jalr	520(ra) # 80002dd0 <_ZN15MemoryAllocator11getInstanceEv>
    80001bd0:	00090593          	mv	a1,s2
    80001bd4:	00001097          	auipc	ra,0x1
    80001bd8:	27c080e7          	jalr	636(ra) # 80002e50 <_ZN15MemoryAllocator6mallocEm>
    80001bdc:	04a4b023          	sd	a0,64(s1)
        frame->sepc += 4;
    80001be0:	0f04b783          	ld	a5,240(s1)
    80001be4:	00478793          	addi	a5,a5,4
    80001be8:	0ef4b823          	sd	a5,240(s1)
    80001bec:	02813083          	ld	ra,40(sp)
    80001bf0:	02013403          	ld	s0,32(sp)
    80001bf4:	01813483          	ld	s1,24(sp)
    80001bf8:	01013903          	ld	s2,16(sp)
    80001bfc:	00813983          	ld	s3,8(sp)
    80001c00:	03010113          	addi	sp,sp,48
    80001c04:	00008067          	ret
                frame->a0 = (uint64)MemoryAllocator::getInstance().free((void*)arg1);
    80001c08:	00001097          	auipc	ra,0x1
    80001c0c:	1c8080e7          	jalr	456(ra) # 80002dd0 <_ZN15MemoryAllocator11getInstanceEv>
    80001c10:	00090593          	mv	a1,s2
    80001c14:	00001097          	auipc	ra,0x1
    80001c18:	398080e7          	jalr	920(ra) # 80002fac <_ZN15MemoryAllocator4freeEPv>
    80001c1c:	04a4b023          	sd	a0,64(s1)
                break;
    80001c20:	fc1ff06f          	j	80001be0 <handleSupervisorTrap+0xa4>
                if (handle == nullptr || body == nullptr || stackSpace == nullptr) {
    80001c24:	00090663          	beqz	s2,80001c30 <handleSupervisorTrap+0xf4>
    80001c28:	00050463          	beqz	a0,80001c30 <handleSupervisorTrap+0xf4>
    80001c2c:	00061863          	bnez	a2,80001c3c <handleSupervisorTrap+0x100>
                    frame->a0 = (uint64)-1;
    80001c30:	fff00793          	li	a5,-1
    80001c34:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c38:	fa9ff06f          	j	80001be0 <handleSupervisorTrap+0xa4>
                _thread* thread = _thread::createThread(body, arg, stackSpace);
    80001c3c:	00000097          	auipc	ra,0x0
    80001c40:	450080e7          	jalr	1104(ra) # 8000208c <_ZN7_thread12createThreadEPFvPvES0_S0_>
                if (thread == nullptr) {
    80001c44:	00050c63          	beqz	a0,80001c5c <handleSupervisorTrap+0x120>
                *handle = thread;//korisnik dobija rucku nove niti
    80001c48:	00a93023          	sd	a0,0(s2)
                Scheduler::put(thread);
    80001c4c:	00001097          	auipc	ra,0x1
    80001c50:	a3c080e7          	jalr	-1476(ra) # 80002688 <_ZN9Scheduler3putEP7_thread>
                frame->a0 = 0;
    80001c54:	0404b023          	sd	zero,64(s1)
                break;
    80001c58:	f89ff06f          	j	80001be0 <handleSupervisorTrap+0xa4>
                    frame->a0 = (uint64)-1;
    80001c5c:	fff00793          	li	a5,-1
    80001c60:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c64:	f7dff06f          	j	80001be0 <handleSupervisorTrap+0xa4>
                frame->sepc += 4;
    80001c68:	0f04b783          	ld	a5,240(s1)
    80001c6c:	00478793          	addi	a5,a5,4
    80001c70:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)_thread::exit();
    80001c74:	00000097          	auipc	ra,0x0
    80001c78:	598080e7          	jalr	1432(ra) # 8000220c <_ZN7_thread4exitEv>
    80001c7c:	04a4b023          	sd	a0,64(s1)
                return;
    80001c80:	f6dff06f          	j	80001bec <handleSupervisorTrap+0xb0>
                frame->sepc += 4;
    80001c84:	0f04b783          	ld	a5,240(s1)
    80001c88:	00478793          	addi	a5,a5,4
    80001c8c:	0ef4b823          	sd	a5,240(s1)
                _thread::dispatch();//nismo frame->a0 jer dispatch nema povratnu value
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	4d4080e7          	jalr	1236(ra) # 80002164 <_ZN7_thread8dispatchEv>
                return;
    80001c98:	f55ff06f          	j	80001bec <handleSupervisorTrap+0xb0>
                int id = _thread::getRunningId();
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	7a4080e7          	jalr	1956(ra) # 80002440 <_ZN7_thread12getRunningIdEv>
                frame->a0 = (uint64)id;
    80001ca4:	04a4b023          	sd	a0,64(s1)
                frame->sepc += 4;
    80001ca8:	0f04b783          	ld	a5,240(s1)
    80001cac:	00478793          	addi	a5,a5,4
    80001cb0:	0ef4b823          	sd	a5,240(s1)
                _thread::dispatch();
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	4b0080e7          	jalr	1200(ra) # 80002164 <_ZN7_thread8dispatchEv>
                return;
    80001cbc:	f31ff06f          	j	80001bec <handleSupervisorTrap+0xb0>
                frame->a0 = (uint64)_thread::pair(t1, t2);
    80001cc0:	00050593          	mv	a1,a0
    80001cc4:	00090513          	mv	a0,s2
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	694080e7          	jalr	1684(ra) # 8000235c <_ZN7_thread4pairEPS_S0_>
    80001cd0:	04a4b023          	sd	a0,64(s1)
                break;
    80001cd4:	f0dff06f          	j	80001be0 <handleSupervisorTrap+0xa4>
                frame->sepc += 4;
    80001cd8:	0f04b783          	ld	a5,240(s1)
    80001cdc:	00478793          	addi	a5,a5,4
    80001ce0:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)_thread::sync();
    80001ce4:	00000097          	auipc	ra,0x0
    80001ce8:	780080e7          	jalr	1920(ra) # 80002464 <_ZN7_thread4syncEv>
    80001cec:	04a4b023          	sd	a0,64(s1)
                return;
    80001cf0:	efdff06f          	j	80001bec <handleSupervisorTrap+0xb0>
                unsigned init = (unsigned)arg2;
    80001cf4:	0005051b          	sext.w	a0,a0
                if (handle == nullptr) {
    80001cf8:	00091863          	bnez	s2,80001d08 <handleSupervisorTrap+0x1cc>
                    frame->a0 = (uint64)-1;
    80001cfc:	fff00793          	li	a5,-1
    80001d00:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d04:	eddff06f          	j	80001be0 <handleSupervisorTrap+0xa4>
                _sem* sem = _sem::createSemaphore(init);
    80001d08:	00000097          	auipc	ra,0x0
    80001d0c:	ab0080e7          	jalr	-1360(ra) # 800017b8 <_ZN4_sem15createSemaphoreEj>
                if (sem == nullptr) {
    80001d10:	00050863          	beqz	a0,80001d20 <handleSupervisorTrap+0x1e4>
                *handle = sem;
    80001d14:	00a93023          	sd	a0,0(s2)
                frame->a0 = 0;
    80001d18:	0404b023          	sd	zero,64(s1)
                break;
    80001d1c:	ec5ff06f          	j	80001be0 <handleSupervisorTrap+0xa4>
                    frame->a0 = (uint64)-1;
    80001d20:	fff00793          	li	a5,-1
    80001d24:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d28:	eb9ff06f          	j	80001be0 <handleSupervisorTrap+0xa4>
                if (sem == nullptr) {
    80001d2c:	00091863          	bnez	s2,80001d3c <handleSupervisorTrap+0x200>
                    frame->a0 = (uint64)-1;
    80001d30:	fff00793          	li	a5,-1
    80001d34:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d38:	ea9ff06f          	j	80001be0 <handleSupervisorTrap+0xa4>
                int ret = sem->close();
    80001d3c:	00090513          	mv	a0,s2
    80001d40:	00000097          	auipc	ra,0x0
    80001d44:	db8080e7          	jalr	-584(ra) # 80001af8 <_ZN4_sem5closeEv>
    80001d48:	00050993          	mv	s3,a0
                if (ret == 0) {
    80001d4c:	00050663          	beqz	a0,80001d58 <handleSupervisorTrap+0x21c>
                frame->a0 = (uint64)ret;
    80001d50:	0534b023          	sd	s3,64(s1)
                break;
    80001d54:	e8dff06f          	j	80001be0 <handleSupervisorTrap+0xa4>
                    _sem::destroySemaphore(sem);
    80001d58:	00090513          	mv	a0,s2
    80001d5c:	00000097          	auipc	ra,0x0
    80001d60:	ab0080e7          	jalr	-1360(ra) # 8000180c <_ZN4_sem16destroySemaphoreEPS_>
    80001d64:	fedff06f          	j	80001d50 <handleSupervisorTrap+0x214>
                if (sem == nullptr) {
    80001d68:	00091863          	bnez	s2,80001d78 <handleSupervisorTrap+0x23c>
                    frame->a0 = (uint64)-1;
    80001d6c:	fff00793          	li	a5,-1
    80001d70:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d74:	e6dff06f          	j	80001be0 <handleSupervisorTrap+0xa4>
                frame->sepc += 4;
    80001d78:	0f04b783          	ld	a5,240(s1)
    80001d7c:	00478793          	addi	a5,a5,4
    80001d80:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->wait();
    80001d84:	00090513          	mv	a0,s2
    80001d88:	00000097          	auipc	ra,0x0
    80001d8c:	bb4080e7          	jalr	-1100(ra) # 8000193c <_ZN4_sem4waitEv>
    80001d90:	04a4b023          	sd	a0,64(s1)
                return;
    80001d94:	e59ff06f          	j	80001bec <handleSupervisorTrap+0xb0>
                if (sem == nullptr) {
    80001d98:	00091863          	bnez	s2,80001da8 <handleSupervisorTrap+0x26c>
                    frame->a0 = (uint64)-1;
    80001d9c:	fff00793          	li	a5,-1
    80001da0:	04f4b023          	sd	a5,64(s1)
                    break;
    80001da4:	e3dff06f          	j	80001be0 <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)sem->signal();
    80001da8:	00090513          	mv	a0,s2
    80001dac:	00000097          	auipc	ra,0x0
    80001db0:	ca8080e7          	jalr	-856(ra) # 80001a54 <_ZN4_sem6signalEv>
    80001db4:	04a4b023          	sd	a0,64(s1)
                break;
    80001db8:	e29ff06f          	j	80001be0 <handleSupervisorTrap+0xa4>
                unsigned n = (unsigned)arg2;
    80001dbc:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001dc0:	00091863          	bnez	s2,80001dd0 <handleSupervisorTrap+0x294>
                    frame->a0 = (uint64)-1;
    80001dc4:	fff00793          	li	a5,-1
    80001dc8:	04f4b023          	sd	a5,64(s1)
                    break;
    80001dcc:	e15ff06f          	j	80001be0 <handleSupervisorTrap+0xa4>
                frame->sepc += 4;
    80001dd0:	0f04b783          	ld	a5,240(s1)
    80001dd4:	00478793          	addi	a5,a5,4
    80001dd8:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->waitN(n);
    80001ddc:	00090513          	mv	a0,s2
    80001de0:	00000097          	auipc	ra,0x0
    80001de4:	aa4080e7          	jalr	-1372(ra) # 80001884 <_ZN4_sem5waitNEj>
    80001de8:	04a4b023          	sd	a0,64(s1)
                return;
    80001dec:	e01ff06f          	j	80001bec <handleSupervisorTrap+0xb0>
                unsigned n = (unsigned)arg2;
    80001df0:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001df4:	00091863          	bnez	s2,80001e04 <handleSupervisorTrap+0x2c8>
                    frame->a0 = (uint64)-1;
    80001df8:	fff00793          	li	a5,-1
    80001dfc:	04f4b023          	sd	a5,64(s1)
                    break;
    80001e00:	de1ff06f          	j	80001be0 <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)sem->signalN(n);
    80001e04:	00090513          	mv	a0,s2
    80001e08:	00000097          	auipc	ra,0x0
    80001e0c:	bf8080e7          	jalr	-1032(ra) # 80001a00 <_ZN4_sem7signalNEj>
    80001e10:	04a4b023          	sd	a0,64(s1)
                break;
    80001e14:	dcdff06f          	j	80001be0 <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)-1;
    80001e18:	fff00793          	li	a5,-1
    80001e1c:	04f4b023          	sd	a5,64(s1)
                break;
    80001e20:	dc1ff06f          	j	80001be0 <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)__getc();
    80001e24:	00007097          	auipc	ra,0x7
    80001e28:	f34080e7          	jalr	-204(ra) # 80008d58 <__getc>
    80001e2c:	04a4b023          	sd	a0,64(s1)
                break;
    80001e30:	db1ff06f          	j	80001be0 <handleSupervisorTrap+0xa4>
                __putc((char)arg1);
    80001e34:	0ff97513          	andi	a0,s2,255
    80001e38:	00007097          	auipc	ra,0x7
    80001e3c:	ee4080e7          	jalr	-284(ra) # 80008d1c <__putc>
                frame->a0 = 0;
    80001e40:	0404b023          	sd	zero,64(s1)
                break;
    80001e44:	d9dff06f          	j	80001be0 <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)-1;
    80001e48:	fff00793          	li	a5,-1
    80001e4c:	04f4b023          	sd	a5,64(s1)
                break;
    80001e50:	d91ff06f          	j	80001be0 <handleSupervisorTrap+0xa4>

    static void mc_sstatus(uint64 mask) {
        asm volatile("csrc sstatus, %0" : : "r"(mask));//vrati prekide
    }
    static void mc_sip(uint64 mask) {
        asm volatile("csrc sip, %0" : : "r"(mask));
    80001e54:	00200793          	li	a5,2
    80001e58:	1447b073          	csrc	sip,a5
        return;
    80001e5c:	d91ff06f          	j	80001bec <handleSupervisorTrap+0xb0>
        console_handler();
    80001e60:	00007097          	auipc	ra,0x7
    80001e64:	f30080e7          	jalr	-208(ra) # 80008d90 <console_handler>
        return;
    80001e68:	d85ff06f          	j	80001bec <handleSupervisorTrap+0xb0>

0000000080001e6c <_ZL14blocksForBytesm>:
#include "../h/Semaphore.hpp"

_thread* _thread::running = nullptr;
int _thread::nextId = 1;

static size_t blocksForBytes(size_t bytes) {
    80001e6c:	ff010113          	addi	sp,sp,-16
    80001e70:	00813423          	sd	s0,8(sp)
    80001e74:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001e78:	03f50513          	addi	a0,a0,63
}
    80001e7c:	00655513          	srli	a0,a0,0x6
    80001e80:	00813403          	ld	s0,8(sp)
    80001e84:	01010113          	addi	sp,sp,16
    80001e88:	00008067          	ret

0000000080001e8c <_ZN7_threadnwEm>:

void* _thread::operator new(size_t size) {
    80001e8c:	fe010113          	addi	sp,sp,-32
    80001e90:	00113c23          	sd	ra,24(sp)
    80001e94:	00813823          	sd	s0,16(sp)
    80001e98:	00913423          	sd	s1,8(sp)
    80001e9c:	01213023          	sd	s2,0(sp)
    80001ea0:	02010413          	addi	s0,sp,32
    80001ea4:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001ea8:	00001097          	auipc	ra,0x1
    80001eac:	f28080e7          	jalr	-216(ra) # 80002dd0 <_ZN15MemoryAllocator11getInstanceEv>
    80001eb0:	00050493          	mv	s1,a0
    80001eb4:	00090513          	mv	a0,s2
    80001eb8:	00000097          	auipc	ra,0x0
    80001ebc:	fb4080e7          	jalr	-76(ra) # 80001e6c <_ZL14blocksForBytesm>
    80001ec0:	00050593          	mv	a1,a0
    80001ec4:	00048513          	mv	a0,s1
    80001ec8:	00001097          	auipc	ra,0x1
    80001ecc:	f88080e7          	jalr	-120(ra) # 80002e50 <_ZN15MemoryAllocator6mallocEm>
}
    80001ed0:	01813083          	ld	ra,24(sp)
    80001ed4:	01013403          	ld	s0,16(sp)
    80001ed8:	00813483          	ld	s1,8(sp)
    80001edc:	00013903          	ld	s2,0(sp)
    80001ee0:	02010113          	addi	sp,sp,32
    80001ee4:	00008067          	ret

0000000080001ee8 <_ZN7_threadnaEm>:

void* _thread::operator new[](size_t size) {
    80001ee8:	fe010113          	addi	sp,sp,-32
    80001eec:	00113c23          	sd	ra,24(sp)
    80001ef0:	00813823          	sd	s0,16(sp)
    80001ef4:	00913423          	sd	s1,8(sp)
    80001ef8:	01213023          	sd	s2,0(sp)
    80001efc:	02010413          	addi	s0,sp,32
    80001f00:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001f04:	00001097          	auipc	ra,0x1
    80001f08:	ecc080e7          	jalr	-308(ra) # 80002dd0 <_ZN15MemoryAllocator11getInstanceEv>
    80001f0c:	00050493          	mv	s1,a0
    80001f10:	00090513          	mv	a0,s2
    80001f14:	00000097          	auipc	ra,0x0
    80001f18:	f58080e7          	jalr	-168(ra) # 80001e6c <_ZL14blocksForBytesm>
    80001f1c:	00050593          	mv	a1,a0
    80001f20:	00048513          	mv	a0,s1
    80001f24:	00001097          	auipc	ra,0x1
    80001f28:	f2c080e7          	jalr	-212(ra) # 80002e50 <_ZN15MemoryAllocator6mallocEm>
}
    80001f2c:	01813083          	ld	ra,24(sp)
    80001f30:	01013403          	ld	s0,16(sp)
    80001f34:	00813483          	ld	s1,8(sp)
    80001f38:	00013903          	ld	s2,0(sp)
    80001f3c:	02010113          	addi	sp,sp,32
    80001f40:	00008067          	ret

0000000080001f44 <_ZN7_threaddlEPv>:

void _thread::operator delete(void* ptr) {
    if (ptr == nullptr) {
    80001f44:	04050263          	beqz	a0,80001f88 <_ZN7_threaddlEPv+0x44>
void _thread::operator delete(void* ptr) {
    80001f48:	fe010113          	addi	sp,sp,-32
    80001f4c:	00113c23          	sd	ra,24(sp)
    80001f50:	00813823          	sd	s0,16(sp)
    80001f54:	00913423          	sd	s1,8(sp)
    80001f58:	02010413          	addi	s0,sp,32
    80001f5c:	00050493          	mv	s1,a0
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
    80001f60:	00001097          	auipc	ra,0x1
    80001f64:	e70080e7          	jalr	-400(ra) # 80002dd0 <_ZN15MemoryAllocator11getInstanceEv>
    80001f68:	00048593          	mv	a1,s1
    80001f6c:	00001097          	auipc	ra,0x1
    80001f70:	040080e7          	jalr	64(ra) # 80002fac <_ZN15MemoryAllocator4freeEPv>
}
    80001f74:	01813083          	ld	ra,24(sp)
    80001f78:	01013403          	ld	s0,16(sp)
    80001f7c:	00813483          	ld	s1,8(sp)
    80001f80:	02010113          	addi	sp,sp,32
    80001f84:	00008067          	ret
    80001f88:	00008067          	ret

0000000080001f8c <_ZN7_threaddaEPv>:

void _thread::operator delete[](void* ptr) {
    if (ptr == nullptr) {
    80001f8c:	04050263          	beqz	a0,80001fd0 <_ZN7_threaddaEPv+0x44>
void _thread::operator delete[](void* ptr) {
    80001f90:	fe010113          	addi	sp,sp,-32
    80001f94:	00113c23          	sd	ra,24(sp)
    80001f98:	00813823          	sd	s0,16(sp)
    80001f9c:	00913423          	sd	s1,8(sp)
    80001fa0:	02010413          	addi	s0,sp,32
    80001fa4:	00050493          	mv	s1,a0
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
    80001fa8:	00001097          	auipc	ra,0x1
    80001fac:	e28080e7          	jalr	-472(ra) # 80002dd0 <_ZN15MemoryAllocator11getInstanceEv>
    80001fb0:	00048593          	mv	a1,s1
    80001fb4:	00001097          	auipc	ra,0x1
    80001fb8:	ff8080e7          	jalr	-8(ra) # 80002fac <_ZN15MemoryAllocator4freeEPv>
}
    80001fbc:	01813083          	ld	ra,24(sp)
    80001fc0:	01013403          	ld	s0,16(sp)
    80001fc4:	00813483          	ld	s1,8(sp)
    80001fc8:	02010113          	addi	sp,sp,32
    80001fcc:	00008067          	ret
    80001fd0:	00008067          	ret

0000000080001fd4 <_ZN7_threadC1EPFvPvES0_S0_>:

_thread::_thread(Body body, void* arg, void* stackSpace) {
    80001fd4:	ff010113          	addi	sp,sp,-16
    80001fd8:	00813423          	sd	s0,8(sp)
    80001fdc:	01010413          	addi	s0,sp,16
    this->body = body;
    80001fe0:	00b53023          	sd	a1,0(a0)
    this->arg = arg;
    80001fe4:	00c53423          	sd	a2,8(a0)

    if (stackSpace != nullptr) {
    80001fe8:	08068c63          	beqz	a3,80002080 <_ZN7_threadC1EPFvPvES0_S0_+0xac>
        this->stack = (void*)((uint64)stackSpace - DEFAULT_STACK_SIZE);
    80001fec:	fffff7b7          	lui	a5,0xfffff
    80001ff0:	00f687b3          	add	a5,a3,a5
    80001ff4:	00f53823          	sd	a5,16(a0)
        this->context.sp = (uint64)stackSpace;
    80001ff8:	02d53023          	sd	a3,32(a0)
    } else {
        this->stack = nullptr;
        this->context.sp = 0;
    }
    this->context.s0 = 0;
    80001ffc:	02053423          	sd	zero,40(a0)
    this->context.s1 = 0;
    80002000:	02053823          	sd	zero,48(a0)
    this->context.s2 = 0;
    80002004:	02053c23          	sd	zero,56(a0)
    this->context.s3 = 0;
    80002008:	04053023          	sd	zero,64(a0)
    this->context.s4 = 0;
    8000200c:	04053423          	sd	zero,72(a0)
    this->context.s5 = 0;
    80002010:	04053823          	sd	zero,80(a0)
    this->context.s6 = 0;
    80002014:	04053c23          	sd	zero,88(a0)
    this->context.s7 = 0;
    80002018:	06053023          	sd	zero,96(a0)
    this->context.s8 = 0;
    8000201c:	06053423          	sd	zero,104(a0)
    this->context.s9 = 0;
    80002020:	06053823          	sd	zero,112(a0)
    this->context.s10 = 0;
    80002024:	06053c23          	sd	zero,120(a0)
    this->context.s11 = 0;
    80002028:	08053023          	sd	zero,128(a0)

    this->context.ra = (uint64)&_thread::threadWrapper;//nit nigde nije radila pa upisujemo povratnu adresu
    8000202c:	00000797          	auipc	a5,0x0
    80002030:	22878793          	addi	a5,a5,552 # 80002254 <_ZN7_thread13threadWrapperEv>
    80002034:	00f53c23          	sd	a5,24(a0)
    this->timeSlice = DEFAULT_TIME_SLICE;
    80002038:	00200793          	li	a5,2
    8000203c:	08f53423          	sd	a5,136(a0)
    this->state = CREATED;//nakon ovoga u trap.cpp radimo ready
    80002040:	08052823          	sw	zero,144(a0)
    this->next = nullptr;
    80002044:	08053c23          	sd	zero,152(a0)
    this->id = nextId++;
    80002048:	0000a717          	auipc	a4,0xa
    8000204c:	a9870713          	addi	a4,a4,-1384 # 8000bae0 <_ZN7_thread6nextIdE>
    80002050:	00072783          	lw	a5,0(a4)
    80002054:	0017869b          	addiw	a3,a5,1
    80002058:	00d72023          	sw	a3,0(a4)
    8000205c:	0cf52223          	sw	a5,196(a0)

    this->pairPartner = nullptr;
    80002060:	0a053023          	sd	zero,160(a0)
    this->syncOwner = nullptr;
    80002064:	0a053423          	sd	zero,168(a0)
    this->pairMutex = nullptr;
    80002068:	0a053823          	sd	zero,176(a0)
    this->pairGate = nullptr;
    8000206c:	0a053c23          	sd	zero,184(a0)
    this->pairWaiting = 0;
    80002070:	0c052023          	sw	zero,192(a0)
}
    80002074:	00813403          	ld	s0,8(sp)
    80002078:	01010113          	addi	sp,sp,16
    8000207c:	00008067          	ret
        this->stack = nullptr;
    80002080:	00053823          	sd	zero,16(a0)
        this->context.sp = 0;
    80002084:	02053023          	sd	zero,32(a0)
    80002088:	f75ff06f          	j	80001ffc <_ZN7_threadC1EPFvPvES0_S0_+0x28>

000000008000208c <_ZN7_thread12createThreadEPFvPvES0_S0_>:

_thread* _thread::createThread(Body body, void* arg, void* stackSpace) {
    8000208c:	fd010113          	addi	sp,sp,-48
    80002090:	02113423          	sd	ra,40(sp)
    80002094:	02813023          	sd	s0,32(sp)
    80002098:	00913c23          	sd	s1,24(sp)
    8000209c:	01213823          	sd	s2,16(sp)
    800020a0:	01313423          	sd	s3,8(sp)
    800020a4:	01413023          	sd	s4,0(sp)
    800020a8:	03010413          	addi	s0,sp,48
    800020ac:	00050913          	mv	s2,a0
    800020b0:	00058993          	mv	s3,a1
    800020b4:	00060a13          	mv	s4,a2
    return new _thread(body, arg, stackSpace);
    800020b8:	0c800513          	li	a0,200
    800020bc:	00000097          	auipc	ra,0x0
    800020c0:	dd0080e7          	jalr	-560(ra) # 80001e8c <_ZN7_threadnwEm>
    800020c4:	00050493          	mv	s1,a0
    800020c8:	000a0693          	mv	a3,s4
    800020cc:	00098613          	mv	a2,s3
    800020d0:	00090593          	mv	a1,s2
    800020d4:	00000097          	auipc	ra,0x0
    800020d8:	f00080e7          	jalr	-256(ra) # 80001fd4 <_ZN7_threadC1EPFvPvES0_S0_>
}
    800020dc:	00048513          	mv	a0,s1
    800020e0:	02813083          	ld	ra,40(sp)
    800020e4:	02013403          	ld	s0,32(sp)
    800020e8:	01813483          	ld	s1,24(sp)
    800020ec:	01013903          	ld	s2,16(sp)
    800020f0:	00813983          	ld	s3,8(sp)
    800020f4:	00013a03          	ld	s4,0(sp)
    800020f8:	03010113          	addi	sp,sp,48
    800020fc:	00008067          	ret

0000000080002100 <_ZN7_thread13destroyThreadEPS_>:

int _thread::destroyThread(_thread* thread) {
    if (thread == nullptr) {
    80002100:	04050e63          	beqz	a0,8000215c <_ZN7_thread13destroyThreadEPS_+0x5c>
int _thread::destroyThread(_thread* thread) {
    80002104:	fe010113          	addi	sp,sp,-32
    80002108:	00113c23          	sd	ra,24(sp)
    8000210c:	00813823          	sd	s0,16(sp)
    80002110:	00913423          	sd	s1,8(sp)
    80002114:	02010413          	addi	s0,sp,32
    80002118:	00050493          	mv	s1,a0
        return -1;
    }

    if (thread->stack != nullptr) {
    8000211c:	01053783          	ld	a5,16(a0)
    80002120:	00078c63          	beqz	a5,80002138 <_ZN7_thread13destroyThreadEPS_+0x38>
        MemoryAllocator::getInstance().free(thread->stack);
    80002124:	00001097          	auipc	ra,0x1
    80002128:	cac080e7          	jalr	-852(ra) # 80002dd0 <_ZN15MemoryAllocator11getInstanceEv>
    8000212c:	0104b583          	ld	a1,16(s1)
    80002130:	00001097          	auipc	ra,0x1
    80002134:	e7c080e7          	jalr	-388(ra) # 80002fac <_ZN15MemoryAllocator4freeEPv>
        thread->stack = nullptr;
    }

    delete thread;
    80002138:	00048513          	mv	a0,s1
    8000213c:	00000097          	auipc	ra,0x0
    80002140:	e08080e7          	jalr	-504(ra) # 80001f44 <_ZN7_threaddlEPv>
    return 0;
    80002144:	00000513          	li	a0,0
}
    80002148:	01813083          	ld	ra,24(sp)
    8000214c:	01013403          	ld	s0,16(sp)
    80002150:	00813483          	ld	s1,8(sp)
    80002154:	02010113          	addi	sp,sp,32
    80002158:	00008067          	ret
        return -1;
    8000215c:	fff00513          	li	a0,-1
}
    80002160:	00008067          	ret

0000000080002164 <_ZN7_thread8dispatchEv>:

void _thread::dispatch() {
    80002164:	fe010113          	addi	sp,sp,-32
    80002168:	00113c23          	sd	ra,24(sp)
    8000216c:	00813823          	sd	s0,16(sp)
    80002170:	00913423          	sd	s1,8(sp)
    80002174:	02010413          	addi	s0,sp,32
    _thread* old = running;
    80002178:	0000a497          	auipc	s1,0xa
    8000217c:	c684b483          	ld	s1,-920(s1) # 8000bde0 <_ZN7_thread7runningE>

    if (old != nullptr && old->state != FINISHED && old->state != BLOCKED) {
    80002180:	00048c63          	beqz	s1,80002198 <_ZN7_thread8dispatchEv+0x34>
    80002184:	0904a783          	lw	a5,144(s1)
    80002188:	00400713          	li	a4,4
    8000218c:	00e78663          	beq	a5,a4,80002198 <_ZN7_thread8dispatchEv+0x34>
    80002190:	00300713          	li	a4,3
    80002194:	04e79663          	bne	a5,a4,800021e0 <_ZN7_thread8dispatchEv+0x7c>
        Scheduler::put(old);
    }

    _thread* next = Scheduler::get();
    80002198:	00000097          	auipc	ra,0x0
    8000219c:	55c080e7          	jalr	1372(ra) # 800026f4 <_ZN9Scheduler3getEv>

    if (next == nullptr) {
    800021a0:	04050863          	beqz	a0,800021f0 <_ZN7_thread8dispatchEv+0x8c>
            running = old;
        }
        return;
    }

    running = next;
    800021a4:	0000a797          	auipc	a5,0xa
    800021a8:	c2a7be23          	sd	a0,-964(a5) # 8000bde0 <_ZN7_thread7runningE>
    running->state = RUNNING;
    800021ac:	00200793          	li	a5,2
    800021b0:	08f52823          	sw	a5,144(a0)

    if (old != nullptr && old != running) {//ako je scheduler vratio istu nit ne treba contextswitch
    800021b4:	00048c63          	beqz	s1,800021cc <_ZN7_thread8dispatchEv+0x68>
    800021b8:	00a48a63          	beq	s1,a0,800021cc <_ZN7_thread8dispatchEv+0x68>
        contextSwitch(&old->context, &running->context);
    800021bc:	01850593          	addi	a1,a0,24
    800021c0:	01848513          	addi	a0,s1,24
    800021c4:	fffff097          	auipc	ra,0xfffff
    800021c8:	f6c080e7          	jalr	-148(ra) # 80001130 <contextSwitch>
    }
}
    800021cc:	01813083          	ld	ra,24(sp)
    800021d0:	01013403          	ld	s0,16(sp)
    800021d4:	00813483          	ld	s1,8(sp)
    800021d8:	02010113          	addi	sp,sp,32
    800021dc:	00008067          	ret
        Scheduler::put(old);
    800021e0:	00048513          	mv	a0,s1
    800021e4:	00000097          	auipc	ra,0x0
    800021e8:	4a4080e7          	jalr	1188(ra) # 80002688 <_ZN9Scheduler3putEP7_thread>
    800021ec:	fadff06f          	j	80002198 <_ZN7_thread8dispatchEv+0x34>
        if (old != nullptr && old->state == RUNNING) {
    800021f0:	fc048ee3          	beqz	s1,800021cc <_ZN7_thread8dispatchEv+0x68>
    800021f4:	0904a703          	lw	a4,144(s1)
    800021f8:	00200793          	li	a5,2
    800021fc:	fcf718e3          	bne	a4,a5,800021cc <_ZN7_thread8dispatchEv+0x68>
            running = old;
    80002200:	0000a797          	auipc	a5,0xa
    80002204:	be97b023          	sd	s1,-1056(a5) # 8000bde0 <_ZN7_thread7runningE>
        return;
    80002208:	fc5ff06f          	j	800021cc <_ZN7_thread8dispatchEv+0x68>

000000008000220c <_ZN7_thread4exitEv>:
int _thread::exit() {
    if (running == nullptr) {
    8000220c:	0000a797          	auipc	a5,0xa
    80002210:	bd47b783          	ld	a5,-1068(a5) # 8000bde0 <_ZN7_thread7runningE>
    80002214:	02078c63          	beqz	a5,8000224c <_ZN7_thread4exitEv+0x40>
int _thread::exit() {
    80002218:	ff010113          	addi	sp,sp,-16
    8000221c:	00113423          	sd	ra,8(sp)
    80002220:	00813023          	sd	s0,0(sp)
    80002224:	01010413          	addi	s0,sp,16
        return -1;
    }

    running->state = FINISHED;
    80002228:	00400713          	li	a4,4
    8000222c:	08e7a823          	sw	a4,144(a5)

    dispatch();
    80002230:	00000097          	auipc	ra,0x0
    80002234:	f34080e7          	jalr	-204(ra) # 80002164 <_ZN7_thread8dispatchEv>

    return 0;
    80002238:	00000513          	li	a0,0
}
    8000223c:	00813083          	ld	ra,8(sp)
    80002240:	00013403          	ld	s0,0(sp)
    80002244:	01010113          	addi	sp,sp,16
    80002248:	00008067          	ret
        return -1;
    8000224c:	fff00513          	li	a0,-1
}
    80002250:	00008067          	ret

0000000080002254 <_ZN7_thread13threadWrapperEv>:

uint64 _thread::getTimeSlice() const {
    return timeSlice;
}

void _thread::threadWrapper() {//
    80002254:	ff010113          	addi	sp,sp,-16
    80002258:	00113423          	sd	ra,8(sp)
    8000225c:	00813023          	sd	s0,0(sp)
    80002260:	01010413          	addi	s0,sp,16
    if (running != nullptr && running->body != nullptr) {
    80002264:	0000a797          	auipc	a5,0xa
    80002268:	b7c7b783          	ld	a5,-1156(a5) # 8000bde0 <_ZN7_thread7runningE>
    8000226c:	00078a63          	beqz	a5,80002280 <_ZN7_thread13threadWrapperEv+0x2c>
    80002270:	0007b703          	ld	a4,0(a5)
    80002274:	00070663          	beqz	a4,80002280 <_ZN7_thread13threadWrapperEv+0x2c>
        running->body(running->arg);
    80002278:	0087b503          	ld	a0,8(a5)
    8000227c:	000700e7          	jalr	a4
    }

    _thread::exit();
    80002280:	00000097          	auipc	ra,0x0
    80002284:	f8c080e7          	jalr	-116(ra) # 8000220c <_ZN7_thread4exitEv>
}
    80002288:	00813083          	ld	ra,8(sp)
    8000228c:	00013403          	ld	s0,0(sp)
    80002290:	01010113          	addi	sp,sp,16
    80002294:	00008067          	ret

0000000080002298 <_ZNK7_thread7getBodyEv>:
_thread::Body _thread::getBody() const {
    80002298:	ff010113          	addi	sp,sp,-16
    8000229c:	00813423          	sd	s0,8(sp)
    800022a0:	01010413          	addi	s0,sp,16
}
    800022a4:	00053503          	ld	a0,0(a0)
    800022a8:	00813403          	ld	s0,8(sp)
    800022ac:	01010113          	addi	sp,sp,16
    800022b0:	00008067          	ret

00000000800022b4 <_ZNK7_thread6getArgEv>:
void* _thread::getArg() const {
    800022b4:	ff010113          	addi	sp,sp,-16
    800022b8:	00813423          	sd	s0,8(sp)
    800022bc:	01010413          	addi	s0,sp,16
}
    800022c0:	00853503          	ld	a0,8(a0)
    800022c4:	00813403          	ld	s0,8(sp)
    800022c8:	01010113          	addi	sp,sp,16
    800022cc:	00008067          	ret

00000000800022d0 <_ZNK7_thread8getStackEv>:
void* _thread::getStack() const {
    800022d0:	ff010113          	addi	sp,sp,-16
    800022d4:	00813423          	sd	s0,8(sp)
    800022d8:	01010413          	addi	s0,sp,16
}
    800022dc:	01053503          	ld	a0,16(a0)
    800022e0:	00813403          	ld	s0,8(sp)
    800022e4:	01010113          	addi	sp,sp,16
    800022e8:	00008067          	ret

00000000800022ec <_ZN7_thread10getContextEv>:
_thread::Context* _thread::getContext() {
    800022ec:	ff010113          	addi	sp,sp,-16
    800022f0:	00813423          	sd	s0,8(sp)
    800022f4:	01010413          	addi	s0,sp,16
}
    800022f8:	01850513          	addi	a0,a0,24
    800022fc:	00813403          	ld	s0,8(sp)
    80002300:	01010113          	addi	sp,sp,16
    80002304:	00008067          	ret

0000000080002308 <_ZNK7_thread8getStateEv>:
_thread::State _thread::getState() const {
    80002308:	ff010113          	addi	sp,sp,-16
    8000230c:	00813423          	sd	s0,8(sp)
    80002310:	01010413          	addi	s0,sp,16
}
    80002314:	09052503          	lw	a0,144(a0)
    80002318:	00813403          	ld	s0,8(sp)
    8000231c:	01010113          	addi	sp,sp,16
    80002320:	00008067          	ret

0000000080002324 <_ZN7_thread8setStateENS_5StateE>:
void _thread::setState(State state) {
    80002324:	ff010113          	addi	sp,sp,-16
    80002328:	00813423          	sd	s0,8(sp)
    8000232c:	01010413          	addi	s0,sp,16
    this->state = state;
    80002330:	08b52823          	sw	a1,144(a0)
}
    80002334:	00813403          	ld	s0,8(sp)
    80002338:	01010113          	addi	sp,sp,16
    8000233c:	00008067          	ret

0000000080002340 <_ZNK7_thread12getTimeSliceEv>:
uint64 _thread::getTimeSlice() const {
    80002340:	ff010113          	addi	sp,sp,-16
    80002344:	00813423          	sd	s0,8(sp)
    80002348:	01010413          	addi	s0,sp,16
}
    8000234c:	08853503          	ld	a0,136(a0)
    80002350:	00813403          	ld	s0,8(sp)
    80002354:	01010113          	addi	sp,sp,16
    80002358:	00008067          	ret

000000008000235c <_ZN7_thread4pairEPS_S0_>:
int _thread::pair(_thread* t1, _thread* t2) {
    if (t1 == nullptr || t2 == nullptr) {
    8000235c:	0a050663          	beqz	a0,80002408 <_ZN7_thread4pairEPS_S0_+0xac>
int _thread::pair(_thread* t1, _thread* t2) {
    80002360:	fd010113          	addi	sp,sp,-48
    80002364:	02113423          	sd	ra,40(sp)
    80002368:	02813023          	sd	s0,32(sp)
    8000236c:	00913c23          	sd	s1,24(sp)
    80002370:	01213823          	sd	s2,16(sp)
    80002374:	01313423          	sd	s3,8(sp)
    80002378:	03010413          	addi	s0,sp,48
    8000237c:	00050493          	mv	s1,a0
    80002380:	00058913          	mv	s2,a1
    if (t1 == nullptr || t2 == nullptr) {
    80002384:	08058663          	beqz	a1,80002410 <_ZN7_thread4pairEPS_S0_+0xb4>
        return -1;
    }

    if (t1 == t2) {
    80002388:	08b50863          	beq	a0,a1,80002418 <_ZN7_thread4pairEPS_S0_+0xbc>
        return -1;
    }

    if (t1->pairPartner != nullptr || t2->pairPartner != nullptr) {
    8000238c:	0a053783          	ld	a5,160(a0)
    80002390:	08079863          	bnez	a5,80002420 <_ZN7_thread4pairEPS_S0_+0xc4>
    80002394:	0a05b783          	ld	a5,160(a1)
    80002398:	08079863          	bnez	a5,80002428 <_ZN7_thread4pairEPS_S0_+0xcc>
        return -1;
    }

    _sem* mutex = _sem::createSemaphore(1);
    8000239c:	00100513          	li	a0,1
    800023a0:	fffff097          	auipc	ra,0xfffff
    800023a4:	418080e7          	jalr	1048(ra) # 800017b8 <_ZN4_sem15createSemaphoreEj>
    800023a8:	00050993          	mv	s3,a0
    _sem* gate = _sem::createSemaphore(0);
    800023ac:	00000513          	li	a0,0
    800023b0:	fffff097          	auipc	ra,0xfffff
    800023b4:	408080e7          	jalr	1032(ra) # 800017b8 <_ZN4_sem15createSemaphoreEj>

    if (mutex == nullptr || gate == nullptr) {
    800023b8:	06098c63          	beqz	s3,80002430 <_ZN7_thread4pairEPS_S0_+0xd4>
    800023bc:	06050e63          	beqz	a0,80002438 <_ZN7_thread4pairEPS_S0_+0xdc>
        return -1;
    }

    t1->pairPartner = t2;
    800023c0:	0b24b023          	sd	s2,160(s1)
    t2->pairPartner = t1;
    800023c4:	0a993023          	sd	s1,160(s2)

    t1->syncOwner = t1;
    800023c8:	0a94b423          	sd	s1,168(s1)
    t2->syncOwner = t1;
    800023cc:	0a993423          	sd	s1,168(s2)

    t1->pairMutex = mutex;
    800023d0:	0b34b823          	sd	s3,176(s1)
    t2->pairMutex = mutex;
    800023d4:	0b393823          	sd	s3,176(s2)

    t1->pairGate = gate;
    800023d8:	0aa4bc23          	sd	a0,184(s1)
    t2->pairGate = gate;
    800023dc:	0aa93c23          	sd	a0,184(s2)

    t1->pairWaiting = 0;
    800023e0:	0c04a023          	sw	zero,192(s1)
    t2->pairWaiting = 0;
    800023e4:	0c092023          	sw	zero,192(s2)

    return 0;
    800023e8:	00000513          	li	a0,0
}
    800023ec:	02813083          	ld	ra,40(sp)
    800023f0:	02013403          	ld	s0,32(sp)
    800023f4:	01813483          	ld	s1,24(sp)
    800023f8:	01013903          	ld	s2,16(sp)
    800023fc:	00813983          	ld	s3,8(sp)
    80002400:	03010113          	addi	sp,sp,48
    80002404:	00008067          	ret
        return -1;
    80002408:	fff00513          	li	a0,-1
}
    8000240c:	00008067          	ret
        return -1;
    80002410:	fff00513          	li	a0,-1
    80002414:	fd9ff06f          	j	800023ec <_ZN7_thread4pairEPS_S0_+0x90>
        return -1;
    80002418:	fff00513          	li	a0,-1
    8000241c:	fd1ff06f          	j	800023ec <_ZN7_thread4pairEPS_S0_+0x90>
        return -1;
    80002420:	fff00513          	li	a0,-1
    80002424:	fc9ff06f          	j	800023ec <_ZN7_thread4pairEPS_S0_+0x90>
    80002428:	fff00513          	li	a0,-1
    8000242c:	fc1ff06f          	j	800023ec <_ZN7_thread4pairEPS_S0_+0x90>
        return -1;
    80002430:	fff00513          	li	a0,-1
    80002434:	fb9ff06f          	j	800023ec <_ZN7_thread4pairEPS_S0_+0x90>
    80002438:	fff00513          	li	a0,-1
    8000243c:	fb1ff06f          	j	800023ec <_ZN7_thread4pairEPS_S0_+0x90>

0000000080002440 <_ZN7_thread12getRunningIdEv>:

int _thread::getRunningId() {
    80002440:	ff010113          	addi	sp,sp,-16
    80002444:	00813423          	sd	s0,8(sp)
    80002448:	01010413          	addi	s0,sp,16
    return running->id;
}
    8000244c:	0000a797          	auipc	a5,0xa
    80002450:	9947b783          	ld	a5,-1644(a5) # 8000bde0 <_ZN7_thread7runningE>
    80002454:	0c47a503          	lw	a0,196(a5)
    80002458:	00813403          	ld	s0,8(sp)
    8000245c:	01010113          	addi	sp,sp,16
    80002460:	00008067          	ret

0000000080002464 <_ZN7_thread4syncEv>:

int _thread::sync() {
    if (running == nullptr) {
    80002464:	0000a797          	auipc	a5,0xa
    80002468:	97c7b783          	ld	a5,-1668(a5) # 8000bde0 <_ZN7_thread7runningE>
    8000246c:	0a078063          	beqz	a5,8000250c <_ZN7_thread4syncEv+0xa8>
        return -1;
    }

    if (running->pairPartner == nullptr || running->syncOwner == nullptr) {
    80002470:	0a07b703          	ld	a4,160(a5)
    80002474:	0a070063          	beqz	a4,80002514 <_ZN7_thread4syncEv+0xb0>
int _thread::sync() {
    80002478:	fe010113          	addi	sp,sp,-32
    8000247c:	00113c23          	sd	ra,24(sp)
    80002480:	00813823          	sd	s0,16(sp)
    80002484:	00913423          	sd	s1,8(sp)
    80002488:	02010413          	addi	s0,sp,32
    if (running->pairPartner == nullptr || running->syncOwner == nullptr) {
    8000248c:	0a87b483          	ld	s1,168(a5)
    80002490:	08048663          	beqz	s1,8000251c <_ZN7_thread4syncEv+0xb8>
        return -1;
    }

    _thread* owner = running->syncOwner;

    owner->pairMutex->wait();
    80002494:	0b04b503          	ld	a0,176(s1)
    80002498:	fffff097          	auipc	ra,0xfffff
    8000249c:	4a4080e7          	jalr	1188(ra) # 8000193c <_ZN4_sem4waitEv>

    owner->pairWaiting++;
    800024a0:	0c04a783          	lw	a5,192(s1)
    800024a4:	0017879b          	addiw	a5,a5,1
    800024a8:	0007871b          	sext.w	a4,a5
    800024ac:	0cf4a023          	sw	a5,192(s1)

    if (owner->pairWaiting == 1) {
    800024b0:	00100793          	li	a5,1
    800024b4:	02f70c63          	beq	a4,a5,800024ec <_ZN7_thread4syncEv+0x88>
        owner->pairMutex->signal();

        owner->pairGate->wait();
    } else {
        owner->pairWaiting = 0;
    800024b8:	0c04a023          	sw	zero,192(s1)

        owner->pairGate->signal();
    800024bc:	0b84b503          	ld	a0,184(s1)
    800024c0:	fffff097          	auipc	ra,0xfffff
    800024c4:	594080e7          	jalr	1428(ra) # 80001a54 <_ZN4_sem6signalEv>
        owner->pairMutex->signal();
    800024c8:	0b04b503          	ld	a0,176(s1)
    800024cc:	fffff097          	auipc	ra,0xfffff
    800024d0:	588080e7          	jalr	1416(ra) # 80001a54 <_ZN4_sem6signalEv>
    }

    return 0;
    800024d4:	00000513          	li	a0,0
    800024d8:	01813083          	ld	ra,24(sp)
    800024dc:	01013403          	ld	s0,16(sp)
    800024e0:	00813483          	ld	s1,8(sp)
    800024e4:	02010113          	addi	sp,sp,32
    800024e8:	00008067          	ret
        owner->pairMutex->signal();
    800024ec:	0b04b503          	ld	a0,176(s1)
    800024f0:	fffff097          	auipc	ra,0xfffff
    800024f4:	564080e7          	jalr	1380(ra) # 80001a54 <_ZN4_sem6signalEv>
        owner->pairGate->wait();
    800024f8:	0b84b503          	ld	a0,184(s1)
    800024fc:	fffff097          	auipc	ra,0xfffff
    80002500:	440080e7          	jalr	1088(ra) # 8000193c <_ZN4_sem4waitEv>
    return 0;
    80002504:	00000513          	li	a0,0
    80002508:	fd1ff06f          	j	800024d8 <_ZN7_thread4syncEv+0x74>
        return -1;
    8000250c:	fff00513          	li	a0,-1
    80002510:	00008067          	ret
        return -1;
    80002514:	fff00513          	li	a0,-1
    80002518:	00008067          	ret
        return -1;
    8000251c:	fff00513          	li	a0,-1
    80002520:	fb9ff06f          	j	800024d8 <_ZN7_thread4syncEv+0x74>

0000000080002524 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80002524:	fe010113          	addi	sp,sp,-32
    80002528:	00113c23          	sd	ra,24(sp)
    8000252c:	00813823          	sd	s0,16(sp)
    80002530:	00913423          	sd	s1,8(sp)
    80002534:	01213023          	sd	s2,0(sp)
    80002538:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    8000253c:	00007517          	auipc	a0,0x7
    80002540:	bf450513          	addi	a0,a0,-1036 # 80009130 <CONSOLE_STATUS+0x120>
    80002544:	00003097          	auipc	ra,0x3
    80002548:	620080e7          	jalr	1568(ra) # 80005b64 <_Z11printStringPKc>
    int test = getc() - '0';
    8000254c:	fffff097          	auipc	ra,0xfffff
    80002550:	104080e7          	jalr	260(ra) # 80001650 <_Z4getcv>
    80002554:	00050913          	mv	s2,a0
    80002558:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    8000255c:	fffff097          	auipc	ra,0xfffff
    80002560:	0f4080e7          	jalr	244(ra) # 80001650 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80002564:	fcb9091b          	addiw	s2,s2,-53
    80002568:	00100793          	li	a5,1
    8000256c:	0327f463          	bgeu	a5,s2,80002594 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80002570:	00800793          	li	a5,8
    80002574:	1097e063          	bltu	a5,s1,80002674 <_Z8userMainv+0x150>
    80002578:	00249493          	slli	s1,s1,0x2
    8000257c:	00007717          	auipc	a4,0x7
    80002580:	dcc70713          	addi	a4,a4,-564 # 80009348 <CONSOLE_STATUS+0x338>
    80002584:	00e484b3          	add	s1,s1,a4
    80002588:	0004a783          	lw	a5,0(s1)
    8000258c:	00e787b3          	add	a5,a5,a4
    80002590:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80002594:	00007517          	auipc	a0,0x7
    80002598:	bbc50513          	addi	a0,a0,-1092 # 80009150 <CONSOLE_STATUS+0x140>
    8000259c:	00003097          	auipc	ra,0x3
    800025a0:	5c8080e7          	jalr	1480(ra) # 80005b64 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800025a4:	01813083          	ld	ra,24(sp)
    800025a8:	01013403          	ld	s0,16(sp)
    800025ac:	00813483          	ld	s1,8(sp)
    800025b0:	00013903          	ld	s2,0(sp)
    800025b4:	02010113          	addi	sp,sp,32
    800025b8:	00008067          	ret
            Threads_C_API_test();
    800025bc:	00003097          	auipc	ra,0x3
    800025c0:	c20080e7          	jalr	-992(ra) # 800051dc <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800025c4:	00007517          	auipc	a0,0x7
    800025c8:	bbc50513          	addi	a0,a0,-1092 # 80009180 <CONSOLE_STATUS+0x170>
    800025cc:	00003097          	auipc	ra,0x3
    800025d0:	598080e7          	jalr	1432(ra) # 80005b64 <_Z11printStringPKc>
            break;
    800025d4:	fd1ff06f          	j	800025a4 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    800025d8:	00002097          	auipc	ra,0x2
    800025dc:	ae4080e7          	jalr	-1308(ra) # 800040bc <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800025e0:	00007517          	auipc	a0,0x7
    800025e4:	be050513          	addi	a0,a0,-1056 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800025e8:	00003097          	auipc	ra,0x3
    800025ec:	57c080e7          	jalr	1404(ra) # 80005b64 <_Z11printStringPKc>
            break;
    800025f0:	fb5ff06f          	j	800025a4 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    800025f4:	00001097          	auipc	ra,0x1
    800025f8:	d7c080e7          	jalr	-644(ra) # 80003370 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800025fc:	00007517          	auipc	a0,0x7
    80002600:	c0450513          	addi	a0,a0,-1020 # 80009200 <CONSOLE_STATUS+0x1f0>
    80002604:	00003097          	auipc	ra,0x3
    80002608:	560080e7          	jalr	1376(ra) # 80005b64 <_Z11printStringPKc>
            break;
    8000260c:	f99ff06f          	j	800025a4 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80002610:	00003097          	auipc	ra,0x3
    80002614:	f10080e7          	jalr	-240(ra) # 80005520 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80002618:	00007517          	auipc	a0,0x7
    8000261c:	c3850513          	addi	a0,a0,-968 # 80009250 <CONSOLE_STATUS+0x240>
    80002620:	00003097          	auipc	ra,0x3
    80002624:	544080e7          	jalr	1348(ra) # 80005b64 <_Z11printStringPKc>
            break;
    80002628:	f7dff06f          	j	800025a4 <_Z8userMainv+0x80>
            System_Mode_test();
    8000262c:	00004097          	auipc	ra,0x4
    80002630:	218080e7          	jalr	536(ra) # 80006844 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80002634:	00007517          	auipc	a0,0x7
    80002638:	c7450513          	addi	a0,a0,-908 # 800092a8 <CONSOLE_STATUS+0x298>
    8000263c:	00003097          	auipc	ra,0x3
    80002640:	528080e7          	jalr	1320(ra) # 80005b64 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80002644:	00007517          	auipc	a0,0x7
    80002648:	c8450513          	addi	a0,a0,-892 # 800092c8 <CONSOLE_STATUS+0x2b8>
    8000264c:	00003097          	auipc	ra,0x3
    80002650:	518080e7          	jalr	1304(ra) # 80005b64 <_Z11printStringPKc>
            break;
    80002654:	f51ff06f          	j	800025a4 <_Z8userMainv+0x80>
            ThreadPairTest();
    80002658:	00001097          	auipc	ra,0x1
    8000265c:	188080e7          	jalr	392(ra) # 800037e0 <_Z14ThreadPairTestv>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80002660:	00007517          	auipc	a0,0x7
    80002664:	c6850513          	addi	a0,a0,-920 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80002668:	00003097          	auipc	ra,0x3
    8000266c:	4fc080e7          	jalr	1276(ra) # 80005b64 <_Z11printStringPKc>
            break;
    80002670:	f35ff06f          	j	800025a4 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80002674:	00007517          	auipc	a0,0x7
    80002678:	cac50513          	addi	a0,a0,-852 # 80009320 <CONSOLE_STATUS+0x310>
    8000267c:	00003097          	auipc	ra,0x3
    80002680:	4e8080e7          	jalr	1256(ra) # 80005b64 <_Z11printStringPKc>
    80002684:	f21ff06f          	j	800025a4 <_Z8userMainv+0x80>

0000000080002688 <_ZN9Scheduler3putEP7_thread>:
#include "../h/Thread.hpp"

_thread* Scheduler::head = nullptr;
_thread* Scheduler::tail = nullptr;

void Scheduler::put(_thread* thread) {
    80002688:	ff010113          	addi	sp,sp,-16
    8000268c:	00813423          	sd	s0,8(sp)
    80002690:	01010413          	addi	s0,sp,16
    if (thread == nullptr) {
    80002694:	04050063          	beqz	a0,800026d4 <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    if (thread->state == _thread::FINISHED || thread->state == _thread::BLOCKED) {
    80002698:	09052783          	lw	a5,144(a0)
    8000269c:	ffd7879b          	addiw	a5,a5,-3
    800026a0:	00100713          	li	a4,1
    800026a4:	02f77863          	bgeu	a4,a5,800026d4 <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    thread->state = _thread::READY;
    800026a8:	00100793          	li	a5,1
    800026ac:	08f52823          	sw	a5,144(a0)
    thread->next = nullptr;
    800026b0:	08053c23          	sd	zero,152(a0)

    if (head == nullptr) {
    800026b4:	00009797          	auipc	a5,0x9
    800026b8:	7347b783          	ld	a5,1844(a5) # 8000bde8 <_ZN9Scheduler4headE>
    800026bc:	02078263          	beqz	a5,800026e0 <_ZN9Scheduler3putEP7_thread+0x58>
        head = thread;
        tail = thread;
    } else {
        tail->next = thread;
    800026c0:	00009797          	auipc	a5,0x9
    800026c4:	72878793          	addi	a5,a5,1832 # 8000bde8 <_ZN9Scheduler4headE>
    800026c8:	0087b703          	ld	a4,8(a5)
    800026cc:	08a73c23          	sd	a0,152(a4)
        tail = thread;
    800026d0:	00a7b423          	sd	a0,8(a5)
    }
}
    800026d4:	00813403          	ld	s0,8(sp)
    800026d8:	01010113          	addi	sp,sp,16
    800026dc:	00008067          	ret
        head = thread;
    800026e0:	00009797          	auipc	a5,0x9
    800026e4:	70878793          	addi	a5,a5,1800 # 8000bde8 <_ZN9Scheduler4headE>
    800026e8:	00a7b023          	sd	a0,0(a5)
        tail = thread;
    800026ec:	00a7b423          	sd	a0,8(a5)
    800026f0:	fe5ff06f          	j	800026d4 <_ZN9Scheduler3putEP7_thread+0x4c>

00000000800026f4 <_ZN9Scheduler3getEv>:

_thread* Scheduler::get() {
    800026f4:	ff010113          	addi	sp,sp,-16
    800026f8:	00813423          	sd	s0,8(sp)
    800026fc:	01010413          	addi	s0,sp,16
    if (head == nullptr) {
    80002700:	00009517          	auipc	a0,0x9
    80002704:	6e853503          	ld	a0,1768(a0) # 8000bde8 <_ZN9Scheduler4headE>
    80002708:	00050c63          	beqz	a0,80002720 <_ZN9Scheduler3getEv+0x2c>
        return nullptr;
    }

    _thread* thread = head;

    head = head->next;
    8000270c:	09853783          	ld	a5,152(a0)
    80002710:	00009717          	auipc	a4,0x9
    80002714:	6cf73c23          	sd	a5,1752(a4) # 8000bde8 <_ZN9Scheduler4headE>

    if (head == nullptr) {
    80002718:	00078a63          	beqz	a5,8000272c <_ZN9Scheduler3getEv+0x38>
        tail = nullptr;
    }

    thread->next = nullptr;
    8000271c:	08053c23          	sd	zero,152(a0)

    return thread;
}
    80002720:	00813403          	ld	s0,8(sp)
    80002724:	01010113          	addi	sp,sp,16
    80002728:	00008067          	ret
        tail = nullptr;
    8000272c:	00009797          	auipc	a5,0x9
    80002730:	6c07b223          	sd	zero,1732(a5) # 8000bdf0 <_ZN9Scheduler4tailE>
    80002734:	fe9ff06f          	j	8000271c <_ZN9Scheduler3getEv+0x28>

0000000080002738 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    80002738:	ff010113          	addi	sp,sp,-16
    8000273c:	00813423          	sd	s0,8(sp)
    80002740:	01010413          	addi	s0,sp,16
    return head == nullptr;
    80002744:	00009517          	auipc	a0,0x9
    80002748:	6a453503          	ld	a0,1700(a0) # 8000bde8 <_ZN9Scheduler4headE>
    8000274c:	00153513          	seqz	a0,a0
    80002750:	00813403          	ld	s0,8(sp)
    80002754:	01010113          	addi	sp,sp,16
    80002758:	00008067          	ret

000000008000275c <_Znwm>:
#include "../h/new.hpp"
#include "../h/syscall_c.hpp"

void* operator new(size_t size) {
    8000275c:	ff010113          	addi	sp,sp,-16
    80002760:	00113423          	sd	ra,8(sp)
    80002764:	00813023          	sd	s0,0(sp)
    80002768:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000276c:	fffff097          	auipc	ra,0xfffff
    80002770:	a8c080e7          	jalr	-1396(ra) # 800011f8 <_Z9mem_allocm>
}
    80002774:	00813083          	ld	ra,8(sp)
    80002778:	00013403          	ld	s0,0(sp)
    8000277c:	01010113          	addi	sp,sp,16
    80002780:	00008067          	ret

0000000080002784 <_Znam>:

void* operator new[](size_t size) {
    80002784:	ff010113          	addi	sp,sp,-16
    80002788:	00113423          	sd	ra,8(sp)
    8000278c:	00813023          	sd	s0,0(sp)
    80002790:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002794:	fffff097          	auipc	ra,0xfffff
    80002798:	a64080e7          	jalr	-1436(ra) # 800011f8 <_Z9mem_allocm>
}
    8000279c:	00813083          	ld	ra,8(sp)
    800027a0:	00013403          	ld	s0,0(sp)
    800027a4:	01010113          	addi	sp,sp,16
    800027a8:	00008067          	ret

00000000800027ac <_ZdlPv>:

void operator delete(void* ptr) {
    800027ac:	ff010113          	addi	sp,sp,-16
    800027b0:	00113423          	sd	ra,8(sp)
    800027b4:	00813023          	sd	s0,0(sp)
    800027b8:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800027bc:	fffff097          	auipc	ra,0xfffff
    800027c0:	a88080e7          	jalr	-1400(ra) # 80001244 <_Z8mem_freePv>
}
    800027c4:	00813083          	ld	ra,8(sp)
    800027c8:	00013403          	ld	s0,0(sp)
    800027cc:	01010113          	addi	sp,sp,16
    800027d0:	00008067          	ret

00000000800027d4 <_ZdaPv>:

void operator delete[](void* ptr) {
    800027d4:	ff010113          	addi	sp,sp,-16
    800027d8:	00113423          	sd	ra,8(sp)
    800027dc:	00813023          	sd	s0,0(sp)
    800027e0:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800027e4:	fffff097          	auipc	ra,0xfffff
    800027e8:	a60080e7          	jalr	-1440(ra) # 80001244 <_Z8mem_freePv>
    800027ec:	00813083          	ld	ra,8(sp)
    800027f0:	00013403          	ld	s0,0(sp)
    800027f4:	01010113          	addi	sp,sp,16
    800027f8:	00008067          	ret

00000000800027fc <_ZL15userMainWrapperPv>:
extern "C" void supervisorTrap();
extern void userMain();

static volatile bool userMainFinished = false;

static void userMainWrapper(void*) {
    800027fc:	ff010113          	addi	sp,sp,-16
    80002800:	00113423          	sd	ra,8(sp)
    80002804:	00813023          	sd	s0,0(sp)
    80002808:	01010413          	addi	s0,sp,16
    userMain();
    8000280c:	00000097          	auipc	ra,0x0
    80002810:	d18080e7          	jalr	-744(ra) # 80002524 <_Z8userMainv>
    userMainFinished = true;
    80002814:	00100793          	li	a5,1
    80002818:	00009717          	auipc	a4,0x9
    8000281c:	5ef70023          	sb	a5,1504(a4) # 8000bdf8 <_ZL16userMainFinished>
    thread_exit();
    80002820:	fffff097          	auipc	ra,0xfffff
    80002824:	b28080e7          	jalr	-1240(ra) # 80001348 <_Z11thread_exitv>
}
    80002828:	00813083          	ld	ra,8(sp)
    8000282c:	00013403          	ld	s0,0(sp)
    80002830:	01010113          	addi	sp,sp,16
    80002834:	00008067          	ret

0000000080002838 <main>:

int main() {
    80002838:	f1010113          	addi	sp,sp,-240
    8000283c:	0e113423          	sd	ra,232(sp)
    80002840:	0e813023          	sd	s0,224(sp)
    80002844:	0c913c23          	sd	s1,216(sp)
    80002848:	0f010413          	addi	s0,sp,240
    Riscv::w_stvec((uint64)&supervisorTrap);
    8000284c:	00009797          	auipc	a5,0x9
    80002850:	52c7b783          	ld	a5,1324(a5) # 8000bd78 <_GLOBAL_OFFSET_TABLE_+0x18>
        asm volatile("csrw stvec, %0" : : "r"(x));//adresa prekidne rutine, da bi skocilo na supervisorTrap
    80002854:	10579073          	csrw	stvec,a5
        asm volatile("csrs sstatus, %0" : : "r"(mask));//omoguci prekide
    80002858:	00200793          	li	a5,2
    8000285c:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    _thread mainThread(nullptr, nullptr, nullptr);//poziv konstruktora
    80002860:	00000693          	li	a3,0
    80002864:	00000613          	li	a2,0
    80002868:	00000593          	li	a1,0
    8000286c:	f1840493          	addi	s1,s0,-232
    80002870:	00048513          	mv	a0,s1
    80002874:	fffff097          	auipc	ra,0xfffff
    80002878:	760080e7          	jalr	1888(ra) # 80001fd4 <_ZN7_threadC1EPFvPvES0_S0_>
    mainThread.setState(_thread::RUNNING);
    8000287c:	00200593          	li	a1,2
    80002880:	00048513          	mv	a0,s1
    80002884:	00000097          	auipc	ra,0x0
    80002888:	aa0080e7          	jalr	-1376(ra) # 80002324 <_ZN7_thread8setStateENS_5StateE>
    _thread::running = &mainThread;//pravimo main nit zbog dispatch-a, jer nemamo running na pocetku, i scheduler radi samo sa _thread
    8000288c:	00009797          	auipc	a5,0x9
    80002890:	4e47b783          	ld	a5,1252(a5) # 8000bd70 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002894:	0097b023          	sd	s1,0(a5)

    thread_t userThread = nullptr;
    80002898:	f0043823          	sd	zero,-240(s0)
    int ret = thread_create(&userThread, userMainWrapper, nullptr);
    8000289c:	00000613          	li	a2,0
    800028a0:	00000597          	auipc	a1,0x0
    800028a4:	f5c58593          	addi	a1,a1,-164 # 800027fc <_ZL15userMainWrapperPv>
    800028a8:	f1040513          	addi	a0,s0,-240
    800028ac:	fffff097          	auipc	ra,0xfffff
    800028b0:	9d8080e7          	jalr	-1576(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>

    if (ret < 0 || userThread == nullptr) {
    800028b4:	00054663          	bltz	a0,800028c0 <main+0x88>
    800028b8:	f1043783          	ld	a5,-240(s0)
    800028bc:	02079063          	bnez	a5,800028dc <main+0xa4>
        volatile uint32* qemu = (uint32*)0x100000;
        *qemu = 0x5555;
    800028c0:	00100737          	lui	a4,0x100
    800028c4:	000057b7          	lui	a5,0x5
    800028c8:	5557879b          	addiw	a5,a5,1365
    800028cc:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
        return ret;
    800028d0:	02c0006f          	j	800028fc <main+0xc4>
    }

    while (!userMainFinished) {
        thread_dispatch();
    800028d4:	fffff097          	auipc	ra,0xfffff
    800028d8:	ab4080e7          	jalr	-1356(ra) # 80001388 <_Z15thread_dispatchv>
    while (!userMainFinished) {
    800028dc:	00009797          	auipc	a5,0x9
    800028e0:	51c7c783          	lbu	a5,1308(a5) # 8000bdf8 <_ZL16userMainFinished>
    800028e4:	fe0788e3          	beqz	a5,800028d4 <main+0x9c>
    }

    volatile uint32* qemu = (uint32*)0x100000;
    *qemu = 0x5555;
    800028e8:	00100737          	lui	a4,0x100
    800028ec:	000057b7          	lui	a5,0x5
    800028f0:	5557879b          	addiw	a5,a5,1365
    800028f4:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>

    return 0;
    800028f8:	00000513          	li	a0,0
    800028fc:	0e813083          	ld	ra,232(sp)
    80002900:	0e013403          	ld	s0,224(sp)
    80002904:	0d813483          	ld	s1,216(sp)
    80002908:	0f010113          	addi	sp,sp,240
    8000290c:	00008067          	ret

0000000080002910 <_ZN6ThreadD1Ev>:
    this->myHandle = nullptr;
    this->body = nullptr;
    this->arg = nullptr;
}

Thread::~Thread() {
    80002910:	ff010113          	addi	sp,sp,-16
    80002914:	00813423          	sd	s0,8(sp)
    80002918:	01010413          	addi	s0,sp,16
}
    8000291c:	00813403          	ld	s0,8(sp)
    80002920:	01010113          	addi	sp,sp,16
    80002924:	00008067          	ret

0000000080002928 <_ZN6Thread13threadWrapperEPv>:
}

void Thread::threadWrapper(void* thread) {
    Thread* t = (Thread*)thread;

    if (t != nullptr) {
    80002928:	02050863          	beqz	a0,80002958 <_ZN6Thread13threadWrapperEPv+0x30>
void Thread::threadWrapper(void* thread) {
    8000292c:	ff010113          	addi	sp,sp,-16
    80002930:	00113423          	sd	ra,8(sp)
    80002934:	00813023          	sd	s0,0(sp)
    80002938:	01010413          	addi	s0,sp,16
        t->run();
    8000293c:	00053783          	ld	a5,0(a0)
    80002940:	0107b783          	ld	a5,16(a5) # 5010 <_entry-0x7fffaff0>
    80002944:	000780e7          	jalr	a5
    }
}
    80002948:	00813083          	ld	ra,8(sp)
    8000294c:	00013403          	ld	s0,0(sp)
    80002950:	01010113          	addi	sp,sp,16
    80002954:	00008067          	ret
    80002958:	00008067          	ret

000000008000295c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    8000295c:	ff010113          	addi	sp,sp,-16
    80002960:	00113423          	sd	ra,8(sp)
    80002964:	00813023          	sd	s0,0(sp)
    80002968:	01010413          	addi	s0,sp,16
}
    8000296c:	00000097          	auipc	ra,0x0
    80002970:	e40080e7          	jalr	-448(ra) # 800027ac <_ZdlPv>
    80002974:	00813083          	ld	ra,8(sp)
    80002978:	00013403          	ld	s0,0(sp)
    8000297c:	01010113          	addi	sp,sp,16
    80002980:	00008067          	ret

0000000080002984 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80002984:	00009797          	auipc	a5,0x9
    80002988:	1cc78793          	addi	a5,a5,460 # 8000bb50 <_ZTV9Semaphore+0x10>
    8000298c:	00f53023          	sd	a5,0(a0)
    if (myHandle != nullptr) {
    80002990:	00853503          	ld	a0,8(a0)
    80002994:	02050663          	beqz	a0,800029c0 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80002998:	ff010113          	addi	sp,sp,-16
    8000299c:	00113423          	sd	ra,8(sp)
    800029a0:	00813023          	sd	s0,0(sp)
    800029a4:	01010413          	addi	s0,sp,16
        sem_close(myHandle);
    800029a8:	fffff097          	auipc	ra,0xfffff
    800029ac:	b20080e7          	jalr	-1248(ra) # 800014c8 <_Z9sem_closeP4_sem>
    }
}
    800029b0:	00813083          	ld	ra,8(sp)
    800029b4:	00013403          	ld	s0,0(sp)
    800029b8:	01010113          	addi	sp,sp,16
    800029bc:	00008067          	ret
    800029c0:	00008067          	ret

00000000800029c4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800029c4:	fe010113          	addi	sp,sp,-32
    800029c8:	00113c23          	sd	ra,24(sp)
    800029cc:	00813823          	sd	s0,16(sp)
    800029d0:	00913423          	sd	s1,8(sp)
    800029d4:	02010413          	addi	s0,sp,32
    800029d8:	00050493          	mv	s1,a0
}
    800029dc:	00000097          	auipc	ra,0x0
    800029e0:	fa8080e7          	jalr	-88(ra) # 80002984 <_ZN9SemaphoreD1Ev>
    800029e4:	00048513          	mv	a0,s1
    800029e8:	00000097          	auipc	ra,0x0
    800029ec:	dc4080e7          	jalr	-572(ra) # 800027ac <_ZdlPv>
    800029f0:	01813083          	ld	ra,24(sp)
    800029f4:	01013403          	ld	s0,16(sp)
    800029f8:	00813483          	ld	s1,8(sp)
    800029fc:	02010113          	addi	sp,sp,32
    80002a00:	00008067          	ret

0000000080002a04 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    80002a04:	ff010113          	addi	sp,sp,-16
    80002a08:	00813423          	sd	s0,8(sp)
    80002a0c:	01010413          	addi	s0,sp,16
    80002a10:	00009797          	auipc	a5,0x9
    80002a14:	11878793          	addi	a5,a5,280 # 8000bb28 <_ZTV6Thread+0x10>
    80002a18:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80002a1c:	00053423          	sd	zero,8(a0)
    this->body = body;
    80002a20:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80002a24:	00c53c23          	sd	a2,24(a0)
}
    80002a28:	00813403          	ld	s0,8(sp)
    80002a2c:	01010113          	addi	sp,sp,16
    80002a30:	00008067          	ret

0000000080002a34 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002a34:	ff010113          	addi	sp,sp,-16
    80002a38:	00813423          	sd	s0,8(sp)
    80002a3c:	01010413          	addi	s0,sp,16
    80002a40:	00009797          	auipc	a5,0x9
    80002a44:	0e878793          	addi	a5,a5,232 # 8000bb28 <_ZTV6Thread+0x10>
    80002a48:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80002a4c:	00053423          	sd	zero,8(a0)
    this->body = nullptr;
    80002a50:	00053823          	sd	zero,16(a0)
    this->arg = nullptr;
    80002a54:	00053c23          	sd	zero,24(a0)
}
    80002a58:	00813403          	ld	s0,8(sp)
    80002a5c:	01010113          	addi	sp,sp,16
    80002a60:	00008067          	ret

0000000080002a64 <_ZN6Thread5startEv>:
int Thread::start() {
    80002a64:	ff010113          	addi	sp,sp,-16
    80002a68:	00113423          	sd	ra,8(sp)
    80002a6c:	00813023          	sd	s0,0(sp)
    80002a70:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    80002a74:	01053583          	ld	a1,16(a0)
    80002a78:	02058263          	beqz	a1,80002a9c <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    80002a7c:	01853603          	ld	a2,24(a0)
    80002a80:	00850513          	addi	a0,a0,8
    80002a84:	fffff097          	auipc	ra,0xfffff
    80002a88:	800080e7          	jalr	-2048(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80002a8c:	00813083          	ld	ra,8(sp)
    80002a90:	00013403          	ld	s0,0(sp)
    80002a94:	01010113          	addi	sp,sp,16
    80002a98:	00008067          	ret
    return thread_create(&myHandle, Thread::threadWrapper, this);//kada korisnik ocekuje da se izvrsi run(), pa se u thread wrapper poziva run
    80002a9c:	00050613          	mv	a2,a0
    80002aa0:	00000597          	auipc	a1,0x0
    80002aa4:	e8858593          	addi	a1,a1,-376 # 80002928 <_ZN6Thread13threadWrapperEPv>
    80002aa8:	00850513          	addi	a0,a0,8
    80002aac:	ffffe097          	auipc	ra,0xffffe
    80002ab0:	7d8080e7          	jalr	2008(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    80002ab4:	fd9ff06f          	j	80002a8c <_ZN6Thread5startEv+0x28>

0000000080002ab8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002ab8:	ff010113          	addi	sp,sp,-16
    80002abc:	00113423          	sd	ra,8(sp)
    80002ac0:	00813023          	sd	s0,0(sp)
    80002ac4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002ac8:	fffff097          	auipc	ra,0xfffff
    80002acc:	8c0080e7          	jalr	-1856(ra) # 80001388 <_Z15thread_dispatchv>
}
    80002ad0:	00813083          	ld	ra,8(sp)
    80002ad4:	00013403          	ld	s0,0(sp)
    80002ad8:	01010113          	addi	sp,sp,16
    80002adc:	00008067          	ret

0000000080002ae0 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002ae0:	ff010113          	addi	sp,sp,-16
    80002ae4:	00113423          	sd	ra,8(sp)
    80002ae8:	00813023          	sd	s0,0(sp)
    80002aec:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002af0:	fffff097          	auipc	ra,0xfffff
    80002af4:	b20080e7          	jalr	-1248(ra) # 80001610 <_Z10time_sleepm>
}
    80002af8:	00813083          	ld	ra,8(sp)
    80002afc:	00013403          	ld	s0,0(sp)
    80002b00:	01010113          	addi	sp,sp,16
    80002b04:	00008067          	ret

0000000080002b08 <_ZN6Thread4pairEPS_S0_>:
    if (t1 == nullptr || t2 == nullptr) {
    80002b08:	02050c63          	beqz	a0,80002b40 <_ZN6Thread4pairEPS_S0_+0x38>
    80002b0c:	02058a63          	beqz	a1,80002b40 <_ZN6Thread4pairEPS_S0_+0x38>
void Thread::pair(Thread* t1, Thread* t2) {
    80002b10:	ff010113          	addi	sp,sp,-16
    80002b14:	00113423          	sd	ra,8(sp)
    80002b18:	00813023          	sd	s0,0(sp)
    80002b1c:	01010413          	addi	s0,sp,16
    thread_pair(t1->myHandle, t2->myHandle);
    80002b20:	0085b583          	ld	a1,8(a1)
    80002b24:	00853503          	ld	a0,8(a0)
    80002b28:	fffff097          	auipc	ra,0xfffff
    80002b2c:	89c080e7          	jalr	-1892(ra) # 800013c4 <_Z11thread_pairP7_threadS0_>
}
    80002b30:	00813083          	ld	ra,8(sp)
    80002b34:	00013403          	ld	s0,0(sp)
    80002b38:	01010113          	addi	sp,sp,16
    80002b3c:	00008067          	ret
    80002b40:	00008067          	ret

0000000080002b44 <_ZN6Thread4syncEv>:
void Thread::sync() {
    80002b44:	ff010113          	addi	sp,sp,-16
    80002b48:	00113423          	sd	ra,8(sp)
    80002b4c:	00813023          	sd	s0,0(sp)
    80002b50:	01010413          	addi	s0,sp,16
    thread_sync();
    80002b54:	fffff097          	auipc	ra,0xfffff
    80002b58:	8b0080e7          	jalr	-1872(ra) # 80001404 <_Z11thread_syncv>
}
    80002b5c:	00813083          	ld	ra,8(sp)
    80002b60:	00013403          	ld	s0,0(sp)
    80002b64:	01010113          	addi	sp,sp,16
    80002b68:	00008067          	ret

0000000080002b6c <_ZN6Thread11getThreadIdEv>:
int Thread::getThreadId() {
    80002b6c:	ff010113          	addi	sp,sp,-16
    80002b70:	00113423          	sd	ra,8(sp)
    80002b74:	00813023          	sd	s0,0(sp)
    80002b78:	01010413          	addi	s0,sp,16
    return ::getThreadId();
    80002b7c:	fffff097          	auipc	ra,0xfffff
    80002b80:	8c8080e7          	jalr	-1848(ra) # 80001444 <_Z11getThreadIdv>
}
    80002b84:	00813083          	ld	ra,8(sp)
    80002b88:	00013403          	ld	s0,0(sp)
    80002b8c:	01010113          	addi	sp,sp,16
    80002b90:	00008067          	ret

0000000080002b94 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80002b94:	ff010113          	addi	sp,sp,-16
    80002b98:	00113423          	sd	ra,8(sp)
    80002b9c:	00813023          	sd	s0,0(sp)
    80002ba0:	01010413          	addi	s0,sp,16
    80002ba4:	00009797          	auipc	a5,0x9
    80002ba8:	fac78793          	addi	a5,a5,-84 # 8000bb50 <_ZTV9Semaphore+0x10>
    80002bac:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002bb0:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002bb4:	00850513          	addi	a0,a0,8
    80002bb8:	fffff097          	auipc	ra,0xfffff
    80002bbc:	8cc080e7          	jalr	-1844(ra) # 80001484 <_Z8sem_openPP4_semj>
}
    80002bc0:	00813083          	ld	ra,8(sp)
    80002bc4:	00013403          	ld	s0,0(sp)
    80002bc8:	01010113          	addi	sp,sp,16
    80002bcc:	00008067          	ret

0000000080002bd0 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002bd0:	ff010113          	addi	sp,sp,-16
    80002bd4:	00113423          	sd	ra,8(sp)
    80002bd8:	00813023          	sd	s0,0(sp)
    80002bdc:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002be0:	00853503          	ld	a0,8(a0)
    80002be4:	fffff097          	auipc	ra,0xfffff
    80002be8:	924080e7          	jalr	-1756(ra) # 80001508 <_Z8sem_waitP4_sem>
}
    80002bec:	00813083          	ld	ra,8(sp)
    80002bf0:	00013403          	ld	s0,0(sp)
    80002bf4:	01010113          	addi	sp,sp,16
    80002bf8:	00008067          	ret

0000000080002bfc <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002bfc:	ff010113          	addi	sp,sp,-16
    80002c00:	00113423          	sd	ra,8(sp)
    80002c04:	00813023          	sd	s0,0(sp)
    80002c08:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002c0c:	00853503          	ld	a0,8(a0)
    80002c10:	fffff097          	auipc	ra,0xfffff
    80002c14:	938080e7          	jalr	-1736(ra) # 80001548 <_Z10sem_signalP4_sem>
}
    80002c18:	00813083          	ld	ra,8(sp)
    80002c1c:	00013403          	ld	s0,0(sp)
    80002c20:	01010113          	addi	sp,sp,16
    80002c24:	00008067          	ret

0000000080002c28 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    80002c28:	fe010113          	addi	sp,sp,-32
    80002c2c:	00113c23          	sd	ra,24(sp)
    80002c30:	00813823          	sd	s0,16(sp)
    80002c34:	00913423          	sd	s1,8(sp)
    80002c38:	01213023          	sd	s2,0(sp)
    80002c3c:	02010413          	addi	s0,sp,32
    80002c40:	00050493          	mv	s1,a0
    80002c44:	00058913          	mv	s2,a1
    80002c48:	00000097          	auipc	ra,0x0
    80002c4c:	dec080e7          	jalr	-532(ra) # 80002a34 <_ZN6ThreadC1Ev>
    80002c50:	00009797          	auipc	a5,0x9
    80002c54:	ea878793          	addi	a5,a5,-344 # 8000baf8 <_ZTV14PeriodicThread+0x10>
    80002c58:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80002c5c:	0324b023          	sd	s2,32(s1)
}
    80002c60:	01813083          	ld	ra,24(sp)
    80002c64:	01013403          	ld	s0,16(sp)
    80002c68:	00813483          	ld	s1,8(sp)
    80002c6c:	00013903          	ld	s2,0(sp)
    80002c70:	02010113          	addi	sp,sp,32
    80002c74:	00008067          	ret

0000000080002c78 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002c78:	ff010113          	addi	sp,sp,-16
    80002c7c:	00813423          	sd	s0,8(sp)
    80002c80:	01010413          	addi	s0,sp,16
    /*
     * PeriodicThread je deo zadatka 4.
     * Pošto ga ne radiš, ovo ostaje prazno.
     */
}
    80002c84:	00813403          	ld	s0,8(sp)
    80002c88:	01010113          	addi	sp,sp,16
    80002c8c:	00008067          	ret

0000000080002c90 <_ZN7Console4getcEv>:

char Console::getc() {
    80002c90:	ff010113          	addi	sp,sp,-16
    80002c94:	00113423          	sd	ra,8(sp)
    80002c98:	00813023          	sd	s0,0(sp)
    80002c9c:	01010413          	addi	s0,sp,16
    return ::getc();
    80002ca0:	fffff097          	auipc	ra,0xfffff
    80002ca4:	9b0080e7          	jalr	-1616(ra) # 80001650 <_Z4getcv>
}
    80002ca8:	00813083          	ld	ra,8(sp)
    80002cac:	00013403          	ld	s0,0(sp)
    80002cb0:	01010113          	addi	sp,sp,16
    80002cb4:	00008067          	ret

0000000080002cb8 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002cb8:	ff010113          	addi	sp,sp,-16
    80002cbc:	00113423          	sd	ra,8(sp)
    80002cc0:	00813023          	sd	s0,0(sp)
    80002cc4:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002cc8:	fffff097          	auipc	ra,0xfffff
    80002ccc:	9c8080e7          	jalr	-1592(ra) # 80001690 <_Z4putcc>
    80002cd0:	00813083          	ld	ra,8(sp)
    80002cd4:	00013403          	ld	s0,0(sp)
    80002cd8:	01010113          	addi	sp,sp,16
    80002cdc:	00008067          	ret

0000000080002ce0 <_ZN6Thread3runEv>:
    static int getThreadId();

protected:
    Thread();

    virtual void run() {}
    80002ce0:	ff010113          	addi	sp,sp,-16
    80002ce4:	00813423          	sd	s0,8(sp)
    80002ce8:	01010413          	addi	s0,sp,16
    80002cec:	00813403          	ld	s0,8(sp)
    80002cf0:	01010113          	addi	sp,sp,16
    80002cf4:	00008067          	ret

0000000080002cf8 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate();

protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    80002cf8:	ff010113          	addi	sp,sp,-16
    80002cfc:	00813423          	sd	s0,8(sp)
    80002d00:	01010413          	addi	s0,sp,16
    80002d04:	00813403          	ld	s0,8(sp)
    80002d08:	01010113          	addi	sp,sp,16
    80002d0c:	00008067          	ret

0000000080002d10 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002d10:	ff010113          	addi	sp,sp,-16
    80002d14:	00813423          	sd	s0,8(sp)
    80002d18:	01010413          	addi	s0,sp,16
    80002d1c:	00009797          	auipc	a5,0x9
    80002d20:	ddc78793          	addi	a5,a5,-548 # 8000baf8 <_ZTV14PeriodicThread+0x10>
    80002d24:	00f53023          	sd	a5,0(a0)
    80002d28:	00813403          	ld	s0,8(sp)
    80002d2c:	01010113          	addi	sp,sp,16
    80002d30:	00008067          	ret

0000000080002d34 <_ZN14PeriodicThreadD0Ev>:
    80002d34:	ff010113          	addi	sp,sp,-16
    80002d38:	00113423          	sd	ra,8(sp)
    80002d3c:	00813023          	sd	s0,0(sp)
    80002d40:	01010413          	addi	s0,sp,16
    80002d44:	00009797          	auipc	a5,0x9
    80002d48:	db478793          	addi	a5,a5,-588 # 8000baf8 <_ZTV14PeriodicThread+0x10>
    80002d4c:	00f53023          	sd	a5,0(a0)
    80002d50:	00000097          	auipc	ra,0x0
    80002d54:	a5c080e7          	jalr	-1444(ra) # 800027ac <_ZdlPv>
    80002d58:	00813083          	ld	ra,8(sp)
    80002d5c:	00013403          	ld	s0,0(sp)
    80002d60:	01010113          	addi	sp,sp,16
    80002d64:	00008067          	ret

0000000080002d68 <_ZN15MemoryAllocatorC1Ev>:
#include "../h/MemoryAllocator.hpp"

MemoryAllocator::MemoryAllocator() : freeHead(nullptr), initialized(false) {}
    80002d68:	ff010113          	addi	sp,sp,-16
    80002d6c:	00813423          	sd	s0,8(sp)
    80002d70:	01010413          	addi	s0,sp,16
    80002d74:	00053023          	sd	zero,0(a0)
    80002d78:	00050423          	sb	zero,8(a0)
    80002d7c:	00813403          	ld	s0,8(sp)
    80002d80:	01010113          	addi	sp,sp,16
    80002d84:	00008067          	ret

0000000080002d88 <_Z41__static_initialization_and_destruction_0ii>:
            block->next->prev = block;
        }
        nextBlock->next = nullptr;
        nextBlock->prev = nullptr;
    }
    80002d88:	00100793          	li	a5,1
    80002d8c:	00f50463          	beq	a0,a5,80002d94 <_Z41__static_initialization_and_destruction_0ii+0xc>
    80002d90:	00008067          	ret
    80002d94:	000107b7          	lui	a5,0x10
    80002d98:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002d9c:	fef59ae3          	bne	a1,a5,80002d90 <_Z41__static_initialization_and_destruction_0ii+0x8>
    80002da0:	ff010113          	addi	sp,sp,-16
    80002da4:	00113423          	sd	ra,8(sp)
    80002da8:	00813023          	sd	s0,0(sp)
    80002dac:	01010413          	addi	s0,sp,16
MemoryAllocator MemoryAllocator::instance;
    80002db0:	00009517          	auipc	a0,0x9
    80002db4:	05050513          	addi	a0,a0,80 # 8000be00 <_ZN15MemoryAllocator8instanceE>
    80002db8:	00000097          	auipc	ra,0x0
    80002dbc:	fb0080e7          	jalr	-80(ra) # 80002d68 <_ZN15MemoryAllocatorC1Ev>
    80002dc0:	00813083          	ld	ra,8(sp)
    80002dc4:	00013403          	ld	s0,0(sp)
    80002dc8:	01010113          	addi	sp,sp,16
    80002dcc:	00008067          	ret

0000000080002dd0 <_ZN15MemoryAllocator11getInstanceEv>:
MemoryAllocator& MemoryAllocator::getInstance() {
    80002dd0:	ff010113          	addi	sp,sp,-16
    80002dd4:	00813423          	sd	s0,8(sp)
    80002dd8:	01010413          	addi	s0,sp,16
}
    80002ddc:	00009517          	auipc	a0,0x9
    80002de0:	02450513          	addi	a0,a0,36 # 8000be00 <_ZN15MemoryAllocator8instanceE>
    80002de4:	00813403          	ld	s0,8(sp)
    80002de8:	01010113          	addi	sp,sp,16
    80002dec:	00008067          	ret

0000000080002df0 <_ZN15MemoryAllocator4initEv>:
void MemoryAllocator::init() {
    80002df0:	ff010113          	addi	sp,sp,-16
    80002df4:	00813423          	sd	s0,8(sp)
    80002df8:	01010413          	addi	s0,sp,16
    if (initialized) return;
    80002dfc:	00854783          	lbu	a5,8(a0)
    80002e00:	04079263          	bnez	a5,80002e44 <_ZN15MemoryAllocator4initEv+0x54>
    uint64 heapStart = (uint64) HEAP_START_ADDR;
    80002e04:	00009797          	auipc	a5,0x9
    80002e08:	f647b783          	ld	a5,-156(a5) # 8000bd68 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002e0c:	0007b703          	ld	a4,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002e10:	00009797          	auipc	a5,0x9
    80002e14:	f787b783          	ld	a5,-136(a5) # 8000bd88 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002e18:	0007b783          	ld	a5,0(a5)
    size_t heapSize = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002e1c:	40e787b3          	sub	a5,a5,a4
    80002e20:	0067d793          	srli	a5,a5,0x6
    freeHead = (FreeBlock*) heapStart;
    80002e24:	00e53023          	sd	a4,0(a0)
    freeHead->size = heapSize;
    80002e28:	00f73023          	sd	a5,0(a4)
    freeHead->next = nullptr;
    80002e2c:	00053783          	ld	a5,0(a0)
    80002e30:	0007b423          	sd	zero,8(a5)
    freeHead->prev = nullptr;
    80002e34:	00053783          	ld	a5,0(a0)
    80002e38:	0007b823          	sd	zero,16(a5)
    initialized = true;
    80002e3c:	00100793          	li	a5,1
    80002e40:	00f50423          	sb	a5,8(a0)
}
    80002e44:	00813403          	ld	s0,8(sp)
    80002e48:	01010113          	addi	sp,sp,16
    80002e4c:	00008067          	ret

0000000080002e50 <_ZN15MemoryAllocator6mallocEm>:
void* MemoryAllocator::malloc(size_t numBlocks) {
    80002e50:	fe010113          	addi	sp,sp,-32
    80002e54:	00113c23          	sd	ra,24(sp)
    80002e58:	00813823          	sd	s0,16(sp)
    80002e5c:	00913423          	sd	s1,8(sp)
    80002e60:	01213023          	sd	s2,0(sp)
    80002e64:	02010413          	addi	s0,sp,32
    80002e68:	00050913          	mv	s2,a0
    80002e6c:	00058493          	mv	s1,a1
    init();
    80002e70:	00000097          	auipc	ra,0x0
    80002e74:	f80080e7          	jalr	-128(ra) # 80002df0 <_ZN15MemoryAllocator4initEv>
    if (numBlocks == 0) return nullptr;
    80002e78:	0c048863          	beqz	s1,80002f48 <_ZN15MemoryAllocator6mallocEm+0xf8>
    size_t neededBlocks = numBlocks + 1;
    80002e7c:	00148593          	addi	a1,s1,1
    FreeBlock* current = freeHead;
    80002e80:	00093503          	ld	a0,0(s2)
    while(current != nullptr && current->size < neededBlocks){
    80002e84:	00050a63          	beqz	a0,80002e98 <_ZN15MemoryAllocator6mallocEm+0x48>
    80002e88:	00053783          	ld	a5,0(a0)
    80002e8c:	00b7f663          	bgeu	a5,a1,80002e98 <_ZN15MemoryAllocator6mallocEm+0x48>
        current = current->next;
    80002e90:	00853503          	ld	a0,8(a0)
    while(current != nullptr && current->size < neededBlocks){
    80002e94:	ff1ff06f          	j	80002e84 <_ZN15MemoryAllocator6mallocEm+0x34>
    if (current == nullptr){
    80002e98:	04050063          	beqz	a0,80002ed8 <_ZN15MemoryAllocator6mallocEm+0x88>
    size_t remainingBlocks = current->size - neededBlocks;
    80002e9c:	00053783          	ld	a5,0(a0)
    80002ea0:	40b787b3          	sub	a5,a5,a1
    if (remainingBlocks >= 2){
    80002ea4:	00100713          	li	a4,1
    80002ea8:	04f76463          	bltu	a4,a5,80002ef0 <_ZN15MemoryAllocator6mallocEm+0xa0>
    if (current->prev != nullptr){
    80002eac:	01053783          	ld	a5,16(a0)
    80002eb0:	08078663          	beqz	a5,80002f3c <_ZN15MemoryAllocator6mallocEm+0xec>
        current->prev->next = current->next;
    80002eb4:	00853703          	ld	a4,8(a0)
    80002eb8:	00e7b423          	sd	a4,8(a5)
    if (current->next != nullptr){
    80002ebc:	00853783          	ld	a5,8(a0)
    80002ec0:	00078663          	beqz	a5,80002ecc <_ZN15MemoryAllocator6mallocEm+0x7c>
        current->next->prev = current->prev;
    80002ec4:	01053703          	ld	a4,16(a0)
    80002ec8:	00e7b823          	sd	a4,16(a5)
    current->next = nullptr;
    80002ecc:	00053423          	sd	zero,8(a0)
    current->prev = nullptr;
    80002ed0:	00053823          	sd	zero,16(a0)
    return (void*) ((char*) current +MEM_BLOCK_SIZE);
    80002ed4:	04050513          	addi	a0,a0,64
}
    80002ed8:	01813083          	ld	ra,24(sp)
    80002edc:	01013403          	ld	s0,16(sp)
    80002ee0:	00813483          	ld	s1,8(sp)
    80002ee4:	00013903          	ld	s2,0(sp)
    80002ee8:	02010113          	addi	sp,sp,32
    80002eec:	00008067          	ret
        FreeBlock* newFree = (FreeBlock*) ((char*) current + neededBlocks * MEM_BLOCK_SIZE);
    80002ef0:	00659713          	slli	a4,a1,0x6
    80002ef4:	00e50733          	add	a4,a0,a4
        newFree->size = remainingBlocks;
    80002ef8:	00f73023          	sd	a5,0(a4)
        newFree->next = current->next;
    80002efc:	00853783          	ld	a5,8(a0)
    80002f00:	00f73423          	sd	a5,8(a4)
        newFree->prev = current->prev;
    80002f04:	01053783          	ld	a5,16(a0)
    80002f08:	00f73823          	sd	a5,16(a4)
        if (current->prev != nullptr){
    80002f0c:	02078463          	beqz	a5,80002f34 <_ZN15MemoryAllocator6mallocEm+0xe4>
            current->prev->next = newFree;
    80002f10:	00e7b423          	sd	a4,8(a5)
        if (current->next != nullptr){
    80002f14:	00853783          	ld	a5,8(a0)
    80002f18:	00078463          	beqz	a5,80002f20 <_ZN15MemoryAllocator6mallocEm+0xd0>
            current->next->prev = newFree;
    80002f1c:	00e7b823          	sd	a4,16(a5)
        current->size = neededBlocks;
    80002f20:	00b53023          	sd	a1,0(a0)
        current->next = nullptr;
    80002f24:	00053423          	sd	zero,8(a0)
        current->prev = nullptr;
    80002f28:	00053823          	sd	zero,16(a0)
        return (void*) ((char*) current + MEM_BLOCK_SIZE);
    80002f2c:	04050513          	addi	a0,a0,64
    80002f30:	fa9ff06f          	j	80002ed8 <_ZN15MemoryAllocator6mallocEm+0x88>
            freeHead = newFree;
    80002f34:	00e93023          	sd	a4,0(s2)
    80002f38:	fddff06f          	j	80002f14 <_ZN15MemoryAllocator6mallocEm+0xc4>
        freeHead = current->next;
    80002f3c:	00853783          	ld	a5,8(a0)
    80002f40:	00f93023          	sd	a5,0(s2)
    80002f44:	f79ff06f          	j	80002ebc <_ZN15MemoryAllocator6mallocEm+0x6c>
    if (numBlocks == 0) return nullptr;
    80002f48:	00000513          	li	a0,0
    80002f4c:	f8dff06f          	j	80002ed8 <_ZN15MemoryAllocator6mallocEm+0x88>

0000000080002f50 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>:
void MemoryAllocator::tryToJoin(FreeBlock *block) {
    80002f50:	ff010113          	addi	sp,sp,-16
    80002f54:	00813423          	sd	s0,8(sp)
    80002f58:	01010413          	addi	s0,sp,16
    if (block == nullptr || block->next == nullptr) return;
    80002f5c:	00058e63          	beqz	a1,80002f78 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    80002f60:	0085b783          	ld	a5,8(a1)
    80002f64:	00078a63          	beqz	a5,80002f78 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    char* endOfBlock = (char*) block + block->size * MEM_BLOCK_SIZE;
    80002f68:	0005b683          	ld	a3,0(a1)
    80002f6c:	00669713          	slli	a4,a3,0x6
    80002f70:	00e58733          	add	a4,a1,a4
    if (endOfBlock == (char*) block->next){
    80002f74:	00e78863          	beq	a5,a4,80002f84 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x34>
    80002f78:	00813403          	ld	s0,8(sp)
    80002f7c:	01010113          	addi	sp,sp,16
    80002f80:	00008067          	ret
        block->size += nextBlock->size;
    80002f84:	0007b703          	ld	a4,0(a5)
    80002f88:	00e686b3          	add	a3,a3,a4
    80002f8c:	00d5b023          	sd	a3,0(a1)
        block->next = nextBlock->next;
    80002f90:	0087b703          	ld	a4,8(a5)
    80002f94:	00e5b423          	sd	a4,8(a1)
        if (block->next != nullptr){
    80002f98:	00070463          	beqz	a4,80002fa0 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x50>
            block->next->prev = block;
    80002f9c:	00b73823          	sd	a1,16(a4)
        nextBlock->next = nullptr;
    80002fa0:	0007b423          	sd	zero,8(a5)
        nextBlock->prev = nullptr;
    80002fa4:	0007b823          	sd	zero,16(a5)
    80002fa8:	fd1ff06f          	j	80002f78 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>

0000000080002fac <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void* ptr){
    80002fac:	fd010113          	addi	sp,sp,-48
    80002fb0:	02113423          	sd	ra,40(sp)
    80002fb4:	02813023          	sd	s0,32(sp)
    80002fb8:	00913c23          	sd	s1,24(sp)
    80002fbc:	01213823          	sd	s2,16(sp)
    80002fc0:	01313423          	sd	s3,8(sp)
    80002fc4:	03010413          	addi	s0,sp,48
    80002fc8:	00050993          	mv	s3,a0
    80002fcc:	00058913          	mv	s2,a1
    init();
    80002fd0:	00000097          	auipc	ra,0x0
    80002fd4:	e20080e7          	jalr	-480(ra) # 80002df0 <_ZN15MemoryAllocator4initEv>
    if (ptr == nullptr) return -1;
    80002fd8:	0e090863          	beqz	s2,800030c8 <_ZN15MemoryAllocator4freeEPv+0x11c>
    uint64 heapStart = (uint64)HEAP_START_ADDR;
    80002fdc:	00009797          	auipc	a5,0x9
    80002fe0:	d8c7b783          	ld	a5,-628(a5) # 8000bd68 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002fe4:	0007b683          	ld	a3,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002fe8:	00009797          	auipc	a5,0x9
    80002fec:	da07b783          	ld	a5,-608(a5) # 8000bd88 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002ff0:	0007b603          	ld	a2,0(a5)
    if (ptrAddr < heapStart + MEM_BLOCK_SIZE || ptrAddr >= heapEnd){
    80002ff4:	04068793          	addi	a5,a3,64
    80002ff8:	0cf96c63          	bltu	s2,a5,800030d0 <_ZN15MemoryAllocator4freeEPv+0x124>
    80002ffc:	0cc97e63          	bgeu	s2,a2,800030d8 <_ZN15MemoryAllocator4freeEPv+0x12c>
    if ((ptrAddr - heapStart) % MEM_BLOCK_SIZE != 0){
    80003000:	40d907b3          	sub	a5,s2,a3
    80003004:	03f7f793          	andi	a5,a5,63
    80003008:	0c079c63          	bnez	a5,800030e0 <_ZN15MemoryAllocator4freeEPv+0x134>
    FreeBlock* block = (FreeBlock*) ((char*) ptr - MEM_BLOCK_SIZE);
    8000300c:	fc090593          	addi	a1,s2,-64
    if (block->size < 2){
    80003010:	fc093783          	ld	a5,-64(s2)
    80003014:	00100713          	li	a4,1
    80003018:	0cf77863          	bgeu	a4,a5,800030e8 <_ZN15MemoryAllocator4freeEPv+0x13c>
    if ((uint64) block < heapStart){
    8000301c:	00058713          	mv	a4,a1
    80003020:	0cd5e863          	bltu	a1,a3,800030f0 <_ZN15MemoryAllocator4freeEPv+0x144>
    if ((uint64) block + block->size * MEM_BLOCK_SIZE > heapEnd){
    80003024:	00679793          	slli	a5,a5,0x6
    80003028:	00f586b3          	add	a3,a1,a5
    8000302c:	0cd66663          	bltu	a2,a3,800030f8 <_ZN15MemoryAllocator4freeEPv+0x14c>
    FreeBlock* current = freeHead;
    80003030:	0009b783          	ld	a5,0(s3)
    FreeBlock* prev = nullptr;
    80003034:	00000493          	li	s1,0
    while (current != nullptr && (uint64) current < (uint64) block){
    80003038:	00078a63          	beqz	a5,8000304c <_ZN15MemoryAllocator4freeEPv+0xa0>
    8000303c:	00e7f863          	bgeu	a5,a4,8000304c <_ZN15MemoryAllocator4freeEPv+0xa0>
        prev = current;
    80003040:	00078493          	mv	s1,a5
        current = current->next;
    80003044:	0087b783          	ld	a5,8(a5)
    while (current != nullptr && (uint64) current < (uint64) block){
    80003048:	ff1ff06f          	j	80003038 <_ZN15MemoryAllocator4freeEPv+0x8c>
    if (prev != nullptr &&
    8000304c:	00048a63          	beqz	s1,80003060 <_ZN15MemoryAllocator4freeEPv+0xb4>
        (uint64) prev + prev->size * MEM_BLOCK_SIZE > (uint64) block) {
    80003050:	0004b603          	ld	a2,0(s1)
    80003054:	00661613          	slli	a2,a2,0x6
    80003058:	00c48633          	add	a2,s1,a2
    if (prev != nullptr &&
    8000305c:	0ac76263          	bltu	a4,a2,80003100 <_ZN15MemoryAllocator4freeEPv+0x154>
    if (current!= nullptr && (uint64)block + block->size * MEM_BLOCK_SIZE > (uint64) current){
    80003060:	00078463          	beqz	a5,80003068 <_ZN15MemoryAllocator4freeEPv+0xbc>
    80003064:	0ad7e263          	bltu	a5,a3,80003108 <_ZN15MemoryAllocator4freeEPv+0x15c>
    block->prev = prev;
    80003068:	fc993823          	sd	s1,-48(s2)
    block->next = current;
    8000306c:	fcf93423          	sd	a5,-56(s2)
    if (prev != nullptr){
    80003070:	04048863          	beqz	s1,800030c0 <_ZN15MemoryAllocator4freeEPv+0x114>
        prev->next = block;
    80003074:	00b4b423          	sd	a1,8(s1)
    if (current != nullptr){
    80003078:	00078463          	beqz	a5,80003080 <_ZN15MemoryAllocator4freeEPv+0xd4>
        current->prev = block;
    8000307c:	00b7b823          	sd	a1,16(a5)
    tryToJoin(block);
    80003080:	00098513          	mv	a0,s3
    80003084:	00000097          	auipc	ra,0x0
    80003088:	ecc080e7          	jalr	-308(ra) # 80002f50 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    if (prev != nullptr){
    8000308c:	08048263          	beqz	s1,80003110 <_ZN15MemoryAllocator4freeEPv+0x164>
        tryToJoin(prev);
    80003090:	00048593          	mv	a1,s1
    80003094:	00098513          	mv	a0,s3
    80003098:	00000097          	auipc	ra,0x0
    8000309c:	eb8080e7          	jalr	-328(ra) # 80002f50 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    return 0;
    800030a0:	00000513          	li	a0,0
}
    800030a4:	02813083          	ld	ra,40(sp)
    800030a8:	02013403          	ld	s0,32(sp)
    800030ac:	01813483          	ld	s1,24(sp)
    800030b0:	01013903          	ld	s2,16(sp)
    800030b4:	00813983          	ld	s3,8(sp)
    800030b8:	03010113          	addi	sp,sp,48
    800030bc:	00008067          	ret
        freeHead = block;
    800030c0:	00b9b023          	sd	a1,0(s3)
    800030c4:	fb5ff06f          	j	80003078 <_ZN15MemoryAllocator4freeEPv+0xcc>
    if (ptr == nullptr) return -1;
    800030c8:	fff00513          	li	a0,-1
    800030cc:	fd9ff06f          	j	800030a4 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    800030d0:	fff00513          	li	a0,-1
    800030d4:	fd1ff06f          	j	800030a4 <_ZN15MemoryAllocator4freeEPv+0xf8>
    800030d8:	fff00513          	li	a0,-1
    800030dc:	fc9ff06f          	j	800030a4 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    800030e0:	fff00513          	li	a0,-1
    800030e4:	fc1ff06f          	j	800030a4 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    800030e8:	fff00513          	li	a0,-1
    800030ec:	fb9ff06f          	j	800030a4 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    800030f0:	fff00513          	li	a0,-1
    800030f4:	fb1ff06f          	j	800030a4 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    800030f8:	fff00513          	li	a0,-1
    800030fc:	fa9ff06f          	j	800030a4 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003100:	fff00513          	li	a0,-1
    80003104:	fa1ff06f          	j	800030a4 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003108:	fff00513          	li	a0,-1
    8000310c:	f99ff06f          	j	800030a4 <_ZN15MemoryAllocator4freeEPv+0xf8>
    return 0;
    80003110:	00000513          	li	a0,0
    80003114:	f91ff06f          	j	800030a4 <_ZN15MemoryAllocator4freeEPv+0xf8>

0000000080003118 <_GLOBAL__sub_I__ZN15MemoryAllocatorC2Ev>:
    80003118:	ff010113          	addi	sp,sp,-16
    8000311c:	00113423          	sd	ra,8(sp)
    80003120:	00813023          	sd	s0,0(sp)
    80003124:	01010413          	addi	s0,sp,16
    80003128:	000105b7          	lui	a1,0x10
    8000312c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80003130:	00100513          	li	a0,1
    80003134:	00000097          	auipc	ra,0x0
    80003138:	c54080e7          	jalr	-940(ra) # 80002d88 <_Z41__static_initialization_and_destruction_0ii>
    8000313c:	00813083          	ld	ra,8(sp)
    80003140:	00013403          	ld	s0,0(sp)
    80003144:	01010113          	addi	sp,sp,16
    80003148:	00008067          	ret

000000008000314c <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    8000314c:	fe010113          	addi	sp,sp,-32
    80003150:	00113c23          	sd	ra,24(sp)
    80003154:	00813823          	sd	s0,16(sp)
    80003158:	00913423          	sd	s1,8(sp)
    8000315c:	01213023          	sd	s2,0(sp)
    80003160:	02010413          	addi	s0,sp,32
    80003164:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003168:	00000913          	li	s2,0
    8000316c:	00c0006f          	j	80003178 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003170:	ffffe097          	auipc	ra,0xffffe
    80003174:	218080e7          	jalr	536(ra) # 80001388 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003178:	ffffe097          	auipc	ra,0xffffe
    8000317c:	4d8080e7          	jalr	1240(ra) # 80001650 <_Z4getcv>
    80003180:	0005059b          	sext.w	a1,a0
    80003184:	01b00793          	li	a5,27
    80003188:	02f58a63          	beq	a1,a5,800031bc <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    8000318c:	0084b503          	ld	a0,8(s1)
    80003190:	00004097          	auipc	ra,0x4
    80003194:	84c080e7          	jalr	-1972(ra) # 800069dc <_ZN6Buffer3putEi>
        i++;
    80003198:	0019071b          	addiw	a4,s2,1
    8000319c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800031a0:	0004a683          	lw	a3,0(s1)
    800031a4:	0026979b          	slliw	a5,a3,0x2
    800031a8:	00d787bb          	addw	a5,a5,a3
    800031ac:	0017979b          	slliw	a5,a5,0x1
    800031b0:	02f767bb          	remw	a5,a4,a5
    800031b4:	fc0792e3          	bnez	a5,80003178 <_ZL16producerKeyboardPv+0x2c>
    800031b8:	fb9ff06f          	j	80003170 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800031bc:	00100793          	li	a5,1
    800031c0:	00009717          	auipc	a4,0x9
    800031c4:	c4f72823          	sw	a5,-944(a4) # 8000be10 <_ZL9threadEnd>
    data->buffer->put('!');
    800031c8:	02100593          	li	a1,33
    800031cc:	0084b503          	ld	a0,8(s1)
    800031d0:	00004097          	auipc	ra,0x4
    800031d4:	80c080e7          	jalr	-2036(ra) # 800069dc <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800031d8:	0104b503          	ld	a0,16(s1)
    800031dc:	ffffe097          	auipc	ra,0xffffe
    800031e0:	36c080e7          	jalr	876(ra) # 80001548 <_Z10sem_signalP4_sem>
}
    800031e4:	01813083          	ld	ra,24(sp)
    800031e8:	01013403          	ld	s0,16(sp)
    800031ec:	00813483          	ld	s1,8(sp)
    800031f0:	00013903          	ld	s2,0(sp)
    800031f4:	02010113          	addi	sp,sp,32
    800031f8:	00008067          	ret

00000000800031fc <_ZL8producerPv>:

static void producer(void *arg) {
    800031fc:	fe010113          	addi	sp,sp,-32
    80003200:	00113c23          	sd	ra,24(sp)
    80003204:	00813823          	sd	s0,16(sp)
    80003208:	00913423          	sd	s1,8(sp)
    8000320c:	01213023          	sd	s2,0(sp)
    80003210:	02010413          	addi	s0,sp,32
    80003214:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003218:	00000913          	li	s2,0
    8000321c:	00c0006f          	j	80003228 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003220:	ffffe097          	auipc	ra,0xffffe
    80003224:	168080e7          	jalr	360(ra) # 80001388 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003228:	00009797          	auipc	a5,0x9
    8000322c:	be87a783          	lw	a5,-1048(a5) # 8000be10 <_ZL9threadEnd>
    80003230:	02079e63          	bnez	a5,8000326c <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003234:	0004a583          	lw	a1,0(s1)
    80003238:	0305859b          	addiw	a1,a1,48
    8000323c:	0084b503          	ld	a0,8(s1)
    80003240:	00003097          	auipc	ra,0x3
    80003244:	79c080e7          	jalr	1948(ra) # 800069dc <_ZN6Buffer3putEi>
        i++;
    80003248:	0019071b          	addiw	a4,s2,1
    8000324c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003250:	0004a683          	lw	a3,0(s1)
    80003254:	0026979b          	slliw	a5,a3,0x2
    80003258:	00d787bb          	addw	a5,a5,a3
    8000325c:	0017979b          	slliw	a5,a5,0x1
    80003260:	02f767bb          	remw	a5,a4,a5
    80003264:	fc0792e3          	bnez	a5,80003228 <_ZL8producerPv+0x2c>
    80003268:	fb9ff06f          	j	80003220 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    8000326c:	0104b503          	ld	a0,16(s1)
    80003270:	ffffe097          	auipc	ra,0xffffe
    80003274:	2d8080e7          	jalr	728(ra) # 80001548 <_Z10sem_signalP4_sem>
}
    80003278:	01813083          	ld	ra,24(sp)
    8000327c:	01013403          	ld	s0,16(sp)
    80003280:	00813483          	ld	s1,8(sp)
    80003284:	00013903          	ld	s2,0(sp)
    80003288:	02010113          	addi	sp,sp,32
    8000328c:	00008067          	ret

0000000080003290 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003290:	fd010113          	addi	sp,sp,-48
    80003294:	02113423          	sd	ra,40(sp)
    80003298:	02813023          	sd	s0,32(sp)
    8000329c:	00913c23          	sd	s1,24(sp)
    800032a0:	01213823          	sd	s2,16(sp)
    800032a4:	01313423          	sd	s3,8(sp)
    800032a8:	03010413          	addi	s0,sp,48
    800032ac:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800032b0:	00000993          	li	s3,0
    800032b4:	01c0006f          	j	800032d0 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800032b8:	ffffe097          	auipc	ra,0xffffe
    800032bc:	0d0080e7          	jalr	208(ra) # 80001388 <_Z15thread_dispatchv>
    800032c0:	0500006f          	j	80003310 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800032c4:	00a00513          	li	a0,10
    800032c8:	ffffe097          	auipc	ra,0xffffe
    800032cc:	3c8080e7          	jalr	968(ra) # 80001690 <_Z4putcc>
    while (!threadEnd) {
    800032d0:	00009797          	auipc	a5,0x9
    800032d4:	b407a783          	lw	a5,-1216(a5) # 8000be10 <_ZL9threadEnd>
    800032d8:	06079063          	bnez	a5,80003338 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800032dc:	00893503          	ld	a0,8(s2)
    800032e0:	00003097          	auipc	ra,0x3
    800032e4:	78c080e7          	jalr	1932(ra) # 80006a6c <_ZN6Buffer3getEv>
        i++;
    800032e8:	0019849b          	addiw	s1,s3,1
    800032ec:	0004899b          	sext.w	s3,s1
        putc(key);
    800032f0:	0ff57513          	andi	a0,a0,255
    800032f4:	ffffe097          	auipc	ra,0xffffe
    800032f8:	39c080e7          	jalr	924(ra) # 80001690 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800032fc:	00092703          	lw	a4,0(s2)
    80003300:	0027179b          	slliw	a5,a4,0x2
    80003304:	00e787bb          	addw	a5,a5,a4
    80003308:	02f4e7bb          	remw	a5,s1,a5
    8000330c:	fa0786e3          	beqz	a5,800032b8 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003310:	05000793          	li	a5,80
    80003314:	02f4e4bb          	remw	s1,s1,a5
    80003318:	fa049ce3          	bnez	s1,800032d0 <_ZL8consumerPv+0x40>
    8000331c:	fa9ff06f          	j	800032c4 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003320:	00893503          	ld	a0,8(s2)
    80003324:	00003097          	auipc	ra,0x3
    80003328:	748080e7          	jalr	1864(ra) # 80006a6c <_ZN6Buffer3getEv>
        putc(key);
    8000332c:	0ff57513          	andi	a0,a0,255
    80003330:	ffffe097          	auipc	ra,0xffffe
    80003334:	360080e7          	jalr	864(ra) # 80001690 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003338:	00893503          	ld	a0,8(s2)
    8000333c:	00003097          	auipc	ra,0x3
    80003340:	7bc080e7          	jalr	1980(ra) # 80006af8 <_ZN6Buffer6getCntEv>
    80003344:	fca04ee3          	bgtz	a0,80003320 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003348:	01093503          	ld	a0,16(s2)
    8000334c:	ffffe097          	auipc	ra,0xffffe
    80003350:	1fc080e7          	jalr	508(ra) # 80001548 <_Z10sem_signalP4_sem>
}
    80003354:	02813083          	ld	ra,40(sp)
    80003358:	02013403          	ld	s0,32(sp)
    8000335c:	01813483          	ld	s1,24(sp)
    80003360:	01013903          	ld	s2,16(sp)
    80003364:	00813983          	ld	s3,8(sp)
    80003368:	03010113          	addi	sp,sp,48
    8000336c:	00008067          	ret

0000000080003370 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003370:	f9010113          	addi	sp,sp,-112
    80003374:	06113423          	sd	ra,104(sp)
    80003378:	06813023          	sd	s0,96(sp)
    8000337c:	04913c23          	sd	s1,88(sp)
    80003380:	05213823          	sd	s2,80(sp)
    80003384:	05313423          	sd	s3,72(sp)
    80003388:	05413023          	sd	s4,64(sp)
    8000338c:	03513c23          	sd	s5,56(sp)
    80003390:	03613823          	sd	s6,48(sp)
    80003394:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003398:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    8000339c:	00006517          	auipc	a0,0x6
    800033a0:	fd450513          	addi	a0,a0,-44 # 80009370 <CONSOLE_STATUS+0x360>
    800033a4:	00002097          	auipc	ra,0x2
    800033a8:	7c0080e7          	jalr	1984(ra) # 80005b64 <_Z11printStringPKc>
    getString(input, 30);
    800033ac:	01e00593          	li	a1,30
    800033b0:	fa040493          	addi	s1,s0,-96
    800033b4:	00048513          	mv	a0,s1
    800033b8:	00003097          	auipc	ra,0x3
    800033bc:	834080e7          	jalr	-1996(ra) # 80005bec <_Z9getStringPci>
    threadNum = stringToInt(input);
    800033c0:	00048513          	mv	a0,s1
    800033c4:	00003097          	auipc	ra,0x3
    800033c8:	900080e7          	jalr	-1792(ra) # 80005cc4 <_Z11stringToIntPKc>
    800033cc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800033d0:	00006517          	auipc	a0,0x6
    800033d4:	fc050513          	addi	a0,a0,-64 # 80009390 <CONSOLE_STATUS+0x380>
    800033d8:	00002097          	auipc	ra,0x2
    800033dc:	78c080e7          	jalr	1932(ra) # 80005b64 <_Z11printStringPKc>
    getString(input, 30);
    800033e0:	01e00593          	li	a1,30
    800033e4:	00048513          	mv	a0,s1
    800033e8:	00003097          	auipc	ra,0x3
    800033ec:	804080e7          	jalr	-2044(ra) # 80005bec <_Z9getStringPci>
    n = stringToInt(input);
    800033f0:	00048513          	mv	a0,s1
    800033f4:	00003097          	auipc	ra,0x3
    800033f8:	8d0080e7          	jalr	-1840(ra) # 80005cc4 <_Z11stringToIntPKc>
    800033fc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003400:	00006517          	auipc	a0,0x6
    80003404:	fb050513          	addi	a0,a0,-80 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80003408:	00002097          	auipc	ra,0x2
    8000340c:	75c080e7          	jalr	1884(ra) # 80005b64 <_Z11printStringPKc>
    80003410:	00000613          	li	a2,0
    80003414:	00a00593          	li	a1,10
    80003418:	00090513          	mv	a0,s2
    8000341c:	00003097          	auipc	ra,0x3
    80003420:	8f8080e7          	jalr	-1800(ra) # 80005d14 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003424:	00006517          	auipc	a0,0x6
    80003428:	fa450513          	addi	a0,a0,-92 # 800093c8 <CONSOLE_STATUS+0x3b8>
    8000342c:	00002097          	auipc	ra,0x2
    80003430:	738080e7          	jalr	1848(ra) # 80005b64 <_Z11printStringPKc>
    80003434:	00000613          	li	a2,0
    80003438:	00a00593          	li	a1,10
    8000343c:	00048513          	mv	a0,s1
    80003440:	00003097          	auipc	ra,0x3
    80003444:	8d4080e7          	jalr	-1836(ra) # 80005d14 <_Z8printIntiii>
    printString(".\n");
    80003448:	00006517          	auipc	a0,0x6
    8000344c:	f9850513          	addi	a0,a0,-104 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80003450:	00002097          	auipc	ra,0x2
    80003454:	714080e7          	jalr	1812(ra) # 80005b64 <_Z11printStringPKc>
    if(threadNum > n) {
    80003458:	0324c463          	blt	s1,s2,80003480 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    8000345c:	03205c63          	blez	s2,80003494 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003460:	03800513          	li	a0,56
    80003464:	fffff097          	auipc	ra,0xfffff
    80003468:	2f8080e7          	jalr	760(ra) # 8000275c <_Znwm>
    8000346c:	00050a13          	mv	s4,a0
    80003470:	00048593          	mv	a1,s1
    80003474:	00003097          	auipc	ra,0x3
    80003478:	4cc080e7          	jalr	1228(ra) # 80006940 <_ZN6BufferC1Ei>
    8000347c:	0300006f          	j	800034ac <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003480:	00006517          	auipc	a0,0x6
    80003484:	f6850513          	addi	a0,a0,-152 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80003488:	00002097          	auipc	ra,0x2
    8000348c:	6dc080e7          	jalr	1756(ra) # 80005b64 <_Z11printStringPKc>
        return;
    80003490:	0140006f          	j	800034a4 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003494:	00006517          	auipc	a0,0x6
    80003498:	f9450513          	addi	a0,a0,-108 # 80009428 <CONSOLE_STATUS+0x418>
    8000349c:	00002097          	auipc	ra,0x2
    800034a0:	6c8080e7          	jalr	1736(ra) # 80005b64 <_Z11printStringPKc>
        return;
    800034a4:	000b0113          	mv	sp,s6
    800034a8:	1500006f          	j	800035f8 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800034ac:	00000593          	li	a1,0
    800034b0:	00009517          	auipc	a0,0x9
    800034b4:	96850513          	addi	a0,a0,-1688 # 8000be18 <_ZL10waitForAll>
    800034b8:	ffffe097          	auipc	ra,0xffffe
    800034bc:	fcc080e7          	jalr	-52(ra) # 80001484 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    800034c0:	00391793          	slli	a5,s2,0x3
    800034c4:	00f78793          	addi	a5,a5,15
    800034c8:	ff07f793          	andi	a5,a5,-16
    800034cc:	40f10133          	sub	sp,sp,a5
    800034d0:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800034d4:	0019071b          	addiw	a4,s2,1
    800034d8:	00171793          	slli	a5,a4,0x1
    800034dc:	00e787b3          	add	a5,a5,a4
    800034e0:	00379793          	slli	a5,a5,0x3
    800034e4:	00f78793          	addi	a5,a5,15
    800034e8:	ff07f793          	andi	a5,a5,-16
    800034ec:	40f10133          	sub	sp,sp,a5
    800034f0:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800034f4:	00191613          	slli	a2,s2,0x1
    800034f8:	012607b3          	add	a5,a2,s2
    800034fc:	00379793          	slli	a5,a5,0x3
    80003500:	00f987b3          	add	a5,s3,a5
    80003504:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003508:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    8000350c:	00009717          	auipc	a4,0x9
    80003510:	90c73703          	ld	a4,-1780(a4) # 8000be18 <_ZL10waitForAll>
    80003514:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003518:	00078613          	mv	a2,a5
    8000351c:	00000597          	auipc	a1,0x0
    80003520:	d7458593          	addi	a1,a1,-652 # 80003290 <_ZL8consumerPv>
    80003524:	f9840513          	addi	a0,s0,-104
    80003528:	ffffe097          	auipc	ra,0xffffe
    8000352c:	d5c080e7          	jalr	-676(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003530:	00000493          	li	s1,0
    80003534:	0280006f          	j	8000355c <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003538:	00000597          	auipc	a1,0x0
    8000353c:	c1458593          	addi	a1,a1,-1004 # 8000314c <_ZL16producerKeyboardPv>
                      data + i);
    80003540:	00179613          	slli	a2,a5,0x1
    80003544:	00f60633          	add	a2,a2,a5
    80003548:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    8000354c:	00c98633          	add	a2,s3,a2
    80003550:	ffffe097          	auipc	ra,0xffffe
    80003554:	d34080e7          	jalr	-716(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003558:	0014849b          	addiw	s1,s1,1
    8000355c:	0524d263          	bge	s1,s2,800035a0 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003560:	00149793          	slli	a5,s1,0x1
    80003564:	009787b3          	add	a5,a5,s1
    80003568:	00379793          	slli	a5,a5,0x3
    8000356c:	00f987b3          	add	a5,s3,a5
    80003570:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003574:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003578:	00009717          	auipc	a4,0x9
    8000357c:	8a073703          	ld	a4,-1888(a4) # 8000be18 <_ZL10waitForAll>
    80003580:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003584:	00048793          	mv	a5,s1
    80003588:	00349513          	slli	a0,s1,0x3
    8000358c:	00aa8533          	add	a0,s5,a0
    80003590:	fa9054e3          	blez	s1,80003538 <_Z22producerConsumer_C_APIv+0x1c8>
    80003594:	00000597          	auipc	a1,0x0
    80003598:	c6858593          	addi	a1,a1,-920 # 800031fc <_ZL8producerPv>
    8000359c:	fa5ff06f          	j	80003540 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800035a0:	ffffe097          	auipc	ra,0xffffe
    800035a4:	de8080e7          	jalr	-536(ra) # 80001388 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800035a8:	00000493          	li	s1,0
    800035ac:	00994e63          	blt	s2,s1,800035c8 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800035b0:	00009517          	auipc	a0,0x9
    800035b4:	86853503          	ld	a0,-1944(a0) # 8000be18 <_ZL10waitForAll>
    800035b8:	ffffe097          	auipc	ra,0xffffe
    800035bc:	f50080e7          	jalr	-176(ra) # 80001508 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    800035c0:	0014849b          	addiw	s1,s1,1
    800035c4:	fe9ff06f          	j	800035ac <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800035c8:	00009517          	auipc	a0,0x9
    800035cc:	85053503          	ld	a0,-1968(a0) # 8000be18 <_ZL10waitForAll>
    800035d0:	ffffe097          	auipc	ra,0xffffe
    800035d4:	ef8080e7          	jalr	-264(ra) # 800014c8 <_Z9sem_closeP4_sem>
    delete buffer;
    800035d8:	000a0e63          	beqz	s4,800035f4 <_Z22producerConsumer_C_APIv+0x284>
    800035dc:	000a0513          	mv	a0,s4
    800035e0:	00003097          	auipc	ra,0x3
    800035e4:	5a0080e7          	jalr	1440(ra) # 80006b80 <_ZN6BufferD1Ev>
    800035e8:	000a0513          	mv	a0,s4
    800035ec:	fffff097          	auipc	ra,0xfffff
    800035f0:	1c0080e7          	jalr	448(ra) # 800027ac <_ZdlPv>
    800035f4:	000b0113          	mv	sp,s6

}
    800035f8:	f9040113          	addi	sp,s0,-112
    800035fc:	06813083          	ld	ra,104(sp)
    80003600:	06013403          	ld	s0,96(sp)
    80003604:	05813483          	ld	s1,88(sp)
    80003608:	05013903          	ld	s2,80(sp)
    8000360c:	04813983          	ld	s3,72(sp)
    80003610:	04013a03          	ld	s4,64(sp)
    80003614:	03813a83          	ld	s5,56(sp)
    80003618:	03013b03          	ld	s6,48(sp)
    8000361c:	07010113          	addi	sp,sp,112
    80003620:	00008067          	ret
    80003624:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003628:	000a0513          	mv	a0,s4
    8000362c:	fffff097          	auipc	ra,0xfffff
    80003630:	180080e7          	jalr	384(ra) # 800027ac <_ZdlPv>
    80003634:	00048513          	mv	a0,s1
    80003638:	0000a097          	auipc	ra,0xa
    8000363c:	900080e7          	jalr	-1792(ra) # 8000cf38 <_Unwind_Resume>

0000000080003640 <_ZL11printBeforePKcii>:
#include "printing.hpp"

static sem_t doneSem;
static sem_t printSem;

static void printBefore(const char* name, int id, int iteration) {
    80003640:	fd010113          	addi	sp,sp,-48
    80003644:	02113423          	sd	ra,40(sp)
    80003648:	02813023          	sd	s0,32(sp)
    8000364c:	00913c23          	sd	s1,24(sp)
    80003650:	01213823          	sd	s2,16(sp)
    80003654:	01313423          	sd	s3,8(sp)
    80003658:	01413023          	sd	s4,0(sp)
    8000365c:	03010413          	addi	s0,sp,48
    80003660:	00050993          	mv	s3,a0
    80003664:	00058913          	mv	s2,a1
    80003668:	00060493          	mv	s1,a2
    sem_wait(printSem);
    8000366c:	00008a17          	auipc	s4,0x8
    80003670:	7b4a0a13          	addi	s4,s4,1972 # 8000be20 <_ZL8printSem>
    80003674:	000a3503          	ld	a0,0(s4)
    80003678:	ffffe097          	auipc	ra,0xffffe
    8000367c:	e90080e7          	jalr	-368(ra) # 80001508 <_Z8sem_waitP4_sem>

    printString(name);
    80003680:	00098513          	mv	a0,s3
    80003684:	00002097          	auipc	ra,0x2
    80003688:	4e0080e7          	jalr	1248(ra) # 80005b64 <_Z11printStringPKc>
    printString(" before sync, id = ");
    8000368c:	00006517          	auipc	a0,0x6
    80003690:	dcc50513          	addi	a0,a0,-564 # 80009458 <CONSOLE_STATUS+0x448>
    80003694:	00002097          	auipc	ra,0x2
    80003698:	4d0080e7          	jalr	1232(ra) # 80005b64 <_Z11printStringPKc>
    printInt(id);
    8000369c:	00000613          	li	a2,0
    800036a0:	00a00593          	li	a1,10
    800036a4:	00090513          	mv	a0,s2
    800036a8:	00002097          	auipc	ra,0x2
    800036ac:	66c080e7          	jalr	1644(ra) # 80005d14 <_Z8printIntiii>
    printString(", iteration = ");
    800036b0:	00006517          	auipc	a0,0x6
    800036b4:	dc050513          	addi	a0,a0,-576 # 80009470 <CONSOLE_STATUS+0x460>
    800036b8:	00002097          	auipc	ra,0x2
    800036bc:	4ac080e7          	jalr	1196(ra) # 80005b64 <_Z11printStringPKc>
    printInt(iteration);
    800036c0:	00000613          	li	a2,0
    800036c4:	00a00593          	li	a1,10
    800036c8:	00048513          	mv	a0,s1
    800036cc:	00002097          	auipc	ra,0x2
    800036d0:	648080e7          	jalr	1608(ra) # 80005d14 <_Z8printIntiii>
    printString("\n");
    800036d4:	00006517          	auipc	a0,0x6
    800036d8:	bcc50513          	addi	a0,a0,-1076 # 800092a0 <CONSOLE_STATUS+0x290>
    800036dc:	00002097          	auipc	ra,0x2
    800036e0:	488080e7          	jalr	1160(ra) # 80005b64 <_Z11printStringPKc>

    sem_signal(printSem);
    800036e4:	000a3503          	ld	a0,0(s4)
    800036e8:	ffffe097          	auipc	ra,0xffffe
    800036ec:	e60080e7          	jalr	-416(ra) # 80001548 <_Z10sem_signalP4_sem>
}
    800036f0:	02813083          	ld	ra,40(sp)
    800036f4:	02013403          	ld	s0,32(sp)
    800036f8:	01813483          	ld	s1,24(sp)
    800036fc:	01013903          	ld	s2,16(sp)
    80003700:	00813983          	ld	s3,8(sp)
    80003704:	00013a03          	ld	s4,0(sp)
    80003708:	03010113          	addi	sp,sp,48
    8000370c:	00008067          	ret

0000000080003710 <_ZL10printAfterPKcii>:

static void printAfter(const char* name, int id, int iteration) {
    80003710:	fd010113          	addi	sp,sp,-48
    80003714:	02113423          	sd	ra,40(sp)
    80003718:	02813023          	sd	s0,32(sp)
    8000371c:	00913c23          	sd	s1,24(sp)
    80003720:	01213823          	sd	s2,16(sp)
    80003724:	01313423          	sd	s3,8(sp)
    80003728:	01413023          	sd	s4,0(sp)
    8000372c:	03010413          	addi	s0,sp,48
    80003730:	00050993          	mv	s3,a0
    80003734:	00058913          	mv	s2,a1
    80003738:	00060493          	mv	s1,a2
    sem_wait(printSem);
    8000373c:	00008a17          	auipc	s4,0x8
    80003740:	6e4a0a13          	addi	s4,s4,1764 # 8000be20 <_ZL8printSem>
    80003744:	000a3503          	ld	a0,0(s4)
    80003748:	ffffe097          	auipc	ra,0xffffe
    8000374c:	dc0080e7          	jalr	-576(ra) # 80001508 <_Z8sem_waitP4_sem>

    printString(name);
    80003750:	00098513          	mv	a0,s3
    80003754:	00002097          	auipc	ra,0x2
    80003758:	410080e7          	jalr	1040(ra) # 80005b64 <_Z11printStringPKc>
    printString(" after sync, id = ");
    8000375c:	00006517          	auipc	a0,0x6
    80003760:	d2450513          	addi	a0,a0,-732 # 80009480 <CONSOLE_STATUS+0x470>
    80003764:	00002097          	auipc	ra,0x2
    80003768:	400080e7          	jalr	1024(ra) # 80005b64 <_Z11printStringPKc>
    printInt(id);
    8000376c:	00000613          	li	a2,0
    80003770:	00a00593          	li	a1,10
    80003774:	00090513          	mv	a0,s2
    80003778:	00002097          	auipc	ra,0x2
    8000377c:	59c080e7          	jalr	1436(ra) # 80005d14 <_Z8printIntiii>
    printString(", iteration = ");
    80003780:	00006517          	auipc	a0,0x6
    80003784:	cf050513          	addi	a0,a0,-784 # 80009470 <CONSOLE_STATUS+0x460>
    80003788:	00002097          	auipc	ra,0x2
    8000378c:	3dc080e7          	jalr	988(ra) # 80005b64 <_Z11printStringPKc>
    printInt(iteration);
    80003790:	00000613          	li	a2,0
    80003794:	00a00593          	li	a1,10
    80003798:	00048513          	mv	a0,s1
    8000379c:	00002097          	auipc	ra,0x2
    800037a0:	578080e7          	jalr	1400(ra) # 80005d14 <_Z8printIntiii>
    printString("\n");
    800037a4:	00006517          	auipc	a0,0x6
    800037a8:	afc50513          	addi	a0,a0,-1284 # 800092a0 <CONSOLE_STATUS+0x290>
    800037ac:	00002097          	auipc	ra,0x2
    800037b0:	3b8080e7          	jalr	952(ra) # 80005b64 <_Z11printStringPKc>

    sem_signal(printSem);
    800037b4:	000a3503          	ld	a0,0(s4)
    800037b8:	ffffe097          	auipc	ra,0xffffe
    800037bc:	d90080e7          	jalr	-624(ra) # 80001548 <_Z10sem_signalP4_sem>
}
    800037c0:	02813083          	ld	ra,40(sp)
    800037c4:	02013403          	ld	s0,32(sp)
    800037c8:	01813483          	ld	s1,24(sp)
    800037cc:	01013903          	ld	s2,16(sp)
    800037d0:	00813983          	ld	s3,8(sp)
    800037d4:	00013a03          	ld	s4,0(sp)
    800037d8:	03010113          	addi	sp,sp,48
    800037dc:	00008067          	ret

00000000800037e0 <_Z14ThreadPairTestv>:

        sem_signal(doneSem);
    }
};

void ThreadPairTest() {
    800037e0:	fd010113          	addi	sp,sp,-48
    800037e4:	02113423          	sd	ra,40(sp)
    800037e8:	02813023          	sd	s0,32(sp)
    800037ec:	00913c23          	sd	s1,24(sp)
    800037f0:	01213823          	sd	s2,16(sp)
    800037f4:	01313423          	sd	s3,8(sp)
    800037f8:	03010413          	addi	s0,sp,48
    sem_open(&doneSem, 0);
    800037fc:	00000593          	li	a1,0
    80003800:	00008517          	auipc	a0,0x8
    80003804:	62850513          	addi	a0,a0,1576 # 8000be28 <_ZL7doneSem>
    80003808:	ffffe097          	auipc	ra,0xffffe
    8000380c:	c7c080e7          	jalr	-900(ra) # 80001484 <_Z8sem_openPP4_semj>
    sem_open(&printSem, 1);
    80003810:	00100593          	li	a1,1
    80003814:	00008517          	auipc	a0,0x8
    80003818:	60c50513          	addi	a0,a0,1548 # 8000be20 <_ZL8printSem>
    8000381c:	ffffe097          	auipc	ra,0xffffe
    80003820:	c68080e7          	jalr	-920(ra) # 80001484 <_Z8sem_openPP4_semj>

    Thread* a = new PairThreadA();
    80003824:	02000513          	li	a0,32
    80003828:	fffff097          	auipc	ra,0xfffff
    8000382c:	f34080e7          	jalr	-204(ra) # 8000275c <_Znwm>
    80003830:	00050913          	mv	s2,a0
    80003834:	00053023          	sd	zero,0(a0)
    80003838:	00053423          	sd	zero,8(a0)
    8000383c:	00053823          	sd	zero,16(a0)
    80003840:	00053c23          	sd	zero,24(a0)
class PairThreadA : public Thread {
    80003844:	fffff097          	auipc	ra,0xfffff
    80003848:	1f0080e7          	jalr	496(ra) # 80002a34 <_ZN6ThreadC1Ev>
    8000384c:	00008797          	auipc	a5,0x8
    80003850:	32c78793          	addi	a5,a5,812 # 8000bb78 <_ZTV11PairThreadA+0x10>
    80003854:	00f93023          	sd	a5,0(s2)
    Thread* b = new PairThreadB();
    80003858:	02000513          	li	a0,32
    8000385c:	fffff097          	auipc	ra,0xfffff
    80003860:	f00080e7          	jalr	-256(ra) # 8000275c <_Znwm>
    80003864:	00050493          	mv	s1,a0
    80003868:	00053023          	sd	zero,0(a0)
    8000386c:	00053423          	sd	zero,8(a0)
    80003870:	00053823          	sd	zero,16(a0)
    80003874:	00053c23          	sd	zero,24(a0)
class PairThreadB : public Thread {
    80003878:	fffff097          	auipc	ra,0xfffff
    8000387c:	1bc080e7          	jalr	444(ra) # 80002a34 <_ZN6ThreadC1Ev>
    80003880:	00008797          	auipc	a5,0x8
    80003884:	32078793          	addi	a5,a5,800 # 8000bba0 <_ZTV11PairThreadB+0x10>
    80003888:	00f4b023          	sd	a5,0(s1)

    a->start();
    8000388c:	00090513          	mv	a0,s2
    80003890:	fffff097          	auipc	ra,0xfffff
    80003894:	1d4080e7          	jalr	468(ra) # 80002a64 <_ZN6Thread5startEv>
    b->start();
    80003898:	00048513          	mv	a0,s1
    8000389c:	fffff097          	auipc	ra,0xfffff
    800038a0:	1c8080e7          	jalr	456(ra) # 80002a64 <_ZN6Thread5startEv>

    Thread::pair(a, b);
    800038a4:	00048593          	mv	a1,s1
    800038a8:	00090513          	mv	a0,s2
    800038ac:	fffff097          	auipc	ra,0xfffff
    800038b0:	25c080e7          	jalr	604(ra) # 80002b08 <_ZN6Thread4pairEPS_S0_>

    sem_wait(doneSem);
    800038b4:	00008997          	auipc	s3,0x8
    800038b8:	56c98993          	addi	s3,s3,1388 # 8000be20 <_ZL8printSem>
    800038bc:	0089b503          	ld	a0,8(s3)
    800038c0:	ffffe097          	auipc	ra,0xffffe
    800038c4:	c48080e7          	jalr	-952(ra) # 80001508 <_Z8sem_waitP4_sem>
    sem_wait(doneSem);
    800038c8:	0089b503          	ld	a0,8(s3)
    800038cc:	ffffe097          	auipc	ra,0xffffe
    800038d0:	c3c080e7          	jalr	-964(ra) # 80001508 <_Z8sem_waitP4_sem>

    delete a;
    800038d4:	00090a63          	beqz	s2,800038e8 <_Z14ThreadPairTestv+0x108>
    800038d8:	00093783          	ld	a5,0(s2)
    800038dc:	0087b783          	ld	a5,8(a5)
    800038e0:	00090513          	mv	a0,s2
    800038e4:	000780e7          	jalr	a5
    delete b;
    800038e8:	00048a63          	beqz	s1,800038fc <_Z14ThreadPairTestv+0x11c>
    800038ec:	0004b783          	ld	a5,0(s1)
    800038f0:	0087b783          	ld	a5,8(a5)
    800038f4:	00048513          	mv	a0,s1
    800038f8:	000780e7          	jalr	a5

    sem_close(printSem);
    800038fc:	00008497          	auipc	s1,0x8
    80003900:	52448493          	addi	s1,s1,1316 # 8000be20 <_ZL8printSem>
    80003904:	0004b503          	ld	a0,0(s1)
    80003908:	ffffe097          	auipc	ra,0xffffe
    8000390c:	bc0080e7          	jalr	-1088(ra) # 800014c8 <_Z9sem_closeP4_sem>
    sem_close(doneSem);
    80003910:	0084b503          	ld	a0,8(s1)
    80003914:	ffffe097          	auipc	ra,0xffffe
    80003918:	bb4080e7          	jalr	-1100(ra) # 800014c8 <_Z9sem_closeP4_sem>

    printString("THREAD PAIR TEST FINISHED\n");
    8000391c:	00006517          	auipc	a0,0x6
    80003920:	b7c50513          	addi	a0,a0,-1156 # 80009498 <CONSOLE_STATUS+0x488>
    80003924:	00002097          	auipc	ra,0x2
    80003928:	240080e7          	jalr	576(ra) # 80005b64 <_Z11printStringPKc>
    8000392c:	02813083          	ld	ra,40(sp)
    80003930:	02013403          	ld	s0,32(sp)
    80003934:	01813483          	ld	s1,24(sp)
    80003938:	01013903          	ld	s2,16(sp)
    8000393c:	00813983          	ld	s3,8(sp)
    80003940:	03010113          	addi	sp,sp,48
    80003944:	00008067          	ret
    80003948:	00050493          	mv	s1,a0
    Thread* a = new PairThreadA();
    8000394c:	00090513          	mv	a0,s2
    80003950:	fffff097          	auipc	ra,0xfffff
    80003954:	e5c080e7          	jalr	-420(ra) # 800027ac <_ZdlPv>
    80003958:	00048513          	mv	a0,s1
    8000395c:	00009097          	auipc	ra,0x9
    80003960:	5dc080e7          	jalr	1500(ra) # 8000cf38 <_Unwind_Resume>
    80003964:	00050913          	mv	s2,a0
    Thread* b = new PairThreadB();
    80003968:	00048513          	mv	a0,s1
    8000396c:	fffff097          	auipc	ra,0xfffff
    80003970:	e40080e7          	jalr	-448(ra) # 800027ac <_ZdlPv>
    80003974:	00090513          	mv	a0,s2
    80003978:	00009097          	auipc	ra,0x9
    8000397c:	5c0080e7          	jalr	1472(ra) # 8000cf38 <_Unwind_Resume>

0000000080003980 <_ZN11PairThreadA3runEv>:
    void run() override {
    80003980:	fd010113          	addi	sp,sp,-48
    80003984:	02113423          	sd	ra,40(sp)
    80003988:	02813023          	sd	s0,32(sp)
    8000398c:	00913c23          	sd	s1,24(sp)
    80003990:	01213823          	sd	s2,16(sp)
    80003994:	01313423          	sd	s3,8(sp)
    80003998:	03010413          	addi	s0,sp,48
    8000399c:	00050993          	mv	s3,a0
        int id = Thread::getThreadId();
    800039a0:	fffff097          	auipc	ra,0xfffff
    800039a4:	1cc080e7          	jalr	460(ra) # 80002b6c <_ZN6Thread11getThreadIdEv>
    800039a8:	00050913          	mv	s2,a0
        for (int i = 0; i < 3; i++) {
    800039ac:	00000493          	li	s1,0
    800039b0:	04c0006f          	j	800039fc <_ZN11PairThreadA3runEv+0x7c>
            printBefore("A", id, i);
    800039b4:	00048613          	mv	a2,s1
    800039b8:	00090593          	mv	a1,s2
    800039bc:	00006517          	auipc	a0,0x6
    800039c0:	afc50513          	addi	a0,a0,-1284 # 800094b8 <CONSOLE_STATUS+0x4a8>
    800039c4:	00000097          	auipc	ra,0x0
    800039c8:	c7c080e7          	jalr	-900(ra) # 80003640 <_ZL11printBeforePKcii>
            sync();
    800039cc:	00098513          	mv	a0,s3
    800039d0:	fffff097          	auipc	ra,0xfffff
    800039d4:	174080e7          	jalr	372(ra) # 80002b44 <_ZN6Thread4syncEv>
            printAfter("A", id, i);
    800039d8:	00048613          	mv	a2,s1
    800039dc:	00090593          	mv	a1,s2
    800039e0:	00006517          	auipc	a0,0x6
    800039e4:	ad850513          	addi	a0,a0,-1320 # 800094b8 <CONSOLE_STATUS+0x4a8>
    800039e8:	00000097          	auipc	ra,0x0
    800039ec:	d28080e7          	jalr	-728(ra) # 80003710 <_ZL10printAfterPKcii>
            Thread::dispatch();
    800039f0:	fffff097          	auipc	ra,0xfffff
    800039f4:	0c8080e7          	jalr	200(ra) # 80002ab8 <_ZN6Thread8dispatchEv>
        for (int i = 0; i < 3; i++) {
    800039f8:	0014849b          	addiw	s1,s1,1
    800039fc:	00200793          	li	a5,2
    80003a00:	fa97dae3          	bge	a5,s1,800039b4 <_ZN11PairThreadA3runEv+0x34>
        sem_signal(doneSem);
    80003a04:	00008517          	auipc	a0,0x8
    80003a08:	42453503          	ld	a0,1060(a0) # 8000be28 <_ZL7doneSem>
    80003a0c:	ffffe097          	auipc	ra,0xffffe
    80003a10:	b3c080e7          	jalr	-1220(ra) # 80001548 <_Z10sem_signalP4_sem>
    }
    80003a14:	02813083          	ld	ra,40(sp)
    80003a18:	02013403          	ld	s0,32(sp)
    80003a1c:	01813483          	ld	s1,24(sp)
    80003a20:	01013903          	ld	s2,16(sp)
    80003a24:	00813983          	ld	s3,8(sp)
    80003a28:	03010113          	addi	sp,sp,48
    80003a2c:	00008067          	ret

0000000080003a30 <_ZN11PairThreadB3runEv>:
    void run() override {
    80003a30:	fd010113          	addi	sp,sp,-48
    80003a34:	02113423          	sd	ra,40(sp)
    80003a38:	02813023          	sd	s0,32(sp)
    80003a3c:	00913c23          	sd	s1,24(sp)
    80003a40:	01213823          	sd	s2,16(sp)
    80003a44:	01313423          	sd	s3,8(sp)
    80003a48:	03010413          	addi	s0,sp,48
    80003a4c:	00050993          	mv	s3,a0
        int id = Thread::getThreadId();
    80003a50:	fffff097          	auipc	ra,0xfffff
    80003a54:	11c080e7          	jalr	284(ra) # 80002b6c <_ZN6Thread11getThreadIdEv>
    80003a58:	00050913          	mv	s2,a0
        for (int i = 0; i < 3; i++) {
    80003a5c:	00000493          	li	s1,0
    80003a60:	04c0006f          	j	80003aac <_ZN11PairThreadB3runEv+0x7c>
            printBefore("B", id, i);
    80003a64:	00048613          	mv	a2,s1
    80003a68:	00090593          	mv	a1,s2
    80003a6c:	00006517          	auipc	a0,0x6
    80003a70:	a5450513          	addi	a0,a0,-1452 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80003a74:	00000097          	auipc	ra,0x0
    80003a78:	bcc080e7          	jalr	-1076(ra) # 80003640 <_ZL11printBeforePKcii>
            sync();
    80003a7c:	00098513          	mv	a0,s3
    80003a80:	fffff097          	auipc	ra,0xfffff
    80003a84:	0c4080e7          	jalr	196(ra) # 80002b44 <_ZN6Thread4syncEv>
            printAfter("B", id, i);
    80003a88:	00048613          	mv	a2,s1
    80003a8c:	00090593          	mv	a1,s2
    80003a90:	00006517          	auipc	a0,0x6
    80003a94:	a3050513          	addi	a0,a0,-1488 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80003a98:	00000097          	auipc	ra,0x0
    80003a9c:	c78080e7          	jalr	-904(ra) # 80003710 <_ZL10printAfterPKcii>
            Thread::dispatch();
    80003aa0:	fffff097          	auipc	ra,0xfffff
    80003aa4:	018080e7          	jalr	24(ra) # 80002ab8 <_ZN6Thread8dispatchEv>
        for (int i = 0; i < 3; i++) {
    80003aa8:	0014849b          	addiw	s1,s1,1
    80003aac:	00200793          	li	a5,2
    80003ab0:	fa97dae3          	bge	a5,s1,80003a64 <_ZN11PairThreadB3runEv+0x34>
        sem_signal(doneSem);
    80003ab4:	00008517          	auipc	a0,0x8
    80003ab8:	37453503          	ld	a0,884(a0) # 8000be28 <_ZL7doneSem>
    80003abc:	ffffe097          	auipc	ra,0xffffe
    80003ac0:	a8c080e7          	jalr	-1396(ra) # 80001548 <_Z10sem_signalP4_sem>
    }
    80003ac4:	02813083          	ld	ra,40(sp)
    80003ac8:	02013403          	ld	s0,32(sp)
    80003acc:	01813483          	ld	s1,24(sp)
    80003ad0:	01013903          	ld	s2,16(sp)
    80003ad4:	00813983          	ld	s3,8(sp)
    80003ad8:	03010113          	addi	sp,sp,48
    80003adc:	00008067          	ret

0000000080003ae0 <_ZN11PairThreadAD1Ev>:
class PairThreadA : public Thread {
    80003ae0:	ff010113          	addi	sp,sp,-16
    80003ae4:	00113423          	sd	ra,8(sp)
    80003ae8:	00813023          	sd	s0,0(sp)
    80003aec:	01010413          	addi	s0,sp,16
    80003af0:	00008797          	auipc	a5,0x8
    80003af4:	08878793          	addi	a5,a5,136 # 8000bb78 <_ZTV11PairThreadA+0x10>
    80003af8:	00f53023          	sd	a5,0(a0)
    80003afc:	fffff097          	auipc	ra,0xfffff
    80003b00:	e14080e7          	jalr	-492(ra) # 80002910 <_ZN6ThreadD1Ev>
    80003b04:	00813083          	ld	ra,8(sp)
    80003b08:	00013403          	ld	s0,0(sp)
    80003b0c:	01010113          	addi	sp,sp,16
    80003b10:	00008067          	ret

0000000080003b14 <_ZN11PairThreadAD0Ev>:
    80003b14:	fe010113          	addi	sp,sp,-32
    80003b18:	00113c23          	sd	ra,24(sp)
    80003b1c:	00813823          	sd	s0,16(sp)
    80003b20:	00913423          	sd	s1,8(sp)
    80003b24:	02010413          	addi	s0,sp,32
    80003b28:	00050493          	mv	s1,a0
    80003b2c:	00008797          	auipc	a5,0x8
    80003b30:	04c78793          	addi	a5,a5,76 # 8000bb78 <_ZTV11PairThreadA+0x10>
    80003b34:	00f53023          	sd	a5,0(a0)
    80003b38:	fffff097          	auipc	ra,0xfffff
    80003b3c:	dd8080e7          	jalr	-552(ra) # 80002910 <_ZN6ThreadD1Ev>
    80003b40:	00048513          	mv	a0,s1
    80003b44:	fffff097          	auipc	ra,0xfffff
    80003b48:	c68080e7          	jalr	-920(ra) # 800027ac <_ZdlPv>
    80003b4c:	01813083          	ld	ra,24(sp)
    80003b50:	01013403          	ld	s0,16(sp)
    80003b54:	00813483          	ld	s1,8(sp)
    80003b58:	02010113          	addi	sp,sp,32
    80003b5c:	00008067          	ret

0000000080003b60 <_ZN11PairThreadBD1Ev>:
class PairThreadB : public Thread {
    80003b60:	ff010113          	addi	sp,sp,-16
    80003b64:	00113423          	sd	ra,8(sp)
    80003b68:	00813023          	sd	s0,0(sp)
    80003b6c:	01010413          	addi	s0,sp,16
    80003b70:	00008797          	auipc	a5,0x8
    80003b74:	03078793          	addi	a5,a5,48 # 8000bba0 <_ZTV11PairThreadB+0x10>
    80003b78:	00f53023          	sd	a5,0(a0)
    80003b7c:	fffff097          	auipc	ra,0xfffff
    80003b80:	d94080e7          	jalr	-620(ra) # 80002910 <_ZN6ThreadD1Ev>
    80003b84:	00813083          	ld	ra,8(sp)
    80003b88:	00013403          	ld	s0,0(sp)
    80003b8c:	01010113          	addi	sp,sp,16
    80003b90:	00008067          	ret

0000000080003b94 <_ZN11PairThreadBD0Ev>:
    80003b94:	fe010113          	addi	sp,sp,-32
    80003b98:	00113c23          	sd	ra,24(sp)
    80003b9c:	00813823          	sd	s0,16(sp)
    80003ba0:	00913423          	sd	s1,8(sp)
    80003ba4:	02010413          	addi	s0,sp,32
    80003ba8:	00050493          	mv	s1,a0
    80003bac:	00008797          	auipc	a5,0x8
    80003bb0:	ff478793          	addi	a5,a5,-12 # 8000bba0 <_ZTV11PairThreadB+0x10>
    80003bb4:	00f53023          	sd	a5,0(a0)
    80003bb8:	fffff097          	auipc	ra,0xfffff
    80003bbc:	d58080e7          	jalr	-680(ra) # 80002910 <_ZN6ThreadD1Ev>
    80003bc0:	00048513          	mv	a0,s1
    80003bc4:	fffff097          	auipc	ra,0xfffff
    80003bc8:	be8080e7          	jalr	-1048(ra) # 800027ac <_ZdlPv>
    80003bcc:	01813083          	ld	ra,24(sp)
    80003bd0:	01013403          	ld	s0,16(sp)
    80003bd4:	00813483          	ld	s1,8(sp)
    80003bd8:	02010113          	addi	sp,sp,32
    80003bdc:	00008067          	ret

0000000080003be0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003be0:	fe010113          	addi	sp,sp,-32
    80003be4:	00113c23          	sd	ra,24(sp)
    80003be8:	00813823          	sd	s0,16(sp)
    80003bec:	00913423          	sd	s1,8(sp)
    80003bf0:	01213023          	sd	s2,0(sp)
    80003bf4:	02010413          	addi	s0,sp,32
    80003bf8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003bfc:	00100793          	li	a5,1
    80003c00:	02a7f863          	bgeu	a5,a0,80003c30 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003c04:	00a00793          	li	a5,10
    80003c08:	02f577b3          	remu	a5,a0,a5
    80003c0c:	02078e63          	beqz	a5,80003c48 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003c10:	fff48513          	addi	a0,s1,-1
    80003c14:	00000097          	auipc	ra,0x0
    80003c18:	fcc080e7          	jalr	-52(ra) # 80003be0 <_ZL9fibonaccim>
    80003c1c:	00050913          	mv	s2,a0
    80003c20:	ffe48513          	addi	a0,s1,-2
    80003c24:	00000097          	auipc	ra,0x0
    80003c28:	fbc080e7          	jalr	-68(ra) # 80003be0 <_ZL9fibonaccim>
    80003c2c:	00a90533          	add	a0,s2,a0
}
    80003c30:	01813083          	ld	ra,24(sp)
    80003c34:	01013403          	ld	s0,16(sp)
    80003c38:	00813483          	ld	s1,8(sp)
    80003c3c:	00013903          	ld	s2,0(sp)
    80003c40:	02010113          	addi	sp,sp,32
    80003c44:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003c48:	ffffd097          	auipc	ra,0xffffd
    80003c4c:	740080e7          	jalr	1856(ra) # 80001388 <_Z15thread_dispatchv>
    80003c50:	fc1ff06f          	j	80003c10 <_ZL9fibonaccim+0x30>

0000000080003c54 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003c54:	fe010113          	addi	sp,sp,-32
    80003c58:	00113c23          	sd	ra,24(sp)
    80003c5c:	00813823          	sd	s0,16(sp)
    80003c60:	00913423          	sd	s1,8(sp)
    80003c64:	01213023          	sd	s2,0(sp)
    80003c68:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003c6c:	00000913          	li	s2,0
    80003c70:	0380006f          	j	80003ca8 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003c74:	ffffd097          	auipc	ra,0xffffd
    80003c78:	714080e7          	jalr	1812(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003c7c:	00148493          	addi	s1,s1,1
    80003c80:	000027b7          	lui	a5,0x2
    80003c84:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003c88:	0097ee63          	bltu	a5,s1,80003ca4 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003c8c:	00000713          	li	a4,0
    80003c90:	000077b7          	lui	a5,0x7
    80003c94:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003c98:	fce7eee3          	bltu	a5,a4,80003c74 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003c9c:	00170713          	addi	a4,a4,1
    80003ca0:	ff1ff06f          	j	80003c90 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003ca4:	00190913          	addi	s2,s2,1
    80003ca8:	00900793          	li	a5,9
    80003cac:	0527e063          	bltu	a5,s2,80003cec <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003cb0:	00006517          	auipc	a0,0x6
    80003cb4:	81850513          	addi	a0,a0,-2024 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80003cb8:	00002097          	auipc	ra,0x2
    80003cbc:	eac080e7          	jalr	-340(ra) # 80005b64 <_Z11printStringPKc>
    80003cc0:	00000613          	li	a2,0
    80003cc4:	00a00593          	li	a1,10
    80003cc8:	0009051b          	sext.w	a0,s2
    80003ccc:	00002097          	auipc	ra,0x2
    80003cd0:	048080e7          	jalr	72(ra) # 80005d14 <_Z8printIntiii>
    80003cd4:	00005517          	auipc	a0,0x5
    80003cd8:	5cc50513          	addi	a0,a0,1484 # 800092a0 <CONSOLE_STATUS+0x290>
    80003cdc:	00002097          	auipc	ra,0x2
    80003ce0:	e88080e7          	jalr	-376(ra) # 80005b64 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003ce4:	00000493          	li	s1,0
    80003ce8:	f99ff06f          	j	80003c80 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003cec:	00005517          	auipc	a0,0x5
    80003cf0:	7e450513          	addi	a0,a0,2020 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80003cf4:	00002097          	auipc	ra,0x2
    80003cf8:	e70080e7          	jalr	-400(ra) # 80005b64 <_Z11printStringPKc>
    finishedA = true;
    80003cfc:	00100793          	li	a5,1
    80003d00:	00008717          	auipc	a4,0x8
    80003d04:	12f70823          	sb	a5,304(a4) # 8000be30 <_ZL9finishedA>
}
    80003d08:	01813083          	ld	ra,24(sp)
    80003d0c:	01013403          	ld	s0,16(sp)
    80003d10:	00813483          	ld	s1,8(sp)
    80003d14:	00013903          	ld	s2,0(sp)
    80003d18:	02010113          	addi	sp,sp,32
    80003d1c:	00008067          	ret

0000000080003d20 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003d20:	fe010113          	addi	sp,sp,-32
    80003d24:	00113c23          	sd	ra,24(sp)
    80003d28:	00813823          	sd	s0,16(sp)
    80003d2c:	00913423          	sd	s1,8(sp)
    80003d30:	01213023          	sd	s2,0(sp)
    80003d34:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003d38:	00000913          	li	s2,0
    80003d3c:	0380006f          	j	80003d74 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003d40:	ffffd097          	auipc	ra,0xffffd
    80003d44:	648080e7          	jalr	1608(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003d48:	00148493          	addi	s1,s1,1
    80003d4c:	000027b7          	lui	a5,0x2
    80003d50:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003d54:	0097ee63          	bltu	a5,s1,80003d70 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003d58:	00000713          	li	a4,0
    80003d5c:	000077b7          	lui	a5,0x7
    80003d60:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003d64:	fce7eee3          	bltu	a5,a4,80003d40 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003d68:	00170713          	addi	a4,a4,1
    80003d6c:	ff1ff06f          	j	80003d5c <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003d70:	00190913          	addi	s2,s2,1
    80003d74:	00f00793          	li	a5,15
    80003d78:	0527e063          	bltu	a5,s2,80003db8 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003d7c:	00005517          	auipc	a0,0x5
    80003d80:	76450513          	addi	a0,a0,1892 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80003d84:	00002097          	auipc	ra,0x2
    80003d88:	de0080e7          	jalr	-544(ra) # 80005b64 <_Z11printStringPKc>
    80003d8c:	00000613          	li	a2,0
    80003d90:	00a00593          	li	a1,10
    80003d94:	0009051b          	sext.w	a0,s2
    80003d98:	00002097          	auipc	ra,0x2
    80003d9c:	f7c080e7          	jalr	-132(ra) # 80005d14 <_Z8printIntiii>
    80003da0:	00005517          	auipc	a0,0x5
    80003da4:	50050513          	addi	a0,a0,1280 # 800092a0 <CONSOLE_STATUS+0x290>
    80003da8:	00002097          	auipc	ra,0x2
    80003dac:	dbc080e7          	jalr	-580(ra) # 80005b64 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003db0:	00000493          	li	s1,0
    80003db4:	f99ff06f          	j	80003d4c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003db8:	00005517          	auipc	a0,0x5
    80003dbc:	73050513          	addi	a0,a0,1840 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80003dc0:	00002097          	auipc	ra,0x2
    80003dc4:	da4080e7          	jalr	-604(ra) # 80005b64 <_Z11printStringPKc>
    finishedB = true;
    80003dc8:	00100793          	li	a5,1
    80003dcc:	00008717          	auipc	a4,0x8
    80003dd0:	06f702a3          	sb	a5,101(a4) # 8000be31 <_ZL9finishedB>
    thread_dispatch();
    80003dd4:	ffffd097          	auipc	ra,0xffffd
    80003dd8:	5b4080e7          	jalr	1460(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003ddc:	01813083          	ld	ra,24(sp)
    80003de0:	01013403          	ld	s0,16(sp)
    80003de4:	00813483          	ld	s1,8(sp)
    80003de8:	00013903          	ld	s2,0(sp)
    80003dec:	02010113          	addi	sp,sp,32
    80003df0:	00008067          	ret

0000000080003df4 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003df4:	fe010113          	addi	sp,sp,-32
    80003df8:	00113c23          	sd	ra,24(sp)
    80003dfc:	00813823          	sd	s0,16(sp)
    80003e00:	00913423          	sd	s1,8(sp)
    80003e04:	01213023          	sd	s2,0(sp)
    80003e08:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003e0c:	00000493          	li	s1,0
    80003e10:	0400006f          	j	80003e50 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003e14:	00005517          	auipc	a0,0x5
    80003e18:	6e450513          	addi	a0,a0,1764 # 800094f8 <CONSOLE_STATUS+0x4e8>
    80003e1c:	00002097          	auipc	ra,0x2
    80003e20:	d48080e7          	jalr	-696(ra) # 80005b64 <_Z11printStringPKc>
    80003e24:	00000613          	li	a2,0
    80003e28:	00a00593          	li	a1,10
    80003e2c:	00048513          	mv	a0,s1
    80003e30:	00002097          	auipc	ra,0x2
    80003e34:	ee4080e7          	jalr	-284(ra) # 80005d14 <_Z8printIntiii>
    80003e38:	00005517          	auipc	a0,0x5
    80003e3c:	46850513          	addi	a0,a0,1128 # 800092a0 <CONSOLE_STATUS+0x290>
    80003e40:	00002097          	auipc	ra,0x2
    80003e44:	d24080e7          	jalr	-732(ra) # 80005b64 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003e48:	0014849b          	addiw	s1,s1,1
    80003e4c:	0ff4f493          	andi	s1,s1,255
    80003e50:	00200793          	li	a5,2
    80003e54:	fc97f0e3          	bgeu	a5,s1,80003e14 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003e58:	00005517          	auipc	a0,0x5
    80003e5c:	6a850513          	addi	a0,a0,1704 # 80009500 <CONSOLE_STATUS+0x4f0>
    80003e60:	00002097          	auipc	ra,0x2
    80003e64:	d04080e7          	jalr	-764(ra) # 80005b64 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003e68:	00700313          	li	t1,7
    thread_dispatch();
    80003e6c:	ffffd097          	auipc	ra,0xffffd
    80003e70:	51c080e7          	jalr	1308(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003e74:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003e78:	00005517          	auipc	a0,0x5
    80003e7c:	69850513          	addi	a0,a0,1688 # 80009510 <CONSOLE_STATUS+0x500>
    80003e80:	00002097          	auipc	ra,0x2
    80003e84:	ce4080e7          	jalr	-796(ra) # 80005b64 <_Z11printStringPKc>
    80003e88:	00000613          	li	a2,0
    80003e8c:	00a00593          	li	a1,10
    80003e90:	0009051b          	sext.w	a0,s2
    80003e94:	00002097          	auipc	ra,0x2
    80003e98:	e80080e7          	jalr	-384(ra) # 80005d14 <_Z8printIntiii>
    80003e9c:	00005517          	auipc	a0,0x5
    80003ea0:	40450513          	addi	a0,a0,1028 # 800092a0 <CONSOLE_STATUS+0x290>
    80003ea4:	00002097          	auipc	ra,0x2
    80003ea8:	cc0080e7          	jalr	-832(ra) # 80005b64 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003eac:	00c00513          	li	a0,12
    80003eb0:	00000097          	auipc	ra,0x0
    80003eb4:	d30080e7          	jalr	-720(ra) # 80003be0 <_ZL9fibonaccim>
    80003eb8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003ebc:	00005517          	auipc	a0,0x5
    80003ec0:	65c50513          	addi	a0,a0,1628 # 80009518 <CONSOLE_STATUS+0x508>
    80003ec4:	00002097          	auipc	ra,0x2
    80003ec8:	ca0080e7          	jalr	-864(ra) # 80005b64 <_Z11printStringPKc>
    80003ecc:	00000613          	li	a2,0
    80003ed0:	00a00593          	li	a1,10
    80003ed4:	0009051b          	sext.w	a0,s2
    80003ed8:	00002097          	auipc	ra,0x2
    80003edc:	e3c080e7          	jalr	-452(ra) # 80005d14 <_Z8printIntiii>
    80003ee0:	00005517          	auipc	a0,0x5
    80003ee4:	3c050513          	addi	a0,a0,960 # 800092a0 <CONSOLE_STATUS+0x290>
    80003ee8:	00002097          	auipc	ra,0x2
    80003eec:	c7c080e7          	jalr	-900(ra) # 80005b64 <_Z11printStringPKc>
    80003ef0:	0400006f          	j	80003f30 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003ef4:	00005517          	auipc	a0,0x5
    80003ef8:	60450513          	addi	a0,a0,1540 # 800094f8 <CONSOLE_STATUS+0x4e8>
    80003efc:	00002097          	auipc	ra,0x2
    80003f00:	c68080e7          	jalr	-920(ra) # 80005b64 <_Z11printStringPKc>
    80003f04:	00000613          	li	a2,0
    80003f08:	00a00593          	li	a1,10
    80003f0c:	00048513          	mv	a0,s1
    80003f10:	00002097          	auipc	ra,0x2
    80003f14:	e04080e7          	jalr	-508(ra) # 80005d14 <_Z8printIntiii>
    80003f18:	00005517          	auipc	a0,0x5
    80003f1c:	38850513          	addi	a0,a0,904 # 800092a0 <CONSOLE_STATUS+0x290>
    80003f20:	00002097          	auipc	ra,0x2
    80003f24:	c44080e7          	jalr	-956(ra) # 80005b64 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003f28:	0014849b          	addiw	s1,s1,1
    80003f2c:	0ff4f493          	andi	s1,s1,255
    80003f30:	00500793          	li	a5,5
    80003f34:	fc97f0e3          	bgeu	a5,s1,80003ef4 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003f38:	00005517          	auipc	a0,0x5
    80003f3c:	59850513          	addi	a0,a0,1432 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80003f40:	00002097          	auipc	ra,0x2
    80003f44:	c24080e7          	jalr	-988(ra) # 80005b64 <_Z11printStringPKc>
    finishedC = true;
    80003f48:	00100793          	li	a5,1
    80003f4c:	00008717          	auipc	a4,0x8
    80003f50:	eef70323          	sb	a5,-282(a4) # 8000be32 <_ZL9finishedC>
    thread_dispatch();
    80003f54:	ffffd097          	auipc	ra,0xffffd
    80003f58:	434080e7          	jalr	1076(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003f5c:	01813083          	ld	ra,24(sp)
    80003f60:	01013403          	ld	s0,16(sp)
    80003f64:	00813483          	ld	s1,8(sp)
    80003f68:	00013903          	ld	s2,0(sp)
    80003f6c:	02010113          	addi	sp,sp,32
    80003f70:	00008067          	ret

0000000080003f74 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003f74:	fe010113          	addi	sp,sp,-32
    80003f78:	00113c23          	sd	ra,24(sp)
    80003f7c:	00813823          	sd	s0,16(sp)
    80003f80:	00913423          	sd	s1,8(sp)
    80003f84:	01213023          	sd	s2,0(sp)
    80003f88:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003f8c:	00a00493          	li	s1,10
    80003f90:	0400006f          	j	80003fd0 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003f94:	00005517          	auipc	a0,0x5
    80003f98:	59450513          	addi	a0,a0,1428 # 80009528 <CONSOLE_STATUS+0x518>
    80003f9c:	00002097          	auipc	ra,0x2
    80003fa0:	bc8080e7          	jalr	-1080(ra) # 80005b64 <_Z11printStringPKc>
    80003fa4:	00000613          	li	a2,0
    80003fa8:	00a00593          	li	a1,10
    80003fac:	00048513          	mv	a0,s1
    80003fb0:	00002097          	auipc	ra,0x2
    80003fb4:	d64080e7          	jalr	-668(ra) # 80005d14 <_Z8printIntiii>
    80003fb8:	00005517          	auipc	a0,0x5
    80003fbc:	2e850513          	addi	a0,a0,744 # 800092a0 <CONSOLE_STATUS+0x290>
    80003fc0:	00002097          	auipc	ra,0x2
    80003fc4:	ba4080e7          	jalr	-1116(ra) # 80005b64 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003fc8:	0014849b          	addiw	s1,s1,1
    80003fcc:	0ff4f493          	andi	s1,s1,255
    80003fd0:	00c00793          	li	a5,12
    80003fd4:	fc97f0e3          	bgeu	a5,s1,80003f94 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003fd8:	00005517          	auipc	a0,0x5
    80003fdc:	55850513          	addi	a0,a0,1368 # 80009530 <CONSOLE_STATUS+0x520>
    80003fe0:	00002097          	auipc	ra,0x2
    80003fe4:	b84080e7          	jalr	-1148(ra) # 80005b64 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003fe8:	00500313          	li	t1,5
    thread_dispatch();
    80003fec:	ffffd097          	auipc	ra,0xffffd
    80003ff0:	39c080e7          	jalr	924(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003ff4:	01000513          	li	a0,16
    80003ff8:	00000097          	auipc	ra,0x0
    80003ffc:	be8080e7          	jalr	-1048(ra) # 80003be0 <_ZL9fibonaccim>
    80004000:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004004:	00005517          	auipc	a0,0x5
    80004008:	53c50513          	addi	a0,a0,1340 # 80009540 <CONSOLE_STATUS+0x530>
    8000400c:	00002097          	auipc	ra,0x2
    80004010:	b58080e7          	jalr	-1192(ra) # 80005b64 <_Z11printStringPKc>
    80004014:	00000613          	li	a2,0
    80004018:	00a00593          	li	a1,10
    8000401c:	0009051b          	sext.w	a0,s2
    80004020:	00002097          	auipc	ra,0x2
    80004024:	cf4080e7          	jalr	-780(ra) # 80005d14 <_Z8printIntiii>
    80004028:	00005517          	auipc	a0,0x5
    8000402c:	27850513          	addi	a0,a0,632 # 800092a0 <CONSOLE_STATUS+0x290>
    80004030:	00002097          	auipc	ra,0x2
    80004034:	b34080e7          	jalr	-1228(ra) # 80005b64 <_Z11printStringPKc>
    80004038:	0400006f          	j	80004078 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000403c:	00005517          	auipc	a0,0x5
    80004040:	4ec50513          	addi	a0,a0,1260 # 80009528 <CONSOLE_STATUS+0x518>
    80004044:	00002097          	auipc	ra,0x2
    80004048:	b20080e7          	jalr	-1248(ra) # 80005b64 <_Z11printStringPKc>
    8000404c:	00000613          	li	a2,0
    80004050:	00a00593          	li	a1,10
    80004054:	00048513          	mv	a0,s1
    80004058:	00002097          	auipc	ra,0x2
    8000405c:	cbc080e7          	jalr	-836(ra) # 80005d14 <_Z8printIntiii>
    80004060:	00005517          	auipc	a0,0x5
    80004064:	24050513          	addi	a0,a0,576 # 800092a0 <CONSOLE_STATUS+0x290>
    80004068:	00002097          	auipc	ra,0x2
    8000406c:	afc080e7          	jalr	-1284(ra) # 80005b64 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004070:	0014849b          	addiw	s1,s1,1
    80004074:	0ff4f493          	andi	s1,s1,255
    80004078:	00f00793          	li	a5,15
    8000407c:	fc97f0e3          	bgeu	a5,s1,8000403c <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004080:	00005517          	auipc	a0,0x5
    80004084:	4d050513          	addi	a0,a0,1232 # 80009550 <CONSOLE_STATUS+0x540>
    80004088:	00002097          	auipc	ra,0x2
    8000408c:	adc080e7          	jalr	-1316(ra) # 80005b64 <_Z11printStringPKc>
    finishedD = true;
    80004090:	00100793          	li	a5,1
    80004094:	00008717          	auipc	a4,0x8
    80004098:	d8f70fa3          	sb	a5,-609(a4) # 8000be33 <_ZL9finishedD>
    thread_dispatch();
    8000409c:	ffffd097          	auipc	ra,0xffffd
    800040a0:	2ec080e7          	jalr	748(ra) # 80001388 <_Z15thread_dispatchv>
}
    800040a4:	01813083          	ld	ra,24(sp)
    800040a8:	01013403          	ld	s0,16(sp)
    800040ac:	00813483          	ld	s1,8(sp)
    800040b0:	00013903          	ld	s2,0(sp)
    800040b4:	02010113          	addi	sp,sp,32
    800040b8:	00008067          	ret

00000000800040bc <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800040bc:	fc010113          	addi	sp,sp,-64
    800040c0:	02113c23          	sd	ra,56(sp)
    800040c4:	02813823          	sd	s0,48(sp)
    800040c8:	02913423          	sd	s1,40(sp)
    800040cc:	03213023          	sd	s2,32(sp)
    800040d0:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800040d4:	02000513          	li	a0,32
    800040d8:	ffffe097          	auipc	ra,0xffffe
    800040dc:	684080e7          	jalr	1668(ra) # 8000275c <_Znwm>
    800040e0:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800040e4:	fffff097          	auipc	ra,0xfffff
    800040e8:	950080e7          	jalr	-1712(ra) # 80002a34 <_ZN6ThreadC1Ev>
    800040ec:	00008797          	auipc	a5,0x8
    800040f0:	adc78793          	addi	a5,a5,-1316 # 8000bbc8 <_ZTV7WorkerA+0x10>
    800040f4:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800040f8:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800040fc:	00005517          	auipc	a0,0x5
    80004100:	46450513          	addi	a0,a0,1124 # 80009560 <CONSOLE_STATUS+0x550>
    80004104:	00002097          	auipc	ra,0x2
    80004108:	a60080e7          	jalr	-1440(ra) # 80005b64 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    8000410c:	02000513          	li	a0,32
    80004110:	ffffe097          	auipc	ra,0xffffe
    80004114:	64c080e7          	jalr	1612(ra) # 8000275c <_Znwm>
    80004118:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    8000411c:	fffff097          	auipc	ra,0xfffff
    80004120:	918080e7          	jalr	-1768(ra) # 80002a34 <_ZN6ThreadC1Ev>
    80004124:	00008797          	auipc	a5,0x8
    80004128:	acc78793          	addi	a5,a5,-1332 # 8000bbf0 <_ZTV7WorkerB+0x10>
    8000412c:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004130:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004134:	00005517          	auipc	a0,0x5
    80004138:	44450513          	addi	a0,a0,1092 # 80009578 <CONSOLE_STATUS+0x568>
    8000413c:	00002097          	auipc	ra,0x2
    80004140:	a28080e7          	jalr	-1496(ra) # 80005b64 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004144:	02000513          	li	a0,32
    80004148:	ffffe097          	auipc	ra,0xffffe
    8000414c:	614080e7          	jalr	1556(ra) # 8000275c <_Znwm>
    80004150:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80004154:	fffff097          	auipc	ra,0xfffff
    80004158:	8e0080e7          	jalr	-1824(ra) # 80002a34 <_ZN6ThreadC1Ev>
    8000415c:	00008797          	auipc	a5,0x8
    80004160:	abc78793          	addi	a5,a5,-1348 # 8000bc18 <_ZTV7WorkerC+0x10>
    80004164:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004168:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    8000416c:	00005517          	auipc	a0,0x5
    80004170:	42450513          	addi	a0,a0,1060 # 80009590 <CONSOLE_STATUS+0x580>
    80004174:	00002097          	auipc	ra,0x2
    80004178:	9f0080e7          	jalr	-1552(ra) # 80005b64 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    8000417c:	02000513          	li	a0,32
    80004180:	ffffe097          	auipc	ra,0xffffe
    80004184:	5dc080e7          	jalr	1500(ra) # 8000275c <_Znwm>
    80004188:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    8000418c:	fffff097          	auipc	ra,0xfffff
    80004190:	8a8080e7          	jalr	-1880(ra) # 80002a34 <_ZN6ThreadC1Ev>
    80004194:	00008797          	auipc	a5,0x8
    80004198:	aac78793          	addi	a5,a5,-1364 # 8000bc40 <_ZTV7WorkerD+0x10>
    8000419c:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800041a0:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800041a4:	00005517          	auipc	a0,0x5
    800041a8:	40450513          	addi	a0,a0,1028 # 800095a8 <CONSOLE_STATUS+0x598>
    800041ac:	00002097          	auipc	ra,0x2
    800041b0:	9b8080e7          	jalr	-1608(ra) # 80005b64 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800041b4:	00000493          	li	s1,0
    800041b8:	00300793          	li	a5,3
    800041bc:	0297c663          	blt	a5,s1,800041e8 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800041c0:	00349793          	slli	a5,s1,0x3
    800041c4:	fe040713          	addi	a4,s0,-32
    800041c8:	00f707b3          	add	a5,a4,a5
    800041cc:	fe07b503          	ld	a0,-32(a5)
    800041d0:	fffff097          	auipc	ra,0xfffff
    800041d4:	894080e7          	jalr	-1900(ra) # 80002a64 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800041d8:	0014849b          	addiw	s1,s1,1
    800041dc:	fddff06f          	j	800041b8 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800041e0:	fffff097          	auipc	ra,0xfffff
    800041e4:	8d8080e7          	jalr	-1832(ra) # 80002ab8 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800041e8:	00008797          	auipc	a5,0x8
    800041ec:	c487c783          	lbu	a5,-952(a5) # 8000be30 <_ZL9finishedA>
    800041f0:	fe0788e3          	beqz	a5,800041e0 <_Z20Threads_CPP_API_testv+0x124>
    800041f4:	00008797          	auipc	a5,0x8
    800041f8:	c3d7c783          	lbu	a5,-963(a5) # 8000be31 <_ZL9finishedB>
    800041fc:	fe0782e3          	beqz	a5,800041e0 <_Z20Threads_CPP_API_testv+0x124>
    80004200:	00008797          	auipc	a5,0x8
    80004204:	c327c783          	lbu	a5,-974(a5) # 8000be32 <_ZL9finishedC>
    80004208:	fc078ce3          	beqz	a5,800041e0 <_Z20Threads_CPP_API_testv+0x124>
    8000420c:	00008797          	auipc	a5,0x8
    80004210:	c277c783          	lbu	a5,-985(a5) # 8000be33 <_ZL9finishedD>
    80004214:	fc0786e3          	beqz	a5,800041e0 <_Z20Threads_CPP_API_testv+0x124>
    80004218:	fc040493          	addi	s1,s0,-64
    8000421c:	0080006f          	j	80004224 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004220:	00848493          	addi	s1,s1,8
    80004224:	fe040793          	addi	a5,s0,-32
    80004228:	08f48663          	beq	s1,a5,800042b4 <_Z20Threads_CPP_API_testv+0x1f8>
    8000422c:	0004b503          	ld	a0,0(s1)
    80004230:	fe0508e3          	beqz	a0,80004220 <_Z20Threads_CPP_API_testv+0x164>
    80004234:	00053783          	ld	a5,0(a0)
    80004238:	0087b783          	ld	a5,8(a5)
    8000423c:	000780e7          	jalr	a5
    80004240:	fe1ff06f          	j	80004220 <_Z20Threads_CPP_API_testv+0x164>
    80004244:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004248:	00048513          	mv	a0,s1
    8000424c:	ffffe097          	auipc	ra,0xffffe
    80004250:	560080e7          	jalr	1376(ra) # 800027ac <_ZdlPv>
    80004254:	00090513          	mv	a0,s2
    80004258:	00009097          	auipc	ra,0x9
    8000425c:	ce0080e7          	jalr	-800(ra) # 8000cf38 <_Unwind_Resume>
    80004260:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004264:	00048513          	mv	a0,s1
    80004268:	ffffe097          	auipc	ra,0xffffe
    8000426c:	544080e7          	jalr	1348(ra) # 800027ac <_ZdlPv>
    80004270:	00090513          	mv	a0,s2
    80004274:	00009097          	auipc	ra,0x9
    80004278:	cc4080e7          	jalr	-828(ra) # 8000cf38 <_Unwind_Resume>
    8000427c:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004280:	00048513          	mv	a0,s1
    80004284:	ffffe097          	auipc	ra,0xffffe
    80004288:	528080e7          	jalr	1320(ra) # 800027ac <_ZdlPv>
    8000428c:	00090513          	mv	a0,s2
    80004290:	00009097          	auipc	ra,0x9
    80004294:	ca8080e7          	jalr	-856(ra) # 8000cf38 <_Unwind_Resume>
    80004298:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    8000429c:	00048513          	mv	a0,s1
    800042a0:	ffffe097          	auipc	ra,0xffffe
    800042a4:	50c080e7          	jalr	1292(ra) # 800027ac <_ZdlPv>
    800042a8:	00090513          	mv	a0,s2
    800042ac:	00009097          	auipc	ra,0x9
    800042b0:	c8c080e7          	jalr	-884(ra) # 8000cf38 <_Unwind_Resume>
}
    800042b4:	03813083          	ld	ra,56(sp)
    800042b8:	03013403          	ld	s0,48(sp)
    800042bc:	02813483          	ld	s1,40(sp)
    800042c0:	02013903          	ld	s2,32(sp)
    800042c4:	04010113          	addi	sp,sp,64
    800042c8:	00008067          	ret

00000000800042cc <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800042cc:	ff010113          	addi	sp,sp,-16
    800042d0:	00113423          	sd	ra,8(sp)
    800042d4:	00813023          	sd	s0,0(sp)
    800042d8:	01010413          	addi	s0,sp,16
    800042dc:	00008797          	auipc	a5,0x8
    800042e0:	8ec78793          	addi	a5,a5,-1812 # 8000bbc8 <_ZTV7WorkerA+0x10>
    800042e4:	00f53023          	sd	a5,0(a0)
    800042e8:	ffffe097          	auipc	ra,0xffffe
    800042ec:	628080e7          	jalr	1576(ra) # 80002910 <_ZN6ThreadD1Ev>
    800042f0:	00813083          	ld	ra,8(sp)
    800042f4:	00013403          	ld	s0,0(sp)
    800042f8:	01010113          	addi	sp,sp,16
    800042fc:	00008067          	ret

0000000080004300 <_ZN7WorkerAD0Ev>:
    80004300:	fe010113          	addi	sp,sp,-32
    80004304:	00113c23          	sd	ra,24(sp)
    80004308:	00813823          	sd	s0,16(sp)
    8000430c:	00913423          	sd	s1,8(sp)
    80004310:	02010413          	addi	s0,sp,32
    80004314:	00050493          	mv	s1,a0
    80004318:	00008797          	auipc	a5,0x8
    8000431c:	8b078793          	addi	a5,a5,-1872 # 8000bbc8 <_ZTV7WorkerA+0x10>
    80004320:	00f53023          	sd	a5,0(a0)
    80004324:	ffffe097          	auipc	ra,0xffffe
    80004328:	5ec080e7          	jalr	1516(ra) # 80002910 <_ZN6ThreadD1Ev>
    8000432c:	00048513          	mv	a0,s1
    80004330:	ffffe097          	auipc	ra,0xffffe
    80004334:	47c080e7          	jalr	1148(ra) # 800027ac <_ZdlPv>
    80004338:	01813083          	ld	ra,24(sp)
    8000433c:	01013403          	ld	s0,16(sp)
    80004340:	00813483          	ld	s1,8(sp)
    80004344:	02010113          	addi	sp,sp,32
    80004348:	00008067          	ret

000000008000434c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    8000434c:	ff010113          	addi	sp,sp,-16
    80004350:	00113423          	sd	ra,8(sp)
    80004354:	00813023          	sd	s0,0(sp)
    80004358:	01010413          	addi	s0,sp,16
    8000435c:	00008797          	auipc	a5,0x8
    80004360:	89478793          	addi	a5,a5,-1900 # 8000bbf0 <_ZTV7WorkerB+0x10>
    80004364:	00f53023          	sd	a5,0(a0)
    80004368:	ffffe097          	auipc	ra,0xffffe
    8000436c:	5a8080e7          	jalr	1448(ra) # 80002910 <_ZN6ThreadD1Ev>
    80004370:	00813083          	ld	ra,8(sp)
    80004374:	00013403          	ld	s0,0(sp)
    80004378:	01010113          	addi	sp,sp,16
    8000437c:	00008067          	ret

0000000080004380 <_ZN7WorkerBD0Ev>:
    80004380:	fe010113          	addi	sp,sp,-32
    80004384:	00113c23          	sd	ra,24(sp)
    80004388:	00813823          	sd	s0,16(sp)
    8000438c:	00913423          	sd	s1,8(sp)
    80004390:	02010413          	addi	s0,sp,32
    80004394:	00050493          	mv	s1,a0
    80004398:	00008797          	auipc	a5,0x8
    8000439c:	85878793          	addi	a5,a5,-1960 # 8000bbf0 <_ZTV7WorkerB+0x10>
    800043a0:	00f53023          	sd	a5,0(a0)
    800043a4:	ffffe097          	auipc	ra,0xffffe
    800043a8:	56c080e7          	jalr	1388(ra) # 80002910 <_ZN6ThreadD1Ev>
    800043ac:	00048513          	mv	a0,s1
    800043b0:	ffffe097          	auipc	ra,0xffffe
    800043b4:	3fc080e7          	jalr	1020(ra) # 800027ac <_ZdlPv>
    800043b8:	01813083          	ld	ra,24(sp)
    800043bc:	01013403          	ld	s0,16(sp)
    800043c0:	00813483          	ld	s1,8(sp)
    800043c4:	02010113          	addi	sp,sp,32
    800043c8:	00008067          	ret

00000000800043cc <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800043cc:	ff010113          	addi	sp,sp,-16
    800043d0:	00113423          	sd	ra,8(sp)
    800043d4:	00813023          	sd	s0,0(sp)
    800043d8:	01010413          	addi	s0,sp,16
    800043dc:	00008797          	auipc	a5,0x8
    800043e0:	83c78793          	addi	a5,a5,-1988 # 8000bc18 <_ZTV7WorkerC+0x10>
    800043e4:	00f53023          	sd	a5,0(a0)
    800043e8:	ffffe097          	auipc	ra,0xffffe
    800043ec:	528080e7          	jalr	1320(ra) # 80002910 <_ZN6ThreadD1Ev>
    800043f0:	00813083          	ld	ra,8(sp)
    800043f4:	00013403          	ld	s0,0(sp)
    800043f8:	01010113          	addi	sp,sp,16
    800043fc:	00008067          	ret

0000000080004400 <_ZN7WorkerCD0Ev>:
    80004400:	fe010113          	addi	sp,sp,-32
    80004404:	00113c23          	sd	ra,24(sp)
    80004408:	00813823          	sd	s0,16(sp)
    8000440c:	00913423          	sd	s1,8(sp)
    80004410:	02010413          	addi	s0,sp,32
    80004414:	00050493          	mv	s1,a0
    80004418:	00008797          	auipc	a5,0x8
    8000441c:	80078793          	addi	a5,a5,-2048 # 8000bc18 <_ZTV7WorkerC+0x10>
    80004420:	00f53023          	sd	a5,0(a0)
    80004424:	ffffe097          	auipc	ra,0xffffe
    80004428:	4ec080e7          	jalr	1260(ra) # 80002910 <_ZN6ThreadD1Ev>
    8000442c:	00048513          	mv	a0,s1
    80004430:	ffffe097          	auipc	ra,0xffffe
    80004434:	37c080e7          	jalr	892(ra) # 800027ac <_ZdlPv>
    80004438:	01813083          	ld	ra,24(sp)
    8000443c:	01013403          	ld	s0,16(sp)
    80004440:	00813483          	ld	s1,8(sp)
    80004444:	02010113          	addi	sp,sp,32
    80004448:	00008067          	ret

000000008000444c <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    8000444c:	ff010113          	addi	sp,sp,-16
    80004450:	00113423          	sd	ra,8(sp)
    80004454:	00813023          	sd	s0,0(sp)
    80004458:	01010413          	addi	s0,sp,16
    8000445c:	00007797          	auipc	a5,0x7
    80004460:	7e478793          	addi	a5,a5,2020 # 8000bc40 <_ZTV7WorkerD+0x10>
    80004464:	00f53023          	sd	a5,0(a0)
    80004468:	ffffe097          	auipc	ra,0xffffe
    8000446c:	4a8080e7          	jalr	1192(ra) # 80002910 <_ZN6ThreadD1Ev>
    80004470:	00813083          	ld	ra,8(sp)
    80004474:	00013403          	ld	s0,0(sp)
    80004478:	01010113          	addi	sp,sp,16
    8000447c:	00008067          	ret

0000000080004480 <_ZN7WorkerDD0Ev>:
    80004480:	fe010113          	addi	sp,sp,-32
    80004484:	00113c23          	sd	ra,24(sp)
    80004488:	00813823          	sd	s0,16(sp)
    8000448c:	00913423          	sd	s1,8(sp)
    80004490:	02010413          	addi	s0,sp,32
    80004494:	00050493          	mv	s1,a0
    80004498:	00007797          	auipc	a5,0x7
    8000449c:	7a878793          	addi	a5,a5,1960 # 8000bc40 <_ZTV7WorkerD+0x10>
    800044a0:	00f53023          	sd	a5,0(a0)
    800044a4:	ffffe097          	auipc	ra,0xffffe
    800044a8:	46c080e7          	jalr	1132(ra) # 80002910 <_ZN6ThreadD1Ev>
    800044ac:	00048513          	mv	a0,s1
    800044b0:	ffffe097          	auipc	ra,0xffffe
    800044b4:	2fc080e7          	jalr	764(ra) # 800027ac <_ZdlPv>
    800044b8:	01813083          	ld	ra,24(sp)
    800044bc:	01013403          	ld	s0,16(sp)
    800044c0:	00813483          	ld	s1,8(sp)
    800044c4:	02010113          	addi	sp,sp,32
    800044c8:	00008067          	ret

00000000800044cc <_ZN7WorkerA3runEv>:
    void run() override {
    800044cc:	ff010113          	addi	sp,sp,-16
    800044d0:	00113423          	sd	ra,8(sp)
    800044d4:	00813023          	sd	s0,0(sp)
    800044d8:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800044dc:	00000593          	li	a1,0
    800044e0:	fffff097          	auipc	ra,0xfffff
    800044e4:	774080e7          	jalr	1908(ra) # 80003c54 <_ZN7WorkerA11workerBodyAEPv>
    }
    800044e8:	00813083          	ld	ra,8(sp)
    800044ec:	00013403          	ld	s0,0(sp)
    800044f0:	01010113          	addi	sp,sp,16
    800044f4:	00008067          	ret

00000000800044f8 <_ZN7WorkerB3runEv>:
    void run() override {
    800044f8:	ff010113          	addi	sp,sp,-16
    800044fc:	00113423          	sd	ra,8(sp)
    80004500:	00813023          	sd	s0,0(sp)
    80004504:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004508:	00000593          	li	a1,0
    8000450c:	00000097          	auipc	ra,0x0
    80004510:	814080e7          	jalr	-2028(ra) # 80003d20 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004514:	00813083          	ld	ra,8(sp)
    80004518:	00013403          	ld	s0,0(sp)
    8000451c:	01010113          	addi	sp,sp,16
    80004520:	00008067          	ret

0000000080004524 <_ZN7WorkerC3runEv>:
    void run() override {
    80004524:	ff010113          	addi	sp,sp,-16
    80004528:	00113423          	sd	ra,8(sp)
    8000452c:	00813023          	sd	s0,0(sp)
    80004530:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004534:	00000593          	li	a1,0
    80004538:	00000097          	auipc	ra,0x0
    8000453c:	8bc080e7          	jalr	-1860(ra) # 80003df4 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004540:	00813083          	ld	ra,8(sp)
    80004544:	00013403          	ld	s0,0(sp)
    80004548:	01010113          	addi	sp,sp,16
    8000454c:	00008067          	ret

0000000080004550 <_ZN7WorkerD3runEv>:
    void run() override {
    80004550:	ff010113          	addi	sp,sp,-16
    80004554:	00113423          	sd	ra,8(sp)
    80004558:	00813023          	sd	s0,0(sp)
    8000455c:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004560:	00000593          	li	a1,0
    80004564:	00000097          	auipc	ra,0x0
    80004568:	a10080e7          	jalr	-1520(ra) # 80003f74 <_ZN7WorkerD11workerBodyDEPv>
    }
    8000456c:	00813083          	ld	ra,8(sp)
    80004570:	00013403          	ld	s0,0(sp)
    80004574:	01010113          	addi	sp,sp,16
    80004578:	00008067          	ret

000000008000457c <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    8000457c:	f8010113          	addi	sp,sp,-128
    80004580:	06113c23          	sd	ra,120(sp)
    80004584:	06813823          	sd	s0,112(sp)
    80004588:	06913423          	sd	s1,104(sp)
    8000458c:	07213023          	sd	s2,96(sp)
    80004590:	05313c23          	sd	s3,88(sp)
    80004594:	05413823          	sd	s4,80(sp)
    80004598:	05513423          	sd	s5,72(sp)
    8000459c:	05613023          	sd	s6,64(sp)
    800045a0:	03713c23          	sd	s7,56(sp)
    800045a4:	03813823          	sd	s8,48(sp)
    800045a8:	03913423          	sd	s9,40(sp)
    800045ac:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800045b0:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800045b4:	00005517          	auipc	a0,0x5
    800045b8:	dbc50513          	addi	a0,a0,-580 # 80009370 <CONSOLE_STATUS+0x360>
    800045bc:	00001097          	auipc	ra,0x1
    800045c0:	5a8080e7          	jalr	1448(ra) # 80005b64 <_Z11printStringPKc>
    getString(input, 30);
    800045c4:	01e00593          	li	a1,30
    800045c8:	f8040493          	addi	s1,s0,-128
    800045cc:	00048513          	mv	a0,s1
    800045d0:	00001097          	auipc	ra,0x1
    800045d4:	61c080e7          	jalr	1564(ra) # 80005bec <_Z9getStringPci>
    threadNum = stringToInt(input);
    800045d8:	00048513          	mv	a0,s1
    800045dc:	00001097          	auipc	ra,0x1
    800045e0:	6e8080e7          	jalr	1768(ra) # 80005cc4 <_Z11stringToIntPKc>
    800045e4:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800045e8:	00005517          	auipc	a0,0x5
    800045ec:	da850513          	addi	a0,a0,-600 # 80009390 <CONSOLE_STATUS+0x380>
    800045f0:	00001097          	auipc	ra,0x1
    800045f4:	574080e7          	jalr	1396(ra) # 80005b64 <_Z11printStringPKc>
    getString(input, 30);
    800045f8:	01e00593          	li	a1,30
    800045fc:	00048513          	mv	a0,s1
    80004600:	00001097          	auipc	ra,0x1
    80004604:	5ec080e7          	jalr	1516(ra) # 80005bec <_Z9getStringPci>
    n = stringToInt(input);
    80004608:	00048513          	mv	a0,s1
    8000460c:	00001097          	auipc	ra,0x1
    80004610:	6b8080e7          	jalr	1720(ra) # 80005cc4 <_Z11stringToIntPKc>
    80004614:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004618:	00005517          	auipc	a0,0x5
    8000461c:	d9850513          	addi	a0,a0,-616 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80004620:	00001097          	auipc	ra,0x1
    80004624:	544080e7          	jalr	1348(ra) # 80005b64 <_Z11printStringPKc>
    printInt(threadNum);
    80004628:	00000613          	li	a2,0
    8000462c:	00a00593          	li	a1,10
    80004630:	00098513          	mv	a0,s3
    80004634:	00001097          	auipc	ra,0x1
    80004638:	6e0080e7          	jalr	1760(ra) # 80005d14 <_Z8printIntiii>
    printString(" i velicina bafera ");
    8000463c:	00005517          	auipc	a0,0x5
    80004640:	d8c50513          	addi	a0,a0,-628 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80004644:	00001097          	auipc	ra,0x1
    80004648:	520080e7          	jalr	1312(ra) # 80005b64 <_Z11printStringPKc>
    printInt(n);
    8000464c:	00000613          	li	a2,0
    80004650:	00a00593          	li	a1,10
    80004654:	00048513          	mv	a0,s1
    80004658:	00001097          	auipc	ra,0x1
    8000465c:	6bc080e7          	jalr	1724(ra) # 80005d14 <_Z8printIntiii>
    printString(".\n");
    80004660:	00005517          	auipc	a0,0x5
    80004664:	d8050513          	addi	a0,a0,-640 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80004668:	00001097          	auipc	ra,0x1
    8000466c:	4fc080e7          	jalr	1276(ra) # 80005b64 <_Z11printStringPKc>
    if (threadNum > n) {
    80004670:	0334c463          	blt	s1,s3,80004698 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004674:	03305c63          	blez	s3,800046ac <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004678:	03800513          	li	a0,56
    8000467c:	ffffe097          	auipc	ra,0xffffe
    80004680:	0e0080e7          	jalr	224(ra) # 8000275c <_Znwm>
    80004684:	00050a93          	mv	s5,a0
    80004688:	00048593          	mv	a1,s1
    8000468c:	00001097          	auipc	ra,0x1
    80004690:	7a8080e7          	jalr	1960(ra) # 80005e34 <_ZN9BufferCPPC1Ei>
    80004694:	0300006f          	j	800046c4 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004698:	00005517          	auipc	a0,0x5
    8000469c:	d5050513          	addi	a0,a0,-688 # 800093e8 <CONSOLE_STATUS+0x3d8>
    800046a0:	00001097          	auipc	ra,0x1
    800046a4:	4c4080e7          	jalr	1220(ra) # 80005b64 <_Z11printStringPKc>
        return;
    800046a8:	0140006f          	j	800046bc <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800046ac:	00005517          	auipc	a0,0x5
    800046b0:	d7c50513          	addi	a0,a0,-644 # 80009428 <CONSOLE_STATUS+0x418>
    800046b4:	00001097          	auipc	ra,0x1
    800046b8:	4b0080e7          	jalr	1200(ra) # 80005b64 <_Z11printStringPKc>
        return;
    800046bc:	000c0113          	mv	sp,s8
    800046c0:	2140006f          	j	800048d4 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800046c4:	01000513          	li	a0,16
    800046c8:	ffffe097          	auipc	ra,0xffffe
    800046cc:	094080e7          	jalr	148(ra) # 8000275c <_Znwm>
    800046d0:	00050913          	mv	s2,a0
    800046d4:	00000593          	li	a1,0
    800046d8:	ffffe097          	auipc	ra,0xffffe
    800046dc:	4bc080e7          	jalr	1212(ra) # 80002b94 <_ZN9SemaphoreC1Ej>
    800046e0:	00007797          	auipc	a5,0x7
    800046e4:	7727b023          	sd	s2,1888(a5) # 8000be40 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800046e8:	00399793          	slli	a5,s3,0x3
    800046ec:	00f78793          	addi	a5,a5,15
    800046f0:	ff07f793          	andi	a5,a5,-16
    800046f4:	40f10133          	sub	sp,sp,a5
    800046f8:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800046fc:	0019871b          	addiw	a4,s3,1
    80004700:	00171793          	slli	a5,a4,0x1
    80004704:	00e787b3          	add	a5,a5,a4
    80004708:	00379793          	slli	a5,a5,0x3
    8000470c:	00f78793          	addi	a5,a5,15
    80004710:	ff07f793          	andi	a5,a5,-16
    80004714:	40f10133          	sub	sp,sp,a5
    80004718:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    8000471c:	00199493          	slli	s1,s3,0x1
    80004720:	013484b3          	add	s1,s1,s3
    80004724:	00349493          	slli	s1,s1,0x3
    80004728:	009b04b3          	add	s1,s6,s1
    8000472c:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004730:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004734:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004738:	02800513          	li	a0,40
    8000473c:	ffffe097          	auipc	ra,0xffffe
    80004740:	020080e7          	jalr	32(ra) # 8000275c <_Znwm>
    80004744:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004748:	ffffe097          	auipc	ra,0xffffe
    8000474c:	2ec080e7          	jalr	748(ra) # 80002a34 <_ZN6ThreadC1Ev>
    80004750:	00007797          	auipc	a5,0x7
    80004754:	56878793          	addi	a5,a5,1384 # 8000bcb8 <_ZTV8Consumer+0x10>
    80004758:	00fbb023          	sd	a5,0(s7)
    8000475c:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004760:	000b8513          	mv	a0,s7
    80004764:	ffffe097          	auipc	ra,0xffffe
    80004768:	300080e7          	jalr	768(ra) # 80002a64 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    8000476c:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004770:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004774:	00007797          	auipc	a5,0x7
    80004778:	6cc7b783          	ld	a5,1740(a5) # 8000be40 <_ZL10waitForAll>
    8000477c:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004780:	02800513          	li	a0,40
    80004784:	ffffe097          	auipc	ra,0xffffe
    80004788:	fd8080e7          	jalr	-40(ra) # 8000275c <_Znwm>
    8000478c:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004790:	ffffe097          	auipc	ra,0xffffe
    80004794:	2a4080e7          	jalr	676(ra) # 80002a34 <_ZN6ThreadC1Ev>
    80004798:	00007797          	auipc	a5,0x7
    8000479c:	4d078793          	addi	a5,a5,1232 # 8000bc68 <_ZTV16ProducerKeyborad+0x10>
    800047a0:	00f4b023          	sd	a5,0(s1)
    800047a4:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800047a8:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800047ac:	00048513          	mv	a0,s1
    800047b0:	ffffe097          	auipc	ra,0xffffe
    800047b4:	2b4080e7          	jalr	692(ra) # 80002a64 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800047b8:	00100913          	li	s2,1
    800047bc:	0300006f          	j	800047ec <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800047c0:	00007797          	auipc	a5,0x7
    800047c4:	4d078793          	addi	a5,a5,1232 # 8000bc90 <_ZTV8Producer+0x10>
    800047c8:	00fcb023          	sd	a5,0(s9)
    800047cc:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800047d0:	00391793          	slli	a5,s2,0x3
    800047d4:	00fa07b3          	add	a5,s4,a5
    800047d8:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800047dc:	000c8513          	mv	a0,s9
    800047e0:	ffffe097          	auipc	ra,0xffffe
    800047e4:	284080e7          	jalr	644(ra) # 80002a64 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800047e8:	0019091b          	addiw	s2,s2,1
    800047ec:	05395263          	bge	s2,s3,80004830 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800047f0:	00191493          	slli	s1,s2,0x1
    800047f4:	012484b3          	add	s1,s1,s2
    800047f8:	00349493          	slli	s1,s1,0x3
    800047fc:	009b04b3          	add	s1,s6,s1
    80004800:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004804:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004808:	00007797          	auipc	a5,0x7
    8000480c:	6387b783          	ld	a5,1592(a5) # 8000be40 <_ZL10waitForAll>
    80004810:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004814:	02800513          	li	a0,40
    80004818:	ffffe097          	auipc	ra,0xffffe
    8000481c:	f44080e7          	jalr	-188(ra) # 8000275c <_Znwm>
    80004820:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004824:	ffffe097          	auipc	ra,0xffffe
    80004828:	210080e7          	jalr	528(ra) # 80002a34 <_ZN6ThreadC1Ev>
    8000482c:	f95ff06f          	j	800047c0 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004830:	ffffe097          	auipc	ra,0xffffe
    80004834:	288080e7          	jalr	648(ra) # 80002ab8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004838:	00000493          	li	s1,0
    8000483c:	0099ce63          	blt	s3,s1,80004858 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004840:	00007517          	auipc	a0,0x7
    80004844:	60053503          	ld	a0,1536(a0) # 8000be40 <_ZL10waitForAll>
    80004848:	ffffe097          	auipc	ra,0xffffe
    8000484c:	388080e7          	jalr	904(ra) # 80002bd0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004850:	0014849b          	addiw	s1,s1,1
    80004854:	fe9ff06f          	j	8000483c <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004858:	00007517          	auipc	a0,0x7
    8000485c:	5e853503          	ld	a0,1512(a0) # 8000be40 <_ZL10waitForAll>
    80004860:	00050863          	beqz	a0,80004870 <_Z20testConsumerProducerv+0x2f4>
    80004864:	00053783          	ld	a5,0(a0)
    80004868:	0087b783          	ld	a5,8(a5)
    8000486c:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004870:	00000493          	li	s1,0
    80004874:	0080006f          	j	8000487c <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004878:	0014849b          	addiw	s1,s1,1
    8000487c:	0334d263          	bge	s1,s3,800048a0 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004880:	00349793          	slli	a5,s1,0x3
    80004884:	00fa07b3          	add	a5,s4,a5
    80004888:	0007b503          	ld	a0,0(a5)
    8000488c:	fe0506e3          	beqz	a0,80004878 <_Z20testConsumerProducerv+0x2fc>
    80004890:	00053783          	ld	a5,0(a0)
    80004894:	0087b783          	ld	a5,8(a5)
    80004898:	000780e7          	jalr	a5
    8000489c:	fddff06f          	j	80004878 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800048a0:	000b8a63          	beqz	s7,800048b4 <_Z20testConsumerProducerv+0x338>
    800048a4:	000bb783          	ld	a5,0(s7)
    800048a8:	0087b783          	ld	a5,8(a5)
    800048ac:	000b8513          	mv	a0,s7
    800048b0:	000780e7          	jalr	a5
    delete buffer;
    800048b4:	000a8e63          	beqz	s5,800048d0 <_Z20testConsumerProducerv+0x354>
    800048b8:	000a8513          	mv	a0,s5
    800048bc:	00002097          	auipc	ra,0x2
    800048c0:	870080e7          	jalr	-1936(ra) # 8000612c <_ZN9BufferCPPD1Ev>
    800048c4:	000a8513          	mv	a0,s5
    800048c8:	ffffe097          	auipc	ra,0xffffe
    800048cc:	ee4080e7          	jalr	-284(ra) # 800027ac <_ZdlPv>
    800048d0:	000c0113          	mv	sp,s8
}
    800048d4:	f8040113          	addi	sp,s0,-128
    800048d8:	07813083          	ld	ra,120(sp)
    800048dc:	07013403          	ld	s0,112(sp)
    800048e0:	06813483          	ld	s1,104(sp)
    800048e4:	06013903          	ld	s2,96(sp)
    800048e8:	05813983          	ld	s3,88(sp)
    800048ec:	05013a03          	ld	s4,80(sp)
    800048f0:	04813a83          	ld	s5,72(sp)
    800048f4:	04013b03          	ld	s6,64(sp)
    800048f8:	03813b83          	ld	s7,56(sp)
    800048fc:	03013c03          	ld	s8,48(sp)
    80004900:	02813c83          	ld	s9,40(sp)
    80004904:	08010113          	addi	sp,sp,128
    80004908:	00008067          	ret
    8000490c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004910:	000a8513          	mv	a0,s5
    80004914:	ffffe097          	auipc	ra,0xffffe
    80004918:	e98080e7          	jalr	-360(ra) # 800027ac <_ZdlPv>
    8000491c:	00048513          	mv	a0,s1
    80004920:	00008097          	auipc	ra,0x8
    80004924:	618080e7          	jalr	1560(ra) # 8000cf38 <_Unwind_Resume>
    80004928:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    8000492c:	00090513          	mv	a0,s2
    80004930:	ffffe097          	auipc	ra,0xffffe
    80004934:	e7c080e7          	jalr	-388(ra) # 800027ac <_ZdlPv>
    80004938:	00048513          	mv	a0,s1
    8000493c:	00008097          	auipc	ra,0x8
    80004940:	5fc080e7          	jalr	1532(ra) # 8000cf38 <_Unwind_Resume>
    80004944:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004948:	000b8513          	mv	a0,s7
    8000494c:	ffffe097          	auipc	ra,0xffffe
    80004950:	e60080e7          	jalr	-416(ra) # 800027ac <_ZdlPv>
    80004954:	00048513          	mv	a0,s1
    80004958:	00008097          	auipc	ra,0x8
    8000495c:	5e0080e7          	jalr	1504(ra) # 8000cf38 <_Unwind_Resume>
    80004960:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004964:	00048513          	mv	a0,s1
    80004968:	ffffe097          	auipc	ra,0xffffe
    8000496c:	e44080e7          	jalr	-444(ra) # 800027ac <_ZdlPv>
    80004970:	00090513          	mv	a0,s2
    80004974:	00008097          	auipc	ra,0x8
    80004978:	5c4080e7          	jalr	1476(ra) # 8000cf38 <_Unwind_Resume>
    8000497c:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004980:	000c8513          	mv	a0,s9
    80004984:	ffffe097          	auipc	ra,0xffffe
    80004988:	e28080e7          	jalr	-472(ra) # 800027ac <_ZdlPv>
    8000498c:	00048513          	mv	a0,s1
    80004990:	00008097          	auipc	ra,0x8
    80004994:	5a8080e7          	jalr	1448(ra) # 8000cf38 <_Unwind_Resume>

0000000080004998 <_ZN8Consumer3runEv>:
    void run() override {
    80004998:	fd010113          	addi	sp,sp,-48
    8000499c:	02113423          	sd	ra,40(sp)
    800049a0:	02813023          	sd	s0,32(sp)
    800049a4:	00913c23          	sd	s1,24(sp)
    800049a8:	01213823          	sd	s2,16(sp)
    800049ac:	01313423          	sd	s3,8(sp)
    800049b0:	03010413          	addi	s0,sp,48
    800049b4:	00050913          	mv	s2,a0
        int i = 0;
    800049b8:	00000993          	li	s3,0
    800049bc:	0100006f          	j	800049cc <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800049c0:	00a00513          	li	a0,10
    800049c4:	ffffe097          	auipc	ra,0xffffe
    800049c8:	2f4080e7          	jalr	756(ra) # 80002cb8 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800049cc:	00007797          	auipc	a5,0x7
    800049d0:	46c7a783          	lw	a5,1132(a5) # 8000be38 <_ZL9threadEnd>
    800049d4:	04079a63          	bnez	a5,80004a28 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800049d8:	02093783          	ld	a5,32(s2)
    800049dc:	0087b503          	ld	a0,8(a5)
    800049e0:	00001097          	auipc	ra,0x1
    800049e4:	638080e7          	jalr	1592(ra) # 80006018 <_ZN9BufferCPP3getEv>
            i++;
    800049e8:	0019849b          	addiw	s1,s3,1
    800049ec:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800049f0:	0ff57513          	andi	a0,a0,255
    800049f4:	ffffe097          	auipc	ra,0xffffe
    800049f8:	2c4080e7          	jalr	708(ra) # 80002cb8 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800049fc:	05000793          	li	a5,80
    80004a00:	02f4e4bb          	remw	s1,s1,a5
    80004a04:	fc0494e3          	bnez	s1,800049cc <_ZN8Consumer3runEv+0x34>
    80004a08:	fb9ff06f          	j	800049c0 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004a0c:	02093783          	ld	a5,32(s2)
    80004a10:	0087b503          	ld	a0,8(a5)
    80004a14:	00001097          	auipc	ra,0x1
    80004a18:	604080e7          	jalr	1540(ra) # 80006018 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004a1c:	0ff57513          	andi	a0,a0,255
    80004a20:	ffffe097          	auipc	ra,0xffffe
    80004a24:	298080e7          	jalr	664(ra) # 80002cb8 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004a28:	02093783          	ld	a5,32(s2)
    80004a2c:	0087b503          	ld	a0,8(a5)
    80004a30:	00001097          	auipc	ra,0x1
    80004a34:	674080e7          	jalr	1652(ra) # 800060a4 <_ZN9BufferCPP6getCntEv>
    80004a38:	fca04ae3          	bgtz	a0,80004a0c <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004a3c:	02093783          	ld	a5,32(s2)
    80004a40:	0107b503          	ld	a0,16(a5)
    80004a44:	ffffe097          	auipc	ra,0xffffe
    80004a48:	1b8080e7          	jalr	440(ra) # 80002bfc <_ZN9Semaphore6signalEv>
    }
    80004a4c:	02813083          	ld	ra,40(sp)
    80004a50:	02013403          	ld	s0,32(sp)
    80004a54:	01813483          	ld	s1,24(sp)
    80004a58:	01013903          	ld	s2,16(sp)
    80004a5c:	00813983          	ld	s3,8(sp)
    80004a60:	03010113          	addi	sp,sp,48
    80004a64:	00008067          	ret

0000000080004a68 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004a68:	ff010113          	addi	sp,sp,-16
    80004a6c:	00113423          	sd	ra,8(sp)
    80004a70:	00813023          	sd	s0,0(sp)
    80004a74:	01010413          	addi	s0,sp,16
    80004a78:	00007797          	auipc	a5,0x7
    80004a7c:	24078793          	addi	a5,a5,576 # 8000bcb8 <_ZTV8Consumer+0x10>
    80004a80:	00f53023          	sd	a5,0(a0)
    80004a84:	ffffe097          	auipc	ra,0xffffe
    80004a88:	e8c080e7          	jalr	-372(ra) # 80002910 <_ZN6ThreadD1Ev>
    80004a8c:	00813083          	ld	ra,8(sp)
    80004a90:	00013403          	ld	s0,0(sp)
    80004a94:	01010113          	addi	sp,sp,16
    80004a98:	00008067          	ret

0000000080004a9c <_ZN8ConsumerD0Ev>:
    80004a9c:	fe010113          	addi	sp,sp,-32
    80004aa0:	00113c23          	sd	ra,24(sp)
    80004aa4:	00813823          	sd	s0,16(sp)
    80004aa8:	00913423          	sd	s1,8(sp)
    80004aac:	02010413          	addi	s0,sp,32
    80004ab0:	00050493          	mv	s1,a0
    80004ab4:	00007797          	auipc	a5,0x7
    80004ab8:	20478793          	addi	a5,a5,516 # 8000bcb8 <_ZTV8Consumer+0x10>
    80004abc:	00f53023          	sd	a5,0(a0)
    80004ac0:	ffffe097          	auipc	ra,0xffffe
    80004ac4:	e50080e7          	jalr	-432(ra) # 80002910 <_ZN6ThreadD1Ev>
    80004ac8:	00048513          	mv	a0,s1
    80004acc:	ffffe097          	auipc	ra,0xffffe
    80004ad0:	ce0080e7          	jalr	-800(ra) # 800027ac <_ZdlPv>
    80004ad4:	01813083          	ld	ra,24(sp)
    80004ad8:	01013403          	ld	s0,16(sp)
    80004adc:	00813483          	ld	s1,8(sp)
    80004ae0:	02010113          	addi	sp,sp,32
    80004ae4:	00008067          	ret

0000000080004ae8 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004ae8:	ff010113          	addi	sp,sp,-16
    80004aec:	00113423          	sd	ra,8(sp)
    80004af0:	00813023          	sd	s0,0(sp)
    80004af4:	01010413          	addi	s0,sp,16
    80004af8:	00007797          	auipc	a5,0x7
    80004afc:	17078793          	addi	a5,a5,368 # 8000bc68 <_ZTV16ProducerKeyborad+0x10>
    80004b00:	00f53023          	sd	a5,0(a0)
    80004b04:	ffffe097          	auipc	ra,0xffffe
    80004b08:	e0c080e7          	jalr	-500(ra) # 80002910 <_ZN6ThreadD1Ev>
    80004b0c:	00813083          	ld	ra,8(sp)
    80004b10:	00013403          	ld	s0,0(sp)
    80004b14:	01010113          	addi	sp,sp,16
    80004b18:	00008067          	ret

0000000080004b1c <_ZN16ProducerKeyboradD0Ev>:
    80004b1c:	fe010113          	addi	sp,sp,-32
    80004b20:	00113c23          	sd	ra,24(sp)
    80004b24:	00813823          	sd	s0,16(sp)
    80004b28:	00913423          	sd	s1,8(sp)
    80004b2c:	02010413          	addi	s0,sp,32
    80004b30:	00050493          	mv	s1,a0
    80004b34:	00007797          	auipc	a5,0x7
    80004b38:	13478793          	addi	a5,a5,308 # 8000bc68 <_ZTV16ProducerKeyborad+0x10>
    80004b3c:	00f53023          	sd	a5,0(a0)
    80004b40:	ffffe097          	auipc	ra,0xffffe
    80004b44:	dd0080e7          	jalr	-560(ra) # 80002910 <_ZN6ThreadD1Ev>
    80004b48:	00048513          	mv	a0,s1
    80004b4c:	ffffe097          	auipc	ra,0xffffe
    80004b50:	c60080e7          	jalr	-928(ra) # 800027ac <_ZdlPv>
    80004b54:	01813083          	ld	ra,24(sp)
    80004b58:	01013403          	ld	s0,16(sp)
    80004b5c:	00813483          	ld	s1,8(sp)
    80004b60:	02010113          	addi	sp,sp,32
    80004b64:	00008067          	ret

0000000080004b68 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004b68:	ff010113          	addi	sp,sp,-16
    80004b6c:	00113423          	sd	ra,8(sp)
    80004b70:	00813023          	sd	s0,0(sp)
    80004b74:	01010413          	addi	s0,sp,16
    80004b78:	00007797          	auipc	a5,0x7
    80004b7c:	11878793          	addi	a5,a5,280 # 8000bc90 <_ZTV8Producer+0x10>
    80004b80:	00f53023          	sd	a5,0(a0)
    80004b84:	ffffe097          	auipc	ra,0xffffe
    80004b88:	d8c080e7          	jalr	-628(ra) # 80002910 <_ZN6ThreadD1Ev>
    80004b8c:	00813083          	ld	ra,8(sp)
    80004b90:	00013403          	ld	s0,0(sp)
    80004b94:	01010113          	addi	sp,sp,16
    80004b98:	00008067          	ret

0000000080004b9c <_ZN8ProducerD0Ev>:
    80004b9c:	fe010113          	addi	sp,sp,-32
    80004ba0:	00113c23          	sd	ra,24(sp)
    80004ba4:	00813823          	sd	s0,16(sp)
    80004ba8:	00913423          	sd	s1,8(sp)
    80004bac:	02010413          	addi	s0,sp,32
    80004bb0:	00050493          	mv	s1,a0
    80004bb4:	00007797          	auipc	a5,0x7
    80004bb8:	0dc78793          	addi	a5,a5,220 # 8000bc90 <_ZTV8Producer+0x10>
    80004bbc:	00f53023          	sd	a5,0(a0)
    80004bc0:	ffffe097          	auipc	ra,0xffffe
    80004bc4:	d50080e7          	jalr	-688(ra) # 80002910 <_ZN6ThreadD1Ev>
    80004bc8:	00048513          	mv	a0,s1
    80004bcc:	ffffe097          	auipc	ra,0xffffe
    80004bd0:	be0080e7          	jalr	-1056(ra) # 800027ac <_ZdlPv>
    80004bd4:	01813083          	ld	ra,24(sp)
    80004bd8:	01013403          	ld	s0,16(sp)
    80004bdc:	00813483          	ld	s1,8(sp)
    80004be0:	02010113          	addi	sp,sp,32
    80004be4:	00008067          	ret

0000000080004be8 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004be8:	fe010113          	addi	sp,sp,-32
    80004bec:	00113c23          	sd	ra,24(sp)
    80004bf0:	00813823          	sd	s0,16(sp)
    80004bf4:	00913423          	sd	s1,8(sp)
    80004bf8:	02010413          	addi	s0,sp,32
    80004bfc:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004c00:	ffffd097          	auipc	ra,0xffffd
    80004c04:	a50080e7          	jalr	-1456(ra) # 80001650 <_Z4getcv>
    80004c08:	0005059b          	sext.w	a1,a0
    80004c0c:	01b00793          	li	a5,27
    80004c10:	00f58c63          	beq	a1,a5,80004c28 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004c14:	0204b783          	ld	a5,32(s1)
    80004c18:	0087b503          	ld	a0,8(a5)
    80004c1c:	00001097          	auipc	ra,0x1
    80004c20:	36c080e7          	jalr	876(ra) # 80005f88 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004c24:	fddff06f          	j	80004c00 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004c28:	00100793          	li	a5,1
    80004c2c:	00007717          	auipc	a4,0x7
    80004c30:	20f72623          	sw	a5,524(a4) # 8000be38 <_ZL9threadEnd>
        td->buffer->put('!');
    80004c34:	0204b783          	ld	a5,32(s1)
    80004c38:	02100593          	li	a1,33
    80004c3c:	0087b503          	ld	a0,8(a5)
    80004c40:	00001097          	auipc	ra,0x1
    80004c44:	348080e7          	jalr	840(ra) # 80005f88 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004c48:	0204b783          	ld	a5,32(s1)
    80004c4c:	0107b503          	ld	a0,16(a5)
    80004c50:	ffffe097          	auipc	ra,0xffffe
    80004c54:	fac080e7          	jalr	-84(ra) # 80002bfc <_ZN9Semaphore6signalEv>
    }
    80004c58:	01813083          	ld	ra,24(sp)
    80004c5c:	01013403          	ld	s0,16(sp)
    80004c60:	00813483          	ld	s1,8(sp)
    80004c64:	02010113          	addi	sp,sp,32
    80004c68:	00008067          	ret

0000000080004c6c <_ZN8Producer3runEv>:
    void run() override {
    80004c6c:	fe010113          	addi	sp,sp,-32
    80004c70:	00113c23          	sd	ra,24(sp)
    80004c74:	00813823          	sd	s0,16(sp)
    80004c78:	00913423          	sd	s1,8(sp)
    80004c7c:	01213023          	sd	s2,0(sp)
    80004c80:	02010413          	addi	s0,sp,32
    80004c84:	00050493          	mv	s1,a0
        int i = 0;
    80004c88:	00000913          	li	s2,0
        while (!threadEnd) {
    80004c8c:	00007797          	auipc	a5,0x7
    80004c90:	1ac7a783          	lw	a5,428(a5) # 8000be38 <_ZL9threadEnd>
    80004c94:	04079263          	bnez	a5,80004cd8 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004c98:	0204b783          	ld	a5,32(s1)
    80004c9c:	0007a583          	lw	a1,0(a5)
    80004ca0:	0305859b          	addiw	a1,a1,48
    80004ca4:	0087b503          	ld	a0,8(a5)
    80004ca8:	00001097          	auipc	ra,0x1
    80004cac:	2e0080e7          	jalr	736(ra) # 80005f88 <_ZN9BufferCPP3putEi>
            i++;
    80004cb0:	0019071b          	addiw	a4,s2,1
    80004cb4:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004cb8:	0204b783          	ld	a5,32(s1)
    80004cbc:	0007a783          	lw	a5,0(a5)
    80004cc0:	00e787bb          	addw	a5,a5,a4
    80004cc4:	00500513          	li	a0,5
    80004cc8:	02a7e53b          	remw	a0,a5,a0
    80004ccc:	ffffe097          	auipc	ra,0xffffe
    80004cd0:	e14080e7          	jalr	-492(ra) # 80002ae0 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004cd4:	fb9ff06f          	j	80004c8c <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004cd8:	0204b783          	ld	a5,32(s1)
    80004cdc:	0107b503          	ld	a0,16(a5)
    80004ce0:	ffffe097          	auipc	ra,0xffffe
    80004ce4:	f1c080e7          	jalr	-228(ra) # 80002bfc <_ZN9Semaphore6signalEv>
    }
    80004ce8:	01813083          	ld	ra,24(sp)
    80004cec:	01013403          	ld	s0,16(sp)
    80004cf0:	00813483          	ld	s1,8(sp)
    80004cf4:	00013903          	ld	s2,0(sp)
    80004cf8:	02010113          	addi	sp,sp,32
    80004cfc:	00008067          	ret

0000000080004d00 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004d00:	fe010113          	addi	sp,sp,-32
    80004d04:	00113c23          	sd	ra,24(sp)
    80004d08:	00813823          	sd	s0,16(sp)
    80004d0c:	00913423          	sd	s1,8(sp)
    80004d10:	01213023          	sd	s2,0(sp)
    80004d14:	02010413          	addi	s0,sp,32
    80004d18:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004d1c:	00100793          	li	a5,1
    80004d20:	02a7f863          	bgeu	a5,a0,80004d50 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004d24:	00a00793          	li	a5,10
    80004d28:	02f577b3          	remu	a5,a0,a5
    80004d2c:	02078e63          	beqz	a5,80004d68 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004d30:	fff48513          	addi	a0,s1,-1
    80004d34:	00000097          	auipc	ra,0x0
    80004d38:	fcc080e7          	jalr	-52(ra) # 80004d00 <_ZL9fibonaccim>
    80004d3c:	00050913          	mv	s2,a0
    80004d40:	ffe48513          	addi	a0,s1,-2
    80004d44:	00000097          	auipc	ra,0x0
    80004d48:	fbc080e7          	jalr	-68(ra) # 80004d00 <_ZL9fibonaccim>
    80004d4c:	00a90533          	add	a0,s2,a0
}
    80004d50:	01813083          	ld	ra,24(sp)
    80004d54:	01013403          	ld	s0,16(sp)
    80004d58:	00813483          	ld	s1,8(sp)
    80004d5c:	00013903          	ld	s2,0(sp)
    80004d60:	02010113          	addi	sp,sp,32
    80004d64:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004d68:	ffffc097          	auipc	ra,0xffffc
    80004d6c:	620080e7          	jalr	1568(ra) # 80001388 <_Z15thread_dispatchv>
    80004d70:	fc1ff06f          	j	80004d30 <_ZL9fibonaccim+0x30>

0000000080004d74 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004d74:	fe010113          	addi	sp,sp,-32
    80004d78:	00113c23          	sd	ra,24(sp)
    80004d7c:	00813823          	sd	s0,16(sp)
    80004d80:	00913423          	sd	s1,8(sp)
    80004d84:	01213023          	sd	s2,0(sp)
    80004d88:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004d8c:	00a00493          	li	s1,10
    80004d90:	0400006f          	j	80004dd0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004d94:	00004517          	auipc	a0,0x4
    80004d98:	79450513          	addi	a0,a0,1940 # 80009528 <CONSOLE_STATUS+0x518>
    80004d9c:	00001097          	auipc	ra,0x1
    80004da0:	dc8080e7          	jalr	-568(ra) # 80005b64 <_Z11printStringPKc>
    80004da4:	00000613          	li	a2,0
    80004da8:	00a00593          	li	a1,10
    80004dac:	00048513          	mv	a0,s1
    80004db0:	00001097          	auipc	ra,0x1
    80004db4:	f64080e7          	jalr	-156(ra) # 80005d14 <_Z8printIntiii>
    80004db8:	00004517          	auipc	a0,0x4
    80004dbc:	4e850513          	addi	a0,a0,1256 # 800092a0 <CONSOLE_STATUS+0x290>
    80004dc0:	00001097          	auipc	ra,0x1
    80004dc4:	da4080e7          	jalr	-604(ra) # 80005b64 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004dc8:	0014849b          	addiw	s1,s1,1
    80004dcc:	0ff4f493          	andi	s1,s1,255
    80004dd0:	00c00793          	li	a5,12
    80004dd4:	fc97f0e3          	bgeu	a5,s1,80004d94 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004dd8:	00004517          	auipc	a0,0x4
    80004ddc:	75850513          	addi	a0,a0,1880 # 80009530 <CONSOLE_STATUS+0x520>
    80004de0:	00001097          	auipc	ra,0x1
    80004de4:	d84080e7          	jalr	-636(ra) # 80005b64 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004de8:	00500313          	li	t1,5
    thread_dispatch();
    80004dec:	ffffc097          	auipc	ra,0xffffc
    80004df0:	59c080e7          	jalr	1436(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004df4:	01000513          	li	a0,16
    80004df8:	00000097          	auipc	ra,0x0
    80004dfc:	f08080e7          	jalr	-248(ra) # 80004d00 <_ZL9fibonaccim>
    80004e00:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004e04:	00004517          	auipc	a0,0x4
    80004e08:	73c50513          	addi	a0,a0,1852 # 80009540 <CONSOLE_STATUS+0x530>
    80004e0c:	00001097          	auipc	ra,0x1
    80004e10:	d58080e7          	jalr	-680(ra) # 80005b64 <_Z11printStringPKc>
    80004e14:	00000613          	li	a2,0
    80004e18:	00a00593          	li	a1,10
    80004e1c:	0009051b          	sext.w	a0,s2
    80004e20:	00001097          	auipc	ra,0x1
    80004e24:	ef4080e7          	jalr	-268(ra) # 80005d14 <_Z8printIntiii>
    80004e28:	00004517          	auipc	a0,0x4
    80004e2c:	47850513          	addi	a0,a0,1144 # 800092a0 <CONSOLE_STATUS+0x290>
    80004e30:	00001097          	auipc	ra,0x1
    80004e34:	d34080e7          	jalr	-716(ra) # 80005b64 <_Z11printStringPKc>
    80004e38:	0400006f          	j	80004e78 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004e3c:	00004517          	auipc	a0,0x4
    80004e40:	6ec50513          	addi	a0,a0,1772 # 80009528 <CONSOLE_STATUS+0x518>
    80004e44:	00001097          	auipc	ra,0x1
    80004e48:	d20080e7          	jalr	-736(ra) # 80005b64 <_Z11printStringPKc>
    80004e4c:	00000613          	li	a2,0
    80004e50:	00a00593          	li	a1,10
    80004e54:	00048513          	mv	a0,s1
    80004e58:	00001097          	auipc	ra,0x1
    80004e5c:	ebc080e7          	jalr	-324(ra) # 80005d14 <_Z8printIntiii>
    80004e60:	00004517          	auipc	a0,0x4
    80004e64:	44050513          	addi	a0,a0,1088 # 800092a0 <CONSOLE_STATUS+0x290>
    80004e68:	00001097          	auipc	ra,0x1
    80004e6c:	cfc080e7          	jalr	-772(ra) # 80005b64 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004e70:	0014849b          	addiw	s1,s1,1
    80004e74:	0ff4f493          	andi	s1,s1,255
    80004e78:	00f00793          	li	a5,15
    80004e7c:	fc97f0e3          	bgeu	a5,s1,80004e3c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004e80:	00004517          	auipc	a0,0x4
    80004e84:	6d050513          	addi	a0,a0,1744 # 80009550 <CONSOLE_STATUS+0x540>
    80004e88:	00001097          	auipc	ra,0x1
    80004e8c:	cdc080e7          	jalr	-804(ra) # 80005b64 <_Z11printStringPKc>
    finishedD = true;
    80004e90:	00100793          	li	a5,1
    80004e94:	00007717          	auipc	a4,0x7
    80004e98:	faf70a23          	sb	a5,-76(a4) # 8000be48 <_ZL9finishedD>
    thread_dispatch();
    80004e9c:	ffffc097          	auipc	ra,0xffffc
    80004ea0:	4ec080e7          	jalr	1260(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004ea4:	01813083          	ld	ra,24(sp)
    80004ea8:	01013403          	ld	s0,16(sp)
    80004eac:	00813483          	ld	s1,8(sp)
    80004eb0:	00013903          	ld	s2,0(sp)
    80004eb4:	02010113          	addi	sp,sp,32
    80004eb8:	00008067          	ret

0000000080004ebc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004ebc:	fe010113          	addi	sp,sp,-32
    80004ec0:	00113c23          	sd	ra,24(sp)
    80004ec4:	00813823          	sd	s0,16(sp)
    80004ec8:	00913423          	sd	s1,8(sp)
    80004ecc:	01213023          	sd	s2,0(sp)
    80004ed0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004ed4:	00000493          	li	s1,0
    80004ed8:	0400006f          	j	80004f18 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004edc:	00004517          	auipc	a0,0x4
    80004ee0:	61c50513          	addi	a0,a0,1564 # 800094f8 <CONSOLE_STATUS+0x4e8>
    80004ee4:	00001097          	auipc	ra,0x1
    80004ee8:	c80080e7          	jalr	-896(ra) # 80005b64 <_Z11printStringPKc>
    80004eec:	00000613          	li	a2,0
    80004ef0:	00a00593          	li	a1,10
    80004ef4:	00048513          	mv	a0,s1
    80004ef8:	00001097          	auipc	ra,0x1
    80004efc:	e1c080e7          	jalr	-484(ra) # 80005d14 <_Z8printIntiii>
    80004f00:	00004517          	auipc	a0,0x4
    80004f04:	3a050513          	addi	a0,a0,928 # 800092a0 <CONSOLE_STATUS+0x290>
    80004f08:	00001097          	auipc	ra,0x1
    80004f0c:	c5c080e7          	jalr	-932(ra) # 80005b64 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004f10:	0014849b          	addiw	s1,s1,1
    80004f14:	0ff4f493          	andi	s1,s1,255
    80004f18:	00200793          	li	a5,2
    80004f1c:	fc97f0e3          	bgeu	a5,s1,80004edc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004f20:	00004517          	auipc	a0,0x4
    80004f24:	5e050513          	addi	a0,a0,1504 # 80009500 <CONSOLE_STATUS+0x4f0>
    80004f28:	00001097          	auipc	ra,0x1
    80004f2c:	c3c080e7          	jalr	-964(ra) # 80005b64 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004f30:	00700313          	li	t1,7
    thread_dispatch();
    80004f34:	ffffc097          	auipc	ra,0xffffc
    80004f38:	454080e7          	jalr	1108(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004f3c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004f40:	00004517          	auipc	a0,0x4
    80004f44:	5d050513          	addi	a0,a0,1488 # 80009510 <CONSOLE_STATUS+0x500>
    80004f48:	00001097          	auipc	ra,0x1
    80004f4c:	c1c080e7          	jalr	-996(ra) # 80005b64 <_Z11printStringPKc>
    80004f50:	00000613          	li	a2,0
    80004f54:	00a00593          	li	a1,10
    80004f58:	0009051b          	sext.w	a0,s2
    80004f5c:	00001097          	auipc	ra,0x1
    80004f60:	db8080e7          	jalr	-584(ra) # 80005d14 <_Z8printIntiii>
    80004f64:	00004517          	auipc	a0,0x4
    80004f68:	33c50513          	addi	a0,a0,828 # 800092a0 <CONSOLE_STATUS+0x290>
    80004f6c:	00001097          	auipc	ra,0x1
    80004f70:	bf8080e7          	jalr	-1032(ra) # 80005b64 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004f74:	00c00513          	li	a0,12
    80004f78:	00000097          	auipc	ra,0x0
    80004f7c:	d88080e7          	jalr	-632(ra) # 80004d00 <_ZL9fibonaccim>
    80004f80:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004f84:	00004517          	auipc	a0,0x4
    80004f88:	59450513          	addi	a0,a0,1428 # 80009518 <CONSOLE_STATUS+0x508>
    80004f8c:	00001097          	auipc	ra,0x1
    80004f90:	bd8080e7          	jalr	-1064(ra) # 80005b64 <_Z11printStringPKc>
    80004f94:	00000613          	li	a2,0
    80004f98:	00a00593          	li	a1,10
    80004f9c:	0009051b          	sext.w	a0,s2
    80004fa0:	00001097          	auipc	ra,0x1
    80004fa4:	d74080e7          	jalr	-652(ra) # 80005d14 <_Z8printIntiii>
    80004fa8:	00004517          	auipc	a0,0x4
    80004fac:	2f850513          	addi	a0,a0,760 # 800092a0 <CONSOLE_STATUS+0x290>
    80004fb0:	00001097          	auipc	ra,0x1
    80004fb4:	bb4080e7          	jalr	-1100(ra) # 80005b64 <_Z11printStringPKc>
    80004fb8:	0400006f          	j	80004ff8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004fbc:	00004517          	auipc	a0,0x4
    80004fc0:	53c50513          	addi	a0,a0,1340 # 800094f8 <CONSOLE_STATUS+0x4e8>
    80004fc4:	00001097          	auipc	ra,0x1
    80004fc8:	ba0080e7          	jalr	-1120(ra) # 80005b64 <_Z11printStringPKc>
    80004fcc:	00000613          	li	a2,0
    80004fd0:	00a00593          	li	a1,10
    80004fd4:	00048513          	mv	a0,s1
    80004fd8:	00001097          	auipc	ra,0x1
    80004fdc:	d3c080e7          	jalr	-708(ra) # 80005d14 <_Z8printIntiii>
    80004fe0:	00004517          	auipc	a0,0x4
    80004fe4:	2c050513          	addi	a0,a0,704 # 800092a0 <CONSOLE_STATUS+0x290>
    80004fe8:	00001097          	auipc	ra,0x1
    80004fec:	b7c080e7          	jalr	-1156(ra) # 80005b64 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004ff0:	0014849b          	addiw	s1,s1,1
    80004ff4:	0ff4f493          	andi	s1,s1,255
    80004ff8:	00500793          	li	a5,5
    80004ffc:	fc97f0e3          	bgeu	a5,s1,80004fbc <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005000:	00004517          	auipc	a0,0x4
    80005004:	4d050513          	addi	a0,a0,1232 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80005008:	00001097          	auipc	ra,0x1
    8000500c:	b5c080e7          	jalr	-1188(ra) # 80005b64 <_Z11printStringPKc>
    finishedC = true;
    80005010:	00100793          	li	a5,1
    80005014:	00007717          	auipc	a4,0x7
    80005018:	e2f70aa3          	sb	a5,-459(a4) # 8000be49 <_ZL9finishedC>
    thread_dispatch();
    8000501c:	ffffc097          	auipc	ra,0xffffc
    80005020:	36c080e7          	jalr	876(ra) # 80001388 <_Z15thread_dispatchv>
}
    80005024:	01813083          	ld	ra,24(sp)
    80005028:	01013403          	ld	s0,16(sp)
    8000502c:	00813483          	ld	s1,8(sp)
    80005030:	00013903          	ld	s2,0(sp)
    80005034:	02010113          	addi	sp,sp,32
    80005038:	00008067          	ret

000000008000503c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000503c:	fe010113          	addi	sp,sp,-32
    80005040:	00113c23          	sd	ra,24(sp)
    80005044:	00813823          	sd	s0,16(sp)
    80005048:	00913423          	sd	s1,8(sp)
    8000504c:	01213023          	sd	s2,0(sp)
    80005050:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005054:	00000913          	li	s2,0
    80005058:	0380006f          	j	80005090 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    8000505c:	ffffc097          	auipc	ra,0xffffc
    80005060:	32c080e7          	jalr	812(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005064:	00148493          	addi	s1,s1,1
    80005068:	000027b7          	lui	a5,0x2
    8000506c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005070:	0097ee63          	bltu	a5,s1,8000508c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005074:	00000713          	li	a4,0
    80005078:	000077b7          	lui	a5,0x7
    8000507c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005080:	fce7eee3          	bltu	a5,a4,8000505c <_ZL11workerBodyBPv+0x20>
    80005084:	00170713          	addi	a4,a4,1
    80005088:	ff1ff06f          	j	80005078 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000508c:	00190913          	addi	s2,s2,1
    80005090:	00f00793          	li	a5,15
    80005094:	0527e063          	bltu	a5,s2,800050d4 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005098:	00004517          	auipc	a0,0x4
    8000509c:	44850513          	addi	a0,a0,1096 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800050a0:	00001097          	auipc	ra,0x1
    800050a4:	ac4080e7          	jalr	-1340(ra) # 80005b64 <_Z11printStringPKc>
    800050a8:	00000613          	li	a2,0
    800050ac:	00a00593          	li	a1,10
    800050b0:	0009051b          	sext.w	a0,s2
    800050b4:	00001097          	auipc	ra,0x1
    800050b8:	c60080e7          	jalr	-928(ra) # 80005d14 <_Z8printIntiii>
    800050bc:	00004517          	auipc	a0,0x4
    800050c0:	1e450513          	addi	a0,a0,484 # 800092a0 <CONSOLE_STATUS+0x290>
    800050c4:	00001097          	auipc	ra,0x1
    800050c8:	aa0080e7          	jalr	-1376(ra) # 80005b64 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800050cc:	00000493          	li	s1,0
    800050d0:	f99ff06f          	j	80005068 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800050d4:	00004517          	auipc	a0,0x4
    800050d8:	41450513          	addi	a0,a0,1044 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800050dc:	00001097          	auipc	ra,0x1
    800050e0:	a88080e7          	jalr	-1400(ra) # 80005b64 <_Z11printStringPKc>
    finishedB = true;
    800050e4:	00100793          	li	a5,1
    800050e8:	00007717          	auipc	a4,0x7
    800050ec:	d6f70123          	sb	a5,-670(a4) # 8000be4a <_ZL9finishedB>
    thread_dispatch();
    800050f0:	ffffc097          	auipc	ra,0xffffc
    800050f4:	298080e7          	jalr	664(ra) # 80001388 <_Z15thread_dispatchv>
}
    800050f8:	01813083          	ld	ra,24(sp)
    800050fc:	01013403          	ld	s0,16(sp)
    80005100:	00813483          	ld	s1,8(sp)
    80005104:	00013903          	ld	s2,0(sp)
    80005108:	02010113          	addi	sp,sp,32
    8000510c:	00008067          	ret

0000000080005110 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005110:	fe010113          	addi	sp,sp,-32
    80005114:	00113c23          	sd	ra,24(sp)
    80005118:	00813823          	sd	s0,16(sp)
    8000511c:	00913423          	sd	s1,8(sp)
    80005120:	01213023          	sd	s2,0(sp)
    80005124:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005128:	00000913          	li	s2,0
    8000512c:	0380006f          	j	80005164 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005130:	ffffc097          	auipc	ra,0xffffc
    80005134:	258080e7          	jalr	600(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005138:	00148493          	addi	s1,s1,1
    8000513c:	000027b7          	lui	a5,0x2
    80005140:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005144:	0097ee63          	bltu	a5,s1,80005160 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005148:	00000713          	li	a4,0
    8000514c:	000077b7          	lui	a5,0x7
    80005150:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005154:	fce7eee3          	bltu	a5,a4,80005130 <_ZL11workerBodyAPv+0x20>
    80005158:	00170713          	addi	a4,a4,1
    8000515c:	ff1ff06f          	j	8000514c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005160:	00190913          	addi	s2,s2,1
    80005164:	00900793          	li	a5,9
    80005168:	0527e063          	bltu	a5,s2,800051a8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000516c:	00004517          	auipc	a0,0x4
    80005170:	35c50513          	addi	a0,a0,860 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80005174:	00001097          	auipc	ra,0x1
    80005178:	9f0080e7          	jalr	-1552(ra) # 80005b64 <_Z11printStringPKc>
    8000517c:	00000613          	li	a2,0
    80005180:	00a00593          	li	a1,10
    80005184:	0009051b          	sext.w	a0,s2
    80005188:	00001097          	auipc	ra,0x1
    8000518c:	b8c080e7          	jalr	-1140(ra) # 80005d14 <_Z8printIntiii>
    80005190:	00004517          	auipc	a0,0x4
    80005194:	11050513          	addi	a0,a0,272 # 800092a0 <CONSOLE_STATUS+0x290>
    80005198:	00001097          	auipc	ra,0x1
    8000519c:	9cc080e7          	jalr	-1588(ra) # 80005b64 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800051a0:	00000493          	li	s1,0
    800051a4:	f99ff06f          	j	8000513c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800051a8:	00004517          	auipc	a0,0x4
    800051ac:	32850513          	addi	a0,a0,808 # 800094d0 <CONSOLE_STATUS+0x4c0>
    800051b0:	00001097          	auipc	ra,0x1
    800051b4:	9b4080e7          	jalr	-1612(ra) # 80005b64 <_Z11printStringPKc>
    finishedA = true;
    800051b8:	00100793          	li	a5,1
    800051bc:	00007717          	auipc	a4,0x7
    800051c0:	c8f707a3          	sb	a5,-881(a4) # 8000be4b <_ZL9finishedA>
}
    800051c4:	01813083          	ld	ra,24(sp)
    800051c8:	01013403          	ld	s0,16(sp)
    800051cc:	00813483          	ld	s1,8(sp)
    800051d0:	00013903          	ld	s2,0(sp)
    800051d4:	02010113          	addi	sp,sp,32
    800051d8:	00008067          	ret

00000000800051dc <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800051dc:	fd010113          	addi	sp,sp,-48
    800051e0:	02113423          	sd	ra,40(sp)
    800051e4:	02813023          	sd	s0,32(sp)
    800051e8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800051ec:	00000613          	li	a2,0
    800051f0:	00000597          	auipc	a1,0x0
    800051f4:	f2058593          	addi	a1,a1,-224 # 80005110 <_ZL11workerBodyAPv>
    800051f8:	fd040513          	addi	a0,s0,-48
    800051fc:	ffffc097          	auipc	ra,0xffffc
    80005200:	088080e7          	jalr	136(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80005204:	00004517          	auipc	a0,0x4
    80005208:	35c50513          	addi	a0,a0,860 # 80009560 <CONSOLE_STATUS+0x550>
    8000520c:	00001097          	auipc	ra,0x1
    80005210:	958080e7          	jalr	-1704(ra) # 80005b64 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005214:	00000613          	li	a2,0
    80005218:	00000597          	auipc	a1,0x0
    8000521c:	e2458593          	addi	a1,a1,-476 # 8000503c <_ZL11workerBodyBPv>
    80005220:	fd840513          	addi	a0,s0,-40
    80005224:	ffffc097          	auipc	ra,0xffffc
    80005228:	060080e7          	jalr	96(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    8000522c:	00004517          	auipc	a0,0x4
    80005230:	34c50513          	addi	a0,a0,844 # 80009578 <CONSOLE_STATUS+0x568>
    80005234:	00001097          	auipc	ra,0x1
    80005238:	930080e7          	jalr	-1744(ra) # 80005b64 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000523c:	00000613          	li	a2,0
    80005240:	00000597          	auipc	a1,0x0
    80005244:	c7c58593          	addi	a1,a1,-900 # 80004ebc <_ZL11workerBodyCPv>
    80005248:	fe040513          	addi	a0,s0,-32
    8000524c:	ffffc097          	auipc	ra,0xffffc
    80005250:	038080e7          	jalr	56(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80005254:	00004517          	auipc	a0,0x4
    80005258:	33c50513          	addi	a0,a0,828 # 80009590 <CONSOLE_STATUS+0x580>
    8000525c:	00001097          	auipc	ra,0x1
    80005260:	908080e7          	jalr	-1784(ra) # 80005b64 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005264:	00000613          	li	a2,0
    80005268:	00000597          	auipc	a1,0x0
    8000526c:	b0c58593          	addi	a1,a1,-1268 # 80004d74 <_ZL11workerBodyDPv>
    80005270:	fe840513          	addi	a0,s0,-24
    80005274:	ffffc097          	auipc	ra,0xffffc
    80005278:	010080e7          	jalr	16(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    8000527c:	00004517          	auipc	a0,0x4
    80005280:	32c50513          	addi	a0,a0,812 # 800095a8 <CONSOLE_STATUS+0x598>
    80005284:	00001097          	auipc	ra,0x1
    80005288:	8e0080e7          	jalr	-1824(ra) # 80005b64 <_Z11printStringPKc>
    8000528c:	00c0006f          	j	80005298 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005290:	ffffc097          	auipc	ra,0xffffc
    80005294:	0f8080e7          	jalr	248(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005298:	00007797          	auipc	a5,0x7
    8000529c:	bb37c783          	lbu	a5,-1101(a5) # 8000be4b <_ZL9finishedA>
    800052a0:	fe0788e3          	beqz	a5,80005290 <_Z18Threads_C_API_testv+0xb4>
    800052a4:	00007797          	auipc	a5,0x7
    800052a8:	ba67c783          	lbu	a5,-1114(a5) # 8000be4a <_ZL9finishedB>
    800052ac:	fe0782e3          	beqz	a5,80005290 <_Z18Threads_C_API_testv+0xb4>
    800052b0:	00007797          	auipc	a5,0x7
    800052b4:	b997c783          	lbu	a5,-1127(a5) # 8000be49 <_ZL9finishedC>
    800052b8:	fc078ce3          	beqz	a5,80005290 <_Z18Threads_C_API_testv+0xb4>
    800052bc:	00007797          	auipc	a5,0x7
    800052c0:	b8c7c783          	lbu	a5,-1140(a5) # 8000be48 <_ZL9finishedD>
    800052c4:	fc0786e3          	beqz	a5,80005290 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800052c8:	02813083          	ld	ra,40(sp)
    800052cc:	02013403          	ld	s0,32(sp)
    800052d0:	03010113          	addi	sp,sp,48
    800052d4:	00008067          	ret

00000000800052d8 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800052d8:	fd010113          	addi	sp,sp,-48
    800052dc:	02113423          	sd	ra,40(sp)
    800052e0:	02813023          	sd	s0,32(sp)
    800052e4:	00913c23          	sd	s1,24(sp)
    800052e8:	01213823          	sd	s2,16(sp)
    800052ec:	01313423          	sd	s3,8(sp)
    800052f0:	03010413          	addi	s0,sp,48
    800052f4:	00050993          	mv	s3,a0
    800052f8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800052fc:	00000913          	li	s2,0
    80005300:	00c0006f          	j	8000530c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005304:	ffffd097          	auipc	ra,0xffffd
    80005308:	7b4080e7          	jalr	1972(ra) # 80002ab8 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    8000530c:	ffffc097          	auipc	ra,0xffffc
    80005310:	344080e7          	jalr	836(ra) # 80001650 <_Z4getcv>
    80005314:	0005059b          	sext.w	a1,a0
    80005318:	01b00793          	li	a5,27
    8000531c:	02f58a63          	beq	a1,a5,80005350 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005320:	0084b503          	ld	a0,8(s1)
    80005324:	00001097          	auipc	ra,0x1
    80005328:	c64080e7          	jalr	-924(ra) # 80005f88 <_ZN9BufferCPP3putEi>
        i++;
    8000532c:	0019071b          	addiw	a4,s2,1
    80005330:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005334:	0004a683          	lw	a3,0(s1)
    80005338:	0026979b          	slliw	a5,a3,0x2
    8000533c:	00d787bb          	addw	a5,a5,a3
    80005340:	0017979b          	slliw	a5,a5,0x1
    80005344:	02f767bb          	remw	a5,a4,a5
    80005348:	fc0792e3          	bnez	a5,8000530c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    8000534c:	fb9ff06f          	j	80005304 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005350:	00100793          	li	a5,1
    80005354:	00007717          	auipc	a4,0x7
    80005358:	aef72e23          	sw	a5,-1284(a4) # 8000be50 <_ZL9threadEnd>
    td->buffer->put('!');
    8000535c:	0209b783          	ld	a5,32(s3)
    80005360:	02100593          	li	a1,33
    80005364:	0087b503          	ld	a0,8(a5)
    80005368:	00001097          	auipc	ra,0x1
    8000536c:	c20080e7          	jalr	-992(ra) # 80005f88 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005370:	0104b503          	ld	a0,16(s1)
    80005374:	ffffe097          	auipc	ra,0xffffe
    80005378:	888080e7          	jalr	-1912(ra) # 80002bfc <_ZN9Semaphore6signalEv>
}
    8000537c:	02813083          	ld	ra,40(sp)
    80005380:	02013403          	ld	s0,32(sp)
    80005384:	01813483          	ld	s1,24(sp)
    80005388:	01013903          	ld	s2,16(sp)
    8000538c:	00813983          	ld	s3,8(sp)
    80005390:	03010113          	addi	sp,sp,48
    80005394:	00008067          	ret

0000000080005398 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005398:	fe010113          	addi	sp,sp,-32
    8000539c:	00113c23          	sd	ra,24(sp)
    800053a0:	00813823          	sd	s0,16(sp)
    800053a4:	00913423          	sd	s1,8(sp)
    800053a8:	01213023          	sd	s2,0(sp)
    800053ac:	02010413          	addi	s0,sp,32
    800053b0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800053b4:	00000913          	li	s2,0
    800053b8:	00c0006f          	j	800053c4 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800053bc:	ffffd097          	auipc	ra,0xffffd
    800053c0:	6fc080e7          	jalr	1788(ra) # 80002ab8 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800053c4:	00007797          	auipc	a5,0x7
    800053c8:	a8c7a783          	lw	a5,-1396(a5) # 8000be50 <_ZL9threadEnd>
    800053cc:	02079e63          	bnez	a5,80005408 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800053d0:	0004a583          	lw	a1,0(s1)
    800053d4:	0305859b          	addiw	a1,a1,48
    800053d8:	0084b503          	ld	a0,8(s1)
    800053dc:	00001097          	auipc	ra,0x1
    800053e0:	bac080e7          	jalr	-1108(ra) # 80005f88 <_ZN9BufferCPP3putEi>
        i++;
    800053e4:	0019071b          	addiw	a4,s2,1
    800053e8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800053ec:	0004a683          	lw	a3,0(s1)
    800053f0:	0026979b          	slliw	a5,a3,0x2
    800053f4:	00d787bb          	addw	a5,a5,a3
    800053f8:	0017979b          	slliw	a5,a5,0x1
    800053fc:	02f767bb          	remw	a5,a4,a5
    80005400:	fc0792e3          	bnez	a5,800053c4 <_ZN12ProducerSync8producerEPv+0x2c>
    80005404:	fb9ff06f          	j	800053bc <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005408:	0104b503          	ld	a0,16(s1)
    8000540c:	ffffd097          	auipc	ra,0xffffd
    80005410:	7f0080e7          	jalr	2032(ra) # 80002bfc <_ZN9Semaphore6signalEv>
}
    80005414:	01813083          	ld	ra,24(sp)
    80005418:	01013403          	ld	s0,16(sp)
    8000541c:	00813483          	ld	s1,8(sp)
    80005420:	00013903          	ld	s2,0(sp)
    80005424:	02010113          	addi	sp,sp,32
    80005428:	00008067          	ret

000000008000542c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    8000542c:	fd010113          	addi	sp,sp,-48
    80005430:	02113423          	sd	ra,40(sp)
    80005434:	02813023          	sd	s0,32(sp)
    80005438:	00913c23          	sd	s1,24(sp)
    8000543c:	01213823          	sd	s2,16(sp)
    80005440:	01313423          	sd	s3,8(sp)
    80005444:	01413023          	sd	s4,0(sp)
    80005448:	03010413          	addi	s0,sp,48
    8000544c:	00050993          	mv	s3,a0
    80005450:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005454:	00000a13          	li	s4,0
    80005458:	01c0006f          	j	80005474 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    8000545c:	ffffd097          	auipc	ra,0xffffd
    80005460:	65c080e7          	jalr	1628(ra) # 80002ab8 <_ZN6Thread8dispatchEv>
    80005464:	0500006f          	j	800054b4 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005468:	00a00513          	li	a0,10
    8000546c:	ffffc097          	auipc	ra,0xffffc
    80005470:	224080e7          	jalr	548(ra) # 80001690 <_Z4putcc>
    while (!threadEnd) {
    80005474:	00007797          	auipc	a5,0x7
    80005478:	9dc7a783          	lw	a5,-1572(a5) # 8000be50 <_ZL9threadEnd>
    8000547c:	06079263          	bnez	a5,800054e0 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005480:	00893503          	ld	a0,8(s2)
    80005484:	00001097          	auipc	ra,0x1
    80005488:	b94080e7          	jalr	-1132(ra) # 80006018 <_ZN9BufferCPP3getEv>
        i++;
    8000548c:	001a049b          	addiw	s1,s4,1
    80005490:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005494:	0ff57513          	andi	a0,a0,255
    80005498:	ffffc097          	auipc	ra,0xffffc
    8000549c:	1f8080e7          	jalr	504(ra) # 80001690 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800054a0:	00092703          	lw	a4,0(s2)
    800054a4:	0027179b          	slliw	a5,a4,0x2
    800054a8:	00e787bb          	addw	a5,a5,a4
    800054ac:	02f4e7bb          	remw	a5,s1,a5
    800054b0:	fa0786e3          	beqz	a5,8000545c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800054b4:	05000793          	li	a5,80
    800054b8:	02f4e4bb          	remw	s1,s1,a5
    800054bc:	fa049ce3          	bnez	s1,80005474 <_ZN12ConsumerSync8consumerEPv+0x48>
    800054c0:	fa9ff06f          	j	80005468 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800054c4:	0209b783          	ld	a5,32(s3)
    800054c8:	0087b503          	ld	a0,8(a5)
    800054cc:	00001097          	auipc	ra,0x1
    800054d0:	b4c080e7          	jalr	-1204(ra) # 80006018 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800054d4:	0ff57513          	andi	a0,a0,255
    800054d8:	ffffd097          	auipc	ra,0xffffd
    800054dc:	7e0080e7          	jalr	2016(ra) # 80002cb8 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800054e0:	0209b783          	ld	a5,32(s3)
    800054e4:	0087b503          	ld	a0,8(a5)
    800054e8:	00001097          	auipc	ra,0x1
    800054ec:	bbc080e7          	jalr	-1092(ra) # 800060a4 <_ZN9BufferCPP6getCntEv>
    800054f0:	fca04ae3          	bgtz	a0,800054c4 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800054f4:	01093503          	ld	a0,16(s2)
    800054f8:	ffffd097          	auipc	ra,0xffffd
    800054fc:	704080e7          	jalr	1796(ra) # 80002bfc <_ZN9Semaphore6signalEv>
}
    80005500:	02813083          	ld	ra,40(sp)
    80005504:	02013403          	ld	s0,32(sp)
    80005508:	01813483          	ld	s1,24(sp)
    8000550c:	01013903          	ld	s2,16(sp)
    80005510:	00813983          	ld	s3,8(sp)
    80005514:	00013a03          	ld	s4,0(sp)
    80005518:	03010113          	addi	sp,sp,48
    8000551c:	00008067          	ret

0000000080005520 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005520:	f8010113          	addi	sp,sp,-128
    80005524:	06113c23          	sd	ra,120(sp)
    80005528:	06813823          	sd	s0,112(sp)
    8000552c:	06913423          	sd	s1,104(sp)
    80005530:	07213023          	sd	s2,96(sp)
    80005534:	05313c23          	sd	s3,88(sp)
    80005538:	05413823          	sd	s4,80(sp)
    8000553c:	05513423          	sd	s5,72(sp)
    80005540:	05613023          	sd	s6,64(sp)
    80005544:	03713c23          	sd	s7,56(sp)
    80005548:	03813823          	sd	s8,48(sp)
    8000554c:	03913423          	sd	s9,40(sp)
    80005550:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005554:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005558:	00004517          	auipc	a0,0x4
    8000555c:	e1850513          	addi	a0,a0,-488 # 80009370 <CONSOLE_STATUS+0x360>
    80005560:	00000097          	auipc	ra,0x0
    80005564:	604080e7          	jalr	1540(ra) # 80005b64 <_Z11printStringPKc>
    getString(input, 30);
    80005568:	01e00593          	li	a1,30
    8000556c:	f8040493          	addi	s1,s0,-128
    80005570:	00048513          	mv	a0,s1
    80005574:	00000097          	auipc	ra,0x0
    80005578:	678080e7          	jalr	1656(ra) # 80005bec <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000557c:	00048513          	mv	a0,s1
    80005580:	00000097          	auipc	ra,0x0
    80005584:	744080e7          	jalr	1860(ra) # 80005cc4 <_Z11stringToIntPKc>
    80005588:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000558c:	00004517          	auipc	a0,0x4
    80005590:	e0450513          	addi	a0,a0,-508 # 80009390 <CONSOLE_STATUS+0x380>
    80005594:	00000097          	auipc	ra,0x0
    80005598:	5d0080e7          	jalr	1488(ra) # 80005b64 <_Z11printStringPKc>
    getString(input, 30);
    8000559c:	01e00593          	li	a1,30
    800055a0:	00048513          	mv	a0,s1
    800055a4:	00000097          	auipc	ra,0x0
    800055a8:	648080e7          	jalr	1608(ra) # 80005bec <_Z9getStringPci>
    n = stringToInt(input);
    800055ac:	00048513          	mv	a0,s1
    800055b0:	00000097          	auipc	ra,0x0
    800055b4:	714080e7          	jalr	1812(ra) # 80005cc4 <_Z11stringToIntPKc>
    800055b8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800055bc:	00004517          	auipc	a0,0x4
    800055c0:	df450513          	addi	a0,a0,-524 # 800093b0 <CONSOLE_STATUS+0x3a0>
    800055c4:	00000097          	auipc	ra,0x0
    800055c8:	5a0080e7          	jalr	1440(ra) # 80005b64 <_Z11printStringPKc>
    800055cc:	00000613          	li	a2,0
    800055d0:	00a00593          	li	a1,10
    800055d4:	00090513          	mv	a0,s2
    800055d8:	00000097          	auipc	ra,0x0
    800055dc:	73c080e7          	jalr	1852(ra) # 80005d14 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800055e0:	00004517          	auipc	a0,0x4
    800055e4:	de850513          	addi	a0,a0,-536 # 800093c8 <CONSOLE_STATUS+0x3b8>
    800055e8:	00000097          	auipc	ra,0x0
    800055ec:	57c080e7          	jalr	1404(ra) # 80005b64 <_Z11printStringPKc>
    800055f0:	00000613          	li	a2,0
    800055f4:	00a00593          	li	a1,10
    800055f8:	00048513          	mv	a0,s1
    800055fc:	00000097          	auipc	ra,0x0
    80005600:	718080e7          	jalr	1816(ra) # 80005d14 <_Z8printIntiii>
    printString(".\n");
    80005604:	00004517          	auipc	a0,0x4
    80005608:	ddc50513          	addi	a0,a0,-548 # 800093e0 <CONSOLE_STATUS+0x3d0>
    8000560c:	00000097          	auipc	ra,0x0
    80005610:	558080e7          	jalr	1368(ra) # 80005b64 <_Z11printStringPKc>
    if(threadNum > n) {
    80005614:	0324c463          	blt	s1,s2,8000563c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005618:	03205c63          	blez	s2,80005650 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000561c:	03800513          	li	a0,56
    80005620:	ffffd097          	auipc	ra,0xffffd
    80005624:	13c080e7          	jalr	316(ra) # 8000275c <_Znwm>
    80005628:	00050a93          	mv	s5,a0
    8000562c:	00048593          	mv	a1,s1
    80005630:	00001097          	auipc	ra,0x1
    80005634:	804080e7          	jalr	-2044(ra) # 80005e34 <_ZN9BufferCPPC1Ei>
    80005638:	0300006f          	j	80005668 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000563c:	00004517          	auipc	a0,0x4
    80005640:	dac50513          	addi	a0,a0,-596 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80005644:	00000097          	auipc	ra,0x0
    80005648:	520080e7          	jalr	1312(ra) # 80005b64 <_Z11printStringPKc>
        return;
    8000564c:	0140006f          	j	80005660 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005650:	00004517          	auipc	a0,0x4
    80005654:	dd850513          	addi	a0,a0,-552 # 80009428 <CONSOLE_STATUS+0x418>
    80005658:	00000097          	auipc	ra,0x0
    8000565c:	50c080e7          	jalr	1292(ra) # 80005b64 <_Z11printStringPKc>
        return;
    80005660:	000b8113          	mv	sp,s7
    80005664:	2380006f          	j	8000589c <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005668:	01000513          	li	a0,16
    8000566c:	ffffd097          	auipc	ra,0xffffd
    80005670:	0f0080e7          	jalr	240(ra) # 8000275c <_Znwm>
    80005674:	00050493          	mv	s1,a0
    80005678:	00000593          	li	a1,0
    8000567c:	ffffd097          	auipc	ra,0xffffd
    80005680:	518080e7          	jalr	1304(ra) # 80002b94 <_ZN9SemaphoreC1Ej>
    80005684:	00006797          	auipc	a5,0x6
    80005688:	7c97ba23          	sd	s1,2004(a5) # 8000be58 <_ZL10waitForAll>
    Thread* threads[threadNum];
    8000568c:	00391793          	slli	a5,s2,0x3
    80005690:	00f78793          	addi	a5,a5,15
    80005694:	ff07f793          	andi	a5,a5,-16
    80005698:	40f10133          	sub	sp,sp,a5
    8000569c:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800056a0:	0019071b          	addiw	a4,s2,1
    800056a4:	00171793          	slli	a5,a4,0x1
    800056a8:	00e787b3          	add	a5,a5,a4
    800056ac:	00379793          	slli	a5,a5,0x3
    800056b0:	00f78793          	addi	a5,a5,15
    800056b4:	ff07f793          	andi	a5,a5,-16
    800056b8:	40f10133          	sub	sp,sp,a5
    800056bc:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800056c0:	00191c13          	slli	s8,s2,0x1
    800056c4:	012c07b3          	add	a5,s8,s2
    800056c8:	00379793          	slli	a5,a5,0x3
    800056cc:	00fa07b3          	add	a5,s4,a5
    800056d0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800056d4:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800056d8:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800056dc:	02800513          	li	a0,40
    800056e0:	ffffd097          	auipc	ra,0xffffd
    800056e4:	07c080e7          	jalr	124(ra) # 8000275c <_Znwm>
    800056e8:	00050b13          	mv	s6,a0
    800056ec:	012c0c33          	add	s8,s8,s2
    800056f0:	003c1c13          	slli	s8,s8,0x3
    800056f4:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800056f8:	ffffd097          	auipc	ra,0xffffd
    800056fc:	33c080e7          	jalr	828(ra) # 80002a34 <_ZN6ThreadC1Ev>
    80005700:	00006797          	auipc	a5,0x6
    80005704:	63078793          	addi	a5,a5,1584 # 8000bd30 <_ZTV12ConsumerSync+0x10>
    80005708:	00fb3023          	sd	a5,0(s6)
    8000570c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005710:	000b0513          	mv	a0,s6
    80005714:	ffffd097          	auipc	ra,0xffffd
    80005718:	350080e7          	jalr	848(ra) # 80002a64 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000571c:	00000493          	li	s1,0
    80005720:	0380006f          	j	80005758 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005724:	00006797          	auipc	a5,0x6
    80005728:	5e478793          	addi	a5,a5,1508 # 8000bd08 <_ZTV12ProducerSync+0x10>
    8000572c:	00fcb023          	sd	a5,0(s9)
    80005730:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005734:	00349793          	slli	a5,s1,0x3
    80005738:	00f987b3          	add	a5,s3,a5
    8000573c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005740:	00349793          	slli	a5,s1,0x3
    80005744:	00f987b3          	add	a5,s3,a5
    80005748:	0007b503          	ld	a0,0(a5)
    8000574c:	ffffd097          	auipc	ra,0xffffd
    80005750:	318080e7          	jalr	792(ra) # 80002a64 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005754:	0014849b          	addiw	s1,s1,1
    80005758:	0b24d063          	bge	s1,s2,800057f8 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    8000575c:	00149793          	slli	a5,s1,0x1
    80005760:	009787b3          	add	a5,a5,s1
    80005764:	00379793          	slli	a5,a5,0x3
    80005768:	00fa07b3          	add	a5,s4,a5
    8000576c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005770:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005774:	00006717          	auipc	a4,0x6
    80005778:	6e473703          	ld	a4,1764(a4) # 8000be58 <_ZL10waitForAll>
    8000577c:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005780:	02905863          	blez	s1,800057b0 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005784:	02800513          	li	a0,40
    80005788:	ffffd097          	auipc	ra,0xffffd
    8000578c:	fd4080e7          	jalr	-44(ra) # 8000275c <_Znwm>
    80005790:	00050c93          	mv	s9,a0
    80005794:	00149c13          	slli	s8,s1,0x1
    80005798:	009c0c33          	add	s8,s8,s1
    8000579c:	003c1c13          	slli	s8,s8,0x3
    800057a0:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800057a4:	ffffd097          	auipc	ra,0xffffd
    800057a8:	290080e7          	jalr	656(ra) # 80002a34 <_ZN6ThreadC1Ev>
    800057ac:	f79ff06f          	j	80005724 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800057b0:	02800513          	li	a0,40
    800057b4:	ffffd097          	auipc	ra,0xffffd
    800057b8:	fa8080e7          	jalr	-88(ra) # 8000275c <_Znwm>
    800057bc:	00050c93          	mv	s9,a0
    800057c0:	00149c13          	slli	s8,s1,0x1
    800057c4:	009c0c33          	add	s8,s8,s1
    800057c8:	003c1c13          	slli	s8,s8,0x3
    800057cc:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800057d0:	ffffd097          	auipc	ra,0xffffd
    800057d4:	264080e7          	jalr	612(ra) # 80002a34 <_ZN6ThreadC1Ev>
    800057d8:	00006797          	auipc	a5,0x6
    800057dc:	50878793          	addi	a5,a5,1288 # 8000bce0 <_ZTV16ProducerKeyboard+0x10>
    800057e0:	00fcb023          	sd	a5,0(s9)
    800057e4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800057e8:	00349793          	slli	a5,s1,0x3
    800057ec:	00f987b3          	add	a5,s3,a5
    800057f0:	0197b023          	sd	s9,0(a5)
    800057f4:	f4dff06f          	j	80005740 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800057f8:	ffffd097          	auipc	ra,0xffffd
    800057fc:	2c0080e7          	jalr	704(ra) # 80002ab8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005800:	00000493          	li	s1,0
    80005804:	00994e63          	blt	s2,s1,80005820 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005808:	00006517          	auipc	a0,0x6
    8000580c:	65053503          	ld	a0,1616(a0) # 8000be58 <_ZL10waitForAll>
    80005810:	ffffd097          	auipc	ra,0xffffd
    80005814:	3c0080e7          	jalr	960(ra) # 80002bd0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005818:	0014849b          	addiw	s1,s1,1
    8000581c:	fe9ff06f          	j	80005804 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005820:	00000493          	li	s1,0
    80005824:	0080006f          	j	8000582c <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005828:	0014849b          	addiw	s1,s1,1
    8000582c:	0324d263          	bge	s1,s2,80005850 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005830:	00349793          	slli	a5,s1,0x3
    80005834:	00f987b3          	add	a5,s3,a5
    80005838:	0007b503          	ld	a0,0(a5)
    8000583c:	fe0506e3          	beqz	a0,80005828 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005840:	00053783          	ld	a5,0(a0)
    80005844:	0087b783          	ld	a5,8(a5)
    80005848:	000780e7          	jalr	a5
    8000584c:	fddff06f          	j	80005828 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005850:	000b0a63          	beqz	s6,80005864 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005854:	000b3783          	ld	a5,0(s6)
    80005858:	0087b783          	ld	a5,8(a5)
    8000585c:	000b0513          	mv	a0,s6
    80005860:	000780e7          	jalr	a5
    delete waitForAll;
    80005864:	00006517          	auipc	a0,0x6
    80005868:	5f453503          	ld	a0,1524(a0) # 8000be58 <_ZL10waitForAll>
    8000586c:	00050863          	beqz	a0,8000587c <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005870:	00053783          	ld	a5,0(a0)
    80005874:	0087b783          	ld	a5,8(a5)
    80005878:	000780e7          	jalr	a5
    delete buffer;
    8000587c:	000a8e63          	beqz	s5,80005898 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005880:	000a8513          	mv	a0,s5
    80005884:	00001097          	auipc	ra,0x1
    80005888:	8a8080e7          	jalr	-1880(ra) # 8000612c <_ZN9BufferCPPD1Ev>
    8000588c:	000a8513          	mv	a0,s5
    80005890:	ffffd097          	auipc	ra,0xffffd
    80005894:	f1c080e7          	jalr	-228(ra) # 800027ac <_ZdlPv>
    80005898:	000b8113          	mv	sp,s7

}
    8000589c:	f8040113          	addi	sp,s0,-128
    800058a0:	07813083          	ld	ra,120(sp)
    800058a4:	07013403          	ld	s0,112(sp)
    800058a8:	06813483          	ld	s1,104(sp)
    800058ac:	06013903          	ld	s2,96(sp)
    800058b0:	05813983          	ld	s3,88(sp)
    800058b4:	05013a03          	ld	s4,80(sp)
    800058b8:	04813a83          	ld	s5,72(sp)
    800058bc:	04013b03          	ld	s6,64(sp)
    800058c0:	03813b83          	ld	s7,56(sp)
    800058c4:	03013c03          	ld	s8,48(sp)
    800058c8:	02813c83          	ld	s9,40(sp)
    800058cc:	08010113          	addi	sp,sp,128
    800058d0:	00008067          	ret
    800058d4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800058d8:	000a8513          	mv	a0,s5
    800058dc:	ffffd097          	auipc	ra,0xffffd
    800058e0:	ed0080e7          	jalr	-304(ra) # 800027ac <_ZdlPv>
    800058e4:	00048513          	mv	a0,s1
    800058e8:	00007097          	auipc	ra,0x7
    800058ec:	650080e7          	jalr	1616(ra) # 8000cf38 <_Unwind_Resume>
    800058f0:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800058f4:	00048513          	mv	a0,s1
    800058f8:	ffffd097          	auipc	ra,0xffffd
    800058fc:	eb4080e7          	jalr	-332(ra) # 800027ac <_ZdlPv>
    80005900:	00090513          	mv	a0,s2
    80005904:	00007097          	auipc	ra,0x7
    80005908:	634080e7          	jalr	1588(ra) # 8000cf38 <_Unwind_Resume>
    8000590c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005910:	000b0513          	mv	a0,s6
    80005914:	ffffd097          	auipc	ra,0xffffd
    80005918:	e98080e7          	jalr	-360(ra) # 800027ac <_ZdlPv>
    8000591c:	00048513          	mv	a0,s1
    80005920:	00007097          	auipc	ra,0x7
    80005924:	618080e7          	jalr	1560(ra) # 8000cf38 <_Unwind_Resume>
    80005928:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    8000592c:	000c8513          	mv	a0,s9
    80005930:	ffffd097          	auipc	ra,0xffffd
    80005934:	e7c080e7          	jalr	-388(ra) # 800027ac <_ZdlPv>
    80005938:	00048513          	mv	a0,s1
    8000593c:	00007097          	auipc	ra,0x7
    80005940:	5fc080e7          	jalr	1532(ra) # 8000cf38 <_Unwind_Resume>
    80005944:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005948:	000c8513          	mv	a0,s9
    8000594c:	ffffd097          	auipc	ra,0xffffd
    80005950:	e60080e7          	jalr	-416(ra) # 800027ac <_ZdlPv>
    80005954:	00048513          	mv	a0,s1
    80005958:	00007097          	auipc	ra,0x7
    8000595c:	5e0080e7          	jalr	1504(ra) # 8000cf38 <_Unwind_Resume>

0000000080005960 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005960:	ff010113          	addi	sp,sp,-16
    80005964:	00113423          	sd	ra,8(sp)
    80005968:	00813023          	sd	s0,0(sp)
    8000596c:	01010413          	addi	s0,sp,16
    80005970:	00006797          	auipc	a5,0x6
    80005974:	3c078793          	addi	a5,a5,960 # 8000bd30 <_ZTV12ConsumerSync+0x10>
    80005978:	00f53023          	sd	a5,0(a0)
    8000597c:	ffffd097          	auipc	ra,0xffffd
    80005980:	f94080e7          	jalr	-108(ra) # 80002910 <_ZN6ThreadD1Ev>
    80005984:	00813083          	ld	ra,8(sp)
    80005988:	00013403          	ld	s0,0(sp)
    8000598c:	01010113          	addi	sp,sp,16
    80005990:	00008067          	ret

0000000080005994 <_ZN12ConsumerSyncD0Ev>:
    80005994:	fe010113          	addi	sp,sp,-32
    80005998:	00113c23          	sd	ra,24(sp)
    8000599c:	00813823          	sd	s0,16(sp)
    800059a0:	00913423          	sd	s1,8(sp)
    800059a4:	02010413          	addi	s0,sp,32
    800059a8:	00050493          	mv	s1,a0
    800059ac:	00006797          	auipc	a5,0x6
    800059b0:	38478793          	addi	a5,a5,900 # 8000bd30 <_ZTV12ConsumerSync+0x10>
    800059b4:	00f53023          	sd	a5,0(a0)
    800059b8:	ffffd097          	auipc	ra,0xffffd
    800059bc:	f58080e7          	jalr	-168(ra) # 80002910 <_ZN6ThreadD1Ev>
    800059c0:	00048513          	mv	a0,s1
    800059c4:	ffffd097          	auipc	ra,0xffffd
    800059c8:	de8080e7          	jalr	-536(ra) # 800027ac <_ZdlPv>
    800059cc:	01813083          	ld	ra,24(sp)
    800059d0:	01013403          	ld	s0,16(sp)
    800059d4:	00813483          	ld	s1,8(sp)
    800059d8:	02010113          	addi	sp,sp,32
    800059dc:	00008067          	ret

00000000800059e0 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800059e0:	ff010113          	addi	sp,sp,-16
    800059e4:	00113423          	sd	ra,8(sp)
    800059e8:	00813023          	sd	s0,0(sp)
    800059ec:	01010413          	addi	s0,sp,16
    800059f0:	00006797          	auipc	a5,0x6
    800059f4:	31878793          	addi	a5,a5,792 # 8000bd08 <_ZTV12ProducerSync+0x10>
    800059f8:	00f53023          	sd	a5,0(a0)
    800059fc:	ffffd097          	auipc	ra,0xffffd
    80005a00:	f14080e7          	jalr	-236(ra) # 80002910 <_ZN6ThreadD1Ev>
    80005a04:	00813083          	ld	ra,8(sp)
    80005a08:	00013403          	ld	s0,0(sp)
    80005a0c:	01010113          	addi	sp,sp,16
    80005a10:	00008067          	ret

0000000080005a14 <_ZN12ProducerSyncD0Ev>:
    80005a14:	fe010113          	addi	sp,sp,-32
    80005a18:	00113c23          	sd	ra,24(sp)
    80005a1c:	00813823          	sd	s0,16(sp)
    80005a20:	00913423          	sd	s1,8(sp)
    80005a24:	02010413          	addi	s0,sp,32
    80005a28:	00050493          	mv	s1,a0
    80005a2c:	00006797          	auipc	a5,0x6
    80005a30:	2dc78793          	addi	a5,a5,732 # 8000bd08 <_ZTV12ProducerSync+0x10>
    80005a34:	00f53023          	sd	a5,0(a0)
    80005a38:	ffffd097          	auipc	ra,0xffffd
    80005a3c:	ed8080e7          	jalr	-296(ra) # 80002910 <_ZN6ThreadD1Ev>
    80005a40:	00048513          	mv	a0,s1
    80005a44:	ffffd097          	auipc	ra,0xffffd
    80005a48:	d68080e7          	jalr	-664(ra) # 800027ac <_ZdlPv>
    80005a4c:	01813083          	ld	ra,24(sp)
    80005a50:	01013403          	ld	s0,16(sp)
    80005a54:	00813483          	ld	s1,8(sp)
    80005a58:	02010113          	addi	sp,sp,32
    80005a5c:	00008067          	ret

0000000080005a60 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005a60:	ff010113          	addi	sp,sp,-16
    80005a64:	00113423          	sd	ra,8(sp)
    80005a68:	00813023          	sd	s0,0(sp)
    80005a6c:	01010413          	addi	s0,sp,16
    80005a70:	00006797          	auipc	a5,0x6
    80005a74:	27078793          	addi	a5,a5,624 # 8000bce0 <_ZTV16ProducerKeyboard+0x10>
    80005a78:	00f53023          	sd	a5,0(a0)
    80005a7c:	ffffd097          	auipc	ra,0xffffd
    80005a80:	e94080e7          	jalr	-364(ra) # 80002910 <_ZN6ThreadD1Ev>
    80005a84:	00813083          	ld	ra,8(sp)
    80005a88:	00013403          	ld	s0,0(sp)
    80005a8c:	01010113          	addi	sp,sp,16
    80005a90:	00008067          	ret

0000000080005a94 <_ZN16ProducerKeyboardD0Ev>:
    80005a94:	fe010113          	addi	sp,sp,-32
    80005a98:	00113c23          	sd	ra,24(sp)
    80005a9c:	00813823          	sd	s0,16(sp)
    80005aa0:	00913423          	sd	s1,8(sp)
    80005aa4:	02010413          	addi	s0,sp,32
    80005aa8:	00050493          	mv	s1,a0
    80005aac:	00006797          	auipc	a5,0x6
    80005ab0:	23478793          	addi	a5,a5,564 # 8000bce0 <_ZTV16ProducerKeyboard+0x10>
    80005ab4:	00f53023          	sd	a5,0(a0)
    80005ab8:	ffffd097          	auipc	ra,0xffffd
    80005abc:	e58080e7          	jalr	-424(ra) # 80002910 <_ZN6ThreadD1Ev>
    80005ac0:	00048513          	mv	a0,s1
    80005ac4:	ffffd097          	auipc	ra,0xffffd
    80005ac8:	ce8080e7          	jalr	-792(ra) # 800027ac <_ZdlPv>
    80005acc:	01813083          	ld	ra,24(sp)
    80005ad0:	01013403          	ld	s0,16(sp)
    80005ad4:	00813483          	ld	s1,8(sp)
    80005ad8:	02010113          	addi	sp,sp,32
    80005adc:	00008067          	ret

0000000080005ae0 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005ae0:	ff010113          	addi	sp,sp,-16
    80005ae4:	00113423          	sd	ra,8(sp)
    80005ae8:	00813023          	sd	s0,0(sp)
    80005aec:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005af0:	02053583          	ld	a1,32(a0)
    80005af4:	fffff097          	auipc	ra,0xfffff
    80005af8:	7e4080e7          	jalr	2020(ra) # 800052d8 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005afc:	00813083          	ld	ra,8(sp)
    80005b00:	00013403          	ld	s0,0(sp)
    80005b04:	01010113          	addi	sp,sp,16
    80005b08:	00008067          	ret

0000000080005b0c <_ZN12ProducerSync3runEv>:
    void run() override {
    80005b0c:	ff010113          	addi	sp,sp,-16
    80005b10:	00113423          	sd	ra,8(sp)
    80005b14:	00813023          	sd	s0,0(sp)
    80005b18:	01010413          	addi	s0,sp,16
        producer(td);
    80005b1c:	02053583          	ld	a1,32(a0)
    80005b20:	00000097          	auipc	ra,0x0
    80005b24:	878080e7          	jalr	-1928(ra) # 80005398 <_ZN12ProducerSync8producerEPv>
    }
    80005b28:	00813083          	ld	ra,8(sp)
    80005b2c:	00013403          	ld	s0,0(sp)
    80005b30:	01010113          	addi	sp,sp,16
    80005b34:	00008067          	ret

0000000080005b38 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005b38:	ff010113          	addi	sp,sp,-16
    80005b3c:	00113423          	sd	ra,8(sp)
    80005b40:	00813023          	sd	s0,0(sp)
    80005b44:	01010413          	addi	s0,sp,16
        consumer(td);
    80005b48:	02053583          	ld	a1,32(a0)
    80005b4c:	00000097          	auipc	ra,0x0
    80005b50:	8e0080e7          	jalr	-1824(ra) # 8000542c <_ZN12ConsumerSync8consumerEPv>
    }
    80005b54:	00813083          	ld	ra,8(sp)
    80005b58:	00013403          	ld	s0,0(sp)
    80005b5c:	01010113          	addi	sp,sp,16
    80005b60:	00008067          	ret

0000000080005b64 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005b64:	fe010113          	addi	sp,sp,-32
    80005b68:	00113c23          	sd	ra,24(sp)
    80005b6c:	00813823          	sd	s0,16(sp)
    80005b70:	00913423          	sd	s1,8(sp)
    80005b74:	02010413          	addi	s0,sp,32
    80005b78:	00050493          	mv	s1,a0
    LOCK();
    80005b7c:	00100613          	li	a2,1
    80005b80:	00000593          	li	a1,0
    80005b84:	00006517          	auipc	a0,0x6
    80005b88:	2dc50513          	addi	a0,a0,732 # 8000be60 <lockPrint>
    80005b8c:	ffffb097          	auipc	ra,0xffffb
    80005b90:	618080e7          	jalr	1560(ra) # 800011a4 <copy_and_swap>
    80005b94:	00050863          	beqz	a0,80005ba4 <_Z11printStringPKc+0x40>
    80005b98:	ffffb097          	auipc	ra,0xffffb
    80005b9c:	7f0080e7          	jalr	2032(ra) # 80001388 <_Z15thread_dispatchv>
    80005ba0:	fddff06f          	j	80005b7c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005ba4:	0004c503          	lbu	a0,0(s1)
    80005ba8:	00050a63          	beqz	a0,80005bbc <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005bac:	ffffc097          	auipc	ra,0xffffc
    80005bb0:	ae4080e7          	jalr	-1308(ra) # 80001690 <_Z4putcc>
        string++;
    80005bb4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005bb8:	fedff06f          	j	80005ba4 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005bbc:	00000613          	li	a2,0
    80005bc0:	00100593          	li	a1,1
    80005bc4:	00006517          	auipc	a0,0x6
    80005bc8:	29c50513          	addi	a0,a0,668 # 8000be60 <lockPrint>
    80005bcc:	ffffb097          	auipc	ra,0xffffb
    80005bd0:	5d8080e7          	jalr	1496(ra) # 800011a4 <copy_and_swap>
    80005bd4:	fe0514e3          	bnez	a0,80005bbc <_Z11printStringPKc+0x58>
}
    80005bd8:	01813083          	ld	ra,24(sp)
    80005bdc:	01013403          	ld	s0,16(sp)
    80005be0:	00813483          	ld	s1,8(sp)
    80005be4:	02010113          	addi	sp,sp,32
    80005be8:	00008067          	ret

0000000080005bec <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005bec:	fd010113          	addi	sp,sp,-48
    80005bf0:	02113423          	sd	ra,40(sp)
    80005bf4:	02813023          	sd	s0,32(sp)
    80005bf8:	00913c23          	sd	s1,24(sp)
    80005bfc:	01213823          	sd	s2,16(sp)
    80005c00:	01313423          	sd	s3,8(sp)
    80005c04:	01413023          	sd	s4,0(sp)
    80005c08:	03010413          	addi	s0,sp,48
    80005c0c:	00050993          	mv	s3,a0
    80005c10:	00058a13          	mv	s4,a1
    LOCK();
    80005c14:	00100613          	li	a2,1
    80005c18:	00000593          	li	a1,0
    80005c1c:	00006517          	auipc	a0,0x6
    80005c20:	24450513          	addi	a0,a0,580 # 8000be60 <lockPrint>
    80005c24:	ffffb097          	auipc	ra,0xffffb
    80005c28:	580080e7          	jalr	1408(ra) # 800011a4 <copy_and_swap>
    80005c2c:	00050863          	beqz	a0,80005c3c <_Z9getStringPci+0x50>
    80005c30:	ffffb097          	auipc	ra,0xffffb
    80005c34:	758080e7          	jalr	1880(ra) # 80001388 <_Z15thread_dispatchv>
    80005c38:	fddff06f          	j	80005c14 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005c3c:	00000913          	li	s2,0
    80005c40:	00090493          	mv	s1,s2
    80005c44:	0019091b          	addiw	s2,s2,1
    80005c48:	03495a63          	bge	s2,s4,80005c7c <_Z9getStringPci+0x90>
        cc = getc();
    80005c4c:	ffffc097          	auipc	ra,0xffffc
    80005c50:	a04080e7          	jalr	-1532(ra) # 80001650 <_Z4getcv>
        if(cc < 1)
    80005c54:	02050463          	beqz	a0,80005c7c <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005c58:	009984b3          	add	s1,s3,s1
    80005c5c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005c60:	00a00793          	li	a5,10
    80005c64:	00f50a63          	beq	a0,a5,80005c78 <_Z9getStringPci+0x8c>
    80005c68:	00d00793          	li	a5,13
    80005c6c:	fcf51ae3          	bne	a0,a5,80005c40 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005c70:	00090493          	mv	s1,s2
    80005c74:	0080006f          	j	80005c7c <_Z9getStringPci+0x90>
    80005c78:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005c7c:	009984b3          	add	s1,s3,s1
    80005c80:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005c84:	00000613          	li	a2,0
    80005c88:	00100593          	li	a1,1
    80005c8c:	00006517          	auipc	a0,0x6
    80005c90:	1d450513          	addi	a0,a0,468 # 8000be60 <lockPrint>
    80005c94:	ffffb097          	auipc	ra,0xffffb
    80005c98:	510080e7          	jalr	1296(ra) # 800011a4 <copy_and_swap>
    80005c9c:	fe0514e3          	bnez	a0,80005c84 <_Z9getStringPci+0x98>
    return buf;
}
    80005ca0:	00098513          	mv	a0,s3
    80005ca4:	02813083          	ld	ra,40(sp)
    80005ca8:	02013403          	ld	s0,32(sp)
    80005cac:	01813483          	ld	s1,24(sp)
    80005cb0:	01013903          	ld	s2,16(sp)
    80005cb4:	00813983          	ld	s3,8(sp)
    80005cb8:	00013a03          	ld	s4,0(sp)
    80005cbc:	03010113          	addi	sp,sp,48
    80005cc0:	00008067          	ret

0000000080005cc4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005cc4:	ff010113          	addi	sp,sp,-16
    80005cc8:	00813423          	sd	s0,8(sp)
    80005ccc:	01010413          	addi	s0,sp,16
    80005cd0:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005cd4:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005cd8:	0006c603          	lbu	a2,0(a3)
    80005cdc:	fd06071b          	addiw	a4,a2,-48
    80005ce0:	0ff77713          	andi	a4,a4,255
    80005ce4:	00900793          	li	a5,9
    80005ce8:	02e7e063          	bltu	a5,a4,80005d08 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005cec:	0025179b          	slliw	a5,a0,0x2
    80005cf0:	00a787bb          	addw	a5,a5,a0
    80005cf4:	0017979b          	slliw	a5,a5,0x1
    80005cf8:	00168693          	addi	a3,a3,1
    80005cfc:	00c787bb          	addw	a5,a5,a2
    80005d00:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005d04:	fd5ff06f          	j	80005cd8 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005d08:	00813403          	ld	s0,8(sp)
    80005d0c:	01010113          	addi	sp,sp,16
    80005d10:	00008067          	ret

0000000080005d14 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005d14:	fc010113          	addi	sp,sp,-64
    80005d18:	02113c23          	sd	ra,56(sp)
    80005d1c:	02813823          	sd	s0,48(sp)
    80005d20:	02913423          	sd	s1,40(sp)
    80005d24:	03213023          	sd	s2,32(sp)
    80005d28:	01313c23          	sd	s3,24(sp)
    80005d2c:	04010413          	addi	s0,sp,64
    80005d30:	00050493          	mv	s1,a0
    80005d34:	00058913          	mv	s2,a1
    80005d38:	00060993          	mv	s3,a2
    LOCK();
    80005d3c:	00100613          	li	a2,1
    80005d40:	00000593          	li	a1,0
    80005d44:	00006517          	auipc	a0,0x6
    80005d48:	11c50513          	addi	a0,a0,284 # 8000be60 <lockPrint>
    80005d4c:	ffffb097          	auipc	ra,0xffffb
    80005d50:	458080e7          	jalr	1112(ra) # 800011a4 <copy_and_swap>
    80005d54:	00050863          	beqz	a0,80005d64 <_Z8printIntiii+0x50>
    80005d58:	ffffb097          	auipc	ra,0xffffb
    80005d5c:	630080e7          	jalr	1584(ra) # 80001388 <_Z15thread_dispatchv>
    80005d60:	fddff06f          	j	80005d3c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005d64:	00098463          	beqz	s3,80005d6c <_Z8printIntiii+0x58>
    80005d68:	0804c463          	bltz	s1,80005df0 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005d6c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005d70:	00000593          	li	a1,0
    }

    i = 0;
    80005d74:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005d78:	0009079b          	sext.w	a5,s2
    80005d7c:	0325773b          	remuw	a4,a0,s2
    80005d80:	00048613          	mv	a2,s1
    80005d84:	0014849b          	addiw	s1,s1,1
    80005d88:	02071693          	slli	a3,a4,0x20
    80005d8c:	0206d693          	srli	a3,a3,0x20
    80005d90:	00006717          	auipc	a4,0x6
    80005d94:	fb870713          	addi	a4,a4,-72 # 8000bd48 <digits>
    80005d98:	00d70733          	add	a4,a4,a3
    80005d9c:	00074683          	lbu	a3,0(a4)
    80005da0:	fd040713          	addi	a4,s0,-48
    80005da4:	00c70733          	add	a4,a4,a2
    80005da8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005dac:	0005071b          	sext.w	a4,a0
    80005db0:	0325553b          	divuw	a0,a0,s2
    80005db4:	fcf772e3          	bgeu	a4,a5,80005d78 <_Z8printIntiii+0x64>
    if(neg)
    80005db8:	00058c63          	beqz	a1,80005dd0 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005dbc:	fd040793          	addi	a5,s0,-48
    80005dc0:	009784b3          	add	s1,a5,s1
    80005dc4:	02d00793          	li	a5,45
    80005dc8:	fef48823          	sb	a5,-16(s1)
    80005dcc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005dd0:	fff4849b          	addiw	s1,s1,-1
    80005dd4:	0204c463          	bltz	s1,80005dfc <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005dd8:	fd040793          	addi	a5,s0,-48
    80005ddc:	009787b3          	add	a5,a5,s1
    80005de0:	ff07c503          	lbu	a0,-16(a5)
    80005de4:	ffffc097          	auipc	ra,0xffffc
    80005de8:	8ac080e7          	jalr	-1876(ra) # 80001690 <_Z4putcc>
    80005dec:	fe5ff06f          	j	80005dd0 <_Z8printIntiii+0xbc>
        x = -xx;
    80005df0:	4090053b          	negw	a0,s1
        neg = 1;
    80005df4:	00100593          	li	a1,1
        x = -xx;
    80005df8:	f7dff06f          	j	80005d74 <_Z8printIntiii+0x60>

    UNLOCK();
    80005dfc:	00000613          	li	a2,0
    80005e00:	00100593          	li	a1,1
    80005e04:	00006517          	auipc	a0,0x6
    80005e08:	05c50513          	addi	a0,a0,92 # 8000be60 <lockPrint>
    80005e0c:	ffffb097          	auipc	ra,0xffffb
    80005e10:	398080e7          	jalr	920(ra) # 800011a4 <copy_and_swap>
    80005e14:	fe0514e3          	bnez	a0,80005dfc <_Z8printIntiii+0xe8>
    80005e18:	03813083          	ld	ra,56(sp)
    80005e1c:	03013403          	ld	s0,48(sp)
    80005e20:	02813483          	ld	s1,40(sp)
    80005e24:	02013903          	ld	s2,32(sp)
    80005e28:	01813983          	ld	s3,24(sp)
    80005e2c:	04010113          	addi	sp,sp,64
    80005e30:	00008067          	ret

0000000080005e34 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005e34:	fd010113          	addi	sp,sp,-48
    80005e38:	02113423          	sd	ra,40(sp)
    80005e3c:	02813023          	sd	s0,32(sp)
    80005e40:	00913c23          	sd	s1,24(sp)
    80005e44:	01213823          	sd	s2,16(sp)
    80005e48:	01313423          	sd	s3,8(sp)
    80005e4c:	03010413          	addi	s0,sp,48
    80005e50:	00050493          	mv	s1,a0
    80005e54:	00058913          	mv	s2,a1
    80005e58:	0015879b          	addiw	a5,a1,1
    80005e5c:	0007851b          	sext.w	a0,a5
    80005e60:	00f4a023          	sw	a5,0(s1)
    80005e64:	0004a823          	sw	zero,16(s1)
    80005e68:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005e6c:	00251513          	slli	a0,a0,0x2
    80005e70:	ffffb097          	auipc	ra,0xffffb
    80005e74:	388080e7          	jalr	904(ra) # 800011f8 <_Z9mem_allocm>
    80005e78:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005e7c:	01000513          	li	a0,16
    80005e80:	ffffd097          	auipc	ra,0xffffd
    80005e84:	8dc080e7          	jalr	-1828(ra) # 8000275c <_Znwm>
    80005e88:	00050993          	mv	s3,a0
    80005e8c:	00000593          	li	a1,0
    80005e90:	ffffd097          	auipc	ra,0xffffd
    80005e94:	d04080e7          	jalr	-764(ra) # 80002b94 <_ZN9SemaphoreC1Ej>
    80005e98:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005e9c:	01000513          	li	a0,16
    80005ea0:	ffffd097          	auipc	ra,0xffffd
    80005ea4:	8bc080e7          	jalr	-1860(ra) # 8000275c <_Znwm>
    80005ea8:	00050993          	mv	s3,a0
    80005eac:	00090593          	mv	a1,s2
    80005eb0:	ffffd097          	auipc	ra,0xffffd
    80005eb4:	ce4080e7          	jalr	-796(ra) # 80002b94 <_ZN9SemaphoreC1Ej>
    80005eb8:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005ebc:	01000513          	li	a0,16
    80005ec0:	ffffd097          	auipc	ra,0xffffd
    80005ec4:	89c080e7          	jalr	-1892(ra) # 8000275c <_Znwm>
    80005ec8:	00050913          	mv	s2,a0
    80005ecc:	00100593          	li	a1,1
    80005ed0:	ffffd097          	auipc	ra,0xffffd
    80005ed4:	cc4080e7          	jalr	-828(ra) # 80002b94 <_ZN9SemaphoreC1Ej>
    80005ed8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005edc:	01000513          	li	a0,16
    80005ee0:	ffffd097          	auipc	ra,0xffffd
    80005ee4:	87c080e7          	jalr	-1924(ra) # 8000275c <_Znwm>
    80005ee8:	00050913          	mv	s2,a0
    80005eec:	00100593          	li	a1,1
    80005ef0:	ffffd097          	auipc	ra,0xffffd
    80005ef4:	ca4080e7          	jalr	-860(ra) # 80002b94 <_ZN9SemaphoreC1Ej>
    80005ef8:	0324b823          	sd	s2,48(s1)
}
    80005efc:	02813083          	ld	ra,40(sp)
    80005f00:	02013403          	ld	s0,32(sp)
    80005f04:	01813483          	ld	s1,24(sp)
    80005f08:	01013903          	ld	s2,16(sp)
    80005f0c:	00813983          	ld	s3,8(sp)
    80005f10:	03010113          	addi	sp,sp,48
    80005f14:	00008067          	ret
    80005f18:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005f1c:	00098513          	mv	a0,s3
    80005f20:	ffffd097          	auipc	ra,0xffffd
    80005f24:	88c080e7          	jalr	-1908(ra) # 800027ac <_ZdlPv>
    80005f28:	00048513          	mv	a0,s1
    80005f2c:	00007097          	auipc	ra,0x7
    80005f30:	00c080e7          	jalr	12(ra) # 8000cf38 <_Unwind_Resume>
    80005f34:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005f38:	00098513          	mv	a0,s3
    80005f3c:	ffffd097          	auipc	ra,0xffffd
    80005f40:	870080e7          	jalr	-1936(ra) # 800027ac <_ZdlPv>
    80005f44:	00048513          	mv	a0,s1
    80005f48:	00007097          	auipc	ra,0x7
    80005f4c:	ff0080e7          	jalr	-16(ra) # 8000cf38 <_Unwind_Resume>
    80005f50:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005f54:	00090513          	mv	a0,s2
    80005f58:	ffffd097          	auipc	ra,0xffffd
    80005f5c:	854080e7          	jalr	-1964(ra) # 800027ac <_ZdlPv>
    80005f60:	00048513          	mv	a0,s1
    80005f64:	00007097          	auipc	ra,0x7
    80005f68:	fd4080e7          	jalr	-44(ra) # 8000cf38 <_Unwind_Resume>
    80005f6c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005f70:	00090513          	mv	a0,s2
    80005f74:	ffffd097          	auipc	ra,0xffffd
    80005f78:	838080e7          	jalr	-1992(ra) # 800027ac <_ZdlPv>
    80005f7c:	00048513          	mv	a0,s1
    80005f80:	00007097          	auipc	ra,0x7
    80005f84:	fb8080e7          	jalr	-72(ra) # 8000cf38 <_Unwind_Resume>

0000000080005f88 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005f88:	fe010113          	addi	sp,sp,-32
    80005f8c:	00113c23          	sd	ra,24(sp)
    80005f90:	00813823          	sd	s0,16(sp)
    80005f94:	00913423          	sd	s1,8(sp)
    80005f98:	01213023          	sd	s2,0(sp)
    80005f9c:	02010413          	addi	s0,sp,32
    80005fa0:	00050493          	mv	s1,a0
    80005fa4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005fa8:	01853503          	ld	a0,24(a0)
    80005fac:	ffffd097          	auipc	ra,0xffffd
    80005fb0:	c24080e7          	jalr	-988(ra) # 80002bd0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005fb4:	0304b503          	ld	a0,48(s1)
    80005fb8:	ffffd097          	auipc	ra,0xffffd
    80005fbc:	c18080e7          	jalr	-1000(ra) # 80002bd0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005fc0:	0084b783          	ld	a5,8(s1)
    80005fc4:	0144a703          	lw	a4,20(s1)
    80005fc8:	00271713          	slli	a4,a4,0x2
    80005fcc:	00e787b3          	add	a5,a5,a4
    80005fd0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005fd4:	0144a783          	lw	a5,20(s1)
    80005fd8:	0017879b          	addiw	a5,a5,1
    80005fdc:	0004a703          	lw	a4,0(s1)
    80005fe0:	02e7e7bb          	remw	a5,a5,a4
    80005fe4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005fe8:	0304b503          	ld	a0,48(s1)
    80005fec:	ffffd097          	auipc	ra,0xffffd
    80005ff0:	c10080e7          	jalr	-1008(ra) # 80002bfc <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005ff4:	0204b503          	ld	a0,32(s1)
    80005ff8:	ffffd097          	auipc	ra,0xffffd
    80005ffc:	c04080e7          	jalr	-1020(ra) # 80002bfc <_ZN9Semaphore6signalEv>

}
    80006000:	01813083          	ld	ra,24(sp)
    80006004:	01013403          	ld	s0,16(sp)
    80006008:	00813483          	ld	s1,8(sp)
    8000600c:	00013903          	ld	s2,0(sp)
    80006010:	02010113          	addi	sp,sp,32
    80006014:	00008067          	ret

0000000080006018 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006018:	fe010113          	addi	sp,sp,-32
    8000601c:	00113c23          	sd	ra,24(sp)
    80006020:	00813823          	sd	s0,16(sp)
    80006024:	00913423          	sd	s1,8(sp)
    80006028:	01213023          	sd	s2,0(sp)
    8000602c:	02010413          	addi	s0,sp,32
    80006030:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006034:	02053503          	ld	a0,32(a0)
    80006038:	ffffd097          	auipc	ra,0xffffd
    8000603c:	b98080e7          	jalr	-1128(ra) # 80002bd0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006040:	0284b503          	ld	a0,40(s1)
    80006044:	ffffd097          	auipc	ra,0xffffd
    80006048:	b8c080e7          	jalr	-1140(ra) # 80002bd0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000604c:	0084b703          	ld	a4,8(s1)
    80006050:	0104a783          	lw	a5,16(s1)
    80006054:	00279693          	slli	a3,a5,0x2
    80006058:	00d70733          	add	a4,a4,a3
    8000605c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006060:	0017879b          	addiw	a5,a5,1
    80006064:	0004a703          	lw	a4,0(s1)
    80006068:	02e7e7bb          	remw	a5,a5,a4
    8000606c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006070:	0284b503          	ld	a0,40(s1)
    80006074:	ffffd097          	auipc	ra,0xffffd
    80006078:	b88080e7          	jalr	-1144(ra) # 80002bfc <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000607c:	0184b503          	ld	a0,24(s1)
    80006080:	ffffd097          	auipc	ra,0xffffd
    80006084:	b7c080e7          	jalr	-1156(ra) # 80002bfc <_ZN9Semaphore6signalEv>

    return ret;
}
    80006088:	00090513          	mv	a0,s2
    8000608c:	01813083          	ld	ra,24(sp)
    80006090:	01013403          	ld	s0,16(sp)
    80006094:	00813483          	ld	s1,8(sp)
    80006098:	00013903          	ld	s2,0(sp)
    8000609c:	02010113          	addi	sp,sp,32
    800060a0:	00008067          	ret

00000000800060a4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800060a4:	fe010113          	addi	sp,sp,-32
    800060a8:	00113c23          	sd	ra,24(sp)
    800060ac:	00813823          	sd	s0,16(sp)
    800060b0:	00913423          	sd	s1,8(sp)
    800060b4:	01213023          	sd	s2,0(sp)
    800060b8:	02010413          	addi	s0,sp,32
    800060bc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800060c0:	02853503          	ld	a0,40(a0)
    800060c4:	ffffd097          	auipc	ra,0xffffd
    800060c8:	b0c080e7          	jalr	-1268(ra) # 80002bd0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800060cc:	0304b503          	ld	a0,48(s1)
    800060d0:	ffffd097          	auipc	ra,0xffffd
    800060d4:	b00080e7          	jalr	-1280(ra) # 80002bd0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800060d8:	0144a783          	lw	a5,20(s1)
    800060dc:	0104a903          	lw	s2,16(s1)
    800060e0:	0327ce63          	blt	a5,s2,8000611c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800060e4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800060e8:	0304b503          	ld	a0,48(s1)
    800060ec:	ffffd097          	auipc	ra,0xffffd
    800060f0:	b10080e7          	jalr	-1264(ra) # 80002bfc <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800060f4:	0284b503          	ld	a0,40(s1)
    800060f8:	ffffd097          	auipc	ra,0xffffd
    800060fc:	b04080e7          	jalr	-1276(ra) # 80002bfc <_ZN9Semaphore6signalEv>

    return ret;
}
    80006100:	00090513          	mv	a0,s2
    80006104:	01813083          	ld	ra,24(sp)
    80006108:	01013403          	ld	s0,16(sp)
    8000610c:	00813483          	ld	s1,8(sp)
    80006110:	00013903          	ld	s2,0(sp)
    80006114:	02010113          	addi	sp,sp,32
    80006118:	00008067          	ret
        ret = cap - head + tail;
    8000611c:	0004a703          	lw	a4,0(s1)
    80006120:	4127093b          	subw	s2,a4,s2
    80006124:	00f9093b          	addw	s2,s2,a5
    80006128:	fc1ff06f          	j	800060e8 <_ZN9BufferCPP6getCntEv+0x44>

000000008000612c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000612c:	fe010113          	addi	sp,sp,-32
    80006130:	00113c23          	sd	ra,24(sp)
    80006134:	00813823          	sd	s0,16(sp)
    80006138:	00913423          	sd	s1,8(sp)
    8000613c:	02010413          	addi	s0,sp,32
    80006140:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006144:	00a00513          	li	a0,10
    80006148:	ffffd097          	auipc	ra,0xffffd
    8000614c:	b70080e7          	jalr	-1168(ra) # 80002cb8 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006150:	00003517          	auipc	a0,0x3
    80006154:	47050513          	addi	a0,a0,1136 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006158:	00000097          	auipc	ra,0x0
    8000615c:	a0c080e7          	jalr	-1524(ra) # 80005b64 <_Z11printStringPKc>
    while (getCnt()) {
    80006160:	00048513          	mv	a0,s1
    80006164:	00000097          	auipc	ra,0x0
    80006168:	f40080e7          	jalr	-192(ra) # 800060a4 <_ZN9BufferCPP6getCntEv>
    8000616c:	02050c63          	beqz	a0,800061a4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006170:	0084b783          	ld	a5,8(s1)
    80006174:	0104a703          	lw	a4,16(s1)
    80006178:	00271713          	slli	a4,a4,0x2
    8000617c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006180:	0007c503          	lbu	a0,0(a5)
    80006184:	ffffd097          	auipc	ra,0xffffd
    80006188:	b34080e7          	jalr	-1228(ra) # 80002cb8 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8000618c:	0104a783          	lw	a5,16(s1)
    80006190:	0017879b          	addiw	a5,a5,1
    80006194:	0004a703          	lw	a4,0(s1)
    80006198:	02e7e7bb          	remw	a5,a5,a4
    8000619c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800061a0:	fc1ff06f          	j	80006160 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800061a4:	02100513          	li	a0,33
    800061a8:	ffffd097          	auipc	ra,0xffffd
    800061ac:	b10080e7          	jalr	-1264(ra) # 80002cb8 <_ZN7Console4putcEc>
    Console::putc('\n');
    800061b0:	00a00513          	li	a0,10
    800061b4:	ffffd097          	auipc	ra,0xffffd
    800061b8:	b04080e7          	jalr	-1276(ra) # 80002cb8 <_ZN7Console4putcEc>
    mem_free(buffer);
    800061bc:	0084b503          	ld	a0,8(s1)
    800061c0:	ffffb097          	auipc	ra,0xffffb
    800061c4:	084080e7          	jalr	132(ra) # 80001244 <_Z8mem_freePv>
    delete itemAvailable;
    800061c8:	0204b503          	ld	a0,32(s1)
    800061cc:	00050863          	beqz	a0,800061dc <_ZN9BufferCPPD1Ev+0xb0>
    800061d0:	00053783          	ld	a5,0(a0)
    800061d4:	0087b783          	ld	a5,8(a5)
    800061d8:	000780e7          	jalr	a5
    delete spaceAvailable;
    800061dc:	0184b503          	ld	a0,24(s1)
    800061e0:	00050863          	beqz	a0,800061f0 <_ZN9BufferCPPD1Ev+0xc4>
    800061e4:	00053783          	ld	a5,0(a0)
    800061e8:	0087b783          	ld	a5,8(a5)
    800061ec:	000780e7          	jalr	a5
    delete mutexTail;
    800061f0:	0304b503          	ld	a0,48(s1)
    800061f4:	00050863          	beqz	a0,80006204 <_ZN9BufferCPPD1Ev+0xd8>
    800061f8:	00053783          	ld	a5,0(a0)
    800061fc:	0087b783          	ld	a5,8(a5)
    80006200:	000780e7          	jalr	a5
    delete mutexHead;
    80006204:	0284b503          	ld	a0,40(s1)
    80006208:	00050863          	beqz	a0,80006218 <_ZN9BufferCPPD1Ev+0xec>
    8000620c:	00053783          	ld	a5,0(a0)
    80006210:	0087b783          	ld	a5,8(a5)
    80006214:	000780e7          	jalr	a5
}
    80006218:	01813083          	ld	ra,24(sp)
    8000621c:	01013403          	ld	s0,16(sp)
    80006220:	00813483          	ld	s1,8(sp)
    80006224:	02010113          	addi	sp,sp,32
    80006228:	00008067          	ret

000000008000622c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    8000622c:	fe010113          	addi	sp,sp,-32
    80006230:	00113c23          	sd	ra,24(sp)
    80006234:	00813823          	sd	s0,16(sp)
    80006238:	00913423          	sd	s1,8(sp)
    8000623c:	01213023          	sd	s2,0(sp)
    80006240:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006244:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006248:	00600493          	li	s1,6
    while (--i > 0) {
    8000624c:	fff4849b          	addiw	s1,s1,-1
    80006250:	04905463          	blez	s1,80006298 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006254:	00003517          	auipc	a0,0x3
    80006258:	38450513          	addi	a0,a0,900 # 800095d8 <CONSOLE_STATUS+0x5c8>
    8000625c:	00000097          	auipc	ra,0x0
    80006260:	908080e7          	jalr	-1784(ra) # 80005b64 <_Z11printStringPKc>
        printInt(sleep_time);
    80006264:	00000613          	li	a2,0
    80006268:	00a00593          	li	a1,10
    8000626c:	0009051b          	sext.w	a0,s2
    80006270:	00000097          	auipc	ra,0x0
    80006274:	aa4080e7          	jalr	-1372(ra) # 80005d14 <_Z8printIntiii>
        printString(" !\n");
    80006278:	00003517          	auipc	a0,0x3
    8000627c:	36850513          	addi	a0,a0,872 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80006280:	00000097          	auipc	ra,0x0
    80006284:	8e4080e7          	jalr	-1820(ra) # 80005b64 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006288:	00090513          	mv	a0,s2
    8000628c:	ffffb097          	auipc	ra,0xffffb
    80006290:	384080e7          	jalr	900(ra) # 80001610 <_Z10time_sleepm>
    while (--i > 0) {
    80006294:	fb9ff06f          	j	8000624c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006298:	00a00793          	li	a5,10
    8000629c:	02f95933          	divu	s2,s2,a5
    800062a0:	fff90913          	addi	s2,s2,-1
    800062a4:	00006797          	auipc	a5,0x6
    800062a8:	bc478793          	addi	a5,a5,-1084 # 8000be68 <_ZL8finished>
    800062ac:	01278933          	add	s2,a5,s2
    800062b0:	00100793          	li	a5,1
    800062b4:	00f90023          	sb	a5,0(s2)
}
    800062b8:	01813083          	ld	ra,24(sp)
    800062bc:	01013403          	ld	s0,16(sp)
    800062c0:	00813483          	ld	s1,8(sp)
    800062c4:	00013903          	ld	s2,0(sp)
    800062c8:	02010113          	addi	sp,sp,32
    800062cc:	00008067          	ret

00000000800062d0 <_Z12testSleepingv>:

void testSleeping() {
    800062d0:	fc010113          	addi	sp,sp,-64
    800062d4:	02113c23          	sd	ra,56(sp)
    800062d8:	02813823          	sd	s0,48(sp)
    800062dc:	02913423          	sd	s1,40(sp)
    800062e0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800062e4:	00a00793          	li	a5,10
    800062e8:	fcf43823          	sd	a5,-48(s0)
    800062ec:	01400793          	li	a5,20
    800062f0:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800062f4:	00000493          	li	s1,0
    800062f8:	02c0006f          	j	80006324 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800062fc:	00349793          	slli	a5,s1,0x3
    80006300:	fd040613          	addi	a2,s0,-48
    80006304:	00f60633          	add	a2,a2,a5
    80006308:	00000597          	auipc	a1,0x0
    8000630c:	f2458593          	addi	a1,a1,-220 # 8000622c <_ZL9sleepyRunPv>
    80006310:	fc040513          	addi	a0,s0,-64
    80006314:	00f50533          	add	a0,a0,a5
    80006318:	ffffb097          	auipc	ra,0xffffb
    8000631c:	f6c080e7          	jalr	-148(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006320:	0014849b          	addiw	s1,s1,1
    80006324:	00100793          	li	a5,1
    80006328:	fc97dae3          	bge	a5,s1,800062fc <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    8000632c:	00006797          	auipc	a5,0x6
    80006330:	b3c7c783          	lbu	a5,-1220(a5) # 8000be68 <_ZL8finished>
    80006334:	fe078ce3          	beqz	a5,8000632c <_Z12testSleepingv+0x5c>
    80006338:	00006797          	auipc	a5,0x6
    8000633c:	b317c783          	lbu	a5,-1231(a5) # 8000be69 <_ZL8finished+0x1>
    80006340:	fe0786e3          	beqz	a5,8000632c <_Z12testSleepingv+0x5c>
}
    80006344:	03813083          	ld	ra,56(sp)
    80006348:	03013403          	ld	s0,48(sp)
    8000634c:	02813483          	ld	s1,40(sp)
    80006350:	04010113          	addi	sp,sp,64
    80006354:	00008067          	ret

0000000080006358 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006358:	fe010113          	addi	sp,sp,-32
    8000635c:	00113c23          	sd	ra,24(sp)
    80006360:	00813823          	sd	s0,16(sp)
    80006364:	00913423          	sd	s1,8(sp)
    80006368:	01213023          	sd	s2,0(sp)
    8000636c:	02010413          	addi	s0,sp,32
    80006370:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006374:	00100793          	li	a5,1
    80006378:	02a7f863          	bgeu	a5,a0,800063a8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000637c:	00a00793          	li	a5,10
    80006380:	02f577b3          	remu	a5,a0,a5
    80006384:	02078e63          	beqz	a5,800063c0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006388:	fff48513          	addi	a0,s1,-1
    8000638c:	00000097          	auipc	ra,0x0
    80006390:	fcc080e7          	jalr	-52(ra) # 80006358 <_ZL9fibonaccim>
    80006394:	00050913          	mv	s2,a0
    80006398:	ffe48513          	addi	a0,s1,-2
    8000639c:	00000097          	auipc	ra,0x0
    800063a0:	fbc080e7          	jalr	-68(ra) # 80006358 <_ZL9fibonaccim>
    800063a4:	00a90533          	add	a0,s2,a0
}
    800063a8:	01813083          	ld	ra,24(sp)
    800063ac:	01013403          	ld	s0,16(sp)
    800063b0:	00813483          	ld	s1,8(sp)
    800063b4:	00013903          	ld	s2,0(sp)
    800063b8:	02010113          	addi	sp,sp,32
    800063bc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800063c0:	ffffb097          	auipc	ra,0xffffb
    800063c4:	fc8080e7          	jalr	-56(ra) # 80001388 <_Z15thread_dispatchv>
    800063c8:	fc1ff06f          	j	80006388 <_ZL9fibonaccim+0x30>

00000000800063cc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800063cc:	fe010113          	addi	sp,sp,-32
    800063d0:	00113c23          	sd	ra,24(sp)
    800063d4:	00813823          	sd	s0,16(sp)
    800063d8:	00913423          	sd	s1,8(sp)
    800063dc:	01213023          	sd	s2,0(sp)
    800063e0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800063e4:	00a00493          	li	s1,10
    800063e8:	0400006f          	j	80006428 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800063ec:	00003517          	auipc	a0,0x3
    800063f0:	13c50513          	addi	a0,a0,316 # 80009528 <CONSOLE_STATUS+0x518>
    800063f4:	fffff097          	auipc	ra,0xfffff
    800063f8:	770080e7          	jalr	1904(ra) # 80005b64 <_Z11printStringPKc>
    800063fc:	00000613          	li	a2,0
    80006400:	00a00593          	li	a1,10
    80006404:	00048513          	mv	a0,s1
    80006408:	00000097          	auipc	ra,0x0
    8000640c:	90c080e7          	jalr	-1780(ra) # 80005d14 <_Z8printIntiii>
    80006410:	00003517          	auipc	a0,0x3
    80006414:	e9050513          	addi	a0,a0,-368 # 800092a0 <CONSOLE_STATUS+0x290>
    80006418:	fffff097          	auipc	ra,0xfffff
    8000641c:	74c080e7          	jalr	1868(ra) # 80005b64 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006420:	0014849b          	addiw	s1,s1,1
    80006424:	0ff4f493          	andi	s1,s1,255
    80006428:	00c00793          	li	a5,12
    8000642c:	fc97f0e3          	bgeu	a5,s1,800063ec <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006430:	00003517          	auipc	a0,0x3
    80006434:	10050513          	addi	a0,a0,256 # 80009530 <CONSOLE_STATUS+0x520>
    80006438:	fffff097          	auipc	ra,0xfffff
    8000643c:	72c080e7          	jalr	1836(ra) # 80005b64 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006440:	00500313          	li	t1,5
    thread_dispatch();
    80006444:	ffffb097          	auipc	ra,0xffffb
    80006448:	f44080e7          	jalr	-188(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000644c:	01000513          	li	a0,16
    80006450:	00000097          	auipc	ra,0x0
    80006454:	f08080e7          	jalr	-248(ra) # 80006358 <_ZL9fibonaccim>
    80006458:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000645c:	00003517          	auipc	a0,0x3
    80006460:	0e450513          	addi	a0,a0,228 # 80009540 <CONSOLE_STATUS+0x530>
    80006464:	fffff097          	auipc	ra,0xfffff
    80006468:	700080e7          	jalr	1792(ra) # 80005b64 <_Z11printStringPKc>
    8000646c:	00000613          	li	a2,0
    80006470:	00a00593          	li	a1,10
    80006474:	0009051b          	sext.w	a0,s2
    80006478:	00000097          	auipc	ra,0x0
    8000647c:	89c080e7          	jalr	-1892(ra) # 80005d14 <_Z8printIntiii>
    80006480:	00003517          	auipc	a0,0x3
    80006484:	e2050513          	addi	a0,a0,-480 # 800092a0 <CONSOLE_STATUS+0x290>
    80006488:	fffff097          	auipc	ra,0xfffff
    8000648c:	6dc080e7          	jalr	1756(ra) # 80005b64 <_Z11printStringPKc>
    80006490:	0400006f          	j	800064d0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006494:	00003517          	auipc	a0,0x3
    80006498:	09450513          	addi	a0,a0,148 # 80009528 <CONSOLE_STATUS+0x518>
    8000649c:	fffff097          	auipc	ra,0xfffff
    800064a0:	6c8080e7          	jalr	1736(ra) # 80005b64 <_Z11printStringPKc>
    800064a4:	00000613          	li	a2,0
    800064a8:	00a00593          	li	a1,10
    800064ac:	00048513          	mv	a0,s1
    800064b0:	00000097          	auipc	ra,0x0
    800064b4:	864080e7          	jalr	-1948(ra) # 80005d14 <_Z8printIntiii>
    800064b8:	00003517          	auipc	a0,0x3
    800064bc:	de850513          	addi	a0,a0,-536 # 800092a0 <CONSOLE_STATUS+0x290>
    800064c0:	fffff097          	auipc	ra,0xfffff
    800064c4:	6a4080e7          	jalr	1700(ra) # 80005b64 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800064c8:	0014849b          	addiw	s1,s1,1
    800064cc:	0ff4f493          	andi	s1,s1,255
    800064d0:	00f00793          	li	a5,15
    800064d4:	fc97f0e3          	bgeu	a5,s1,80006494 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800064d8:	00003517          	auipc	a0,0x3
    800064dc:	07850513          	addi	a0,a0,120 # 80009550 <CONSOLE_STATUS+0x540>
    800064e0:	fffff097          	auipc	ra,0xfffff
    800064e4:	684080e7          	jalr	1668(ra) # 80005b64 <_Z11printStringPKc>
    finishedD = true;
    800064e8:	00100793          	li	a5,1
    800064ec:	00006717          	auipc	a4,0x6
    800064f0:	96f70f23          	sb	a5,-1666(a4) # 8000be6a <_ZL9finishedD>
    thread_dispatch();
    800064f4:	ffffb097          	auipc	ra,0xffffb
    800064f8:	e94080e7          	jalr	-364(ra) # 80001388 <_Z15thread_dispatchv>
}
    800064fc:	01813083          	ld	ra,24(sp)
    80006500:	01013403          	ld	s0,16(sp)
    80006504:	00813483          	ld	s1,8(sp)
    80006508:	00013903          	ld	s2,0(sp)
    8000650c:	02010113          	addi	sp,sp,32
    80006510:	00008067          	ret

0000000080006514 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006514:	fe010113          	addi	sp,sp,-32
    80006518:	00113c23          	sd	ra,24(sp)
    8000651c:	00813823          	sd	s0,16(sp)
    80006520:	00913423          	sd	s1,8(sp)
    80006524:	01213023          	sd	s2,0(sp)
    80006528:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000652c:	00000493          	li	s1,0
    80006530:	0400006f          	j	80006570 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006534:	00003517          	auipc	a0,0x3
    80006538:	fc450513          	addi	a0,a0,-60 # 800094f8 <CONSOLE_STATUS+0x4e8>
    8000653c:	fffff097          	auipc	ra,0xfffff
    80006540:	628080e7          	jalr	1576(ra) # 80005b64 <_Z11printStringPKc>
    80006544:	00000613          	li	a2,0
    80006548:	00a00593          	li	a1,10
    8000654c:	00048513          	mv	a0,s1
    80006550:	fffff097          	auipc	ra,0xfffff
    80006554:	7c4080e7          	jalr	1988(ra) # 80005d14 <_Z8printIntiii>
    80006558:	00003517          	auipc	a0,0x3
    8000655c:	d4850513          	addi	a0,a0,-696 # 800092a0 <CONSOLE_STATUS+0x290>
    80006560:	fffff097          	auipc	ra,0xfffff
    80006564:	604080e7          	jalr	1540(ra) # 80005b64 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006568:	0014849b          	addiw	s1,s1,1
    8000656c:	0ff4f493          	andi	s1,s1,255
    80006570:	00200793          	li	a5,2
    80006574:	fc97f0e3          	bgeu	a5,s1,80006534 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006578:	00003517          	auipc	a0,0x3
    8000657c:	f8850513          	addi	a0,a0,-120 # 80009500 <CONSOLE_STATUS+0x4f0>
    80006580:	fffff097          	auipc	ra,0xfffff
    80006584:	5e4080e7          	jalr	1508(ra) # 80005b64 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006588:	00700313          	li	t1,7
    thread_dispatch();
    8000658c:	ffffb097          	auipc	ra,0xffffb
    80006590:	dfc080e7          	jalr	-516(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006594:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006598:	00003517          	auipc	a0,0x3
    8000659c:	f7850513          	addi	a0,a0,-136 # 80009510 <CONSOLE_STATUS+0x500>
    800065a0:	fffff097          	auipc	ra,0xfffff
    800065a4:	5c4080e7          	jalr	1476(ra) # 80005b64 <_Z11printStringPKc>
    800065a8:	00000613          	li	a2,0
    800065ac:	00a00593          	li	a1,10
    800065b0:	0009051b          	sext.w	a0,s2
    800065b4:	fffff097          	auipc	ra,0xfffff
    800065b8:	760080e7          	jalr	1888(ra) # 80005d14 <_Z8printIntiii>
    800065bc:	00003517          	auipc	a0,0x3
    800065c0:	ce450513          	addi	a0,a0,-796 # 800092a0 <CONSOLE_STATUS+0x290>
    800065c4:	fffff097          	auipc	ra,0xfffff
    800065c8:	5a0080e7          	jalr	1440(ra) # 80005b64 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800065cc:	00c00513          	li	a0,12
    800065d0:	00000097          	auipc	ra,0x0
    800065d4:	d88080e7          	jalr	-632(ra) # 80006358 <_ZL9fibonaccim>
    800065d8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800065dc:	00003517          	auipc	a0,0x3
    800065e0:	f3c50513          	addi	a0,a0,-196 # 80009518 <CONSOLE_STATUS+0x508>
    800065e4:	fffff097          	auipc	ra,0xfffff
    800065e8:	580080e7          	jalr	1408(ra) # 80005b64 <_Z11printStringPKc>
    800065ec:	00000613          	li	a2,0
    800065f0:	00a00593          	li	a1,10
    800065f4:	0009051b          	sext.w	a0,s2
    800065f8:	fffff097          	auipc	ra,0xfffff
    800065fc:	71c080e7          	jalr	1820(ra) # 80005d14 <_Z8printIntiii>
    80006600:	00003517          	auipc	a0,0x3
    80006604:	ca050513          	addi	a0,a0,-864 # 800092a0 <CONSOLE_STATUS+0x290>
    80006608:	fffff097          	auipc	ra,0xfffff
    8000660c:	55c080e7          	jalr	1372(ra) # 80005b64 <_Z11printStringPKc>
    80006610:	0400006f          	j	80006650 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006614:	00003517          	auipc	a0,0x3
    80006618:	ee450513          	addi	a0,a0,-284 # 800094f8 <CONSOLE_STATUS+0x4e8>
    8000661c:	fffff097          	auipc	ra,0xfffff
    80006620:	548080e7          	jalr	1352(ra) # 80005b64 <_Z11printStringPKc>
    80006624:	00000613          	li	a2,0
    80006628:	00a00593          	li	a1,10
    8000662c:	00048513          	mv	a0,s1
    80006630:	fffff097          	auipc	ra,0xfffff
    80006634:	6e4080e7          	jalr	1764(ra) # 80005d14 <_Z8printIntiii>
    80006638:	00003517          	auipc	a0,0x3
    8000663c:	c6850513          	addi	a0,a0,-920 # 800092a0 <CONSOLE_STATUS+0x290>
    80006640:	fffff097          	auipc	ra,0xfffff
    80006644:	524080e7          	jalr	1316(ra) # 80005b64 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006648:	0014849b          	addiw	s1,s1,1
    8000664c:	0ff4f493          	andi	s1,s1,255
    80006650:	00500793          	li	a5,5
    80006654:	fc97f0e3          	bgeu	a5,s1,80006614 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006658:	00003517          	auipc	a0,0x3
    8000665c:	e7850513          	addi	a0,a0,-392 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80006660:	fffff097          	auipc	ra,0xfffff
    80006664:	504080e7          	jalr	1284(ra) # 80005b64 <_Z11printStringPKc>
    finishedC = true;
    80006668:	00100793          	li	a5,1
    8000666c:	00005717          	auipc	a4,0x5
    80006670:	7ef70fa3          	sb	a5,2047(a4) # 8000be6b <_ZL9finishedC>
    thread_dispatch();
    80006674:	ffffb097          	auipc	ra,0xffffb
    80006678:	d14080e7          	jalr	-748(ra) # 80001388 <_Z15thread_dispatchv>
}
    8000667c:	01813083          	ld	ra,24(sp)
    80006680:	01013403          	ld	s0,16(sp)
    80006684:	00813483          	ld	s1,8(sp)
    80006688:	00013903          	ld	s2,0(sp)
    8000668c:	02010113          	addi	sp,sp,32
    80006690:	00008067          	ret

0000000080006694 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006694:	fe010113          	addi	sp,sp,-32
    80006698:	00113c23          	sd	ra,24(sp)
    8000669c:	00813823          	sd	s0,16(sp)
    800066a0:	00913423          	sd	s1,8(sp)
    800066a4:	01213023          	sd	s2,0(sp)
    800066a8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800066ac:	00000913          	li	s2,0
    800066b0:	0400006f          	j	800066f0 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800066b4:	ffffb097          	auipc	ra,0xffffb
    800066b8:	cd4080e7          	jalr	-812(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800066bc:	00148493          	addi	s1,s1,1
    800066c0:	000027b7          	lui	a5,0x2
    800066c4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800066c8:	0097ee63          	bltu	a5,s1,800066e4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800066cc:	00000713          	li	a4,0
    800066d0:	000077b7          	lui	a5,0x7
    800066d4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800066d8:	fce7eee3          	bltu	a5,a4,800066b4 <_ZL11workerBodyBPv+0x20>
    800066dc:	00170713          	addi	a4,a4,1
    800066e0:	ff1ff06f          	j	800066d0 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800066e4:	00a00793          	li	a5,10
    800066e8:	04f90663          	beq	s2,a5,80006734 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800066ec:	00190913          	addi	s2,s2,1
    800066f0:	00f00793          	li	a5,15
    800066f4:	0527e463          	bltu	a5,s2,8000673c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800066f8:	00003517          	auipc	a0,0x3
    800066fc:	de850513          	addi	a0,a0,-536 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006700:	fffff097          	auipc	ra,0xfffff
    80006704:	464080e7          	jalr	1124(ra) # 80005b64 <_Z11printStringPKc>
    80006708:	00000613          	li	a2,0
    8000670c:	00a00593          	li	a1,10
    80006710:	0009051b          	sext.w	a0,s2
    80006714:	fffff097          	auipc	ra,0xfffff
    80006718:	600080e7          	jalr	1536(ra) # 80005d14 <_Z8printIntiii>
    8000671c:	00003517          	auipc	a0,0x3
    80006720:	b8450513          	addi	a0,a0,-1148 # 800092a0 <CONSOLE_STATUS+0x290>
    80006724:	fffff097          	auipc	ra,0xfffff
    80006728:	440080e7          	jalr	1088(ra) # 80005b64 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000672c:	00000493          	li	s1,0
    80006730:	f91ff06f          	j	800066c0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006734:	14102ff3          	csrr	t6,sepc
    80006738:	fb5ff06f          	j	800066ec <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000673c:	00003517          	auipc	a0,0x3
    80006740:	dac50513          	addi	a0,a0,-596 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80006744:	fffff097          	auipc	ra,0xfffff
    80006748:	420080e7          	jalr	1056(ra) # 80005b64 <_Z11printStringPKc>
    finishedB = true;
    8000674c:	00100793          	li	a5,1
    80006750:	00005717          	auipc	a4,0x5
    80006754:	70f70e23          	sb	a5,1820(a4) # 8000be6c <_ZL9finishedB>
    thread_dispatch();
    80006758:	ffffb097          	auipc	ra,0xffffb
    8000675c:	c30080e7          	jalr	-976(ra) # 80001388 <_Z15thread_dispatchv>
}
    80006760:	01813083          	ld	ra,24(sp)
    80006764:	01013403          	ld	s0,16(sp)
    80006768:	00813483          	ld	s1,8(sp)
    8000676c:	00013903          	ld	s2,0(sp)
    80006770:	02010113          	addi	sp,sp,32
    80006774:	00008067          	ret

0000000080006778 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006778:	fe010113          	addi	sp,sp,-32
    8000677c:	00113c23          	sd	ra,24(sp)
    80006780:	00813823          	sd	s0,16(sp)
    80006784:	00913423          	sd	s1,8(sp)
    80006788:	01213023          	sd	s2,0(sp)
    8000678c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006790:	00000913          	li	s2,0
    80006794:	0380006f          	j	800067cc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006798:	ffffb097          	auipc	ra,0xffffb
    8000679c:	bf0080e7          	jalr	-1040(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800067a0:	00148493          	addi	s1,s1,1
    800067a4:	000027b7          	lui	a5,0x2
    800067a8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800067ac:	0097ee63          	bltu	a5,s1,800067c8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800067b0:	00000713          	li	a4,0
    800067b4:	000077b7          	lui	a5,0x7
    800067b8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800067bc:	fce7eee3          	bltu	a5,a4,80006798 <_ZL11workerBodyAPv+0x20>
    800067c0:	00170713          	addi	a4,a4,1
    800067c4:	ff1ff06f          	j	800067b4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800067c8:	00190913          	addi	s2,s2,1
    800067cc:	00900793          	li	a5,9
    800067d0:	0527e063          	bltu	a5,s2,80006810 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800067d4:	00003517          	auipc	a0,0x3
    800067d8:	cf450513          	addi	a0,a0,-780 # 800094c8 <CONSOLE_STATUS+0x4b8>
    800067dc:	fffff097          	auipc	ra,0xfffff
    800067e0:	388080e7          	jalr	904(ra) # 80005b64 <_Z11printStringPKc>
    800067e4:	00000613          	li	a2,0
    800067e8:	00a00593          	li	a1,10
    800067ec:	0009051b          	sext.w	a0,s2
    800067f0:	fffff097          	auipc	ra,0xfffff
    800067f4:	524080e7          	jalr	1316(ra) # 80005d14 <_Z8printIntiii>
    800067f8:	00003517          	auipc	a0,0x3
    800067fc:	aa850513          	addi	a0,a0,-1368 # 800092a0 <CONSOLE_STATUS+0x290>
    80006800:	fffff097          	auipc	ra,0xfffff
    80006804:	364080e7          	jalr	868(ra) # 80005b64 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006808:	00000493          	li	s1,0
    8000680c:	f99ff06f          	j	800067a4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006810:	00003517          	auipc	a0,0x3
    80006814:	cc050513          	addi	a0,a0,-832 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80006818:	fffff097          	auipc	ra,0xfffff
    8000681c:	34c080e7          	jalr	844(ra) # 80005b64 <_Z11printStringPKc>
    finishedA = true;
    80006820:	00100793          	li	a5,1
    80006824:	00005717          	auipc	a4,0x5
    80006828:	64f704a3          	sb	a5,1609(a4) # 8000be6d <_ZL9finishedA>
}
    8000682c:	01813083          	ld	ra,24(sp)
    80006830:	01013403          	ld	s0,16(sp)
    80006834:	00813483          	ld	s1,8(sp)
    80006838:	00013903          	ld	s2,0(sp)
    8000683c:	02010113          	addi	sp,sp,32
    80006840:	00008067          	ret

0000000080006844 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006844:	fd010113          	addi	sp,sp,-48
    80006848:	02113423          	sd	ra,40(sp)
    8000684c:	02813023          	sd	s0,32(sp)
    80006850:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006854:	00000613          	li	a2,0
    80006858:	00000597          	auipc	a1,0x0
    8000685c:	f2058593          	addi	a1,a1,-224 # 80006778 <_ZL11workerBodyAPv>
    80006860:	fd040513          	addi	a0,s0,-48
    80006864:	ffffb097          	auipc	ra,0xffffb
    80006868:	a20080e7          	jalr	-1504(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    8000686c:	00003517          	auipc	a0,0x3
    80006870:	cf450513          	addi	a0,a0,-780 # 80009560 <CONSOLE_STATUS+0x550>
    80006874:	fffff097          	auipc	ra,0xfffff
    80006878:	2f0080e7          	jalr	752(ra) # 80005b64 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000687c:	00000613          	li	a2,0
    80006880:	00000597          	auipc	a1,0x0
    80006884:	e1458593          	addi	a1,a1,-492 # 80006694 <_ZL11workerBodyBPv>
    80006888:	fd840513          	addi	a0,s0,-40
    8000688c:	ffffb097          	auipc	ra,0xffffb
    80006890:	9f8080e7          	jalr	-1544(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80006894:	00003517          	auipc	a0,0x3
    80006898:	ce450513          	addi	a0,a0,-796 # 80009578 <CONSOLE_STATUS+0x568>
    8000689c:	fffff097          	auipc	ra,0xfffff
    800068a0:	2c8080e7          	jalr	712(ra) # 80005b64 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800068a4:	00000613          	li	a2,0
    800068a8:	00000597          	auipc	a1,0x0
    800068ac:	c6c58593          	addi	a1,a1,-916 # 80006514 <_ZL11workerBodyCPv>
    800068b0:	fe040513          	addi	a0,s0,-32
    800068b4:	ffffb097          	auipc	ra,0xffffb
    800068b8:	9d0080e7          	jalr	-1584(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800068bc:	00003517          	auipc	a0,0x3
    800068c0:	cd450513          	addi	a0,a0,-812 # 80009590 <CONSOLE_STATUS+0x580>
    800068c4:	fffff097          	auipc	ra,0xfffff
    800068c8:	2a0080e7          	jalr	672(ra) # 80005b64 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800068cc:	00000613          	li	a2,0
    800068d0:	00000597          	auipc	a1,0x0
    800068d4:	afc58593          	addi	a1,a1,-1284 # 800063cc <_ZL11workerBodyDPv>
    800068d8:	fe840513          	addi	a0,s0,-24
    800068dc:	ffffb097          	auipc	ra,0xffffb
    800068e0:	9a8080e7          	jalr	-1624(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800068e4:	00003517          	auipc	a0,0x3
    800068e8:	cc450513          	addi	a0,a0,-828 # 800095a8 <CONSOLE_STATUS+0x598>
    800068ec:	fffff097          	auipc	ra,0xfffff
    800068f0:	278080e7          	jalr	632(ra) # 80005b64 <_Z11printStringPKc>
    800068f4:	00c0006f          	j	80006900 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800068f8:	ffffb097          	auipc	ra,0xffffb
    800068fc:	a90080e7          	jalr	-1392(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006900:	00005797          	auipc	a5,0x5
    80006904:	56d7c783          	lbu	a5,1389(a5) # 8000be6d <_ZL9finishedA>
    80006908:	fe0788e3          	beqz	a5,800068f8 <_Z16System_Mode_testv+0xb4>
    8000690c:	00005797          	auipc	a5,0x5
    80006910:	5607c783          	lbu	a5,1376(a5) # 8000be6c <_ZL9finishedB>
    80006914:	fe0782e3          	beqz	a5,800068f8 <_Z16System_Mode_testv+0xb4>
    80006918:	00005797          	auipc	a5,0x5
    8000691c:	5537c783          	lbu	a5,1363(a5) # 8000be6b <_ZL9finishedC>
    80006920:	fc078ce3          	beqz	a5,800068f8 <_Z16System_Mode_testv+0xb4>
    80006924:	00005797          	auipc	a5,0x5
    80006928:	5467c783          	lbu	a5,1350(a5) # 8000be6a <_ZL9finishedD>
    8000692c:	fc0786e3          	beqz	a5,800068f8 <_Z16System_Mode_testv+0xb4>
    }

}
    80006930:	02813083          	ld	ra,40(sp)
    80006934:	02013403          	ld	s0,32(sp)
    80006938:	03010113          	addi	sp,sp,48
    8000693c:	00008067          	ret

0000000080006940 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006940:	fe010113          	addi	sp,sp,-32
    80006944:	00113c23          	sd	ra,24(sp)
    80006948:	00813823          	sd	s0,16(sp)
    8000694c:	00913423          	sd	s1,8(sp)
    80006950:	01213023          	sd	s2,0(sp)
    80006954:	02010413          	addi	s0,sp,32
    80006958:	00050493          	mv	s1,a0
    8000695c:	00058913          	mv	s2,a1
    80006960:	0015879b          	addiw	a5,a1,1
    80006964:	0007851b          	sext.w	a0,a5
    80006968:	00f4a023          	sw	a5,0(s1)
    8000696c:	0004a823          	sw	zero,16(s1)
    80006970:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006974:	00251513          	slli	a0,a0,0x2
    80006978:	ffffb097          	auipc	ra,0xffffb
    8000697c:	880080e7          	jalr	-1920(ra) # 800011f8 <_Z9mem_allocm>
    80006980:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006984:	00000593          	li	a1,0
    80006988:	02048513          	addi	a0,s1,32
    8000698c:	ffffb097          	auipc	ra,0xffffb
    80006990:	af8080e7          	jalr	-1288(ra) # 80001484 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80006994:	00090593          	mv	a1,s2
    80006998:	01848513          	addi	a0,s1,24
    8000699c:	ffffb097          	auipc	ra,0xffffb
    800069a0:	ae8080e7          	jalr	-1304(ra) # 80001484 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800069a4:	00100593          	li	a1,1
    800069a8:	02848513          	addi	a0,s1,40
    800069ac:	ffffb097          	auipc	ra,0xffffb
    800069b0:	ad8080e7          	jalr	-1320(ra) # 80001484 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    800069b4:	00100593          	li	a1,1
    800069b8:	03048513          	addi	a0,s1,48
    800069bc:	ffffb097          	auipc	ra,0xffffb
    800069c0:	ac8080e7          	jalr	-1336(ra) # 80001484 <_Z8sem_openPP4_semj>
}
    800069c4:	01813083          	ld	ra,24(sp)
    800069c8:	01013403          	ld	s0,16(sp)
    800069cc:	00813483          	ld	s1,8(sp)
    800069d0:	00013903          	ld	s2,0(sp)
    800069d4:	02010113          	addi	sp,sp,32
    800069d8:	00008067          	ret

00000000800069dc <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800069dc:	fe010113          	addi	sp,sp,-32
    800069e0:	00113c23          	sd	ra,24(sp)
    800069e4:	00813823          	sd	s0,16(sp)
    800069e8:	00913423          	sd	s1,8(sp)
    800069ec:	01213023          	sd	s2,0(sp)
    800069f0:	02010413          	addi	s0,sp,32
    800069f4:	00050493          	mv	s1,a0
    800069f8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800069fc:	01853503          	ld	a0,24(a0)
    80006a00:	ffffb097          	auipc	ra,0xffffb
    80006a04:	b08080e7          	jalr	-1272(ra) # 80001508 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006a08:	0304b503          	ld	a0,48(s1)
    80006a0c:	ffffb097          	auipc	ra,0xffffb
    80006a10:	afc080e7          	jalr	-1284(ra) # 80001508 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006a14:	0084b783          	ld	a5,8(s1)
    80006a18:	0144a703          	lw	a4,20(s1)
    80006a1c:	00271713          	slli	a4,a4,0x2
    80006a20:	00e787b3          	add	a5,a5,a4
    80006a24:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006a28:	0144a783          	lw	a5,20(s1)
    80006a2c:	0017879b          	addiw	a5,a5,1
    80006a30:	0004a703          	lw	a4,0(s1)
    80006a34:	02e7e7bb          	remw	a5,a5,a4
    80006a38:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006a3c:	0304b503          	ld	a0,48(s1)
    80006a40:	ffffb097          	auipc	ra,0xffffb
    80006a44:	b08080e7          	jalr	-1272(ra) # 80001548 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006a48:	0204b503          	ld	a0,32(s1)
    80006a4c:	ffffb097          	auipc	ra,0xffffb
    80006a50:	afc080e7          	jalr	-1284(ra) # 80001548 <_Z10sem_signalP4_sem>

}
    80006a54:	01813083          	ld	ra,24(sp)
    80006a58:	01013403          	ld	s0,16(sp)
    80006a5c:	00813483          	ld	s1,8(sp)
    80006a60:	00013903          	ld	s2,0(sp)
    80006a64:	02010113          	addi	sp,sp,32
    80006a68:	00008067          	ret

0000000080006a6c <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006a6c:	fe010113          	addi	sp,sp,-32
    80006a70:	00113c23          	sd	ra,24(sp)
    80006a74:	00813823          	sd	s0,16(sp)
    80006a78:	00913423          	sd	s1,8(sp)
    80006a7c:	01213023          	sd	s2,0(sp)
    80006a80:	02010413          	addi	s0,sp,32
    80006a84:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006a88:	02053503          	ld	a0,32(a0)
    80006a8c:	ffffb097          	auipc	ra,0xffffb
    80006a90:	a7c080e7          	jalr	-1412(ra) # 80001508 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006a94:	0284b503          	ld	a0,40(s1)
    80006a98:	ffffb097          	auipc	ra,0xffffb
    80006a9c:	a70080e7          	jalr	-1424(ra) # 80001508 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006aa0:	0084b703          	ld	a4,8(s1)
    80006aa4:	0104a783          	lw	a5,16(s1)
    80006aa8:	00279693          	slli	a3,a5,0x2
    80006aac:	00d70733          	add	a4,a4,a3
    80006ab0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006ab4:	0017879b          	addiw	a5,a5,1
    80006ab8:	0004a703          	lw	a4,0(s1)
    80006abc:	02e7e7bb          	remw	a5,a5,a4
    80006ac0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006ac4:	0284b503          	ld	a0,40(s1)
    80006ac8:	ffffb097          	auipc	ra,0xffffb
    80006acc:	a80080e7          	jalr	-1408(ra) # 80001548 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006ad0:	0184b503          	ld	a0,24(s1)
    80006ad4:	ffffb097          	auipc	ra,0xffffb
    80006ad8:	a74080e7          	jalr	-1420(ra) # 80001548 <_Z10sem_signalP4_sem>

    return ret;
}
    80006adc:	00090513          	mv	a0,s2
    80006ae0:	01813083          	ld	ra,24(sp)
    80006ae4:	01013403          	ld	s0,16(sp)
    80006ae8:	00813483          	ld	s1,8(sp)
    80006aec:	00013903          	ld	s2,0(sp)
    80006af0:	02010113          	addi	sp,sp,32
    80006af4:	00008067          	ret

0000000080006af8 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006af8:	fe010113          	addi	sp,sp,-32
    80006afc:	00113c23          	sd	ra,24(sp)
    80006b00:	00813823          	sd	s0,16(sp)
    80006b04:	00913423          	sd	s1,8(sp)
    80006b08:	01213023          	sd	s2,0(sp)
    80006b0c:	02010413          	addi	s0,sp,32
    80006b10:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006b14:	02853503          	ld	a0,40(a0)
    80006b18:	ffffb097          	auipc	ra,0xffffb
    80006b1c:	9f0080e7          	jalr	-1552(ra) # 80001508 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006b20:	0304b503          	ld	a0,48(s1)
    80006b24:	ffffb097          	auipc	ra,0xffffb
    80006b28:	9e4080e7          	jalr	-1564(ra) # 80001508 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006b2c:	0144a783          	lw	a5,20(s1)
    80006b30:	0104a903          	lw	s2,16(s1)
    80006b34:	0327ce63          	blt	a5,s2,80006b70 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006b38:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006b3c:	0304b503          	ld	a0,48(s1)
    80006b40:	ffffb097          	auipc	ra,0xffffb
    80006b44:	a08080e7          	jalr	-1528(ra) # 80001548 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006b48:	0284b503          	ld	a0,40(s1)
    80006b4c:	ffffb097          	auipc	ra,0xffffb
    80006b50:	9fc080e7          	jalr	-1540(ra) # 80001548 <_Z10sem_signalP4_sem>

    return ret;
}
    80006b54:	00090513          	mv	a0,s2
    80006b58:	01813083          	ld	ra,24(sp)
    80006b5c:	01013403          	ld	s0,16(sp)
    80006b60:	00813483          	ld	s1,8(sp)
    80006b64:	00013903          	ld	s2,0(sp)
    80006b68:	02010113          	addi	sp,sp,32
    80006b6c:	00008067          	ret
        ret = cap - head + tail;
    80006b70:	0004a703          	lw	a4,0(s1)
    80006b74:	4127093b          	subw	s2,a4,s2
    80006b78:	00f9093b          	addw	s2,s2,a5
    80006b7c:	fc1ff06f          	j	80006b3c <_ZN6Buffer6getCntEv+0x44>

0000000080006b80 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006b80:	fe010113          	addi	sp,sp,-32
    80006b84:	00113c23          	sd	ra,24(sp)
    80006b88:	00813823          	sd	s0,16(sp)
    80006b8c:	00913423          	sd	s1,8(sp)
    80006b90:	02010413          	addi	s0,sp,32
    80006b94:	00050493          	mv	s1,a0
    putc('\n');
    80006b98:	00a00513          	li	a0,10
    80006b9c:	ffffb097          	auipc	ra,0xffffb
    80006ba0:	af4080e7          	jalr	-1292(ra) # 80001690 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006ba4:	00003517          	auipc	a0,0x3
    80006ba8:	a1c50513          	addi	a0,a0,-1508 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80006bac:	fffff097          	auipc	ra,0xfffff
    80006bb0:	fb8080e7          	jalr	-72(ra) # 80005b64 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006bb4:	00048513          	mv	a0,s1
    80006bb8:	00000097          	auipc	ra,0x0
    80006bbc:	f40080e7          	jalr	-192(ra) # 80006af8 <_ZN6Buffer6getCntEv>
    80006bc0:	02a05c63          	blez	a0,80006bf8 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006bc4:	0084b783          	ld	a5,8(s1)
    80006bc8:	0104a703          	lw	a4,16(s1)
    80006bcc:	00271713          	slli	a4,a4,0x2
    80006bd0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006bd4:	0007c503          	lbu	a0,0(a5)
    80006bd8:	ffffb097          	auipc	ra,0xffffb
    80006bdc:	ab8080e7          	jalr	-1352(ra) # 80001690 <_Z4putcc>
        head = (head + 1) % cap;
    80006be0:	0104a783          	lw	a5,16(s1)
    80006be4:	0017879b          	addiw	a5,a5,1
    80006be8:	0004a703          	lw	a4,0(s1)
    80006bec:	02e7e7bb          	remw	a5,a5,a4
    80006bf0:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006bf4:	fc1ff06f          	j	80006bb4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006bf8:	02100513          	li	a0,33
    80006bfc:	ffffb097          	auipc	ra,0xffffb
    80006c00:	a94080e7          	jalr	-1388(ra) # 80001690 <_Z4putcc>
    putc('\n');
    80006c04:	00a00513          	li	a0,10
    80006c08:	ffffb097          	auipc	ra,0xffffb
    80006c0c:	a88080e7          	jalr	-1400(ra) # 80001690 <_Z4putcc>
    mem_free(buffer);
    80006c10:	0084b503          	ld	a0,8(s1)
    80006c14:	ffffa097          	auipc	ra,0xffffa
    80006c18:	630080e7          	jalr	1584(ra) # 80001244 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006c1c:	0204b503          	ld	a0,32(s1)
    80006c20:	ffffb097          	auipc	ra,0xffffb
    80006c24:	8a8080e7          	jalr	-1880(ra) # 800014c8 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006c28:	0184b503          	ld	a0,24(s1)
    80006c2c:	ffffb097          	auipc	ra,0xffffb
    80006c30:	89c080e7          	jalr	-1892(ra) # 800014c8 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006c34:	0304b503          	ld	a0,48(s1)
    80006c38:	ffffb097          	auipc	ra,0xffffb
    80006c3c:	890080e7          	jalr	-1904(ra) # 800014c8 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006c40:	0284b503          	ld	a0,40(s1)
    80006c44:	ffffb097          	auipc	ra,0xffffb
    80006c48:	884080e7          	jalr	-1916(ra) # 800014c8 <_Z9sem_closeP4_sem>
}
    80006c4c:	01813083          	ld	ra,24(sp)
    80006c50:	01013403          	ld	s0,16(sp)
    80006c54:	00813483          	ld	s1,8(sp)
    80006c58:	02010113          	addi	sp,sp,32
    80006c5c:	00008067          	ret

0000000080006c60 <start>:
    80006c60:	ff010113          	addi	sp,sp,-16
    80006c64:	00813423          	sd	s0,8(sp)
    80006c68:	01010413          	addi	s0,sp,16
    80006c6c:	300027f3          	csrr	a5,mstatus
    80006c70:	ffffe737          	lui	a4,0xffffe
    80006c74:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff172f>
    80006c78:	00e7f7b3          	and	a5,a5,a4
    80006c7c:	00001737          	lui	a4,0x1
    80006c80:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006c84:	00e7e7b3          	or	a5,a5,a4
    80006c88:	30079073          	csrw	mstatus,a5
    80006c8c:	00000797          	auipc	a5,0x0
    80006c90:	16078793          	addi	a5,a5,352 # 80006dec <system_main>
    80006c94:	34179073          	csrw	mepc,a5
    80006c98:	00000793          	li	a5,0
    80006c9c:	18079073          	csrw	satp,a5
    80006ca0:	000107b7          	lui	a5,0x10
    80006ca4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006ca8:	30279073          	csrw	medeleg,a5
    80006cac:	30379073          	csrw	mideleg,a5
    80006cb0:	104027f3          	csrr	a5,sie
    80006cb4:	2227e793          	ori	a5,a5,546
    80006cb8:	10479073          	csrw	sie,a5
    80006cbc:	fff00793          	li	a5,-1
    80006cc0:	00a7d793          	srli	a5,a5,0xa
    80006cc4:	3b079073          	csrw	pmpaddr0,a5
    80006cc8:	00f00793          	li	a5,15
    80006ccc:	3a079073          	csrw	pmpcfg0,a5
    80006cd0:	f14027f3          	csrr	a5,mhartid
    80006cd4:	0200c737          	lui	a4,0x200c
    80006cd8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006cdc:	0007869b          	sext.w	a3,a5
    80006ce0:	00269713          	slli	a4,a3,0x2
    80006ce4:	000f4637          	lui	a2,0xf4
    80006ce8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006cec:	00d70733          	add	a4,a4,a3
    80006cf0:	0037979b          	slliw	a5,a5,0x3
    80006cf4:	020046b7          	lui	a3,0x2004
    80006cf8:	00d787b3          	add	a5,a5,a3
    80006cfc:	00c585b3          	add	a1,a1,a2
    80006d00:	00371693          	slli	a3,a4,0x3
    80006d04:	00005717          	auipc	a4,0x5
    80006d08:	16c70713          	addi	a4,a4,364 # 8000be70 <timer_scratch>
    80006d0c:	00b7b023          	sd	a1,0(a5)
    80006d10:	00d70733          	add	a4,a4,a3
    80006d14:	00f73c23          	sd	a5,24(a4)
    80006d18:	02c73023          	sd	a2,32(a4)
    80006d1c:	34071073          	csrw	mscratch,a4
    80006d20:	00000797          	auipc	a5,0x0
    80006d24:	6e078793          	addi	a5,a5,1760 # 80007400 <timervec>
    80006d28:	30579073          	csrw	mtvec,a5
    80006d2c:	300027f3          	csrr	a5,mstatus
    80006d30:	0087e793          	ori	a5,a5,8
    80006d34:	30079073          	csrw	mstatus,a5
    80006d38:	304027f3          	csrr	a5,mie
    80006d3c:	0807e793          	ori	a5,a5,128
    80006d40:	30479073          	csrw	mie,a5
    80006d44:	f14027f3          	csrr	a5,mhartid
    80006d48:	0007879b          	sext.w	a5,a5
    80006d4c:	00078213          	mv	tp,a5
    80006d50:	30200073          	mret
    80006d54:	00813403          	ld	s0,8(sp)
    80006d58:	01010113          	addi	sp,sp,16
    80006d5c:	00008067          	ret

0000000080006d60 <timerinit>:
    80006d60:	ff010113          	addi	sp,sp,-16
    80006d64:	00813423          	sd	s0,8(sp)
    80006d68:	01010413          	addi	s0,sp,16
    80006d6c:	f14027f3          	csrr	a5,mhartid
    80006d70:	0200c737          	lui	a4,0x200c
    80006d74:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006d78:	0007869b          	sext.w	a3,a5
    80006d7c:	00269713          	slli	a4,a3,0x2
    80006d80:	000f4637          	lui	a2,0xf4
    80006d84:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006d88:	00d70733          	add	a4,a4,a3
    80006d8c:	0037979b          	slliw	a5,a5,0x3
    80006d90:	020046b7          	lui	a3,0x2004
    80006d94:	00d787b3          	add	a5,a5,a3
    80006d98:	00c585b3          	add	a1,a1,a2
    80006d9c:	00371693          	slli	a3,a4,0x3
    80006da0:	00005717          	auipc	a4,0x5
    80006da4:	0d070713          	addi	a4,a4,208 # 8000be70 <timer_scratch>
    80006da8:	00b7b023          	sd	a1,0(a5)
    80006dac:	00d70733          	add	a4,a4,a3
    80006db0:	00f73c23          	sd	a5,24(a4)
    80006db4:	02c73023          	sd	a2,32(a4)
    80006db8:	34071073          	csrw	mscratch,a4
    80006dbc:	00000797          	auipc	a5,0x0
    80006dc0:	64478793          	addi	a5,a5,1604 # 80007400 <timervec>
    80006dc4:	30579073          	csrw	mtvec,a5
    80006dc8:	300027f3          	csrr	a5,mstatus
    80006dcc:	0087e793          	ori	a5,a5,8
    80006dd0:	30079073          	csrw	mstatus,a5
    80006dd4:	304027f3          	csrr	a5,mie
    80006dd8:	0807e793          	ori	a5,a5,128
    80006ddc:	30479073          	csrw	mie,a5
    80006de0:	00813403          	ld	s0,8(sp)
    80006de4:	01010113          	addi	sp,sp,16
    80006de8:	00008067          	ret

0000000080006dec <system_main>:
    80006dec:	fe010113          	addi	sp,sp,-32
    80006df0:	00813823          	sd	s0,16(sp)
    80006df4:	00913423          	sd	s1,8(sp)
    80006df8:	00113c23          	sd	ra,24(sp)
    80006dfc:	02010413          	addi	s0,sp,32
    80006e00:	00000097          	auipc	ra,0x0
    80006e04:	0c4080e7          	jalr	196(ra) # 80006ec4 <cpuid>
    80006e08:	00005497          	auipc	s1,0x5
    80006e0c:	fa848493          	addi	s1,s1,-88 # 8000bdb0 <started>
    80006e10:	02050263          	beqz	a0,80006e34 <system_main+0x48>
    80006e14:	0004a783          	lw	a5,0(s1)
    80006e18:	0007879b          	sext.w	a5,a5
    80006e1c:	fe078ce3          	beqz	a5,80006e14 <system_main+0x28>
    80006e20:	0ff0000f          	fence
    80006e24:	00002517          	auipc	a0,0x2
    80006e28:	7f450513          	addi	a0,a0,2036 # 80009618 <CONSOLE_STATUS+0x608>
    80006e2c:	00001097          	auipc	ra,0x1
    80006e30:	a70080e7          	jalr	-1424(ra) # 8000789c <panic>
    80006e34:	00001097          	auipc	ra,0x1
    80006e38:	9c4080e7          	jalr	-1596(ra) # 800077f8 <consoleinit>
    80006e3c:	00001097          	auipc	ra,0x1
    80006e40:	150080e7          	jalr	336(ra) # 80007f8c <printfinit>
    80006e44:	00002517          	auipc	a0,0x2
    80006e48:	45c50513          	addi	a0,a0,1116 # 800092a0 <CONSOLE_STATUS+0x290>
    80006e4c:	00001097          	auipc	ra,0x1
    80006e50:	aac080e7          	jalr	-1364(ra) # 800078f8 <__printf>
    80006e54:	00002517          	auipc	a0,0x2
    80006e58:	79450513          	addi	a0,a0,1940 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80006e5c:	00001097          	auipc	ra,0x1
    80006e60:	a9c080e7          	jalr	-1380(ra) # 800078f8 <__printf>
    80006e64:	00002517          	auipc	a0,0x2
    80006e68:	43c50513          	addi	a0,a0,1084 # 800092a0 <CONSOLE_STATUS+0x290>
    80006e6c:	00001097          	auipc	ra,0x1
    80006e70:	a8c080e7          	jalr	-1396(ra) # 800078f8 <__printf>
    80006e74:	00001097          	auipc	ra,0x1
    80006e78:	4a4080e7          	jalr	1188(ra) # 80008318 <kinit>
    80006e7c:	00000097          	auipc	ra,0x0
    80006e80:	148080e7          	jalr	328(ra) # 80006fc4 <trapinit>
    80006e84:	00000097          	auipc	ra,0x0
    80006e88:	16c080e7          	jalr	364(ra) # 80006ff0 <trapinithart>
    80006e8c:	00000097          	auipc	ra,0x0
    80006e90:	5b4080e7          	jalr	1460(ra) # 80007440 <plicinit>
    80006e94:	00000097          	auipc	ra,0x0
    80006e98:	5d4080e7          	jalr	1492(ra) # 80007468 <plicinithart>
    80006e9c:	00000097          	auipc	ra,0x0
    80006ea0:	078080e7          	jalr	120(ra) # 80006f14 <userinit>
    80006ea4:	0ff0000f          	fence
    80006ea8:	00100793          	li	a5,1
    80006eac:	00002517          	auipc	a0,0x2
    80006eb0:	75450513          	addi	a0,a0,1876 # 80009600 <CONSOLE_STATUS+0x5f0>
    80006eb4:	00f4a023          	sw	a5,0(s1)
    80006eb8:	00001097          	auipc	ra,0x1
    80006ebc:	a40080e7          	jalr	-1472(ra) # 800078f8 <__printf>
    80006ec0:	0000006f          	j	80006ec0 <system_main+0xd4>

0000000080006ec4 <cpuid>:
    80006ec4:	ff010113          	addi	sp,sp,-16
    80006ec8:	00813423          	sd	s0,8(sp)
    80006ecc:	01010413          	addi	s0,sp,16
    80006ed0:	00020513          	mv	a0,tp
    80006ed4:	00813403          	ld	s0,8(sp)
    80006ed8:	0005051b          	sext.w	a0,a0
    80006edc:	01010113          	addi	sp,sp,16
    80006ee0:	00008067          	ret

0000000080006ee4 <mycpu>:
    80006ee4:	ff010113          	addi	sp,sp,-16
    80006ee8:	00813423          	sd	s0,8(sp)
    80006eec:	01010413          	addi	s0,sp,16
    80006ef0:	00020793          	mv	a5,tp
    80006ef4:	00813403          	ld	s0,8(sp)
    80006ef8:	0007879b          	sext.w	a5,a5
    80006efc:	00779793          	slli	a5,a5,0x7
    80006f00:	00006517          	auipc	a0,0x6
    80006f04:	fa050513          	addi	a0,a0,-96 # 8000cea0 <cpus>
    80006f08:	00f50533          	add	a0,a0,a5
    80006f0c:	01010113          	addi	sp,sp,16
    80006f10:	00008067          	ret

0000000080006f14 <userinit>:
    80006f14:	ff010113          	addi	sp,sp,-16
    80006f18:	00813423          	sd	s0,8(sp)
    80006f1c:	01010413          	addi	s0,sp,16
    80006f20:	00813403          	ld	s0,8(sp)
    80006f24:	01010113          	addi	sp,sp,16
    80006f28:	ffffc317          	auipc	t1,0xffffc
    80006f2c:	91030067          	jr	-1776(t1) # 80002838 <main>

0000000080006f30 <either_copyout>:
    80006f30:	ff010113          	addi	sp,sp,-16
    80006f34:	00813023          	sd	s0,0(sp)
    80006f38:	00113423          	sd	ra,8(sp)
    80006f3c:	01010413          	addi	s0,sp,16
    80006f40:	02051663          	bnez	a0,80006f6c <either_copyout+0x3c>
    80006f44:	00058513          	mv	a0,a1
    80006f48:	00060593          	mv	a1,a2
    80006f4c:	0006861b          	sext.w	a2,a3
    80006f50:	00002097          	auipc	ra,0x2
    80006f54:	c54080e7          	jalr	-940(ra) # 80008ba4 <__memmove>
    80006f58:	00813083          	ld	ra,8(sp)
    80006f5c:	00013403          	ld	s0,0(sp)
    80006f60:	00000513          	li	a0,0
    80006f64:	01010113          	addi	sp,sp,16
    80006f68:	00008067          	ret
    80006f6c:	00002517          	auipc	a0,0x2
    80006f70:	6d450513          	addi	a0,a0,1748 # 80009640 <CONSOLE_STATUS+0x630>
    80006f74:	00001097          	auipc	ra,0x1
    80006f78:	928080e7          	jalr	-1752(ra) # 8000789c <panic>

0000000080006f7c <either_copyin>:
    80006f7c:	ff010113          	addi	sp,sp,-16
    80006f80:	00813023          	sd	s0,0(sp)
    80006f84:	00113423          	sd	ra,8(sp)
    80006f88:	01010413          	addi	s0,sp,16
    80006f8c:	02059463          	bnez	a1,80006fb4 <either_copyin+0x38>
    80006f90:	00060593          	mv	a1,a2
    80006f94:	0006861b          	sext.w	a2,a3
    80006f98:	00002097          	auipc	ra,0x2
    80006f9c:	c0c080e7          	jalr	-1012(ra) # 80008ba4 <__memmove>
    80006fa0:	00813083          	ld	ra,8(sp)
    80006fa4:	00013403          	ld	s0,0(sp)
    80006fa8:	00000513          	li	a0,0
    80006fac:	01010113          	addi	sp,sp,16
    80006fb0:	00008067          	ret
    80006fb4:	00002517          	auipc	a0,0x2
    80006fb8:	6b450513          	addi	a0,a0,1716 # 80009668 <CONSOLE_STATUS+0x658>
    80006fbc:	00001097          	auipc	ra,0x1
    80006fc0:	8e0080e7          	jalr	-1824(ra) # 8000789c <panic>

0000000080006fc4 <trapinit>:
    80006fc4:	ff010113          	addi	sp,sp,-16
    80006fc8:	00813423          	sd	s0,8(sp)
    80006fcc:	01010413          	addi	s0,sp,16
    80006fd0:	00813403          	ld	s0,8(sp)
    80006fd4:	00002597          	auipc	a1,0x2
    80006fd8:	6bc58593          	addi	a1,a1,1724 # 80009690 <CONSOLE_STATUS+0x680>
    80006fdc:	00006517          	auipc	a0,0x6
    80006fe0:	f4450513          	addi	a0,a0,-188 # 8000cf20 <tickslock>
    80006fe4:	01010113          	addi	sp,sp,16
    80006fe8:	00001317          	auipc	t1,0x1
    80006fec:	5c030067          	jr	1472(t1) # 800085a8 <initlock>

0000000080006ff0 <trapinithart>:
    80006ff0:	ff010113          	addi	sp,sp,-16
    80006ff4:	00813423          	sd	s0,8(sp)
    80006ff8:	01010413          	addi	s0,sp,16
    80006ffc:	00000797          	auipc	a5,0x0
    80007000:	2f478793          	addi	a5,a5,756 # 800072f0 <kernelvec>
    80007004:	10579073          	csrw	stvec,a5
    80007008:	00813403          	ld	s0,8(sp)
    8000700c:	01010113          	addi	sp,sp,16
    80007010:	00008067          	ret

0000000080007014 <usertrap>:
    80007014:	ff010113          	addi	sp,sp,-16
    80007018:	00813423          	sd	s0,8(sp)
    8000701c:	01010413          	addi	s0,sp,16
    80007020:	00813403          	ld	s0,8(sp)
    80007024:	01010113          	addi	sp,sp,16
    80007028:	00008067          	ret

000000008000702c <usertrapret>:
    8000702c:	ff010113          	addi	sp,sp,-16
    80007030:	00813423          	sd	s0,8(sp)
    80007034:	01010413          	addi	s0,sp,16
    80007038:	00813403          	ld	s0,8(sp)
    8000703c:	01010113          	addi	sp,sp,16
    80007040:	00008067          	ret

0000000080007044 <kerneltrap>:
    80007044:	fe010113          	addi	sp,sp,-32
    80007048:	00813823          	sd	s0,16(sp)
    8000704c:	00113c23          	sd	ra,24(sp)
    80007050:	00913423          	sd	s1,8(sp)
    80007054:	02010413          	addi	s0,sp,32
    80007058:	142025f3          	csrr	a1,scause
    8000705c:	100027f3          	csrr	a5,sstatus
    80007060:	0027f793          	andi	a5,a5,2
    80007064:	10079c63          	bnez	a5,8000717c <kerneltrap+0x138>
    80007068:	142027f3          	csrr	a5,scause
    8000706c:	0207ce63          	bltz	a5,800070a8 <kerneltrap+0x64>
    80007070:	00002517          	auipc	a0,0x2
    80007074:	66850513          	addi	a0,a0,1640 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80007078:	00001097          	auipc	ra,0x1
    8000707c:	880080e7          	jalr	-1920(ra) # 800078f8 <__printf>
    80007080:	141025f3          	csrr	a1,sepc
    80007084:	14302673          	csrr	a2,stval
    80007088:	00002517          	auipc	a0,0x2
    8000708c:	66050513          	addi	a0,a0,1632 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80007090:	00001097          	auipc	ra,0x1
    80007094:	868080e7          	jalr	-1944(ra) # 800078f8 <__printf>
    80007098:	00002517          	auipc	a0,0x2
    8000709c:	66850513          	addi	a0,a0,1640 # 80009700 <CONSOLE_STATUS+0x6f0>
    800070a0:	00000097          	auipc	ra,0x0
    800070a4:	7fc080e7          	jalr	2044(ra) # 8000789c <panic>
    800070a8:	0ff7f713          	andi	a4,a5,255
    800070ac:	00900693          	li	a3,9
    800070b0:	04d70063          	beq	a4,a3,800070f0 <kerneltrap+0xac>
    800070b4:	fff00713          	li	a4,-1
    800070b8:	03f71713          	slli	a4,a4,0x3f
    800070bc:	00170713          	addi	a4,a4,1
    800070c0:	fae798e3          	bne	a5,a4,80007070 <kerneltrap+0x2c>
    800070c4:	00000097          	auipc	ra,0x0
    800070c8:	e00080e7          	jalr	-512(ra) # 80006ec4 <cpuid>
    800070cc:	06050663          	beqz	a0,80007138 <kerneltrap+0xf4>
    800070d0:	144027f3          	csrr	a5,sip
    800070d4:	ffd7f793          	andi	a5,a5,-3
    800070d8:	14479073          	csrw	sip,a5
    800070dc:	01813083          	ld	ra,24(sp)
    800070e0:	01013403          	ld	s0,16(sp)
    800070e4:	00813483          	ld	s1,8(sp)
    800070e8:	02010113          	addi	sp,sp,32
    800070ec:	00008067          	ret
    800070f0:	00000097          	auipc	ra,0x0
    800070f4:	3c4080e7          	jalr	964(ra) # 800074b4 <plic_claim>
    800070f8:	00a00793          	li	a5,10
    800070fc:	00050493          	mv	s1,a0
    80007100:	06f50863          	beq	a0,a5,80007170 <kerneltrap+0x12c>
    80007104:	fc050ce3          	beqz	a0,800070dc <kerneltrap+0x98>
    80007108:	00050593          	mv	a1,a0
    8000710c:	00002517          	auipc	a0,0x2
    80007110:	5ac50513          	addi	a0,a0,1452 # 800096b8 <CONSOLE_STATUS+0x6a8>
    80007114:	00000097          	auipc	ra,0x0
    80007118:	7e4080e7          	jalr	2020(ra) # 800078f8 <__printf>
    8000711c:	01013403          	ld	s0,16(sp)
    80007120:	01813083          	ld	ra,24(sp)
    80007124:	00048513          	mv	a0,s1
    80007128:	00813483          	ld	s1,8(sp)
    8000712c:	02010113          	addi	sp,sp,32
    80007130:	00000317          	auipc	t1,0x0
    80007134:	3bc30067          	jr	956(t1) # 800074ec <plic_complete>
    80007138:	00006517          	auipc	a0,0x6
    8000713c:	de850513          	addi	a0,a0,-536 # 8000cf20 <tickslock>
    80007140:	00001097          	auipc	ra,0x1
    80007144:	48c080e7          	jalr	1164(ra) # 800085cc <acquire>
    80007148:	00005717          	auipc	a4,0x5
    8000714c:	c6c70713          	addi	a4,a4,-916 # 8000bdb4 <ticks>
    80007150:	00072783          	lw	a5,0(a4)
    80007154:	00006517          	auipc	a0,0x6
    80007158:	dcc50513          	addi	a0,a0,-564 # 8000cf20 <tickslock>
    8000715c:	0017879b          	addiw	a5,a5,1
    80007160:	00f72023          	sw	a5,0(a4)
    80007164:	00001097          	auipc	ra,0x1
    80007168:	534080e7          	jalr	1332(ra) # 80008698 <release>
    8000716c:	f65ff06f          	j	800070d0 <kerneltrap+0x8c>
    80007170:	00001097          	auipc	ra,0x1
    80007174:	090080e7          	jalr	144(ra) # 80008200 <uartintr>
    80007178:	fa5ff06f          	j	8000711c <kerneltrap+0xd8>
    8000717c:	00002517          	auipc	a0,0x2
    80007180:	51c50513          	addi	a0,a0,1308 # 80009698 <CONSOLE_STATUS+0x688>
    80007184:	00000097          	auipc	ra,0x0
    80007188:	718080e7          	jalr	1816(ra) # 8000789c <panic>

000000008000718c <clockintr>:
    8000718c:	fe010113          	addi	sp,sp,-32
    80007190:	00813823          	sd	s0,16(sp)
    80007194:	00913423          	sd	s1,8(sp)
    80007198:	00113c23          	sd	ra,24(sp)
    8000719c:	02010413          	addi	s0,sp,32
    800071a0:	00006497          	auipc	s1,0x6
    800071a4:	d8048493          	addi	s1,s1,-640 # 8000cf20 <tickslock>
    800071a8:	00048513          	mv	a0,s1
    800071ac:	00001097          	auipc	ra,0x1
    800071b0:	420080e7          	jalr	1056(ra) # 800085cc <acquire>
    800071b4:	00005717          	auipc	a4,0x5
    800071b8:	c0070713          	addi	a4,a4,-1024 # 8000bdb4 <ticks>
    800071bc:	00072783          	lw	a5,0(a4)
    800071c0:	01013403          	ld	s0,16(sp)
    800071c4:	01813083          	ld	ra,24(sp)
    800071c8:	00048513          	mv	a0,s1
    800071cc:	0017879b          	addiw	a5,a5,1
    800071d0:	00813483          	ld	s1,8(sp)
    800071d4:	00f72023          	sw	a5,0(a4)
    800071d8:	02010113          	addi	sp,sp,32
    800071dc:	00001317          	auipc	t1,0x1
    800071e0:	4bc30067          	jr	1212(t1) # 80008698 <release>

00000000800071e4 <devintr>:
    800071e4:	142027f3          	csrr	a5,scause
    800071e8:	00000513          	li	a0,0
    800071ec:	0007c463          	bltz	a5,800071f4 <devintr+0x10>
    800071f0:	00008067          	ret
    800071f4:	fe010113          	addi	sp,sp,-32
    800071f8:	00813823          	sd	s0,16(sp)
    800071fc:	00113c23          	sd	ra,24(sp)
    80007200:	00913423          	sd	s1,8(sp)
    80007204:	02010413          	addi	s0,sp,32
    80007208:	0ff7f713          	andi	a4,a5,255
    8000720c:	00900693          	li	a3,9
    80007210:	04d70c63          	beq	a4,a3,80007268 <devintr+0x84>
    80007214:	fff00713          	li	a4,-1
    80007218:	03f71713          	slli	a4,a4,0x3f
    8000721c:	00170713          	addi	a4,a4,1
    80007220:	00e78c63          	beq	a5,a4,80007238 <devintr+0x54>
    80007224:	01813083          	ld	ra,24(sp)
    80007228:	01013403          	ld	s0,16(sp)
    8000722c:	00813483          	ld	s1,8(sp)
    80007230:	02010113          	addi	sp,sp,32
    80007234:	00008067          	ret
    80007238:	00000097          	auipc	ra,0x0
    8000723c:	c8c080e7          	jalr	-884(ra) # 80006ec4 <cpuid>
    80007240:	06050663          	beqz	a0,800072ac <devintr+0xc8>
    80007244:	144027f3          	csrr	a5,sip
    80007248:	ffd7f793          	andi	a5,a5,-3
    8000724c:	14479073          	csrw	sip,a5
    80007250:	01813083          	ld	ra,24(sp)
    80007254:	01013403          	ld	s0,16(sp)
    80007258:	00813483          	ld	s1,8(sp)
    8000725c:	00200513          	li	a0,2
    80007260:	02010113          	addi	sp,sp,32
    80007264:	00008067          	ret
    80007268:	00000097          	auipc	ra,0x0
    8000726c:	24c080e7          	jalr	588(ra) # 800074b4 <plic_claim>
    80007270:	00a00793          	li	a5,10
    80007274:	00050493          	mv	s1,a0
    80007278:	06f50663          	beq	a0,a5,800072e4 <devintr+0x100>
    8000727c:	00100513          	li	a0,1
    80007280:	fa0482e3          	beqz	s1,80007224 <devintr+0x40>
    80007284:	00048593          	mv	a1,s1
    80007288:	00002517          	auipc	a0,0x2
    8000728c:	43050513          	addi	a0,a0,1072 # 800096b8 <CONSOLE_STATUS+0x6a8>
    80007290:	00000097          	auipc	ra,0x0
    80007294:	668080e7          	jalr	1640(ra) # 800078f8 <__printf>
    80007298:	00048513          	mv	a0,s1
    8000729c:	00000097          	auipc	ra,0x0
    800072a0:	250080e7          	jalr	592(ra) # 800074ec <plic_complete>
    800072a4:	00100513          	li	a0,1
    800072a8:	f7dff06f          	j	80007224 <devintr+0x40>
    800072ac:	00006517          	auipc	a0,0x6
    800072b0:	c7450513          	addi	a0,a0,-908 # 8000cf20 <tickslock>
    800072b4:	00001097          	auipc	ra,0x1
    800072b8:	318080e7          	jalr	792(ra) # 800085cc <acquire>
    800072bc:	00005717          	auipc	a4,0x5
    800072c0:	af870713          	addi	a4,a4,-1288 # 8000bdb4 <ticks>
    800072c4:	00072783          	lw	a5,0(a4)
    800072c8:	00006517          	auipc	a0,0x6
    800072cc:	c5850513          	addi	a0,a0,-936 # 8000cf20 <tickslock>
    800072d0:	0017879b          	addiw	a5,a5,1
    800072d4:	00f72023          	sw	a5,0(a4)
    800072d8:	00001097          	auipc	ra,0x1
    800072dc:	3c0080e7          	jalr	960(ra) # 80008698 <release>
    800072e0:	f65ff06f          	j	80007244 <devintr+0x60>
    800072e4:	00001097          	auipc	ra,0x1
    800072e8:	f1c080e7          	jalr	-228(ra) # 80008200 <uartintr>
    800072ec:	fadff06f          	j	80007298 <devintr+0xb4>

00000000800072f0 <kernelvec>:
    800072f0:	f0010113          	addi	sp,sp,-256
    800072f4:	00113023          	sd	ra,0(sp)
    800072f8:	00213423          	sd	sp,8(sp)
    800072fc:	00313823          	sd	gp,16(sp)
    80007300:	00413c23          	sd	tp,24(sp)
    80007304:	02513023          	sd	t0,32(sp)
    80007308:	02613423          	sd	t1,40(sp)
    8000730c:	02713823          	sd	t2,48(sp)
    80007310:	02813c23          	sd	s0,56(sp)
    80007314:	04913023          	sd	s1,64(sp)
    80007318:	04a13423          	sd	a0,72(sp)
    8000731c:	04b13823          	sd	a1,80(sp)
    80007320:	04c13c23          	sd	a2,88(sp)
    80007324:	06d13023          	sd	a3,96(sp)
    80007328:	06e13423          	sd	a4,104(sp)
    8000732c:	06f13823          	sd	a5,112(sp)
    80007330:	07013c23          	sd	a6,120(sp)
    80007334:	09113023          	sd	a7,128(sp)
    80007338:	09213423          	sd	s2,136(sp)
    8000733c:	09313823          	sd	s3,144(sp)
    80007340:	09413c23          	sd	s4,152(sp)
    80007344:	0b513023          	sd	s5,160(sp)
    80007348:	0b613423          	sd	s6,168(sp)
    8000734c:	0b713823          	sd	s7,176(sp)
    80007350:	0b813c23          	sd	s8,184(sp)
    80007354:	0d913023          	sd	s9,192(sp)
    80007358:	0da13423          	sd	s10,200(sp)
    8000735c:	0db13823          	sd	s11,208(sp)
    80007360:	0dc13c23          	sd	t3,216(sp)
    80007364:	0fd13023          	sd	t4,224(sp)
    80007368:	0fe13423          	sd	t5,232(sp)
    8000736c:	0ff13823          	sd	t6,240(sp)
    80007370:	cd5ff0ef          	jal	ra,80007044 <kerneltrap>
    80007374:	00013083          	ld	ra,0(sp)
    80007378:	00813103          	ld	sp,8(sp)
    8000737c:	01013183          	ld	gp,16(sp)
    80007380:	02013283          	ld	t0,32(sp)
    80007384:	02813303          	ld	t1,40(sp)
    80007388:	03013383          	ld	t2,48(sp)
    8000738c:	03813403          	ld	s0,56(sp)
    80007390:	04013483          	ld	s1,64(sp)
    80007394:	04813503          	ld	a0,72(sp)
    80007398:	05013583          	ld	a1,80(sp)
    8000739c:	05813603          	ld	a2,88(sp)
    800073a0:	06013683          	ld	a3,96(sp)
    800073a4:	06813703          	ld	a4,104(sp)
    800073a8:	07013783          	ld	a5,112(sp)
    800073ac:	07813803          	ld	a6,120(sp)
    800073b0:	08013883          	ld	a7,128(sp)
    800073b4:	08813903          	ld	s2,136(sp)
    800073b8:	09013983          	ld	s3,144(sp)
    800073bc:	09813a03          	ld	s4,152(sp)
    800073c0:	0a013a83          	ld	s5,160(sp)
    800073c4:	0a813b03          	ld	s6,168(sp)
    800073c8:	0b013b83          	ld	s7,176(sp)
    800073cc:	0b813c03          	ld	s8,184(sp)
    800073d0:	0c013c83          	ld	s9,192(sp)
    800073d4:	0c813d03          	ld	s10,200(sp)
    800073d8:	0d013d83          	ld	s11,208(sp)
    800073dc:	0d813e03          	ld	t3,216(sp)
    800073e0:	0e013e83          	ld	t4,224(sp)
    800073e4:	0e813f03          	ld	t5,232(sp)
    800073e8:	0f013f83          	ld	t6,240(sp)
    800073ec:	10010113          	addi	sp,sp,256
    800073f0:	10200073          	sret
    800073f4:	00000013          	nop
    800073f8:	00000013          	nop
    800073fc:	00000013          	nop

0000000080007400 <timervec>:
    80007400:	34051573          	csrrw	a0,mscratch,a0
    80007404:	00b53023          	sd	a1,0(a0)
    80007408:	00c53423          	sd	a2,8(a0)
    8000740c:	00d53823          	sd	a3,16(a0)
    80007410:	01853583          	ld	a1,24(a0)
    80007414:	02053603          	ld	a2,32(a0)
    80007418:	0005b683          	ld	a3,0(a1)
    8000741c:	00c686b3          	add	a3,a3,a2
    80007420:	00d5b023          	sd	a3,0(a1)
    80007424:	00200593          	li	a1,2
    80007428:	14459073          	csrw	sip,a1
    8000742c:	01053683          	ld	a3,16(a0)
    80007430:	00853603          	ld	a2,8(a0)
    80007434:	00053583          	ld	a1,0(a0)
    80007438:	34051573          	csrrw	a0,mscratch,a0
    8000743c:	30200073          	mret

0000000080007440 <plicinit>:
    80007440:	ff010113          	addi	sp,sp,-16
    80007444:	00813423          	sd	s0,8(sp)
    80007448:	01010413          	addi	s0,sp,16
    8000744c:	00813403          	ld	s0,8(sp)
    80007450:	0c0007b7          	lui	a5,0xc000
    80007454:	00100713          	li	a4,1
    80007458:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000745c:	00e7a223          	sw	a4,4(a5)
    80007460:	01010113          	addi	sp,sp,16
    80007464:	00008067          	ret

0000000080007468 <plicinithart>:
    80007468:	ff010113          	addi	sp,sp,-16
    8000746c:	00813023          	sd	s0,0(sp)
    80007470:	00113423          	sd	ra,8(sp)
    80007474:	01010413          	addi	s0,sp,16
    80007478:	00000097          	auipc	ra,0x0
    8000747c:	a4c080e7          	jalr	-1460(ra) # 80006ec4 <cpuid>
    80007480:	0085171b          	slliw	a4,a0,0x8
    80007484:	0c0027b7          	lui	a5,0xc002
    80007488:	00e787b3          	add	a5,a5,a4
    8000748c:	40200713          	li	a4,1026
    80007490:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007494:	00813083          	ld	ra,8(sp)
    80007498:	00013403          	ld	s0,0(sp)
    8000749c:	00d5151b          	slliw	a0,a0,0xd
    800074a0:	0c2017b7          	lui	a5,0xc201
    800074a4:	00a78533          	add	a0,a5,a0
    800074a8:	00052023          	sw	zero,0(a0)
    800074ac:	01010113          	addi	sp,sp,16
    800074b0:	00008067          	ret

00000000800074b4 <plic_claim>:
    800074b4:	ff010113          	addi	sp,sp,-16
    800074b8:	00813023          	sd	s0,0(sp)
    800074bc:	00113423          	sd	ra,8(sp)
    800074c0:	01010413          	addi	s0,sp,16
    800074c4:	00000097          	auipc	ra,0x0
    800074c8:	a00080e7          	jalr	-1536(ra) # 80006ec4 <cpuid>
    800074cc:	00813083          	ld	ra,8(sp)
    800074d0:	00013403          	ld	s0,0(sp)
    800074d4:	00d5151b          	slliw	a0,a0,0xd
    800074d8:	0c2017b7          	lui	a5,0xc201
    800074dc:	00a78533          	add	a0,a5,a0
    800074e0:	00452503          	lw	a0,4(a0)
    800074e4:	01010113          	addi	sp,sp,16
    800074e8:	00008067          	ret

00000000800074ec <plic_complete>:
    800074ec:	fe010113          	addi	sp,sp,-32
    800074f0:	00813823          	sd	s0,16(sp)
    800074f4:	00913423          	sd	s1,8(sp)
    800074f8:	00113c23          	sd	ra,24(sp)
    800074fc:	02010413          	addi	s0,sp,32
    80007500:	00050493          	mv	s1,a0
    80007504:	00000097          	auipc	ra,0x0
    80007508:	9c0080e7          	jalr	-1600(ra) # 80006ec4 <cpuid>
    8000750c:	01813083          	ld	ra,24(sp)
    80007510:	01013403          	ld	s0,16(sp)
    80007514:	00d5179b          	slliw	a5,a0,0xd
    80007518:	0c201737          	lui	a4,0xc201
    8000751c:	00f707b3          	add	a5,a4,a5
    80007520:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007524:	00813483          	ld	s1,8(sp)
    80007528:	02010113          	addi	sp,sp,32
    8000752c:	00008067          	ret

0000000080007530 <consolewrite>:
    80007530:	fb010113          	addi	sp,sp,-80
    80007534:	04813023          	sd	s0,64(sp)
    80007538:	04113423          	sd	ra,72(sp)
    8000753c:	02913c23          	sd	s1,56(sp)
    80007540:	03213823          	sd	s2,48(sp)
    80007544:	03313423          	sd	s3,40(sp)
    80007548:	03413023          	sd	s4,32(sp)
    8000754c:	01513c23          	sd	s5,24(sp)
    80007550:	05010413          	addi	s0,sp,80
    80007554:	06c05c63          	blez	a2,800075cc <consolewrite+0x9c>
    80007558:	00060993          	mv	s3,a2
    8000755c:	00050a13          	mv	s4,a0
    80007560:	00058493          	mv	s1,a1
    80007564:	00000913          	li	s2,0
    80007568:	fff00a93          	li	s5,-1
    8000756c:	01c0006f          	j	80007588 <consolewrite+0x58>
    80007570:	fbf44503          	lbu	a0,-65(s0)
    80007574:	0019091b          	addiw	s2,s2,1
    80007578:	00148493          	addi	s1,s1,1
    8000757c:	00001097          	auipc	ra,0x1
    80007580:	a9c080e7          	jalr	-1380(ra) # 80008018 <uartputc>
    80007584:	03298063          	beq	s3,s2,800075a4 <consolewrite+0x74>
    80007588:	00048613          	mv	a2,s1
    8000758c:	00100693          	li	a3,1
    80007590:	000a0593          	mv	a1,s4
    80007594:	fbf40513          	addi	a0,s0,-65
    80007598:	00000097          	auipc	ra,0x0
    8000759c:	9e4080e7          	jalr	-1564(ra) # 80006f7c <either_copyin>
    800075a0:	fd5518e3          	bne	a0,s5,80007570 <consolewrite+0x40>
    800075a4:	04813083          	ld	ra,72(sp)
    800075a8:	04013403          	ld	s0,64(sp)
    800075ac:	03813483          	ld	s1,56(sp)
    800075b0:	02813983          	ld	s3,40(sp)
    800075b4:	02013a03          	ld	s4,32(sp)
    800075b8:	01813a83          	ld	s5,24(sp)
    800075bc:	00090513          	mv	a0,s2
    800075c0:	03013903          	ld	s2,48(sp)
    800075c4:	05010113          	addi	sp,sp,80
    800075c8:	00008067          	ret
    800075cc:	00000913          	li	s2,0
    800075d0:	fd5ff06f          	j	800075a4 <consolewrite+0x74>

00000000800075d4 <consoleread>:
    800075d4:	f9010113          	addi	sp,sp,-112
    800075d8:	06813023          	sd	s0,96(sp)
    800075dc:	04913c23          	sd	s1,88(sp)
    800075e0:	05213823          	sd	s2,80(sp)
    800075e4:	05313423          	sd	s3,72(sp)
    800075e8:	05413023          	sd	s4,64(sp)
    800075ec:	03513c23          	sd	s5,56(sp)
    800075f0:	03613823          	sd	s6,48(sp)
    800075f4:	03713423          	sd	s7,40(sp)
    800075f8:	03813023          	sd	s8,32(sp)
    800075fc:	06113423          	sd	ra,104(sp)
    80007600:	01913c23          	sd	s9,24(sp)
    80007604:	07010413          	addi	s0,sp,112
    80007608:	00060b93          	mv	s7,a2
    8000760c:	00050913          	mv	s2,a0
    80007610:	00058c13          	mv	s8,a1
    80007614:	00060b1b          	sext.w	s6,a2
    80007618:	00006497          	auipc	s1,0x6
    8000761c:	93048493          	addi	s1,s1,-1744 # 8000cf48 <cons>
    80007620:	00400993          	li	s3,4
    80007624:	fff00a13          	li	s4,-1
    80007628:	00a00a93          	li	s5,10
    8000762c:	05705e63          	blez	s7,80007688 <consoleread+0xb4>
    80007630:	09c4a703          	lw	a4,156(s1)
    80007634:	0984a783          	lw	a5,152(s1)
    80007638:	0007071b          	sext.w	a4,a4
    8000763c:	08e78463          	beq	a5,a4,800076c4 <consoleread+0xf0>
    80007640:	07f7f713          	andi	a4,a5,127
    80007644:	00e48733          	add	a4,s1,a4
    80007648:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000764c:	0017869b          	addiw	a3,a5,1
    80007650:	08d4ac23          	sw	a3,152(s1)
    80007654:	00070c9b          	sext.w	s9,a4
    80007658:	0b370663          	beq	a4,s3,80007704 <consoleread+0x130>
    8000765c:	00100693          	li	a3,1
    80007660:	f9f40613          	addi	a2,s0,-97
    80007664:	000c0593          	mv	a1,s8
    80007668:	00090513          	mv	a0,s2
    8000766c:	f8e40fa3          	sb	a4,-97(s0)
    80007670:	00000097          	auipc	ra,0x0
    80007674:	8c0080e7          	jalr	-1856(ra) # 80006f30 <either_copyout>
    80007678:	01450863          	beq	a0,s4,80007688 <consoleread+0xb4>
    8000767c:	001c0c13          	addi	s8,s8,1
    80007680:	fffb8b9b          	addiw	s7,s7,-1
    80007684:	fb5c94e3          	bne	s9,s5,8000762c <consoleread+0x58>
    80007688:	000b851b          	sext.w	a0,s7
    8000768c:	06813083          	ld	ra,104(sp)
    80007690:	06013403          	ld	s0,96(sp)
    80007694:	05813483          	ld	s1,88(sp)
    80007698:	05013903          	ld	s2,80(sp)
    8000769c:	04813983          	ld	s3,72(sp)
    800076a0:	04013a03          	ld	s4,64(sp)
    800076a4:	03813a83          	ld	s5,56(sp)
    800076a8:	02813b83          	ld	s7,40(sp)
    800076ac:	02013c03          	ld	s8,32(sp)
    800076b0:	01813c83          	ld	s9,24(sp)
    800076b4:	40ab053b          	subw	a0,s6,a0
    800076b8:	03013b03          	ld	s6,48(sp)
    800076bc:	07010113          	addi	sp,sp,112
    800076c0:	00008067          	ret
    800076c4:	00001097          	auipc	ra,0x1
    800076c8:	1d8080e7          	jalr	472(ra) # 8000889c <push_on>
    800076cc:	0984a703          	lw	a4,152(s1)
    800076d0:	09c4a783          	lw	a5,156(s1)
    800076d4:	0007879b          	sext.w	a5,a5
    800076d8:	fef70ce3          	beq	a4,a5,800076d0 <consoleread+0xfc>
    800076dc:	00001097          	auipc	ra,0x1
    800076e0:	234080e7          	jalr	564(ra) # 80008910 <pop_on>
    800076e4:	0984a783          	lw	a5,152(s1)
    800076e8:	07f7f713          	andi	a4,a5,127
    800076ec:	00e48733          	add	a4,s1,a4
    800076f0:	01874703          	lbu	a4,24(a4)
    800076f4:	0017869b          	addiw	a3,a5,1
    800076f8:	08d4ac23          	sw	a3,152(s1)
    800076fc:	00070c9b          	sext.w	s9,a4
    80007700:	f5371ee3          	bne	a4,s3,8000765c <consoleread+0x88>
    80007704:	000b851b          	sext.w	a0,s7
    80007708:	f96bf2e3          	bgeu	s7,s6,8000768c <consoleread+0xb8>
    8000770c:	08f4ac23          	sw	a5,152(s1)
    80007710:	f7dff06f          	j	8000768c <consoleread+0xb8>

0000000080007714 <consputc>:
    80007714:	10000793          	li	a5,256
    80007718:	00f50663          	beq	a0,a5,80007724 <consputc+0x10>
    8000771c:	00001317          	auipc	t1,0x1
    80007720:	9f430067          	jr	-1548(t1) # 80008110 <uartputc_sync>
    80007724:	ff010113          	addi	sp,sp,-16
    80007728:	00113423          	sd	ra,8(sp)
    8000772c:	00813023          	sd	s0,0(sp)
    80007730:	01010413          	addi	s0,sp,16
    80007734:	00800513          	li	a0,8
    80007738:	00001097          	auipc	ra,0x1
    8000773c:	9d8080e7          	jalr	-1576(ra) # 80008110 <uartputc_sync>
    80007740:	02000513          	li	a0,32
    80007744:	00001097          	auipc	ra,0x1
    80007748:	9cc080e7          	jalr	-1588(ra) # 80008110 <uartputc_sync>
    8000774c:	00013403          	ld	s0,0(sp)
    80007750:	00813083          	ld	ra,8(sp)
    80007754:	00800513          	li	a0,8
    80007758:	01010113          	addi	sp,sp,16
    8000775c:	00001317          	auipc	t1,0x1
    80007760:	9b430067          	jr	-1612(t1) # 80008110 <uartputc_sync>

0000000080007764 <consoleintr>:
    80007764:	fe010113          	addi	sp,sp,-32
    80007768:	00813823          	sd	s0,16(sp)
    8000776c:	00913423          	sd	s1,8(sp)
    80007770:	01213023          	sd	s2,0(sp)
    80007774:	00113c23          	sd	ra,24(sp)
    80007778:	02010413          	addi	s0,sp,32
    8000777c:	00005917          	auipc	s2,0x5
    80007780:	7cc90913          	addi	s2,s2,1996 # 8000cf48 <cons>
    80007784:	00050493          	mv	s1,a0
    80007788:	00090513          	mv	a0,s2
    8000778c:	00001097          	auipc	ra,0x1
    80007790:	e40080e7          	jalr	-448(ra) # 800085cc <acquire>
    80007794:	02048c63          	beqz	s1,800077cc <consoleintr+0x68>
    80007798:	0a092783          	lw	a5,160(s2)
    8000779c:	09892703          	lw	a4,152(s2)
    800077a0:	07f00693          	li	a3,127
    800077a4:	40e7873b          	subw	a4,a5,a4
    800077a8:	02e6e263          	bltu	a3,a4,800077cc <consoleintr+0x68>
    800077ac:	00d00713          	li	a4,13
    800077b0:	04e48063          	beq	s1,a4,800077f0 <consoleintr+0x8c>
    800077b4:	07f7f713          	andi	a4,a5,127
    800077b8:	00e90733          	add	a4,s2,a4
    800077bc:	0017879b          	addiw	a5,a5,1
    800077c0:	0af92023          	sw	a5,160(s2)
    800077c4:	00970c23          	sb	s1,24(a4)
    800077c8:	08f92e23          	sw	a5,156(s2)
    800077cc:	01013403          	ld	s0,16(sp)
    800077d0:	01813083          	ld	ra,24(sp)
    800077d4:	00813483          	ld	s1,8(sp)
    800077d8:	00013903          	ld	s2,0(sp)
    800077dc:	00005517          	auipc	a0,0x5
    800077e0:	76c50513          	addi	a0,a0,1900 # 8000cf48 <cons>
    800077e4:	02010113          	addi	sp,sp,32
    800077e8:	00001317          	auipc	t1,0x1
    800077ec:	eb030067          	jr	-336(t1) # 80008698 <release>
    800077f0:	00a00493          	li	s1,10
    800077f4:	fc1ff06f          	j	800077b4 <consoleintr+0x50>

00000000800077f8 <consoleinit>:
    800077f8:	fe010113          	addi	sp,sp,-32
    800077fc:	00113c23          	sd	ra,24(sp)
    80007800:	00813823          	sd	s0,16(sp)
    80007804:	00913423          	sd	s1,8(sp)
    80007808:	02010413          	addi	s0,sp,32
    8000780c:	00005497          	auipc	s1,0x5
    80007810:	73c48493          	addi	s1,s1,1852 # 8000cf48 <cons>
    80007814:	00048513          	mv	a0,s1
    80007818:	00002597          	auipc	a1,0x2
    8000781c:	ef858593          	addi	a1,a1,-264 # 80009710 <CONSOLE_STATUS+0x700>
    80007820:	00001097          	auipc	ra,0x1
    80007824:	d88080e7          	jalr	-632(ra) # 800085a8 <initlock>
    80007828:	00000097          	auipc	ra,0x0
    8000782c:	7ac080e7          	jalr	1964(ra) # 80007fd4 <uartinit>
    80007830:	01813083          	ld	ra,24(sp)
    80007834:	01013403          	ld	s0,16(sp)
    80007838:	00000797          	auipc	a5,0x0
    8000783c:	d9c78793          	addi	a5,a5,-612 # 800075d4 <consoleread>
    80007840:	0af4bc23          	sd	a5,184(s1)
    80007844:	00000797          	auipc	a5,0x0
    80007848:	cec78793          	addi	a5,a5,-788 # 80007530 <consolewrite>
    8000784c:	0cf4b023          	sd	a5,192(s1)
    80007850:	00813483          	ld	s1,8(sp)
    80007854:	02010113          	addi	sp,sp,32
    80007858:	00008067          	ret

000000008000785c <console_read>:
    8000785c:	ff010113          	addi	sp,sp,-16
    80007860:	00813423          	sd	s0,8(sp)
    80007864:	01010413          	addi	s0,sp,16
    80007868:	00813403          	ld	s0,8(sp)
    8000786c:	00005317          	auipc	t1,0x5
    80007870:	79433303          	ld	t1,1940(t1) # 8000d000 <devsw+0x10>
    80007874:	01010113          	addi	sp,sp,16
    80007878:	00030067          	jr	t1

000000008000787c <console_write>:
    8000787c:	ff010113          	addi	sp,sp,-16
    80007880:	00813423          	sd	s0,8(sp)
    80007884:	01010413          	addi	s0,sp,16
    80007888:	00813403          	ld	s0,8(sp)
    8000788c:	00005317          	auipc	t1,0x5
    80007890:	77c33303          	ld	t1,1916(t1) # 8000d008 <devsw+0x18>
    80007894:	01010113          	addi	sp,sp,16
    80007898:	00030067          	jr	t1

000000008000789c <panic>:
    8000789c:	fe010113          	addi	sp,sp,-32
    800078a0:	00113c23          	sd	ra,24(sp)
    800078a4:	00813823          	sd	s0,16(sp)
    800078a8:	00913423          	sd	s1,8(sp)
    800078ac:	02010413          	addi	s0,sp,32
    800078b0:	00050493          	mv	s1,a0
    800078b4:	00002517          	auipc	a0,0x2
    800078b8:	e6450513          	addi	a0,a0,-412 # 80009718 <CONSOLE_STATUS+0x708>
    800078bc:	00005797          	auipc	a5,0x5
    800078c0:	7e07a623          	sw	zero,2028(a5) # 8000d0a8 <pr+0x18>
    800078c4:	00000097          	auipc	ra,0x0
    800078c8:	034080e7          	jalr	52(ra) # 800078f8 <__printf>
    800078cc:	00048513          	mv	a0,s1
    800078d0:	00000097          	auipc	ra,0x0
    800078d4:	028080e7          	jalr	40(ra) # 800078f8 <__printf>
    800078d8:	00002517          	auipc	a0,0x2
    800078dc:	9c850513          	addi	a0,a0,-1592 # 800092a0 <CONSOLE_STATUS+0x290>
    800078e0:	00000097          	auipc	ra,0x0
    800078e4:	018080e7          	jalr	24(ra) # 800078f8 <__printf>
    800078e8:	00100793          	li	a5,1
    800078ec:	00004717          	auipc	a4,0x4
    800078f0:	4cf72623          	sw	a5,1228(a4) # 8000bdb8 <panicked>
    800078f4:	0000006f          	j	800078f4 <panic+0x58>

00000000800078f8 <__printf>:
    800078f8:	f3010113          	addi	sp,sp,-208
    800078fc:	08813023          	sd	s0,128(sp)
    80007900:	07313423          	sd	s3,104(sp)
    80007904:	09010413          	addi	s0,sp,144
    80007908:	05813023          	sd	s8,64(sp)
    8000790c:	08113423          	sd	ra,136(sp)
    80007910:	06913c23          	sd	s1,120(sp)
    80007914:	07213823          	sd	s2,112(sp)
    80007918:	07413023          	sd	s4,96(sp)
    8000791c:	05513c23          	sd	s5,88(sp)
    80007920:	05613823          	sd	s6,80(sp)
    80007924:	05713423          	sd	s7,72(sp)
    80007928:	03913c23          	sd	s9,56(sp)
    8000792c:	03a13823          	sd	s10,48(sp)
    80007930:	03b13423          	sd	s11,40(sp)
    80007934:	00005317          	auipc	t1,0x5
    80007938:	75c30313          	addi	t1,t1,1884 # 8000d090 <pr>
    8000793c:	01832c03          	lw	s8,24(t1)
    80007940:	00b43423          	sd	a1,8(s0)
    80007944:	00c43823          	sd	a2,16(s0)
    80007948:	00d43c23          	sd	a3,24(s0)
    8000794c:	02e43023          	sd	a4,32(s0)
    80007950:	02f43423          	sd	a5,40(s0)
    80007954:	03043823          	sd	a6,48(s0)
    80007958:	03143c23          	sd	a7,56(s0)
    8000795c:	00050993          	mv	s3,a0
    80007960:	4a0c1663          	bnez	s8,80007e0c <__printf+0x514>
    80007964:	60098c63          	beqz	s3,80007f7c <__printf+0x684>
    80007968:	0009c503          	lbu	a0,0(s3)
    8000796c:	00840793          	addi	a5,s0,8
    80007970:	f6f43c23          	sd	a5,-136(s0)
    80007974:	00000493          	li	s1,0
    80007978:	22050063          	beqz	a0,80007b98 <__printf+0x2a0>
    8000797c:	00002a37          	lui	s4,0x2
    80007980:	00018ab7          	lui	s5,0x18
    80007984:	000f4b37          	lui	s6,0xf4
    80007988:	00989bb7          	lui	s7,0x989
    8000798c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007990:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007994:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007998:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000799c:	00148c9b          	addiw	s9,s1,1
    800079a0:	02500793          	li	a5,37
    800079a4:	01998933          	add	s2,s3,s9
    800079a8:	38f51263          	bne	a0,a5,80007d2c <__printf+0x434>
    800079ac:	00094783          	lbu	a5,0(s2)
    800079b0:	00078c9b          	sext.w	s9,a5
    800079b4:	1e078263          	beqz	a5,80007b98 <__printf+0x2a0>
    800079b8:	0024849b          	addiw	s1,s1,2
    800079bc:	07000713          	li	a4,112
    800079c0:	00998933          	add	s2,s3,s1
    800079c4:	38e78a63          	beq	a5,a4,80007d58 <__printf+0x460>
    800079c8:	20f76863          	bltu	a4,a5,80007bd8 <__printf+0x2e0>
    800079cc:	42a78863          	beq	a5,a0,80007dfc <__printf+0x504>
    800079d0:	06400713          	li	a4,100
    800079d4:	40e79663          	bne	a5,a4,80007de0 <__printf+0x4e8>
    800079d8:	f7843783          	ld	a5,-136(s0)
    800079dc:	0007a603          	lw	a2,0(a5)
    800079e0:	00878793          	addi	a5,a5,8
    800079e4:	f6f43c23          	sd	a5,-136(s0)
    800079e8:	42064a63          	bltz	a2,80007e1c <__printf+0x524>
    800079ec:	00a00713          	li	a4,10
    800079f0:	02e677bb          	remuw	a5,a2,a4
    800079f4:	00002d97          	auipc	s11,0x2
    800079f8:	d4cd8d93          	addi	s11,s11,-692 # 80009740 <digits>
    800079fc:	00900593          	li	a1,9
    80007a00:	0006051b          	sext.w	a0,a2
    80007a04:	00000c93          	li	s9,0
    80007a08:	02079793          	slli	a5,a5,0x20
    80007a0c:	0207d793          	srli	a5,a5,0x20
    80007a10:	00fd87b3          	add	a5,s11,a5
    80007a14:	0007c783          	lbu	a5,0(a5)
    80007a18:	02e656bb          	divuw	a3,a2,a4
    80007a1c:	f8f40023          	sb	a5,-128(s0)
    80007a20:	14c5d863          	bge	a1,a2,80007b70 <__printf+0x278>
    80007a24:	06300593          	li	a1,99
    80007a28:	00100c93          	li	s9,1
    80007a2c:	02e6f7bb          	remuw	a5,a3,a4
    80007a30:	02079793          	slli	a5,a5,0x20
    80007a34:	0207d793          	srli	a5,a5,0x20
    80007a38:	00fd87b3          	add	a5,s11,a5
    80007a3c:	0007c783          	lbu	a5,0(a5)
    80007a40:	02e6d73b          	divuw	a4,a3,a4
    80007a44:	f8f400a3          	sb	a5,-127(s0)
    80007a48:	12a5f463          	bgeu	a1,a0,80007b70 <__printf+0x278>
    80007a4c:	00a00693          	li	a3,10
    80007a50:	00900593          	li	a1,9
    80007a54:	02d777bb          	remuw	a5,a4,a3
    80007a58:	02079793          	slli	a5,a5,0x20
    80007a5c:	0207d793          	srli	a5,a5,0x20
    80007a60:	00fd87b3          	add	a5,s11,a5
    80007a64:	0007c503          	lbu	a0,0(a5)
    80007a68:	02d757bb          	divuw	a5,a4,a3
    80007a6c:	f8a40123          	sb	a0,-126(s0)
    80007a70:	48e5f263          	bgeu	a1,a4,80007ef4 <__printf+0x5fc>
    80007a74:	06300513          	li	a0,99
    80007a78:	02d7f5bb          	remuw	a1,a5,a3
    80007a7c:	02059593          	slli	a1,a1,0x20
    80007a80:	0205d593          	srli	a1,a1,0x20
    80007a84:	00bd85b3          	add	a1,s11,a1
    80007a88:	0005c583          	lbu	a1,0(a1)
    80007a8c:	02d7d7bb          	divuw	a5,a5,a3
    80007a90:	f8b401a3          	sb	a1,-125(s0)
    80007a94:	48e57263          	bgeu	a0,a4,80007f18 <__printf+0x620>
    80007a98:	3e700513          	li	a0,999
    80007a9c:	02d7f5bb          	remuw	a1,a5,a3
    80007aa0:	02059593          	slli	a1,a1,0x20
    80007aa4:	0205d593          	srli	a1,a1,0x20
    80007aa8:	00bd85b3          	add	a1,s11,a1
    80007aac:	0005c583          	lbu	a1,0(a1)
    80007ab0:	02d7d7bb          	divuw	a5,a5,a3
    80007ab4:	f8b40223          	sb	a1,-124(s0)
    80007ab8:	46e57663          	bgeu	a0,a4,80007f24 <__printf+0x62c>
    80007abc:	02d7f5bb          	remuw	a1,a5,a3
    80007ac0:	02059593          	slli	a1,a1,0x20
    80007ac4:	0205d593          	srli	a1,a1,0x20
    80007ac8:	00bd85b3          	add	a1,s11,a1
    80007acc:	0005c583          	lbu	a1,0(a1)
    80007ad0:	02d7d7bb          	divuw	a5,a5,a3
    80007ad4:	f8b402a3          	sb	a1,-123(s0)
    80007ad8:	46ea7863          	bgeu	s4,a4,80007f48 <__printf+0x650>
    80007adc:	02d7f5bb          	remuw	a1,a5,a3
    80007ae0:	02059593          	slli	a1,a1,0x20
    80007ae4:	0205d593          	srli	a1,a1,0x20
    80007ae8:	00bd85b3          	add	a1,s11,a1
    80007aec:	0005c583          	lbu	a1,0(a1)
    80007af0:	02d7d7bb          	divuw	a5,a5,a3
    80007af4:	f8b40323          	sb	a1,-122(s0)
    80007af8:	3eeaf863          	bgeu	s5,a4,80007ee8 <__printf+0x5f0>
    80007afc:	02d7f5bb          	remuw	a1,a5,a3
    80007b00:	02059593          	slli	a1,a1,0x20
    80007b04:	0205d593          	srli	a1,a1,0x20
    80007b08:	00bd85b3          	add	a1,s11,a1
    80007b0c:	0005c583          	lbu	a1,0(a1)
    80007b10:	02d7d7bb          	divuw	a5,a5,a3
    80007b14:	f8b403a3          	sb	a1,-121(s0)
    80007b18:	42eb7e63          	bgeu	s6,a4,80007f54 <__printf+0x65c>
    80007b1c:	02d7f5bb          	remuw	a1,a5,a3
    80007b20:	02059593          	slli	a1,a1,0x20
    80007b24:	0205d593          	srli	a1,a1,0x20
    80007b28:	00bd85b3          	add	a1,s11,a1
    80007b2c:	0005c583          	lbu	a1,0(a1)
    80007b30:	02d7d7bb          	divuw	a5,a5,a3
    80007b34:	f8b40423          	sb	a1,-120(s0)
    80007b38:	42ebfc63          	bgeu	s7,a4,80007f70 <__printf+0x678>
    80007b3c:	02079793          	slli	a5,a5,0x20
    80007b40:	0207d793          	srli	a5,a5,0x20
    80007b44:	00fd8db3          	add	s11,s11,a5
    80007b48:	000dc703          	lbu	a4,0(s11)
    80007b4c:	00a00793          	li	a5,10
    80007b50:	00900c93          	li	s9,9
    80007b54:	f8e404a3          	sb	a4,-119(s0)
    80007b58:	00065c63          	bgez	a2,80007b70 <__printf+0x278>
    80007b5c:	f9040713          	addi	a4,s0,-112
    80007b60:	00f70733          	add	a4,a4,a5
    80007b64:	02d00693          	li	a3,45
    80007b68:	fed70823          	sb	a3,-16(a4)
    80007b6c:	00078c93          	mv	s9,a5
    80007b70:	f8040793          	addi	a5,s0,-128
    80007b74:	01978cb3          	add	s9,a5,s9
    80007b78:	f7f40d13          	addi	s10,s0,-129
    80007b7c:	000cc503          	lbu	a0,0(s9)
    80007b80:	fffc8c93          	addi	s9,s9,-1
    80007b84:	00000097          	auipc	ra,0x0
    80007b88:	b90080e7          	jalr	-1136(ra) # 80007714 <consputc>
    80007b8c:	ffac98e3          	bne	s9,s10,80007b7c <__printf+0x284>
    80007b90:	00094503          	lbu	a0,0(s2)
    80007b94:	e00514e3          	bnez	a0,8000799c <__printf+0xa4>
    80007b98:	1a0c1663          	bnez	s8,80007d44 <__printf+0x44c>
    80007b9c:	08813083          	ld	ra,136(sp)
    80007ba0:	08013403          	ld	s0,128(sp)
    80007ba4:	07813483          	ld	s1,120(sp)
    80007ba8:	07013903          	ld	s2,112(sp)
    80007bac:	06813983          	ld	s3,104(sp)
    80007bb0:	06013a03          	ld	s4,96(sp)
    80007bb4:	05813a83          	ld	s5,88(sp)
    80007bb8:	05013b03          	ld	s6,80(sp)
    80007bbc:	04813b83          	ld	s7,72(sp)
    80007bc0:	04013c03          	ld	s8,64(sp)
    80007bc4:	03813c83          	ld	s9,56(sp)
    80007bc8:	03013d03          	ld	s10,48(sp)
    80007bcc:	02813d83          	ld	s11,40(sp)
    80007bd0:	0d010113          	addi	sp,sp,208
    80007bd4:	00008067          	ret
    80007bd8:	07300713          	li	a4,115
    80007bdc:	1ce78a63          	beq	a5,a4,80007db0 <__printf+0x4b8>
    80007be0:	07800713          	li	a4,120
    80007be4:	1ee79e63          	bne	a5,a4,80007de0 <__printf+0x4e8>
    80007be8:	f7843783          	ld	a5,-136(s0)
    80007bec:	0007a703          	lw	a4,0(a5)
    80007bf0:	00878793          	addi	a5,a5,8
    80007bf4:	f6f43c23          	sd	a5,-136(s0)
    80007bf8:	28074263          	bltz	a4,80007e7c <__printf+0x584>
    80007bfc:	00002d97          	auipc	s11,0x2
    80007c00:	b44d8d93          	addi	s11,s11,-1212 # 80009740 <digits>
    80007c04:	00f77793          	andi	a5,a4,15
    80007c08:	00fd87b3          	add	a5,s11,a5
    80007c0c:	0007c683          	lbu	a3,0(a5)
    80007c10:	00f00613          	li	a2,15
    80007c14:	0007079b          	sext.w	a5,a4
    80007c18:	f8d40023          	sb	a3,-128(s0)
    80007c1c:	0047559b          	srliw	a1,a4,0x4
    80007c20:	0047569b          	srliw	a3,a4,0x4
    80007c24:	00000c93          	li	s9,0
    80007c28:	0ee65063          	bge	a2,a4,80007d08 <__printf+0x410>
    80007c2c:	00f6f693          	andi	a3,a3,15
    80007c30:	00dd86b3          	add	a3,s11,a3
    80007c34:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007c38:	0087d79b          	srliw	a5,a5,0x8
    80007c3c:	00100c93          	li	s9,1
    80007c40:	f8d400a3          	sb	a3,-127(s0)
    80007c44:	0cb67263          	bgeu	a2,a1,80007d08 <__printf+0x410>
    80007c48:	00f7f693          	andi	a3,a5,15
    80007c4c:	00dd86b3          	add	a3,s11,a3
    80007c50:	0006c583          	lbu	a1,0(a3)
    80007c54:	00f00613          	li	a2,15
    80007c58:	0047d69b          	srliw	a3,a5,0x4
    80007c5c:	f8b40123          	sb	a1,-126(s0)
    80007c60:	0047d593          	srli	a1,a5,0x4
    80007c64:	28f67e63          	bgeu	a2,a5,80007f00 <__printf+0x608>
    80007c68:	00f6f693          	andi	a3,a3,15
    80007c6c:	00dd86b3          	add	a3,s11,a3
    80007c70:	0006c503          	lbu	a0,0(a3)
    80007c74:	0087d813          	srli	a6,a5,0x8
    80007c78:	0087d69b          	srliw	a3,a5,0x8
    80007c7c:	f8a401a3          	sb	a0,-125(s0)
    80007c80:	28b67663          	bgeu	a2,a1,80007f0c <__printf+0x614>
    80007c84:	00f6f693          	andi	a3,a3,15
    80007c88:	00dd86b3          	add	a3,s11,a3
    80007c8c:	0006c583          	lbu	a1,0(a3)
    80007c90:	00c7d513          	srli	a0,a5,0xc
    80007c94:	00c7d69b          	srliw	a3,a5,0xc
    80007c98:	f8b40223          	sb	a1,-124(s0)
    80007c9c:	29067a63          	bgeu	a2,a6,80007f30 <__printf+0x638>
    80007ca0:	00f6f693          	andi	a3,a3,15
    80007ca4:	00dd86b3          	add	a3,s11,a3
    80007ca8:	0006c583          	lbu	a1,0(a3)
    80007cac:	0107d813          	srli	a6,a5,0x10
    80007cb0:	0107d69b          	srliw	a3,a5,0x10
    80007cb4:	f8b402a3          	sb	a1,-123(s0)
    80007cb8:	28a67263          	bgeu	a2,a0,80007f3c <__printf+0x644>
    80007cbc:	00f6f693          	andi	a3,a3,15
    80007cc0:	00dd86b3          	add	a3,s11,a3
    80007cc4:	0006c683          	lbu	a3,0(a3)
    80007cc8:	0147d79b          	srliw	a5,a5,0x14
    80007ccc:	f8d40323          	sb	a3,-122(s0)
    80007cd0:	21067663          	bgeu	a2,a6,80007edc <__printf+0x5e4>
    80007cd4:	02079793          	slli	a5,a5,0x20
    80007cd8:	0207d793          	srli	a5,a5,0x20
    80007cdc:	00fd8db3          	add	s11,s11,a5
    80007ce0:	000dc683          	lbu	a3,0(s11)
    80007ce4:	00800793          	li	a5,8
    80007ce8:	00700c93          	li	s9,7
    80007cec:	f8d403a3          	sb	a3,-121(s0)
    80007cf0:	00075c63          	bgez	a4,80007d08 <__printf+0x410>
    80007cf4:	f9040713          	addi	a4,s0,-112
    80007cf8:	00f70733          	add	a4,a4,a5
    80007cfc:	02d00693          	li	a3,45
    80007d00:	fed70823          	sb	a3,-16(a4)
    80007d04:	00078c93          	mv	s9,a5
    80007d08:	f8040793          	addi	a5,s0,-128
    80007d0c:	01978cb3          	add	s9,a5,s9
    80007d10:	f7f40d13          	addi	s10,s0,-129
    80007d14:	000cc503          	lbu	a0,0(s9)
    80007d18:	fffc8c93          	addi	s9,s9,-1
    80007d1c:	00000097          	auipc	ra,0x0
    80007d20:	9f8080e7          	jalr	-1544(ra) # 80007714 <consputc>
    80007d24:	ff9d18e3          	bne	s10,s9,80007d14 <__printf+0x41c>
    80007d28:	0100006f          	j	80007d38 <__printf+0x440>
    80007d2c:	00000097          	auipc	ra,0x0
    80007d30:	9e8080e7          	jalr	-1560(ra) # 80007714 <consputc>
    80007d34:	000c8493          	mv	s1,s9
    80007d38:	00094503          	lbu	a0,0(s2)
    80007d3c:	c60510e3          	bnez	a0,8000799c <__printf+0xa4>
    80007d40:	e40c0ee3          	beqz	s8,80007b9c <__printf+0x2a4>
    80007d44:	00005517          	auipc	a0,0x5
    80007d48:	34c50513          	addi	a0,a0,844 # 8000d090 <pr>
    80007d4c:	00001097          	auipc	ra,0x1
    80007d50:	94c080e7          	jalr	-1716(ra) # 80008698 <release>
    80007d54:	e49ff06f          	j	80007b9c <__printf+0x2a4>
    80007d58:	f7843783          	ld	a5,-136(s0)
    80007d5c:	03000513          	li	a0,48
    80007d60:	01000d13          	li	s10,16
    80007d64:	00878713          	addi	a4,a5,8
    80007d68:	0007bc83          	ld	s9,0(a5)
    80007d6c:	f6e43c23          	sd	a4,-136(s0)
    80007d70:	00000097          	auipc	ra,0x0
    80007d74:	9a4080e7          	jalr	-1628(ra) # 80007714 <consputc>
    80007d78:	07800513          	li	a0,120
    80007d7c:	00000097          	auipc	ra,0x0
    80007d80:	998080e7          	jalr	-1640(ra) # 80007714 <consputc>
    80007d84:	00002d97          	auipc	s11,0x2
    80007d88:	9bcd8d93          	addi	s11,s11,-1604 # 80009740 <digits>
    80007d8c:	03ccd793          	srli	a5,s9,0x3c
    80007d90:	00fd87b3          	add	a5,s11,a5
    80007d94:	0007c503          	lbu	a0,0(a5)
    80007d98:	fffd0d1b          	addiw	s10,s10,-1
    80007d9c:	004c9c93          	slli	s9,s9,0x4
    80007da0:	00000097          	auipc	ra,0x0
    80007da4:	974080e7          	jalr	-1676(ra) # 80007714 <consputc>
    80007da8:	fe0d12e3          	bnez	s10,80007d8c <__printf+0x494>
    80007dac:	f8dff06f          	j	80007d38 <__printf+0x440>
    80007db0:	f7843783          	ld	a5,-136(s0)
    80007db4:	0007bc83          	ld	s9,0(a5)
    80007db8:	00878793          	addi	a5,a5,8
    80007dbc:	f6f43c23          	sd	a5,-136(s0)
    80007dc0:	000c9a63          	bnez	s9,80007dd4 <__printf+0x4dc>
    80007dc4:	1080006f          	j	80007ecc <__printf+0x5d4>
    80007dc8:	001c8c93          	addi	s9,s9,1
    80007dcc:	00000097          	auipc	ra,0x0
    80007dd0:	948080e7          	jalr	-1720(ra) # 80007714 <consputc>
    80007dd4:	000cc503          	lbu	a0,0(s9)
    80007dd8:	fe0518e3          	bnez	a0,80007dc8 <__printf+0x4d0>
    80007ddc:	f5dff06f          	j	80007d38 <__printf+0x440>
    80007de0:	02500513          	li	a0,37
    80007de4:	00000097          	auipc	ra,0x0
    80007de8:	930080e7          	jalr	-1744(ra) # 80007714 <consputc>
    80007dec:	000c8513          	mv	a0,s9
    80007df0:	00000097          	auipc	ra,0x0
    80007df4:	924080e7          	jalr	-1756(ra) # 80007714 <consputc>
    80007df8:	f41ff06f          	j	80007d38 <__printf+0x440>
    80007dfc:	02500513          	li	a0,37
    80007e00:	00000097          	auipc	ra,0x0
    80007e04:	914080e7          	jalr	-1772(ra) # 80007714 <consputc>
    80007e08:	f31ff06f          	j	80007d38 <__printf+0x440>
    80007e0c:	00030513          	mv	a0,t1
    80007e10:	00000097          	auipc	ra,0x0
    80007e14:	7bc080e7          	jalr	1980(ra) # 800085cc <acquire>
    80007e18:	b4dff06f          	j	80007964 <__printf+0x6c>
    80007e1c:	40c0053b          	negw	a0,a2
    80007e20:	00a00713          	li	a4,10
    80007e24:	02e576bb          	remuw	a3,a0,a4
    80007e28:	00002d97          	auipc	s11,0x2
    80007e2c:	918d8d93          	addi	s11,s11,-1768 # 80009740 <digits>
    80007e30:	ff700593          	li	a1,-9
    80007e34:	02069693          	slli	a3,a3,0x20
    80007e38:	0206d693          	srli	a3,a3,0x20
    80007e3c:	00dd86b3          	add	a3,s11,a3
    80007e40:	0006c683          	lbu	a3,0(a3)
    80007e44:	02e557bb          	divuw	a5,a0,a4
    80007e48:	f8d40023          	sb	a3,-128(s0)
    80007e4c:	10b65e63          	bge	a2,a1,80007f68 <__printf+0x670>
    80007e50:	06300593          	li	a1,99
    80007e54:	02e7f6bb          	remuw	a3,a5,a4
    80007e58:	02069693          	slli	a3,a3,0x20
    80007e5c:	0206d693          	srli	a3,a3,0x20
    80007e60:	00dd86b3          	add	a3,s11,a3
    80007e64:	0006c683          	lbu	a3,0(a3)
    80007e68:	02e7d73b          	divuw	a4,a5,a4
    80007e6c:	00200793          	li	a5,2
    80007e70:	f8d400a3          	sb	a3,-127(s0)
    80007e74:	bca5ece3          	bltu	a1,a0,80007a4c <__printf+0x154>
    80007e78:	ce5ff06f          	j	80007b5c <__printf+0x264>
    80007e7c:	40e007bb          	negw	a5,a4
    80007e80:	00002d97          	auipc	s11,0x2
    80007e84:	8c0d8d93          	addi	s11,s11,-1856 # 80009740 <digits>
    80007e88:	00f7f693          	andi	a3,a5,15
    80007e8c:	00dd86b3          	add	a3,s11,a3
    80007e90:	0006c583          	lbu	a1,0(a3)
    80007e94:	ff100613          	li	a2,-15
    80007e98:	0047d69b          	srliw	a3,a5,0x4
    80007e9c:	f8b40023          	sb	a1,-128(s0)
    80007ea0:	0047d59b          	srliw	a1,a5,0x4
    80007ea4:	0ac75e63          	bge	a4,a2,80007f60 <__printf+0x668>
    80007ea8:	00f6f693          	andi	a3,a3,15
    80007eac:	00dd86b3          	add	a3,s11,a3
    80007eb0:	0006c603          	lbu	a2,0(a3)
    80007eb4:	00f00693          	li	a3,15
    80007eb8:	0087d79b          	srliw	a5,a5,0x8
    80007ebc:	f8c400a3          	sb	a2,-127(s0)
    80007ec0:	d8b6e4e3          	bltu	a3,a1,80007c48 <__printf+0x350>
    80007ec4:	00200793          	li	a5,2
    80007ec8:	e2dff06f          	j	80007cf4 <__printf+0x3fc>
    80007ecc:	00002c97          	auipc	s9,0x2
    80007ed0:	854c8c93          	addi	s9,s9,-1964 # 80009720 <CONSOLE_STATUS+0x710>
    80007ed4:	02800513          	li	a0,40
    80007ed8:	ef1ff06f          	j	80007dc8 <__printf+0x4d0>
    80007edc:	00700793          	li	a5,7
    80007ee0:	00600c93          	li	s9,6
    80007ee4:	e0dff06f          	j	80007cf0 <__printf+0x3f8>
    80007ee8:	00700793          	li	a5,7
    80007eec:	00600c93          	li	s9,6
    80007ef0:	c69ff06f          	j	80007b58 <__printf+0x260>
    80007ef4:	00300793          	li	a5,3
    80007ef8:	00200c93          	li	s9,2
    80007efc:	c5dff06f          	j	80007b58 <__printf+0x260>
    80007f00:	00300793          	li	a5,3
    80007f04:	00200c93          	li	s9,2
    80007f08:	de9ff06f          	j	80007cf0 <__printf+0x3f8>
    80007f0c:	00400793          	li	a5,4
    80007f10:	00300c93          	li	s9,3
    80007f14:	dddff06f          	j	80007cf0 <__printf+0x3f8>
    80007f18:	00400793          	li	a5,4
    80007f1c:	00300c93          	li	s9,3
    80007f20:	c39ff06f          	j	80007b58 <__printf+0x260>
    80007f24:	00500793          	li	a5,5
    80007f28:	00400c93          	li	s9,4
    80007f2c:	c2dff06f          	j	80007b58 <__printf+0x260>
    80007f30:	00500793          	li	a5,5
    80007f34:	00400c93          	li	s9,4
    80007f38:	db9ff06f          	j	80007cf0 <__printf+0x3f8>
    80007f3c:	00600793          	li	a5,6
    80007f40:	00500c93          	li	s9,5
    80007f44:	dadff06f          	j	80007cf0 <__printf+0x3f8>
    80007f48:	00600793          	li	a5,6
    80007f4c:	00500c93          	li	s9,5
    80007f50:	c09ff06f          	j	80007b58 <__printf+0x260>
    80007f54:	00800793          	li	a5,8
    80007f58:	00700c93          	li	s9,7
    80007f5c:	bfdff06f          	j	80007b58 <__printf+0x260>
    80007f60:	00100793          	li	a5,1
    80007f64:	d91ff06f          	j	80007cf4 <__printf+0x3fc>
    80007f68:	00100793          	li	a5,1
    80007f6c:	bf1ff06f          	j	80007b5c <__printf+0x264>
    80007f70:	00900793          	li	a5,9
    80007f74:	00800c93          	li	s9,8
    80007f78:	be1ff06f          	j	80007b58 <__printf+0x260>
    80007f7c:	00001517          	auipc	a0,0x1
    80007f80:	7ac50513          	addi	a0,a0,1964 # 80009728 <CONSOLE_STATUS+0x718>
    80007f84:	00000097          	auipc	ra,0x0
    80007f88:	918080e7          	jalr	-1768(ra) # 8000789c <panic>

0000000080007f8c <printfinit>:
    80007f8c:	fe010113          	addi	sp,sp,-32
    80007f90:	00813823          	sd	s0,16(sp)
    80007f94:	00913423          	sd	s1,8(sp)
    80007f98:	00113c23          	sd	ra,24(sp)
    80007f9c:	02010413          	addi	s0,sp,32
    80007fa0:	00005497          	auipc	s1,0x5
    80007fa4:	0f048493          	addi	s1,s1,240 # 8000d090 <pr>
    80007fa8:	00048513          	mv	a0,s1
    80007fac:	00001597          	auipc	a1,0x1
    80007fb0:	78c58593          	addi	a1,a1,1932 # 80009738 <CONSOLE_STATUS+0x728>
    80007fb4:	00000097          	auipc	ra,0x0
    80007fb8:	5f4080e7          	jalr	1524(ra) # 800085a8 <initlock>
    80007fbc:	01813083          	ld	ra,24(sp)
    80007fc0:	01013403          	ld	s0,16(sp)
    80007fc4:	0004ac23          	sw	zero,24(s1)
    80007fc8:	00813483          	ld	s1,8(sp)
    80007fcc:	02010113          	addi	sp,sp,32
    80007fd0:	00008067          	ret

0000000080007fd4 <uartinit>:
    80007fd4:	ff010113          	addi	sp,sp,-16
    80007fd8:	00813423          	sd	s0,8(sp)
    80007fdc:	01010413          	addi	s0,sp,16
    80007fe0:	100007b7          	lui	a5,0x10000
    80007fe4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007fe8:	f8000713          	li	a4,-128
    80007fec:	00e781a3          	sb	a4,3(a5)
    80007ff0:	00300713          	li	a4,3
    80007ff4:	00e78023          	sb	a4,0(a5)
    80007ff8:	000780a3          	sb	zero,1(a5)
    80007ffc:	00e781a3          	sb	a4,3(a5)
    80008000:	00700693          	li	a3,7
    80008004:	00d78123          	sb	a3,2(a5)
    80008008:	00e780a3          	sb	a4,1(a5)
    8000800c:	00813403          	ld	s0,8(sp)
    80008010:	01010113          	addi	sp,sp,16
    80008014:	00008067          	ret

0000000080008018 <uartputc>:
    80008018:	00004797          	auipc	a5,0x4
    8000801c:	da07a783          	lw	a5,-608(a5) # 8000bdb8 <panicked>
    80008020:	00078463          	beqz	a5,80008028 <uartputc+0x10>
    80008024:	0000006f          	j	80008024 <uartputc+0xc>
    80008028:	fd010113          	addi	sp,sp,-48
    8000802c:	02813023          	sd	s0,32(sp)
    80008030:	00913c23          	sd	s1,24(sp)
    80008034:	01213823          	sd	s2,16(sp)
    80008038:	01313423          	sd	s3,8(sp)
    8000803c:	02113423          	sd	ra,40(sp)
    80008040:	03010413          	addi	s0,sp,48
    80008044:	00004917          	auipc	s2,0x4
    80008048:	d7c90913          	addi	s2,s2,-644 # 8000bdc0 <uart_tx_r>
    8000804c:	00093783          	ld	a5,0(s2)
    80008050:	00004497          	auipc	s1,0x4
    80008054:	d7848493          	addi	s1,s1,-648 # 8000bdc8 <uart_tx_w>
    80008058:	0004b703          	ld	a4,0(s1)
    8000805c:	02078693          	addi	a3,a5,32
    80008060:	00050993          	mv	s3,a0
    80008064:	02e69c63          	bne	a3,a4,8000809c <uartputc+0x84>
    80008068:	00001097          	auipc	ra,0x1
    8000806c:	834080e7          	jalr	-1996(ra) # 8000889c <push_on>
    80008070:	00093783          	ld	a5,0(s2)
    80008074:	0004b703          	ld	a4,0(s1)
    80008078:	02078793          	addi	a5,a5,32
    8000807c:	00e79463          	bne	a5,a4,80008084 <uartputc+0x6c>
    80008080:	0000006f          	j	80008080 <uartputc+0x68>
    80008084:	00001097          	auipc	ra,0x1
    80008088:	88c080e7          	jalr	-1908(ra) # 80008910 <pop_on>
    8000808c:	00093783          	ld	a5,0(s2)
    80008090:	0004b703          	ld	a4,0(s1)
    80008094:	02078693          	addi	a3,a5,32
    80008098:	fce688e3          	beq	a3,a4,80008068 <uartputc+0x50>
    8000809c:	01f77693          	andi	a3,a4,31
    800080a0:	00005597          	auipc	a1,0x5
    800080a4:	01058593          	addi	a1,a1,16 # 8000d0b0 <uart_tx_buf>
    800080a8:	00d586b3          	add	a3,a1,a3
    800080ac:	00170713          	addi	a4,a4,1
    800080b0:	01368023          	sb	s3,0(a3)
    800080b4:	00e4b023          	sd	a4,0(s1)
    800080b8:	10000637          	lui	a2,0x10000
    800080bc:	02f71063          	bne	a4,a5,800080dc <uartputc+0xc4>
    800080c0:	0340006f          	j	800080f4 <uartputc+0xdc>
    800080c4:	00074703          	lbu	a4,0(a4)
    800080c8:	00f93023          	sd	a5,0(s2)
    800080cc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800080d0:	00093783          	ld	a5,0(s2)
    800080d4:	0004b703          	ld	a4,0(s1)
    800080d8:	00f70e63          	beq	a4,a5,800080f4 <uartputc+0xdc>
    800080dc:	00564683          	lbu	a3,5(a2)
    800080e0:	01f7f713          	andi	a4,a5,31
    800080e4:	00e58733          	add	a4,a1,a4
    800080e8:	0206f693          	andi	a3,a3,32
    800080ec:	00178793          	addi	a5,a5,1
    800080f0:	fc069ae3          	bnez	a3,800080c4 <uartputc+0xac>
    800080f4:	02813083          	ld	ra,40(sp)
    800080f8:	02013403          	ld	s0,32(sp)
    800080fc:	01813483          	ld	s1,24(sp)
    80008100:	01013903          	ld	s2,16(sp)
    80008104:	00813983          	ld	s3,8(sp)
    80008108:	03010113          	addi	sp,sp,48
    8000810c:	00008067          	ret

0000000080008110 <uartputc_sync>:
    80008110:	ff010113          	addi	sp,sp,-16
    80008114:	00813423          	sd	s0,8(sp)
    80008118:	01010413          	addi	s0,sp,16
    8000811c:	00004717          	auipc	a4,0x4
    80008120:	c9c72703          	lw	a4,-868(a4) # 8000bdb8 <panicked>
    80008124:	02071663          	bnez	a4,80008150 <uartputc_sync+0x40>
    80008128:	00050793          	mv	a5,a0
    8000812c:	100006b7          	lui	a3,0x10000
    80008130:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008134:	02077713          	andi	a4,a4,32
    80008138:	fe070ce3          	beqz	a4,80008130 <uartputc_sync+0x20>
    8000813c:	0ff7f793          	andi	a5,a5,255
    80008140:	00f68023          	sb	a5,0(a3)
    80008144:	00813403          	ld	s0,8(sp)
    80008148:	01010113          	addi	sp,sp,16
    8000814c:	00008067          	ret
    80008150:	0000006f          	j	80008150 <uartputc_sync+0x40>

0000000080008154 <uartstart>:
    80008154:	ff010113          	addi	sp,sp,-16
    80008158:	00813423          	sd	s0,8(sp)
    8000815c:	01010413          	addi	s0,sp,16
    80008160:	00004617          	auipc	a2,0x4
    80008164:	c6060613          	addi	a2,a2,-928 # 8000bdc0 <uart_tx_r>
    80008168:	00004517          	auipc	a0,0x4
    8000816c:	c6050513          	addi	a0,a0,-928 # 8000bdc8 <uart_tx_w>
    80008170:	00063783          	ld	a5,0(a2)
    80008174:	00053703          	ld	a4,0(a0)
    80008178:	04f70263          	beq	a4,a5,800081bc <uartstart+0x68>
    8000817c:	100005b7          	lui	a1,0x10000
    80008180:	00005817          	auipc	a6,0x5
    80008184:	f3080813          	addi	a6,a6,-208 # 8000d0b0 <uart_tx_buf>
    80008188:	01c0006f          	j	800081a4 <uartstart+0x50>
    8000818c:	0006c703          	lbu	a4,0(a3)
    80008190:	00f63023          	sd	a5,0(a2)
    80008194:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008198:	00063783          	ld	a5,0(a2)
    8000819c:	00053703          	ld	a4,0(a0)
    800081a0:	00f70e63          	beq	a4,a5,800081bc <uartstart+0x68>
    800081a4:	01f7f713          	andi	a4,a5,31
    800081a8:	00e806b3          	add	a3,a6,a4
    800081ac:	0055c703          	lbu	a4,5(a1)
    800081b0:	00178793          	addi	a5,a5,1
    800081b4:	02077713          	andi	a4,a4,32
    800081b8:	fc071ae3          	bnez	a4,8000818c <uartstart+0x38>
    800081bc:	00813403          	ld	s0,8(sp)
    800081c0:	01010113          	addi	sp,sp,16
    800081c4:	00008067          	ret

00000000800081c8 <uartgetc>:
    800081c8:	ff010113          	addi	sp,sp,-16
    800081cc:	00813423          	sd	s0,8(sp)
    800081d0:	01010413          	addi	s0,sp,16
    800081d4:	10000737          	lui	a4,0x10000
    800081d8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800081dc:	0017f793          	andi	a5,a5,1
    800081e0:	00078c63          	beqz	a5,800081f8 <uartgetc+0x30>
    800081e4:	00074503          	lbu	a0,0(a4)
    800081e8:	0ff57513          	andi	a0,a0,255
    800081ec:	00813403          	ld	s0,8(sp)
    800081f0:	01010113          	addi	sp,sp,16
    800081f4:	00008067          	ret
    800081f8:	fff00513          	li	a0,-1
    800081fc:	ff1ff06f          	j	800081ec <uartgetc+0x24>

0000000080008200 <uartintr>:
    80008200:	100007b7          	lui	a5,0x10000
    80008204:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008208:	0017f793          	andi	a5,a5,1
    8000820c:	0a078463          	beqz	a5,800082b4 <uartintr+0xb4>
    80008210:	fe010113          	addi	sp,sp,-32
    80008214:	00813823          	sd	s0,16(sp)
    80008218:	00913423          	sd	s1,8(sp)
    8000821c:	00113c23          	sd	ra,24(sp)
    80008220:	02010413          	addi	s0,sp,32
    80008224:	100004b7          	lui	s1,0x10000
    80008228:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000822c:	0ff57513          	andi	a0,a0,255
    80008230:	fffff097          	auipc	ra,0xfffff
    80008234:	534080e7          	jalr	1332(ra) # 80007764 <consoleintr>
    80008238:	0054c783          	lbu	a5,5(s1)
    8000823c:	0017f793          	andi	a5,a5,1
    80008240:	fe0794e3          	bnez	a5,80008228 <uartintr+0x28>
    80008244:	00004617          	auipc	a2,0x4
    80008248:	b7c60613          	addi	a2,a2,-1156 # 8000bdc0 <uart_tx_r>
    8000824c:	00004517          	auipc	a0,0x4
    80008250:	b7c50513          	addi	a0,a0,-1156 # 8000bdc8 <uart_tx_w>
    80008254:	00063783          	ld	a5,0(a2)
    80008258:	00053703          	ld	a4,0(a0)
    8000825c:	04f70263          	beq	a4,a5,800082a0 <uartintr+0xa0>
    80008260:	100005b7          	lui	a1,0x10000
    80008264:	00005817          	auipc	a6,0x5
    80008268:	e4c80813          	addi	a6,a6,-436 # 8000d0b0 <uart_tx_buf>
    8000826c:	01c0006f          	j	80008288 <uartintr+0x88>
    80008270:	0006c703          	lbu	a4,0(a3)
    80008274:	00f63023          	sd	a5,0(a2)
    80008278:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000827c:	00063783          	ld	a5,0(a2)
    80008280:	00053703          	ld	a4,0(a0)
    80008284:	00f70e63          	beq	a4,a5,800082a0 <uartintr+0xa0>
    80008288:	01f7f713          	andi	a4,a5,31
    8000828c:	00e806b3          	add	a3,a6,a4
    80008290:	0055c703          	lbu	a4,5(a1)
    80008294:	00178793          	addi	a5,a5,1
    80008298:	02077713          	andi	a4,a4,32
    8000829c:	fc071ae3          	bnez	a4,80008270 <uartintr+0x70>
    800082a0:	01813083          	ld	ra,24(sp)
    800082a4:	01013403          	ld	s0,16(sp)
    800082a8:	00813483          	ld	s1,8(sp)
    800082ac:	02010113          	addi	sp,sp,32
    800082b0:	00008067          	ret
    800082b4:	00004617          	auipc	a2,0x4
    800082b8:	b0c60613          	addi	a2,a2,-1268 # 8000bdc0 <uart_tx_r>
    800082bc:	00004517          	auipc	a0,0x4
    800082c0:	b0c50513          	addi	a0,a0,-1268 # 8000bdc8 <uart_tx_w>
    800082c4:	00063783          	ld	a5,0(a2)
    800082c8:	00053703          	ld	a4,0(a0)
    800082cc:	04f70263          	beq	a4,a5,80008310 <uartintr+0x110>
    800082d0:	100005b7          	lui	a1,0x10000
    800082d4:	00005817          	auipc	a6,0x5
    800082d8:	ddc80813          	addi	a6,a6,-548 # 8000d0b0 <uart_tx_buf>
    800082dc:	01c0006f          	j	800082f8 <uartintr+0xf8>
    800082e0:	0006c703          	lbu	a4,0(a3)
    800082e4:	00f63023          	sd	a5,0(a2)
    800082e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800082ec:	00063783          	ld	a5,0(a2)
    800082f0:	00053703          	ld	a4,0(a0)
    800082f4:	02f70063          	beq	a4,a5,80008314 <uartintr+0x114>
    800082f8:	01f7f713          	andi	a4,a5,31
    800082fc:	00e806b3          	add	a3,a6,a4
    80008300:	0055c703          	lbu	a4,5(a1)
    80008304:	00178793          	addi	a5,a5,1
    80008308:	02077713          	andi	a4,a4,32
    8000830c:	fc071ae3          	bnez	a4,800082e0 <uartintr+0xe0>
    80008310:	00008067          	ret
    80008314:	00008067          	ret

0000000080008318 <kinit>:
    80008318:	fc010113          	addi	sp,sp,-64
    8000831c:	02913423          	sd	s1,40(sp)
    80008320:	fffff7b7          	lui	a5,0xfffff
    80008324:	00006497          	auipc	s1,0x6
    80008328:	dab48493          	addi	s1,s1,-597 # 8000e0cf <end+0xfff>
    8000832c:	02813823          	sd	s0,48(sp)
    80008330:	01313c23          	sd	s3,24(sp)
    80008334:	00f4f4b3          	and	s1,s1,a5
    80008338:	02113c23          	sd	ra,56(sp)
    8000833c:	03213023          	sd	s2,32(sp)
    80008340:	01413823          	sd	s4,16(sp)
    80008344:	01513423          	sd	s5,8(sp)
    80008348:	04010413          	addi	s0,sp,64
    8000834c:	000017b7          	lui	a5,0x1
    80008350:	01100993          	li	s3,17
    80008354:	00f487b3          	add	a5,s1,a5
    80008358:	01b99993          	slli	s3,s3,0x1b
    8000835c:	06f9e063          	bltu	s3,a5,800083bc <kinit+0xa4>
    80008360:	00005a97          	auipc	s5,0x5
    80008364:	d70a8a93          	addi	s5,s5,-656 # 8000d0d0 <end>
    80008368:	0754ec63          	bltu	s1,s5,800083e0 <kinit+0xc8>
    8000836c:	0734fa63          	bgeu	s1,s3,800083e0 <kinit+0xc8>
    80008370:	00088a37          	lui	s4,0x88
    80008374:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008378:	00004917          	auipc	s2,0x4
    8000837c:	a5890913          	addi	s2,s2,-1448 # 8000bdd0 <kmem>
    80008380:	00ca1a13          	slli	s4,s4,0xc
    80008384:	0140006f          	j	80008398 <kinit+0x80>
    80008388:	000017b7          	lui	a5,0x1
    8000838c:	00f484b3          	add	s1,s1,a5
    80008390:	0554e863          	bltu	s1,s5,800083e0 <kinit+0xc8>
    80008394:	0534f663          	bgeu	s1,s3,800083e0 <kinit+0xc8>
    80008398:	00001637          	lui	a2,0x1
    8000839c:	00100593          	li	a1,1
    800083a0:	00048513          	mv	a0,s1
    800083a4:	00000097          	auipc	ra,0x0
    800083a8:	5e4080e7          	jalr	1508(ra) # 80008988 <__memset>
    800083ac:	00093783          	ld	a5,0(s2)
    800083b0:	00f4b023          	sd	a5,0(s1)
    800083b4:	00993023          	sd	s1,0(s2)
    800083b8:	fd4498e3          	bne	s1,s4,80008388 <kinit+0x70>
    800083bc:	03813083          	ld	ra,56(sp)
    800083c0:	03013403          	ld	s0,48(sp)
    800083c4:	02813483          	ld	s1,40(sp)
    800083c8:	02013903          	ld	s2,32(sp)
    800083cc:	01813983          	ld	s3,24(sp)
    800083d0:	01013a03          	ld	s4,16(sp)
    800083d4:	00813a83          	ld	s5,8(sp)
    800083d8:	04010113          	addi	sp,sp,64
    800083dc:	00008067          	ret
    800083e0:	00001517          	auipc	a0,0x1
    800083e4:	37850513          	addi	a0,a0,888 # 80009758 <digits+0x18>
    800083e8:	fffff097          	auipc	ra,0xfffff
    800083ec:	4b4080e7          	jalr	1204(ra) # 8000789c <panic>

00000000800083f0 <freerange>:
    800083f0:	fc010113          	addi	sp,sp,-64
    800083f4:	000017b7          	lui	a5,0x1
    800083f8:	02913423          	sd	s1,40(sp)
    800083fc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008400:	009504b3          	add	s1,a0,s1
    80008404:	fffff537          	lui	a0,0xfffff
    80008408:	02813823          	sd	s0,48(sp)
    8000840c:	02113c23          	sd	ra,56(sp)
    80008410:	03213023          	sd	s2,32(sp)
    80008414:	01313c23          	sd	s3,24(sp)
    80008418:	01413823          	sd	s4,16(sp)
    8000841c:	01513423          	sd	s5,8(sp)
    80008420:	01613023          	sd	s6,0(sp)
    80008424:	04010413          	addi	s0,sp,64
    80008428:	00a4f4b3          	and	s1,s1,a0
    8000842c:	00f487b3          	add	a5,s1,a5
    80008430:	06f5e463          	bltu	a1,a5,80008498 <freerange+0xa8>
    80008434:	00005a97          	auipc	s5,0x5
    80008438:	c9ca8a93          	addi	s5,s5,-868 # 8000d0d0 <end>
    8000843c:	0954e263          	bltu	s1,s5,800084c0 <freerange+0xd0>
    80008440:	01100993          	li	s3,17
    80008444:	01b99993          	slli	s3,s3,0x1b
    80008448:	0734fc63          	bgeu	s1,s3,800084c0 <freerange+0xd0>
    8000844c:	00058a13          	mv	s4,a1
    80008450:	00004917          	auipc	s2,0x4
    80008454:	98090913          	addi	s2,s2,-1664 # 8000bdd0 <kmem>
    80008458:	00002b37          	lui	s6,0x2
    8000845c:	0140006f          	j	80008470 <freerange+0x80>
    80008460:	000017b7          	lui	a5,0x1
    80008464:	00f484b3          	add	s1,s1,a5
    80008468:	0554ec63          	bltu	s1,s5,800084c0 <freerange+0xd0>
    8000846c:	0534fa63          	bgeu	s1,s3,800084c0 <freerange+0xd0>
    80008470:	00001637          	lui	a2,0x1
    80008474:	00100593          	li	a1,1
    80008478:	00048513          	mv	a0,s1
    8000847c:	00000097          	auipc	ra,0x0
    80008480:	50c080e7          	jalr	1292(ra) # 80008988 <__memset>
    80008484:	00093703          	ld	a4,0(s2)
    80008488:	016487b3          	add	a5,s1,s6
    8000848c:	00e4b023          	sd	a4,0(s1)
    80008490:	00993023          	sd	s1,0(s2)
    80008494:	fcfa76e3          	bgeu	s4,a5,80008460 <freerange+0x70>
    80008498:	03813083          	ld	ra,56(sp)
    8000849c:	03013403          	ld	s0,48(sp)
    800084a0:	02813483          	ld	s1,40(sp)
    800084a4:	02013903          	ld	s2,32(sp)
    800084a8:	01813983          	ld	s3,24(sp)
    800084ac:	01013a03          	ld	s4,16(sp)
    800084b0:	00813a83          	ld	s5,8(sp)
    800084b4:	00013b03          	ld	s6,0(sp)
    800084b8:	04010113          	addi	sp,sp,64
    800084bc:	00008067          	ret
    800084c0:	00001517          	auipc	a0,0x1
    800084c4:	29850513          	addi	a0,a0,664 # 80009758 <digits+0x18>
    800084c8:	fffff097          	auipc	ra,0xfffff
    800084cc:	3d4080e7          	jalr	980(ra) # 8000789c <panic>

00000000800084d0 <kfree>:
    800084d0:	fe010113          	addi	sp,sp,-32
    800084d4:	00813823          	sd	s0,16(sp)
    800084d8:	00113c23          	sd	ra,24(sp)
    800084dc:	00913423          	sd	s1,8(sp)
    800084e0:	02010413          	addi	s0,sp,32
    800084e4:	03451793          	slli	a5,a0,0x34
    800084e8:	04079c63          	bnez	a5,80008540 <kfree+0x70>
    800084ec:	00005797          	auipc	a5,0x5
    800084f0:	be478793          	addi	a5,a5,-1052 # 8000d0d0 <end>
    800084f4:	00050493          	mv	s1,a0
    800084f8:	04f56463          	bltu	a0,a5,80008540 <kfree+0x70>
    800084fc:	01100793          	li	a5,17
    80008500:	01b79793          	slli	a5,a5,0x1b
    80008504:	02f57e63          	bgeu	a0,a5,80008540 <kfree+0x70>
    80008508:	00001637          	lui	a2,0x1
    8000850c:	00100593          	li	a1,1
    80008510:	00000097          	auipc	ra,0x0
    80008514:	478080e7          	jalr	1144(ra) # 80008988 <__memset>
    80008518:	00004797          	auipc	a5,0x4
    8000851c:	8b878793          	addi	a5,a5,-1864 # 8000bdd0 <kmem>
    80008520:	0007b703          	ld	a4,0(a5)
    80008524:	01813083          	ld	ra,24(sp)
    80008528:	01013403          	ld	s0,16(sp)
    8000852c:	00e4b023          	sd	a4,0(s1)
    80008530:	0097b023          	sd	s1,0(a5)
    80008534:	00813483          	ld	s1,8(sp)
    80008538:	02010113          	addi	sp,sp,32
    8000853c:	00008067          	ret
    80008540:	00001517          	auipc	a0,0x1
    80008544:	21850513          	addi	a0,a0,536 # 80009758 <digits+0x18>
    80008548:	fffff097          	auipc	ra,0xfffff
    8000854c:	354080e7          	jalr	852(ra) # 8000789c <panic>

0000000080008550 <kalloc>:
    80008550:	fe010113          	addi	sp,sp,-32
    80008554:	00813823          	sd	s0,16(sp)
    80008558:	00913423          	sd	s1,8(sp)
    8000855c:	00113c23          	sd	ra,24(sp)
    80008560:	02010413          	addi	s0,sp,32
    80008564:	00004797          	auipc	a5,0x4
    80008568:	86c78793          	addi	a5,a5,-1940 # 8000bdd0 <kmem>
    8000856c:	0007b483          	ld	s1,0(a5)
    80008570:	02048063          	beqz	s1,80008590 <kalloc+0x40>
    80008574:	0004b703          	ld	a4,0(s1)
    80008578:	00001637          	lui	a2,0x1
    8000857c:	00500593          	li	a1,5
    80008580:	00048513          	mv	a0,s1
    80008584:	00e7b023          	sd	a4,0(a5)
    80008588:	00000097          	auipc	ra,0x0
    8000858c:	400080e7          	jalr	1024(ra) # 80008988 <__memset>
    80008590:	01813083          	ld	ra,24(sp)
    80008594:	01013403          	ld	s0,16(sp)
    80008598:	00048513          	mv	a0,s1
    8000859c:	00813483          	ld	s1,8(sp)
    800085a0:	02010113          	addi	sp,sp,32
    800085a4:	00008067          	ret

00000000800085a8 <initlock>:
    800085a8:	ff010113          	addi	sp,sp,-16
    800085ac:	00813423          	sd	s0,8(sp)
    800085b0:	01010413          	addi	s0,sp,16
    800085b4:	00813403          	ld	s0,8(sp)
    800085b8:	00b53423          	sd	a1,8(a0)
    800085bc:	00052023          	sw	zero,0(a0)
    800085c0:	00053823          	sd	zero,16(a0)
    800085c4:	01010113          	addi	sp,sp,16
    800085c8:	00008067          	ret

00000000800085cc <acquire>:
    800085cc:	fe010113          	addi	sp,sp,-32
    800085d0:	00813823          	sd	s0,16(sp)
    800085d4:	00913423          	sd	s1,8(sp)
    800085d8:	00113c23          	sd	ra,24(sp)
    800085dc:	01213023          	sd	s2,0(sp)
    800085e0:	02010413          	addi	s0,sp,32
    800085e4:	00050493          	mv	s1,a0
    800085e8:	10002973          	csrr	s2,sstatus
    800085ec:	100027f3          	csrr	a5,sstatus
    800085f0:	ffd7f793          	andi	a5,a5,-3
    800085f4:	10079073          	csrw	sstatus,a5
    800085f8:	fffff097          	auipc	ra,0xfffff
    800085fc:	8ec080e7          	jalr	-1812(ra) # 80006ee4 <mycpu>
    80008600:	07852783          	lw	a5,120(a0)
    80008604:	06078e63          	beqz	a5,80008680 <acquire+0xb4>
    80008608:	fffff097          	auipc	ra,0xfffff
    8000860c:	8dc080e7          	jalr	-1828(ra) # 80006ee4 <mycpu>
    80008610:	07852783          	lw	a5,120(a0)
    80008614:	0004a703          	lw	a4,0(s1)
    80008618:	0017879b          	addiw	a5,a5,1
    8000861c:	06f52c23          	sw	a5,120(a0)
    80008620:	04071063          	bnez	a4,80008660 <acquire+0x94>
    80008624:	00100713          	li	a4,1
    80008628:	00070793          	mv	a5,a4
    8000862c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008630:	0007879b          	sext.w	a5,a5
    80008634:	fe079ae3          	bnez	a5,80008628 <acquire+0x5c>
    80008638:	0ff0000f          	fence
    8000863c:	fffff097          	auipc	ra,0xfffff
    80008640:	8a8080e7          	jalr	-1880(ra) # 80006ee4 <mycpu>
    80008644:	01813083          	ld	ra,24(sp)
    80008648:	01013403          	ld	s0,16(sp)
    8000864c:	00a4b823          	sd	a0,16(s1)
    80008650:	00013903          	ld	s2,0(sp)
    80008654:	00813483          	ld	s1,8(sp)
    80008658:	02010113          	addi	sp,sp,32
    8000865c:	00008067          	ret
    80008660:	0104b903          	ld	s2,16(s1)
    80008664:	fffff097          	auipc	ra,0xfffff
    80008668:	880080e7          	jalr	-1920(ra) # 80006ee4 <mycpu>
    8000866c:	faa91ce3          	bne	s2,a0,80008624 <acquire+0x58>
    80008670:	00001517          	auipc	a0,0x1
    80008674:	0f050513          	addi	a0,a0,240 # 80009760 <digits+0x20>
    80008678:	fffff097          	auipc	ra,0xfffff
    8000867c:	224080e7          	jalr	548(ra) # 8000789c <panic>
    80008680:	00195913          	srli	s2,s2,0x1
    80008684:	fffff097          	auipc	ra,0xfffff
    80008688:	860080e7          	jalr	-1952(ra) # 80006ee4 <mycpu>
    8000868c:	00197913          	andi	s2,s2,1
    80008690:	07252e23          	sw	s2,124(a0)
    80008694:	f75ff06f          	j	80008608 <acquire+0x3c>

0000000080008698 <release>:
    80008698:	fe010113          	addi	sp,sp,-32
    8000869c:	00813823          	sd	s0,16(sp)
    800086a0:	00113c23          	sd	ra,24(sp)
    800086a4:	00913423          	sd	s1,8(sp)
    800086a8:	01213023          	sd	s2,0(sp)
    800086ac:	02010413          	addi	s0,sp,32
    800086b0:	00052783          	lw	a5,0(a0)
    800086b4:	00079a63          	bnez	a5,800086c8 <release+0x30>
    800086b8:	00001517          	auipc	a0,0x1
    800086bc:	0b050513          	addi	a0,a0,176 # 80009768 <digits+0x28>
    800086c0:	fffff097          	auipc	ra,0xfffff
    800086c4:	1dc080e7          	jalr	476(ra) # 8000789c <panic>
    800086c8:	01053903          	ld	s2,16(a0)
    800086cc:	00050493          	mv	s1,a0
    800086d0:	fffff097          	auipc	ra,0xfffff
    800086d4:	814080e7          	jalr	-2028(ra) # 80006ee4 <mycpu>
    800086d8:	fea910e3          	bne	s2,a0,800086b8 <release+0x20>
    800086dc:	0004b823          	sd	zero,16(s1)
    800086e0:	0ff0000f          	fence
    800086e4:	0f50000f          	fence	iorw,ow
    800086e8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800086ec:	ffffe097          	auipc	ra,0xffffe
    800086f0:	7f8080e7          	jalr	2040(ra) # 80006ee4 <mycpu>
    800086f4:	100027f3          	csrr	a5,sstatus
    800086f8:	0027f793          	andi	a5,a5,2
    800086fc:	04079a63          	bnez	a5,80008750 <release+0xb8>
    80008700:	07852783          	lw	a5,120(a0)
    80008704:	02f05e63          	blez	a5,80008740 <release+0xa8>
    80008708:	fff7871b          	addiw	a4,a5,-1
    8000870c:	06e52c23          	sw	a4,120(a0)
    80008710:	00071c63          	bnez	a4,80008728 <release+0x90>
    80008714:	07c52783          	lw	a5,124(a0)
    80008718:	00078863          	beqz	a5,80008728 <release+0x90>
    8000871c:	100027f3          	csrr	a5,sstatus
    80008720:	0027e793          	ori	a5,a5,2
    80008724:	10079073          	csrw	sstatus,a5
    80008728:	01813083          	ld	ra,24(sp)
    8000872c:	01013403          	ld	s0,16(sp)
    80008730:	00813483          	ld	s1,8(sp)
    80008734:	00013903          	ld	s2,0(sp)
    80008738:	02010113          	addi	sp,sp,32
    8000873c:	00008067          	ret
    80008740:	00001517          	auipc	a0,0x1
    80008744:	04850513          	addi	a0,a0,72 # 80009788 <digits+0x48>
    80008748:	fffff097          	auipc	ra,0xfffff
    8000874c:	154080e7          	jalr	340(ra) # 8000789c <panic>
    80008750:	00001517          	auipc	a0,0x1
    80008754:	02050513          	addi	a0,a0,32 # 80009770 <digits+0x30>
    80008758:	fffff097          	auipc	ra,0xfffff
    8000875c:	144080e7          	jalr	324(ra) # 8000789c <panic>

0000000080008760 <holding>:
    80008760:	00052783          	lw	a5,0(a0)
    80008764:	00079663          	bnez	a5,80008770 <holding+0x10>
    80008768:	00000513          	li	a0,0
    8000876c:	00008067          	ret
    80008770:	fe010113          	addi	sp,sp,-32
    80008774:	00813823          	sd	s0,16(sp)
    80008778:	00913423          	sd	s1,8(sp)
    8000877c:	00113c23          	sd	ra,24(sp)
    80008780:	02010413          	addi	s0,sp,32
    80008784:	01053483          	ld	s1,16(a0)
    80008788:	ffffe097          	auipc	ra,0xffffe
    8000878c:	75c080e7          	jalr	1884(ra) # 80006ee4 <mycpu>
    80008790:	01813083          	ld	ra,24(sp)
    80008794:	01013403          	ld	s0,16(sp)
    80008798:	40a48533          	sub	a0,s1,a0
    8000879c:	00153513          	seqz	a0,a0
    800087a0:	00813483          	ld	s1,8(sp)
    800087a4:	02010113          	addi	sp,sp,32
    800087a8:	00008067          	ret

00000000800087ac <push_off>:
    800087ac:	fe010113          	addi	sp,sp,-32
    800087b0:	00813823          	sd	s0,16(sp)
    800087b4:	00113c23          	sd	ra,24(sp)
    800087b8:	00913423          	sd	s1,8(sp)
    800087bc:	02010413          	addi	s0,sp,32
    800087c0:	100024f3          	csrr	s1,sstatus
    800087c4:	100027f3          	csrr	a5,sstatus
    800087c8:	ffd7f793          	andi	a5,a5,-3
    800087cc:	10079073          	csrw	sstatus,a5
    800087d0:	ffffe097          	auipc	ra,0xffffe
    800087d4:	714080e7          	jalr	1812(ra) # 80006ee4 <mycpu>
    800087d8:	07852783          	lw	a5,120(a0)
    800087dc:	02078663          	beqz	a5,80008808 <push_off+0x5c>
    800087e0:	ffffe097          	auipc	ra,0xffffe
    800087e4:	704080e7          	jalr	1796(ra) # 80006ee4 <mycpu>
    800087e8:	07852783          	lw	a5,120(a0)
    800087ec:	01813083          	ld	ra,24(sp)
    800087f0:	01013403          	ld	s0,16(sp)
    800087f4:	0017879b          	addiw	a5,a5,1
    800087f8:	06f52c23          	sw	a5,120(a0)
    800087fc:	00813483          	ld	s1,8(sp)
    80008800:	02010113          	addi	sp,sp,32
    80008804:	00008067          	ret
    80008808:	0014d493          	srli	s1,s1,0x1
    8000880c:	ffffe097          	auipc	ra,0xffffe
    80008810:	6d8080e7          	jalr	1752(ra) # 80006ee4 <mycpu>
    80008814:	0014f493          	andi	s1,s1,1
    80008818:	06952e23          	sw	s1,124(a0)
    8000881c:	fc5ff06f          	j	800087e0 <push_off+0x34>

0000000080008820 <pop_off>:
    80008820:	ff010113          	addi	sp,sp,-16
    80008824:	00813023          	sd	s0,0(sp)
    80008828:	00113423          	sd	ra,8(sp)
    8000882c:	01010413          	addi	s0,sp,16
    80008830:	ffffe097          	auipc	ra,0xffffe
    80008834:	6b4080e7          	jalr	1716(ra) # 80006ee4 <mycpu>
    80008838:	100027f3          	csrr	a5,sstatus
    8000883c:	0027f793          	andi	a5,a5,2
    80008840:	04079663          	bnez	a5,8000888c <pop_off+0x6c>
    80008844:	07852783          	lw	a5,120(a0)
    80008848:	02f05a63          	blez	a5,8000887c <pop_off+0x5c>
    8000884c:	fff7871b          	addiw	a4,a5,-1
    80008850:	06e52c23          	sw	a4,120(a0)
    80008854:	00071c63          	bnez	a4,8000886c <pop_off+0x4c>
    80008858:	07c52783          	lw	a5,124(a0)
    8000885c:	00078863          	beqz	a5,8000886c <pop_off+0x4c>
    80008860:	100027f3          	csrr	a5,sstatus
    80008864:	0027e793          	ori	a5,a5,2
    80008868:	10079073          	csrw	sstatus,a5
    8000886c:	00813083          	ld	ra,8(sp)
    80008870:	00013403          	ld	s0,0(sp)
    80008874:	01010113          	addi	sp,sp,16
    80008878:	00008067          	ret
    8000887c:	00001517          	auipc	a0,0x1
    80008880:	f0c50513          	addi	a0,a0,-244 # 80009788 <digits+0x48>
    80008884:	fffff097          	auipc	ra,0xfffff
    80008888:	018080e7          	jalr	24(ra) # 8000789c <panic>
    8000888c:	00001517          	auipc	a0,0x1
    80008890:	ee450513          	addi	a0,a0,-284 # 80009770 <digits+0x30>
    80008894:	fffff097          	auipc	ra,0xfffff
    80008898:	008080e7          	jalr	8(ra) # 8000789c <panic>

000000008000889c <push_on>:
    8000889c:	fe010113          	addi	sp,sp,-32
    800088a0:	00813823          	sd	s0,16(sp)
    800088a4:	00113c23          	sd	ra,24(sp)
    800088a8:	00913423          	sd	s1,8(sp)
    800088ac:	02010413          	addi	s0,sp,32
    800088b0:	100024f3          	csrr	s1,sstatus
    800088b4:	100027f3          	csrr	a5,sstatus
    800088b8:	0027e793          	ori	a5,a5,2
    800088bc:	10079073          	csrw	sstatus,a5
    800088c0:	ffffe097          	auipc	ra,0xffffe
    800088c4:	624080e7          	jalr	1572(ra) # 80006ee4 <mycpu>
    800088c8:	07852783          	lw	a5,120(a0)
    800088cc:	02078663          	beqz	a5,800088f8 <push_on+0x5c>
    800088d0:	ffffe097          	auipc	ra,0xffffe
    800088d4:	614080e7          	jalr	1556(ra) # 80006ee4 <mycpu>
    800088d8:	07852783          	lw	a5,120(a0)
    800088dc:	01813083          	ld	ra,24(sp)
    800088e0:	01013403          	ld	s0,16(sp)
    800088e4:	0017879b          	addiw	a5,a5,1
    800088e8:	06f52c23          	sw	a5,120(a0)
    800088ec:	00813483          	ld	s1,8(sp)
    800088f0:	02010113          	addi	sp,sp,32
    800088f4:	00008067          	ret
    800088f8:	0014d493          	srli	s1,s1,0x1
    800088fc:	ffffe097          	auipc	ra,0xffffe
    80008900:	5e8080e7          	jalr	1512(ra) # 80006ee4 <mycpu>
    80008904:	0014f493          	andi	s1,s1,1
    80008908:	06952e23          	sw	s1,124(a0)
    8000890c:	fc5ff06f          	j	800088d0 <push_on+0x34>

0000000080008910 <pop_on>:
    80008910:	ff010113          	addi	sp,sp,-16
    80008914:	00813023          	sd	s0,0(sp)
    80008918:	00113423          	sd	ra,8(sp)
    8000891c:	01010413          	addi	s0,sp,16
    80008920:	ffffe097          	auipc	ra,0xffffe
    80008924:	5c4080e7          	jalr	1476(ra) # 80006ee4 <mycpu>
    80008928:	100027f3          	csrr	a5,sstatus
    8000892c:	0027f793          	andi	a5,a5,2
    80008930:	04078463          	beqz	a5,80008978 <pop_on+0x68>
    80008934:	07852783          	lw	a5,120(a0)
    80008938:	02f05863          	blez	a5,80008968 <pop_on+0x58>
    8000893c:	fff7879b          	addiw	a5,a5,-1
    80008940:	06f52c23          	sw	a5,120(a0)
    80008944:	07853783          	ld	a5,120(a0)
    80008948:	00079863          	bnez	a5,80008958 <pop_on+0x48>
    8000894c:	100027f3          	csrr	a5,sstatus
    80008950:	ffd7f793          	andi	a5,a5,-3
    80008954:	10079073          	csrw	sstatus,a5
    80008958:	00813083          	ld	ra,8(sp)
    8000895c:	00013403          	ld	s0,0(sp)
    80008960:	01010113          	addi	sp,sp,16
    80008964:	00008067          	ret
    80008968:	00001517          	auipc	a0,0x1
    8000896c:	e4850513          	addi	a0,a0,-440 # 800097b0 <digits+0x70>
    80008970:	fffff097          	auipc	ra,0xfffff
    80008974:	f2c080e7          	jalr	-212(ra) # 8000789c <panic>
    80008978:	00001517          	auipc	a0,0x1
    8000897c:	e1850513          	addi	a0,a0,-488 # 80009790 <digits+0x50>
    80008980:	fffff097          	auipc	ra,0xfffff
    80008984:	f1c080e7          	jalr	-228(ra) # 8000789c <panic>

0000000080008988 <__memset>:
    80008988:	ff010113          	addi	sp,sp,-16
    8000898c:	00813423          	sd	s0,8(sp)
    80008990:	01010413          	addi	s0,sp,16
    80008994:	1a060e63          	beqz	a2,80008b50 <__memset+0x1c8>
    80008998:	40a007b3          	neg	a5,a0
    8000899c:	0077f793          	andi	a5,a5,7
    800089a0:	00778693          	addi	a3,a5,7
    800089a4:	00b00813          	li	a6,11
    800089a8:	0ff5f593          	andi	a1,a1,255
    800089ac:	fff6071b          	addiw	a4,a2,-1
    800089b0:	1b06e663          	bltu	a3,a6,80008b5c <__memset+0x1d4>
    800089b4:	1cd76463          	bltu	a4,a3,80008b7c <__memset+0x1f4>
    800089b8:	1a078e63          	beqz	a5,80008b74 <__memset+0x1ec>
    800089bc:	00b50023          	sb	a1,0(a0)
    800089c0:	00100713          	li	a4,1
    800089c4:	1ae78463          	beq	a5,a4,80008b6c <__memset+0x1e4>
    800089c8:	00b500a3          	sb	a1,1(a0)
    800089cc:	00200713          	li	a4,2
    800089d0:	1ae78a63          	beq	a5,a4,80008b84 <__memset+0x1fc>
    800089d4:	00b50123          	sb	a1,2(a0)
    800089d8:	00300713          	li	a4,3
    800089dc:	18e78463          	beq	a5,a4,80008b64 <__memset+0x1dc>
    800089e0:	00b501a3          	sb	a1,3(a0)
    800089e4:	00400713          	li	a4,4
    800089e8:	1ae78263          	beq	a5,a4,80008b8c <__memset+0x204>
    800089ec:	00b50223          	sb	a1,4(a0)
    800089f0:	00500713          	li	a4,5
    800089f4:	1ae78063          	beq	a5,a4,80008b94 <__memset+0x20c>
    800089f8:	00b502a3          	sb	a1,5(a0)
    800089fc:	00700713          	li	a4,7
    80008a00:	18e79e63          	bne	a5,a4,80008b9c <__memset+0x214>
    80008a04:	00b50323          	sb	a1,6(a0)
    80008a08:	00700e93          	li	t4,7
    80008a0c:	00859713          	slli	a4,a1,0x8
    80008a10:	00e5e733          	or	a4,a1,a4
    80008a14:	01059e13          	slli	t3,a1,0x10
    80008a18:	01c76e33          	or	t3,a4,t3
    80008a1c:	01859313          	slli	t1,a1,0x18
    80008a20:	006e6333          	or	t1,t3,t1
    80008a24:	02059893          	slli	a7,a1,0x20
    80008a28:	40f60e3b          	subw	t3,a2,a5
    80008a2c:	011368b3          	or	a7,t1,a7
    80008a30:	02859813          	slli	a6,a1,0x28
    80008a34:	0108e833          	or	a6,a7,a6
    80008a38:	03059693          	slli	a3,a1,0x30
    80008a3c:	003e589b          	srliw	a7,t3,0x3
    80008a40:	00d866b3          	or	a3,a6,a3
    80008a44:	03859713          	slli	a4,a1,0x38
    80008a48:	00389813          	slli	a6,a7,0x3
    80008a4c:	00f507b3          	add	a5,a0,a5
    80008a50:	00e6e733          	or	a4,a3,a4
    80008a54:	000e089b          	sext.w	a7,t3
    80008a58:	00f806b3          	add	a3,a6,a5
    80008a5c:	00e7b023          	sd	a4,0(a5)
    80008a60:	00878793          	addi	a5,a5,8
    80008a64:	fed79ce3          	bne	a5,a3,80008a5c <__memset+0xd4>
    80008a68:	ff8e7793          	andi	a5,t3,-8
    80008a6c:	0007871b          	sext.w	a4,a5
    80008a70:	01d787bb          	addw	a5,a5,t4
    80008a74:	0ce88e63          	beq	a7,a4,80008b50 <__memset+0x1c8>
    80008a78:	00f50733          	add	a4,a0,a5
    80008a7c:	00b70023          	sb	a1,0(a4)
    80008a80:	0017871b          	addiw	a4,a5,1
    80008a84:	0cc77663          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008a88:	00e50733          	add	a4,a0,a4
    80008a8c:	00b70023          	sb	a1,0(a4)
    80008a90:	0027871b          	addiw	a4,a5,2
    80008a94:	0ac77e63          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008a98:	00e50733          	add	a4,a0,a4
    80008a9c:	00b70023          	sb	a1,0(a4)
    80008aa0:	0037871b          	addiw	a4,a5,3
    80008aa4:	0ac77663          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008aa8:	00e50733          	add	a4,a0,a4
    80008aac:	00b70023          	sb	a1,0(a4)
    80008ab0:	0047871b          	addiw	a4,a5,4
    80008ab4:	08c77e63          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008ab8:	00e50733          	add	a4,a0,a4
    80008abc:	00b70023          	sb	a1,0(a4)
    80008ac0:	0057871b          	addiw	a4,a5,5
    80008ac4:	08c77663          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008ac8:	00e50733          	add	a4,a0,a4
    80008acc:	00b70023          	sb	a1,0(a4)
    80008ad0:	0067871b          	addiw	a4,a5,6
    80008ad4:	06c77e63          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008ad8:	00e50733          	add	a4,a0,a4
    80008adc:	00b70023          	sb	a1,0(a4)
    80008ae0:	0077871b          	addiw	a4,a5,7
    80008ae4:	06c77663          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008ae8:	00e50733          	add	a4,a0,a4
    80008aec:	00b70023          	sb	a1,0(a4)
    80008af0:	0087871b          	addiw	a4,a5,8
    80008af4:	04c77e63          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008af8:	00e50733          	add	a4,a0,a4
    80008afc:	00b70023          	sb	a1,0(a4)
    80008b00:	0097871b          	addiw	a4,a5,9
    80008b04:	04c77663          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008b08:	00e50733          	add	a4,a0,a4
    80008b0c:	00b70023          	sb	a1,0(a4)
    80008b10:	00a7871b          	addiw	a4,a5,10
    80008b14:	02c77e63          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008b18:	00e50733          	add	a4,a0,a4
    80008b1c:	00b70023          	sb	a1,0(a4)
    80008b20:	00b7871b          	addiw	a4,a5,11
    80008b24:	02c77663          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008b28:	00e50733          	add	a4,a0,a4
    80008b2c:	00b70023          	sb	a1,0(a4)
    80008b30:	00c7871b          	addiw	a4,a5,12
    80008b34:	00c77e63          	bgeu	a4,a2,80008b50 <__memset+0x1c8>
    80008b38:	00e50733          	add	a4,a0,a4
    80008b3c:	00b70023          	sb	a1,0(a4)
    80008b40:	00d7879b          	addiw	a5,a5,13
    80008b44:	00c7f663          	bgeu	a5,a2,80008b50 <__memset+0x1c8>
    80008b48:	00f507b3          	add	a5,a0,a5
    80008b4c:	00b78023          	sb	a1,0(a5)
    80008b50:	00813403          	ld	s0,8(sp)
    80008b54:	01010113          	addi	sp,sp,16
    80008b58:	00008067          	ret
    80008b5c:	00b00693          	li	a3,11
    80008b60:	e55ff06f          	j	800089b4 <__memset+0x2c>
    80008b64:	00300e93          	li	t4,3
    80008b68:	ea5ff06f          	j	80008a0c <__memset+0x84>
    80008b6c:	00100e93          	li	t4,1
    80008b70:	e9dff06f          	j	80008a0c <__memset+0x84>
    80008b74:	00000e93          	li	t4,0
    80008b78:	e95ff06f          	j	80008a0c <__memset+0x84>
    80008b7c:	00000793          	li	a5,0
    80008b80:	ef9ff06f          	j	80008a78 <__memset+0xf0>
    80008b84:	00200e93          	li	t4,2
    80008b88:	e85ff06f          	j	80008a0c <__memset+0x84>
    80008b8c:	00400e93          	li	t4,4
    80008b90:	e7dff06f          	j	80008a0c <__memset+0x84>
    80008b94:	00500e93          	li	t4,5
    80008b98:	e75ff06f          	j	80008a0c <__memset+0x84>
    80008b9c:	00600e93          	li	t4,6
    80008ba0:	e6dff06f          	j	80008a0c <__memset+0x84>

0000000080008ba4 <__memmove>:
    80008ba4:	ff010113          	addi	sp,sp,-16
    80008ba8:	00813423          	sd	s0,8(sp)
    80008bac:	01010413          	addi	s0,sp,16
    80008bb0:	0e060863          	beqz	a2,80008ca0 <__memmove+0xfc>
    80008bb4:	fff6069b          	addiw	a3,a2,-1
    80008bb8:	0006881b          	sext.w	a6,a3
    80008bbc:	0ea5e863          	bltu	a1,a0,80008cac <__memmove+0x108>
    80008bc0:	00758713          	addi	a4,a1,7
    80008bc4:	00a5e7b3          	or	a5,a1,a0
    80008bc8:	40a70733          	sub	a4,a4,a0
    80008bcc:	0077f793          	andi	a5,a5,7
    80008bd0:	00f73713          	sltiu	a4,a4,15
    80008bd4:	00174713          	xori	a4,a4,1
    80008bd8:	0017b793          	seqz	a5,a5
    80008bdc:	00e7f7b3          	and	a5,a5,a4
    80008be0:	10078863          	beqz	a5,80008cf0 <__memmove+0x14c>
    80008be4:	00900793          	li	a5,9
    80008be8:	1107f463          	bgeu	a5,a6,80008cf0 <__memmove+0x14c>
    80008bec:	0036581b          	srliw	a6,a2,0x3
    80008bf0:	fff8081b          	addiw	a6,a6,-1
    80008bf4:	02081813          	slli	a6,a6,0x20
    80008bf8:	01d85893          	srli	a7,a6,0x1d
    80008bfc:	00858813          	addi	a6,a1,8
    80008c00:	00058793          	mv	a5,a1
    80008c04:	00050713          	mv	a4,a0
    80008c08:	01088833          	add	a6,a7,a6
    80008c0c:	0007b883          	ld	a7,0(a5)
    80008c10:	00878793          	addi	a5,a5,8
    80008c14:	00870713          	addi	a4,a4,8
    80008c18:	ff173c23          	sd	a7,-8(a4)
    80008c1c:	ff0798e3          	bne	a5,a6,80008c0c <__memmove+0x68>
    80008c20:	ff867713          	andi	a4,a2,-8
    80008c24:	02071793          	slli	a5,a4,0x20
    80008c28:	0207d793          	srli	a5,a5,0x20
    80008c2c:	00f585b3          	add	a1,a1,a5
    80008c30:	40e686bb          	subw	a3,a3,a4
    80008c34:	00f507b3          	add	a5,a0,a5
    80008c38:	06e60463          	beq	a2,a4,80008ca0 <__memmove+0xfc>
    80008c3c:	0005c703          	lbu	a4,0(a1)
    80008c40:	00e78023          	sb	a4,0(a5)
    80008c44:	04068e63          	beqz	a3,80008ca0 <__memmove+0xfc>
    80008c48:	0015c603          	lbu	a2,1(a1)
    80008c4c:	00100713          	li	a4,1
    80008c50:	00c780a3          	sb	a2,1(a5)
    80008c54:	04e68663          	beq	a3,a4,80008ca0 <__memmove+0xfc>
    80008c58:	0025c603          	lbu	a2,2(a1)
    80008c5c:	00200713          	li	a4,2
    80008c60:	00c78123          	sb	a2,2(a5)
    80008c64:	02e68e63          	beq	a3,a4,80008ca0 <__memmove+0xfc>
    80008c68:	0035c603          	lbu	a2,3(a1)
    80008c6c:	00300713          	li	a4,3
    80008c70:	00c781a3          	sb	a2,3(a5)
    80008c74:	02e68663          	beq	a3,a4,80008ca0 <__memmove+0xfc>
    80008c78:	0045c603          	lbu	a2,4(a1)
    80008c7c:	00400713          	li	a4,4
    80008c80:	00c78223          	sb	a2,4(a5)
    80008c84:	00e68e63          	beq	a3,a4,80008ca0 <__memmove+0xfc>
    80008c88:	0055c603          	lbu	a2,5(a1)
    80008c8c:	00500713          	li	a4,5
    80008c90:	00c782a3          	sb	a2,5(a5)
    80008c94:	00e68663          	beq	a3,a4,80008ca0 <__memmove+0xfc>
    80008c98:	0065c703          	lbu	a4,6(a1)
    80008c9c:	00e78323          	sb	a4,6(a5)
    80008ca0:	00813403          	ld	s0,8(sp)
    80008ca4:	01010113          	addi	sp,sp,16
    80008ca8:	00008067          	ret
    80008cac:	02061713          	slli	a4,a2,0x20
    80008cb0:	02075713          	srli	a4,a4,0x20
    80008cb4:	00e587b3          	add	a5,a1,a4
    80008cb8:	f0f574e3          	bgeu	a0,a5,80008bc0 <__memmove+0x1c>
    80008cbc:	02069613          	slli	a2,a3,0x20
    80008cc0:	02065613          	srli	a2,a2,0x20
    80008cc4:	fff64613          	not	a2,a2
    80008cc8:	00e50733          	add	a4,a0,a4
    80008ccc:	00c78633          	add	a2,a5,a2
    80008cd0:	fff7c683          	lbu	a3,-1(a5)
    80008cd4:	fff78793          	addi	a5,a5,-1
    80008cd8:	fff70713          	addi	a4,a4,-1
    80008cdc:	00d70023          	sb	a3,0(a4)
    80008ce0:	fec798e3          	bne	a5,a2,80008cd0 <__memmove+0x12c>
    80008ce4:	00813403          	ld	s0,8(sp)
    80008ce8:	01010113          	addi	sp,sp,16
    80008cec:	00008067          	ret
    80008cf0:	02069713          	slli	a4,a3,0x20
    80008cf4:	02075713          	srli	a4,a4,0x20
    80008cf8:	00170713          	addi	a4,a4,1
    80008cfc:	00e50733          	add	a4,a0,a4
    80008d00:	00050793          	mv	a5,a0
    80008d04:	0005c683          	lbu	a3,0(a1)
    80008d08:	00178793          	addi	a5,a5,1
    80008d0c:	00158593          	addi	a1,a1,1
    80008d10:	fed78fa3          	sb	a3,-1(a5)
    80008d14:	fee798e3          	bne	a5,a4,80008d04 <__memmove+0x160>
    80008d18:	f89ff06f          	j	80008ca0 <__memmove+0xfc>

0000000080008d1c <__putc>:
    80008d1c:	fe010113          	addi	sp,sp,-32
    80008d20:	00813823          	sd	s0,16(sp)
    80008d24:	00113c23          	sd	ra,24(sp)
    80008d28:	02010413          	addi	s0,sp,32
    80008d2c:	00050793          	mv	a5,a0
    80008d30:	fef40593          	addi	a1,s0,-17
    80008d34:	00100613          	li	a2,1
    80008d38:	00000513          	li	a0,0
    80008d3c:	fef407a3          	sb	a5,-17(s0)
    80008d40:	fffff097          	auipc	ra,0xfffff
    80008d44:	b3c080e7          	jalr	-1220(ra) # 8000787c <console_write>
    80008d48:	01813083          	ld	ra,24(sp)
    80008d4c:	01013403          	ld	s0,16(sp)
    80008d50:	02010113          	addi	sp,sp,32
    80008d54:	00008067          	ret

0000000080008d58 <__getc>:
    80008d58:	fe010113          	addi	sp,sp,-32
    80008d5c:	00813823          	sd	s0,16(sp)
    80008d60:	00113c23          	sd	ra,24(sp)
    80008d64:	02010413          	addi	s0,sp,32
    80008d68:	fe840593          	addi	a1,s0,-24
    80008d6c:	00100613          	li	a2,1
    80008d70:	00000513          	li	a0,0
    80008d74:	fffff097          	auipc	ra,0xfffff
    80008d78:	ae8080e7          	jalr	-1304(ra) # 8000785c <console_read>
    80008d7c:	fe844503          	lbu	a0,-24(s0)
    80008d80:	01813083          	ld	ra,24(sp)
    80008d84:	01013403          	ld	s0,16(sp)
    80008d88:	02010113          	addi	sp,sp,32
    80008d8c:	00008067          	ret

0000000080008d90 <console_handler>:
    80008d90:	fe010113          	addi	sp,sp,-32
    80008d94:	00813823          	sd	s0,16(sp)
    80008d98:	00113c23          	sd	ra,24(sp)
    80008d9c:	00913423          	sd	s1,8(sp)
    80008da0:	02010413          	addi	s0,sp,32
    80008da4:	14202773          	csrr	a4,scause
    80008da8:	100027f3          	csrr	a5,sstatus
    80008dac:	0027f793          	andi	a5,a5,2
    80008db0:	06079e63          	bnez	a5,80008e2c <console_handler+0x9c>
    80008db4:	00074c63          	bltz	a4,80008dcc <console_handler+0x3c>
    80008db8:	01813083          	ld	ra,24(sp)
    80008dbc:	01013403          	ld	s0,16(sp)
    80008dc0:	00813483          	ld	s1,8(sp)
    80008dc4:	02010113          	addi	sp,sp,32
    80008dc8:	00008067          	ret
    80008dcc:	0ff77713          	andi	a4,a4,255
    80008dd0:	00900793          	li	a5,9
    80008dd4:	fef712e3          	bne	a4,a5,80008db8 <console_handler+0x28>
    80008dd8:	ffffe097          	auipc	ra,0xffffe
    80008ddc:	6dc080e7          	jalr	1756(ra) # 800074b4 <plic_claim>
    80008de0:	00a00793          	li	a5,10
    80008de4:	00050493          	mv	s1,a0
    80008de8:	02f50c63          	beq	a0,a5,80008e20 <console_handler+0x90>
    80008dec:	fc0506e3          	beqz	a0,80008db8 <console_handler+0x28>
    80008df0:	00050593          	mv	a1,a0
    80008df4:	00001517          	auipc	a0,0x1
    80008df8:	8c450513          	addi	a0,a0,-1852 # 800096b8 <CONSOLE_STATUS+0x6a8>
    80008dfc:	fffff097          	auipc	ra,0xfffff
    80008e00:	afc080e7          	jalr	-1284(ra) # 800078f8 <__printf>
    80008e04:	01013403          	ld	s0,16(sp)
    80008e08:	01813083          	ld	ra,24(sp)
    80008e0c:	00048513          	mv	a0,s1
    80008e10:	00813483          	ld	s1,8(sp)
    80008e14:	02010113          	addi	sp,sp,32
    80008e18:	ffffe317          	auipc	t1,0xffffe
    80008e1c:	6d430067          	jr	1748(t1) # 800074ec <plic_complete>
    80008e20:	fffff097          	auipc	ra,0xfffff
    80008e24:	3e0080e7          	jalr	992(ra) # 80008200 <uartintr>
    80008e28:	fddff06f          	j	80008e04 <console_handler+0x74>
    80008e2c:	00001517          	auipc	a0,0x1
    80008e30:	98c50513          	addi	a0,a0,-1652 # 800097b8 <digits+0x78>
    80008e34:	fffff097          	auipc	ra,0xfffff
    80008e38:	a68080e7          	jalr	-1432(ra) # 8000789c <panic>
	...
