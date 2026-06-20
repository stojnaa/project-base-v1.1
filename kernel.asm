
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	d9013103          	ld	sp,-624(sp) # 8000bd90 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	415060ef          	jal	ra,80006c30 <start>

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
    80001090:	229000ef          	jal	ra,80001ab8 <handleSupervisorTrap>

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

00000000800013c4 <_Z11thread_joinP7_thread>:
void thread_join(thread_t handle) {
    800013c4:	ff010113          	addi	sp,sp,-16
    800013c8:	00113423          	sd	ra,8(sp)
    800013cc:	00813023          	sd	s0,0(sp)
    800013d0:	01010413          	addi	s0,sp,16
    800013d4:	00050593          	mv	a1,a0
     doSyscall(0x14, (uint64)handle);
    800013d8:	00000713          	li	a4,0
    800013dc:	00000693          	li	a3,0
    800013e0:	00000613          	li	a2,0
    800013e4:	01400513          	li	a0,20
    800013e8:	00000097          	auipc	ra,0x0
    800013ec:	ddc080e7          	jalr	-548(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800013f0:	00813083          	ld	ra,8(sp)
    800013f4:	00013403          	ld	s0,0(sp)
    800013f8:	01010113          	addi	sp,sp,16
    800013fc:	00008067          	ret

0000000080001400 <_Z8sem_openPP4_semj>:
int sem_open(sem_t* handle, unsigned init) {
    80001400:	ff010113          	addi	sp,sp,-16
    80001404:	00113423          	sd	ra,8(sp)
    80001408:	00813023          	sd	s0,0(sp)
    8000140c:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x21, (uint64)handle, (uint64)init);
    80001410:	00000713          	li	a4,0
    80001414:	00000693          	li	a3,0
    80001418:	02059613          	slli	a2,a1,0x20
    8000141c:	02065613          	srli	a2,a2,0x20
    80001420:	00050593          	mv	a1,a0
    80001424:	02100513          	li	a0,33
    80001428:	00000097          	auipc	ra,0x0
    8000142c:	d9c080e7          	jalr	-612(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001430:	0005051b          	sext.w	a0,a0
    80001434:	00813083          	ld	ra,8(sp)
    80001438:	00013403          	ld	s0,0(sp)
    8000143c:	01010113          	addi	sp,sp,16
    80001440:	00008067          	ret

0000000080001444 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    80001444:	ff010113          	addi	sp,sp,-16
    80001448:	00113423          	sd	ra,8(sp)
    8000144c:	00813023          	sd	s0,0(sp)
    80001450:	01010413          	addi	s0,sp,16
    80001454:	00050593          	mv	a1,a0
    return (int)doSyscall(0x22, (uint64)handle);
    80001458:	00000713          	li	a4,0
    8000145c:	00000693          	li	a3,0
    80001460:	00000613          	li	a2,0
    80001464:	02200513          	li	a0,34
    80001468:	00000097          	auipc	ra,0x0
    8000146c:	d5c080e7          	jalr	-676(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001470:	0005051b          	sext.w	a0,a0
    80001474:	00813083          	ld	ra,8(sp)
    80001478:	00013403          	ld	s0,0(sp)
    8000147c:	01010113          	addi	sp,sp,16
    80001480:	00008067          	ret

0000000080001484 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    80001484:	ff010113          	addi	sp,sp,-16
    80001488:	00113423          	sd	ra,8(sp)
    8000148c:	00813023          	sd	s0,0(sp)
    80001490:	01010413          	addi	s0,sp,16
    80001494:	00050593          	mv	a1,a0
    return (int)doSyscall(0x23, (uint64)id);
    80001498:	00000713          	li	a4,0
    8000149c:	00000693          	li	a3,0
    800014a0:	00000613          	li	a2,0
    800014a4:	02300513          	li	a0,35
    800014a8:	00000097          	auipc	ra,0x0
    800014ac:	d1c080e7          	jalr	-740(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800014b0:	0005051b          	sext.w	a0,a0
    800014b4:	00813083          	ld	ra,8(sp)
    800014b8:	00013403          	ld	s0,0(sp)
    800014bc:	01010113          	addi	sp,sp,16
    800014c0:	00008067          	ret

00000000800014c4 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    800014c4:	ff010113          	addi	sp,sp,-16
    800014c8:	00113423          	sd	ra,8(sp)
    800014cc:	00813023          	sd	s0,0(sp)
    800014d0:	01010413          	addi	s0,sp,16
    800014d4:	00050593          	mv	a1,a0
    return (int)doSyscall(0x24, (uint64)id);
    800014d8:	00000713          	li	a4,0
    800014dc:	00000693          	li	a3,0
    800014e0:	00000613          	li	a2,0
    800014e4:	02400513          	li	a0,36
    800014e8:	00000097          	auipc	ra,0x0
    800014ec:	cdc080e7          	jalr	-804(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800014f0:	0005051b          	sext.w	a0,a0
    800014f4:	00813083          	ld	ra,8(sp)
    800014f8:	00013403          	ld	s0,0(sp)
    800014fc:	01010113          	addi	sp,sp,16
    80001500:	00008067          	ret

0000000080001504 <_Z10sem_wait_nP4_semj>:

int sem_wait_n(sem_t id, unsigned n) {
    80001504:	ff010113          	addi	sp,sp,-16
    80001508:	00113423          	sd	ra,8(sp)
    8000150c:	00813023          	sd	s0,0(sp)
    80001510:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x25, (uint64)id, (uint64)n);
    80001514:	00000713          	li	a4,0
    80001518:	00000693          	li	a3,0
    8000151c:	02059613          	slli	a2,a1,0x20
    80001520:	02065613          	srli	a2,a2,0x20
    80001524:	00050593          	mv	a1,a0
    80001528:	02500513          	li	a0,37
    8000152c:	00000097          	auipc	ra,0x0
    80001530:	c98080e7          	jalr	-872(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001534:	0005051b          	sext.w	a0,a0
    80001538:	00813083          	ld	ra,8(sp)
    8000153c:	00013403          	ld	s0,0(sp)
    80001540:	01010113          	addi	sp,sp,16
    80001544:	00008067          	ret

0000000080001548 <_Z12sem_signal_nP4_semj>:

int sem_signal_n(sem_t id, unsigned n) {
    80001548:	ff010113          	addi	sp,sp,-16
    8000154c:	00113423          	sd	ra,8(sp)
    80001550:	00813023          	sd	s0,0(sp)
    80001554:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x26, (uint64)id, (uint64)n);
    80001558:	00000713          	li	a4,0
    8000155c:	00000693          	li	a3,0
    80001560:	02059613          	slli	a2,a1,0x20
    80001564:	02065613          	srli	a2,a2,0x20
    80001568:	00050593          	mv	a1,a0
    8000156c:	02600513          	li	a0,38
    80001570:	00000097          	auipc	ra,0x0
    80001574:	c54080e7          	jalr	-940(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001578:	0005051b          	sext.w	a0,a0
    8000157c:	00813083          	ld	ra,8(sp)
    80001580:	00013403          	ld	s0,0(sp)
    80001584:	01010113          	addi	sp,sp,16
    80001588:	00008067          	ret

000000008000158c <_Z10time_sleepm>:
int time_sleep(time_t time) {
    8000158c:	ff010113          	addi	sp,sp,-16
    80001590:	00113423          	sd	ra,8(sp)
    80001594:	00813023          	sd	s0,0(sp)
    80001598:	01010413          	addi	s0,sp,16
    8000159c:	00050593          	mv	a1,a0
    return (int)doSyscall(0x31, (uint64)time);
    800015a0:	00000713          	li	a4,0
    800015a4:	00000693          	li	a3,0
    800015a8:	00000613          	li	a2,0
    800015ac:	03100513          	li	a0,49
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	c14080e7          	jalr	-1004(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800015b8:	0005051b          	sext.w	a0,a0
    800015bc:	00813083          	ld	ra,8(sp)
    800015c0:	00013403          	ld	s0,0(sp)
    800015c4:	01010113          	addi	sp,sp,16
    800015c8:	00008067          	ret

00000000800015cc <_Z4getcv>:

char getc() {
    800015cc:	ff010113          	addi	sp,sp,-16
    800015d0:	00113423          	sd	ra,8(sp)
    800015d4:	00813023          	sd	s0,0(sp)
    800015d8:	01010413          	addi	s0,sp,16
    return (char)doSyscall(0x41);
    800015dc:	00000713          	li	a4,0
    800015e0:	00000693          	li	a3,0
    800015e4:	00000613          	li	a2,0
    800015e8:	00000593          	li	a1,0
    800015ec:	04100513          	li	a0,65
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	bd4080e7          	jalr	-1068(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800015f8:	0ff57513          	andi	a0,a0,255
    800015fc:	00813083          	ld	ra,8(sp)
    80001600:	00013403          	ld	s0,0(sp)
    80001604:	01010113          	addi	sp,sp,16
    80001608:	00008067          	ret

000000008000160c <_Z4putcc>:

void putc(char c) {
    8000160c:	ff010113          	addi	sp,sp,-16
    80001610:	00113423          	sd	ra,8(sp)
    80001614:	00813023          	sd	s0,0(sp)
    80001618:	01010413          	addi	s0,sp,16
    8000161c:	00050593          	mv	a1,a0
    doSyscall(0x42, (uint64)c);
    80001620:	00000713          	li	a4,0
    80001624:	00000693          	li	a3,0
    80001628:	00000613          	li	a2,0
    8000162c:	04200513          	li	a0,66
    80001630:	00000097          	auipc	ra,0x0
    80001634:	b94080e7          	jalr	-1132(ra) # 800011c4 <_ZL9doSyscallmmmmm>
    80001638:	00813083          	ld	ra,8(sp)
    8000163c:	00013403          	ld	s0,0(sp)
    80001640:	01010113          	addi	sp,sp,16
    80001644:	00008067          	ret

0000000080001648 <_ZL23blocksForBytesSemaphorem>:
#include "../h/Semaphore.hpp"
#include "../h/Thread.hpp"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"

static size_t blocksForBytesSemaphore(size_t bytes) {
    80001648:	ff010113          	addi	sp,sp,-16
    8000164c:	00813423          	sd	s0,8(sp)
    80001650:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001654:	03f50513          	addi	a0,a0,63 # 103f <_entry-0x7fffefc1>
}
    80001658:	00655513          	srli	a0,a0,0x6
    8000165c:	00813403          	ld	s0,8(sp)
    80001660:	01010113          	addi	sp,sp,16
    80001664:	00008067          	ret

0000000080001668 <_ZN4_semnwEm>:

void* _sem::operator new(size_t size) {
    80001668:	fe010113          	addi	sp,sp,-32
    8000166c:	00113c23          	sd	ra,24(sp)
    80001670:	00813823          	sd	s0,16(sp)
    80001674:	00913423          	sd	s1,8(sp)
    80001678:	01213023          	sd	s2,0(sp)
    8000167c:	02010413          	addi	s0,sp,32
    80001680:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytesSemaphore(size));
    80001684:	00002097          	auipc	ra,0x2
    80001688:	cbc080e7          	jalr	-836(ra) # 80003340 <_ZN15MemoryAllocator11getInstanceEv>
    8000168c:	00050493          	mv	s1,a0
    80001690:	00090513          	mv	a0,s2
    80001694:	00000097          	auipc	ra,0x0
    80001698:	fb4080e7          	jalr	-76(ra) # 80001648 <_ZL23blocksForBytesSemaphorem>
    8000169c:	00050593          	mv	a1,a0
    800016a0:	00048513          	mv	a0,s1
    800016a4:	00002097          	auipc	ra,0x2
    800016a8:	d1c080e7          	jalr	-740(ra) # 800033c0 <_ZN15MemoryAllocator6mallocEm>
}
    800016ac:	01813083          	ld	ra,24(sp)
    800016b0:	01013403          	ld	s0,16(sp)
    800016b4:	00813483          	ld	s1,8(sp)
    800016b8:	00013903          	ld	s2,0(sp)
    800016bc:	02010113          	addi	sp,sp,32
    800016c0:	00008067          	ret

00000000800016c4 <_ZN4_semdlEPv>:

void _sem::operator delete(void* ptr) {
    if (ptr == nullptr) {
    800016c4:	04050263          	beqz	a0,80001708 <_ZN4_semdlEPv+0x44>
void _sem::operator delete(void* ptr) {
    800016c8:	fe010113          	addi	sp,sp,-32
    800016cc:	00113c23          	sd	ra,24(sp)
    800016d0:	00813823          	sd	s0,16(sp)
    800016d4:	00913423          	sd	s1,8(sp)
    800016d8:	02010413          	addi	s0,sp,32
    800016dc:	00050493          	mv	s1,a0
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
    800016e0:	00002097          	auipc	ra,0x2
    800016e4:	c60080e7          	jalr	-928(ra) # 80003340 <_ZN15MemoryAllocator11getInstanceEv>
    800016e8:	00048593          	mv	a1,s1
    800016ec:	00002097          	auipc	ra,0x2
    800016f0:	e30080e7          	jalr	-464(ra) # 8000351c <_ZN15MemoryAllocator4freeEPv>
}
    800016f4:	01813083          	ld	ra,24(sp)
    800016f8:	01013403          	ld	s0,16(sp)
    800016fc:	00813483          	ld	s1,8(sp)
    80001700:	02010113          	addi	sp,sp,32
    80001704:	00008067          	ret
    80001708:	00008067          	ret

000000008000170c <_ZN4_semC1Ej>:

_sem::_sem(unsigned init) {
    8000170c:	ff010113          	addi	sp,sp,-16
    80001710:	00813423          	sd	s0,8(sp)
    80001714:	01010413          	addi	s0,sp,16
    val = (int)init;
    80001718:	00b52023          	sw	a1,0(a0)
    closed = false;
    8000171c:	00050223          	sb	zero,4(a0)
    head = nullptr;
    80001720:	00053423          	sd	zero,8(a0)
    tail = nullptr;
    80001724:	00053823          	sd	zero,16(a0)
}
    80001728:	00813403          	ld	s0,8(sp)
    8000172c:	01010113          	addi	sp,sp,16
    80001730:	00008067          	ret

0000000080001734 <_ZN4_sem15createSemaphoreEj>:

_sem* _sem::createSemaphore(unsigned init) {
    80001734:	fe010113          	addi	sp,sp,-32
    80001738:	00113c23          	sd	ra,24(sp)
    8000173c:	00813823          	sd	s0,16(sp)
    80001740:	00913423          	sd	s1,8(sp)
    80001744:	01213023          	sd	s2,0(sp)
    80001748:	02010413          	addi	s0,sp,32
    8000174c:	00050913          	mv	s2,a0
    return new _sem(init);
    80001750:	01800513          	li	a0,24
    80001754:	00000097          	auipc	ra,0x0
    80001758:	f14080e7          	jalr	-236(ra) # 80001668 <_ZN4_semnwEm>
    8000175c:	00050493          	mv	s1,a0
    80001760:	00090593          	mv	a1,s2
    80001764:	00000097          	auipc	ra,0x0
    80001768:	fa8080e7          	jalr	-88(ra) # 8000170c <_ZN4_semC1Ej>
}
    8000176c:	00048513          	mv	a0,s1
    80001770:	01813083          	ld	ra,24(sp)
    80001774:	01013403          	ld	s0,16(sp)
    80001778:	00813483          	ld	s1,8(sp)
    8000177c:	00013903          	ld	s2,0(sp)
    80001780:	02010113          	addi	sp,sp,32
    80001784:	00008067          	ret

0000000080001788 <_ZN4_sem16destroySemaphoreEPS_>:

int _sem::destroySemaphore(_sem* sem) {
    if (sem == nullptr) {
    80001788:	02050863          	beqz	a0,800017b8 <_ZN4_sem16destroySemaphoreEPS_+0x30>
int _sem::destroySemaphore(_sem* sem) {
    8000178c:	ff010113          	addi	sp,sp,-16
    80001790:	00113423          	sd	ra,8(sp)
    80001794:	00813023          	sd	s0,0(sp)
    80001798:	01010413          	addi	s0,sp,16
        return -1;
    }

    delete sem;
    8000179c:	00000097          	auipc	ra,0x0
    800017a0:	f28080e7          	jalr	-216(ra) # 800016c4 <_ZN4_semdlEPv>
    return 0;
    800017a4:	00000513          	li	a0,0
}
    800017a8:	00813083          	ld	ra,8(sp)
    800017ac:	00013403          	ld	s0,0(sp)
    800017b0:	01010113          	addi	sp,sp,16
    800017b4:	00008067          	ret
        return -1;
    800017b8:	fff00513          	li	a0,-1
}
    800017bc:	00008067          	ret

00000000800017c0 <_ZN4_sem5blockEPNS_11BlockedNodeE>:
    unblockReady();

    return 0;
}

void _sem::block(BlockedNode* node) {
    800017c0:	ff010113          	addi	sp,sp,-16
    800017c4:	00813423          	sd	s0,8(sp)
    800017c8:	01010413          	addi	s0,sp,16
    if (node == nullptr) {
    800017cc:	00058e63          	beqz	a1,800017e8 <_ZN4_sem5blockEPNS_11BlockedNodeE+0x28>
        return;
    }

    node->next = nullptr;
    800017d0:	0005b823          	sd	zero,16(a1)

    if (head == nullptr) {
    800017d4:	00853783          	ld	a5,8(a0)
    800017d8:	00078e63          	beqz	a5,800017f4 <_ZN4_sem5blockEPNS_11BlockedNodeE+0x34>
        head = node;
        tail = node;
    } else {
        tail->next = node;
    800017dc:	01053783          	ld	a5,16(a0)
    800017e0:	00b7b823          	sd	a1,16(a5)
        tail = node;
    800017e4:	00b53823          	sd	a1,16(a0)
    }
}
    800017e8:	00813403          	ld	s0,8(sp)
    800017ec:	01010113          	addi	sp,sp,16
    800017f0:	00008067          	ret
        head = node;
    800017f4:	00b53423          	sd	a1,8(a0)
        tail = node;
    800017f8:	00b53823          	sd	a1,16(a0)
    800017fc:	fedff06f          	j	800017e8 <_ZN4_sem5blockEPNS_11BlockedNodeE+0x28>

0000000080001800 <_ZN4_sem5waitNEj>:
    if (_thread::running == nullptr) {
    80001800:	0000a797          	auipc	a5,0xa
    80001804:	5807b783          	ld	a5,1408(a5) # 8000bd80 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001808:	0007b783          	ld	a5,0(a5)
    8000180c:	08078a63          	beqz	a5,800018a0 <_ZN4_sem5waitNEj+0xa0>
    if (closed) {
    80001810:	00454703          	lbu	a4,4(a0)
    80001814:	08071a63          	bnez	a4,800018a8 <_ZN4_sem5waitNEj+0xa8>
    if (n == 0) {
    80001818:	08058c63          	beqz	a1,800018b0 <_ZN4_sem5waitNEj+0xb0>
    if (head == nullptr && val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
    8000181c:	00853703          	ld	a4,8(a0)
    80001820:	06070263          	beqz	a4,80001884 <_ZN4_sem5waitNEj+0x84>
int _sem::waitN(unsigned n) {
    80001824:	fd010113          	addi	sp,sp,-48
    80001828:	02113423          	sd	ra,40(sp)
    8000182c:	02813023          	sd	s0,32(sp)
    80001830:	03010413          	addi	s0,sp,48
    node.thread = _thread::running;
    80001834:	fcf43c23          	sd	a5,-40(s0)
    node.requested = n;
    80001838:	feb42023          	sw	a1,-32(s0)
    node.status = 0;
    8000183c:	fe042223          	sw	zero,-28(s0)
    node.next = nullptr;
    80001840:	fe043423          	sd	zero,-24(s0)
    block(&node);
    80001844:	fd840593          	addi	a1,s0,-40
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	f78080e7          	jalr	-136(ra) # 800017c0 <_ZN4_sem5blockEPNS_11BlockedNodeE>
    _thread::running->setState(_thread::BLOCKED);
    80001850:	00300593          	li	a1,3
    80001854:	0000a797          	auipc	a5,0xa
    80001858:	52c7b783          	ld	a5,1324(a5) # 8000bd80 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000185c:	0007b503          	ld	a0,0(a5)
    80001860:	00001097          	auipc	ra,0x1
    80001864:	ac8080e7          	jalr	-1336(ra) # 80002328 <_ZN7_thread8setStateENS_5StateE>
    _thread::dispatch();
    80001868:	00001097          	auipc	ra,0x1
    8000186c:	878080e7          	jalr	-1928(ra) # 800020e0 <_ZN7_thread8dispatchEv>
    return node.status;
    80001870:	fe442503          	lw	a0,-28(s0)
}
    80001874:	02813083          	ld	ra,40(sp)
    80001878:	02013403          	ld	s0,32(sp)
    8000187c:	03010113          	addi	sp,sp,48
    80001880:	00008067          	ret
    if (head == nullptr && val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
    80001884:	00052703          	lw	a4,0(a0)
    80001888:	0005869b          	sext.w	a3,a1
    8000188c:	f8d74ce3          	blt	a4,a3,80001824 <_ZN4_sem5waitNEj+0x24>
        val -= (int)n;
    80001890:	40d7073b          	subw	a4,a4,a3
    80001894:	00e52023          	sw	a4,0(a0)
        return 0;
    80001898:	00000513          	li	a0,0
    8000189c:	00008067          	ret
        return -1;
    800018a0:	fff00513          	li	a0,-1
    800018a4:	00008067          	ret
        return -1;
    800018a8:	fff00513          	li	a0,-1
    800018ac:	00008067          	ret
        return 0;
    800018b0:	00000513          	li	a0,0
}
    800018b4:	00008067          	ret

00000000800018b8 <_ZN4_sem4waitEv>:
int _sem::wait() {
    800018b8:	ff010113          	addi	sp,sp,-16
    800018bc:	00113423          	sd	ra,8(sp)
    800018c0:	00813023          	sd	s0,0(sp)
    800018c4:	01010413          	addi	s0,sp,16
    return waitN(1);
    800018c8:	00100593          	li	a1,1
    800018cc:	00000097          	auipc	ra,0x0
    800018d0:	f34080e7          	jalr	-204(ra) # 80001800 <_ZN4_sem5waitNEj>
}
    800018d4:	00813083          	ld	ra,8(sp)
    800018d8:	00013403          	ld	s0,0(sp)
    800018dc:	01010113          	addi	sp,sp,16
    800018e0:	00008067          	ret

00000000800018e4 <_ZN4_sem12unblockReadyEv>:

void _sem::unblockReady() {
    800018e4:	fe010113          	addi	sp,sp,-32
    800018e8:	00113c23          	sd	ra,24(sp)
    800018ec:	00813823          	sd	s0,16(sp)
    800018f0:	00913423          	sd	s1,8(sp)
    800018f4:	01213023          	sd	s2,0(sp)
    800018f8:	02010413          	addi	s0,sp,32
    800018fc:	00050913          	mv	s2,a0
    80001900:	0240006f          	j	80001924 <_ZN4_sem12unblockReadyEv+0x40>
        BlockedNode* node = head;

        head = head->next;

        if (head == nullptr) {
            tail = nullptr;
    80001904:	00093823          	sd	zero,16(s2)
        }

        val -= (int)node->requested;
    80001908:	0084a703          	lw	a4,8(s1)
    8000190c:	40e787bb          	subw	a5,a5,a4
    80001910:	00f92023          	sw	a5,0(s2)

        node->status = 0;//znaci da ce waitN vratiti 0
    80001914:	0004a623          	sw	zero,12(s1)
        node->next = nullptr;
    80001918:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    8000191c:	0004b503          	ld	a0,0(s1)
    80001920:	02051463          	bnez	a0,80001948 <_ZN4_sem12unblockReadyEv+0x64>
    while (head != nullptr && val >= (int)head->requested) {
    80001924:	00893483          	ld	s1,8(s2)
    80001928:	02048e63          	beqz	s1,80001964 <_ZN4_sem12unblockReadyEv+0x80>
    8000192c:	00092783          	lw	a5,0(s2)
    80001930:	0084a703          	lw	a4,8(s1)
    80001934:	02e7c863          	blt	a5,a4,80001964 <_ZN4_sem12unblockReadyEv+0x80>
        head = head->next;
    80001938:	0104b703          	ld	a4,16(s1)
    8000193c:	00e93423          	sd	a4,8(s2)
        if (head == nullptr) {
    80001940:	fc0714e3          	bnez	a4,80001908 <_ZN4_sem12unblockReadyEv+0x24>
    80001944:	fc1ff06f          	j	80001904 <_ZN4_sem12unblockReadyEv+0x20>
            node->thread->setState(_thread::READY);
    80001948:	00100593          	li	a1,1
    8000194c:	00001097          	auipc	ra,0x1
    80001950:	9dc080e7          	jalr	-1572(ra) # 80002328 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001954:	0004b503          	ld	a0,0(s1)
    80001958:	00001097          	auipc	ra,0x1
    8000195c:	b6c080e7          	jalr	-1172(ra) # 800024c4 <_ZN9Scheduler3putEP7_thread>
    80001960:	fc5ff06f          	j	80001924 <_ZN4_sem12unblockReadyEv+0x40>
        }
    }
}
    80001964:	01813083          	ld	ra,24(sp)
    80001968:	01013403          	ld	s0,16(sp)
    8000196c:	00813483          	ld	s1,8(sp)
    80001970:	00013903          	ld	s2,0(sp)
    80001974:	02010113          	addi	sp,sp,32
    80001978:	00008067          	ret

000000008000197c <_ZN4_sem7signalNEj>:
    if (closed) {
    8000197c:	00454783          	lbu	a5,4(a0)
    80001980:	04079463          	bnez	a5,800019c8 <_ZN4_sem7signalNEj+0x4c>
    if (n == 0) {
    80001984:	00059663          	bnez	a1,80001990 <_ZN4_sem7signalNEj+0x14>
        return 0;
    80001988:	00000513          	li	a0,0
}
    8000198c:	00008067          	ret
int _sem::signalN(unsigned n) {
    80001990:	ff010113          	addi	sp,sp,-16
    80001994:	00113423          	sd	ra,8(sp)
    80001998:	00813023          	sd	s0,0(sp)
    8000199c:	01010413          	addi	s0,sp,16
    val += (int)n;
    800019a0:	00052783          	lw	a5,0(a0)
    800019a4:	00b785bb          	addw	a1,a5,a1
    800019a8:	00b52023          	sw	a1,0(a0)
    unblockReady();
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	f38080e7          	jalr	-200(ra) # 800018e4 <_ZN4_sem12unblockReadyEv>
    return 0;
    800019b4:	00000513          	li	a0,0
}
    800019b8:	00813083          	ld	ra,8(sp)
    800019bc:	00013403          	ld	s0,0(sp)
    800019c0:	01010113          	addi	sp,sp,16
    800019c4:	00008067          	ret
        return -1;
    800019c8:	fff00513          	li	a0,-1
    800019cc:	00008067          	ret

00000000800019d0 <_ZN4_sem6signalEv>:
int _sem::signal() {
    800019d0:	ff010113          	addi	sp,sp,-16
    800019d4:	00113423          	sd	ra,8(sp)
    800019d8:	00813023          	sd	s0,0(sp)
    800019dc:	01010413          	addi	s0,sp,16
    return signalN(1);
    800019e0:	00100593          	li	a1,1
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	f98080e7          	jalr	-104(ra) # 8000197c <_ZN4_sem7signalNEj>
}
    800019ec:	00813083          	ld	ra,8(sp)
    800019f0:	00013403          	ld	s0,0(sp)
    800019f4:	01010113          	addi	sp,sp,16
    800019f8:	00008067          	ret

00000000800019fc <_ZN4_sem10unblockAllEv>:

void _sem::unblockAll() {
    800019fc:	fe010113          	addi	sp,sp,-32
    80001a00:	00113c23          	sd	ra,24(sp)
    80001a04:	00813823          	sd	s0,16(sp)
    80001a08:	00913423          	sd	s1,8(sp)
    80001a0c:	01213023          	sd	s2,0(sp)
    80001a10:	02010413          	addi	s0,sp,32
    80001a14:	00050913          	mv	s2,a0
    while (head != nullptr) {
    80001a18:	00893483          	ld	s1,8(s2)
    80001a1c:	02048e63          	beqz	s1,80001a58 <_ZN4_sem10unblockAllEv+0x5c>
        BlockedNode* node = head;

        head = head->next;
    80001a20:	0104b783          	ld	a5,16(s1)
    80001a24:	00f93423          	sd	a5,8(s2)

        node->status = -1;
    80001a28:	fff00793          	li	a5,-1
    80001a2c:	00f4a623          	sw	a5,12(s1)
        node->next = nullptr;
    80001a30:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    80001a34:	0004b503          	ld	a0,0(s1)
    80001a38:	fe0500e3          	beqz	a0,80001a18 <_ZN4_sem10unblockAllEv+0x1c>
            node->thread->setState(_thread::READY);
    80001a3c:	00100593          	li	a1,1
    80001a40:	00001097          	auipc	ra,0x1
    80001a44:	8e8080e7          	jalr	-1816(ra) # 80002328 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001a48:	0004b503          	ld	a0,0(s1)
    80001a4c:	00001097          	auipc	ra,0x1
    80001a50:	a78080e7          	jalr	-1416(ra) # 800024c4 <_ZN9Scheduler3putEP7_thread>
    80001a54:	fc5ff06f          	j	80001a18 <_ZN4_sem10unblockAllEv+0x1c>
        }
    }

    tail = nullptr;
    80001a58:	00093823          	sd	zero,16(s2)
    80001a5c:	01813083          	ld	ra,24(sp)
    80001a60:	01013403          	ld	s0,16(sp)
    80001a64:	00813483          	ld	s1,8(sp)
    80001a68:	00013903          	ld	s2,0(sp)
    80001a6c:	02010113          	addi	sp,sp,32
    80001a70:	00008067          	ret

0000000080001a74 <_ZN4_sem5closeEv>:
    if (closed) {
    80001a74:	00454783          	lbu	a5,4(a0)
    80001a78:	02079c63          	bnez	a5,80001ab0 <_ZN4_sem5closeEv+0x3c>
int _sem::close() {
    80001a7c:	ff010113          	addi	sp,sp,-16
    80001a80:	00113423          	sd	ra,8(sp)
    80001a84:	00813023          	sd	s0,0(sp)
    80001a88:	01010413          	addi	s0,sp,16
    closed = true;
    80001a8c:	00100793          	li	a5,1
    80001a90:	00f50223          	sb	a5,4(a0)
    unblockAll();
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	f68080e7          	jalr	-152(ra) # 800019fc <_ZN4_sem10unblockAllEv>
    return 0;
    80001a9c:	00000513          	li	a0,0
}
    80001aa0:	00813083          	ld	ra,8(sp)
    80001aa4:	00013403          	ld	s0,0(sp)
    80001aa8:	01010113          	addi	sp,sp,16
    80001aac:	00008067          	ret
        return -1;
    80001ab0:	fff00513          	li	a0,-1
}
    80001ab4:	00008067          	ret

0000000080001ab8 <handleSupervisorTrap>:
#include "../h/Semaphore.hpp"
#include "../lib/console.h"

extern "C" void handleSupervisorTrap(TrapFrame* frame);

extern "C" void handleSupervisorTrap(TrapFrame* frame) {
    80001ab8:	fd010113          	addi	sp,sp,-48
    80001abc:	02113423          	sd	ra,40(sp)
    80001ac0:	02813023          	sd	s0,32(sp)
    80001ac4:	00913c23          	sd	s1,24(sp)
    80001ac8:	01213823          	sd	s2,16(sp)
    80001acc:	01313423          	sd	s3,8(sp)
    80001ad0:	03010413          	addi	s0,sp,48
    static const uint64 SSTATUS_SIE = (1UL << 1);
    static const uint64 SIP_SSIP = (1UL << 1);

    static uint64 r_scause() {
        uint64 x;
        asm volatile("csrr %0, scause" : "=r"(x));//upis vrednosti scause u x
    80001ad4:	14202773          	csrr	a4,scause
    uint64 scause = Riscv::r_scause();

    if (scause == 8 || scause == 9) {
    80001ad8:	ff870693          	addi	a3,a4,-8 # ff8 <_entry-0x7ffff008>
    80001adc:	00100793          	li	a5,1
    80001ae0:	02d7f463          	bgeu	a5,a3,80001b08 <handleSupervisorTrap+0x50>

        frame->sepc += 4;
        return;
    }

    if (scause == 0x8000000000000001UL) {
    80001ae4:	fff00793          	li	a5,-1
    80001ae8:	03f79793          	slli	a5,a5,0x3f
    80001aec:	00178793          	addi	a5,a5,1
    80001af0:	2af70263          	beq	a4,a5,80001d94 <handleSupervisorTrap+0x2dc>
        Riscv::mc_sip(Riscv::SIP_SSIP);//birsanje pending bita
        return;
    }

    if (scause == 0x8000000000000009UL) {//spoljasnji hardverski prekid 9
    80001af4:	fff00793          	li	a5,-1
    80001af8:	03f79793          	slli	a5,a5,0x3f
    80001afc:	00978793          	addi	a5,a5,9
    80001b00:	2af70063          	beq	a4,a5,80001da0 <handleSupervisorTrap+0x2e8>
        console_handler();
        return;
    }

    while (true) {}
    80001b04:	0000006f          	j	80001b04 <handleSupervisorTrap+0x4c>
    80001b08:	00050493          	mv	s1,a0
        uint64 syscallCode = frame->a0;
    80001b0c:	04053783          	ld	a5,64(a0)
        uint64 arg1 = frame->a1;
    80001b10:	04853903          	ld	s2,72(a0)
        uint64 arg2 = frame->a2;
    80001b14:	05053503          	ld	a0,80(a0)
        uint64 arg3 = frame->a3;
    80001b18:	0584b583          	ld	a1,88(s1)
        uint64 arg4 = frame->a4;
    80001b1c:	0604b603          	ld	a2,96(s1)
        switch (syscallCode) {
    80001b20:	04200713          	li	a4,66
    80001b24:	26f76263          	bltu	a4,a5,80001d88 <handleSupervisorTrap+0x2d0>
    80001b28:	00279793          	slli	a5,a5,0x2
    80001b2c:	00007717          	auipc	a4,0x7
    80001b30:	4f470713          	addi	a4,a4,1268 # 80009020 <CONSOLE_STATUS+0x10>
    80001b34:	00e787b3          	add	a5,a5,a4
    80001b38:	0007a783          	lw	a5,0(a5)
    80001b3c:	00e787b3          	add	a5,a5,a4
    80001b40:	00078067          	jr	a5
                frame->a0 = (uint64)MemoryAllocator::getInstance().malloc((size_t)arg1);
    80001b44:	00001097          	auipc	ra,0x1
    80001b48:	7fc080e7          	jalr	2044(ra) # 80003340 <_ZN15MemoryAllocator11getInstanceEv>
    80001b4c:	00090593          	mv	a1,s2
    80001b50:	00002097          	auipc	ra,0x2
    80001b54:	870080e7          	jalr	-1936(ra) # 800033c0 <_ZN15MemoryAllocator6mallocEm>
    80001b58:	04a4b023          	sd	a0,64(s1)
        frame->sepc += 4;
    80001b5c:	0f04b783          	ld	a5,240(s1)
    80001b60:	00478793          	addi	a5,a5,4
    80001b64:	0ef4b823          	sd	a5,240(s1)
    80001b68:	02813083          	ld	ra,40(sp)
    80001b6c:	02013403          	ld	s0,32(sp)
    80001b70:	01813483          	ld	s1,24(sp)
    80001b74:	01013903          	ld	s2,16(sp)
    80001b78:	00813983          	ld	s3,8(sp)
    80001b7c:	03010113          	addi	sp,sp,48
    80001b80:	00008067          	ret
                frame->a0 = (uint64)MemoryAllocator::getInstance().free((void*)arg1);
    80001b84:	00001097          	auipc	ra,0x1
    80001b88:	7bc080e7          	jalr	1980(ra) # 80003340 <_ZN15MemoryAllocator11getInstanceEv>
    80001b8c:	00090593          	mv	a1,s2
    80001b90:	00002097          	auipc	ra,0x2
    80001b94:	98c080e7          	jalr	-1652(ra) # 8000351c <_ZN15MemoryAllocator4freeEPv>
    80001b98:	04a4b023          	sd	a0,64(s1)
                break;
    80001b9c:	fc1ff06f          	j	80001b5c <handleSupervisorTrap+0xa4>
                if (handle == nullptr || body == nullptr || stackSpace == nullptr) {
    80001ba0:	00090663          	beqz	s2,80001bac <handleSupervisorTrap+0xf4>
    80001ba4:	00050463          	beqz	a0,80001bac <handleSupervisorTrap+0xf4>
    80001ba8:	00061863          	bnez	a2,80001bb8 <handleSupervisorTrap+0x100>
                    frame->a0 = (uint64)-1;
    80001bac:	fff00793          	li	a5,-1
    80001bb0:	04f4b023          	sd	a5,64(s1)
                    break;
    80001bb4:	fa9ff06f          	j	80001b5c <handleSupervisorTrap+0xa4>
                _thread* thread = _thread::createThread(body, arg, stackSpace);
    80001bb8:	00000097          	auipc	ra,0x0
    80001bbc:	410080e7          	jalr	1040(ra) # 80001fc8 <_ZN7_thread12createThreadEPFvPvES0_S0_>
                if (thread == nullptr) {
    80001bc0:	00050c63          	beqz	a0,80001bd8 <handleSupervisorTrap+0x120>
                *handle = thread;//korisnik dobija rucku nove niti
    80001bc4:	00a93023          	sd	a0,0(s2)
                Scheduler::put(thread);
    80001bc8:	00001097          	auipc	ra,0x1
    80001bcc:	8fc080e7          	jalr	-1796(ra) # 800024c4 <_ZN9Scheduler3putEP7_thread>
                frame->a0 = 0;
    80001bd0:	0404b023          	sd	zero,64(s1)
                break;
    80001bd4:	f89ff06f          	j	80001b5c <handleSupervisorTrap+0xa4>
                    frame->a0 = (uint64)-1;
    80001bd8:	fff00793          	li	a5,-1
    80001bdc:	04f4b023          	sd	a5,64(s1)
                    break;
    80001be0:	f7dff06f          	j	80001b5c <handleSupervisorTrap+0xa4>
                frame->sepc += 4;
    80001be4:	0f04b783          	ld	a5,240(s1)
    80001be8:	00478793          	addi	a5,a5,4
    80001bec:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)_thread::exit();
    80001bf0:	00000097          	auipc	ra,0x0
    80001bf4:	598080e7          	jalr	1432(ra) # 80002188 <_ZN7_thread4exitEv>
    80001bf8:	04a4b023          	sd	a0,64(s1)
                return;
    80001bfc:	f6dff06f          	j	80001b68 <handleSupervisorTrap+0xb0>
                frame->sepc += 4;
    80001c00:	0f04b783          	ld	a5,240(s1)
    80001c04:	00478793          	addi	a5,a5,4
    80001c08:	0ef4b823          	sd	a5,240(s1)
                _thread::dispatch();//nismo frame->a0 jer dispatch nema povratnu value
    80001c0c:	00000097          	auipc	ra,0x0
    80001c10:	4d4080e7          	jalr	1236(ra) # 800020e0 <_ZN7_thread8dispatchEv>
                return;
    80001c14:	f55ff06f          	j	80001b68 <handleSupervisorTrap+0xb0>
                frame->sepc += 4;
    80001c18:	0f04b783          	ld	a5,240(s1)
    80001c1c:	00478793          	addi	a5,a5,4
    80001c20:	0ef4b823          	sd	a5,240(s1)
                _thread::join(thread);
    80001c24:	00090513          	mv	a0,s2
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	614080e7          	jalr	1556(ra) # 8000223c <_ZN7_thread4joinEPS_>
                return;
    80001c30:	f39ff06f          	j	80001b68 <handleSupervisorTrap+0xb0>
                unsigned init = (unsigned)arg2;
    80001c34:	0005051b          	sext.w	a0,a0
                if (handle == nullptr) {
    80001c38:	00091863          	bnez	s2,80001c48 <handleSupervisorTrap+0x190>
                    frame->a0 = (uint64)-1;
    80001c3c:	fff00793          	li	a5,-1
    80001c40:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c44:	f19ff06f          	j	80001b5c <handleSupervisorTrap+0xa4>
                _sem* sem = _sem::createSemaphore(init);
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	aec080e7          	jalr	-1300(ra) # 80001734 <_ZN4_sem15createSemaphoreEj>
                if (sem == nullptr) {
    80001c50:	00050863          	beqz	a0,80001c60 <handleSupervisorTrap+0x1a8>
                *handle = sem;
    80001c54:	00a93023          	sd	a0,0(s2)
                frame->a0 = 0;
    80001c58:	0404b023          	sd	zero,64(s1)
                break;
    80001c5c:	f01ff06f          	j	80001b5c <handleSupervisorTrap+0xa4>
                    frame->a0 = (uint64)-1;
    80001c60:	fff00793          	li	a5,-1
    80001c64:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c68:	ef5ff06f          	j	80001b5c <handleSupervisorTrap+0xa4>
                if (sem == nullptr) {
    80001c6c:	00091863          	bnez	s2,80001c7c <handleSupervisorTrap+0x1c4>
                    frame->a0 = (uint64)-1;
    80001c70:	fff00793          	li	a5,-1
    80001c74:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c78:	ee5ff06f          	j	80001b5c <handleSupervisorTrap+0xa4>
                int ret = sem->close();
    80001c7c:	00090513          	mv	a0,s2
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	df4080e7          	jalr	-524(ra) # 80001a74 <_ZN4_sem5closeEv>
    80001c88:	00050993          	mv	s3,a0
                if (ret == 0) {
    80001c8c:	00050663          	beqz	a0,80001c98 <handleSupervisorTrap+0x1e0>
                frame->a0 = (uint64)ret;
    80001c90:	0534b023          	sd	s3,64(s1)
                break;
    80001c94:	ec9ff06f          	j	80001b5c <handleSupervisorTrap+0xa4>
                    _sem::destroySemaphore(sem);
    80001c98:	00090513          	mv	a0,s2
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	aec080e7          	jalr	-1300(ra) # 80001788 <_ZN4_sem16destroySemaphoreEPS_>
    80001ca4:	fedff06f          	j	80001c90 <handleSupervisorTrap+0x1d8>
                if (sem == nullptr) {
    80001ca8:	00091863          	bnez	s2,80001cb8 <handleSupervisorTrap+0x200>
                    frame->a0 = (uint64)-1;
    80001cac:	fff00793          	li	a5,-1
    80001cb0:	04f4b023          	sd	a5,64(s1)
                    break;
    80001cb4:	ea9ff06f          	j	80001b5c <handleSupervisorTrap+0xa4>
                frame->sepc += 4;
    80001cb8:	0f04b783          	ld	a5,240(s1)
    80001cbc:	00478793          	addi	a5,a5,4
    80001cc0:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->wait();
    80001cc4:	00090513          	mv	a0,s2
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	bf0080e7          	jalr	-1040(ra) # 800018b8 <_ZN4_sem4waitEv>
    80001cd0:	04a4b023          	sd	a0,64(s1)
                return;
    80001cd4:	e95ff06f          	j	80001b68 <handleSupervisorTrap+0xb0>
                if (sem == nullptr) {
    80001cd8:	00091863          	bnez	s2,80001ce8 <handleSupervisorTrap+0x230>
                    frame->a0 = (uint64)-1;
    80001cdc:	fff00793          	li	a5,-1
    80001ce0:	04f4b023          	sd	a5,64(s1)
                    break;
    80001ce4:	e79ff06f          	j	80001b5c <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)sem->signal();
    80001ce8:	00090513          	mv	a0,s2
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	ce4080e7          	jalr	-796(ra) # 800019d0 <_ZN4_sem6signalEv>
    80001cf4:	04a4b023          	sd	a0,64(s1)
                break;
    80001cf8:	e65ff06f          	j	80001b5c <handleSupervisorTrap+0xa4>
                unsigned n = (unsigned)arg2;
    80001cfc:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001d00:	00091863          	bnez	s2,80001d10 <handleSupervisorTrap+0x258>
                    frame->a0 = (uint64)-1;
    80001d04:	fff00793          	li	a5,-1
    80001d08:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d0c:	e51ff06f          	j	80001b5c <handleSupervisorTrap+0xa4>
                frame->sepc += 4;
    80001d10:	0f04b783          	ld	a5,240(s1)
    80001d14:	00478793          	addi	a5,a5,4
    80001d18:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->waitN(n);
    80001d1c:	00090513          	mv	a0,s2
    80001d20:	00000097          	auipc	ra,0x0
    80001d24:	ae0080e7          	jalr	-1312(ra) # 80001800 <_ZN4_sem5waitNEj>
    80001d28:	04a4b023          	sd	a0,64(s1)
                return;
    80001d2c:	e3dff06f          	j	80001b68 <handleSupervisorTrap+0xb0>
                unsigned n = (unsigned)arg2;
    80001d30:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001d34:	00091863          	bnez	s2,80001d44 <handleSupervisorTrap+0x28c>
                    frame->a0 = (uint64)-1;
    80001d38:	fff00793          	li	a5,-1
    80001d3c:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d40:	e1dff06f          	j	80001b5c <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)sem->signalN(n);
    80001d44:	00090513          	mv	a0,s2
    80001d48:	00000097          	auipc	ra,0x0
    80001d4c:	c34080e7          	jalr	-972(ra) # 8000197c <_ZN4_sem7signalNEj>
    80001d50:	04a4b023          	sd	a0,64(s1)
                break;
    80001d54:	e09ff06f          	j	80001b5c <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)-1;
    80001d58:	fff00793          	li	a5,-1
    80001d5c:	04f4b023          	sd	a5,64(s1)
                break;
    80001d60:	dfdff06f          	j	80001b5c <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)__getc();
    80001d64:	00007097          	auipc	ra,0x7
    80001d68:	fc4080e7          	jalr	-60(ra) # 80008d28 <__getc>
    80001d6c:	04a4b023          	sd	a0,64(s1)
                break;
    80001d70:	dedff06f          	j	80001b5c <handleSupervisorTrap+0xa4>
                __putc((char)arg1);
    80001d74:	0ff97513          	andi	a0,s2,255
    80001d78:	00007097          	auipc	ra,0x7
    80001d7c:	f74080e7          	jalr	-140(ra) # 80008cec <__putc>
                frame->a0 = 0;
    80001d80:	0404b023          	sd	zero,64(s1)
                break;
    80001d84:	dd9ff06f          	j	80001b5c <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)-1;
    80001d88:	fff00793          	li	a5,-1
    80001d8c:	04f4b023          	sd	a5,64(s1)
                break;
    80001d90:	dcdff06f          	j	80001b5c <handleSupervisorTrap+0xa4>

    static void mc_sstatus(uint64 mask) {
        asm volatile("csrc sstatus, %0" : : "r"(mask));//vrati prekide
    }
    static void mc_sip(uint64 mask) {
        asm volatile("csrc sip, %0" : : "r"(mask));
    80001d94:	00200793          	li	a5,2
    80001d98:	1447b073          	csrc	sip,a5
        return;
    80001d9c:	dcdff06f          	j	80001b68 <handleSupervisorTrap+0xb0>
        console_handler();
    80001da0:	00007097          	auipc	ra,0x7
    80001da4:	fc0080e7          	jalr	-64(ra) # 80008d60 <console_handler>
        return;
    80001da8:	dc1ff06f          	j	80001b68 <handleSupervisorTrap+0xb0>

0000000080001dac <_ZL14blocksForBytesm>:
#include "../h/MemoryAllocator.hpp"
#include "../h/Semaphore.hpp"

_thread* _thread::running = nullptr;

static size_t blocksForBytes(size_t bytes) {
    80001dac:	ff010113          	addi	sp,sp,-16
    80001db0:	00813423          	sd	s0,8(sp)
    80001db4:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001db8:	03f50513          	addi	a0,a0,63
}
    80001dbc:	00655513          	srli	a0,a0,0x6
    80001dc0:	00813403          	ld	s0,8(sp)
    80001dc4:	01010113          	addi	sp,sp,16
    80001dc8:	00008067          	ret

0000000080001dcc <_ZN7_threadnwEm>:

void* _thread::operator new(size_t size) {
    80001dcc:	fe010113          	addi	sp,sp,-32
    80001dd0:	00113c23          	sd	ra,24(sp)
    80001dd4:	00813823          	sd	s0,16(sp)
    80001dd8:	00913423          	sd	s1,8(sp)
    80001ddc:	01213023          	sd	s2,0(sp)
    80001de0:	02010413          	addi	s0,sp,32
    80001de4:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001de8:	00001097          	auipc	ra,0x1
    80001dec:	558080e7          	jalr	1368(ra) # 80003340 <_ZN15MemoryAllocator11getInstanceEv>
    80001df0:	00050493          	mv	s1,a0
    80001df4:	00090513          	mv	a0,s2
    80001df8:	00000097          	auipc	ra,0x0
    80001dfc:	fb4080e7          	jalr	-76(ra) # 80001dac <_ZL14blocksForBytesm>
    80001e00:	00050593          	mv	a1,a0
    80001e04:	00048513          	mv	a0,s1
    80001e08:	00001097          	auipc	ra,0x1
    80001e0c:	5b8080e7          	jalr	1464(ra) # 800033c0 <_ZN15MemoryAllocator6mallocEm>
}
    80001e10:	01813083          	ld	ra,24(sp)
    80001e14:	01013403          	ld	s0,16(sp)
    80001e18:	00813483          	ld	s1,8(sp)
    80001e1c:	00013903          	ld	s2,0(sp)
    80001e20:	02010113          	addi	sp,sp,32
    80001e24:	00008067          	ret

0000000080001e28 <_ZN7_threadnaEm>:

void* _thread::operator new[](size_t size) {
    80001e28:	fe010113          	addi	sp,sp,-32
    80001e2c:	00113c23          	sd	ra,24(sp)
    80001e30:	00813823          	sd	s0,16(sp)
    80001e34:	00913423          	sd	s1,8(sp)
    80001e38:	01213023          	sd	s2,0(sp)
    80001e3c:	02010413          	addi	s0,sp,32
    80001e40:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001e44:	00001097          	auipc	ra,0x1
    80001e48:	4fc080e7          	jalr	1276(ra) # 80003340 <_ZN15MemoryAllocator11getInstanceEv>
    80001e4c:	00050493          	mv	s1,a0
    80001e50:	00090513          	mv	a0,s2
    80001e54:	00000097          	auipc	ra,0x0
    80001e58:	f58080e7          	jalr	-168(ra) # 80001dac <_ZL14blocksForBytesm>
    80001e5c:	00050593          	mv	a1,a0
    80001e60:	00048513          	mv	a0,s1
    80001e64:	00001097          	auipc	ra,0x1
    80001e68:	55c080e7          	jalr	1372(ra) # 800033c0 <_ZN15MemoryAllocator6mallocEm>
}
    80001e6c:	01813083          	ld	ra,24(sp)
    80001e70:	01013403          	ld	s0,16(sp)
    80001e74:	00813483          	ld	s1,8(sp)
    80001e78:	00013903          	ld	s2,0(sp)
    80001e7c:	02010113          	addi	sp,sp,32
    80001e80:	00008067          	ret

0000000080001e84 <_ZN7_threaddlEPv>:

void _thread::operator delete(void* ptr) {
    if (ptr == nullptr) {
    80001e84:	04050263          	beqz	a0,80001ec8 <_ZN7_threaddlEPv+0x44>
void _thread::operator delete(void* ptr) {
    80001e88:	fe010113          	addi	sp,sp,-32
    80001e8c:	00113c23          	sd	ra,24(sp)
    80001e90:	00813823          	sd	s0,16(sp)
    80001e94:	00913423          	sd	s1,8(sp)
    80001e98:	02010413          	addi	s0,sp,32
    80001e9c:	00050493          	mv	s1,a0
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
    80001ea0:	00001097          	auipc	ra,0x1
    80001ea4:	4a0080e7          	jalr	1184(ra) # 80003340 <_ZN15MemoryAllocator11getInstanceEv>
    80001ea8:	00048593          	mv	a1,s1
    80001eac:	00001097          	auipc	ra,0x1
    80001eb0:	670080e7          	jalr	1648(ra) # 8000351c <_ZN15MemoryAllocator4freeEPv>
}
    80001eb4:	01813083          	ld	ra,24(sp)
    80001eb8:	01013403          	ld	s0,16(sp)
    80001ebc:	00813483          	ld	s1,8(sp)
    80001ec0:	02010113          	addi	sp,sp,32
    80001ec4:	00008067          	ret
    80001ec8:	00008067          	ret

0000000080001ecc <_ZN7_threaddaEPv>:

void _thread::operator delete[](void* ptr) {
    if (ptr == nullptr) {
    80001ecc:	04050263          	beqz	a0,80001f10 <_ZN7_threaddaEPv+0x44>
void _thread::operator delete[](void* ptr) {
    80001ed0:	fe010113          	addi	sp,sp,-32
    80001ed4:	00113c23          	sd	ra,24(sp)
    80001ed8:	00813823          	sd	s0,16(sp)
    80001edc:	00913423          	sd	s1,8(sp)
    80001ee0:	02010413          	addi	s0,sp,32
    80001ee4:	00050493          	mv	s1,a0
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
    80001ee8:	00001097          	auipc	ra,0x1
    80001eec:	458080e7          	jalr	1112(ra) # 80003340 <_ZN15MemoryAllocator11getInstanceEv>
    80001ef0:	00048593          	mv	a1,s1
    80001ef4:	00001097          	auipc	ra,0x1
    80001ef8:	628080e7          	jalr	1576(ra) # 8000351c <_ZN15MemoryAllocator4freeEPv>
}
    80001efc:	01813083          	ld	ra,24(sp)
    80001f00:	01013403          	ld	s0,16(sp)
    80001f04:	00813483          	ld	s1,8(sp)
    80001f08:	02010113          	addi	sp,sp,32
    80001f0c:	00008067          	ret
    80001f10:	00008067          	ret

0000000080001f14 <_ZN7_threadC1EPFvPvES0_S0_>:

_thread::_thread(Body body, void* arg, void* stackSpace) {
    80001f14:	fe010113          	addi	sp,sp,-32
    80001f18:	00113c23          	sd	ra,24(sp)
    80001f1c:	00813823          	sd	s0,16(sp)
    80001f20:	00913423          	sd	s1,8(sp)
    80001f24:	02010413          	addi	s0,sp,32
    80001f28:	00050493          	mv	s1,a0
    this->body = body;
    80001f2c:	00b53023          	sd	a1,0(a0)
    this->arg = arg;
    80001f30:	00c53423          	sd	a2,8(a0)

    if (stackSpace != nullptr) {
    80001f34:	08068463          	beqz	a3,80001fbc <_ZN7_threadC1EPFvPvES0_S0_+0xa8>
        this->stack = (void*)((uint64)stackSpace - DEFAULT_STACK_SIZE);
    80001f38:	fffff7b7          	lui	a5,0xfffff
    80001f3c:	00f687b3          	add	a5,a3,a5
    80001f40:	00f53823          	sd	a5,16(a0)
        this->context.sp = (uint64)stackSpace;
    80001f44:	02d53023          	sd	a3,32(a0)
    } else {
        this->stack = nullptr;
        this->context.sp = 0;
    }
    this->context.s0 = 0;
    80001f48:	0204b423          	sd	zero,40(s1)
    this->context.s1 = 0;
    80001f4c:	0204b823          	sd	zero,48(s1)
    this->context.s2 = 0;
    80001f50:	0204bc23          	sd	zero,56(s1)
    this->context.s3 = 0;
    80001f54:	0404b023          	sd	zero,64(s1)
    this->context.s4 = 0;
    80001f58:	0404b423          	sd	zero,72(s1)
    this->context.s5 = 0;
    80001f5c:	0404b823          	sd	zero,80(s1)
    this->context.s6 = 0;
    80001f60:	0404bc23          	sd	zero,88(s1)
    this->context.s7 = 0;
    80001f64:	0604b023          	sd	zero,96(s1)
    this->context.s8 = 0;
    80001f68:	0604b423          	sd	zero,104(s1)
    this->context.s9 = 0;
    80001f6c:	0604b823          	sd	zero,112(s1)
    this->context.s10 = 0;
    80001f70:	0604bc23          	sd	zero,120(s1)
    this->context.s11 = 0;
    80001f74:	0804b023          	sd	zero,128(s1)

    this->context.ra = (uint64)&_thread::threadWrapper;//nit nigde nije radila pa upisujemo povratnu adresu
    80001f78:	00000797          	auipc	a5,0x0
    80001f7c:	28078793          	addi	a5,a5,640 # 800021f8 <_ZN7_thread13threadWrapperEv>
    80001f80:	00f4bc23          	sd	a5,24(s1)
    this->timeSlice = DEFAULT_TIME_SLICE;
    80001f84:	00200793          	li	a5,2
    80001f88:	08f4b423          	sd	a5,136(s1)
    this->state = CREATED;//nakon ovoga u trap.cpp radimo ready
    80001f8c:	0804a823          	sw	zero,144(s1)
    this->next = nullptr;
    80001f90:	0804bc23          	sd	zero,152(s1)
    this->joinSem = _sem::createSemaphore(0);
    80001f94:	00000513          	li	a0,0
    80001f98:	fffff097          	auipc	ra,0xfffff
    80001f9c:	79c080e7          	jalr	1948(ra) # 80001734 <_ZN4_sem15createSemaphoreEj>
    80001fa0:	0aa4b023          	sd	a0,160(s1)
    this->joinWaitingCount = 0;
    80001fa4:	0a04a423          	sw	zero,168(s1)
}
    80001fa8:	01813083          	ld	ra,24(sp)
    80001fac:	01013403          	ld	s0,16(sp)
    80001fb0:	00813483          	ld	s1,8(sp)
    80001fb4:	02010113          	addi	sp,sp,32
    80001fb8:	00008067          	ret
        this->stack = nullptr;
    80001fbc:	00053823          	sd	zero,16(a0)
        this->context.sp = 0;
    80001fc0:	02053023          	sd	zero,32(a0)
    80001fc4:	f85ff06f          	j	80001f48 <_ZN7_threadC1EPFvPvES0_S0_+0x34>

0000000080001fc8 <_ZN7_thread12createThreadEPFvPvES0_S0_>:

_thread* _thread::createThread(Body body, void* arg, void* stackSpace) {
    80001fc8:	fd010113          	addi	sp,sp,-48
    80001fcc:	02113423          	sd	ra,40(sp)
    80001fd0:	02813023          	sd	s0,32(sp)
    80001fd4:	00913c23          	sd	s1,24(sp)
    80001fd8:	01213823          	sd	s2,16(sp)
    80001fdc:	01313423          	sd	s3,8(sp)
    80001fe0:	01413023          	sd	s4,0(sp)
    80001fe4:	03010413          	addi	s0,sp,48
    80001fe8:	00050913          	mv	s2,a0
    80001fec:	00058993          	mv	s3,a1
    80001ff0:	00060a13          	mv	s4,a2
    return new _thread(body, arg, stackSpace);
    80001ff4:	0b000513          	li	a0,176
    80001ff8:	00000097          	auipc	ra,0x0
    80001ffc:	dd4080e7          	jalr	-556(ra) # 80001dcc <_ZN7_threadnwEm>
    80002000:	00050493          	mv	s1,a0
    80002004:	000a0693          	mv	a3,s4
    80002008:	00098613          	mv	a2,s3
    8000200c:	00090593          	mv	a1,s2
    80002010:	00000097          	auipc	ra,0x0
    80002014:	f04080e7          	jalr	-252(ra) # 80001f14 <_ZN7_threadC1EPFvPvES0_S0_>
    80002018:	0200006f          	j	80002038 <_ZN7_thread12createThreadEPFvPvES0_S0_+0x70>
    8000201c:	00050913          	mv	s2,a0
    80002020:	00048513          	mv	a0,s1
    80002024:	00000097          	auipc	ra,0x0
    80002028:	e60080e7          	jalr	-416(ra) # 80001e84 <_ZN7_threaddlEPv>
    8000202c:	00090513          	mv	a0,s2
    80002030:	0000b097          	auipc	ra,0xb
    80002034:	f38080e7          	jalr	-200(ra) # 8000cf68 <_Unwind_Resume>
}
    80002038:	00048513          	mv	a0,s1
    8000203c:	02813083          	ld	ra,40(sp)
    80002040:	02013403          	ld	s0,32(sp)
    80002044:	01813483          	ld	s1,24(sp)
    80002048:	01013903          	ld	s2,16(sp)
    8000204c:	00813983          	ld	s3,8(sp)
    80002050:	00013a03          	ld	s4,0(sp)
    80002054:	03010113          	addi	sp,sp,48
    80002058:	00008067          	ret

000000008000205c <_ZN7_thread13destroyThreadEPS_>:

int _thread::destroyThread(_thread* thread) {
    if (thread == nullptr) {
    8000205c:	06050e63          	beqz	a0,800020d8 <_ZN7_thread13destroyThreadEPS_+0x7c>
int _thread::destroyThread(_thread* thread) {
    80002060:	fe010113          	addi	sp,sp,-32
    80002064:	00113c23          	sd	ra,24(sp)
    80002068:	00813823          	sd	s0,16(sp)
    8000206c:	00913423          	sd	s1,8(sp)
    80002070:	02010413          	addi	s0,sp,32
    80002074:	00050493          	mv	s1,a0
        return -1;
    }

    if (thread->stack != nullptr) {
    80002078:	01053783          	ld	a5,16(a0)
    8000207c:	00078e63          	beqz	a5,80002098 <_ZN7_thread13destroyThreadEPS_+0x3c>
        MemoryAllocator::getInstance().free(thread->stack);
    80002080:	00001097          	auipc	ra,0x1
    80002084:	2c0080e7          	jalr	704(ra) # 80003340 <_ZN15MemoryAllocator11getInstanceEv>
    80002088:	0104b583          	ld	a1,16(s1)
    8000208c:	00001097          	auipc	ra,0x1
    80002090:	490080e7          	jalr	1168(ra) # 8000351c <_ZN15MemoryAllocator4freeEPv>
        thread->stack = nullptr;
    80002094:	0004b823          	sd	zero,16(s1)
    }
    if (thread->joinSem != nullptr) {
    80002098:	0a04b503          	ld	a0,160(s1)
    8000209c:	00050c63          	beqz	a0,800020b4 <_ZN7_thread13destroyThreadEPS_+0x58>
        thread->joinSem->close();
    800020a0:	00000097          	auipc	ra,0x0
    800020a4:	9d4080e7          	jalr	-1580(ra) # 80001a74 <_ZN4_sem5closeEv>
        _sem::destroySemaphore(thread->joinSem);
    800020a8:	0a04b503          	ld	a0,160(s1)
    800020ac:	fffff097          	auipc	ra,0xfffff
    800020b0:	6dc080e7          	jalr	1756(ra) # 80001788 <_ZN4_sem16destroySemaphoreEPS_>
        thread->joinSem = nullptr;
    }

    delete thread;
    800020b4:	00048513          	mv	a0,s1
    800020b8:	00000097          	auipc	ra,0x0
    800020bc:	dcc080e7          	jalr	-564(ra) # 80001e84 <_ZN7_threaddlEPv>
    return 0;
    800020c0:	00000513          	li	a0,0
}
    800020c4:	01813083          	ld	ra,24(sp)
    800020c8:	01013403          	ld	s0,16(sp)
    800020cc:	00813483          	ld	s1,8(sp)
    800020d0:	02010113          	addi	sp,sp,32
    800020d4:	00008067          	ret
        return -1;
    800020d8:	fff00513          	li	a0,-1
}
    800020dc:	00008067          	ret

00000000800020e0 <_ZN7_thread8dispatchEv>:

void _thread::dispatch() {
    800020e0:	fe010113          	addi	sp,sp,-32
    800020e4:	00113c23          	sd	ra,24(sp)
    800020e8:	00813823          	sd	s0,16(sp)
    800020ec:	00913423          	sd	s1,8(sp)
    800020f0:	02010413          	addi	s0,sp,32
    _thread* old = running;
    800020f4:	0000a497          	auipc	s1,0xa
    800020f8:	cfc4b483          	ld	s1,-772(s1) # 8000bdf0 <_ZN7_thread7runningE>

    if (old != nullptr && old->state != FINISHED && old->state != BLOCKED) {
    800020fc:	00048c63          	beqz	s1,80002114 <_ZN7_thread8dispatchEv+0x34>
    80002100:	0904a783          	lw	a5,144(s1)
    80002104:	00400713          	li	a4,4
    80002108:	00e78663          	beq	a5,a4,80002114 <_ZN7_thread8dispatchEv+0x34>
    8000210c:	00300713          	li	a4,3
    80002110:	04e79663          	bne	a5,a4,8000215c <_ZN7_thread8dispatchEv+0x7c>
        Scheduler::put(old);
    }

    _thread* next = Scheduler::get();
    80002114:	00000097          	auipc	ra,0x0
    80002118:	41c080e7          	jalr	1052(ra) # 80002530 <_ZN9Scheduler3getEv>

    if (next == nullptr) {
    8000211c:	04050863          	beqz	a0,8000216c <_ZN7_thread8dispatchEv+0x8c>
            running = old;
        }
        return;
    }

    running = next;
    80002120:	0000a797          	auipc	a5,0xa
    80002124:	cca7b823          	sd	a0,-816(a5) # 8000bdf0 <_ZN7_thread7runningE>
    running->state = RUNNING;
    80002128:	00200793          	li	a5,2
    8000212c:	08f52823          	sw	a5,144(a0)

    if (old != nullptr && old != running) {//ako je scheduler vratio istu nit ne treba contextswitch
    80002130:	00048c63          	beqz	s1,80002148 <_ZN7_thread8dispatchEv+0x68>
    80002134:	00a48a63          	beq	s1,a0,80002148 <_ZN7_thread8dispatchEv+0x68>
        contextSwitch(&old->context, &running->context);
    80002138:	01850593          	addi	a1,a0,24
    8000213c:	01848513          	addi	a0,s1,24
    80002140:	fffff097          	auipc	ra,0xfffff
    80002144:	ff0080e7          	jalr	-16(ra) # 80001130 <contextSwitch>
    }
}
    80002148:	01813083          	ld	ra,24(sp)
    8000214c:	01013403          	ld	s0,16(sp)
    80002150:	00813483          	ld	s1,8(sp)
    80002154:	02010113          	addi	sp,sp,32
    80002158:	00008067          	ret
        Scheduler::put(old);
    8000215c:	00048513          	mv	a0,s1
    80002160:	00000097          	auipc	ra,0x0
    80002164:	364080e7          	jalr	868(ra) # 800024c4 <_ZN9Scheduler3putEP7_thread>
    80002168:	fadff06f          	j	80002114 <_ZN7_thread8dispatchEv+0x34>
        if (old != nullptr && old->state == RUNNING) {
    8000216c:	fc048ee3          	beqz	s1,80002148 <_ZN7_thread8dispatchEv+0x68>
    80002170:	0904a703          	lw	a4,144(s1)
    80002174:	00200793          	li	a5,2
    80002178:	fcf718e3          	bne	a4,a5,80002148 <_ZN7_thread8dispatchEv+0x68>
            running = old;
    8000217c:	0000a797          	auipc	a5,0xa
    80002180:	c697ba23          	sd	s1,-908(a5) # 8000bdf0 <_ZN7_thread7runningE>
        return;
    80002184:	fc5ff06f          	j	80002148 <_ZN7_thread8dispatchEv+0x68>

0000000080002188 <_ZN7_thread4exitEv>:
int _thread::exit() {
    if (running == nullptr) {
    80002188:	0000a797          	auipc	a5,0xa
    8000218c:	c687b783          	ld	a5,-920(a5) # 8000bdf0 <_ZN7_thread7runningE>
    80002190:	06078063          	beqz	a5,800021f0 <_ZN7_thread4exitEv+0x68>
int _thread::exit() {
    80002194:	ff010113          	addi	sp,sp,-16
    80002198:	00113423          	sd	ra,8(sp)
    8000219c:	00813023          	sd	s0,0(sp)
    800021a0:	01010413          	addi	s0,sp,16
        return -1;
    }

    running->state = FINISHED;
    800021a4:	00400713          	li	a4,4
    800021a8:	08e7a823          	sw	a4,144(a5)
    if (running->joinSem != nullptr && running->joinWaitingCount > 0) {
    800021ac:	0a07b503          	ld	a0,160(a5)
    800021b0:	00050663          	beqz	a0,800021bc <_ZN7_thread4exitEv+0x34>
    800021b4:	0a87a583          	lw	a1,168(a5)
    800021b8:	02059063          	bnez	a1,800021d8 <_ZN7_thread4exitEv+0x50>
        running->joinSem->signalN(running->joinWaitingCount);
        running->joinWaitingCount = 0;
    }

    dispatch();
    800021bc:	00000097          	auipc	ra,0x0
    800021c0:	f24080e7          	jalr	-220(ra) # 800020e0 <_ZN7_thread8dispatchEv>

    return 0;
    800021c4:	00000513          	li	a0,0
}
    800021c8:	00813083          	ld	ra,8(sp)
    800021cc:	00013403          	ld	s0,0(sp)
    800021d0:	01010113          	addi	sp,sp,16
    800021d4:	00008067          	ret
        running->joinSem->signalN(running->joinWaitingCount);
    800021d8:	fffff097          	auipc	ra,0xfffff
    800021dc:	7a4080e7          	jalr	1956(ra) # 8000197c <_ZN4_sem7signalNEj>
        running->joinWaitingCount = 0;
    800021e0:	0000a797          	auipc	a5,0xa
    800021e4:	c107b783          	ld	a5,-1008(a5) # 8000bdf0 <_ZN7_thread7runningE>
    800021e8:	0a07a423          	sw	zero,168(a5)
    800021ec:	fd1ff06f          	j	800021bc <_ZN7_thread4exitEv+0x34>
        return -1;
    800021f0:	fff00513          	li	a0,-1
}
    800021f4:	00008067          	ret

00000000800021f8 <_ZN7_thread13threadWrapperEv>:

uint64 _thread::getTimeSlice() const {
    return timeSlice;
}

void _thread::threadWrapper() {//
    800021f8:	ff010113          	addi	sp,sp,-16
    800021fc:	00113423          	sd	ra,8(sp)
    80002200:	00813023          	sd	s0,0(sp)
    80002204:	01010413          	addi	s0,sp,16
    if (running != nullptr && running->body != nullptr) {
    80002208:	0000a797          	auipc	a5,0xa
    8000220c:	be87b783          	ld	a5,-1048(a5) # 8000bdf0 <_ZN7_thread7runningE>
    80002210:	00078a63          	beqz	a5,80002224 <_ZN7_thread13threadWrapperEv+0x2c>
    80002214:	0007b703          	ld	a4,0(a5)
    80002218:	00070663          	beqz	a4,80002224 <_ZN7_thread13threadWrapperEv+0x2c>
        running->body(running->arg);
    8000221c:	0087b503          	ld	a0,8(a5)
    80002220:	000700e7          	jalr	a4
    }

    _thread::exit();
    80002224:	00000097          	auipc	ra,0x0
    80002228:	f64080e7          	jalr	-156(ra) # 80002188 <_ZN7_thread4exitEv>
    8000222c:	00813083          	ld	ra,8(sp)
    80002230:	00013403          	ld	s0,0(sp)
    80002234:	01010113          	addi	sp,sp,16
    80002238:	00008067          	ret

000000008000223c <_ZN7_thread4joinEPS_>:
    if (thread == nullptr) {
    8000223c:	04050e63          	beqz	a0,80002298 <_ZN7_thread4joinEPS_+0x5c>
    80002240:	00050793          	mv	a5,a0
    if (thread == running) {
    80002244:	0000a717          	auipc	a4,0xa
    80002248:	bac73703          	ld	a4,-1108(a4) # 8000bdf0 <_ZN7_thread7runningE>
    8000224c:	04a70663          	beq	a4,a0,80002298 <_ZN7_thread4joinEPS_+0x5c>
    if (thread->state == FINISHED) {
    80002250:	09052683          	lw	a3,144(a0)
    80002254:	00400713          	li	a4,4
    80002258:	04e68063          	beq	a3,a4,80002298 <_ZN7_thread4joinEPS_+0x5c>
    if (thread->joinSem == nullptr) {
    8000225c:	0a053503          	ld	a0,160(a0)
    80002260:	02050c63          	beqz	a0,80002298 <_ZN7_thread4joinEPS_+0x5c>
void _thread::join(_thread* thread) {
    80002264:	ff010113          	addi	sp,sp,-16
    80002268:	00113423          	sd	ra,8(sp)
    8000226c:	00813023          	sd	s0,0(sp)
    80002270:	01010413          	addi	s0,sp,16
    thread->joinWaitingCount++;
    80002274:	0a87a703          	lw	a4,168(a5)
    80002278:	0017071b          	addiw	a4,a4,1
    8000227c:	0ae7a423          	sw	a4,168(a5)
    thread->joinSem->wait();
    80002280:	fffff097          	auipc	ra,0xfffff
    80002284:	638080e7          	jalr	1592(ra) # 800018b8 <_ZN4_sem4waitEv>
}
    80002288:	00813083          	ld	ra,8(sp)
    8000228c:	00013403          	ld	s0,0(sp)
    80002290:	01010113          	addi	sp,sp,16
    80002294:	00008067          	ret
    80002298:	00008067          	ret

000000008000229c <_ZNK7_thread7getBodyEv>:
_thread::Body _thread::getBody() const {
    8000229c:	ff010113          	addi	sp,sp,-16
    800022a0:	00813423          	sd	s0,8(sp)
    800022a4:	01010413          	addi	s0,sp,16
}
    800022a8:	00053503          	ld	a0,0(a0)
    800022ac:	00813403          	ld	s0,8(sp)
    800022b0:	01010113          	addi	sp,sp,16
    800022b4:	00008067          	ret

00000000800022b8 <_ZNK7_thread6getArgEv>:
void* _thread::getArg() const {
    800022b8:	ff010113          	addi	sp,sp,-16
    800022bc:	00813423          	sd	s0,8(sp)
    800022c0:	01010413          	addi	s0,sp,16
}
    800022c4:	00853503          	ld	a0,8(a0)
    800022c8:	00813403          	ld	s0,8(sp)
    800022cc:	01010113          	addi	sp,sp,16
    800022d0:	00008067          	ret

00000000800022d4 <_ZNK7_thread8getStackEv>:
void* _thread::getStack() const {
    800022d4:	ff010113          	addi	sp,sp,-16
    800022d8:	00813423          	sd	s0,8(sp)
    800022dc:	01010413          	addi	s0,sp,16
}
    800022e0:	01053503          	ld	a0,16(a0)
    800022e4:	00813403          	ld	s0,8(sp)
    800022e8:	01010113          	addi	sp,sp,16
    800022ec:	00008067          	ret

00000000800022f0 <_ZN7_thread10getContextEv>:
_thread::Context* _thread::getContext() {
    800022f0:	ff010113          	addi	sp,sp,-16
    800022f4:	00813423          	sd	s0,8(sp)
    800022f8:	01010413          	addi	s0,sp,16
}
    800022fc:	01850513          	addi	a0,a0,24
    80002300:	00813403          	ld	s0,8(sp)
    80002304:	01010113          	addi	sp,sp,16
    80002308:	00008067          	ret

000000008000230c <_ZNK7_thread8getStateEv>:
_thread::State _thread::getState() const {
    8000230c:	ff010113          	addi	sp,sp,-16
    80002310:	00813423          	sd	s0,8(sp)
    80002314:	01010413          	addi	s0,sp,16
}
    80002318:	09052503          	lw	a0,144(a0)
    8000231c:	00813403          	ld	s0,8(sp)
    80002320:	01010113          	addi	sp,sp,16
    80002324:	00008067          	ret

0000000080002328 <_ZN7_thread8setStateENS_5StateE>:
void _thread::setState(State state) {
    80002328:	ff010113          	addi	sp,sp,-16
    8000232c:	00813423          	sd	s0,8(sp)
    80002330:	01010413          	addi	s0,sp,16
    this->state = state;
    80002334:	08b52823          	sw	a1,144(a0)
}
    80002338:	00813403          	ld	s0,8(sp)
    8000233c:	01010113          	addi	sp,sp,16
    80002340:	00008067          	ret

0000000080002344 <_ZNK7_thread12getTimeSliceEv>:
uint64 _thread::getTimeSlice() const {
    80002344:	ff010113          	addi	sp,sp,-16
    80002348:	00813423          	sd	s0,8(sp)
    8000234c:	01010413          	addi	s0,sp,16
}
    80002350:	08853503          	ld	a0,136(a0)
    80002354:	00813403          	ld	s0,8(sp)
    80002358:	01010113          	addi	sp,sp,16
    8000235c:	00008067          	ret

0000000080002360 <_Z8userMainv>:
#include "System_Mode_test.hpp"

#endif
extern void threadJoinTest();

void userMain() {
    80002360:	fe010113          	addi	sp,sp,-32
    80002364:	00113c23          	sd	ra,24(sp)
    80002368:	00813823          	sd	s0,16(sp)
    8000236c:	00913423          	sd	s1,8(sp)
    80002370:	01213023          	sd	s2,0(sp)
    80002374:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80002378:	00007517          	auipc	a0,0x7
    8000237c:	db850513          	addi	a0,a0,-584 # 80009130 <CONSOLE_STATUS+0x120>
    80002380:	00003097          	auipc	ra,0x3
    80002384:	7b4080e7          	jalr	1972(ra) # 80005b34 <_Z11printStringPKc>
    int test = getc() - '0';
    80002388:	fffff097          	auipc	ra,0xfffff
    8000238c:	244080e7          	jalr	580(ra) # 800015cc <_Z4getcv>
    80002390:	00050913          	mv	s2,a0
    80002394:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80002398:	fffff097          	auipc	ra,0xfffff
    8000239c:	234080e7          	jalr	564(ra) # 800015cc <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800023a0:	fcb9091b          	addiw	s2,s2,-53
    800023a4:	00100793          	li	a5,1
    800023a8:	0327f463          	bgeu	a5,s2,800023d0 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800023ac:	00800793          	li	a5,8
    800023b0:	1097e063          	bltu	a5,s1,800024b0 <_Z8userMainv+0x150>
    800023b4:	00249493          	slli	s1,s1,0x2
    800023b8:	00007717          	auipc	a4,0x7
    800023bc:	fe870713          	addi	a4,a4,-24 # 800093a0 <CONSOLE_STATUS+0x390>
    800023c0:	00e484b3          	add	s1,s1,a4
    800023c4:	0004a783          	lw	a5,0(s1)
    800023c8:	00e787b3          	add	a5,a5,a4
    800023cc:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800023d0:	00007517          	auipc	a0,0x7
    800023d4:	d8050513          	addi	a0,a0,-640 # 80009150 <CONSOLE_STATUS+0x140>
    800023d8:	00003097          	auipc	ra,0x3
    800023dc:	75c080e7          	jalr	1884(ra) # 80005b34 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800023e0:	01813083          	ld	ra,24(sp)
    800023e4:	01013403          	ld	s0,16(sp)
    800023e8:	00813483          	ld	s1,8(sp)
    800023ec:	00013903          	ld	s2,0(sp)
    800023f0:	02010113          	addi	sp,sp,32
    800023f4:	00008067          	ret
            Threads_C_API_test();
    800023f8:	00003097          	auipc	ra,0x3
    800023fc:	db4080e7          	jalr	-588(ra) # 800051ac <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80002400:	00007517          	auipc	a0,0x7
    80002404:	d8050513          	addi	a0,a0,-640 # 80009180 <CONSOLE_STATUS+0x170>
    80002408:	00003097          	auipc	ra,0x3
    8000240c:	72c080e7          	jalr	1836(ra) # 80005b34 <_Z11printStringPKc>
            break;
    80002410:	fd1ff06f          	j	800023e0 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80002414:	00002097          	auipc	ra,0x2
    80002418:	c78080e7          	jalr	-904(ra) # 8000408c <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    8000241c:	00007517          	auipc	a0,0x7
    80002420:	da450513          	addi	a0,a0,-604 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80002424:	00003097          	auipc	ra,0x3
    80002428:	710080e7          	jalr	1808(ra) # 80005b34 <_Z11printStringPKc>
            break;
    8000242c:	fb5ff06f          	j	800023e0 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80002430:	00001097          	auipc	ra,0x1
    80002434:	4b0080e7          	jalr	1200(ra) # 800038e0 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80002438:	00007517          	auipc	a0,0x7
    8000243c:	dc850513          	addi	a0,a0,-568 # 80009200 <CONSOLE_STATUS+0x1f0>
    80002440:	00003097          	auipc	ra,0x3
    80002444:	6f4080e7          	jalr	1780(ra) # 80005b34 <_Z11printStringPKc>
            break;
    80002448:	f99ff06f          	j	800023e0 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    8000244c:	00003097          	auipc	ra,0x3
    80002450:	0a4080e7          	jalr	164(ra) # 800054f0 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80002454:	00007517          	auipc	a0,0x7
    80002458:	dfc50513          	addi	a0,a0,-516 # 80009250 <CONSOLE_STATUS+0x240>
    8000245c:	00003097          	auipc	ra,0x3
    80002460:	6d8080e7          	jalr	1752(ra) # 80005b34 <_Z11printStringPKc>
            break;
    80002464:	f7dff06f          	j	800023e0 <_Z8userMainv+0x80>
            System_Mode_test();
    80002468:	00004097          	auipc	ra,0x4
    8000246c:	3ac080e7          	jalr	940(ra) # 80006814 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80002470:	00007517          	auipc	a0,0x7
    80002474:	e3850513          	addi	a0,a0,-456 # 800092a8 <CONSOLE_STATUS+0x298>
    80002478:	00003097          	auipc	ra,0x3
    8000247c:	6bc080e7          	jalr	1724(ra) # 80005b34 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80002480:	00007517          	auipc	a0,0x7
    80002484:	e4850513          	addi	a0,a0,-440 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80002488:	00003097          	auipc	ra,0x3
    8000248c:	6ac080e7          	jalr	1708(ra) # 80005b34 <_Z11printStringPKc>
            break;
    80002490:	f51ff06f          	j	800023e0 <_Z8userMainv+0x80>
            threadJoinTest();
    80002494:	00001097          	auipc	ra,0x1
    80002498:	a64080e7          	jalr	-1436(ra) # 80002ef8 <_Z14threadJoinTestv>
            printString("TEST 8 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    8000249c:	00007517          	auipc	a0,0x7
    800024a0:	e8450513          	addi	a0,a0,-380 # 80009320 <CONSOLE_STATUS+0x310>
    800024a4:	00003097          	auipc	ra,0x3
    800024a8:	690080e7          	jalr	1680(ra) # 80005b34 <_Z11printStringPKc>
            break;
    800024ac:	f35ff06f          	j	800023e0 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800024b0:	00007517          	auipc	a0,0x7
    800024b4:	ec850513          	addi	a0,a0,-312 # 80009378 <CONSOLE_STATUS+0x368>
    800024b8:	00003097          	auipc	ra,0x3
    800024bc:	67c080e7          	jalr	1660(ra) # 80005b34 <_Z11printStringPKc>
    800024c0:	f21ff06f          	j	800023e0 <_Z8userMainv+0x80>

00000000800024c4 <_ZN9Scheduler3putEP7_thread>:
#include "../h/Thread.hpp"

_thread* Scheduler::head = nullptr;
_thread* Scheduler::tail = nullptr;

void Scheduler::put(_thread* thread) {
    800024c4:	ff010113          	addi	sp,sp,-16
    800024c8:	00813423          	sd	s0,8(sp)
    800024cc:	01010413          	addi	s0,sp,16
    if (thread == nullptr) {
    800024d0:	04050063          	beqz	a0,80002510 <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    if (thread->state == _thread::FINISHED || thread->state == _thread::BLOCKED) {
    800024d4:	09052783          	lw	a5,144(a0)
    800024d8:	ffd7879b          	addiw	a5,a5,-3
    800024dc:	00100713          	li	a4,1
    800024e0:	02f77863          	bgeu	a4,a5,80002510 <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    thread->state = _thread::READY;
    800024e4:	00100793          	li	a5,1
    800024e8:	08f52823          	sw	a5,144(a0)
    thread->next = nullptr;
    800024ec:	08053c23          	sd	zero,152(a0)

    if (head == nullptr) {
    800024f0:	0000a797          	auipc	a5,0xa
    800024f4:	9087b783          	ld	a5,-1784(a5) # 8000bdf8 <_ZN9Scheduler4headE>
    800024f8:	02078263          	beqz	a5,8000251c <_ZN9Scheduler3putEP7_thread+0x58>
        head = thread;
        tail = thread;
    } else {
        tail->next = thread;
    800024fc:	0000a797          	auipc	a5,0xa
    80002500:	8fc78793          	addi	a5,a5,-1796 # 8000bdf8 <_ZN9Scheduler4headE>
    80002504:	0087b703          	ld	a4,8(a5)
    80002508:	08a73c23          	sd	a0,152(a4)
        tail = thread;
    8000250c:	00a7b423          	sd	a0,8(a5)
    }
}
    80002510:	00813403          	ld	s0,8(sp)
    80002514:	01010113          	addi	sp,sp,16
    80002518:	00008067          	ret
        head = thread;
    8000251c:	0000a797          	auipc	a5,0xa
    80002520:	8dc78793          	addi	a5,a5,-1828 # 8000bdf8 <_ZN9Scheduler4headE>
    80002524:	00a7b023          	sd	a0,0(a5)
        tail = thread;
    80002528:	00a7b423          	sd	a0,8(a5)
    8000252c:	fe5ff06f          	j	80002510 <_ZN9Scheduler3putEP7_thread+0x4c>

0000000080002530 <_ZN9Scheduler3getEv>:

_thread* Scheduler::get() {
    80002530:	ff010113          	addi	sp,sp,-16
    80002534:	00813423          	sd	s0,8(sp)
    80002538:	01010413          	addi	s0,sp,16
    if (head == nullptr) {
    8000253c:	0000a517          	auipc	a0,0xa
    80002540:	8bc53503          	ld	a0,-1860(a0) # 8000bdf8 <_ZN9Scheduler4headE>
    80002544:	00050c63          	beqz	a0,8000255c <_ZN9Scheduler3getEv+0x2c>
        return nullptr;
    }

    _thread* thread = head;

    head = head->next;
    80002548:	09853783          	ld	a5,152(a0)
    8000254c:	0000a717          	auipc	a4,0xa
    80002550:	8af73623          	sd	a5,-1876(a4) # 8000bdf8 <_ZN9Scheduler4headE>

    if (head == nullptr) {
    80002554:	00078a63          	beqz	a5,80002568 <_ZN9Scheduler3getEv+0x38>
        tail = nullptr;
    }

    thread->next = nullptr;
    80002558:	08053c23          	sd	zero,152(a0)

    return thread;
}
    8000255c:	00813403          	ld	s0,8(sp)
    80002560:	01010113          	addi	sp,sp,16
    80002564:	00008067          	ret
        tail = nullptr;
    80002568:	0000a797          	auipc	a5,0xa
    8000256c:	8807bc23          	sd	zero,-1896(a5) # 8000be00 <_ZN9Scheduler4tailE>
    80002570:	fe9ff06f          	j	80002558 <_ZN9Scheduler3getEv+0x28>

0000000080002574 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    80002574:	ff010113          	addi	sp,sp,-16
    80002578:	00813423          	sd	s0,8(sp)
    8000257c:	01010413          	addi	s0,sp,16
    return head == nullptr;
    80002580:	0000a517          	auipc	a0,0xa
    80002584:	87853503          	ld	a0,-1928(a0) # 8000bdf8 <_ZN9Scheduler4headE>
    80002588:	00153513          	seqz	a0,a0
    8000258c:	00813403          	ld	s0,8(sp)
    80002590:	01010113          	addi	sp,sp,16
    80002594:	00008067          	ret

0000000080002598 <_Znwm>:
#include "../h/new.hpp"
#include "../h/syscall_c.hpp"

void* operator new(size_t size) {
    80002598:	ff010113          	addi	sp,sp,-16
    8000259c:	00113423          	sd	ra,8(sp)
    800025a0:	00813023          	sd	s0,0(sp)
    800025a4:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800025a8:	fffff097          	auipc	ra,0xfffff
    800025ac:	c50080e7          	jalr	-944(ra) # 800011f8 <_Z9mem_allocm>
}
    800025b0:	00813083          	ld	ra,8(sp)
    800025b4:	00013403          	ld	s0,0(sp)
    800025b8:	01010113          	addi	sp,sp,16
    800025bc:	00008067          	ret

00000000800025c0 <_Znam>:

void* operator new[](size_t size) {
    800025c0:	ff010113          	addi	sp,sp,-16
    800025c4:	00113423          	sd	ra,8(sp)
    800025c8:	00813023          	sd	s0,0(sp)
    800025cc:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800025d0:	fffff097          	auipc	ra,0xfffff
    800025d4:	c28080e7          	jalr	-984(ra) # 800011f8 <_Z9mem_allocm>
}
    800025d8:	00813083          	ld	ra,8(sp)
    800025dc:	00013403          	ld	s0,0(sp)
    800025e0:	01010113          	addi	sp,sp,16
    800025e4:	00008067          	ret

00000000800025e8 <_ZdlPv>:

void operator delete(void* ptr) {
    800025e8:	ff010113          	addi	sp,sp,-16
    800025ec:	00113423          	sd	ra,8(sp)
    800025f0:	00813023          	sd	s0,0(sp)
    800025f4:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800025f8:	fffff097          	auipc	ra,0xfffff
    800025fc:	c4c080e7          	jalr	-948(ra) # 80001244 <_Z8mem_freePv>
}
    80002600:	00813083          	ld	ra,8(sp)
    80002604:	00013403          	ld	s0,0(sp)
    80002608:	01010113          	addi	sp,sp,16
    8000260c:	00008067          	ret

0000000080002610 <_ZdaPv>:

void operator delete[](void* ptr) {
    80002610:	ff010113          	addi	sp,sp,-16
    80002614:	00113423          	sd	ra,8(sp)
    80002618:	00813023          	sd	s0,0(sp)
    8000261c:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80002620:	fffff097          	auipc	ra,0xfffff
    80002624:	c24080e7          	jalr	-988(ra) # 80001244 <_Z8mem_freePv>
    80002628:	00813083          	ld	ra,8(sp)
    8000262c:	00013403          	ld	s0,0(sp)
    80002630:	01010113          	addi	sp,sp,16
    80002634:	00008067          	ret

0000000080002638 <_ZL15userMainWrapperPv>:
extern "C" void supervisorTrap();
extern void userMain();

static volatile bool userMainFinished = false;

static void userMainWrapper(void*) {
    80002638:	ff010113          	addi	sp,sp,-16
    8000263c:	00113423          	sd	ra,8(sp)
    80002640:	00813023          	sd	s0,0(sp)
    80002644:	01010413          	addi	s0,sp,16
    userMain();
    80002648:	00000097          	auipc	ra,0x0
    8000264c:	d18080e7          	jalr	-744(ra) # 80002360 <_Z8userMainv>
    userMainFinished = true;
    80002650:	00100793          	li	a5,1
    80002654:	00009717          	auipc	a4,0x9
    80002658:	7af70a23          	sb	a5,1972(a4) # 8000be08 <_ZL16userMainFinished>
    thread_exit();
    8000265c:	fffff097          	auipc	ra,0xfffff
    80002660:	cec080e7          	jalr	-788(ra) # 80001348 <_Z11thread_exitv>
}
    80002664:	00813083          	ld	ra,8(sp)
    80002668:	00013403          	ld	s0,0(sp)
    8000266c:	01010113          	addi	sp,sp,16
    80002670:	00008067          	ret

0000000080002674 <main>:

int main() {
    80002674:	f2010113          	addi	sp,sp,-224
    80002678:	0c113c23          	sd	ra,216(sp)
    8000267c:	0c813823          	sd	s0,208(sp)
    80002680:	0c913423          	sd	s1,200(sp)
    80002684:	0e010413          	addi	s0,sp,224
    Riscv::w_stvec((uint64)&supervisorTrap);
    80002688:	00009797          	auipc	a5,0x9
    8000268c:	7007b783          	ld	a5,1792(a5) # 8000bd88 <_GLOBAL_OFFSET_TABLE_+0x18>
        asm volatile("csrw stvec, %0" : : "r"(x));//adresa prekidne rutine, da bi skocilo na supervisorTrap
    80002690:	10579073          	csrw	stvec,a5
        asm volatile("csrs sstatus, %0" : : "r"(mask));//omoguci prekide
    80002694:	00200793          	li	a5,2
    80002698:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    _thread mainThread(nullptr, nullptr, nullptr);//poziv konstruktora
    8000269c:	00000693          	li	a3,0
    800026a0:	00000613          	li	a2,0
    800026a4:	00000593          	li	a1,0
    800026a8:	f3040493          	addi	s1,s0,-208
    800026ac:	00048513          	mv	a0,s1
    800026b0:	00000097          	auipc	ra,0x0
    800026b4:	864080e7          	jalr	-1948(ra) # 80001f14 <_ZN7_threadC1EPFvPvES0_S0_>
    mainThread.setState(_thread::RUNNING);
    800026b8:	00200593          	li	a1,2
    800026bc:	00048513          	mv	a0,s1
    800026c0:	00000097          	auipc	ra,0x0
    800026c4:	c68080e7          	jalr	-920(ra) # 80002328 <_ZN7_thread8setStateENS_5StateE>
    _thread::running = &mainThread;//pravimo main nit zbog dispatch-a, jer nemamo running na pocetku, i scheduler radi samo sa _thread
    800026c8:	00009797          	auipc	a5,0x9
    800026cc:	6b87b783          	ld	a5,1720(a5) # 8000bd80 <_GLOBAL_OFFSET_TABLE_+0x10>
    800026d0:	0097b023          	sd	s1,0(a5)

    thread_t userThread = nullptr;
    800026d4:	f2043423          	sd	zero,-216(s0)
    int ret = thread_create(&userThread, userMainWrapper, nullptr);
    800026d8:	00000613          	li	a2,0
    800026dc:	00000597          	auipc	a1,0x0
    800026e0:	f5c58593          	addi	a1,a1,-164 # 80002638 <_ZL15userMainWrapperPv>
    800026e4:	f2840513          	addi	a0,s0,-216
    800026e8:	fffff097          	auipc	ra,0xfffff
    800026ec:	b9c080e7          	jalr	-1124(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>

    if (ret < 0 || userThread == nullptr) {
    800026f0:	00054663          	bltz	a0,800026fc <main+0x88>
    800026f4:	f2843783          	ld	a5,-216(s0)
    800026f8:	02079063          	bnez	a5,80002718 <main+0xa4>
        volatile uint32* qemu = (uint32*)0x100000;
        *qemu = 0x5555;
    800026fc:	00100737          	lui	a4,0x100
    80002700:	000057b7          	lui	a5,0x5
    80002704:	5557879b          	addiw	a5,a5,1365
    80002708:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
        return ret;
    8000270c:	02c0006f          	j	80002738 <main+0xc4>
    }

    while (!userMainFinished) {
        thread_dispatch();
    80002710:	fffff097          	auipc	ra,0xfffff
    80002714:	c78080e7          	jalr	-904(ra) # 80001388 <_Z15thread_dispatchv>
    while (!userMainFinished) {
    80002718:	00009797          	auipc	a5,0x9
    8000271c:	6f07c783          	lbu	a5,1776(a5) # 8000be08 <_ZL16userMainFinished>
    80002720:	fe0788e3          	beqz	a5,80002710 <main+0x9c>
    }

    volatile uint32* qemu = (uint32*)0x100000;
    *qemu = 0x5555;
    80002724:	00100737          	lui	a4,0x100
    80002728:	000057b7          	lui	a5,0x5
    8000272c:	5557879b          	addiw	a5,a5,1365
    80002730:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>

    return 0;
    80002734:	00000513          	li	a0,0
    80002738:	0d813083          	ld	ra,216(sp)
    8000273c:	0d013403          	ld	s0,208(sp)
    80002740:	0c813483          	ld	s1,200(sp)
    80002744:	0e010113          	addi	sp,sp,224
    80002748:	00008067          	ret

000000008000274c <_ZN6ThreadD1Ev>:
    this->myHandle = nullptr;
    this->body = nullptr;
    this->arg = nullptr;
}

Thread::~Thread() {
    8000274c:	ff010113          	addi	sp,sp,-16
    80002750:	00813423          	sd	s0,8(sp)
    80002754:	01010413          	addi	s0,sp,16
}
    80002758:	00813403          	ld	s0,8(sp)
    8000275c:	01010113          	addi	sp,sp,16
    80002760:	00008067          	ret

0000000080002764 <_ZN6Thread13threadWrapperEPv>:
}

void Thread::threadWrapper(void* thread) {
    Thread* t = (Thread*)thread;

    if (t != nullptr) {
    80002764:	02050863          	beqz	a0,80002794 <_ZN6Thread13threadWrapperEPv+0x30>
void Thread::threadWrapper(void* thread) {
    80002768:	ff010113          	addi	sp,sp,-16
    8000276c:	00113423          	sd	ra,8(sp)
    80002770:	00813023          	sd	s0,0(sp)
    80002774:	01010413          	addi	s0,sp,16
        t->run();
    80002778:	00053783          	ld	a5,0(a0)
    8000277c:	0107b783          	ld	a5,16(a5) # 5010 <_entry-0x7fffaff0>
    80002780:	000780e7          	jalr	a5
    }
}
    80002784:	00813083          	ld	ra,8(sp)
    80002788:	00013403          	ld	s0,0(sp)
    8000278c:	01010113          	addi	sp,sp,16
    80002790:	00008067          	ret
    80002794:	00008067          	ret

0000000080002798 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002798:	ff010113          	addi	sp,sp,-16
    8000279c:	00113423          	sd	ra,8(sp)
    800027a0:	00813023          	sd	s0,0(sp)
    800027a4:	01010413          	addi	s0,sp,16
}
    800027a8:	00000097          	auipc	ra,0x0
    800027ac:	e40080e7          	jalr	-448(ra) # 800025e8 <_ZdlPv>
    800027b0:	00813083          	ld	ra,8(sp)
    800027b4:	00013403          	ld	s0,0(sp)
    800027b8:	01010113          	addi	sp,sp,16
    800027bc:	00008067          	ret

00000000800027c0 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800027c0:	00009797          	auipc	a5,0x9
    800027c4:	38078793          	addi	a5,a5,896 # 8000bb40 <_ZTV9Semaphore+0x10>
    800027c8:	00f53023          	sd	a5,0(a0)
    if (myHandle != nullptr) {
    800027cc:	00853503          	ld	a0,8(a0)
    800027d0:	02050663          	beqz	a0,800027fc <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    800027d4:	ff010113          	addi	sp,sp,-16
    800027d8:	00113423          	sd	ra,8(sp)
    800027dc:	00813023          	sd	s0,0(sp)
    800027e0:	01010413          	addi	s0,sp,16
        sem_close(myHandle);
    800027e4:	fffff097          	auipc	ra,0xfffff
    800027e8:	c60080e7          	jalr	-928(ra) # 80001444 <_Z9sem_closeP4_sem>
    }
}
    800027ec:	00813083          	ld	ra,8(sp)
    800027f0:	00013403          	ld	s0,0(sp)
    800027f4:	01010113          	addi	sp,sp,16
    800027f8:	00008067          	ret
    800027fc:	00008067          	ret

0000000080002800 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002800:	fe010113          	addi	sp,sp,-32
    80002804:	00113c23          	sd	ra,24(sp)
    80002808:	00813823          	sd	s0,16(sp)
    8000280c:	00913423          	sd	s1,8(sp)
    80002810:	02010413          	addi	s0,sp,32
    80002814:	00050493          	mv	s1,a0
}
    80002818:	00000097          	auipc	ra,0x0
    8000281c:	fa8080e7          	jalr	-88(ra) # 800027c0 <_ZN9SemaphoreD1Ev>
    80002820:	00048513          	mv	a0,s1
    80002824:	00000097          	auipc	ra,0x0
    80002828:	dc4080e7          	jalr	-572(ra) # 800025e8 <_ZdlPv>
    8000282c:	01813083          	ld	ra,24(sp)
    80002830:	01013403          	ld	s0,16(sp)
    80002834:	00813483          	ld	s1,8(sp)
    80002838:	02010113          	addi	sp,sp,32
    8000283c:	00008067          	ret

0000000080002840 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    80002840:	ff010113          	addi	sp,sp,-16
    80002844:	00813423          	sd	s0,8(sp)
    80002848:	01010413          	addi	s0,sp,16
    8000284c:	00009797          	auipc	a5,0x9
    80002850:	2cc78793          	addi	a5,a5,716 # 8000bb18 <_ZTV6Thread+0x10>
    80002854:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80002858:	00053423          	sd	zero,8(a0)
    this->body = body;
    8000285c:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80002860:	00c53c23          	sd	a2,24(a0)
}
    80002864:	00813403          	ld	s0,8(sp)
    80002868:	01010113          	addi	sp,sp,16
    8000286c:	00008067          	ret

0000000080002870 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002870:	ff010113          	addi	sp,sp,-16
    80002874:	00813423          	sd	s0,8(sp)
    80002878:	01010413          	addi	s0,sp,16
    8000287c:	00009797          	auipc	a5,0x9
    80002880:	29c78793          	addi	a5,a5,668 # 8000bb18 <_ZTV6Thread+0x10>
    80002884:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80002888:	00053423          	sd	zero,8(a0)
    this->body = nullptr;
    8000288c:	00053823          	sd	zero,16(a0)
    this->arg = nullptr;
    80002890:	00053c23          	sd	zero,24(a0)
}
    80002894:	00813403          	ld	s0,8(sp)
    80002898:	01010113          	addi	sp,sp,16
    8000289c:	00008067          	ret

00000000800028a0 <_ZN6Thread5startEv>:
int Thread::start() {
    800028a0:	ff010113          	addi	sp,sp,-16
    800028a4:	00113423          	sd	ra,8(sp)
    800028a8:	00813023          	sd	s0,0(sp)
    800028ac:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    800028b0:	01053583          	ld	a1,16(a0)
    800028b4:	02058263          	beqz	a1,800028d8 <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    800028b8:	01853603          	ld	a2,24(a0)
    800028bc:	00850513          	addi	a0,a0,8
    800028c0:	fffff097          	auipc	ra,0xfffff
    800028c4:	9c4080e7          	jalr	-1596(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
}
    800028c8:	00813083          	ld	ra,8(sp)
    800028cc:	00013403          	ld	s0,0(sp)
    800028d0:	01010113          	addi	sp,sp,16
    800028d4:	00008067          	ret
    return thread_create(&myHandle, Thread::threadWrapper, this);//kada korisnik ocekuje da se izvrsi run(), pa se u thread wrapper poziva run
    800028d8:	00050613          	mv	a2,a0
    800028dc:	00000597          	auipc	a1,0x0
    800028e0:	e8858593          	addi	a1,a1,-376 # 80002764 <_ZN6Thread13threadWrapperEPv>
    800028e4:	00850513          	addi	a0,a0,8
    800028e8:	fffff097          	auipc	ra,0xfffff
    800028ec:	99c080e7          	jalr	-1636(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    800028f0:	fd9ff06f          	j	800028c8 <_ZN6Thread5startEv+0x28>

00000000800028f4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800028f4:	ff010113          	addi	sp,sp,-16
    800028f8:	00113423          	sd	ra,8(sp)
    800028fc:	00813023          	sd	s0,0(sp)
    80002900:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002904:	fffff097          	auipc	ra,0xfffff
    80002908:	a84080e7          	jalr	-1404(ra) # 80001388 <_Z15thread_dispatchv>
}
    8000290c:	00813083          	ld	ra,8(sp)
    80002910:	00013403          	ld	s0,0(sp)
    80002914:	01010113          	addi	sp,sp,16
    80002918:	00008067          	ret

000000008000291c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    8000291c:	ff010113          	addi	sp,sp,-16
    80002920:	00113423          	sd	ra,8(sp)
    80002924:	00813023          	sd	s0,0(sp)
    80002928:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    8000292c:	fffff097          	auipc	ra,0xfffff
    80002930:	c60080e7          	jalr	-928(ra) # 8000158c <_Z10time_sleepm>
}
    80002934:	00813083          	ld	ra,8(sp)
    80002938:	00013403          	ld	s0,0(sp)
    8000293c:	01010113          	addi	sp,sp,16
    80002940:	00008067          	ret

0000000080002944 <_ZN6Thread4joinEv>:
void Thread::join() {
    80002944:	ff010113          	addi	sp,sp,-16
    80002948:	00113423          	sd	ra,8(sp)
    8000294c:	00813023          	sd	s0,0(sp)
    80002950:	01010413          	addi	s0,sp,16
    thread_join(myHandle);
    80002954:	00853503          	ld	a0,8(a0)
    80002958:	fffff097          	auipc	ra,0xfffff
    8000295c:	a6c080e7          	jalr	-1428(ra) # 800013c4 <_Z11thread_joinP7_thread>
}
    80002960:	00813083          	ld	ra,8(sp)
    80002964:	00013403          	ld	s0,0(sp)
    80002968:	01010113          	addi	sp,sp,16
    8000296c:	00008067          	ret

0000000080002970 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80002970:	ff010113          	addi	sp,sp,-16
    80002974:	00113423          	sd	ra,8(sp)
    80002978:	00813023          	sd	s0,0(sp)
    8000297c:	01010413          	addi	s0,sp,16
    80002980:	00009797          	auipc	a5,0x9
    80002984:	1c078793          	addi	a5,a5,448 # 8000bb40 <_ZTV9Semaphore+0x10>
    80002988:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    8000298c:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002990:	00850513          	addi	a0,a0,8
    80002994:	fffff097          	auipc	ra,0xfffff
    80002998:	a6c080e7          	jalr	-1428(ra) # 80001400 <_Z8sem_openPP4_semj>
}
    8000299c:	00813083          	ld	ra,8(sp)
    800029a0:	00013403          	ld	s0,0(sp)
    800029a4:	01010113          	addi	sp,sp,16
    800029a8:	00008067          	ret

00000000800029ac <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    800029ac:	ff010113          	addi	sp,sp,-16
    800029b0:	00113423          	sd	ra,8(sp)
    800029b4:	00813023          	sd	s0,0(sp)
    800029b8:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800029bc:	00853503          	ld	a0,8(a0)
    800029c0:	fffff097          	auipc	ra,0xfffff
    800029c4:	ac4080e7          	jalr	-1340(ra) # 80001484 <_Z8sem_waitP4_sem>
}
    800029c8:	00813083          	ld	ra,8(sp)
    800029cc:	00013403          	ld	s0,0(sp)
    800029d0:	01010113          	addi	sp,sp,16
    800029d4:	00008067          	ret

00000000800029d8 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    800029d8:	ff010113          	addi	sp,sp,-16
    800029dc:	00113423          	sd	ra,8(sp)
    800029e0:	00813023          	sd	s0,0(sp)
    800029e4:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800029e8:	00853503          	ld	a0,8(a0)
    800029ec:	fffff097          	auipc	ra,0xfffff
    800029f0:	ad8080e7          	jalr	-1320(ra) # 800014c4 <_Z10sem_signalP4_sem>
}
    800029f4:	00813083          	ld	ra,8(sp)
    800029f8:	00013403          	ld	s0,0(sp)
    800029fc:	01010113          	addi	sp,sp,16
    80002a00:	00008067          	ret

0000000080002a04 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    80002a04:	fe010113          	addi	sp,sp,-32
    80002a08:	00113c23          	sd	ra,24(sp)
    80002a0c:	00813823          	sd	s0,16(sp)
    80002a10:	00913423          	sd	s1,8(sp)
    80002a14:	01213023          	sd	s2,0(sp)
    80002a18:	02010413          	addi	s0,sp,32
    80002a1c:	00050493          	mv	s1,a0
    80002a20:	00058913          	mv	s2,a1
    80002a24:	00000097          	auipc	ra,0x0
    80002a28:	e4c080e7          	jalr	-436(ra) # 80002870 <_ZN6ThreadC1Ev>
    80002a2c:	00009797          	auipc	a5,0x9
    80002a30:	0bc78793          	addi	a5,a5,188 # 8000bae8 <_ZTV14PeriodicThread+0x10>
    80002a34:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80002a38:	0324b023          	sd	s2,32(s1)
}
    80002a3c:	01813083          	ld	ra,24(sp)
    80002a40:	01013403          	ld	s0,16(sp)
    80002a44:	00813483          	ld	s1,8(sp)
    80002a48:	00013903          	ld	s2,0(sp)
    80002a4c:	02010113          	addi	sp,sp,32
    80002a50:	00008067          	ret

0000000080002a54 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002a54:	ff010113          	addi	sp,sp,-16
    80002a58:	00813423          	sd	s0,8(sp)
    80002a5c:	01010413          	addi	s0,sp,16
    /*
     * PeriodicThread je deo zadatka 4.
     * Pošto ga ne radiš, ovo ostaje prazno.
     */
}
    80002a60:	00813403          	ld	s0,8(sp)
    80002a64:	01010113          	addi	sp,sp,16
    80002a68:	00008067          	ret

0000000080002a6c <_ZN7Console4getcEv>:

char Console::getc() {
    80002a6c:	ff010113          	addi	sp,sp,-16
    80002a70:	00113423          	sd	ra,8(sp)
    80002a74:	00813023          	sd	s0,0(sp)
    80002a78:	01010413          	addi	s0,sp,16
    return ::getc();
    80002a7c:	fffff097          	auipc	ra,0xfffff
    80002a80:	b50080e7          	jalr	-1200(ra) # 800015cc <_Z4getcv>
}
    80002a84:	00813083          	ld	ra,8(sp)
    80002a88:	00013403          	ld	s0,0(sp)
    80002a8c:	01010113          	addi	sp,sp,16
    80002a90:	00008067          	ret

0000000080002a94 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002a94:	ff010113          	addi	sp,sp,-16
    80002a98:	00113423          	sd	ra,8(sp)
    80002a9c:	00813023          	sd	s0,0(sp)
    80002aa0:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002aa4:	fffff097          	auipc	ra,0xfffff
    80002aa8:	b68080e7          	jalr	-1176(ra) # 8000160c <_Z4putcc>
    80002aac:	00813083          	ld	ra,8(sp)
    80002ab0:	00013403          	ld	s0,0(sp)
    80002ab4:	01010113          	addi	sp,sp,16
    80002ab8:	00008067          	ret

0000000080002abc <_ZN6Thread3runEv>:
    void join();

protected:
    Thread();

    virtual void run() {}
    80002abc:	ff010113          	addi	sp,sp,-16
    80002ac0:	00813423          	sd	s0,8(sp)
    80002ac4:	01010413          	addi	s0,sp,16
    80002ac8:	00813403          	ld	s0,8(sp)
    80002acc:	01010113          	addi	sp,sp,16
    80002ad0:	00008067          	ret

0000000080002ad4 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate();

protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    80002ad4:	ff010113          	addi	sp,sp,-16
    80002ad8:	00813423          	sd	s0,8(sp)
    80002adc:	01010413          	addi	s0,sp,16
    80002ae0:	00813403          	ld	s0,8(sp)
    80002ae4:	01010113          	addi	sp,sp,16
    80002ae8:	00008067          	ret

0000000080002aec <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002aec:	ff010113          	addi	sp,sp,-16
    80002af0:	00813423          	sd	s0,8(sp)
    80002af4:	01010413          	addi	s0,sp,16
    80002af8:	00009797          	auipc	a5,0x9
    80002afc:	ff078793          	addi	a5,a5,-16 # 8000bae8 <_ZTV14PeriodicThread+0x10>
    80002b00:	00f53023          	sd	a5,0(a0)
    80002b04:	00813403          	ld	s0,8(sp)
    80002b08:	01010113          	addi	sp,sp,16
    80002b0c:	00008067          	ret

0000000080002b10 <_ZN14PeriodicThreadD0Ev>:
    80002b10:	ff010113          	addi	sp,sp,-16
    80002b14:	00113423          	sd	ra,8(sp)
    80002b18:	00813023          	sd	s0,0(sp)
    80002b1c:	01010413          	addi	s0,sp,16
    80002b20:	00009797          	auipc	a5,0x9
    80002b24:	fc878793          	addi	a5,a5,-56 # 8000bae8 <_ZTV14PeriodicThread+0x10>
    80002b28:	00f53023          	sd	a5,0(a0)
    80002b2c:	00000097          	auipc	ra,0x0
    80002b30:	abc080e7          	jalr	-1348(ra) # 800025e8 <_ZdlPv>
    80002b34:	00813083          	ld	ra,8(sp)
    80002b38:	00013403          	ld	s0,0(sp)
    80002b3c:	01010113          	addi	sp,sp,16
    80002b40:	00008067          	ret

0000000080002b44 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;
static Thread* threads[3];

static uint64 fibonacci(uint64 n) {
    80002b44:	fe010113          	addi	sp,sp,-32
    80002b48:	00113c23          	sd	ra,24(sp)
    80002b4c:	00813823          	sd	s0,16(sp)
    80002b50:	00913423          	sd	s1,8(sp)
    80002b54:	01213023          	sd	s2,0(sp)
    80002b58:	02010413          	addi	s0,sp,32
    80002b5c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002b60:	00100793          	li	a5,1
    80002b64:	02a7f863          	bgeu	a5,a0,80002b94 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002b68:	00a00793          	li	a5,10
    80002b6c:	02f577b3          	remu	a5,a0,a5
    80002b70:	02078e63          	beqz	a5,80002bac <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002b74:	fff48513          	addi	a0,s1,-1
    80002b78:	00000097          	auipc	ra,0x0
    80002b7c:	fcc080e7          	jalr	-52(ra) # 80002b44 <_ZL9fibonaccim>
    80002b80:	00050913          	mv	s2,a0
    80002b84:	ffe48513          	addi	a0,s1,-2
    80002b88:	00000097          	auipc	ra,0x0
    80002b8c:	fbc080e7          	jalr	-68(ra) # 80002b44 <_ZL9fibonaccim>
    80002b90:	00a90533          	add	a0,s2,a0
}
    80002b94:	01813083          	ld	ra,24(sp)
    80002b98:	01013403          	ld	s0,16(sp)
    80002b9c:	00813483          	ld	s1,8(sp)
    80002ba0:	00013903          	ld	s2,0(sp)
    80002ba4:	02010113          	addi	sp,sp,32
    80002ba8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002bac:	ffffe097          	auipc	ra,0xffffe
    80002bb0:	7dc080e7          	jalr	2012(ra) # 80001388 <_Z15thread_dispatchv>
    80002bb4:	fc1ff06f          	j	80002b74 <_ZL9fibonaccim+0x30>

0000000080002bb8 <_ZN11JoinWorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyC(nullptr);
    }
};

void JoinWorkerA::workerBodyA(void *arg) {
    80002bb8:	fe010113          	addi	sp,sp,-32
    80002bbc:	00113c23          	sd	ra,24(sp)
    80002bc0:	00813823          	sd	s0,16(sp)
    80002bc4:	00913423          	sd	s1,8(sp)
    80002bc8:	01213023          	sd	s2,0(sp)
    80002bcc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002bd0:	00000913          	li	s2,0
    80002bd4:	0380006f          	j	80002c0c <_ZN11JoinWorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            Thread::dispatch();
    80002bd8:	00000097          	auipc	ra,0x0
    80002bdc:	d1c080e7          	jalr	-740(ra) # 800028f4 <_ZN6Thread8dispatchEv>
        for (uint64 j = 0; j < 10000; j++) {
    80002be0:	00148493          	addi	s1,s1,1
    80002be4:	000027b7          	lui	a5,0x2
    80002be8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002bec:	0097ee63          	bltu	a5,s1,80002c08 <_ZN11JoinWorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002bf0:	00000713          	li	a4,0
    80002bf4:	000077b7          	lui	a5,0x7
    80002bf8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002bfc:	fce7eee3          	bltu	a5,a4,80002bd8 <_ZN11JoinWorkerA11workerBodyAEPv+0x20>
    80002c00:	00170713          	addi	a4,a4,1
    80002c04:	ff1ff06f          	j	80002bf4 <_ZN11JoinWorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002c08:	00190913          	addi	s2,s2,1
    80002c0c:	00900793          	li	a5,9
    80002c10:	0527e063          	bltu	a5,s2,80002c50 <_ZN11JoinWorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002c14:	00006517          	auipc	a0,0x6
    80002c18:	7b450513          	addi	a0,a0,1972 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80002c1c:	00003097          	auipc	ra,0x3
    80002c20:	f18080e7          	jalr	-232(ra) # 80005b34 <_Z11printStringPKc>
    80002c24:	00000613          	li	a2,0
    80002c28:	00a00593          	li	a1,10
    80002c2c:	0009051b          	sext.w	a0,s2
    80002c30:	00003097          	auipc	ra,0x3
    80002c34:	0b4080e7          	jalr	180(ra) # 80005ce4 <_Z8printIntiii>
    80002c38:	00006517          	auipc	a0,0x6
    80002c3c:	66850513          	addi	a0,a0,1640 # 800092a0 <CONSOLE_STATUS+0x290>
    80002c40:	00003097          	auipc	ra,0x3
    80002c44:	ef4080e7          	jalr	-268(ra) # 80005b34 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002c48:	00000493          	li	s1,0
    80002c4c:	f99ff06f          	j	80002be4 <_ZN11JoinWorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002c50:	00006517          	auipc	a0,0x6
    80002c54:	78050513          	addi	a0,a0,1920 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80002c58:	00003097          	auipc	ra,0x3
    80002c5c:	edc080e7          	jalr	-292(ra) # 80005b34 <_Z11printStringPKc>
    finishedA = true;
    80002c60:	00100793          	li	a5,1
    80002c64:	00009717          	auipc	a4,0x9
    80002c68:	1af70623          	sb	a5,428(a4) # 8000be10 <_ZL9finishedA>
}
    80002c6c:	01813083          	ld	ra,24(sp)
    80002c70:	01013403          	ld	s0,16(sp)
    80002c74:	00813483          	ld	s1,8(sp)
    80002c78:	00013903          	ld	s2,0(sp)
    80002c7c:	02010113          	addi	sp,sp,32
    80002c80:	00008067          	ret

0000000080002c84 <_ZN11JoinWorkerB11workerBodyBEPv>:

void JoinWorkerB::workerBodyB(void *arg) {
    80002c84:	fe010113          	addi	sp,sp,-32
    80002c88:	00113c23          	sd	ra,24(sp)
    80002c8c:	00813823          	sd	s0,16(sp)
    80002c90:	00913423          	sd	s1,8(sp)
    80002c94:	01213023          	sd	s2,0(sp)
    80002c98:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002c9c:	00000913          	li	s2,0
    80002ca0:	0380006f          	j	80002cd8 <_ZN11JoinWorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            Thread::dispatch();
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	c50080e7          	jalr	-944(ra) # 800028f4 <_ZN6Thread8dispatchEv>
        for (uint64 j = 0; j < 10000; j++) {
    80002cac:	00148493          	addi	s1,s1,1
    80002cb0:	000027b7          	lui	a5,0x2
    80002cb4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002cb8:	0097ee63          	bltu	a5,s1,80002cd4 <_ZN11JoinWorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002cbc:	00000713          	li	a4,0
    80002cc0:	000077b7          	lui	a5,0x7
    80002cc4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002cc8:	fce7eee3          	bltu	a5,a4,80002ca4 <_ZN11JoinWorkerB11workerBodyBEPv+0x20>
    80002ccc:	00170713          	addi	a4,a4,1
    80002cd0:	ff1ff06f          	j	80002cc0 <_ZN11JoinWorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002cd4:	00190913          	addi	s2,s2,1
    80002cd8:	00f00793          	li	a5,15
    80002cdc:	0527e063          	bltu	a5,s2,80002d1c <_ZN11JoinWorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002ce0:	00006517          	auipc	a0,0x6
    80002ce4:	70050513          	addi	a0,a0,1792 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80002ce8:	00003097          	auipc	ra,0x3
    80002cec:	e4c080e7          	jalr	-436(ra) # 80005b34 <_Z11printStringPKc>
    80002cf0:	00000613          	li	a2,0
    80002cf4:	00a00593          	li	a1,10
    80002cf8:	0009051b          	sext.w	a0,s2
    80002cfc:	00003097          	auipc	ra,0x3
    80002d00:	fe8080e7          	jalr	-24(ra) # 80005ce4 <_Z8printIntiii>
    80002d04:	00006517          	auipc	a0,0x6
    80002d08:	59c50513          	addi	a0,a0,1436 # 800092a0 <CONSOLE_STATUS+0x290>
    80002d0c:	00003097          	auipc	ra,0x3
    80002d10:	e28080e7          	jalr	-472(ra) # 80005b34 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002d14:	00000493          	li	s1,0
    80002d18:	f99ff06f          	j	80002cb0 <_ZN11JoinWorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002d1c:	00006517          	auipc	a0,0x6
    80002d20:	6cc50513          	addi	a0,a0,1740 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80002d24:	00003097          	auipc	ra,0x3
    80002d28:	e10080e7          	jalr	-496(ra) # 80005b34 <_Z11printStringPKc>
    finishedB = true;
    80002d2c:	00100793          	li	a5,1
    80002d30:	00009717          	auipc	a4,0x9
    80002d34:	0ef700a3          	sb	a5,225(a4) # 8000be11 <_ZL9finishedB>
    Thread::dispatch();
    80002d38:	00000097          	auipc	ra,0x0
    80002d3c:	bbc080e7          	jalr	-1092(ra) # 800028f4 <_ZN6Thread8dispatchEv>
}
    80002d40:	01813083          	ld	ra,24(sp)
    80002d44:	01013403          	ld	s0,16(sp)
    80002d48:	00813483          	ld	s1,8(sp)
    80002d4c:	00013903          	ld	s2,0(sp)
    80002d50:	02010113          	addi	sp,sp,32
    80002d54:	00008067          	ret

0000000080002d58 <_ZN11JoinWorkerC11workerBodyCEPv>:

void JoinWorkerC::workerBodyC(void *arg) {
    80002d58:	fe010113          	addi	sp,sp,-32
    80002d5c:	00113c23          	sd	ra,24(sp)
    80002d60:	00813823          	sd	s0,16(sp)
    80002d64:	00913423          	sd	s1,8(sp)
    80002d68:	01213023          	sd	s2,0(sp)
    80002d6c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002d70:	00000493          	li	s1,0
    80002d74:	0400006f          	j	80002db4 <_ZN11JoinWorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002d78:	00006517          	auipc	a0,0x6
    80002d7c:	68050513          	addi	a0,a0,1664 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80002d80:	00003097          	auipc	ra,0x3
    80002d84:	db4080e7          	jalr	-588(ra) # 80005b34 <_Z11printStringPKc>
    80002d88:	00000613          	li	a2,0
    80002d8c:	00a00593          	li	a1,10
    80002d90:	00048513          	mv	a0,s1
    80002d94:	00003097          	auipc	ra,0x3
    80002d98:	f50080e7          	jalr	-176(ra) # 80005ce4 <_Z8printIntiii>
    80002d9c:	00006517          	auipc	a0,0x6
    80002da0:	50450513          	addi	a0,a0,1284 # 800092a0 <CONSOLE_STATUS+0x290>
    80002da4:	00003097          	auipc	ra,0x3
    80002da8:	d90080e7          	jalr	-624(ra) # 80005b34 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002dac:	0014849b          	addiw	s1,s1,1
    80002db0:	0ff4f493          	andi	s1,s1,255
    80002db4:	00200793          	li	a5,2
    80002db8:	fc97f0e3          	bgeu	a5,s1,80002d78 <_ZN11JoinWorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002dbc:	00006517          	auipc	a0,0x6
    80002dc0:	64450513          	addi	a0,a0,1604 # 80009400 <CONSOLE_STATUS+0x3f0>
    80002dc4:	00003097          	auipc	ra,0x3
    80002dc8:	d70080e7          	jalr	-656(ra) # 80005b34 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002dcc:	00700313          	li	t1,7
    Thread::dispatch();
    80002dd0:	00000097          	auipc	ra,0x0
    80002dd4:	b24080e7          	jalr	-1244(ra) # 800028f4 <_ZN6Thread8dispatchEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002dd8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002ddc:	00006517          	auipc	a0,0x6
    80002de0:	63450513          	addi	a0,a0,1588 # 80009410 <CONSOLE_STATUS+0x400>
    80002de4:	00003097          	auipc	ra,0x3
    80002de8:	d50080e7          	jalr	-688(ra) # 80005b34 <_Z11printStringPKc>
    80002dec:	00000613          	li	a2,0
    80002df0:	00a00593          	li	a1,10
    80002df4:	0009051b          	sext.w	a0,s2
    80002df8:	00003097          	auipc	ra,0x3
    80002dfc:	eec080e7          	jalr	-276(ra) # 80005ce4 <_Z8printIntiii>
    80002e00:	00006517          	auipc	a0,0x6
    80002e04:	4a050513          	addi	a0,a0,1184 # 800092a0 <CONSOLE_STATUS+0x290>
    80002e08:	00003097          	auipc	ra,0x3
    80002e0c:	d2c080e7          	jalr	-724(ra) # 80005b34 <_Z11printStringPKc>
    threads[0]->join();
    80002e10:	00009517          	auipc	a0,0x9
    80002e14:	00853503          	ld	a0,8(a0) # 8000be18 <_ZL7threads>
    80002e18:	00000097          	auipc	ra,0x0
    80002e1c:	b2c080e7          	jalr	-1236(ra) # 80002944 <_ZN6Thread4joinEv>
    uint64 result = fibonacci(12);
    80002e20:	00c00513          	li	a0,12
    80002e24:	00000097          	auipc	ra,0x0
    80002e28:	d20080e7          	jalr	-736(ra) # 80002b44 <_ZL9fibonaccim>
    80002e2c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002e30:	00006517          	auipc	a0,0x6
    80002e34:	5e850513          	addi	a0,a0,1512 # 80009418 <CONSOLE_STATUS+0x408>
    80002e38:	00003097          	auipc	ra,0x3
    80002e3c:	cfc080e7          	jalr	-772(ra) # 80005b34 <_Z11printStringPKc>
    80002e40:	00000613          	li	a2,0
    80002e44:	00a00593          	li	a1,10
    80002e48:	0009051b          	sext.w	a0,s2
    80002e4c:	00003097          	auipc	ra,0x3
    80002e50:	e98080e7          	jalr	-360(ra) # 80005ce4 <_Z8printIntiii>
    80002e54:	00006517          	auipc	a0,0x6
    80002e58:	44c50513          	addi	a0,a0,1100 # 800092a0 <CONSOLE_STATUS+0x290>
    80002e5c:	00003097          	auipc	ra,0x3
    80002e60:	cd8080e7          	jalr	-808(ra) # 80005b34 <_Z11printStringPKc>
    80002e64:	0400006f          	j	80002ea4 <_ZN11JoinWorkerC11workerBodyCEPv+0x14c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002e68:	00006517          	auipc	a0,0x6
    80002e6c:	59050513          	addi	a0,a0,1424 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80002e70:	00003097          	auipc	ra,0x3
    80002e74:	cc4080e7          	jalr	-828(ra) # 80005b34 <_Z11printStringPKc>
    80002e78:	00000613          	li	a2,0
    80002e7c:	00a00593          	li	a1,10
    80002e80:	00048513          	mv	a0,s1
    80002e84:	00003097          	auipc	ra,0x3
    80002e88:	e60080e7          	jalr	-416(ra) # 80005ce4 <_Z8printIntiii>
    80002e8c:	00006517          	auipc	a0,0x6
    80002e90:	41450513          	addi	a0,a0,1044 # 800092a0 <CONSOLE_STATUS+0x290>
    80002e94:	00003097          	auipc	ra,0x3
    80002e98:	ca0080e7          	jalr	-864(ra) # 80005b34 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002e9c:	0014849b          	addiw	s1,s1,1
    80002ea0:	0ff4f493          	andi	s1,s1,255
    80002ea4:	00500793          	li	a5,5
    80002ea8:	fc97f0e3          	bgeu	a5,s1,80002e68 <_ZN11JoinWorkerC11workerBodyCEPv+0x110>
    }
    threads[1]->join();
    80002eac:	00009497          	auipc	s1,0x9
    80002eb0:	f6448493          	addi	s1,s1,-156 # 8000be10 <_ZL9finishedA>
    80002eb4:	0104b503          	ld	a0,16(s1)
    80002eb8:	00000097          	auipc	ra,0x0
    80002ebc:	a8c080e7          	jalr	-1396(ra) # 80002944 <_ZN6Thread4joinEv>

    printString("C finished!\n");
    80002ec0:	00006517          	auipc	a0,0x6
    80002ec4:	56850513          	addi	a0,a0,1384 # 80009428 <CONSOLE_STATUS+0x418>
    80002ec8:	00003097          	auipc	ra,0x3
    80002ecc:	c6c080e7          	jalr	-916(ra) # 80005b34 <_Z11printStringPKc>
    finishedC = true;
    80002ed0:	00100793          	li	a5,1
    80002ed4:	02f48023          	sb	a5,32(s1)
    Thread::dispatch();
    80002ed8:	00000097          	auipc	ra,0x0
    80002edc:	a1c080e7          	jalr	-1508(ra) # 800028f4 <_ZN6Thread8dispatchEv>
}
    80002ee0:	01813083          	ld	ra,24(sp)
    80002ee4:	01013403          	ld	s0,16(sp)
    80002ee8:	00813483          	ld	s1,8(sp)
    80002eec:	00013903          	ld	s2,0(sp)
    80002ef0:	02010113          	addi	sp,sp,32
    80002ef4:	00008067          	ret

0000000080002ef8 <_Z14threadJoinTestv>:

void threadJoinTest() {
    80002ef8:	fe010113          	addi	sp,sp,-32
    80002efc:	00113c23          	sd	ra,24(sp)
    80002f00:	00813823          	sd	s0,16(sp)
    80002f04:	00913423          	sd	s1,8(sp)
    80002f08:	01213023          	sd	s2,0(sp)
    80002f0c:	02010413          	addi	s0,sp,32
    finishedA = false;
    80002f10:	00009797          	auipc	a5,0x9
    80002f14:	f0078793          	addi	a5,a5,-256 # 8000be10 <_ZL9finishedA>
    80002f18:	00078023          	sb	zero,0(a5)
    finishedB = false;
    80002f1c:	000780a3          	sb	zero,1(a5)
    finishedC = false;
    80002f20:	02078023          	sb	zero,32(a5)

    threads[0] = new JoinWorkerA();
    80002f24:	02000513          	li	a0,32
    80002f28:	fffff097          	auipc	ra,0xfffff
    80002f2c:	670080e7          	jalr	1648(ra) # 80002598 <_Znwm>
    80002f30:	00050493          	mv	s1,a0
    JoinWorkerA():Thread() {}
    80002f34:	00000097          	auipc	ra,0x0
    80002f38:	93c080e7          	jalr	-1732(ra) # 80002870 <_ZN6ThreadC1Ev>
    80002f3c:	00009797          	auipc	a5,0x9
    80002f40:	c2478793          	addi	a5,a5,-988 # 8000bb60 <_ZTV11JoinWorkerA+0x10>
    80002f44:	00f4b023          	sd	a5,0(s1)
    threads[0] = new JoinWorkerA();
    80002f48:	00009797          	auipc	a5,0x9
    80002f4c:	ec97b823          	sd	s1,-304(a5) # 8000be18 <_ZL7threads>
    printString("ThreadA created\n");
    80002f50:	00006517          	auipc	a0,0x6
    80002f54:	4e850513          	addi	a0,a0,1256 # 80009438 <CONSOLE_STATUS+0x428>
    80002f58:	00003097          	auipc	ra,0x3
    80002f5c:	bdc080e7          	jalr	-1060(ra) # 80005b34 <_Z11printStringPKc>

    threads[1] = new JoinWorkerB();
    80002f60:	02000513          	li	a0,32
    80002f64:	fffff097          	auipc	ra,0xfffff
    80002f68:	634080e7          	jalr	1588(ra) # 80002598 <_Znwm>
    80002f6c:	00050493          	mv	s1,a0
    JoinWorkerB():Thread() {}
    80002f70:	00000097          	auipc	ra,0x0
    80002f74:	900080e7          	jalr	-1792(ra) # 80002870 <_ZN6ThreadC1Ev>
    80002f78:	00009797          	auipc	a5,0x9
    80002f7c:	c1078793          	addi	a5,a5,-1008 # 8000bb88 <_ZTV11JoinWorkerB+0x10>
    80002f80:	00f4b023          	sd	a5,0(s1)
    threads[1] = new JoinWorkerB();
    80002f84:	00009797          	auipc	a5,0x9
    80002f88:	e897be23          	sd	s1,-356(a5) # 8000be20 <_ZL7threads+0x8>
    printString("ThreadB created\n");
    80002f8c:	00006517          	auipc	a0,0x6
    80002f90:	4c450513          	addi	a0,a0,1220 # 80009450 <CONSOLE_STATUS+0x440>
    80002f94:	00003097          	auipc	ra,0x3
    80002f98:	ba0080e7          	jalr	-1120(ra) # 80005b34 <_Z11printStringPKc>

    threads[2] = new JoinWorkerC();
    80002f9c:	02000513          	li	a0,32
    80002fa0:	fffff097          	auipc	ra,0xfffff
    80002fa4:	5f8080e7          	jalr	1528(ra) # 80002598 <_Znwm>
    80002fa8:	00050493          	mv	s1,a0
    JoinWorkerC():Thread() {}
    80002fac:	00000097          	auipc	ra,0x0
    80002fb0:	8c4080e7          	jalr	-1852(ra) # 80002870 <_ZN6ThreadC1Ev>
    80002fb4:	00009797          	auipc	a5,0x9
    80002fb8:	bfc78793          	addi	a5,a5,-1028 # 8000bbb0 <_ZTV11JoinWorkerC+0x10>
    80002fbc:	00f4b023          	sd	a5,0(s1)
    threads[2] = new JoinWorkerC();
    80002fc0:	00009797          	auipc	a5,0x9
    80002fc4:	e697b423          	sd	s1,-408(a5) # 8000be28 <_ZL7threads+0x10>
    printString("ThreadC created\n");
    80002fc8:	00006517          	auipc	a0,0x6
    80002fcc:	4a050513          	addi	a0,a0,1184 # 80009468 <CONSOLE_STATUS+0x458>
    80002fd0:	00003097          	auipc	ra,0x3
    80002fd4:	b64080e7          	jalr	-1180(ra) # 80005b34 <_Z11printStringPKc>

    for(int i=0; i<3; i++) {
    80002fd8:	00000493          	li	s1,0
    80002fdc:	00200793          	li	a5,2
    80002fe0:	0297c863          	blt	a5,s1,80003010 <_Z14threadJoinTestv+0x118>
        threads[i]->start();
    80002fe4:	00349713          	slli	a4,s1,0x3
    80002fe8:	00009797          	auipc	a5,0x9
    80002fec:	e2878793          	addi	a5,a5,-472 # 8000be10 <_ZL9finishedA>
    80002ff0:	00e787b3          	add	a5,a5,a4
    80002ff4:	0087b503          	ld	a0,8(a5)
    80002ff8:	00000097          	auipc	ra,0x0
    80002ffc:	8a8080e7          	jalr	-1880(ra) # 800028a0 <_ZN6Thread5startEv>
    for(int i=0; i<3; i++) {
    80003000:	0014849b          	addiw	s1,s1,1
    80003004:	fd9ff06f          	j	80002fdc <_Z14threadJoinTestv+0xe4>
    }

    while (!(finishedA && finishedB && finishedC)) {
        Thread::dispatch();
    80003008:	00000097          	auipc	ra,0x0
    8000300c:	8ec080e7          	jalr	-1812(ra) # 800028f4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC)) {
    80003010:	00009797          	auipc	a5,0x9
    80003014:	e007c783          	lbu	a5,-512(a5) # 8000be10 <_ZL9finishedA>
    80003018:	fe0788e3          	beqz	a5,80003008 <_Z14threadJoinTestv+0x110>
    8000301c:	00009797          	auipc	a5,0x9
    80003020:	df57c783          	lbu	a5,-523(a5) # 8000be11 <_ZL9finishedB>
    80003024:	fe0782e3          	beqz	a5,80003008 <_Z14threadJoinTestv+0x110>
    80003028:	00009797          	auipc	a5,0x9
    8000302c:	e087c783          	lbu	a5,-504(a5) # 8000be30 <_ZL9finishedC>
    80003030:	fc078ce3          	beqz	a5,80003008 <_Z14threadJoinTestv+0x110>
    80003034:	00009497          	auipc	s1,0x9
    80003038:	de448493          	addi	s1,s1,-540 # 8000be18 <_ZL7threads>
    8000303c:	0080006f          	j	80003044 <_Z14threadJoinTestv+0x14c>
    }

    for (auto thread: threads) { delete thread; }
    80003040:	00848493          	addi	s1,s1,8
    80003044:	00009797          	auipc	a5,0x9
    80003048:	dec78793          	addi	a5,a5,-532 # 8000be30 <_ZL9finishedC>
    8000304c:	06f48863          	beq	s1,a5,800030bc <_Z14threadJoinTestv+0x1c4>
    80003050:	0004b503          	ld	a0,0(s1)
    80003054:	fe0506e3          	beqz	a0,80003040 <_Z14threadJoinTestv+0x148>
    80003058:	00053783          	ld	a5,0(a0)
    8000305c:	0087b783          	ld	a5,8(a5)
    80003060:	000780e7          	jalr	a5
    80003064:	fddff06f          	j	80003040 <_Z14threadJoinTestv+0x148>
    80003068:	00050913          	mv	s2,a0
    threads[0] = new JoinWorkerA();
    8000306c:	00048513          	mv	a0,s1
    80003070:	fffff097          	auipc	ra,0xfffff
    80003074:	578080e7          	jalr	1400(ra) # 800025e8 <_ZdlPv>
    80003078:	00090513          	mv	a0,s2
    8000307c:	0000a097          	auipc	ra,0xa
    80003080:	eec080e7          	jalr	-276(ra) # 8000cf68 <_Unwind_Resume>
    80003084:	00050913          	mv	s2,a0
    threads[1] = new JoinWorkerB();
    80003088:	00048513          	mv	a0,s1
    8000308c:	fffff097          	auipc	ra,0xfffff
    80003090:	55c080e7          	jalr	1372(ra) # 800025e8 <_ZdlPv>
    80003094:	00090513          	mv	a0,s2
    80003098:	0000a097          	auipc	ra,0xa
    8000309c:	ed0080e7          	jalr	-304(ra) # 8000cf68 <_Unwind_Resume>
    800030a0:	00050913          	mv	s2,a0
    threads[2] = new JoinWorkerC();
    800030a4:	00048513          	mv	a0,s1
    800030a8:	fffff097          	auipc	ra,0xfffff
    800030ac:	540080e7          	jalr	1344(ra) # 800025e8 <_ZdlPv>
    800030b0:	00090513          	mv	a0,s2
    800030b4:	0000a097          	auipc	ra,0xa
    800030b8:	eb4080e7          	jalr	-332(ra) # 8000cf68 <_Unwind_Resume>
}
    800030bc:	01813083          	ld	ra,24(sp)
    800030c0:	01013403          	ld	s0,16(sp)
    800030c4:	00813483          	ld	s1,8(sp)
    800030c8:	00013903          	ld	s2,0(sp)
    800030cc:	02010113          	addi	sp,sp,32
    800030d0:	00008067          	ret

00000000800030d4 <_ZN11JoinWorkerAD1Ev>:
class JoinWorkerA: public Thread {
    800030d4:	ff010113          	addi	sp,sp,-16
    800030d8:	00113423          	sd	ra,8(sp)
    800030dc:	00813023          	sd	s0,0(sp)
    800030e0:	01010413          	addi	s0,sp,16
    800030e4:	00009797          	auipc	a5,0x9
    800030e8:	a7c78793          	addi	a5,a5,-1412 # 8000bb60 <_ZTV11JoinWorkerA+0x10>
    800030ec:	00f53023          	sd	a5,0(a0)
    800030f0:	fffff097          	auipc	ra,0xfffff
    800030f4:	65c080e7          	jalr	1628(ra) # 8000274c <_ZN6ThreadD1Ev>
    800030f8:	00813083          	ld	ra,8(sp)
    800030fc:	00013403          	ld	s0,0(sp)
    80003100:	01010113          	addi	sp,sp,16
    80003104:	00008067          	ret

0000000080003108 <_ZN11JoinWorkerAD0Ev>:
    80003108:	fe010113          	addi	sp,sp,-32
    8000310c:	00113c23          	sd	ra,24(sp)
    80003110:	00813823          	sd	s0,16(sp)
    80003114:	00913423          	sd	s1,8(sp)
    80003118:	02010413          	addi	s0,sp,32
    8000311c:	00050493          	mv	s1,a0
    80003120:	00009797          	auipc	a5,0x9
    80003124:	a4078793          	addi	a5,a5,-1472 # 8000bb60 <_ZTV11JoinWorkerA+0x10>
    80003128:	00f53023          	sd	a5,0(a0)
    8000312c:	fffff097          	auipc	ra,0xfffff
    80003130:	620080e7          	jalr	1568(ra) # 8000274c <_ZN6ThreadD1Ev>
    80003134:	00048513          	mv	a0,s1
    80003138:	fffff097          	auipc	ra,0xfffff
    8000313c:	4b0080e7          	jalr	1200(ra) # 800025e8 <_ZdlPv>
    80003140:	01813083          	ld	ra,24(sp)
    80003144:	01013403          	ld	s0,16(sp)
    80003148:	00813483          	ld	s1,8(sp)
    8000314c:	02010113          	addi	sp,sp,32
    80003150:	00008067          	ret

0000000080003154 <_ZN11JoinWorkerBD1Ev>:
class JoinWorkerB: public Thread {
    80003154:	ff010113          	addi	sp,sp,-16
    80003158:	00113423          	sd	ra,8(sp)
    8000315c:	00813023          	sd	s0,0(sp)
    80003160:	01010413          	addi	s0,sp,16
    80003164:	00009797          	auipc	a5,0x9
    80003168:	a2478793          	addi	a5,a5,-1500 # 8000bb88 <_ZTV11JoinWorkerB+0x10>
    8000316c:	00f53023          	sd	a5,0(a0)
    80003170:	fffff097          	auipc	ra,0xfffff
    80003174:	5dc080e7          	jalr	1500(ra) # 8000274c <_ZN6ThreadD1Ev>
    80003178:	00813083          	ld	ra,8(sp)
    8000317c:	00013403          	ld	s0,0(sp)
    80003180:	01010113          	addi	sp,sp,16
    80003184:	00008067          	ret

0000000080003188 <_ZN11JoinWorkerBD0Ev>:
    80003188:	fe010113          	addi	sp,sp,-32
    8000318c:	00113c23          	sd	ra,24(sp)
    80003190:	00813823          	sd	s0,16(sp)
    80003194:	00913423          	sd	s1,8(sp)
    80003198:	02010413          	addi	s0,sp,32
    8000319c:	00050493          	mv	s1,a0
    800031a0:	00009797          	auipc	a5,0x9
    800031a4:	9e878793          	addi	a5,a5,-1560 # 8000bb88 <_ZTV11JoinWorkerB+0x10>
    800031a8:	00f53023          	sd	a5,0(a0)
    800031ac:	fffff097          	auipc	ra,0xfffff
    800031b0:	5a0080e7          	jalr	1440(ra) # 8000274c <_ZN6ThreadD1Ev>
    800031b4:	00048513          	mv	a0,s1
    800031b8:	fffff097          	auipc	ra,0xfffff
    800031bc:	430080e7          	jalr	1072(ra) # 800025e8 <_ZdlPv>
    800031c0:	01813083          	ld	ra,24(sp)
    800031c4:	01013403          	ld	s0,16(sp)
    800031c8:	00813483          	ld	s1,8(sp)
    800031cc:	02010113          	addi	sp,sp,32
    800031d0:	00008067          	ret

00000000800031d4 <_ZN11JoinWorkerCD1Ev>:
class JoinWorkerC: public Thread {
    800031d4:	ff010113          	addi	sp,sp,-16
    800031d8:	00113423          	sd	ra,8(sp)
    800031dc:	00813023          	sd	s0,0(sp)
    800031e0:	01010413          	addi	s0,sp,16
    800031e4:	00009797          	auipc	a5,0x9
    800031e8:	9cc78793          	addi	a5,a5,-1588 # 8000bbb0 <_ZTV11JoinWorkerC+0x10>
    800031ec:	00f53023          	sd	a5,0(a0)
    800031f0:	fffff097          	auipc	ra,0xfffff
    800031f4:	55c080e7          	jalr	1372(ra) # 8000274c <_ZN6ThreadD1Ev>
    800031f8:	00813083          	ld	ra,8(sp)
    800031fc:	00013403          	ld	s0,0(sp)
    80003200:	01010113          	addi	sp,sp,16
    80003204:	00008067          	ret

0000000080003208 <_ZN11JoinWorkerCD0Ev>:
    80003208:	fe010113          	addi	sp,sp,-32
    8000320c:	00113c23          	sd	ra,24(sp)
    80003210:	00813823          	sd	s0,16(sp)
    80003214:	00913423          	sd	s1,8(sp)
    80003218:	02010413          	addi	s0,sp,32
    8000321c:	00050493          	mv	s1,a0
    80003220:	00009797          	auipc	a5,0x9
    80003224:	99078793          	addi	a5,a5,-1648 # 8000bbb0 <_ZTV11JoinWorkerC+0x10>
    80003228:	00f53023          	sd	a5,0(a0)
    8000322c:	fffff097          	auipc	ra,0xfffff
    80003230:	520080e7          	jalr	1312(ra) # 8000274c <_ZN6ThreadD1Ev>
    80003234:	00048513          	mv	a0,s1
    80003238:	fffff097          	auipc	ra,0xfffff
    8000323c:	3b0080e7          	jalr	944(ra) # 800025e8 <_ZdlPv>
    80003240:	01813083          	ld	ra,24(sp)
    80003244:	01013403          	ld	s0,16(sp)
    80003248:	00813483          	ld	s1,8(sp)
    8000324c:	02010113          	addi	sp,sp,32
    80003250:	00008067          	ret

0000000080003254 <_ZN11JoinWorkerA3runEv>:
    void run() override {
    80003254:	ff010113          	addi	sp,sp,-16
    80003258:	00113423          	sd	ra,8(sp)
    8000325c:	00813023          	sd	s0,0(sp)
    80003260:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003264:	00000593          	li	a1,0
    80003268:	00000097          	auipc	ra,0x0
    8000326c:	950080e7          	jalr	-1712(ra) # 80002bb8 <_ZN11JoinWorkerA11workerBodyAEPv>
    }
    80003270:	00813083          	ld	ra,8(sp)
    80003274:	00013403          	ld	s0,0(sp)
    80003278:	01010113          	addi	sp,sp,16
    8000327c:	00008067          	ret

0000000080003280 <_ZN11JoinWorkerB3runEv>:
    void run() override {
    80003280:	ff010113          	addi	sp,sp,-16
    80003284:	00113423          	sd	ra,8(sp)
    80003288:	00813023          	sd	s0,0(sp)
    8000328c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003290:	00000593          	li	a1,0
    80003294:	00000097          	auipc	ra,0x0
    80003298:	9f0080e7          	jalr	-1552(ra) # 80002c84 <_ZN11JoinWorkerB11workerBodyBEPv>
    }
    8000329c:	00813083          	ld	ra,8(sp)
    800032a0:	00013403          	ld	s0,0(sp)
    800032a4:	01010113          	addi	sp,sp,16
    800032a8:	00008067          	ret

00000000800032ac <_ZN11JoinWorkerC3runEv>:
    void run() override {
    800032ac:	ff010113          	addi	sp,sp,-16
    800032b0:	00113423          	sd	ra,8(sp)
    800032b4:	00813023          	sd	s0,0(sp)
    800032b8:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800032bc:	00000593          	li	a1,0
    800032c0:	00000097          	auipc	ra,0x0
    800032c4:	a98080e7          	jalr	-1384(ra) # 80002d58 <_ZN11JoinWorkerC11workerBodyCEPv>
    }
    800032c8:	00813083          	ld	ra,8(sp)
    800032cc:	00013403          	ld	s0,0(sp)
    800032d0:	01010113          	addi	sp,sp,16
    800032d4:	00008067          	ret

00000000800032d8 <_ZN15MemoryAllocatorC1Ev>:
#include "../h/MemoryAllocator.hpp"

MemoryAllocator::MemoryAllocator() : freeHead(nullptr), initialized(false) {}
    800032d8:	ff010113          	addi	sp,sp,-16
    800032dc:	00813423          	sd	s0,8(sp)
    800032e0:	01010413          	addi	s0,sp,16
    800032e4:	00053023          	sd	zero,0(a0)
    800032e8:	00050423          	sb	zero,8(a0)
    800032ec:	00813403          	ld	s0,8(sp)
    800032f0:	01010113          	addi	sp,sp,16
    800032f4:	00008067          	ret

00000000800032f8 <_Z41__static_initialization_and_destruction_0ii>:
            block->next->prev = block;
        }
        nextBlock->next = nullptr;
        nextBlock->prev = nullptr;
    }
    800032f8:	00100793          	li	a5,1
    800032fc:	00f50463          	beq	a0,a5,80003304 <_Z41__static_initialization_and_destruction_0ii+0xc>
    80003300:	00008067          	ret
    80003304:	000107b7          	lui	a5,0x10
    80003308:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000330c:	fef59ae3          	bne	a1,a5,80003300 <_Z41__static_initialization_and_destruction_0ii+0x8>
    80003310:	ff010113          	addi	sp,sp,-16
    80003314:	00113423          	sd	ra,8(sp)
    80003318:	00813023          	sd	s0,0(sp)
    8000331c:	01010413          	addi	s0,sp,16
MemoryAllocator MemoryAllocator::instance;
    80003320:	00009517          	auipc	a0,0x9
    80003324:	b1850513          	addi	a0,a0,-1256 # 8000be38 <_ZN15MemoryAllocator8instanceE>
    80003328:	00000097          	auipc	ra,0x0
    8000332c:	fb0080e7          	jalr	-80(ra) # 800032d8 <_ZN15MemoryAllocatorC1Ev>
    80003330:	00813083          	ld	ra,8(sp)
    80003334:	00013403          	ld	s0,0(sp)
    80003338:	01010113          	addi	sp,sp,16
    8000333c:	00008067          	ret

0000000080003340 <_ZN15MemoryAllocator11getInstanceEv>:
MemoryAllocator& MemoryAllocator::getInstance() {
    80003340:	ff010113          	addi	sp,sp,-16
    80003344:	00813423          	sd	s0,8(sp)
    80003348:	01010413          	addi	s0,sp,16
}
    8000334c:	00009517          	auipc	a0,0x9
    80003350:	aec50513          	addi	a0,a0,-1300 # 8000be38 <_ZN15MemoryAllocator8instanceE>
    80003354:	00813403          	ld	s0,8(sp)
    80003358:	01010113          	addi	sp,sp,16
    8000335c:	00008067          	ret

0000000080003360 <_ZN15MemoryAllocator4initEv>:
void MemoryAllocator::init() {
    80003360:	ff010113          	addi	sp,sp,-16
    80003364:	00813423          	sd	s0,8(sp)
    80003368:	01010413          	addi	s0,sp,16
    if (initialized) return;
    8000336c:	00854783          	lbu	a5,8(a0)
    80003370:	04079263          	bnez	a5,800033b4 <_ZN15MemoryAllocator4initEv+0x54>
    uint64 heapStart = (uint64) HEAP_START_ADDR;
    80003374:	00009797          	auipc	a5,0x9
    80003378:	a047b783          	ld	a5,-1532(a5) # 8000bd78 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000337c:	0007b703          	ld	a4,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80003380:	00009797          	auipc	a5,0x9
    80003384:	a187b783          	ld	a5,-1512(a5) # 8000bd98 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003388:	0007b783          	ld	a5,0(a5)
    size_t heapSize = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    8000338c:	40e787b3          	sub	a5,a5,a4
    80003390:	0067d793          	srli	a5,a5,0x6
    freeHead = (FreeBlock*) heapStart;
    80003394:	00e53023          	sd	a4,0(a0)
    freeHead->size = heapSize;
    80003398:	00f73023          	sd	a5,0(a4)
    freeHead->next = nullptr;
    8000339c:	00053783          	ld	a5,0(a0)
    800033a0:	0007b423          	sd	zero,8(a5)
    freeHead->prev = nullptr;
    800033a4:	00053783          	ld	a5,0(a0)
    800033a8:	0007b823          	sd	zero,16(a5)
    initialized = true;
    800033ac:	00100793          	li	a5,1
    800033b0:	00f50423          	sb	a5,8(a0)
}
    800033b4:	00813403          	ld	s0,8(sp)
    800033b8:	01010113          	addi	sp,sp,16
    800033bc:	00008067          	ret

00000000800033c0 <_ZN15MemoryAllocator6mallocEm>:
void* MemoryAllocator::malloc(size_t numBlocks) {
    800033c0:	fe010113          	addi	sp,sp,-32
    800033c4:	00113c23          	sd	ra,24(sp)
    800033c8:	00813823          	sd	s0,16(sp)
    800033cc:	00913423          	sd	s1,8(sp)
    800033d0:	01213023          	sd	s2,0(sp)
    800033d4:	02010413          	addi	s0,sp,32
    800033d8:	00050913          	mv	s2,a0
    800033dc:	00058493          	mv	s1,a1
    init();
    800033e0:	00000097          	auipc	ra,0x0
    800033e4:	f80080e7          	jalr	-128(ra) # 80003360 <_ZN15MemoryAllocator4initEv>
    if (numBlocks == 0) return nullptr;
    800033e8:	0c048863          	beqz	s1,800034b8 <_ZN15MemoryAllocator6mallocEm+0xf8>
    size_t neededBlocks = numBlocks + 1;
    800033ec:	00148593          	addi	a1,s1,1
    FreeBlock* current = freeHead;
    800033f0:	00093503          	ld	a0,0(s2)
    while(current != nullptr && current->size < neededBlocks){
    800033f4:	00050a63          	beqz	a0,80003408 <_ZN15MemoryAllocator6mallocEm+0x48>
    800033f8:	00053783          	ld	a5,0(a0)
    800033fc:	00b7f663          	bgeu	a5,a1,80003408 <_ZN15MemoryAllocator6mallocEm+0x48>
        current = current->next;
    80003400:	00853503          	ld	a0,8(a0)
    while(current != nullptr && current->size < neededBlocks){
    80003404:	ff1ff06f          	j	800033f4 <_ZN15MemoryAllocator6mallocEm+0x34>
    if (current == nullptr){
    80003408:	04050063          	beqz	a0,80003448 <_ZN15MemoryAllocator6mallocEm+0x88>
    size_t remainingBlocks = current->size - neededBlocks;
    8000340c:	00053783          	ld	a5,0(a0)
    80003410:	40b787b3          	sub	a5,a5,a1
    if (remainingBlocks >= 2){
    80003414:	00100713          	li	a4,1
    80003418:	04f76463          	bltu	a4,a5,80003460 <_ZN15MemoryAllocator6mallocEm+0xa0>
    if (current->prev != nullptr){
    8000341c:	01053783          	ld	a5,16(a0)
    80003420:	08078663          	beqz	a5,800034ac <_ZN15MemoryAllocator6mallocEm+0xec>
        current->prev->next = current->next;
    80003424:	00853703          	ld	a4,8(a0)
    80003428:	00e7b423          	sd	a4,8(a5)
    if (current->next != nullptr){
    8000342c:	00853783          	ld	a5,8(a0)
    80003430:	00078663          	beqz	a5,8000343c <_ZN15MemoryAllocator6mallocEm+0x7c>
        current->next->prev = current->prev;
    80003434:	01053703          	ld	a4,16(a0)
    80003438:	00e7b823          	sd	a4,16(a5)
    current->next = nullptr;
    8000343c:	00053423          	sd	zero,8(a0)
    current->prev = nullptr;
    80003440:	00053823          	sd	zero,16(a0)
    return (void*) ((char*) current +MEM_BLOCK_SIZE);
    80003444:	04050513          	addi	a0,a0,64
}
    80003448:	01813083          	ld	ra,24(sp)
    8000344c:	01013403          	ld	s0,16(sp)
    80003450:	00813483          	ld	s1,8(sp)
    80003454:	00013903          	ld	s2,0(sp)
    80003458:	02010113          	addi	sp,sp,32
    8000345c:	00008067          	ret
        FreeBlock* newFree = (FreeBlock*) ((char*) current + neededBlocks * MEM_BLOCK_SIZE);
    80003460:	00659713          	slli	a4,a1,0x6
    80003464:	00e50733          	add	a4,a0,a4
        newFree->size = remainingBlocks;
    80003468:	00f73023          	sd	a5,0(a4)
        newFree->next = current->next;
    8000346c:	00853783          	ld	a5,8(a0)
    80003470:	00f73423          	sd	a5,8(a4)
        newFree->prev = current->prev;
    80003474:	01053783          	ld	a5,16(a0)
    80003478:	00f73823          	sd	a5,16(a4)
        if (current->prev != nullptr){
    8000347c:	02078463          	beqz	a5,800034a4 <_ZN15MemoryAllocator6mallocEm+0xe4>
            current->prev->next = newFree;
    80003480:	00e7b423          	sd	a4,8(a5)
        if (current->next != nullptr){
    80003484:	00853783          	ld	a5,8(a0)
    80003488:	00078463          	beqz	a5,80003490 <_ZN15MemoryAllocator6mallocEm+0xd0>
            current->next->prev = newFree;
    8000348c:	00e7b823          	sd	a4,16(a5)
        current->size = neededBlocks;
    80003490:	00b53023          	sd	a1,0(a0)
        current->next = nullptr;
    80003494:	00053423          	sd	zero,8(a0)
        current->prev = nullptr;
    80003498:	00053823          	sd	zero,16(a0)
        return (void*) ((char*) current + MEM_BLOCK_SIZE);
    8000349c:	04050513          	addi	a0,a0,64
    800034a0:	fa9ff06f          	j	80003448 <_ZN15MemoryAllocator6mallocEm+0x88>
            freeHead = newFree;
    800034a4:	00e93023          	sd	a4,0(s2)
    800034a8:	fddff06f          	j	80003484 <_ZN15MemoryAllocator6mallocEm+0xc4>
        freeHead = current->next;
    800034ac:	00853783          	ld	a5,8(a0)
    800034b0:	00f93023          	sd	a5,0(s2)
    800034b4:	f79ff06f          	j	8000342c <_ZN15MemoryAllocator6mallocEm+0x6c>
    if (numBlocks == 0) return nullptr;
    800034b8:	00000513          	li	a0,0
    800034bc:	f8dff06f          	j	80003448 <_ZN15MemoryAllocator6mallocEm+0x88>

00000000800034c0 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>:
void MemoryAllocator::tryToJoin(FreeBlock *block) {
    800034c0:	ff010113          	addi	sp,sp,-16
    800034c4:	00813423          	sd	s0,8(sp)
    800034c8:	01010413          	addi	s0,sp,16
    if (block == nullptr || block->next == nullptr) return;
    800034cc:	00058e63          	beqz	a1,800034e8 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    800034d0:	0085b783          	ld	a5,8(a1)
    800034d4:	00078a63          	beqz	a5,800034e8 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    char* endOfBlock = (char*) block + block->size * MEM_BLOCK_SIZE;
    800034d8:	0005b683          	ld	a3,0(a1)
    800034dc:	00669713          	slli	a4,a3,0x6
    800034e0:	00e58733          	add	a4,a1,a4
    if (endOfBlock == (char*) block->next){
    800034e4:	00e78863          	beq	a5,a4,800034f4 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x34>
    800034e8:	00813403          	ld	s0,8(sp)
    800034ec:	01010113          	addi	sp,sp,16
    800034f0:	00008067          	ret
        block->size += nextBlock->size;
    800034f4:	0007b703          	ld	a4,0(a5)
    800034f8:	00e686b3          	add	a3,a3,a4
    800034fc:	00d5b023          	sd	a3,0(a1)
        block->next = nextBlock->next;
    80003500:	0087b703          	ld	a4,8(a5)
    80003504:	00e5b423          	sd	a4,8(a1)
        if (block->next != nullptr){
    80003508:	00070463          	beqz	a4,80003510 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x50>
            block->next->prev = block;
    8000350c:	00b73823          	sd	a1,16(a4)
        nextBlock->next = nullptr;
    80003510:	0007b423          	sd	zero,8(a5)
        nextBlock->prev = nullptr;
    80003514:	0007b823          	sd	zero,16(a5)
    80003518:	fd1ff06f          	j	800034e8 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>

000000008000351c <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void* ptr){
    8000351c:	fd010113          	addi	sp,sp,-48
    80003520:	02113423          	sd	ra,40(sp)
    80003524:	02813023          	sd	s0,32(sp)
    80003528:	00913c23          	sd	s1,24(sp)
    8000352c:	01213823          	sd	s2,16(sp)
    80003530:	01313423          	sd	s3,8(sp)
    80003534:	03010413          	addi	s0,sp,48
    80003538:	00050993          	mv	s3,a0
    8000353c:	00058913          	mv	s2,a1
    init();
    80003540:	00000097          	auipc	ra,0x0
    80003544:	e20080e7          	jalr	-480(ra) # 80003360 <_ZN15MemoryAllocator4initEv>
    if (ptr == nullptr) return -1;
    80003548:	0e090863          	beqz	s2,80003638 <_ZN15MemoryAllocator4freeEPv+0x11c>
    uint64 heapStart = (uint64)HEAP_START_ADDR;
    8000354c:	00009797          	auipc	a5,0x9
    80003550:	82c7b783          	ld	a5,-2004(a5) # 8000bd78 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003554:	0007b683          	ld	a3,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80003558:	00009797          	auipc	a5,0x9
    8000355c:	8407b783          	ld	a5,-1984(a5) # 8000bd98 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003560:	0007b603          	ld	a2,0(a5)
    if (ptrAddr < heapStart + MEM_BLOCK_SIZE || ptrAddr >= heapEnd){
    80003564:	04068793          	addi	a5,a3,64
    80003568:	0cf96c63          	bltu	s2,a5,80003640 <_ZN15MemoryAllocator4freeEPv+0x124>
    8000356c:	0cc97e63          	bgeu	s2,a2,80003648 <_ZN15MemoryAllocator4freeEPv+0x12c>
    if ((ptrAddr - heapStart) % MEM_BLOCK_SIZE != 0){
    80003570:	40d907b3          	sub	a5,s2,a3
    80003574:	03f7f793          	andi	a5,a5,63
    80003578:	0c079c63          	bnez	a5,80003650 <_ZN15MemoryAllocator4freeEPv+0x134>
    FreeBlock* block = (FreeBlock*) ((char*) ptr - MEM_BLOCK_SIZE);
    8000357c:	fc090593          	addi	a1,s2,-64
    if (block->size < 2){
    80003580:	fc093783          	ld	a5,-64(s2)
    80003584:	00100713          	li	a4,1
    80003588:	0cf77863          	bgeu	a4,a5,80003658 <_ZN15MemoryAllocator4freeEPv+0x13c>
    if ((uint64) block < heapStart){
    8000358c:	00058713          	mv	a4,a1
    80003590:	0cd5e863          	bltu	a1,a3,80003660 <_ZN15MemoryAllocator4freeEPv+0x144>
    if ((uint64) block + block->size * MEM_BLOCK_SIZE > heapEnd){
    80003594:	00679793          	slli	a5,a5,0x6
    80003598:	00f586b3          	add	a3,a1,a5
    8000359c:	0cd66663          	bltu	a2,a3,80003668 <_ZN15MemoryAllocator4freeEPv+0x14c>
    FreeBlock* current = freeHead;
    800035a0:	0009b783          	ld	a5,0(s3)
    FreeBlock* prev = nullptr;
    800035a4:	00000493          	li	s1,0
    while (current != nullptr && (uint64) current < (uint64) block){
    800035a8:	00078a63          	beqz	a5,800035bc <_ZN15MemoryAllocator4freeEPv+0xa0>
    800035ac:	00e7f863          	bgeu	a5,a4,800035bc <_ZN15MemoryAllocator4freeEPv+0xa0>
        prev = current;
    800035b0:	00078493          	mv	s1,a5
        current = current->next;
    800035b4:	0087b783          	ld	a5,8(a5)
    while (current != nullptr && (uint64) current < (uint64) block){
    800035b8:	ff1ff06f          	j	800035a8 <_ZN15MemoryAllocator4freeEPv+0x8c>
    if (prev != nullptr &&
    800035bc:	00048a63          	beqz	s1,800035d0 <_ZN15MemoryAllocator4freeEPv+0xb4>
        (uint64) prev + prev->size * MEM_BLOCK_SIZE > (uint64) block) {
    800035c0:	0004b603          	ld	a2,0(s1)
    800035c4:	00661613          	slli	a2,a2,0x6
    800035c8:	00c48633          	add	a2,s1,a2
    if (prev != nullptr &&
    800035cc:	0ac76263          	bltu	a4,a2,80003670 <_ZN15MemoryAllocator4freeEPv+0x154>
    if (current!= nullptr && (uint64)block + block->size * MEM_BLOCK_SIZE > (uint64) current){
    800035d0:	00078463          	beqz	a5,800035d8 <_ZN15MemoryAllocator4freeEPv+0xbc>
    800035d4:	0ad7e263          	bltu	a5,a3,80003678 <_ZN15MemoryAllocator4freeEPv+0x15c>
    block->prev = prev;
    800035d8:	fc993823          	sd	s1,-48(s2)
    block->next = current;
    800035dc:	fcf93423          	sd	a5,-56(s2)
    if (prev != nullptr){
    800035e0:	04048863          	beqz	s1,80003630 <_ZN15MemoryAllocator4freeEPv+0x114>
        prev->next = block;
    800035e4:	00b4b423          	sd	a1,8(s1)
    if (current != nullptr){
    800035e8:	00078463          	beqz	a5,800035f0 <_ZN15MemoryAllocator4freeEPv+0xd4>
        current->prev = block;
    800035ec:	00b7b823          	sd	a1,16(a5)
    tryToJoin(block);
    800035f0:	00098513          	mv	a0,s3
    800035f4:	00000097          	auipc	ra,0x0
    800035f8:	ecc080e7          	jalr	-308(ra) # 800034c0 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    if (prev != nullptr){
    800035fc:	08048263          	beqz	s1,80003680 <_ZN15MemoryAllocator4freeEPv+0x164>
        tryToJoin(prev);
    80003600:	00048593          	mv	a1,s1
    80003604:	00098513          	mv	a0,s3
    80003608:	00000097          	auipc	ra,0x0
    8000360c:	eb8080e7          	jalr	-328(ra) # 800034c0 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    return 0;
    80003610:	00000513          	li	a0,0
}
    80003614:	02813083          	ld	ra,40(sp)
    80003618:	02013403          	ld	s0,32(sp)
    8000361c:	01813483          	ld	s1,24(sp)
    80003620:	01013903          	ld	s2,16(sp)
    80003624:	00813983          	ld	s3,8(sp)
    80003628:	03010113          	addi	sp,sp,48
    8000362c:	00008067          	ret
        freeHead = block;
    80003630:	00b9b023          	sd	a1,0(s3)
    80003634:	fb5ff06f          	j	800035e8 <_ZN15MemoryAllocator4freeEPv+0xcc>
    if (ptr == nullptr) return -1;
    80003638:	fff00513          	li	a0,-1
    8000363c:	fd9ff06f          	j	80003614 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003640:	fff00513          	li	a0,-1
    80003644:	fd1ff06f          	j	80003614 <_ZN15MemoryAllocator4freeEPv+0xf8>
    80003648:	fff00513          	li	a0,-1
    8000364c:	fc9ff06f          	j	80003614 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003650:	fff00513          	li	a0,-1
    80003654:	fc1ff06f          	j	80003614 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003658:	fff00513          	li	a0,-1
    8000365c:	fb9ff06f          	j	80003614 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003660:	fff00513          	li	a0,-1
    80003664:	fb1ff06f          	j	80003614 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003668:	fff00513          	li	a0,-1
    8000366c:	fa9ff06f          	j	80003614 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003670:	fff00513          	li	a0,-1
    80003674:	fa1ff06f          	j	80003614 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003678:	fff00513          	li	a0,-1
    8000367c:	f99ff06f          	j	80003614 <_ZN15MemoryAllocator4freeEPv+0xf8>
    return 0;
    80003680:	00000513          	li	a0,0
    80003684:	f91ff06f          	j	80003614 <_ZN15MemoryAllocator4freeEPv+0xf8>

0000000080003688 <_GLOBAL__sub_I__ZN15MemoryAllocatorC2Ev>:
    80003688:	ff010113          	addi	sp,sp,-16
    8000368c:	00113423          	sd	ra,8(sp)
    80003690:	00813023          	sd	s0,0(sp)
    80003694:	01010413          	addi	s0,sp,16
    80003698:	000105b7          	lui	a1,0x10
    8000369c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800036a0:	00100513          	li	a0,1
    800036a4:	00000097          	auipc	ra,0x0
    800036a8:	c54080e7          	jalr	-940(ra) # 800032f8 <_Z41__static_initialization_and_destruction_0ii>
    800036ac:	00813083          	ld	ra,8(sp)
    800036b0:	00013403          	ld	s0,0(sp)
    800036b4:	01010113          	addi	sp,sp,16
    800036b8:	00008067          	ret

00000000800036bc <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800036bc:	fe010113          	addi	sp,sp,-32
    800036c0:	00113c23          	sd	ra,24(sp)
    800036c4:	00813823          	sd	s0,16(sp)
    800036c8:	00913423          	sd	s1,8(sp)
    800036cc:	01213023          	sd	s2,0(sp)
    800036d0:	02010413          	addi	s0,sp,32
    800036d4:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800036d8:	00000913          	li	s2,0
    800036dc:	00c0006f          	j	800036e8 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800036e0:	ffffe097          	auipc	ra,0xffffe
    800036e4:	ca8080e7          	jalr	-856(ra) # 80001388 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800036e8:	ffffe097          	auipc	ra,0xffffe
    800036ec:	ee4080e7          	jalr	-284(ra) # 800015cc <_Z4getcv>
    800036f0:	0005059b          	sext.w	a1,a0
    800036f4:	01b00793          	li	a5,27
    800036f8:	02f58a63          	beq	a1,a5,8000372c <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800036fc:	0084b503          	ld	a0,8(s1)
    80003700:	00003097          	auipc	ra,0x3
    80003704:	2ac080e7          	jalr	684(ra) # 800069ac <_ZN6Buffer3putEi>
        i++;
    80003708:	0019071b          	addiw	a4,s2,1
    8000370c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003710:	0004a683          	lw	a3,0(s1)
    80003714:	0026979b          	slliw	a5,a3,0x2
    80003718:	00d787bb          	addw	a5,a5,a3
    8000371c:	0017979b          	slliw	a5,a5,0x1
    80003720:	02f767bb          	remw	a5,a4,a5
    80003724:	fc0792e3          	bnez	a5,800036e8 <_ZL16producerKeyboardPv+0x2c>
    80003728:	fb9ff06f          	j	800036e0 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    8000372c:	00100793          	li	a5,1
    80003730:	00008717          	auipc	a4,0x8
    80003734:	70f72c23          	sw	a5,1816(a4) # 8000be48 <_ZL9threadEnd>
    data->buffer->put('!');
    80003738:	02100593          	li	a1,33
    8000373c:	0084b503          	ld	a0,8(s1)
    80003740:	00003097          	auipc	ra,0x3
    80003744:	26c080e7          	jalr	620(ra) # 800069ac <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003748:	0104b503          	ld	a0,16(s1)
    8000374c:	ffffe097          	auipc	ra,0xffffe
    80003750:	d78080e7          	jalr	-648(ra) # 800014c4 <_Z10sem_signalP4_sem>
}
    80003754:	01813083          	ld	ra,24(sp)
    80003758:	01013403          	ld	s0,16(sp)
    8000375c:	00813483          	ld	s1,8(sp)
    80003760:	00013903          	ld	s2,0(sp)
    80003764:	02010113          	addi	sp,sp,32
    80003768:	00008067          	ret

000000008000376c <_ZL8producerPv>:

static void producer(void *arg) {
    8000376c:	fe010113          	addi	sp,sp,-32
    80003770:	00113c23          	sd	ra,24(sp)
    80003774:	00813823          	sd	s0,16(sp)
    80003778:	00913423          	sd	s1,8(sp)
    8000377c:	01213023          	sd	s2,0(sp)
    80003780:	02010413          	addi	s0,sp,32
    80003784:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003788:	00000913          	li	s2,0
    8000378c:	00c0006f          	j	80003798 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003790:	ffffe097          	auipc	ra,0xffffe
    80003794:	bf8080e7          	jalr	-1032(ra) # 80001388 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003798:	00008797          	auipc	a5,0x8
    8000379c:	6b07a783          	lw	a5,1712(a5) # 8000be48 <_ZL9threadEnd>
    800037a0:	02079e63          	bnez	a5,800037dc <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800037a4:	0004a583          	lw	a1,0(s1)
    800037a8:	0305859b          	addiw	a1,a1,48
    800037ac:	0084b503          	ld	a0,8(s1)
    800037b0:	00003097          	auipc	ra,0x3
    800037b4:	1fc080e7          	jalr	508(ra) # 800069ac <_ZN6Buffer3putEi>
        i++;
    800037b8:	0019071b          	addiw	a4,s2,1
    800037bc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800037c0:	0004a683          	lw	a3,0(s1)
    800037c4:	0026979b          	slliw	a5,a3,0x2
    800037c8:	00d787bb          	addw	a5,a5,a3
    800037cc:	0017979b          	slliw	a5,a5,0x1
    800037d0:	02f767bb          	remw	a5,a4,a5
    800037d4:	fc0792e3          	bnez	a5,80003798 <_ZL8producerPv+0x2c>
    800037d8:	fb9ff06f          	j	80003790 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800037dc:	0104b503          	ld	a0,16(s1)
    800037e0:	ffffe097          	auipc	ra,0xffffe
    800037e4:	ce4080e7          	jalr	-796(ra) # 800014c4 <_Z10sem_signalP4_sem>
}
    800037e8:	01813083          	ld	ra,24(sp)
    800037ec:	01013403          	ld	s0,16(sp)
    800037f0:	00813483          	ld	s1,8(sp)
    800037f4:	00013903          	ld	s2,0(sp)
    800037f8:	02010113          	addi	sp,sp,32
    800037fc:	00008067          	ret

0000000080003800 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003800:	fd010113          	addi	sp,sp,-48
    80003804:	02113423          	sd	ra,40(sp)
    80003808:	02813023          	sd	s0,32(sp)
    8000380c:	00913c23          	sd	s1,24(sp)
    80003810:	01213823          	sd	s2,16(sp)
    80003814:	01313423          	sd	s3,8(sp)
    80003818:	03010413          	addi	s0,sp,48
    8000381c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003820:	00000993          	li	s3,0
    80003824:	01c0006f          	j	80003840 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003828:	ffffe097          	auipc	ra,0xffffe
    8000382c:	b60080e7          	jalr	-1184(ra) # 80001388 <_Z15thread_dispatchv>
    80003830:	0500006f          	j	80003880 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003834:	00a00513          	li	a0,10
    80003838:	ffffe097          	auipc	ra,0xffffe
    8000383c:	dd4080e7          	jalr	-556(ra) # 8000160c <_Z4putcc>
    while (!threadEnd) {
    80003840:	00008797          	auipc	a5,0x8
    80003844:	6087a783          	lw	a5,1544(a5) # 8000be48 <_ZL9threadEnd>
    80003848:	06079063          	bnez	a5,800038a8 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    8000384c:	00893503          	ld	a0,8(s2)
    80003850:	00003097          	auipc	ra,0x3
    80003854:	1ec080e7          	jalr	492(ra) # 80006a3c <_ZN6Buffer3getEv>
        i++;
    80003858:	0019849b          	addiw	s1,s3,1
    8000385c:	0004899b          	sext.w	s3,s1
        putc(key);
    80003860:	0ff57513          	andi	a0,a0,255
    80003864:	ffffe097          	auipc	ra,0xffffe
    80003868:	da8080e7          	jalr	-600(ra) # 8000160c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000386c:	00092703          	lw	a4,0(s2)
    80003870:	0027179b          	slliw	a5,a4,0x2
    80003874:	00e787bb          	addw	a5,a5,a4
    80003878:	02f4e7bb          	remw	a5,s1,a5
    8000387c:	fa0786e3          	beqz	a5,80003828 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003880:	05000793          	li	a5,80
    80003884:	02f4e4bb          	remw	s1,s1,a5
    80003888:	fa049ce3          	bnez	s1,80003840 <_ZL8consumerPv+0x40>
    8000388c:	fa9ff06f          	j	80003834 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003890:	00893503          	ld	a0,8(s2)
    80003894:	00003097          	auipc	ra,0x3
    80003898:	1a8080e7          	jalr	424(ra) # 80006a3c <_ZN6Buffer3getEv>
        putc(key);
    8000389c:	0ff57513          	andi	a0,a0,255
    800038a0:	ffffe097          	auipc	ra,0xffffe
    800038a4:	d6c080e7          	jalr	-660(ra) # 8000160c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800038a8:	00893503          	ld	a0,8(s2)
    800038ac:	00003097          	auipc	ra,0x3
    800038b0:	21c080e7          	jalr	540(ra) # 80006ac8 <_ZN6Buffer6getCntEv>
    800038b4:	fca04ee3          	bgtz	a0,80003890 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800038b8:	01093503          	ld	a0,16(s2)
    800038bc:	ffffe097          	auipc	ra,0xffffe
    800038c0:	c08080e7          	jalr	-1016(ra) # 800014c4 <_Z10sem_signalP4_sem>
}
    800038c4:	02813083          	ld	ra,40(sp)
    800038c8:	02013403          	ld	s0,32(sp)
    800038cc:	01813483          	ld	s1,24(sp)
    800038d0:	01013903          	ld	s2,16(sp)
    800038d4:	00813983          	ld	s3,8(sp)
    800038d8:	03010113          	addi	sp,sp,48
    800038dc:	00008067          	ret

00000000800038e0 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800038e0:	f9010113          	addi	sp,sp,-112
    800038e4:	06113423          	sd	ra,104(sp)
    800038e8:	06813023          	sd	s0,96(sp)
    800038ec:	04913c23          	sd	s1,88(sp)
    800038f0:	05213823          	sd	s2,80(sp)
    800038f4:	05313423          	sd	s3,72(sp)
    800038f8:	05413023          	sd	s4,64(sp)
    800038fc:	03513c23          	sd	s5,56(sp)
    80003900:	03613823          	sd	s6,48(sp)
    80003904:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003908:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    8000390c:	00006517          	auipc	a0,0x6
    80003910:	b7450513          	addi	a0,a0,-1164 # 80009480 <CONSOLE_STATUS+0x470>
    80003914:	00002097          	auipc	ra,0x2
    80003918:	220080e7          	jalr	544(ra) # 80005b34 <_Z11printStringPKc>
    getString(input, 30);
    8000391c:	01e00593          	li	a1,30
    80003920:	fa040493          	addi	s1,s0,-96
    80003924:	00048513          	mv	a0,s1
    80003928:	00002097          	auipc	ra,0x2
    8000392c:	294080e7          	jalr	660(ra) # 80005bbc <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003930:	00048513          	mv	a0,s1
    80003934:	00002097          	auipc	ra,0x2
    80003938:	360080e7          	jalr	864(ra) # 80005c94 <_Z11stringToIntPKc>
    8000393c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003940:	00006517          	auipc	a0,0x6
    80003944:	b6050513          	addi	a0,a0,-1184 # 800094a0 <CONSOLE_STATUS+0x490>
    80003948:	00002097          	auipc	ra,0x2
    8000394c:	1ec080e7          	jalr	492(ra) # 80005b34 <_Z11printStringPKc>
    getString(input, 30);
    80003950:	01e00593          	li	a1,30
    80003954:	00048513          	mv	a0,s1
    80003958:	00002097          	auipc	ra,0x2
    8000395c:	264080e7          	jalr	612(ra) # 80005bbc <_Z9getStringPci>
    n = stringToInt(input);
    80003960:	00048513          	mv	a0,s1
    80003964:	00002097          	auipc	ra,0x2
    80003968:	330080e7          	jalr	816(ra) # 80005c94 <_Z11stringToIntPKc>
    8000396c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003970:	00006517          	auipc	a0,0x6
    80003974:	b5050513          	addi	a0,a0,-1200 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80003978:	00002097          	auipc	ra,0x2
    8000397c:	1bc080e7          	jalr	444(ra) # 80005b34 <_Z11printStringPKc>
    80003980:	00000613          	li	a2,0
    80003984:	00a00593          	li	a1,10
    80003988:	00090513          	mv	a0,s2
    8000398c:	00002097          	auipc	ra,0x2
    80003990:	358080e7          	jalr	856(ra) # 80005ce4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003994:	00006517          	auipc	a0,0x6
    80003998:	b4450513          	addi	a0,a0,-1212 # 800094d8 <CONSOLE_STATUS+0x4c8>
    8000399c:	00002097          	auipc	ra,0x2
    800039a0:	198080e7          	jalr	408(ra) # 80005b34 <_Z11printStringPKc>
    800039a4:	00000613          	li	a2,0
    800039a8:	00a00593          	li	a1,10
    800039ac:	00048513          	mv	a0,s1
    800039b0:	00002097          	auipc	ra,0x2
    800039b4:	334080e7          	jalr	820(ra) # 80005ce4 <_Z8printIntiii>
    printString(".\n");
    800039b8:	00006517          	auipc	a0,0x6
    800039bc:	b3850513          	addi	a0,a0,-1224 # 800094f0 <CONSOLE_STATUS+0x4e0>
    800039c0:	00002097          	auipc	ra,0x2
    800039c4:	174080e7          	jalr	372(ra) # 80005b34 <_Z11printStringPKc>
    if(threadNum > n) {
    800039c8:	0324c463          	blt	s1,s2,800039f0 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800039cc:	03205c63          	blez	s2,80003a04 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800039d0:	03800513          	li	a0,56
    800039d4:	fffff097          	auipc	ra,0xfffff
    800039d8:	bc4080e7          	jalr	-1084(ra) # 80002598 <_Znwm>
    800039dc:	00050a13          	mv	s4,a0
    800039e0:	00048593          	mv	a1,s1
    800039e4:	00003097          	auipc	ra,0x3
    800039e8:	f2c080e7          	jalr	-212(ra) # 80006910 <_ZN6BufferC1Ei>
    800039ec:	0300006f          	j	80003a1c <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800039f0:	00006517          	auipc	a0,0x6
    800039f4:	b0850513          	addi	a0,a0,-1272 # 800094f8 <CONSOLE_STATUS+0x4e8>
    800039f8:	00002097          	auipc	ra,0x2
    800039fc:	13c080e7          	jalr	316(ra) # 80005b34 <_Z11printStringPKc>
        return;
    80003a00:	0140006f          	j	80003a14 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003a04:	00006517          	auipc	a0,0x6
    80003a08:	b3450513          	addi	a0,a0,-1228 # 80009538 <CONSOLE_STATUS+0x528>
    80003a0c:	00002097          	auipc	ra,0x2
    80003a10:	128080e7          	jalr	296(ra) # 80005b34 <_Z11printStringPKc>
        return;
    80003a14:	000b0113          	mv	sp,s6
    80003a18:	1500006f          	j	80003b68 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003a1c:	00000593          	li	a1,0
    80003a20:	00008517          	auipc	a0,0x8
    80003a24:	43050513          	addi	a0,a0,1072 # 8000be50 <_ZL10waitForAll>
    80003a28:	ffffe097          	auipc	ra,0xffffe
    80003a2c:	9d8080e7          	jalr	-1576(ra) # 80001400 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003a30:	00391793          	slli	a5,s2,0x3
    80003a34:	00f78793          	addi	a5,a5,15
    80003a38:	ff07f793          	andi	a5,a5,-16
    80003a3c:	40f10133          	sub	sp,sp,a5
    80003a40:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003a44:	0019071b          	addiw	a4,s2,1
    80003a48:	00171793          	slli	a5,a4,0x1
    80003a4c:	00e787b3          	add	a5,a5,a4
    80003a50:	00379793          	slli	a5,a5,0x3
    80003a54:	00f78793          	addi	a5,a5,15
    80003a58:	ff07f793          	andi	a5,a5,-16
    80003a5c:	40f10133          	sub	sp,sp,a5
    80003a60:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003a64:	00191613          	slli	a2,s2,0x1
    80003a68:	012607b3          	add	a5,a2,s2
    80003a6c:	00379793          	slli	a5,a5,0x3
    80003a70:	00f987b3          	add	a5,s3,a5
    80003a74:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003a78:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003a7c:	00008717          	auipc	a4,0x8
    80003a80:	3d473703          	ld	a4,980(a4) # 8000be50 <_ZL10waitForAll>
    80003a84:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003a88:	00078613          	mv	a2,a5
    80003a8c:	00000597          	auipc	a1,0x0
    80003a90:	d7458593          	addi	a1,a1,-652 # 80003800 <_ZL8consumerPv>
    80003a94:	f9840513          	addi	a0,s0,-104
    80003a98:	ffffd097          	auipc	ra,0xffffd
    80003a9c:	7ec080e7          	jalr	2028(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003aa0:	00000493          	li	s1,0
    80003aa4:	0280006f          	j	80003acc <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003aa8:	00000597          	auipc	a1,0x0
    80003aac:	c1458593          	addi	a1,a1,-1004 # 800036bc <_ZL16producerKeyboardPv>
                      data + i);
    80003ab0:	00179613          	slli	a2,a5,0x1
    80003ab4:	00f60633          	add	a2,a2,a5
    80003ab8:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003abc:	00c98633          	add	a2,s3,a2
    80003ac0:	ffffd097          	auipc	ra,0xffffd
    80003ac4:	7c4080e7          	jalr	1988(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003ac8:	0014849b          	addiw	s1,s1,1
    80003acc:	0524d263          	bge	s1,s2,80003b10 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003ad0:	00149793          	slli	a5,s1,0x1
    80003ad4:	009787b3          	add	a5,a5,s1
    80003ad8:	00379793          	slli	a5,a5,0x3
    80003adc:	00f987b3          	add	a5,s3,a5
    80003ae0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003ae4:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003ae8:	00008717          	auipc	a4,0x8
    80003aec:	36873703          	ld	a4,872(a4) # 8000be50 <_ZL10waitForAll>
    80003af0:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003af4:	00048793          	mv	a5,s1
    80003af8:	00349513          	slli	a0,s1,0x3
    80003afc:	00aa8533          	add	a0,s5,a0
    80003b00:	fa9054e3          	blez	s1,80003aa8 <_Z22producerConsumer_C_APIv+0x1c8>
    80003b04:	00000597          	auipc	a1,0x0
    80003b08:	c6858593          	addi	a1,a1,-920 # 8000376c <_ZL8producerPv>
    80003b0c:	fa5ff06f          	j	80003ab0 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003b10:	ffffe097          	auipc	ra,0xffffe
    80003b14:	878080e7          	jalr	-1928(ra) # 80001388 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003b18:	00000493          	li	s1,0
    80003b1c:	00994e63          	blt	s2,s1,80003b38 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003b20:	00008517          	auipc	a0,0x8
    80003b24:	33053503          	ld	a0,816(a0) # 8000be50 <_ZL10waitForAll>
    80003b28:	ffffe097          	auipc	ra,0xffffe
    80003b2c:	95c080e7          	jalr	-1700(ra) # 80001484 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003b30:	0014849b          	addiw	s1,s1,1
    80003b34:	fe9ff06f          	j	80003b1c <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003b38:	00008517          	auipc	a0,0x8
    80003b3c:	31853503          	ld	a0,792(a0) # 8000be50 <_ZL10waitForAll>
    80003b40:	ffffe097          	auipc	ra,0xffffe
    80003b44:	904080e7          	jalr	-1788(ra) # 80001444 <_Z9sem_closeP4_sem>
    delete buffer;
    80003b48:	000a0e63          	beqz	s4,80003b64 <_Z22producerConsumer_C_APIv+0x284>
    80003b4c:	000a0513          	mv	a0,s4
    80003b50:	00003097          	auipc	ra,0x3
    80003b54:	000080e7          	jalr	ra # 80006b50 <_ZN6BufferD1Ev>
    80003b58:	000a0513          	mv	a0,s4
    80003b5c:	fffff097          	auipc	ra,0xfffff
    80003b60:	a8c080e7          	jalr	-1396(ra) # 800025e8 <_ZdlPv>
    80003b64:	000b0113          	mv	sp,s6

}
    80003b68:	f9040113          	addi	sp,s0,-112
    80003b6c:	06813083          	ld	ra,104(sp)
    80003b70:	06013403          	ld	s0,96(sp)
    80003b74:	05813483          	ld	s1,88(sp)
    80003b78:	05013903          	ld	s2,80(sp)
    80003b7c:	04813983          	ld	s3,72(sp)
    80003b80:	04013a03          	ld	s4,64(sp)
    80003b84:	03813a83          	ld	s5,56(sp)
    80003b88:	03013b03          	ld	s6,48(sp)
    80003b8c:	07010113          	addi	sp,sp,112
    80003b90:	00008067          	ret
    80003b94:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003b98:	000a0513          	mv	a0,s4
    80003b9c:	fffff097          	auipc	ra,0xfffff
    80003ba0:	a4c080e7          	jalr	-1460(ra) # 800025e8 <_ZdlPv>
    80003ba4:	00048513          	mv	a0,s1
    80003ba8:	00009097          	auipc	ra,0x9
    80003bac:	3c0080e7          	jalr	960(ra) # 8000cf68 <_Unwind_Resume>

0000000080003bb0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003bb0:	fe010113          	addi	sp,sp,-32
    80003bb4:	00113c23          	sd	ra,24(sp)
    80003bb8:	00813823          	sd	s0,16(sp)
    80003bbc:	00913423          	sd	s1,8(sp)
    80003bc0:	01213023          	sd	s2,0(sp)
    80003bc4:	02010413          	addi	s0,sp,32
    80003bc8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003bcc:	00100793          	li	a5,1
    80003bd0:	02a7f863          	bgeu	a5,a0,80003c00 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003bd4:	00a00793          	li	a5,10
    80003bd8:	02f577b3          	remu	a5,a0,a5
    80003bdc:	02078e63          	beqz	a5,80003c18 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003be0:	fff48513          	addi	a0,s1,-1
    80003be4:	00000097          	auipc	ra,0x0
    80003be8:	fcc080e7          	jalr	-52(ra) # 80003bb0 <_ZL9fibonaccim>
    80003bec:	00050913          	mv	s2,a0
    80003bf0:	ffe48513          	addi	a0,s1,-2
    80003bf4:	00000097          	auipc	ra,0x0
    80003bf8:	fbc080e7          	jalr	-68(ra) # 80003bb0 <_ZL9fibonaccim>
    80003bfc:	00a90533          	add	a0,s2,a0
}
    80003c00:	01813083          	ld	ra,24(sp)
    80003c04:	01013403          	ld	s0,16(sp)
    80003c08:	00813483          	ld	s1,8(sp)
    80003c0c:	00013903          	ld	s2,0(sp)
    80003c10:	02010113          	addi	sp,sp,32
    80003c14:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003c18:	ffffd097          	auipc	ra,0xffffd
    80003c1c:	770080e7          	jalr	1904(ra) # 80001388 <_Z15thread_dispatchv>
    80003c20:	fc1ff06f          	j	80003be0 <_ZL9fibonaccim+0x30>

0000000080003c24 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003c24:	fe010113          	addi	sp,sp,-32
    80003c28:	00113c23          	sd	ra,24(sp)
    80003c2c:	00813823          	sd	s0,16(sp)
    80003c30:	00913423          	sd	s1,8(sp)
    80003c34:	01213023          	sd	s2,0(sp)
    80003c38:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003c3c:	00000913          	li	s2,0
    80003c40:	0380006f          	j	80003c78 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003c44:	ffffd097          	auipc	ra,0xffffd
    80003c48:	744080e7          	jalr	1860(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003c4c:	00148493          	addi	s1,s1,1
    80003c50:	000027b7          	lui	a5,0x2
    80003c54:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003c58:	0097ee63          	bltu	a5,s1,80003c74 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003c5c:	00000713          	li	a4,0
    80003c60:	000077b7          	lui	a5,0x7
    80003c64:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003c68:	fce7eee3          	bltu	a5,a4,80003c44 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003c6c:	00170713          	addi	a4,a4,1
    80003c70:	ff1ff06f          	j	80003c60 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003c74:	00190913          	addi	s2,s2,1
    80003c78:	00900793          	li	a5,9
    80003c7c:	0527e063          	bltu	a5,s2,80003cbc <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003c80:	00005517          	auipc	a0,0x5
    80003c84:	74850513          	addi	a0,a0,1864 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80003c88:	00002097          	auipc	ra,0x2
    80003c8c:	eac080e7          	jalr	-340(ra) # 80005b34 <_Z11printStringPKc>
    80003c90:	00000613          	li	a2,0
    80003c94:	00a00593          	li	a1,10
    80003c98:	0009051b          	sext.w	a0,s2
    80003c9c:	00002097          	auipc	ra,0x2
    80003ca0:	048080e7          	jalr	72(ra) # 80005ce4 <_Z8printIntiii>
    80003ca4:	00005517          	auipc	a0,0x5
    80003ca8:	5fc50513          	addi	a0,a0,1532 # 800092a0 <CONSOLE_STATUS+0x290>
    80003cac:	00002097          	auipc	ra,0x2
    80003cb0:	e88080e7          	jalr	-376(ra) # 80005b34 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003cb4:	00000493          	li	s1,0
    80003cb8:	f99ff06f          	j	80003c50 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003cbc:	00005517          	auipc	a0,0x5
    80003cc0:	71450513          	addi	a0,a0,1812 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80003cc4:	00002097          	auipc	ra,0x2
    80003cc8:	e70080e7          	jalr	-400(ra) # 80005b34 <_Z11printStringPKc>
    finishedA = true;
    80003ccc:	00100793          	li	a5,1
    80003cd0:	00008717          	auipc	a4,0x8
    80003cd4:	18f70423          	sb	a5,392(a4) # 8000be58 <_ZL9finishedA>
}
    80003cd8:	01813083          	ld	ra,24(sp)
    80003cdc:	01013403          	ld	s0,16(sp)
    80003ce0:	00813483          	ld	s1,8(sp)
    80003ce4:	00013903          	ld	s2,0(sp)
    80003ce8:	02010113          	addi	sp,sp,32
    80003cec:	00008067          	ret

0000000080003cf0 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003cf0:	fe010113          	addi	sp,sp,-32
    80003cf4:	00113c23          	sd	ra,24(sp)
    80003cf8:	00813823          	sd	s0,16(sp)
    80003cfc:	00913423          	sd	s1,8(sp)
    80003d00:	01213023          	sd	s2,0(sp)
    80003d04:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003d08:	00000913          	li	s2,0
    80003d0c:	0380006f          	j	80003d44 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003d10:	ffffd097          	auipc	ra,0xffffd
    80003d14:	678080e7          	jalr	1656(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003d18:	00148493          	addi	s1,s1,1
    80003d1c:	000027b7          	lui	a5,0x2
    80003d20:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003d24:	0097ee63          	bltu	a5,s1,80003d40 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003d28:	00000713          	li	a4,0
    80003d2c:	000077b7          	lui	a5,0x7
    80003d30:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003d34:	fce7eee3          	bltu	a5,a4,80003d10 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003d38:	00170713          	addi	a4,a4,1
    80003d3c:	ff1ff06f          	j	80003d2c <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003d40:	00190913          	addi	s2,s2,1
    80003d44:	00f00793          	li	a5,15
    80003d48:	0527e063          	bltu	a5,s2,80003d88 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003d4c:	00005517          	auipc	a0,0x5
    80003d50:	69450513          	addi	a0,a0,1684 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80003d54:	00002097          	auipc	ra,0x2
    80003d58:	de0080e7          	jalr	-544(ra) # 80005b34 <_Z11printStringPKc>
    80003d5c:	00000613          	li	a2,0
    80003d60:	00a00593          	li	a1,10
    80003d64:	0009051b          	sext.w	a0,s2
    80003d68:	00002097          	auipc	ra,0x2
    80003d6c:	f7c080e7          	jalr	-132(ra) # 80005ce4 <_Z8printIntiii>
    80003d70:	00005517          	auipc	a0,0x5
    80003d74:	53050513          	addi	a0,a0,1328 # 800092a0 <CONSOLE_STATUS+0x290>
    80003d78:	00002097          	auipc	ra,0x2
    80003d7c:	dbc080e7          	jalr	-580(ra) # 80005b34 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003d80:	00000493          	li	s1,0
    80003d84:	f99ff06f          	j	80003d1c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003d88:	00005517          	auipc	a0,0x5
    80003d8c:	66050513          	addi	a0,a0,1632 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80003d90:	00002097          	auipc	ra,0x2
    80003d94:	da4080e7          	jalr	-604(ra) # 80005b34 <_Z11printStringPKc>
    finishedB = true;
    80003d98:	00100793          	li	a5,1
    80003d9c:	00008717          	auipc	a4,0x8
    80003da0:	0af70ea3          	sb	a5,189(a4) # 8000be59 <_ZL9finishedB>
    thread_dispatch();
    80003da4:	ffffd097          	auipc	ra,0xffffd
    80003da8:	5e4080e7          	jalr	1508(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003dac:	01813083          	ld	ra,24(sp)
    80003db0:	01013403          	ld	s0,16(sp)
    80003db4:	00813483          	ld	s1,8(sp)
    80003db8:	00013903          	ld	s2,0(sp)
    80003dbc:	02010113          	addi	sp,sp,32
    80003dc0:	00008067          	ret

0000000080003dc4 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003dc4:	fe010113          	addi	sp,sp,-32
    80003dc8:	00113c23          	sd	ra,24(sp)
    80003dcc:	00813823          	sd	s0,16(sp)
    80003dd0:	00913423          	sd	s1,8(sp)
    80003dd4:	01213023          	sd	s2,0(sp)
    80003dd8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003ddc:	00000493          	li	s1,0
    80003de0:	0400006f          	j	80003e20 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003de4:	00005517          	auipc	a0,0x5
    80003de8:	61450513          	addi	a0,a0,1556 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80003dec:	00002097          	auipc	ra,0x2
    80003df0:	d48080e7          	jalr	-696(ra) # 80005b34 <_Z11printStringPKc>
    80003df4:	00000613          	li	a2,0
    80003df8:	00a00593          	li	a1,10
    80003dfc:	00048513          	mv	a0,s1
    80003e00:	00002097          	auipc	ra,0x2
    80003e04:	ee4080e7          	jalr	-284(ra) # 80005ce4 <_Z8printIntiii>
    80003e08:	00005517          	auipc	a0,0x5
    80003e0c:	49850513          	addi	a0,a0,1176 # 800092a0 <CONSOLE_STATUS+0x290>
    80003e10:	00002097          	auipc	ra,0x2
    80003e14:	d24080e7          	jalr	-732(ra) # 80005b34 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003e18:	0014849b          	addiw	s1,s1,1
    80003e1c:	0ff4f493          	andi	s1,s1,255
    80003e20:	00200793          	li	a5,2
    80003e24:	fc97f0e3          	bgeu	a5,s1,80003de4 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003e28:	00005517          	auipc	a0,0x5
    80003e2c:	5d850513          	addi	a0,a0,1496 # 80009400 <CONSOLE_STATUS+0x3f0>
    80003e30:	00002097          	auipc	ra,0x2
    80003e34:	d04080e7          	jalr	-764(ra) # 80005b34 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003e38:	00700313          	li	t1,7
    thread_dispatch();
    80003e3c:	ffffd097          	auipc	ra,0xffffd
    80003e40:	54c080e7          	jalr	1356(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003e44:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003e48:	00005517          	auipc	a0,0x5
    80003e4c:	5c850513          	addi	a0,a0,1480 # 80009410 <CONSOLE_STATUS+0x400>
    80003e50:	00002097          	auipc	ra,0x2
    80003e54:	ce4080e7          	jalr	-796(ra) # 80005b34 <_Z11printStringPKc>
    80003e58:	00000613          	li	a2,0
    80003e5c:	00a00593          	li	a1,10
    80003e60:	0009051b          	sext.w	a0,s2
    80003e64:	00002097          	auipc	ra,0x2
    80003e68:	e80080e7          	jalr	-384(ra) # 80005ce4 <_Z8printIntiii>
    80003e6c:	00005517          	auipc	a0,0x5
    80003e70:	43450513          	addi	a0,a0,1076 # 800092a0 <CONSOLE_STATUS+0x290>
    80003e74:	00002097          	auipc	ra,0x2
    80003e78:	cc0080e7          	jalr	-832(ra) # 80005b34 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003e7c:	00c00513          	li	a0,12
    80003e80:	00000097          	auipc	ra,0x0
    80003e84:	d30080e7          	jalr	-720(ra) # 80003bb0 <_ZL9fibonaccim>
    80003e88:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003e8c:	00005517          	auipc	a0,0x5
    80003e90:	58c50513          	addi	a0,a0,1420 # 80009418 <CONSOLE_STATUS+0x408>
    80003e94:	00002097          	auipc	ra,0x2
    80003e98:	ca0080e7          	jalr	-864(ra) # 80005b34 <_Z11printStringPKc>
    80003e9c:	00000613          	li	a2,0
    80003ea0:	00a00593          	li	a1,10
    80003ea4:	0009051b          	sext.w	a0,s2
    80003ea8:	00002097          	auipc	ra,0x2
    80003eac:	e3c080e7          	jalr	-452(ra) # 80005ce4 <_Z8printIntiii>
    80003eb0:	00005517          	auipc	a0,0x5
    80003eb4:	3f050513          	addi	a0,a0,1008 # 800092a0 <CONSOLE_STATUS+0x290>
    80003eb8:	00002097          	auipc	ra,0x2
    80003ebc:	c7c080e7          	jalr	-900(ra) # 80005b34 <_Z11printStringPKc>
    80003ec0:	0400006f          	j	80003f00 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003ec4:	00005517          	auipc	a0,0x5
    80003ec8:	53450513          	addi	a0,a0,1332 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80003ecc:	00002097          	auipc	ra,0x2
    80003ed0:	c68080e7          	jalr	-920(ra) # 80005b34 <_Z11printStringPKc>
    80003ed4:	00000613          	li	a2,0
    80003ed8:	00a00593          	li	a1,10
    80003edc:	00048513          	mv	a0,s1
    80003ee0:	00002097          	auipc	ra,0x2
    80003ee4:	e04080e7          	jalr	-508(ra) # 80005ce4 <_Z8printIntiii>
    80003ee8:	00005517          	auipc	a0,0x5
    80003eec:	3b850513          	addi	a0,a0,952 # 800092a0 <CONSOLE_STATUS+0x290>
    80003ef0:	00002097          	auipc	ra,0x2
    80003ef4:	c44080e7          	jalr	-956(ra) # 80005b34 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003ef8:	0014849b          	addiw	s1,s1,1
    80003efc:	0ff4f493          	andi	s1,s1,255
    80003f00:	00500793          	li	a5,5
    80003f04:	fc97f0e3          	bgeu	a5,s1,80003ec4 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003f08:	00005517          	auipc	a0,0x5
    80003f0c:	4c850513          	addi	a0,a0,1224 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80003f10:	00002097          	auipc	ra,0x2
    80003f14:	c24080e7          	jalr	-988(ra) # 80005b34 <_Z11printStringPKc>
    finishedC = true;
    80003f18:	00100793          	li	a5,1
    80003f1c:	00008717          	auipc	a4,0x8
    80003f20:	f2f70f23          	sb	a5,-194(a4) # 8000be5a <_ZL9finishedC>
    thread_dispatch();
    80003f24:	ffffd097          	auipc	ra,0xffffd
    80003f28:	464080e7          	jalr	1124(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003f2c:	01813083          	ld	ra,24(sp)
    80003f30:	01013403          	ld	s0,16(sp)
    80003f34:	00813483          	ld	s1,8(sp)
    80003f38:	00013903          	ld	s2,0(sp)
    80003f3c:	02010113          	addi	sp,sp,32
    80003f40:	00008067          	ret

0000000080003f44 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003f44:	fe010113          	addi	sp,sp,-32
    80003f48:	00113c23          	sd	ra,24(sp)
    80003f4c:	00813823          	sd	s0,16(sp)
    80003f50:	00913423          	sd	s1,8(sp)
    80003f54:	01213023          	sd	s2,0(sp)
    80003f58:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003f5c:	00a00493          	li	s1,10
    80003f60:	0400006f          	j	80003fa0 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003f64:	00005517          	auipc	a0,0x5
    80003f68:	60450513          	addi	a0,a0,1540 # 80009568 <CONSOLE_STATUS+0x558>
    80003f6c:	00002097          	auipc	ra,0x2
    80003f70:	bc8080e7          	jalr	-1080(ra) # 80005b34 <_Z11printStringPKc>
    80003f74:	00000613          	li	a2,0
    80003f78:	00a00593          	li	a1,10
    80003f7c:	00048513          	mv	a0,s1
    80003f80:	00002097          	auipc	ra,0x2
    80003f84:	d64080e7          	jalr	-668(ra) # 80005ce4 <_Z8printIntiii>
    80003f88:	00005517          	auipc	a0,0x5
    80003f8c:	31850513          	addi	a0,a0,792 # 800092a0 <CONSOLE_STATUS+0x290>
    80003f90:	00002097          	auipc	ra,0x2
    80003f94:	ba4080e7          	jalr	-1116(ra) # 80005b34 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003f98:	0014849b          	addiw	s1,s1,1
    80003f9c:	0ff4f493          	andi	s1,s1,255
    80003fa0:	00c00793          	li	a5,12
    80003fa4:	fc97f0e3          	bgeu	a5,s1,80003f64 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003fa8:	00005517          	auipc	a0,0x5
    80003fac:	5c850513          	addi	a0,a0,1480 # 80009570 <CONSOLE_STATUS+0x560>
    80003fb0:	00002097          	auipc	ra,0x2
    80003fb4:	b84080e7          	jalr	-1148(ra) # 80005b34 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003fb8:	00500313          	li	t1,5
    thread_dispatch();
    80003fbc:	ffffd097          	auipc	ra,0xffffd
    80003fc0:	3cc080e7          	jalr	972(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003fc4:	01000513          	li	a0,16
    80003fc8:	00000097          	auipc	ra,0x0
    80003fcc:	be8080e7          	jalr	-1048(ra) # 80003bb0 <_ZL9fibonaccim>
    80003fd0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003fd4:	00005517          	auipc	a0,0x5
    80003fd8:	5ac50513          	addi	a0,a0,1452 # 80009580 <CONSOLE_STATUS+0x570>
    80003fdc:	00002097          	auipc	ra,0x2
    80003fe0:	b58080e7          	jalr	-1192(ra) # 80005b34 <_Z11printStringPKc>
    80003fe4:	00000613          	li	a2,0
    80003fe8:	00a00593          	li	a1,10
    80003fec:	0009051b          	sext.w	a0,s2
    80003ff0:	00002097          	auipc	ra,0x2
    80003ff4:	cf4080e7          	jalr	-780(ra) # 80005ce4 <_Z8printIntiii>
    80003ff8:	00005517          	auipc	a0,0x5
    80003ffc:	2a850513          	addi	a0,a0,680 # 800092a0 <CONSOLE_STATUS+0x290>
    80004000:	00002097          	auipc	ra,0x2
    80004004:	b34080e7          	jalr	-1228(ra) # 80005b34 <_Z11printStringPKc>
    80004008:	0400006f          	j	80004048 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000400c:	00005517          	auipc	a0,0x5
    80004010:	55c50513          	addi	a0,a0,1372 # 80009568 <CONSOLE_STATUS+0x558>
    80004014:	00002097          	auipc	ra,0x2
    80004018:	b20080e7          	jalr	-1248(ra) # 80005b34 <_Z11printStringPKc>
    8000401c:	00000613          	li	a2,0
    80004020:	00a00593          	li	a1,10
    80004024:	00048513          	mv	a0,s1
    80004028:	00002097          	auipc	ra,0x2
    8000402c:	cbc080e7          	jalr	-836(ra) # 80005ce4 <_Z8printIntiii>
    80004030:	00005517          	auipc	a0,0x5
    80004034:	27050513          	addi	a0,a0,624 # 800092a0 <CONSOLE_STATUS+0x290>
    80004038:	00002097          	auipc	ra,0x2
    8000403c:	afc080e7          	jalr	-1284(ra) # 80005b34 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004040:	0014849b          	addiw	s1,s1,1
    80004044:	0ff4f493          	andi	s1,s1,255
    80004048:	00f00793          	li	a5,15
    8000404c:	fc97f0e3          	bgeu	a5,s1,8000400c <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004050:	00005517          	auipc	a0,0x5
    80004054:	54050513          	addi	a0,a0,1344 # 80009590 <CONSOLE_STATUS+0x580>
    80004058:	00002097          	auipc	ra,0x2
    8000405c:	adc080e7          	jalr	-1316(ra) # 80005b34 <_Z11printStringPKc>
    finishedD = true;
    80004060:	00100793          	li	a5,1
    80004064:	00008717          	auipc	a4,0x8
    80004068:	def70ba3          	sb	a5,-521(a4) # 8000be5b <_ZL9finishedD>
    thread_dispatch();
    8000406c:	ffffd097          	auipc	ra,0xffffd
    80004070:	31c080e7          	jalr	796(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004074:	01813083          	ld	ra,24(sp)
    80004078:	01013403          	ld	s0,16(sp)
    8000407c:	00813483          	ld	s1,8(sp)
    80004080:	00013903          	ld	s2,0(sp)
    80004084:	02010113          	addi	sp,sp,32
    80004088:	00008067          	ret

000000008000408c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    8000408c:	fc010113          	addi	sp,sp,-64
    80004090:	02113c23          	sd	ra,56(sp)
    80004094:	02813823          	sd	s0,48(sp)
    80004098:	02913423          	sd	s1,40(sp)
    8000409c:	03213023          	sd	s2,32(sp)
    800040a0:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800040a4:	02000513          	li	a0,32
    800040a8:	ffffe097          	auipc	ra,0xffffe
    800040ac:	4f0080e7          	jalr	1264(ra) # 80002598 <_Znwm>
    800040b0:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800040b4:	ffffe097          	auipc	ra,0xffffe
    800040b8:	7bc080e7          	jalr	1980(ra) # 80002870 <_ZN6ThreadC1Ev>
    800040bc:	00008797          	auipc	a5,0x8
    800040c0:	b1c78793          	addi	a5,a5,-1252 # 8000bbd8 <_ZTV7WorkerA+0x10>
    800040c4:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800040c8:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800040cc:	00005517          	auipc	a0,0x5
    800040d0:	36c50513          	addi	a0,a0,876 # 80009438 <CONSOLE_STATUS+0x428>
    800040d4:	00002097          	auipc	ra,0x2
    800040d8:	a60080e7          	jalr	-1440(ra) # 80005b34 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800040dc:	02000513          	li	a0,32
    800040e0:	ffffe097          	auipc	ra,0xffffe
    800040e4:	4b8080e7          	jalr	1208(ra) # 80002598 <_Znwm>
    800040e8:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800040ec:	ffffe097          	auipc	ra,0xffffe
    800040f0:	784080e7          	jalr	1924(ra) # 80002870 <_ZN6ThreadC1Ev>
    800040f4:	00008797          	auipc	a5,0x8
    800040f8:	b0c78793          	addi	a5,a5,-1268 # 8000bc00 <_ZTV7WorkerB+0x10>
    800040fc:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004100:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004104:	00005517          	auipc	a0,0x5
    80004108:	34c50513          	addi	a0,a0,844 # 80009450 <CONSOLE_STATUS+0x440>
    8000410c:	00002097          	auipc	ra,0x2
    80004110:	a28080e7          	jalr	-1496(ra) # 80005b34 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004114:	02000513          	li	a0,32
    80004118:	ffffe097          	auipc	ra,0xffffe
    8000411c:	480080e7          	jalr	1152(ra) # 80002598 <_Znwm>
    80004120:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80004124:	ffffe097          	auipc	ra,0xffffe
    80004128:	74c080e7          	jalr	1868(ra) # 80002870 <_ZN6ThreadC1Ev>
    8000412c:	00008797          	auipc	a5,0x8
    80004130:	afc78793          	addi	a5,a5,-1284 # 8000bc28 <_ZTV7WorkerC+0x10>
    80004134:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004138:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    8000413c:	00005517          	auipc	a0,0x5
    80004140:	32c50513          	addi	a0,a0,812 # 80009468 <CONSOLE_STATUS+0x458>
    80004144:	00002097          	auipc	ra,0x2
    80004148:	9f0080e7          	jalr	-1552(ra) # 80005b34 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    8000414c:	02000513          	li	a0,32
    80004150:	ffffe097          	auipc	ra,0xffffe
    80004154:	448080e7          	jalr	1096(ra) # 80002598 <_Znwm>
    80004158:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    8000415c:	ffffe097          	auipc	ra,0xffffe
    80004160:	714080e7          	jalr	1812(ra) # 80002870 <_ZN6ThreadC1Ev>
    80004164:	00008797          	auipc	a5,0x8
    80004168:	aec78793          	addi	a5,a5,-1300 # 8000bc50 <_ZTV7WorkerD+0x10>
    8000416c:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004170:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004174:	00005517          	auipc	a0,0x5
    80004178:	42c50513          	addi	a0,a0,1068 # 800095a0 <CONSOLE_STATUS+0x590>
    8000417c:	00002097          	auipc	ra,0x2
    80004180:	9b8080e7          	jalr	-1608(ra) # 80005b34 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004184:	00000493          	li	s1,0
    80004188:	00300793          	li	a5,3
    8000418c:	0297c663          	blt	a5,s1,800041b8 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004190:	00349793          	slli	a5,s1,0x3
    80004194:	fe040713          	addi	a4,s0,-32
    80004198:	00f707b3          	add	a5,a4,a5
    8000419c:	fe07b503          	ld	a0,-32(a5)
    800041a0:	ffffe097          	auipc	ra,0xffffe
    800041a4:	700080e7          	jalr	1792(ra) # 800028a0 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800041a8:	0014849b          	addiw	s1,s1,1
    800041ac:	fddff06f          	j	80004188 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800041b0:	ffffe097          	auipc	ra,0xffffe
    800041b4:	744080e7          	jalr	1860(ra) # 800028f4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800041b8:	00008797          	auipc	a5,0x8
    800041bc:	ca07c783          	lbu	a5,-864(a5) # 8000be58 <_ZL9finishedA>
    800041c0:	fe0788e3          	beqz	a5,800041b0 <_Z20Threads_CPP_API_testv+0x124>
    800041c4:	00008797          	auipc	a5,0x8
    800041c8:	c957c783          	lbu	a5,-875(a5) # 8000be59 <_ZL9finishedB>
    800041cc:	fe0782e3          	beqz	a5,800041b0 <_Z20Threads_CPP_API_testv+0x124>
    800041d0:	00008797          	auipc	a5,0x8
    800041d4:	c8a7c783          	lbu	a5,-886(a5) # 8000be5a <_ZL9finishedC>
    800041d8:	fc078ce3          	beqz	a5,800041b0 <_Z20Threads_CPP_API_testv+0x124>
    800041dc:	00008797          	auipc	a5,0x8
    800041e0:	c7f7c783          	lbu	a5,-897(a5) # 8000be5b <_ZL9finishedD>
    800041e4:	fc0786e3          	beqz	a5,800041b0 <_Z20Threads_CPP_API_testv+0x124>
    800041e8:	fc040493          	addi	s1,s0,-64
    800041ec:	0080006f          	j	800041f4 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800041f0:	00848493          	addi	s1,s1,8
    800041f4:	fe040793          	addi	a5,s0,-32
    800041f8:	08f48663          	beq	s1,a5,80004284 <_Z20Threads_CPP_API_testv+0x1f8>
    800041fc:	0004b503          	ld	a0,0(s1)
    80004200:	fe0508e3          	beqz	a0,800041f0 <_Z20Threads_CPP_API_testv+0x164>
    80004204:	00053783          	ld	a5,0(a0)
    80004208:	0087b783          	ld	a5,8(a5)
    8000420c:	000780e7          	jalr	a5
    80004210:	fe1ff06f          	j	800041f0 <_Z20Threads_CPP_API_testv+0x164>
    80004214:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004218:	00048513          	mv	a0,s1
    8000421c:	ffffe097          	auipc	ra,0xffffe
    80004220:	3cc080e7          	jalr	972(ra) # 800025e8 <_ZdlPv>
    80004224:	00090513          	mv	a0,s2
    80004228:	00009097          	auipc	ra,0x9
    8000422c:	d40080e7          	jalr	-704(ra) # 8000cf68 <_Unwind_Resume>
    80004230:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004234:	00048513          	mv	a0,s1
    80004238:	ffffe097          	auipc	ra,0xffffe
    8000423c:	3b0080e7          	jalr	944(ra) # 800025e8 <_ZdlPv>
    80004240:	00090513          	mv	a0,s2
    80004244:	00009097          	auipc	ra,0x9
    80004248:	d24080e7          	jalr	-732(ra) # 8000cf68 <_Unwind_Resume>
    8000424c:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004250:	00048513          	mv	a0,s1
    80004254:	ffffe097          	auipc	ra,0xffffe
    80004258:	394080e7          	jalr	916(ra) # 800025e8 <_ZdlPv>
    8000425c:	00090513          	mv	a0,s2
    80004260:	00009097          	auipc	ra,0x9
    80004264:	d08080e7          	jalr	-760(ra) # 8000cf68 <_Unwind_Resume>
    80004268:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    8000426c:	00048513          	mv	a0,s1
    80004270:	ffffe097          	auipc	ra,0xffffe
    80004274:	378080e7          	jalr	888(ra) # 800025e8 <_ZdlPv>
    80004278:	00090513          	mv	a0,s2
    8000427c:	00009097          	auipc	ra,0x9
    80004280:	cec080e7          	jalr	-788(ra) # 8000cf68 <_Unwind_Resume>
}
    80004284:	03813083          	ld	ra,56(sp)
    80004288:	03013403          	ld	s0,48(sp)
    8000428c:	02813483          	ld	s1,40(sp)
    80004290:	02013903          	ld	s2,32(sp)
    80004294:	04010113          	addi	sp,sp,64
    80004298:	00008067          	ret

000000008000429c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    8000429c:	ff010113          	addi	sp,sp,-16
    800042a0:	00113423          	sd	ra,8(sp)
    800042a4:	00813023          	sd	s0,0(sp)
    800042a8:	01010413          	addi	s0,sp,16
    800042ac:	00008797          	auipc	a5,0x8
    800042b0:	92c78793          	addi	a5,a5,-1748 # 8000bbd8 <_ZTV7WorkerA+0x10>
    800042b4:	00f53023          	sd	a5,0(a0)
    800042b8:	ffffe097          	auipc	ra,0xffffe
    800042bc:	494080e7          	jalr	1172(ra) # 8000274c <_ZN6ThreadD1Ev>
    800042c0:	00813083          	ld	ra,8(sp)
    800042c4:	00013403          	ld	s0,0(sp)
    800042c8:	01010113          	addi	sp,sp,16
    800042cc:	00008067          	ret

00000000800042d0 <_ZN7WorkerAD0Ev>:
    800042d0:	fe010113          	addi	sp,sp,-32
    800042d4:	00113c23          	sd	ra,24(sp)
    800042d8:	00813823          	sd	s0,16(sp)
    800042dc:	00913423          	sd	s1,8(sp)
    800042e0:	02010413          	addi	s0,sp,32
    800042e4:	00050493          	mv	s1,a0
    800042e8:	00008797          	auipc	a5,0x8
    800042ec:	8f078793          	addi	a5,a5,-1808 # 8000bbd8 <_ZTV7WorkerA+0x10>
    800042f0:	00f53023          	sd	a5,0(a0)
    800042f4:	ffffe097          	auipc	ra,0xffffe
    800042f8:	458080e7          	jalr	1112(ra) # 8000274c <_ZN6ThreadD1Ev>
    800042fc:	00048513          	mv	a0,s1
    80004300:	ffffe097          	auipc	ra,0xffffe
    80004304:	2e8080e7          	jalr	744(ra) # 800025e8 <_ZdlPv>
    80004308:	01813083          	ld	ra,24(sp)
    8000430c:	01013403          	ld	s0,16(sp)
    80004310:	00813483          	ld	s1,8(sp)
    80004314:	02010113          	addi	sp,sp,32
    80004318:	00008067          	ret

000000008000431c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    8000431c:	ff010113          	addi	sp,sp,-16
    80004320:	00113423          	sd	ra,8(sp)
    80004324:	00813023          	sd	s0,0(sp)
    80004328:	01010413          	addi	s0,sp,16
    8000432c:	00008797          	auipc	a5,0x8
    80004330:	8d478793          	addi	a5,a5,-1836 # 8000bc00 <_ZTV7WorkerB+0x10>
    80004334:	00f53023          	sd	a5,0(a0)
    80004338:	ffffe097          	auipc	ra,0xffffe
    8000433c:	414080e7          	jalr	1044(ra) # 8000274c <_ZN6ThreadD1Ev>
    80004340:	00813083          	ld	ra,8(sp)
    80004344:	00013403          	ld	s0,0(sp)
    80004348:	01010113          	addi	sp,sp,16
    8000434c:	00008067          	ret

0000000080004350 <_ZN7WorkerBD0Ev>:
    80004350:	fe010113          	addi	sp,sp,-32
    80004354:	00113c23          	sd	ra,24(sp)
    80004358:	00813823          	sd	s0,16(sp)
    8000435c:	00913423          	sd	s1,8(sp)
    80004360:	02010413          	addi	s0,sp,32
    80004364:	00050493          	mv	s1,a0
    80004368:	00008797          	auipc	a5,0x8
    8000436c:	89878793          	addi	a5,a5,-1896 # 8000bc00 <_ZTV7WorkerB+0x10>
    80004370:	00f53023          	sd	a5,0(a0)
    80004374:	ffffe097          	auipc	ra,0xffffe
    80004378:	3d8080e7          	jalr	984(ra) # 8000274c <_ZN6ThreadD1Ev>
    8000437c:	00048513          	mv	a0,s1
    80004380:	ffffe097          	auipc	ra,0xffffe
    80004384:	268080e7          	jalr	616(ra) # 800025e8 <_ZdlPv>
    80004388:	01813083          	ld	ra,24(sp)
    8000438c:	01013403          	ld	s0,16(sp)
    80004390:	00813483          	ld	s1,8(sp)
    80004394:	02010113          	addi	sp,sp,32
    80004398:	00008067          	ret

000000008000439c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    8000439c:	ff010113          	addi	sp,sp,-16
    800043a0:	00113423          	sd	ra,8(sp)
    800043a4:	00813023          	sd	s0,0(sp)
    800043a8:	01010413          	addi	s0,sp,16
    800043ac:	00008797          	auipc	a5,0x8
    800043b0:	87c78793          	addi	a5,a5,-1924 # 8000bc28 <_ZTV7WorkerC+0x10>
    800043b4:	00f53023          	sd	a5,0(a0)
    800043b8:	ffffe097          	auipc	ra,0xffffe
    800043bc:	394080e7          	jalr	916(ra) # 8000274c <_ZN6ThreadD1Ev>
    800043c0:	00813083          	ld	ra,8(sp)
    800043c4:	00013403          	ld	s0,0(sp)
    800043c8:	01010113          	addi	sp,sp,16
    800043cc:	00008067          	ret

00000000800043d0 <_ZN7WorkerCD0Ev>:
    800043d0:	fe010113          	addi	sp,sp,-32
    800043d4:	00113c23          	sd	ra,24(sp)
    800043d8:	00813823          	sd	s0,16(sp)
    800043dc:	00913423          	sd	s1,8(sp)
    800043e0:	02010413          	addi	s0,sp,32
    800043e4:	00050493          	mv	s1,a0
    800043e8:	00008797          	auipc	a5,0x8
    800043ec:	84078793          	addi	a5,a5,-1984 # 8000bc28 <_ZTV7WorkerC+0x10>
    800043f0:	00f53023          	sd	a5,0(a0)
    800043f4:	ffffe097          	auipc	ra,0xffffe
    800043f8:	358080e7          	jalr	856(ra) # 8000274c <_ZN6ThreadD1Ev>
    800043fc:	00048513          	mv	a0,s1
    80004400:	ffffe097          	auipc	ra,0xffffe
    80004404:	1e8080e7          	jalr	488(ra) # 800025e8 <_ZdlPv>
    80004408:	01813083          	ld	ra,24(sp)
    8000440c:	01013403          	ld	s0,16(sp)
    80004410:	00813483          	ld	s1,8(sp)
    80004414:	02010113          	addi	sp,sp,32
    80004418:	00008067          	ret

000000008000441c <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    8000441c:	ff010113          	addi	sp,sp,-16
    80004420:	00113423          	sd	ra,8(sp)
    80004424:	00813023          	sd	s0,0(sp)
    80004428:	01010413          	addi	s0,sp,16
    8000442c:	00008797          	auipc	a5,0x8
    80004430:	82478793          	addi	a5,a5,-2012 # 8000bc50 <_ZTV7WorkerD+0x10>
    80004434:	00f53023          	sd	a5,0(a0)
    80004438:	ffffe097          	auipc	ra,0xffffe
    8000443c:	314080e7          	jalr	788(ra) # 8000274c <_ZN6ThreadD1Ev>
    80004440:	00813083          	ld	ra,8(sp)
    80004444:	00013403          	ld	s0,0(sp)
    80004448:	01010113          	addi	sp,sp,16
    8000444c:	00008067          	ret

0000000080004450 <_ZN7WorkerDD0Ev>:
    80004450:	fe010113          	addi	sp,sp,-32
    80004454:	00113c23          	sd	ra,24(sp)
    80004458:	00813823          	sd	s0,16(sp)
    8000445c:	00913423          	sd	s1,8(sp)
    80004460:	02010413          	addi	s0,sp,32
    80004464:	00050493          	mv	s1,a0
    80004468:	00007797          	auipc	a5,0x7
    8000446c:	7e878793          	addi	a5,a5,2024 # 8000bc50 <_ZTV7WorkerD+0x10>
    80004470:	00f53023          	sd	a5,0(a0)
    80004474:	ffffe097          	auipc	ra,0xffffe
    80004478:	2d8080e7          	jalr	728(ra) # 8000274c <_ZN6ThreadD1Ev>
    8000447c:	00048513          	mv	a0,s1
    80004480:	ffffe097          	auipc	ra,0xffffe
    80004484:	168080e7          	jalr	360(ra) # 800025e8 <_ZdlPv>
    80004488:	01813083          	ld	ra,24(sp)
    8000448c:	01013403          	ld	s0,16(sp)
    80004490:	00813483          	ld	s1,8(sp)
    80004494:	02010113          	addi	sp,sp,32
    80004498:	00008067          	ret

000000008000449c <_ZN7WorkerA3runEv>:
    void run() override {
    8000449c:	ff010113          	addi	sp,sp,-16
    800044a0:	00113423          	sd	ra,8(sp)
    800044a4:	00813023          	sd	s0,0(sp)
    800044a8:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800044ac:	00000593          	li	a1,0
    800044b0:	fffff097          	auipc	ra,0xfffff
    800044b4:	774080e7          	jalr	1908(ra) # 80003c24 <_ZN7WorkerA11workerBodyAEPv>
    }
    800044b8:	00813083          	ld	ra,8(sp)
    800044bc:	00013403          	ld	s0,0(sp)
    800044c0:	01010113          	addi	sp,sp,16
    800044c4:	00008067          	ret

00000000800044c8 <_ZN7WorkerB3runEv>:
    void run() override {
    800044c8:	ff010113          	addi	sp,sp,-16
    800044cc:	00113423          	sd	ra,8(sp)
    800044d0:	00813023          	sd	s0,0(sp)
    800044d4:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800044d8:	00000593          	li	a1,0
    800044dc:	00000097          	auipc	ra,0x0
    800044e0:	814080e7          	jalr	-2028(ra) # 80003cf0 <_ZN7WorkerB11workerBodyBEPv>
    }
    800044e4:	00813083          	ld	ra,8(sp)
    800044e8:	00013403          	ld	s0,0(sp)
    800044ec:	01010113          	addi	sp,sp,16
    800044f0:	00008067          	ret

00000000800044f4 <_ZN7WorkerC3runEv>:
    void run() override {
    800044f4:	ff010113          	addi	sp,sp,-16
    800044f8:	00113423          	sd	ra,8(sp)
    800044fc:	00813023          	sd	s0,0(sp)
    80004500:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004504:	00000593          	li	a1,0
    80004508:	00000097          	auipc	ra,0x0
    8000450c:	8bc080e7          	jalr	-1860(ra) # 80003dc4 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004510:	00813083          	ld	ra,8(sp)
    80004514:	00013403          	ld	s0,0(sp)
    80004518:	01010113          	addi	sp,sp,16
    8000451c:	00008067          	ret

0000000080004520 <_ZN7WorkerD3runEv>:
    void run() override {
    80004520:	ff010113          	addi	sp,sp,-16
    80004524:	00113423          	sd	ra,8(sp)
    80004528:	00813023          	sd	s0,0(sp)
    8000452c:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004530:	00000593          	li	a1,0
    80004534:	00000097          	auipc	ra,0x0
    80004538:	a10080e7          	jalr	-1520(ra) # 80003f44 <_ZN7WorkerD11workerBodyDEPv>
    }
    8000453c:	00813083          	ld	ra,8(sp)
    80004540:	00013403          	ld	s0,0(sp)
    80004544:	01010113          	addi	sp,sp,16
    80004548:	00008067          	ret

000000008000454c <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    8000454c:	f8010113          	addi	sp,sp,-128
    80004550:	06113c23          	sd	ra,120(sp)
    80004554:	06813823          	sd	s0,112(sp)
    80004558:	06913423          	sd	s1,104(sp)
    8000455c:	07213023          	sd	s2,96(sp)
    80004560:	05313c23          	sd	s3,88(sp)
    80004564:	05413823          	sd	s4,80(sp)
    80004568:	05513423          	sd	s5,72(sp)
    8000456c:	05613023          	sd	s6,64(sp)
    80004570:	03713c23          	sd	s7,56(sp)
    80004574:	03813823          	sd	s8,48(sp)
    80004578:	03913423          	sd	s9,40(sp)
    8000457c:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004580:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004584:	00005517          	auipc	a0,0x5
    80004588:	efc50513          	addi	a0,a0,-260 # 80009480 <CONSOLE_STATUS+0x470>
    8000458c:	00001097          	auipc	ra,0x1
    80004590:	5a8080e7          	jalr	1448(ra) # 80005b34 <_Z11printStringPKc>
    getString(input, 30);
    80004594:	01e00593          	li	a1,30
    80004598:	f8040493          	addi	s1,s0,-128
    8000459c:	00048513          	mv	a0,s1
    800045a0:	00001097          	auipc	ra,0x1
    800045a4:	61c080e7          	jalr	1564(ra) # 80005bbc <_Z9getStringPci>
    threadNum = stringToInt(input);
    800045a8:	00048513          	mv	a0,s1
    800045ac:	00001097          	auipc	ra,0x1
    800045b0:	6e8080e7          	jalr	1768(ra) # 80005c94 <_Z11stringToIntPKc>
    800045b4:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800045b8:	00005517          	auipc	a0,0x5
    800045bc:	ee850513          	addi	a0,a0,-280 # 800094a0 <CONSOLE_STATUS+0x490>
    800045c0:	00001097          	auipc	ra,0x1
    800045c4:	574080e7          	jalr	1396(ra) # 80005b34 <_Z11printStringPKc>
    getString(input, 30);
    800045c8:	01e00593          	li	a1,30
    800045cc:	00048513          	mv	a0,s1
    800045d0:	00001097          	auipc	ra,0x1
    800045d4:	5ec080e7          	jalr	1516(ra) # 80005bbc <_Z9getStringPci>
    n = stringToInt(input);
    800045d8:	00048513          	mv	a0,s1
    800045dc:	00001097          	auipc	ra,0x1
    800045e0:	6b8080e7          	jalr	1720(ra) # 80005c94 <_Z11stringToIntPKc>
    800045e4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800045e8:	00005517          	auipc	a0,0x5
    800045ec:	ed850513          	addi	a0,a0,-296 # 800094c0 <CONSOLE_STATUS+0x4b0>
    800045f0:	00001097          	auipc	ra,0x1
    800045f4:	544080e7          	jalr	1348(ra) # 80005b34 <_Z11printStringPKc>
    printInt(threadNum);
    800045f8:	00000613          	li	a2,0
    800045fc:	00a00593          	li	a1,10
    80004600:	00098513          	mv	a0,s3
    80004604:	00001097          	auipc	ra,0x1
    80004608:	6e0080e7          	jalr	1760(ra) # 80005ce4 <_Z8printIntiii>
    printString(" i velicina bafera ");
    8000460c:	00005517          	auipc	a0,0x5
    80004610:	ecc50513          	addi	a0,a0,-308 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80004614:	00001097          	auipc	ra,0x1
    80004618:	520080e7          	jalr	1312(ra) # 80005b34 <_Z11printStringPKc>
    printInt(n);
    8000461c:	00000613          	li	a2,0
    80004620:	00a00593          	li	a1,10
    80004624:	00048513          	mv	a0,s1
    80004628:	00001097          	auipc	ra,0x1
    8000462c:	6bc080e7          	jalr	1724(ra) # 80005ce4 <_Z8printIntiii>
    printString(".\n");
    80004630:	00005517          	auipc	a0,0x5
    80004634:	ec050513          	addi	a0,a0,-320 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80004638:	00001097          	auipc	ra,0x1
    8000463c:	4fc080e7          	jalr	1276(ra) # 80005b34 <_Z11printStringPKc>
    if (threadNum > n) {
    80004640:	0334c463          	blt	s1,s3,80004668 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004644:	03305c63          	blez	s3,8000467c <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004648:	03800513          	li	a0,56
    8000464c:	ffffe097          	auipc	ra,0xffffe
    80004650:	f4c080e7          	jalr	-180(ra) # 80002598 <_Znwm>
    80004654:	00050a93          	mv	s5,a0
    80004658:	00048593          	mv	a1,s1
    8000465c:	00001097          	auipc	ra,0x1
    80004660:	7a8080e7          	jalr	1960(ra) # 80005e04 <_ZN9BufferCPPC1Ei>
    80004664:	0300006f          	j	80004694 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004668:	00005517          	auipc	a0,0x5
    8000466c:	e9050513          	addi	a0,a0,-368 # 800094f8 <CONSOLE_STATUS+0x4e8>
    80004670:	00001097          	auipc	ra,0x1
    80004674:	4c4080e7          	jalr	1220(ra) # 80005b34 <_Z11printStringPKc>
        return;
    80004678:	0140006f          	j	8000468c <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000467c:	00005517          	auipc	a0,0x5
    80004680:	ebc50513          	addi	a0,a0,-324 # 80009538 <CONSOLE_STATUS+0x528>
    80004684:	00001097          	auipc	ra,0x1
    80004688:	4b0080e7          	jalr	1200(ra) # 80005b34 <_Z11printStringPKc>
        return;
    8000468c:	000c0113          	mv	sp,s8
    80004690:	2140006f          	j	800048a4 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004694:	01000513          	li	a0,16
    80004698:	ffffe097          	auipc	ra,0xffffe
    8000469c:	f00080e7          	jalr	-256(ra) # 80002598 <_Znwm>
    800046a0:	00050913          	mv	s2,a0
    800046a4:	00000593          	li	a1,0
    800046a8:	ffffe097          	auipc	ra,0xffffe
    800046ac:	2c8080e7          	jalr	712(ra) # 80002970 <_ZN9SemaphoreC1Ej>
    800046b0:	00007797          	auipc	a5,0x7
    800046b4:	7b27bc23          	sd	s2,1976(a5) # 8000be68 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800046b8:	00399793          	slli	a5,s3,0x3
    800046bc:	00f78793          	addi	a5,a5,15
    800046c0:	ff07f793          	andi	a5,a5,-16
    800046c4:	40f10133          	sub	sp,sp,a5
    800046c8:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800046cc:	0019871b          	addiw	a4,s3,1
    800046d0:	00171793          	slli	a5,a4,0x1
    800046d4:	00e787b3          	add	a5,a5,a4
    800046d8:	00379793          	slli	a5,a5,0x3
    800046dc:	00f78793          	addi	a5,a5,15
    800046e0:	ff07f793          	andi	a5,a5,-16
    800046e4:	40f10133          	sub	sp,sp,a5
    800046e8:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800046ec:	00199493          	slli	s1,s3,0x1
    800046f0:	013484b3          	add	s1,s1,s3
    800046f4:	00349493          	slli	s1,s1,0x3
    800046f8:	009b04b3          	add	s1,s6,s1
    800046fc:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004700:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004704:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004708:	02800513          	li	a0,40
    8000470c:	ffffe097          	auipc	ra,0xffffe
    80004710:	e8c080e7          	jalr	-372(ra) # 80002598 <_Znwm>
    80004714:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004718:	ffffe097          	auipc	ra,0xffffe
    8000471c:	158080e7          	jalr	344(ra) # 80002870 <_ZN6ThreadC1Ev>
    80004720:	00007797          	auipc	a5,0x7
    80004724:	5a878793          	addi	a5,a5,1448 # 8000bcc8 <_ZTV8Consumer+0x10>
    80004728:	00fbb023          	sd	a5,0(s7)
    8000472c:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004730:	000b8513          	mv	a0,s7
    80004734:	ffffe097          	auipc	ra,0xffffe
    80004738:	16c080e7          	jalr	364(ra) # 800028a0 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    8000473c:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004740:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004744:	00007797          	auipc	a5,0x7
    80004748:	7247b783          	ld	a5,1828(a5) # 8000be68 <_ZL10waitForAll>
    8000474c:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004750:	02800513          	li	a0,40
    80004754:	ffffe097          	auipc	ra,0xffffe
    80004758:	e44080e7          	jalr	-444(ra) # 80002598 <_Znwm>
    8000475c:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004760:	ffffe097          	auipc	ra,0xffffe
    80004764:	110080e7          	jalr	272(ra) # 80002870 <_ZN6ThreadC1Ev>
    80004768:	00007797          	auipc	a5,0x7
    8000476c:	51078793          	addi	a5,a5,1296 # 8000bc78 <_ZTV16ProducerKeyborad+0x10>
    80004770:	00f4b023          	sd	a5,0(s1)
    80004774:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004778:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    8000477c:	00048513          	mv	a0,s1
    80004780:	ffffe097          	auipc	ra,0xffffe
    80004784:	120080e7          	jalr	288(ra) # 800028a0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004788:	00100913          	li	s2,1
    8000478c:	0300006f          	j	800047bc <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004790:	00007797          	auipc	a5,0x7
    80004794:	51078793          	addi	a5,a5,1296 # 8000bca0 <_ZTV8Producer+0x10>
    80004798:	00fcb023          	sd	a5,0(s9)
    8000479c:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800047a0:	00391793          	slli	a5,s2,0x3
    800047a4:	00fa07b3          	add	a5,s4,a5
    800047a8:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800047ac:	000c8513          	mv	a0,s9
    800047b0:	ffffe097          	auipc	ra,0xffffe
    800047b4:	0f0080e7          	jalr	240(ra) # 800028a0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800047b8:	0019091b          	addiw	s2,s2,1
    800047bc:	05395263          	bge	s2,s3,80004800 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800047c0:	00191493          	slli	s1,s2,0x1
    800047c4:	012484b3          	add	s1,s1,s2
    800047c8:	00349493          	slli	s1,s1,0x3
    800047cc:	009b04b3          	add	s1,s6,s1
    800047d0:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800047d4:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800047d8:	00007797          	auipc	a5,0x7
    800047dc:	6907b783          	ld	a5,1680(a5) # 8000be68 <_ZL10waitForAll>
    800047e0:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800047e4:	02800513          	li	a0,40
    800047e8:	ffffe097          	auipc	ra,0xffffe
    800047ec:	db0080e7          	jalr	-592(ra) # 80002598 <_Znwm>
    800047f0:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800047f4:	ffffe097          	auipc	ra,0xffffe
    800047f8:	07c080e7          	jalr	124(ra) # 80002870 <_ZN6ThreadC1Ev>
    800047fc:	f95ff06f          	j	80004790 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004800:	ffffe097          	auipc	ra,0xffffe
    80004804:	0f4080e7          	jalr	244(ra) # 800028f4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004808:	00000493          	li	s1,0
    8000480c:	0099ce63          	blt	s3,s1,80004828 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004810:	00007517          	auipc	a0,0x7
    80004814:	65853503          	ld	a0,1624(a0) # 8000be68 <_ZL10waitForAll>
    80004818:	ffffe097          	auipc	ra,0xffffe
    8000481c:	194080e7          	jalr	404(ra) # 800029ac <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004820:	0014849b          	addiw	s1,s1,1
    80004824:	fe9ff06f          	j	8000480c <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004828:	00007517          	auipc	a0,0x7
    8000482c:	64053503          	ld	a0,1600(a0) # 8000be68 <_ZL10waitForAll>
    80004830:	00050863          	beqz	a0,80004840 <_Z20testConsumerProducerv+0x2f4>
    80004834:	00053783          	ld	a5,0(a0)
    80004838:	0087b783          	ld	a5,8(a5)
    8000483c:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004840:	00000493          	li	s1,0
    80004844:	0080006f          	j	8000484c <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004848:	0014849b          	addiw	s1,s1,1
    8000484c:	0334d263          	bge	s1,s3,80004870 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004850:	00349793          	slli	a5,s1,0x3
    80004854:	00fa07b3          	add	a5,s4,a5
    80004858:	0007b503          	ld	a0,0(a5)
    8000485c:	fe0506e3          	beqz	a0,80004848 <_Z20testConsumerProducerv+0x2fc>
    80004860:	00053783          	ld	a5,0(a0)
    80004864:	0087b783          	ld	a5,8(a5)
    80004868:	000780e7          	jalr	a5
    8000486c:	fddff06f          	j	80004848 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004870:	000b8a63          	beqz	s7,80004884 <_Z20testConsumerProducerv+0x338>
    80004874:	000bb783          	ld	a5,0(s7)
    80004878:	0087b783          	ld	a5,8(a5)
    8000487c:	000b8513          	mv	a0,s7
    80004880:	000780e7          	jalr	a5
    delete buffer;
    80004884:	000a8e63          	beqz	s5,800048a0 <_Z20testConsumerProducerv+0x354>
    80004888:	000a8513          	mv	a0,s5
    8000488c:	00002097          	auipc	ra,0x2
    80004890:	870080e7          	jalr	-1936(ra) # 800060fc <_ZN9BufferCPPD1Ev>
    80004894:	000a8513          	mv	a0,s5
    80004898:	ffffe097          	auipc	ra,0xffffe
    8000489c:	d50080e7          	jalr	-688(ra) # 800025e8 <_ZdlPv>
    800048a0:	000c0113          	mv	sp,s8
}
    800048a4:	f8040113          	addi	sp,s0,-128
    800048a8:	07813083          	ld	ra,120(sp)
    800048ac:	07013403          	ld	s0,112(sp)
    800048b0:	06813483          	ld	s1,104(sp)
    800048b4:	06013903          	ld	s2,96(sp)
    800048b8:	05813983          	ld	s3,88(sp)
    800048bc:	05013a03          	ld	s4,80(sp)
    800048c0:	04813a83          	ld	s5,72(sp)
    800048c4:	04013b03          	ld	s6,64(sp)
    800048c8:	03813b83          	ld	s7,56(sp)
    800048cc:	03013c03          	ld	s8,48(sp)
    800048d0:	02813c83          	ld	s9,40(sp)
    800048d4:	08010113          	addi	sp,sp,128
    800048d8:	00008067          	ret
    800048dc:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800048e0:	000a8513          	mv	a0,s5
    800048e4:	ffffe097          	auipc	ra,0xffffe
    800048e8:	d04080e7          	jalr	-764(ra) # 800025e8 <_ZdlPv>
    800048ec:	00048513          	mv	a0,s1
    800048f0:	00008097          	auipc	ra,0x8
    800048f4:	678080e7          	jalr	1656(ra) # 8000cf68 <_Unwind_Resume>
    800048f8:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800048fc:	00090513          	mv	a0,s2
    80004900:	ffffe097          	auipc	ra,0xffffe
    80004904:	ce8080e7          	jalr	-792(ra) # 800025e8 <_ZdlPv>
    80004908:	00048513          	mv	a0,s1
    8000490c:	00008097          	auipc	ra,0x8
    80004910:	65c080e7          	jalr	1628(ra) # 8000cf68 <_Unwind_Resume>
    80004914:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004918:	000b8513          	mv	a0,s7
    8000491c:	ffffe097          	auipc	ra,0xffffe
    80004920:	ccc080e7          	jalr	-820(ra) # 800025e8 <_ZdlPv>
    80004924:	00048513          	mv	a0,s1
    80004928:	00008097          	auipc	ra,0x8
    8000492c:	640080e7          	jalr	1600(ra) # 8000cf68 <_Unwind_Resume>
    80004930:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004934:	00048513          	mv	a0,s1
    80004938:	ffffe097          	auipc	ra,0xffffe
    8000493c:	cb0080e7          	jalr	-848(ra) # 800025e8 <_ZdlPv>
    80004940:	00090513          	mv	a0,s2
    80004944:	00008097          	auipc	ra,0x8
    80004948:	624080e7          	jalr	1572(ra) # 8000cf68 <_Unwind_Resume>
    8000494c:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004950:	000c8513          	mv	a0,s9
    80004954:	ffffe097          	auipc	ra,0xffffe
    80004958:	c94080e7          	jalr	-876(ra) # 800025e8 <_ZdlPv>
    8000495c:	00048513          	mv	a0,s1
    80004960:	00008097          	auipc	ra,0x8
    80004964:	608080e7          	jalr	1544(ra) # 8000cf68 <_Unwind_Resume>

0000000080004968 <_ZN8Consumer3runEv>:
    void run() override {
    80004968:	fd010113          	addi	sp,sp,-48
    8000496c:	02113423          	sd	ra,40(sp)
    80004970:	02813023          	sd	s0,32(sp)
    80004974:	00913c23          	sd	s1,24(sp)
    80004978:	01213823          	sd	s2,16(sp)
    8000497c:	01313423          	sd	s3,8(sp)
    80004980:	03010413          	addi	s0,sp,48
    80004984:	00050913          	mv	s2,a0
        int i = 0;
    80004988:	00000993          	li	s3,0
    8000498c:	0100006f          	j	8000499c <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004990:	00a00513          	li	a0,10
    80004994:	ffffe097          	auipc	ra,0xffffe
    80004998:	100080e7          	jalr	256(ra) # 80002a94 <_ZN7Console4putcEc>
        while (!threadEnd) {
    8000499c:	00007797          	auipc	a5,0x7
    800049a0:	4c47a783          	lw	a5,1220(a5) # 8000be60 <_ZL9threadEnd>
    800049a4:	04079a63          	bnez	a5,800049f8 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800049a8:	02093783          	ld	a5,32(s2)
    800049ac:	0087b503          	ld	a0,8(a5)
    800049b0:	00001097          	auipc	ra,0x1
    800049b4:	638080e7          	jalr	1592(ra) # 80005fe8 <_ZN9BufferCPP3getEv>
            i++;
    800049b8:	0019849b          	addiw	s1,s3,1
    800049bc:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800049c0:	0ff57513          	andi	a0,a0,255
    800049c4:	ffffe097          	auipc	ra,0xffffe
    800049c8:	0d0080e7          	jalr	208(ra) # 80002a94 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800049cc:	05000793          	li	a5,80
    800049d0:	02f4e4bb          	remw	s1,s1,a5
    800049d4:	fc0494e3          	bnez	s1,8000499c <_ZN8Consumer3runEv+0x34>
    800049d8:	fb9ff06f          	j	80004990 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800049dc:	02093783          	ld	a5,32(s2)
    800049e0:	0087b503          	ld	a0,8(a5)
    800049e4:	00001097          	auipc	ra,0x1
    800049e8:	604080e7          	jalr	1540(ra) # 80005fe8 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800049ec:	0ff57513          	andi	a0,a0,255
    800049f0:	ffffe097          	auipc	ra,0xffffe
    800049f4:	0a4080e7          	jalr	164(ra) # 80002a94 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800049f8:	02093783          	ld	a5,32(s2)
    800049fc:	0087b503          	ld	a0,8(a5)
    80004a00:	00001097          	auipc	ra,0x1
    80004a04:	674080e7          	jalr	1652(ra) # 80006074 <_ZN9BufferCPP6getCntEv>
    80004a08:	fca04ae3          	bgtz	a0,800049dc <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004a0c:	02093783          	ld	a5,32(s2)
    80004a10:	0107b503          	ld	a0,16(a5)
    80004a14:	ffffe097          	auipc	ra,0xffffe
    80004a18:	fc4080e7          	jalr	-60(ra) # 800029d8 <_ZN9Semaphore6signalEv>
    }
    80004a1c:	02813083          	ld	ra,40(sp)
    80004a20:	02013403          	ld	s0,32(sp)
    80004a24:	01813483          	ld	s1,24(sp)
    80004a28:	01013903          	ld	s2,16(sp)
    80004a2c:	00813983          	ld	s3,8(sp)
    80004a30:	03010113          	addi	sp,sp,48
    80004a34:	00008067          	ret

0000000080004a38 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004a38:	ff010113          	addi	sp,sp,-16
    80004a3c:	00113423          	sd	ra,8(sp)
    80004a40:	00813023          	sd	s0,0(sp)
    80004a44:	01010413          	addi	s0,sp,16
    80004a48:	00007797          	auipc	a5,0x7
    80004a4c:	28078793          	addi	a5,a5,640 # 8000bcc8 <_ZTV8Consumer+0x10>
    80004a50:	00f53023          	sd	a5,0(a0)
    80004a54:	ffffe097          	auipc	ra,0xffffe
    80004a58:	cf8080e7          	jalr	-776(ra) # 8000274c <_ZN6ThreadD1Ev>
    80004a5c:	00813083          	ld	ra,8(sp)
    80004a60:	00013403          	ld	s0,0(sp)
    80004a64:	01010113          	addi	sp,sp,16
    80004a68:	00008067          	ret

0000000080004a6c <_ZN8ConsumerD0Ev>:
    80004a6c:	fe010113          	addi	sp,sp,-32
    80004a70:	00113c23          	sd	ra,24(sp)
    80004a74:	00813823          	sd	s0,16(sp)
    80004a78:	00913423          	sd	s1,8(sp)
    80004a7c:	02010413          	addi	s0,sp,32
    80004a80:	00050493          	mv	s1,a0
    80004a84:	00007797          	auipc	a5,0x7
    80004a88:	24478793          	addi	a5,a5,580 # 8000bcc8 <_ZTV8Consumer+0x10>
    80004a8c:	00f53023          	sd	a5,0(a0)
    80004a90:	ffffe097          	auipc	ra,0xffffe
    80004a94:	cbc080e7          	jalr	-836(ra) # 8000274c <_ZN6ThreadD1Ev>
    80004a98:	00048513          	mv	a0,s1
    80004a9c:	ffffe097          	auipc	ra,0xffffe
    80004aa0:	b4c080e7          	jalr	-1204(ra) # 800025e8 <_ZdlPv>
    80004aa4:	01813083          	ld	ra,24(sp)
    80004aa8:	01013403          	ld	s0,16(sp)
    80004aac:	00813483          	ld	s1,8(sp)
    80004ab0:	02010113          	addi	sp,sp,32
    80004ab4:	00008067          	ret

0000000080004ab8 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004ab8:	ff010113          	addi	sp,sp,-16
    80004abc:	00113423          	sd	ra,8(sp)
    80004ac0:	00813023          	sd	s0,0(sp)
    80004ac4:	01010413          	addi	s0,sp,16
    80004ac8:	00007797          	auipc	a5,0x7
    80004acc:	1b078793          	addi	a5,a5,432 # 8000bc78 <_ZTV16ProducerKeyborad+0x10>
    80004ad0:	00f53023          	sd	a5,0(a0)
    80004ad4:	ffffe097          	auipc	ra,0xffffe
    80004ad8:	c78080e7          	jalr	-904(ra) # 8000274c <_ZN6ThreadD1Ev>
    80004adc:	00813083          	ld	ra,8(sp)
    80004ae0:	00013403          	ld	s0,0(sp)
    80004ae4:	01010113          	addi	sp,sp,16
    80004ae8:	00008067          	ret

0000000080004aec <_ZN16ProducerKeyboradD0Ev>:
    80004aec:	fe010113          	addi	sp,sp,-32
    80004af0:	00113c23          	sd	ra,24(sp)
    80004af4:	00813823          	sd	s0,16(sp)
    80004af8:	00913423          	sd	s1,8(sp)
    80004afc:	02010413          	addi	s0,sp,32
    80004b00:	00050493          	mv	s1,a0
    80004b04:	00007797          	auipc	a5,0x7
    80004b08:	17478793          	addi	a5,a5,372 # 8000bc78 <_ZTV16ProducerKeyborad+0x10>
    80004b0c:	00f53023          	sd	a5,0(a0)
    80004b10:	ffffe097          	auipc	ra,0xffffe
    80004b14:	c3c080e7          	jalr	-964(ra) # 8000274c <_ZN6ThreadD1Ev>
    80004b18:	00048513          	mv	a0,s1
    80004b1c:	ffffe097          	auipc	ra,0xffffe
    80004b20:	acc080e7          	jalr	-1332(ra) # 800025e8 <_ZdlPv>
    80004b24:	01813083          	ld	ra,24(sp)
    80004b28:	01013403          	ld	s0,16(sp)
    80004b2c:	00813483          	ld	s1,8(sp)
    80004b30:	02010113          	addi	sp,sp,32
    80004b34:	00008067          	ret

0000000080004b38 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004b38:	ff010113          	addi	sp,sp,-16
    80004b3c:	00113423          	sd	ra,8(sp)
    80004b40:	00813023          	sd	s0,0(sp)
    80004b44:	01010413          	addi	s0,sp,16
    80004b48:	00007797          	auipc	a5,0x7
    80004b4c:	15878793          	addi	a5,a5,344 # 8000bca0 <_ZTV8Producer+0x10>
    80004b50:	00f53023          	sd	a5,0(a0)
    80004b54:	ffffe097          	auipc	ra,0xffffe
    80004b58:	bf8080e7          	jalr	-1032(ra) # 8000274c <_ZN6ThreadD1Ev>
    80004b5c:	00813083          	ld	ra,8(sp)
    80004b60:	00013403          	ld	s0,0(sp)
    80004b64:	01010113          	addi	sp,sp,16
    80004b68:	00008067          	ret

0000000080004b6c <_ZN8ProducerD0Ev>:
    80004b6c:	fe010113          	addi	sp,sp,-32
    80004b70:	00113c23          	sd	ra,24(sp)
    80004b74:	00813823          	sd	s0,16(sp)
    80004b78:	00913423          	sd	s1,8(sp)
    80004b7c:	02010413          	addi	s0,sp,32
    80004b80:	00050493          	mv	s1,a0
    80004b84:	00007797          	auipc	a5,0x7
    80004b88:	11c78793          	addi	a5,a5,284 # 8000bca0 <_ZTV8Producer+0x10>
    80004b8c:	00f53023          	sd	a5,0(a0)
    80004b90:	ffffe097          	auipc	ra,0xffffe
    80004b94:	bbc080e7          	jalr	-1092(ra) # 8000274c <_ZN6ThreadD1Ev>
    80004b98:	00048513          	mv	a0,s1
    80004b9c:	ffffe097          	auipc	ra,0xffffe
    80004ba0:	a4c080e7          	jalr	-1460(ra) # 800025e8 <_ZdlPv>
    80004ba4:	01813083          	ld	ra,24(sp)
    80004ba8:	01013403          	ld	s0,16(sp)
    80004bac:	00813483          	ld	s1,8(sp)
    80004bb0:	02010113          	addi	sp,sp,32
    80004bb4:	00008067          	ret

0000000080004bb8 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004bb8:	fe010113          	addi	sp,sp,-32
    80004bbc:	00113c23          	sd	ra,24(sp)
    80004bc0:	00813823          	sd	s0,16(sp)
    80004bc4:	00913423          	sd	s1,8(sp)
    80004bc8:	02010413          	addi	s0,sp,32
    80004bcc:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004bd0:	ffffd097          	auipc	ra,0xffffd
    80004bd4:	9fc080e7          	jalr	-1540(ra) # 800015cc <_Z4getcv>
    80004bd8:	0005059b          	sext.w	a1,a0
    80004bdc:	01b00793          	li	a5,27
    80004be0:	00f58c63          	beq	a1,a5,80004bf8 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004be4:	0204b783          	ld	a5,32(s1)
    80004be8:	0087b503          	ld	a0,8(a5)
    80004bec:	00001097          	auipc	ra,0x1
    80004bf0:	36c080e7          	jalr	876(ra) # 80005f58 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004bf4:	fddff06f          	j	80004bd0 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004bf8:	00100793          	li	a5,1
    80004bfc:	00007717          	auipc	a4,0x7
    80004c00:	26f72223          	sw	a5,612(a4) # 8000be60 <_ZL9threadEnd>
        td->buffer->put('!');
    80004c04:	0204b783          	ld	a5,32(s1)
    80004c08:	02100593          	li	a1,33
    80004c0c:	0087b503          	ld	a0,8(a5)
    80004c10:	00001097          	auipc	ra,0x1
    80004c14:	348080e7          	jalr	840(ra) # 80005f58 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004c18:	0204b783          	ld	a5,32(s1)
    80004c1c:	0107b503          	ld	a0,16(a5)
    80004c20:	ffffe097          	auipc	ra,0xffffe
    80004c24:	db8080e7          	jalr	-584(ra) # 800029d8 <_ZN9Semaphore6signalEv>
    }
    80004c28:	01813083          	ld	ra,24(sp)
    80004c2c:	01013403          	ld	s0,16(sp)
    80004c30:	00813483          	ld	s1,8(sp)
    80004c34:	02010113          	addi	sp,sp,32
    80004c38:	00008067          	ret

0000000080004c3c <_ZN8Producer3runEv>:
    void run() override {
    80004c3c:	fe010113          	addi	sp,sp,-32
    80004c40:	00113c23          	sd	ra,24(sp)
    80004c44:	00813823          	sd	s0,16(sp)
    80004c48:	00913423          	sd	s1,8(sp)
    80004c4c:	01213023          	sd	s2,0(sp)
    80004c50:	02010413          	addi	s0,sp,32
    80004c54:	00050493          	mv	s1,a0
        int i = 0;
    80004c58:	00000913          	li	s2,0
        while (!threadEnd) {
    80004c5c:	00007797          	auipc	a5,0x7
    80004c60:	2047a783          	lw	a5,516(a5) # 8000be60 <_ZL9threadEnd>
    80004c64:	04079263          	bnez	a5,80004ca8 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004c68:	0204b783          	ld	a5,32(s1)
    80004c6c:	0007a583          	lw	a1,0(a5)
    80004c70:	0305859b          	addiw	a1,a1,48
    80004c74:	0087b503          	ld	a0,8(a5)
    80004c78:	00001097          	auipc	ra,0x1
    80004c7c:	2e0080e7          	jalr	736(ra) # 80005f58 <_ZN9BufferCPP3putEi>
            i++;
    80004c80:	0019071b          	addiw	a4,s2,1
    80004c84:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004c88:	0204b783          	ld	a5,32(s1)
    80004c8c:	0007a783          	lw	a5,0(a5)
    80004c90:	00e787bb          	addw	a5,a5,a4
    80004c94:	00500513          	li	a0,5
    80004c98:	02a7e53b          	remw	a0,a5,a0
    80004c9c:	ffffe097          	auipc	ra,0xffffe
    80004ca0:	c80080e7          	jalr	-896(ra) # 8000291c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004ca4:	fb9ff06f          	j	80004c5c <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004ca8:	0204b783          	ld	a5,32(s1)
    80004cac:	0107b503          	ld	a0,16(a5)
    80004cb0:	ffffe097          	auipc	ra,0xffffe
    80004cb4:	d28080e7          	jalr	-728(ra) # 800029d8 <_ZN9Semaphore6signalEv>
    }
    80004cb8:	01813083          	ld	ra,24(sp)
    80004cbc:	01013403          	ld	s0,16(sp)
    80004cc0:	00813483          	ld	s1,8(sp)
    80004cc4:	00013903          	ld	s2,0(sp)
    80004cc8:	02010113          	addi	sp,sp,32
    80004ccc:	00008067          	ret

0000000080004cd0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004cd0:	fe010113          	addi	sp,sp,-32
    80004cd4:	00113c23          	sd	ra,24(sp)
    80004cd8:	00813823          	sd	s0,16(sp)
    80004cdc:	00913423          	sd	s1,8(sp)
    80004ce0:	01213023          	sd	s2,0(sp)
    80004ce4:	02010413          	addi	s0,sp,32
    80004ce8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004cec:	00100793          	li	a5,1
    80004cf0:	02a7f863          	bgeu	a5,a0,80004d20 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004cf4:	00a00793          	li	a5,10
    80004cf8:	02f577b3          	remu	a5,a0,a5
    80004cfc:	02078e63          	beqz	a5,80004d38 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004d00:	fff48513          	addi	a0,s1,-1
    80004d04:	00000097          	auipc	ra,0x0
    80004d08:	fcc080e7          	jalr	-52(ra) # 80004cd0 <_ZL9fibonaccim>
    80004d0c:	00050913          	mv	s2,a0
    80004d10:	ffe48513          	addi	a0,s1,-2
    80004d14:	00000097          	auipc	ra,0x0
    80004d18:	fbc080e7          	jalr	-68(ra) # 80004cd0 <_ZL9fibonaccim>
    80004d1c:	00a90533          	add	a0,s2,a0
}
    80004d20:	01813083          	ld	ra,24(sp)
    80004d24:	01013403          	ld	s0,16(sp)
    80004d28:	00813483          	ld	s1,8(sp)
    80004d2c:	00013903          	ld	s2,0(sp)
    80004d30:	02010113          	addi	sp,sp,32
    80004d34:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004d38:	ffffc097          	auipc	ra,0xffffc
    80004d3c:	650080e7          	jalr	1616(ra) # 80001388 <_Z15thread_dispatchv>
    80004d40:	fc1ff06f          	j	80004d00 <_ZL9fibonaccim+0x30>

0000000080004d44 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004d44:	fe010113          	addi	sp,sp,-32
    80004d48:	00113c23          	sd	ra,24(sp)
    80004d4c:	00813823          	sd	s0,16(sp)
    80004d50:	00913423          	sd	s1,8(sp)
    80004d54:	01213023          	sd	s2,0(sp)
    80004d58:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004d5c:	00a00493          	li	s1,10
    80004d60:	0400006f          	j	80004da0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004d64:	00005517          	auipc	a0,0x5
    80004d68:	80450513          	addi	a0,a0,-2044 # 80009568 <CONSOLE_STATUS+0x558>
    80004d6c:	00001097          	auipc	ra,0x1
    80004d70:	dc8080e7          	jalr	-568(ra) # 80005b34 <_Z11printStringPKc>
    80004d74:	00000613          	li	a2,0
    80004d78:	00a00593          	li	a1,10
    80004d7c:	00048513          	mv	a0,s1
    80004d80:	00001097          	auipc	ra,0x1
    80004d84:	f64080e7          	jalr	-156(ra) # 80005ce4 <_Z8printIntiii>
    80004d88:	00004517          	auipc	a0,0x4
    80004d8c:	51850513          	addi	a0,a0,1304 # 800092a0 <CONSOLE_STATUS+0x290>
    80004d90:	00001097          	auipc	ra,0x1
    80004d94:	da4080e7          	jalr	-604(ra) # 80005b34 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004d98:	0014849b          	addiw	s1,s1,1
    80004d9c:	0ff4f493          	andi	s1,s1,255
    80004da0:	00c00793          	li	a5,12
    80004da4:	fc97f0e3          	bgeu	a5,s1,80004d64 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004da8:	00004517          	auipc	a0,0x4
    80004dac:	7c850513          	addi	a0,a0,1992 # 80009570 <CONSOLE_STATUS+0x560>
    80004db0:	00001097          	auipc	ra,0x1
    80004db4:	d84080e7          	jalr	-636(ra) # 80005b34 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004db8:	00500313          	li	t1,5
    thread_dispatch();
    80004dbc:	ffffc097          	auipc	ra,0xffffc
    80004dc0:	5cc080e7          	jalr	1484(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004dc4:	01000513          	li	a0,16
    80004dc8:	00000097          	auipc	ra,0x0
    80004dcc:	f08080e7          	jalr	-248(ra) # 80004cd0 <_ZL9fibonaccim>
    80004dd0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004dd4:	00004517          	auipc	a0,0x4
    80004dd8:	7ac50513          	addi	a0,a0,1964 # 80009580 <CONSOLE_STATUS+0x570>
    80004ddc:	00001097          	auipc	ra,0x1
    80004de0:	d58080e7          	jalr	-680(ra) # 80005b34 <_Z11printStringPKc>
    80004de4:	00000613          	li	a2,0
    80004de8:	00a00593          	li	a1,10
    80004dec:	0009051b          	sext.w	a0,s2
    80004df0:	00001097          	auipc	ra,0x1
    80004df4:	ef4080e7          	jalr	-268(ra) # 80005ce4 <_Z8printIntiii>
    80004df8:	00004517          	auipc	a0,0x4
    80004dfc:	4a850513          	addi	a0,a0,1192 # 800092a0 <CONSOLE_STATUS+0x290>
    80004e00:	00001097          	auipc	ra,0x1
    80004e04:	d34080e7          	jalr	-716(ra) # 80005b34 <_Z11printStringPKc>
    80004e08:	0400006f          	j	80004e48 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004e0c:	00004517          	auipc	a0,0x4
    80004e10:	75c50513          	addi	a0,a0,1884 # 80009568 <CONSOLE_STATUS+0x558>
    80004e14:	00001097          	auipc	ra,0x1
    80004e18:	d20080e7          	jalr	-736(ra) # 80005b34 <_Z11printStringPKc>
    80004e1c:	00000613          	li	a2,0
    80004e20:	00a00593          	li	a1,10
    80004e24:	00048513          	mv	a0,s1
    80004e28:	00001097          	auipc	ra,0x1
    80004e2c:	ebc080e7          	jalr	-324(ra) # 80005ce4 <_Z8printIntiii>
    80004e30:	00004517          	auipc	a0,0x4
    80004e34:	47050513          	addi	a0,a0,1136 # 800092a0 <CONSOLE_STATUS+0x290>
    80004e38:	00001097          	auipc	ra,0x1
    80004e3c:	cfc080e7          	jalr	-772(ra) # 80005b34 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004e40:	0014849b          	addiw	s1,s1,1
    80004e44:	0ff4f493          	andi	s1,s1,255
    80004e48:	00f00793          	li	a5,15
    80004e4c:	fc97f0e3          	bgeu	a5,s1,80004e0c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004e50:	00004517          	auipc	a0,0x4
    80004e54:	74050513          	addi	a0,a0,1856 # 80009590 <CONSOLE_STATUS+0x580>
    80004e58:	00001097          	auipc	ra,0x1
    80004e5c:	cdc080e7          	jalr	-804(ra) # 80005b34 <_Z11printStringPKc>
    finishedD = true;
    80004e60:	00100793          	li	a5,1
    80004e64:	00007717          	auipc	a4,0x7
    80004e68:	00f70623          	sb	a5,12(a4) # 8000be70 <_ZL9finishedD>
    thread_dispatch();
    80004e6c:	ffffc097          	auipc	ra,0xffffc
    80004e70:	51c080e7          	jalr	1308(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004e74:	01813083          	ld	ra,24(sp)
    80004e78:	01013403          	ld	s0,16(sp)
    80004e7c:	00813483          	ld	s1,8(sp)
    80004e80:	00013903          	ld	s2,0(sp)
    80004e84:	02010113          	addi	sp,sp,32
    80004e88:	00008067          	ret

0000000080004e8c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004e8c:	fe010113          	addi	sp,sp,-32
    80004e90:	00113c23          	sd	ra,24(sp)
    80004e94:	00813823          	sd	s0,16(sp)
    80004e98:	00913423          	sd	s1,8(sp)
    80004e9c:	01213023          	sd	s2,0(sp)
    80004ea0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004ea4:	00000493          	li	s1,0
    80004ea8:	0400006f          	j	80004ee8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004eac:	00004517          	auipc	a0,0x4
    80004eb0:	54c50513          	addi	a0,a0,1356 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80004eb4:	00001097          	auipc	ra,0x1
    80004eb8:	c80080e7          	jalr	-896(ra) # 80005b34 <_Z11printStringPKc>
    80004ebc:	00000613          	li	a2,0
    80004ec0:	00a00593          	li	a1,10
    80004ec4:	00048513          	mv	a0,s1
    80004ec8:	00001097          	auipc	ra,0x1
    80004ecc:	e1c080e7          	jalr	-484(ra) # 80005ce4 <_Z8printIntiii>
    80004ed0:	00004517          	auipc	a0,0x4
    80004ed4:	3d050513          	addi	a0,a0,976 # 800092a0 <CONSOLE_STATUS+0x290>
    80004ed8:	00001097          	auipc	ra,0x1
    80004edc:	c5c080e7          	jalr	-932(ra) # 80005b34 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004ee0:	0014849b          	addiw	s1,s1,1
    80004ee4:	0ff4f493          	andi	s1,s1,255
    80004ee8:	00200793          	li	a5,2
    80004eec:	fc97f0e3          	bgeu	a5,s1,80004eac <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004ef0:	00004517          	auipc	a0,0x4
    80004ef4:	51050513          	addi	a0,a0,1296 # 80009400 <CONSOLE_STATUS+0x3f0>
    80004ef8:	00001097          	auipc	ra,0x1
    80004efc:	c3c080e7          	jalr	-964(ra) # 80005b34 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004f00:	00700313          	li	t1,7
    thread_dispatch();
    80004f04:	ffffc097          	auipc	ra,0xffffc
    80004f08:	484080e7          	jalr	1156(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004f0c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004f10:	00004517          	auipc	a0,0x4
    80004f14:	50050513          	addi	a0,a0,1280 # 80009410 <CONSOLE_STATUS+0x400>
    80004f18:	00001097          	auipc	ra,0x1
    80004f1c:	c1c080e7          	jalr	-996(ra) # 80005b34 <_Z11printStringPKc>
    80004f20:	00000613          	li	a2,0
    80004f24:	00a00593          	li	a1,10
    80004f28:	0009051b          	sext.w	a0,s2
    80004f2c:	00001097          	auipc	ra,0x1
    80004f30:	db8080e7          	jalr	-584(ra) # 80005ce4 <_Z8printIntiii>
    80004f34:	00004517          	auipc	a0,0x4
    80004f38:	36c50513          	addi	a0,a0,876 # 800092a0 <CONSOLE_STATUS+0x290>
    80004f3c:	00001097          	auipc	ra,0x1
    80004f40:	bf8080e7          	jalr	-1032(ra) # 80005b34 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004f44:	00c00513          	li	a0,12
    80004f48:	00000097          	auipc	ra,0x0
    80004f4c:	d88080e7          	jalr	-632(ra) # 80004cd0 <_ZL9fibonaccim>
    80004f50:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004f54:	00004517          	auipc	a0,0x4
    80004f58:	4c450513          	addi	a0,a0,1220 # 80009418 <CONSOLE_STATUS+0x408>
    80004f5c:	00001097          	auipc	ra,0x1
    80004f60:	bd8080e7          	jalr	-1064(ra) # 80005b34 <_Z11printStringPKc>
    80004f64:	00000613          	li	a2,0
    80004f68:	00a00593          	li	a1,10
    80004f6c:	0009051b          	sext.w	a0,s2
    80004f70:	00001097          	auipc	ra,0x1
    80004f74:	d74080e7          	jalr	-652(ra) # 80005ce4 <_Z8printIntiii>
    80004f78:	00004517          	auipc	a0,0x4
    80004f7c:	32850513          	addi	a0,a0,808 # 800092a0 <CONSOLE_STATUS+0x290>
    80004f80:	00001097          	auipc	ra,0x1
    80004f84:	bb4080e7          	jalr	-1100(ra) # 80005b34 <_Z11printStringPKc>
    80004f88:	0400006f          	j	80004fc8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004f8c:	00004517          	auipc	a0,0x4
    80004f90:	46c50513          	addi	a0,a0,1132 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80004f94:	00001097          	auipc	ra,0x1
    80004f98:	ba0080e7          	jalr	-1120(ra) # 80005b34 <_Z11printStringPKc>
    80004f9c:	00000613          	li	a2,0
    80004fa0:	00a00593          	li	a1,10
    80004fa4:	00048513          	mv	a0,s1
    80004fa8:	00001097          	auipc	ra,0x1
    80004fac:	d3c080e7          	jalr	-708(ra) # 80005ce4 <_Z8printIntiii>
    80004fb0:	00004517          	auipc	a0,0x4
    80004fb4:	2f050513          	addi	a0,a0,752 # 800092a0 <CONSOLE_STATUS+0x290>
    80004fb8:	00001097          	auipc	ra,0x1
    80004fbc:	b7c080e7          	jalr	-1156(ra) # 80005b34 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004fc0:	0014849b          	addiw	s1,s1,1
    80004fc4:	0ff4f493          	andi	s1,s1,255
    80004fc8:	00500793          	li	a5,5
    80004fcc:	fc97f0e3          	bgeu	a5,s1,80004f8c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004fd0:	00004517          	auipc	a0,0x4
    80004fd4:	40050513          	addi	a0,a0,1024 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80004fd8:	00001097          	auipc	ra,0x1
    80004fdc:	b5c080e7          	jalr	-1188(ra) # 80005b34 <_Z11printStringPKc>
    finishedC = true;
    80004fe0:	00100793          	li	a5,1
    80004fe4:	00007717          	auipc	a4,0x7
    80004fe8:	e8f706a3          	sb	a5,-371(a4) # 8000be71 <_ZL9finishedC>
    thread_dispatch();
    80004fec:	ffffc097          	auipc	ra,0xffffc
    80004ff0:	39c080e7          	jalr	924(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004ff4:	01813083          	ld	ra,24(sp)
    80004ff8:	01013403          	ld	s0,16(sp)
    80004ffc:	00813483          	ld	s1,8(sp)
    80005000:	00013903          	ld	s2,0(sp)
    80005004:	02010113          	addi	sp,sp,32
    80005008:	00008067          	ret

000000008000500c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000500c:	fe010113          	addi	sp,sp,-32
    80005010:	00113c23          	sd	ra,24(sp)
    80005014:	00813823          	sd	s0,16(sp)
    80005018:	00913423          	sd	s1,8(sp)
    8000501c:	01213023          	sd	s2,0(sp)
    80005020:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005024:	00000913          	li	s2,0
    80005028:	0380006f          	j	80005060 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    8000502c:	ffffc097          	auipc	ra,0xffffc
    80005030:	35c080e7          	jalr	860(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005034:	00148493          	addi	s1,s1,1
    80005038:	000027b7          	lui	a5,0x2
    8000503c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005040:	0097ee63          	bltu	a5,s1,8000505c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005044:	00000713          	li	a4,0
    80005048:	000077b7          	lui	a5,0x7
    8000504c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005050:	fce7eee3          	bltu	a5,a4,8000502c <_ZL11workerBodyBPv+0x20>
    80005054:	00170713          	addi	a4,a4,1
    80005058:	ff1ff06f          	j	80005048 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000505c:	00190913          	addi	s2,s2,1
    80005060:	00f00793          	li	a5,15
    80005064:	0527e063          	bltu	a5,s2,800050a4 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005068:	00004517          	auipc	a0,0x4
    8000506c:	37850513          	addi	a0,a0,888 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80005070:	00001097          	auipc	ra,0x1
    80005074:	ac4080e7          	jalr	-1340(ra) # 80005b34 <_Z11printStringPKc>
    80005078:	00000613          	li	a2,0
    8000507c:	00a00593          	li	a1,10
    80005080:	0009051b          	sext.w	a0,s2
    80005084:	00001097          	auipc	ra,0x1
    80005088:	c60080e7          	jalr	-928(ra) # 80005ce4 <_Z8printIntiii>
    8000508c:	00004517          	auipc	a0,0x4
    80005090:	21450513          	addi	a0,a0,532 # 800092a0 <CONSOLE_STATUS+0x290>
    80005094:	00001097          	auipc	ra,0x1
    80005098:	aa0080e7          	jalr	-1376(ra) # 80005b34 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000509c:	00000493          	li	s1,0
    800050a0:	f99ff06f          	j	80005038 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800050a4:	00004517          	auipc	a0,0x4
    800050a8:	34450513          	addi	a0,a0,836 # 800093e8 <CONSOLE_STATUS+0x3d8>
    800050ac:	00001097          	auipc	ra,0x1
    800050b0:	a88080e7          	jalr	-1400(ra) # 80005b34 <_Z11printStringPKc>
    finishedB = true;
    800050b4:	00100793          	li	a5,1
    800050b8:	00007717          	auipc	a4,0x7
    800050bc:	daf70d23          	sb	a5,-582(a4) # 8000be72 <_ZL9finishedB>
    thread_dispatch();
    800050c0:	ffffc097          	auipc	ra,0xffffc
    800050c4:	2c8080e7          	jalr	712(ra) # 80001388 <_Z15thread_dispatchv>
}
    800050c8:	01813083          	ld	ra,24(sp)
    800050cc:	01013403          	ld	s0,16(sp)
    800050d0:	00813483          	ld	s1,8(sp)
    800050d4:	00013903          	ld	s2,0(sp)
    800050d8:	02010113          	addi	sp,sp,32
    800050dc:	00008067          	ret

00000000800050e0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800050e0:	fe010113          	addi	sp,sp,-32
    800050e4:	00113c23          	sd	ra,24(sp)
    800050e8:	00813823          	sd	s0,16(sp)
    800050ec:	00913423          	sd	s1,8(sp)
    800050f0:	01213023          	sd	s2,0(sp)
    800050f4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800050f8:	00000913          	li	s2,0
    800050fc:	0380006f          	j	80005134 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005100:	ffffc097          	auipc	ra,0xffffc
    80005104:	288080e7          	jalr	648(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005108:	00148493          	addi	s1,s1,1
    8000510c:	000027b7          	lui	a5,0x2
    80005110:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005114:	0097ee63          	bltu	a5,s1,80005130 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005118:	00000713          	li	a4,0
    8000511c:	000077b7          	lui	a5,0x7
    80005120:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005124:	fce7eee3          	bltu	a5,a4,80005100 <_ZL11workerBodyAPv+0x20>
    80005128:	00170713          	addi	a4,a4,1
    8000512c:	ff1ff06f          	j	8000511c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005130:	00190913          	addi	s2,s2,1
    80005134:	00900793          	li	a5,9
    80005138:	0527e063          	bltu	a5,s2,80005178 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000513c:	00004517          	auipc	a0,0x4
    80005140:	28c50513          	addi	a0,a0,652 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80005144:	00001097          	auipc	ra,0x1
    80005148:	9f0080e7          	jalr	-1552(ra) # 80005b34 <_Z11printStringPKc>
    8000514c:	00000613          	li	a2,0
    80005150:	00a00593          	li	a1,10
    80005154:	0009051b          	sext.w	a0,s2
    80005158:	00001097          	auipc	ra,0x1
    8000515c:	b8c080e7          	jalr	-1140(ra) # 80005ce4 <_Z8printIntiii>
    80005160:	00004517          	auipc	a0,0x4
    80005164:	14050513          	addi	a0,a0,320 # 800092a0 <CONSOLE_STATUS+0x290>
    80005168:	00001097          	auipc	ra,0x1
    8000516c:	9cc080e7          	jalr	-1588(ra) # 80005b34 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005170:	00000493          	li	s1,0
    80005174:	f99ff06f          	j	8000510c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005178:	00004517          	auipc	a0,0x4
    8000517c:	25850513          	addi	a0,a0,600 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80005180:	00001097          	auipc	ra,0x1
    80005184:	9b4080e7          	jalr	-1612(ra) # 80005b34 <_Z11printStringPKc>
    finishedA = true;
    80005188:	00100793          	li	a5,1
    8000518c:	00007717          	auipc	a4,0x7
    80005190:	cef703a3          	sb	a5,-793(a4) # 8000be73 <_ZL9finishedA>
}
    80005194:	01813083          	ld	ra,24(sp)
    80005198:	01013403          	ld	s0,16(sp)
    8000519c:	00813483          	ld	s1,8(sp)
    800051a0:	00013903          	ld	s2,0(sp)
    800051a4:	02010113          	addi	sp,sp,32
    800051a8:	00008067          	ret

00000000800051ac <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800051ac:	fd010113          	addi	sp,sp,-48
    800051b0:	02113423          	sd	ra,40(sp)
    800051b4:	02813023          	sd	s0,32(sp)
    800051b8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800051bc:	00000613          	li	a2,0
    800051c0:	00000597          	auipc	a1,0x0
    800051c4:	f2058593          	addi	a1,a1,-224 # 800050e0 <_ZL11workerBodyAPv>
    800051c8:	fd040513          	addi	a0,s0,-48
    800051cc:	ffffc097          	auipc	ra,0xffffc
    800051d0:	0b8080e7          	jalr	184(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800051d4:	00004517          	auipc	a0,0x4
    800051d8:	26450513          	addi	a0,a0,612 # 80009438 <CONSOLE_STATUS+0x428>
    800051dc:	00001097          	auipc	ra,0x1
    800051e0:	958080e7          	jalr	-1704(ra) # 80005b34 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800051e4:	00000613          	li	a2,0
    800051e8:	00000597          	auipc	a1,0x0
    800051ec:	e2458593          	addi	a1,a1,-476 # 8000500c <_ZL11workerBodyBPv>
    800051f0:	fd840513          	addi	a0,s0,-40
    800051f4:	ffffc097          	auipc	ra,0xffffc
    800051f8:	090080e7          	jalr	144(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800051fc:	00004517          	auipc	a0,0x4
    80005200:	25450513          	addi	a0,a0,596 # 80009450 <CONSOLE_STATUS+0x440>
    80005204:	00001097          	auipc	ra,0x1
    80005208:	930080e7          	jalr	-1744(ra) # 80005b34 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000520c:	00000613          	li	a2,0
    80005210:	00000597          	auipc	a1,0x0
    80005214:	c7c58593          	addi	a1,a1,-900 # 80004e8c <_ZL11workerBodyCPv>
    80005218:	fe040513          	addi	a0,s0,-32
    8000521c:	ffffc097          	auipc	ra,0xffffc
    80005220:	068080e7          	jalr	104(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80005224:	00004517          	auipc	a0,0x4
    80005228:	24450513          	addi	a0,a0,580 # 80009468 <CONSOLE_STATUS+0x458>
    8000522c:	00001097          	auipc	ra,0x1
    80005230:	908080e7          	jalr	-1784(ra) # 80005b34 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005234:	00000613          	li	a2,0
    80005238:	00000597          	auipc	a1,0x0
    8000523c:	b0c58593          	addi	a1,a1,-1268 # 80004d44 <_ZL11workerBodyDPv>
    80005240:	fe840513          	addi	a0,s0,-24
    80005244:	ffffc097          	auipc	ra,0xffffc
    80005248:	040080e7          	jalr	64(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    8000524c:	00004517          	auipc	a0,0x4
    80005250:	35450513          	addi	a0,a0,852 # 800095a0 <CONSOLE_STATUS+0x590>
    80005254:	00001097          	auipc	ra,0x1
    80005258:	8e0080e7          	jalr	-1824(ra) # 80005b34 <_Z11printStringPKc>
    8000525c:	00c0006f          	j	80005268 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005260:	ffffc097          	auipc	ra,0xffffc
    80005264:	128080e7          	jalr	296(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005268:	00007797          	auipc	a5,0x7
    8000526c:	c0b7c783          	lbu	a5,-1013(a5) # 8000be73 <_ZL9finishedA>
    80005270:	fe0788e3          	beqz	a5,80005260 <_Z18Threads_C_API_testv+0xb4>
    80005274:	00007797          	auipc	a5,0x7
    80005278:	bfe7c783          	lbu	a5,-1026(a5) # 8000be72 <_ZL9finishedB>
    8000527c:	fe0782e3          	beqz	a5,80005260 <_Z18Threads_C_API_testv+0xb4>
    80005280:	00007797          	auipc	a5,0x7
    80005284:	bf17c783          	lbu	a5,-1039(a5) # 8000be71 <_ZL9finishedC>
    80005288:	fc078ce3          	beqz	a5,80005260 <_Z18Threads_C_API_testv+0xb4>
    8000528c:	00007797          	auipc	a5,0x7
    80005290:	be47c783          	lbu	a5,-1052(a5) # 8000be70 <_ZL9finishedD>
    80005294:	fc0786e3          	beqz	a5,80005260 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005298:	02813083          	ld	ra,40(sp)
    8000529c:	02013403          	ld	s0,32(sp)
    800052a0:	03010113          	addi	sp,sp,48
    800052a4:	00008067          	ret

00000000800052a8 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800052a8:	fd010113          	addi	sp,sp,-48
    800052ac:	02113423          	sd	ra,40(sp)
    800052b0:	02813023          	sd	s0,32(sp)
    800052b4:	00913c23          	sd	s1,24(sp)
    800052b8:	01213823          	sd	s2,16(sp)
    800052bc:	01313423          	sd	s3,8(sp)
    800052c0:	03010413          	addi	s0,sp,48
    800052c4:	00050993          	mv	s3,a0
    800052c8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800052cc:	00000913          	li	s2,0
    800052d0:	00c0006f          	j	800052dc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800052d4:	ffffd097          	auipc	ra,0xffffd
    800052d8:	620080e7          	jalr	1568(ra) # 800028f4 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800052dc:	ffffc097          	auipc	ra,0xffffc
    800052e0:	2f0080e7          	jalr	752(ra) # 800015cc <_Z4getcv>
    800052e4:	0005059b          	sext.w	a1,a0
    800052e8:	01b00793          	li	a5,27
    800052ec:	02f58a63          	beq	a1,a5,80005320 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800052f0:	0084b503          	ld	a0,8(s1)
    800052f4:	00001097          	auipc	ra,0x1
    800052f8:	c64080e7          	jalr	-924(ra) # 80005f58 <_ZN9BufferCPP3putEi>
        i++;
    800052fc:	0019071b          	addiw	a4,s2,1
    80005300:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005304:	0004a683          	lw	a3,0(s1)
    80005308:	0026979b          	slliw	a5,a3,0x2
    8000530c:	00d787bb          	addw	a5,a5,a3
    80005310:	0017979b          	slliw	a5,a5,0x1
    80005314:	02f767bb          	remw	a5,a4,a5
    80005318:	fc0792e3          	bnez	a5,800052dc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    8000531c:	fb9ff06f          	j	800052d4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005320:	00100793          	li	a5,1
    80005324:	00007717          	auipc	a4,0x7
    80005328:	b4f72a23          	sw	a5,-1196(a4) # 8000be78 <_ZL9threadEnd>
    td->buffer->put('!');
    8000532c:	0209b783          	ld	a5,32(s3)
    80005330:	02100593          	li	a1,33
    80005334:	0087b503          	ld	a0,8(a5)
    80005338:	00001097          	auipc	ra,0x1
    8000533c:	c20080e7          	jalr	-992(ra) # 80005f58 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005340:	0104b503          	ld	a0,16(s1)
    80005344:	ffffd097          	auipc	ra,0xffffd
    80005348:	694080e7          	jalr	1684(ra) # 800029d8 <_ZN9Semaphore6signalEv>
}
    8000534c:	02813083          	ld	ra,40(sp)
    80005350:	02013403          	ld	s0,32(sp)
    80005354:	01813483          	ld	s1,24(sp)
    80005358:	01013903          	ld	s2,16(sp)
    8000535c:	00813983          	ld	s3,8(sp)
    80005360:	03010113          	addi	sp,sp,48
    80005364:	00008067          	ret

0000000080005368 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005368:	fe010113          	addi	sp,sp,-32
    8000536c:	00113c23          	sd	ra,24(sp)
    80005370:	00813823          	sd	s0,16(sp)
    80005374:	00913423          	sd	s1,8(sp)
    80005378:	01213023          	sd	s2,0(sp)
    8000537c:	02010413          	addi	s0,sp,32
    80005380:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005384:	00000913          	li	s2,0
    80005388:	00c0006f          	j	80005394 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000538c:	ffffd097          	auipc	ra,0xffffd
    80005390:	568080e7          	jalr	1384(ra) # 800028f4 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005394:	00007797          	auipc	a5,0x7
    80005398:	ae47a783          	lw	a5,-1308(a5) # 8000be78 <_ZL9threadEnd>
    8000539c:	02079e63          	bnez	a5,800053d8 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800053a0:	0004a583          	lw	a1,0(s1)
    800053a4:	0305859b          	addiw	a1,a1,48
    800053a8:	0084b503          	ld	a0,8(s1)
    800053ac:	00001097          	auipc	ra,0x1
    800053b0:	bac080e7          	jalr	-1108(ra) # 80005f58 <_ZN9BufferCPP3putEi>
        i++;
    800053b4:	0019071b          	addiw	a4,s2,1
    800053b8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800053bc:	0004a683          	lw	a3,0(s1)
    800053c0:	0026979b          	slliw	a5,a3,0x2
    800053c4:	00d787bb          	addw	a5,a5,a3
    800053c8:	0017979b          	slliw	a5,a5,0x1
    800053cc:	02f767bb          	remw	a5,a4,a5
    800053d0:	fc0792e3          	bnez	a5,80005394 <_ZN12ProducerSync8producerEPv+0x2c>
    800053d4:	fb9ff06f          	j	8000538c <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800053d8:	0104b503          	ld	a0,16(s1)
    800053dc:	ffffd097          	auipc	ra,0xffffd
    800053e0:	5fc080e7          	jalr	1532(ra) # 800029d8 <_ZN9Semaphore6signalEv>
}
    800053e4:	01813083          	ld	ra,24(sp)
    800053e8:	01013403          	ld	s0,16(sp)
    800053ec:	00813483          	ld	s1,8(sp)
    800053f0:	00013903          	ld	s2,0(sp)
    800053f4:	02010113          	addi	sp,sp,32
    800053f8:	00008067          	ret

00000000800053fc <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800053fc:	fd010113          	addi	sp,sp,-48
    80005400:	02113423          	sd	ra,40(sp)
    80005404:	02813023          	sd	s0,32(sp)
    80005408:	00913c23          	sd	s1,24(sp)
    8000540c:	01213823          	sd	s2,16(sp)
    80005410:	01313423          	sd	s3,8(sp)
    80005414:	01413023          	sd	s4,0(sp)
    80005418:	03010413          	addi	s0,sp,48
    8000541c:	00050993          	mv	s3,a0
    80005420:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005424:	00000a13          	li	s4,0
    80005428:	01c0006f          	j	80005444 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    8000542c:	ffffd097          	auipc	ra,0xffffd
    80005430:	4c8080e7          	jalr	1224(ra) # 800028f4 <_ZN6Thread8dispatchEv>
    80005434:	0500006f          	j	80005484 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005438:	00a00513          	li	a0,10
    8000543c:	ffffc097          	auipc	ra,0xffffc
    80005440:	1d0080e7          	jalr	464(ra) # 8000160c <_Z4putcc>
    while (!threadEnd) {
    80005444:	00007797          	auipc	a5,0x7
    80005448:	a347a783          	lw	a5,-1484(a5) # 8000be78 <_ZL9threadEnd>
    8000544c:	06079263          	bnez	a5,800054b0 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005450:	00893503          	ld	a0,8(s2)
    80005454:	00001097          	auipc	ra,0x1
    80005458:	b94080e7          	jalr	-1132(ra) # 80005fe8 <_ZN9BufferCPP3getEv>
        i++;
    8000545c:	001a049b          	addiw	s1,s4,1
    80005460:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005464:	0ff57513          	andi	a0,a0,255
    80005468:	ffffc097          	auipc	ra,0xffffc
    8000546c:	1a4080e7          	jalr	420(ra) # 8000160c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005470:	00092703          	lw	a4,0(s2)
    80005474:	0027179b          	slliw	a5,a4,0x2
    80005478:	00e787bb          	addw	a5,a5,a4
    8000547c:	02f4e7bb          	remw	a5,s1,a5
    80005480:	fa0786e3          	beqz	a5,8000542c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005484:	05000793          	li	a5,80
    80005488:	02f4e4bb          	remw	s1,s1,a5
    8000548c:	fa049ce3          	bnez	s1,80005444 <_ZN12ConsumerSync8consumerEPv+0x48>
    80005490:	fa9ff06f          	j	80005438 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005494:	0209b783          	ld	a5,32(s3)
    80005498:	0087b503          	ld	a0,8(a5)
    8000549c:	00001097          	auipc	ra,0x1
    800054a0:	b4c080e7          	jalr	-1204(ra) # 80005fe8 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800054a4:	0ff57513          	andi	a0,a0,255
    800054a8:	ffffd097          	auipc	ra,0xffffd
    800054ac:	5ec080e7          	jalr	1516(ra) # 80002a94 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800054b0:	0209b783          	ld	a5,32(s3)
    800054b4:	0087b503          	ld	a0,8(a5)
    800054b8:	00001097          	auipc	ra,0x1
    800054bc:	bbc080e7          	jalr	-1092(ra) # 80006074 <_ZN9BufferCPP6getCntEv>
    800054c0:	fca04ae3          	bgtz	a0,80005494 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800054c4:	01093503          	ld	a0,16(s2)
    800054c8:	ffffd097          	auipc	ra,0xffffd
    800054cc:	510080e7          	jalr	1296(ra) # 800029d8 <_ZN9Semaphore6signalEv>
}
    800054d0:	02813083          	ld	ra,40(sp)
    800054d4:	02013403          	ld	s0,32(sp)
    800054d8:	01813483          	ld	s1,24(sp)
    800054dc:	01013903          	ld	s2,16(sp)
    800054e0:	00813983          	ld	s3,8(sp)
    800054e4:	00013a03          	ld	s4,0(sp)
    800054e8:	03010113          	addi	sp,sp,48
    800054ec:	00008067          	ret

00000000800054f0 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800054f0:	f8010113          	addi	sp,sp,-128
    800054f4:	06113c23          	sd	ra,120(sp)
    800054f8:	06813823          	sd	s0,112(sp)
    800054fc:	06913423          	sd	s1,104(sp)
    80005500:	07213023          	sd	s2,96(sp)
    80005504:	05313c23          	sd	s3,88(sp)
    80005508:	05413823          	sd	s4,80(sp)
    8000550c:	05513423          	sd	s5,72(sp)
    80005510:	05613023          	sd	s6,64(sp)
    80005514:	03713c23          	sd	s7,56(sp)
    80005518:	03813823          	sd	s8,48(sp)
    8000551c:	03913423          	sd	s9,40(sp)
    80005520:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005524:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005528:	00004517          	auipc	a0,0x4
    8000552c:	f5850513          	addi	a0,a0,-168 # 80009480 <CONSOLE_STATUS+0x470>
    80005530:	00000097          	auipc	ra,0x0
    80005534:	604080e7          	jalr	1540(ra) # 80005b34 <_Z11printStringPKc>
    getString(input, 30);
    80005538:	01e00593          	li	a1,30
    8000553c:	f8040493          	addi	s1,s0,-128
    80005540:	00048513          	mv	a0,s1
    80005544:	00000097          	auipc	ra,0x0
    80005548:	678080e7          	jalr	1656(ra) # 80005bbc <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000554c:	00048513          	mv	a0,s1
    80005550:	00000097          	auipc	ra,0x0
    80005554:	744080e7          	jalr	1860(ra) # 80005c94 <_Z11stringToIntPKc>
    80005558:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000555c:	00004517          	auipc	a0,0x4
    80005560:	f4450513          	addi	a0,a0,-188 # 800094a0 <CONSOLE_STATUS+0x490>
    80005564:	00000097          	auipc	ra,0x0
    80005568:	5d0080e7          	jalr	1488(ra) # 80005b34 <_Z11printStringPKc>
    getString(input, 30);
    8000556c:	01e00593          	li	a1,30
    80005570:	00048513          	mv	a0,s1
    80005574:	00000097          	auipc	ra,0x0
    80005578:	648080e7          	jalr	1608(ra) # 80005bbc <_Z9getStringPci>
    n = stringToInt(input);
    8000557c:	00048513          	mv	a0,s1
    80005580:	00000097          	auipc	ra,0x0
    80005584:	714080e7          	jalr	1812(ra) # 80005c94 <_Z11stringToIntPKc>
    80005588:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000558c:	00004517          	auipc	a0,0x4
    80005590:	f3450513          	addi	a0,a0,-204 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80005594:	00000097          	auipc	ra,0x0
    80005598:	5a0080e7          	jalr	1440(ra) # 80005b34 <_Z11printStringPKc>
    8000559c:	00000613          	li	a2,0
    800055a0:	00a00593          	li	a1,10
    800055a4:	00090513          	mv	a0,s2
    800055a8:	00000097          	auipc	ra,0x0
    800055ac:	73c080e7          	jalr	1852(ra) # 80005ce4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800055b0:	00004517          	auipc	a0,0x4
    800055b4:	f2850513          	addi	a0,a0,-216 # 800094d8 <CONSOLE_STATUS+0x4c8>
    800055b8:	00000097          	auipc	ra,0x0
    800055bc:	57c080e7          	jalr	1404(ra) # 80005b34 <_Z11printStringPKc>
    800055c0:	00000613          	li	a2,0
    800055c4:	00a00593          	li	a1,10
    800055c8:	00048513          	mv	a0,s1
    800055cc:	00000097          	auipc	ra,0x0
    800055d0:	718080e7          	jalr	1816(ra) # 80005ce4 <_Z8printIntiii>
    printString(".\n");
    800055d4:	00004517          	auipc	a0,0x4
    800055d8:	f1c50513          	addi	a0,a0,-228 # 800094f0 <CONSOLE_STATUS+0x4e0>
    800055dc:	00000097          	auipc	ra,0x0
    800055e0:	558080e7          	jalr	1368(ra) # 80005b34 <_Z11printStringPKc>
    if(threadNum > n) {
    800055e4:	0324c463          	blt	s1,s2,8000560c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800055e8:	03205c63          	blez	s2,80005620 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800055ec:	03800513          	li	a0,56
    800055f0:	ffffd097          	auipc	ra,0xffffd
    800055f4:	fa8080e7          	jalr	-88(ra) # 80002598 <_Znwm>
    800055f8:	00050a93          	mv	s5,a0
    800055fc:	00048593          	mv	a1,s1
    80005600:	00001097          	auipc	ra,0x1
    80005604:	804080e7          	jalr	-2044(ra) # 80005e04 <_ZN9BufferCPPC1Ei>
    80005608:	0300006f          	j	80005638 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000560c:	00004517          	auipc	a0,0x4
    80005610:	eec50513          	addi	a0,a0,-276 # 800094f8 <CONSOLE_STATUS+0x4e8>
    80005614:	00000097          	auipc	ra,0x0
    80005618:	520080e7          	jalr	1312(ra) # 80005b34 <_Z11printStringPKc>
        return;
    8000561c:	0140006f          	j	80005630 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005620:	00004517          	auipc	a0,0x4
    80005624:	f1850513          	addi	a0,a0,-232 # 80009538 <CONSOLE_STATUS+0x528>
    80005628:	00000097          	auipc	ra,0x0
    8000562c:	50c080e7          	jalr	1292(ra) # 80005b34 <_Z11printStringPKc>
        return;
    80005630:	000b8113          	mv	sp,s7
    80005634:	2380006f          	j	8000586c <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005638:	01000513          	li	a0,16
    8000563c:	ffffd097          	auipc	ra,0xffffd
    80005640:	f5c080e7          	jalr	-164(ra) # 80002598 <_Znwm>
    80005644:	00050493          	mv	s1,a0
    80005648:	00000593          	li	a1,0
    8000564c:	ffffd097          	auipc	ra,0xffffd
    80005650:	324080e7          	jalr	804(ra) # 80002970 <_ZN9SemaphoreC1Ej>
    80005654:	00007797          	auipc	a5,0x7
    80005658:	8297b623          	sd	s1,-2004(a5) # 8000be80 <_ZL10waitForAll>
    Thread* threads[threadNum];
    8000565c:	00391793          	slli	a5,s2,0x3
    80005660:	00f78793          	addi	a5,a5,15
    80005664:	ff07f793          	andi	a5,a5,-16
    80005668:	40f10133          	sub	sp,sp,a5
    8000566c:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005670:	0019071b          	addiw	a4,s2,1
    80005674:	00171793          	slli	a5,a4,0x1
    80005678:	00e787b3          	add	a5,a5,a4
    8000567c:	00379793          	slli	a5,a5,0x3
    80005680:	00f78793          	addi	a5,a5,15
    80005684:	ff07f793          	andi	a5,a5,-16
    80005688:	40f10133          	sub	sp,sp,a5
    8000568c:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005690:	00191c13          	slli	s8,s2,0x1
    80005694:	012c07b3          	add	a5,s8,s2
    80005698:	00379793          	slli	a5,a5,0x3
    8000569c:	00fa07b3          	add	a5,s4,a5
    800056a0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800056a4:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800056a8:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800056ac:	02800513          	li	a0,40
    800056b0:	ffffd097          	auipc	ra,0xffffd
    800056b4:	ee8080e7          	jalr	-280(ra) # 80002598 <_Znwm>
    800056b8:	00050b13          	mv	s6,a0
    800056bc:	012c0c33          	add	s8,s8,s2
    800056c0:	003c1c13          	slli	s8,s8,0x3
    800056c4:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800056c8:	ffffd097          	auipc	ra,0xffffd
    800056cc:	1a8080e7          	jalr	424(ra) # 80002870 <_ZN6ThreadC1Ev>
    800056d0:	00006797          	auipc	a5,0x6
    800056d4:	67078793          	addi	a5,a5,1648 # 8000bd40 <_ZTV12ConsumerSync+0x10>
    800056d8:	00fb3023          	sd	a5,0(s6)
    800056dc:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800056e0:	000b0513          	mv	a0,s6
    800056e4:	ffffd097          	auipc	ra,0xffffd
    800056e8:	1bc080e7          	jalr	444(ra) # 800028a0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800056ec:	00000493          	li	s1,0
    800056f0:	0380006f          	j	80005728 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800056f4:	00006797          	auipc	a5,0x6
    800056f8:	62478793          	addi	a5,a5,1572 # 8000bd18 <_ZTV12ProducerSync+0x10>
    800056fc:	00fcb023          	sd	a5,0(s9)
    80005700:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005704:	00349793          	slli	a5,s1,0x3
    80005708:	00f987b3          	add	a5,s3,a5
    8000570c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005710:	00349793          	slli	a5,s1,0x3
    80005714:	00f987b3          	add	a5,s3,a5
    80005718:	0007b503          	ld	a0,0(a5)
    8000571c:	ffffd097          	auipc	ra,0xffffd
    80005720:	184080e7          	jalr	388(ra) # 800028a0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005724:	0014849b          	addiw	s1,s1,1
    80005728:	0b24d063          	bge	s1,s2,800057c8 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    8000572c:	00149793          	slli	a5,s1,0x1
    80005730:	009787b3          	add	a5,a5,s1
    80005734:	00379793          	slli	a5,a5,0x3
    80005738:	00fa07b3          	add	a5,s4,a5
    8000573c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005740:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005744:	00006717          	auipc	a4,0x6
    80005748:	73c73703          	ld	a4,1852(a4) # 8000be80 <_ZL10waitForAll>
    8000574c:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005750:	02905863          	blez	s1,80005780 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005754:	02800513          	li	a0,40
    80005758:	ffffd097          	auipc	ra,0xffffd
    8000575c:	e40080e7          	jalr	-448(ra) # 80002598 <_Znwm>
    80005760:	00050c93          	mv	s9,a0
    80005764:	00149c13          	slli	s8,s1,0x1
    80005768:	009c0c33          	add	s8,s8,s1
    8000576c:	003c1c13          	slli	s8,s8,0x3
    80005770:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005774:	ffffd097          	auipc	ra,0xffffd
    80005778:	0fc080e7          	jalr	252(ra) # 80002870 <_ZN6ThreadC1Ev>
    8000577c:	f79ff06f          	j	800056f4 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005780:	02800513          	li	a0,40
    80005784:	ffffd097          	auipc	ra,0xffffd
    80005788:	e14080e7          	jalr	-492(ra) # 80002598 <_Znwm>
    8000578c:	00050c93          	mv	s9,a0
    80005790:	00149c13          	slli	s8,s1,0x1
    80005794:	009c0c33          	add	s8,s8,s1
    80005798:	003c1c13          	slli	s8,s8,0x3
    8000579c:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800057a0:	ffffd097          	auipc	ra,0xffffd
    800057a4:	0d0080e7          	jalr	208(ra) # 80002870 <_ZN6ThreadC1Ev>
    800057a8:	00006797          	auipc	a5,0x6
    800057ac:	54878793          	addi	a5,a5,1352 # 8000bcf0 <_ZTV16ProducerKeyboard+0x10>
    800057b0:	00fcb023          	sd	a5,0(s9)
    800057b4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800057b8:	00349793          	slli	a5,s1,0x3
    800057bc:	00f987b3          	add	a5,s3,a5
    800057c0:	0197b023          	sd	s9,0(a5)
    800057c4:	f4dff06f          	j	80005710 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800057c8:	ffffd097          	auipc	ra,0xffffd
    800057cc:	12c080e7          	jalr	300(ra) # 800028f4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800057d0:	00000493          	li	s1,0
    800057d4:	00994e63          	blt	s2,s1,800057f0 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800057d8:	00006517          	auipc	a0,0x6
    800057dc:	6a853503          	ld	a0,1704(a0) # 8000be80 <_ZL10waitForAll>
    800057e0:	ffffd097          	auipc	ra,0xffffd
    800057e4:	1cc080e7          	jalr	460(ra) # 800029ac <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800057e8:	0014849b          	addiw	s1,s1,1
    800057ec:	fe9ff06f          	j	800057d4 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800057f0:	00000493          	li	s1,0
    800057f4:	0080006f          	j	800057fc <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800057f8:	0014849b          	addiw	s1,s1,1
    800057fc:	0324d263          	bge	s1,s2,80005820 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005800:	00349793          	slli	a5,s1,0x3
    80005804:	00f987b3          	add	a5,s3,a5
    80005808:	0007b503          	ld	a0,0(a5)
    8000580c:	fe0506e3          	beqz	a0,800057f8 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005810:	00053783          	ld	a5,0(a0)
    80005814:	0087b783          	ld	a5,8(a5)
    80005818:	000780e7          	jalr	a5
    8000581c:	fddff06f          	j	800057f8 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005820:	000b0a63          	beqz	s6,80005834 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005824:	000b3783          	ld	a5,0(s6)
    80005828:	0087b783          	ld	a5,8(a5)
    8000582c:	000b0513          	mv	a0,s6
    80005830:	000780e7          	jalr	a5
    delete waitForAll;
    80005834:	00006517          	auipc	a0,0x6
    80005838:	64c53503          	ld	a0,1612(a0) # 8000be80 <_ZL10waitForAll>
    8000583c:	00050863          	beqz	a0,8000584c <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005840:	00053783          	ld	a5,0(a0)
    80005844:	0087b783          	ld	a5,8(a5)
    80005848:	000780e7          	jalr	a5
    delete buffer;
    8000584c:	000a8e63          	beqz	s5,80005868 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005850:	000a8513          	mv	a0,s5
    80005854:	00001097          	auipc	ra,0x1
    80005858:	8a8080e7          	jalr	-1880(ra) # 800060fc <_ZN9BufferCPPD1Ev>
    8000585c:	000a8513          	mv	a0,s5
    80005860:	ffffd097          	auipc	ra,0xffffd
    80005864:	d88080e7          	jalr	-632(ra) # 800025e8 <_ZdlPv>
    80005868:	000b8113          	mv	sp,s7

}
    8000586c:	f8040113          	addi	sp,s0,-128
    80005870:	07813083          	ld	ra,120(sp)
    80005874:	07013403          	ld	s0,112(sp)
    80005878:	06813483          	ld	s1,104(sp)
    8000587c:	06013903          	ld	s2,96(sp)
    80005880:	05813983          	ld	s3,88(sp)
    80005884:	05013a03          	ld	s4,80(sp)
    80005888:	04813a83          	ld	s5,72(sp)
    8000588c:	04013b03          	ld	s6,64(sp)
    80005890:	03813b83          	ld	s7,56(sp)
    80005894:	03013c03          	ld	s8,48(sp)
    80005898:	02813c83          	ld	s9,40(sp)
    8000589c:	08010113          	addi	sp,sp,128
    800058a0:	00008067          	ret
    800058a4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800058a8:	000a8513          	mv	a0,s5
    800058ac:	ffffd097          	auipc	ra,0xffffd
    800058b0:	d3c080e7          	jalr	-708(ra) # 800025e8 <_ZdlPv>
    800058b4:	00048513          	mv	a0,s1
    800058b8:	00007097          	auipc	ra,0x7
    800058bc:	6b0080e7          	jalr	1712(ra) # 8000cf68 <_Unwind_Resume>
    800058c0:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800058c4:	00048513          	mv	a0,s1
    800058c8:	ffffd097          	auipc	ra,0xffffd
    800058cc:	d20080e7          	jalr	-736(ra) # 800025e8 <_ZdlPv>
    800058d0:	00090513          	mv	a0,s2
    800058d4:	00007097          	auipc	ra,0x7
    800058d8:	694080e7          	jalr	1684(ra) # 8000cf68 <_Unwind_Resume>
    800058dc:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800058e0:	000b0513          	mv	a0,s6
    800058e4:	ffffd097          	auipc	ra,0xffffd
    800058e8:	d04080e7          	jalr	-764(ra) # 800025e8 <_ZdlPv>
    800058ec:	00048513          	mv	a0,s1
    800058f0:	00007097          	auipc	ra,0x7
    800058f4:	678080e7          	jalr	1656(ra) # 8000cf68 <_Unwind_Resume>
    800058f8:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800058fc:	000c8513          	mv	a0,s9
    80005900:	ffffd097          	auipc	ra,0xffffd
    80005904:	ce8080e7          	jalr	-792(ra) # 800025e8 <_ZdlPv>
    80005908:	00048513          	mv	a0,s1
    8000590c:	00007097          	auipc	ra,0x7
    80005910:	65c080e7          	jalr	1628(ra) # 8000cf68 <_Unwind_Resume>
    80005914:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005918:	000c8513          	mv	a0,s9
    8000591c:	ffffd097          	auipc	ra,0xffffd
    80005920:	ccc080e7          	jalr	-820(ra) # 800025e8 <_ZdlPv>
    80005924:	00048513          	mv	a0,s1
    80005928:	00007097          	auipc	ra,0x7
    8000592c:	640080e7          	jalr	1600(ra) # 8000cf68 <_Unwind_Resume>

0000000080005930 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005930:	ff010113          	addi	sp,sp,-16
    80005934:	00113423          	sd	ra,8(sp)
    80005938:	00813023          	sd	s0,0(sp)
    8000593c:	01010413          	addi	s0,sp,16
    80005940:	00006797          	auipc	a5,0x6
    80005944:	40078793          	addi	a5,a5,1024 # 8000bd40 <_ZTV12ConsumerSync+0x10>
    80005948:	00f53023          	sd	a5,0(a0)
    8000594c:	ffffd097          	auipc	ra,0xffffd
    80005950:	e00080e7          	jalr	-512(ra) # 8000274c <_ZN6ThreadD1Ev>
    80005954:	00813083          	ld	ra,8(sp)
    80005958:	00013403          	ld	s0,0(sp)
    8000595c:	01010113          	addi	sp,sp,16
    80005960:	00008067          	ret

0000000080005964 <_ZN12ConsumerSyncD0Ev>:
    80005964:	fe010113          	addi	sp,sp,-32
    80005968:	00113c23          	sd	ra,24(sp)
    8000596c:	00813823          	sd	s0,16(sp)
    80005970:	00913423          	sd	s1,8(sp)
    80005974:	02010413          	addi	s0,sp,32
    80005978:	00050493          	mv	s1,a0
    8000597c:	00006797          	auipc	a5,0x6
    80005980:	3c478793          	addi	a5,a5,964 # 8000bd40 <_ZTV12ConsumerSync+0x10>
    80005984:	00f53023          	sd	a5,0(a0)
    80005988:	ffffd097          	auipc	ra,0xffffd
    8000598c:	dc4080e7          	jalr	-572(ra) # 8000274c <_ZN6ThreadD1Ev>
    80005990:	00048513          	mv	a0,s1
    80005994:	ffffd097          	auipc	ra,0xffffd
    80005998:	c54080e7          	jalr	-940(ra) # 800025e8 <_ZdlPv>
    8000599c:	01813083          	ld	ra,24(sp)
    800059a0:	01013403          	ld	s0,16(sp)
    800059a4:	00813483          	ld	s1,8(sp)
    800059a8:	02010113          	addi	sp,sp,32
    800059ac:	00008067          	ret

00000000800059b0 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800059b0:	ff010113          	addi	sp,sp,-16
    800059b4:	00113423          	sd	ra,8(sp)
    800059b8:	00813023          	sd	s0,0(sp)
    800059bc:	01010413          	addi	s0,sp,16
    800059c0:	00006797          	auipc	a5,0x6
    800059c4:	35878793          	addi	a5,a5,856 # 8000bd18 <_ZTV12ProducerSync+0x10>
    800059c8:	00f53023          	sd	a5,0(a0)
    800059cc:	ffffd097          	auipc	ra,0xffffd
    800059d0:	d80080e7          	jalr	-640(ra) # 8000274c <_ZN6ThreadD1Ev>
    800059d4:	00813083          	ld	ra,8(sp)
    800059d8:	00013403          	ld	s0,0(sp)
    800059dc:	01010113          	addi	sp,sp,16
    800059e0:	00008067          	ret

00000000800059e4 <_ZN12ProducerSyncD0Ev>:
    800059e4:	fe010113          	addi	sp,sp,-32
    800059e8:	00113c23          	sd	ra,24(sp)
    800059ec:	00813823          	sd	s0,16(sp)
    800059f0:	00913423          	sd	s1,8(sp)
    800059f4:	02010413          	addi	s0,sp,32
    800059f8:	00050493          	mv	s1,a0
    800059fc:	00006797          	auipc	a5,0x6
    80005a00:	31c78793          	addi	a5,a5,796 # 8000bd18 <_ZTV12ProducerSync+0x10>
    80005a04:	00f53023          	sd	a5,0(a0)
    80005a08:	ffffd097          	auipc	ra,0xffffd
    80005a0c:	d44080e7          	jalr	-700(ra) # 8000274c <_ZN6ThreadD1Ev>
    80005a10:	00048513          	mv	a0,s1
    80005a14:	ffffd097          	auipc	ra,0xffffd
    80005a18:	bd4080e7          	jalr	-1068(ra) # 800025e8 <_ZdlPv>
    80005a1c:	01813083          	ld	ra,24(sp)
    80005a20:	01013403          	ld	s0,16(sp)
    80005a24:	00813483          	ld	s1,8(sp)
    80005a28:	02010113          	addi	sp,sp,32
    80005a2c:	00008067          	ret

0000000080005a30 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005a30:	ff010113          	addi	sp,sp,-16
    80005a34:	00113423          	sd	ra,8(sp)
    80005a38:	00813023          	sd	s0,0(sp)
    80005a3c:	01010413          	addi	s0,sp,16
    80005a40:	00006797          	auipc	a5,0x6
    80005a44:	2b078793          	addi	a5,a5,688 # 8000bcf0 <_ZTV16ProducerKeyboard+0x10>
    80005a48:	00f53023          	sd	a5,0(a0)
    80005a4c:	ffffd097          	auipc	ra,0xffffd
    80005a50:	d00080e7          	jalr	-768(ra) # 8000274c <_ZN6ThreadD1Ev>
    80005a54:	00813083          	ld	ra,8(sp)
    80005a58:	00013403          	ld	s0,0(sp)
    80005a5c:	01010113          	addi	sp,sp,16
    80005a60:	00008067          	ret

0000000080005a64 <_ZN16ProducerKeyboardD0Ev>:
    80005a64:	fe010113          	addi	sp,sp,-32
    80005a68:	00113c23          	sd	ra,24(sp)
    80005a6c:	00813823          	sd	s0,16(sp)
    80005a70:	00913423          	sd	s1,8(sp)
    80005a74:	02010413          	addi	s0,sp,32
    80005a78:	00050493          	mv	s1,a0
    80005a7c:	00006797          	auipc	a5,0x6
    80005a80:	27478793          	addi	a5,a5,628 # 8000bcf0 <_ZTV16ProducerKeyboard+0x10>
    80005a84:	00f53023          	sd	a5,0(a0)
    80005a88:	ffffd097          	auipc	ra,0xffffd
    80005a8c:	cc4080e7          	jalr	-828(ra) # 8000274c <_ZN6ThreadD1Ev>
    80005a90:	00048513          	mv	a0,s1
    80005a94:	ffffd097          	auipc	ra,0xffffd
    80005a98:	b54080e7          	jalr	-1196(ra) # 800025e8 <_ZdlPv>
    80005a9c:	01813083          	ld	ra,24(sp)
    80005aa0:	01013403          	ld	s0,16(sp)
    80005aa4:	00813483          	ld	s1,8(sp)
    80005aa8:	02010113          	addi	sp,sp,32
    80005aac:	00008067          	ret

0000000080005ab0 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005ab0:	ff010113          	addi	sp,sp,-16
    80005ab4:	00113423          	sd	ra,8(sp)
    80005ab8:	00813023          	sd	s0,0(sp)
    80005abc:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005ac0:	02053583          	ld	a1,32(a0)
    80005ac4:	fffff097          	auipc	ra,0xfffff
    80005ac8:	7e4080e7          	jalr	2020(ra) # 800052a8 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005acc:	00813083          	ld	ra,8(sp)
    80005ad0:	00013403          	ld	s0,0(sp)
    80005ad4:	01010113          	addi	sp,sp,16
    80005ad8:	00008067          	ret

0000000080005adc <_ZN12ProducerSync3runEv>:
    void run() override {
    80005adc:	ff010113          	addi	sp,sp,-16
    80005ae0:	00113423          	sd	ra,8(sp)
    80005ae4:	00813023          	sd	s0,0(sp)
    80005ae8:	01010413          	addi	s0,sp,16
        producer(td);
    80005aec:	02053583          	ld	a1,32(a0)
    80005af0:	00000097          	auipc	ra,0x0
    80005af4:	878080e7          	jalr	-1928(ra) # 80005368 <_ZN12ProducerSync8producerEPv>
    }
    80005af8:	00813083          	ld	ra,8(sp)
    80005afc:	00013403          	ld	s0,0(sp)
    80005b00:	01010113          	addi	sp,sp,16
    80005b04:	00008067          	ret

0000000080005b08 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005b08:	ff010113          	addi	sp,sp,-16
    80005b0c:	00113423          	sd	ra,8(sp)
    80005b10:	00813023          	sd	s0,0(sp)
    80005b14:	01010413          	addi	s0,sp,16
        consumer(td);
    80005b18:	02053583          	ld	a1,32(a0)
    80005b1c:	00000097          	auipc	ra,0x0
    80005b20:	8e0080e7          	jalr	-1824(ra) # 800053fc <_ZN12ConsumerSync8consumerEPv>
    }
    80005b24:	00813083          	ld	ra,8(sp)
    80005b28:	00013403          	ld	s0,0(sp)
    80005b2c:	01010113          	addi	sp,sp,16
    80005b30:	00008067          	ret

0000000080005b34 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005b34:	fe010113          	addi	sp,sp,-32
    80005b38:	00113c23          	sd	ra,24(sp)
    80005b3c:	00813823          	sd	s0,16(sp)
    80005b40:	00913423          	sd	s1,8(sp)
    80005b44:	02010413          	addi	s0,sp,32
    80005b48:	00050493          	mv	s1,a0
    LOCK();
    80005b4c:	00100613          	li	a2,1
    80005b50:	00000593          	li	a1,0
    80005b54:	00006517          	auipc	a0,0x6
    80005b58:	33450513          	addi	a0,a0,820 # 8000be88 <lockPrint>
    80005b5c:	ffffb097          	auipc	ra,0xffffb
    80005b60:	648080e7          	jalr	1608(ra) # 800011a4 <copy_and_swap>
    80005b64:	00050863          	beqz	a0,80005b74 <_Z11printStringPKc+0x40>
    80005b68:	ffffc097          	auipc	ra,0xffffc
    80005b6c:	820080e7          	jalr	-2016(ra) # 80001388 <_Z15thread_dispatchv>
    80005b70:	fddff06f          	j	80005b4c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005b74:	0004c503          	lbu	a0,0(s1)
    80005b78:	00050a63          	beqz	a0,80005b8c <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005b7c:	ffffc097          	auipc	ra,0xffffc
    80005b80:	a90080e7          	jalr	-1392(ra) # 8000160c <_Z4putcc>
        string++;
    80005b84:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005b88:	fedff06f          	j	80005b74 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005b8c:	00000613          	li	a2,0
    80005b90:	00100593          	li	a1,1
    80005b94:	00006517          	auipc	a0,0x6
    80005b98:	2f450513          	addi	a0,a0,756 # 8000be88 <lockPrint>
    80005b9c:	ffffb097          	auipc	ra,0xffffb
    80005ba0:	608080e7          	jalr	1544(ra) # 800011a4 <copy_and_swap>
    80005ba4:	fe0514e3          	bnez	a0,80005b8c <_Z11printStringPKc+0x58>
}
    80005ba8:	01813083          	ld	ra,24(sp)
    80005bac:	01013403          	ld	s0,16(sp)
    80005bb0:	00813483          	ld	s1,8(sp)
    80005bb4:	02010113          	addi	sp,sp,32
    80005bb8:	00008067          	ret

0000000080005bbc <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005bbc:	fd010113          	addi	sp,sp,-48
    80005bc0:	02113423          	sd	ra,40(sp)
    80005bc4:	02813023          	sd	s0,32(sp)
    80005bc8:	00913c23          	sd	s1,24(sp)
    80005bcc:	01213823          	sd	s2,16(sp)
    80005bd0:	01313423          	sd	s3,8(sp)
    80005bd4:	01413023          	sd	s4,0(sp)
    80005bd8:	03010413          	addi	s0,sp,48
    80005bdc:	00050993          	mv	s3,a0
    80005be0:	00058a13          	mv	s4,a1
    LOCK();
    80005be4:	00100613          	li	a2,1
    80005be8:	00000593          	li	a1,0
    80005bec:	00006517          	auipc	a0,0x6
    80005bf0:	29c50513          	addi	a0,a0,668 # 8000be88 <lockPrint>
    80005bf4:	ffffb097          	auipc	ra,0xffffb
    80005bf8:	5b0080e7          	jalr	1456(ra) # 800011a4 <copy_and_swap>
    80005bfc:	00050863          	beqz	a0,80005c0c <_Z9getStringPci+0x50>
    80005c00:	ffffb097          	auipc	ra,0xffffb
    80005c04:	788080e7          	jalr	1928(ra) # 80001388 <_Z15thread_dispatchv>
    80005c08:	fddff06f          	j	80005be4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005c0c:	00000913          	li	s2,0
    80005c10:	00090493          	mv	s1,s2
    80005c14:	0019091b          	addiw	s2,s2,1
    80005c18:	03495a63          	bge	s2,s4,80005c4c <_Z9getStringPci+0x90>
        cc = getc();
    80005c1c:	ffffc097          	auipc	ra,0xffffc
    80005c20:	9b0080e7          	jalr	-1616(ra) # 800015cc <_Z4getcv>
        if(cc < 1)
    80005c24:	02050463          	beqz	a0,80005c4c <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005c28:	009984b3          	add	s1,s3,s1
    80005c2c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005c30:	00a00793          	li	a5,10
    80005c34:	00f50a63          	beq	a0,a5,80005c48 <_Z9getStringPci+0x8c>
    80005c38:	00d00793          	li	a5,13
    80005c3c:	fcf51ae3          	bne	a0,a5,80005c10 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005c40:	00090493          	mv	s1,s2
    80005c44:	0080006f          	j	80005c4c <_Z9getStringPci+0x90>
    80005c48:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005c4c:	009984b3          	add	s1,s3,s1
    80005c50:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005c54:	00000613          	li	a2,0
    80005c58:	00100593          	li	a1,1
    80005c5c:	00006517          	auipc	a0,0x6
    80005c60:	22c50513          	addi	a0,a0,556 # 8000be88 <lockPrint>
    80005c64:	ffffb097          	auipc	ra,0xffffb
    80005c68:	540080e7          	jalr	1344(ra) # 800011a4 <copy_and_swap>
    80005c6c:	fe0514e3          	bnez	a0,80005c54 <_Z9getStringPci+0x98>
    return buf;
}
    80005c70:	00098513          	mv	a0,s3
    80005c74:	02813083          	ld	ra,40(sp)
    80005c78:	02013403          	ld	s0,32(sp)
    80005c7c:	01813483          	ld	s1,24(sp)
    80005c80:	01013903          	ld	s2,16(sp)
    80005c84:	00813983          	ld	s3,8(sp)
    80005c88:	00013a03          	ld	s4,0(sp)
    80005c8c:	03010113          	addi	sp,sp,48
    80005c90:	00008067          	ret

0000000080005c94 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005c94:	ff010113          	addi	sp,sp,-16
    80005c98:	00813423          	sd	s0,8(sp)
    80005c9c:	01010413          	addi	s0,sp,16
    80005ca0:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005ca4:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005ca8:	0006c603          	lbu	a2,0(a3)
    80005cac:	fd06071b          	addiw	a4,a2,-48
    80005cb0:	0ff77713          	andi	a4,a4,255
    80005cb4:	00900793          	li	a5,9
    80005cb8:	02e7e063          	bltu	a5,a4,80005cd8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005cbc:	0025179b          	slliw	a5,a0,0x2
    80005cc0:	00a787bb          	addw	a5,a5,a0
    80005cc4:	0017979b          	slliw	a5,a5,0x1
    80005cc8:	00168693          	addi	a3,a3,1
    80005ccc:	00c787bb          	addw	a5,a5,a2
    80005cd0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005cd4:	fd5ff06f          	j	80005ca8 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005cd8:	00813403          	ld	s0,8(sp)
    80005cdc:	01010113          	addi	sp,sp,16
    80005ce0:	00008067          	ret

0000000080005ce4 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005ce4:	fc010113          	addi	sp,sp,-64
    80005ce8:	02113c23          	sd	ra,56(sp)
    80005cec:	02813823          	sd	s0,48(sp)
    80005cf0:	02913423          	sd	s1,40(sp)
    80005cf4:	03213023          	sd	s2,32(sp)
    80005cf8:	01313c23          	sd	s3,24(sp)
    80005cfc:	04010413          	addi	s0,sp,64
    80005d00:	00050493          	mv	s1,a0
    80005d04:	00058913          	mv	s2,a1
    80005d08:	00060993          	mv	s3,a2
    LOCK();
    80005d0c:	00100613          	li	a2,1
    80005d10:	00000593          	li	a1,0
    80005d14:	00006517          	auipc	a0,0x6
    80005d18:	17450513          	addi	a0,a0,372 # 8000be88 <lockPrint>
    80005d1c:	ffffb097          	auipc	ra,0xffffb
    80005d20:	488080e7          	jalr	1160(ra) # 800011a4 <copy_and_swap>
    80005d24:	00050863          	beqz	a0,80005d34 <_Z8printIntiii+0x50>
    80005d28:	ffffb097          	auipc	ra,0xffffb
    80005d2c:	660080e7          	jalr	1632(ra) # 80001388 <_Z15thread_dispatchv>
    80005d30:	fddff06f          	j	80005d0c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005d34:	00098463          	beqz	s3,80005d3c <_Z8printIntiii+0x58>
    80005d38:	0804c463          	bltz	s1,80005dc0 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005d3c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005d40:	00000593          	li	a1,0
    }

    i = 0;
    80005d44:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005d48:	0009079b          	sext.w	a5,s2
    80005d4c:	0325773b          	remuw	a4,a0,s2
    80005d50:	00048613          	mv	a2,s1
    80005d54:	0014849b          	addiw	s1,s1,1
    80005d58:	02071693          	slli	a3,a4,0x20
    80005d5c:	0206d693          	srli	a3,a3,0x20
    80005d60:	00006717          	auipc	a4,0x6
    80005d64:	ff870713          	addi	a4,a4,-8 # 8000bd58 <digits>
    80005d68:	00d70733          	add	a4,a4,a3
    80005d6c:	00074683          	lbu	a3,0(a4)
    80005d70:	fd040713          	addi	a4,s0,-48
    80005d74:	00c70733          	add	a4,a4,a2
    80005d78:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005d7c:	0005071b          	sext.w	a4,a0
    80005d80:	0325553b          	divuw	a0,a0,s2
    80005d84:	fcf772e3          	bgeu	a4,a5,80005d48 <_Z8printIntiii+0x64>
    if(neg)
    80005d88:	00058c63          	beqz	a1,80005da0 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005d8c:	fd040793          	addi	a5,s0,-48
    80005d90:	009784b3          	add	s1,a5,s1
    80005d94:	02d00793          	li	a5,45
    80005d98:	fef48823          	sb	a5,-16(s1)
    80005d9c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005da0:	fff4849b          	addiw	s1,s1,-1
    80005da4:	0204c463          	bltz	s1,80005dcc <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005da8:	fd040793          	addi	a5,s0,-48
    80005dac:	009787b3          	add	a5,a5,s1
    80005db0:	ff07c503          	lbu	a0,-16(a5)
    80005db4:	ffffc097          	auipc	ra,0xffffc
    80005db8:	858080e7          	jalr	-1960(ra) # 8000160c <_Z4putcc>
    80005dbc:	fe5ff06f          	j	80005da0 <_Z8printIntiii+0xbc>
        x = -xx;
    80005dc0:	4090053b          	negw	a0,s1
        neg = 1;
    80005dc4:	00100593          	li	a1,1
        x = -xx;
    80005dc8:	f7dff06f          	j	80005d44 <_Z8printIntiii+0x60>

    UNLOCK();
    80005dcc:	00000613          	li	a2,0
    80005dd0:	00100593          	li	a1,1
    80005dd4:	00006517          	auipc	a0,0x6
    80005dd8:	0b450513          	addi	a0,a0,180 # 8000be88 <lockPrint>
    80005ddc:	ffffb097          	auipc	ra,0xffffb
    80005de0:	3c8080e7          	jalr	968(ra) # 800011a4 <copy_and_swap>
    80005de4:	fe0514e3          	bnez	a0,80005dcc <_Z8printIntiii+0xe8>
    80005de8:	03813083          	ld	ra,56(sp)
    80005dec:	03013403          	ld	s0,48(sp)
    80005df0:	02813483          	ld	s1,40(sp)
    80005df4:	02013903          	ld	s2,32(sp)
    80005df8:	01813983          	ld	s3,24(sp)
    80005dfc:	04010113          	addi	sp,sp,64
    80005e00:	00008067          	ret

0000000080005e04 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005e04:	fd010113          	addi	sp,sp,-48
    80005e08:	02113423          	sd	ra,40(sp)
    80005e0c:	02813023          	sd	s0,32(sp)
    80005e10:	00913c23          	sd	s1,24(sp)
    80005e14:	01213823          	sd	s2,16(sp)
    80005e18:	01313423          	sd	s3,8(sp)
    80005e1c:	03010413          	addi	s0,sp,48
    80005e20:	00050493          	mv	s1,a0
    80005e24:	00058913          	mv	s2,a1
    80005e28:	0015879b          	addiw	a5,a1,1
    80005e2c:	0007851b          	sext.w	a0,a5
    80005e30:	00f4a023          	sw	a5,0(s1)
    80005e34:	0004a823          	sw	zero,16(s1)
    80005e38:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005e3c:	00251513          	slli	a0,a0,0x2
    80005e40:	ffffb097          	auipc	ra,0xffffb
    80005e44:	3b8080e7          	jalr	952(ra) # 800011f8 <_Z9mem_allocm>
    80005e48:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005e4c:	01000513          	li	a0,16
    80005e50:	ffffc097          	auipc	ra,0xffffc
    80005e54:	748080e7          	jalr	1864(ra) # 80002598 <_Znwm>
    80005e58:	00050993          	mv	s3,a0
    80005e5c:	00000593          	li	a1,0
    80005e60:	ffffd097          	auipc	ra,0xffffd
    80005e64:	b10080e7          	jalr	-1264(ra) # 80002970 <_ZN9SemaphoreC1Ej>
    80005e68:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005e6c:	01000513          	li	a0,16
    80005e70:	ffffc097          	auipc	ra,0xffffc
    80005e74:	728080e7          	jalr	1832(ra) # 80002598 <_Znwm>
    80005e78:	00050993          	mv	s3,a0
    80005e7c:	00090593          	mv	a1,s2
    80005e80:	ffffd097          	auipc	ra,0xffffd
    80005e84:	af0080e7          	jalr	-1296(ra) # 80002970 <_ZN9SemaphoreC1Ej>
    80005e88:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005e8c:	01000513          	li	a0,16
    80005e90:	ffffc097          	auipc	ra,0xffffc
    80005e94:	708080e7          	jalr	1800(ra) # 80002598 <_Znwm>
    80005e98:	00050913          	mv	s2,a0
    80005e9c:	00100593          	li	a1,1
    80005ea0:	ffffd097          	auipc	ra,0xffffd
    80005ea4:	ad0080e7          	jalr	-1328(ra) # 80002970 <_ZN9SemaphoreC1Ej>
    80005ea8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005eac:	01000513          	li	a0,16
    80005eb0:	ffffc097          	auipc	ra,0xffffc
    80005eb4:	6e8080e7          	jalr	1768(ra) # 80002598 <_Znwm>
    80005eb8:	00050913          	mv	s2,a0
    80005ebc:	00100593          	li	a1,1
    80005ec0:	ffffd097          	auipc	ra,0xffffd
    80005ec4:	ab0080e7          	jalr	-1360(ra) # 80002970 <_ZN9SemaphoreC1Ej>
    80005ec8:	0324b823          	sd	s2,48(s1)
}
    80005ecc:	02813083          	ld	ra,40(sp)
    80005ed0:	02013403          	ld	s0,32(sp)
    80005ed4:	01813483          	ld	s1,24(sp)
    80005ed8:	01013903          	ld	s2,16(sp)
    80005edc:	00813983          	ld	s3,8(sp)
    80005ee0:	03010113          	addi	sp,sp,48
    80005ee4:	00008067          	ret
    80005ee8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005eec:	00098513          	mv	a0,s3
    80005ef0:	ffffc097          	auipc	ra,0xffffc
    80005ef4:	6f8080e7          	jalr	1784(ra) # 800025e8 <_ZdlPv>
    80005ef8:	00048513          	mv	a0,s1
    80005efc:	00007097          	auipc	ra,0x7
    80005f00:	06c080e7          	jalr	108(ra) # 8000cf68 <_Unwind_Resume>
    80005f04:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005f08:	00098513          	mv	a0,s3
    80005f0c:	ffffc097          	auipc	ra,0xffffc
    80005f10:	6dc080e7          	jalr	1756(ra) # 800025e8 <_ZdlPv>
    80005f14:	00048513          	mv	a0,s1
    80005f18:	00007097          	auipc	ra,0x7
    80005f1c:	050080e7          	jalr	80(ra) # 8000cf68 <_Unwind_Resume>
    80005f20:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005f24:	00090513          	mv	a0,s2
    80005f28:	ffffc097          	auipc	ra,0xffffc
    80005f2c:	6c0080e7          	jalr	1728(ra) # 800025e8 <_ZdlPv>
    80005f30:	00048513          	mv	a0,s1
    80005f34:	00007097          	auipc	ra,0x7
    80005f38:	034080e7          	jalr	52(ra) # 8000cf68 <_Unwind_Resume>
    80005f3c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005f40:	00090513          	mv	a0,s2
    80005f44:	ffffc097          	auipc	ra,0xffffc
    80005f48:	6a4080e7          	jalr	1700(ra) # 800025e8 <_ZdlPv>
    80005f4c:	00048513          	mv	a0,s1
    80005f50:	00007097          	auipc	ra,0x7
    80005f54:	018080e7          	jalr	24(ra) # 8000cf68 <_Unwind_Resume>

0000000080005f58 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005f58:	fe010113          	addi	sp,sp,-32
    80005f5c:	00113c23          	sd	ra,24(sp)
    80005f60:	00813823          	sd	s0,16(sp)
    80005f64:	00913423          	sd	s1,8(sp)
    80005f68:	01213023          	sd	s2,0(sp)
    80005f6c:	02010413          	addi	s0,sp,32
    80005f70:	00050493          	mv	s1,a0
    80005f74:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005f78:	01853503          	ld	a0,24(a0)
    80005f7c:	ffffd097          	auipc	ra,0xffffd
    80005f80:	a30080e7          	jalr	-1488(ra) # 800029ac <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005f84:	0304b503          	ld	a0,48(s1)
    80005f88:	ffffd097          	auipc	ra,0xffffd
    80005f8c:	a24080e7          	jalr	-1500(ra) # 800029ac <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005f90:	0084b783          	ld	a5,8(s1)
    80005f94:	0144a703          	lw	a4,20(s1)
    80005f98:	00271713          	slli	a4,a4,0x2
    80005f9c:	00e787b3          	add	a5,a5,a4
    80005fa0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005fa4:	0144a783          	lw	a5,20(s1)
    80005fa8:	0017879b          	addiw	a5,a5,1
    80005fac:	0004a703          	lw	a4,0(s1)
    80005fb0:	02e7e7bb          	remw	a5,a5,a4
    80005fb4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005fb8:	0304b503          	ld	a0,48(s1)
    80005fbc:	ffffd097          	auipc	ra,0xffffd
    80005fc0:	a1c080e7          	jalr	-1508(ra) # 800029d8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005fc4:	0204b503          	ld	a0,32(s1)
    80005fc8:	ffffd097          	auipc	ra,0xffffd
    80005fcc:	a10080e7          	jalr	-1520(ra) # 800029d8 <_ZN9Semaphore6signalEv>

}
    80005fd0:	01813083          	ld	ra,24(sp)
    80005fd4:	01013403          	ld	s0,16(sp)
    80005fd8:	00813483          	ld	s1,8(sp)
    80005fdc:	00013903          	ld	s2,0(sp)
    80005fe0:	02010113          	addi	sp,sp,32
    80005fe4:	00008067          	ret

0000000080005fe8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005fe8:	fe010113          	addi	sp,sp,-32
    80005fec:	00113c23          	sd	ra,24(sp)
    80005ff0:	00813823          	sd	s0,16(sp)
    80005ff4:	00913423          	sd	s1,8(sp)
    80005ff8:	01213023          	sd	s2,0(sp)
    80005ffc:	02010413          	addi	s0,sp,32
    80006000:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006004:	02053503          	ld	a0,32(a0)
    80006008:	ffffd097          	auipc	ra,0xffffd
    8000600c:	9a4080e7          	jalr	-1628(ra) # 800029ac <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006010:	0284b503          	ld	a0,40(s1)
    80006014:	ffffd097          	auipc	ra,0xffffd
    80006018:	998080e7          	jalr	-1640(ra) # 800029ac <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000601c:	0084b703          	ld	a4,8(s1)
    80006020:	0104a783          	lw	a5,16(s1)
    80006024:	00279693          	slli	a3,a5,0x2
    80006028:	00d70733          	add	a4,a4,a3
    8000602c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006030:	0017879b          	addiw	a5,a5,1
    80006034:	0004a703          	lw	a4,0(s1)
    80006038:	02e7e7bb          	remw	a5,a5,a4
    8000603c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006040:	0284b503          	ld	a0,40(s1)
    80006044:	ffffd097          	auipc	ra,0xffffd
    80006048:	994080e7          	jalr	-1644(ra) # 800029d8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000604c:	0184b503          	ld	a0,24(s1)
    80006050:	ffffd097          	auipc	ra,0xffffd
    80006054:	988080e7          	jalr	-1656(ra) # 800029d8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006058:	00090513          	mv	a0,s2
    8000605c:	01813083          	ld	ra,24(sp)
    80006060:	01013403          	ld	s0,16(sp)
    80006064:	00813483          	ld	s1,8(sp)
    80006068:	00013903          	ld	s2,0(sp)
    8000606c:	02010113          	addi	sp,sp,32
    80006070:	00008067          	ret

0000000080006074 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80006074:	fe010113          	addi	sp,sp,-32
    80006078:	00113c23          	sd	ra,24(sp)
    8000607c:	00813823          	sd	s0,16(sp)
    80006080:	00913423          	sd	s1,8(sp)
    80006084:	01213023          	sd	s2,0(sp)
    80006088:	02010413          	addi	s0,sp,32
    8000608c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80006090:	02853503          	ld	a0,40(a0)
    80006094:	ffffd097          	auipc	ra,0xffffd
    80006098:	918080e7          	jalr	-1768(ra) # 800029ac <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000609c:	0304b503          	ld	a0,48(s1)
    800060a0:	ffffd097          	auipc	ra,0xffffd
    800060a4:	90c080e7          	jalr	-1780(ra) # 800029ac <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800060a8:	0144a783          	lw	a5,20(s1)
    800060ac:	0104a903          	lw	s2,16(s1)
    800060b0:	0327ce63          	blt	a5,s2,800060ec <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800060b4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800060b8:	0304b503          	ld	a0,48(s1)
    800060bc:	ffffd097          	auipc	ra,0xffffd
    800060c0:	91c080e7          	jalr	-1764(ra) # 800029d8 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800060c4:	0284b503          	ld	a0,40(s1)
    800060c8:	ffffd097          	auipc	ra,0xffffd
    800060cc:	910080e7          	jalr	-1776(ra) # 800029d8 <_ZN9Semaphore6signalEv>

    return ret;
}
    800060d0:	00090513          	mv	a0,s2
    800060d4:	01813083          	ld	ra,24(sp)
    800060d8:	01013403          	ld	s0,16(sp)
    800060dc:	00813483          	ld	s1,8(sp)
    800060e0:	00013903          	ld	s2,0(sp)
    800060e4:	02010113          	addi	sp,sp,32
    800060e8:	00008067          	ret
        ret = cap - head + tail;
    800060ec:	0004a703          	lw	a4,0(s1)
    800060f0:	4127093b          	subw	s2,a4,s2
    800060f4:	00f9093b          	addw	s2,s2,a5
    800060f8:	fc1ff06f          	j	800060b8 <_ZN9BufferCPP6getCntEv+0x44>

00000000800060fc <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800060fc:	fe010113          	addi	sp,sp,-32
    80006100:	00113c23          	sd	ra,24(sp)
    80006104:	00813823          	sd	s0,16(sp)
    80006108:	00913423          	sd	s1,8(sp)
    8000610c:	02010413          	addi	s0,sp,32
    80006110:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006114:	00a00513          	li	a0,10
    80006118:	ffffd097          	auipc	ra,0xffffd
    8000611c:	97c080e7          	jalr	-1668(ra) # 80002a94 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006120:	00003517          	auipc	a0,0x3
    80006124:	49850513          	addi	a0,a0,1176 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80006128:	00000097          	auipc	ra,0x0
    8000612c:	a0c080e7          	jalr	-1524(ra) # 80005b34 <_Z11printStringPKc>
    while (getCnt()) {
    80006130:	00048513          	mv	a0,s1
    80006134:	00000097          	auipc	ra,0x0
    80006138:	f40080e7          	jalr	-192(ra) # 80006074 <_ZN9BufferCPP6getCntEv>
    8000613c:	02050c63          	beqz	a0,80006174 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006140:	0084b783          	ld	a5,8(s1)
    80006144:	0104a703          	lw	a4,16(s1)
    80006148:	00271713          	slli	a4,a4,0x2
    8000614c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006150:	0007c503          	lbu	a0,0(a5)
    80006154:	ffffd097          	auipc	ra,0xffffd
    80006158:	940080e7          	jalr	-1728(ra) # 80002a94 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8000615c:	0104a783          	lw	a5,16(s1)
    80006160:	0017879b          	addiw	a5,a5,1
    80006164:	0004a703          	lw	a4,0(s1)
    80006168:	02e7e7bb          	remw	a5,a5,a4
    8000616c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006170:	fc1ff06f          	j	80006130 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80006174:	02100513          	li	a0,33
    80006178:	ffffd097          	auipc	ra,0xffffd
    8000617c:	91c080e7          	jalr	-1764(ra) # 80002a94 <_ZN7Console4putcEc>
    Console::putc('\n');
    80006180:	00a00513          	li	a0,10
    80006184:	ffffd097          	auipc	ra,0xffffd
    80006188:	910080e7          	jalr	-1776(ra) # 80002a94 <_ZN7Console4putcEc>
    mem_free(buffer);
    8000618c:	0084b503          	ld	a0,8(s1)
    80006190:	ffffb097          	auipc	ra,0xffffb
    80006194:	0b4080e7          	jalr	180(ra) # 80001244 <_Z8mem_freePv>
    delete itemAvailable;
    80006198:	0204b503          	ld	a0,32(s1)
    8000619c:	00050863          	beqz	a0,800061ac <_ZN9BufferCPPD1Ev+0xb0>
    800061a0:	00053783          	ld	a5,0(a0)
    800061a4:	0087b783          	ld	a5,8(a5)
    800061a8:	000780e7          	jalr	a5
    delete spaceAvailable;
    800061ac:	0184b503          	ld	a0,24(s1)
    800061b0:	00050863          	beqz	a0,800061c0 <_ZN9BufferCPPD1Ev+0xc4>
    800061b4:	00053783          	ld	a5,0(a0)
    800061b8:	0087b783          	ld	a5,8(a5)
    800061bc:	000780e7          	jalr	a5
    delete mutexTail;
    800061c0:	0304b503          	ld	a0,48(s1)
    800061c4:	00050863          	beqz	a0,800061d4 <_ZN9BufferCPPD1Ev+0xd8>
    800061c8:	00053783          	ld	a5,0(a0)
    800061cc:	0087b783          	ld	a5,8(a5)
    800061d0:	000780e7          	jalr	a5
    delete mutexHead;
    800061d4:	0284b503          	ld	a0,40(s1)
    800061d8:	00050863          	beqz	a0,800061e8 <_ZN9BufferCPPD1Ev+0xec>
    800061dc:	00053783          	ld	a5,0(a0)
    800061e0:	0087b783          	ld	a5,8(a5)
    800061e4:	000780e7          	jalr	a5
}
    800061e8:	01813083          	ld	ra,24(sp)
    800061ec:	01013403          	ld	s0,16(sp)
    800061f0:	00813483          	ld	s1,8(sp)
    800061f4:	02010113          	addi	sp,sp,32
    800061f8:	00008067          	ret

00000000800061fc <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800061fc:	fe010113          	addi	sp,sp,-32
    80006200:	00113c23          	sd	ra,24(sp)
    80006204:	00813823          	sd	s0,16(sp)
    80006208:	00913423          	sd	s1,8(sp)
    8000620c:	01213023          	sd	s2,0(sp)
    80006210:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006214:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006218:	00600493          	li	s1,6
    while (--i > 0) {
    8000621c:	fff4849b          	addiw	s1,s1,-1
    80006220:	04905463          	blez	s1,80006268 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006224:	00003517          	auipc	a0,0x3
    80006228:	3ac50513          	addi	a0,a0,940 # 800095d0 <CONSOLE_STATUS+0x5c0>
    8000622c:	00000097          	auipc	ra,0x0
    80006230:	908080e7          	jalr	-1784(ra) # 80005b34 <_Z11printStringPKc>
        printInt(sleep_time);
    80006234:	00000613          	li	a2,0
    80006238:	00a00593          	li	a1,10
    8000623c:	0009051b          	sext.w	a0,s2
    80006240:	00000097          	auipc	ra,0x0
    80006244:	aa4080e7          	jalr	-1372(ra) # 80005ce4 <_Z8printIntiii>
        printString(" !\n");
    80006248:	00003517          	auipc	a0,0x3
    8000624c:	39050513          	addi	a0,a0,912 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006250:	00000097          	auipc	ra,0x0
    80006254:	8e4080e7          	jalr	-1820(ra) # 80005b34 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006258:	00090513          	mv	a0,s2
    8000625c:	ffffb097          	auipc	ra,0xffffb
    80006260:	330080e7          	jalr	816(ra) # 8000158c <_Z10time_sleepm>
    while (--i > 0) {
    80006264:	fb9ff06f          	j	8000621c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006268:	00a00793          	li	a5,10
    8000626c:	02f95933          	divu	s2,s2,a5
    80006270:	fff90913          	addi	s2,s2,-1
    80006274:	00006797          	auipc	a5,0x6
    80006278:	c1c78793          	addi	a5,a5,-996 # 8000be90 <_ZL8finished>
    8000627c:	01278933          	add	s2,a5,s2
    80006280:	00100793          	li	a5,1
    80006284:	00f90023          	sb	a5,0(s2)
}
    80006288:	01813083          	ld	ra,24(sp)
    8000628c:	01013403          	ld	s0,16(sp)
    80006290:	00813483          	ld	s1,8(sp)
    80006294:	00013903          	ld	s2,0(sp)
    80006298:	02010113          	addi	sp,sp,32
    8000629c:	00008067          	ret

00000000800062a0 <_Z12testSleepingv>:

void testSleeping() {
    800062a0:	fc010113          	addi	sp,sp,-64
    800062a4:	02113c23          	sd	ra,56(sp)
    800062a8:	02813823          	sd	s0,48(sp)
    800062ac:	02913423          	sd	s1,40(sp)
    800062b0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800062b4:	00a00793          	li	a5,10
    800062b8:	fcf43823          	sd	a5,-48(s0)
    800062bc:	01400793          	li	a5,20
    800062c0:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800062c4:	00000493          	li	s1,0
    800062c8:	02c0006f          	j	800062f4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800062cc:	00349793          	slli	a5,s1,0x3
    800062d0:	fd040613          	addi	a2,s0,-48
    800062d4:	00f60633          	add	a2,a2,a5
    800062d8:	00000597          	auipc	a1,0x0
    800062dc:	f2458593          	addi	a1,a1,-220 # 800061fc <_ZL9sleepyRunPv>
    800062e0:	fc040513          	addi	a0,s0,-64
    800062e4:	00f50533          	add	a0,a0,a5
    800062e8:	ffffb097          	auipc	ra,0xffffb
    800062ec:	f9c080e7          	jalr	-100(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800062f0:	0014849b          	addiw	s1,s1,1
    800062f4:	00100793          	li	a5,1
    800062f8:	fc97dae3          	bge	a5,s1,800062cc <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800062fc:	00006797          	auipc	a5,0x6
    80006300:	b947c783          	lbu	a5,-1132(a5) # 8000be90 <_ZL8finished>
    80006304:	fe078ce3          	beqz	a5,800062fc <_Z12testSleepingv+0x5c>
    80006308:	00006797          	auipc	a5,0x6
    8000630c:	b897c783          	lbu	a5,-1143(a5) # 8000be91 <_ZL8finished+0x1>
    80006310:	fe0786e3          	beqz	a5,800062fc <_Z12testSleepingv+0x5c>
}
    80006314:	03813083          	ld	ra,56(sp)
    80006318:	03013403          	ld	s0,48(sp)
    8000631c:	02813483          	ld	s1,40(sp)
    80006320:	04010113          	addi	sp,sp,64
    80006324:	00008067          	ret

0000000080006328 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006328:	fe010113          	addi	sp,sp,-32
    8000632c:	00113c23          	sd	ra,24(sp)
    80006330:	00813823          	sd	s0,16(sp)
    80006334:	00913423          	sd	s1,8(sp)
    80006338:	01213023          	sd	s2,0(sp)
    8000633c:	02010413          	addi	s0,sp,32
    80006340:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006344:	00100793          	li	a5,1
    80006348:	02a7f863          	bgeu	a5,a0,80006378 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000634c:	00a00793          	li	a5,10
    80006350:	02f577b3          	remu	a5,a0,a5
    80006354:	02078e63          	beqz	a5,80006390 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006358:	fff48513          	addi	a0,s1,-1
    8000635c:	00000097          	auipc	ra,0x0
    80006360:	fcc080e7          	jalr	-52(ra) # 80006328 <_ZL9fibonaccim>
    80006364:	00050913          	mv	s2,a0
    80006368:	ffe48513          	addi	a0,s1,-2
    8000636c:	00000097          	auipc	ra,0x0
    80006370:	fbc080e7          	jalr	-68(ra) # 80006328 <_ZL9fibonaccim>
    80006374:	00a90533          	add	a0,s2,a0
}
    80006378:	01813083          	ld	ra,24(sp)
    8000637c:	01013403          	ld	s0,16(sp)
    80006380:	00813483          	ld	s1,8(sp)
    80006384:	00013903          	ld	s2,0(sp)
    80006388:	02010113          	addi	sp,sp,32
    8000638c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006390:	ffffb097          	auipc	ra,0xffffb
    80006394:	ff8080e7          	jalr	-8(ra) # 80001388 <_Z15thread_dispatchv>
    80006398:	fc1ff06f          	j	80006358 <_ZL9fibonaccim+0x30>

000000008000639c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000639c:	fe010113          	addi	sp,sp,-32
    800063a0:	00113c23          	sd	ra,24(sp)
    800063a4:	00813823          	sd	s0,16(sp)
    800063a8:	00913423          	sd	s1,8(sp)
    800063ac:	01213023          	sd	s2,0(sp)
    800063b0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800063b4:	00a00493          	li	s1,10
    800063b8:	0400006f          	j	800063f8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800063bc:	00003517          	auipc	a0,0x3
    800063c0:	1ac50513          	addi	a0,a0,428 # 80009568 <CONSOLE_STATUS+0x558>
    800063c4:	fffff097          	auipc	ra,0xfffff
    800063c8:	770080e7          	jalr	1904(ra) # 80005b34 <_Z11printStringPKc>
    800063cc:	00000613          	li	a2,0
    800063d0:	00a00593          	li	a1,10
    800063d4:	00048513          	mv	a0,s1
    800063d8:	00000097          	auipc	ra,0x0
    800063dc:	90c080e7          	jalr	-1780(ra) # 80005ce4 <_Z8printIntiii>
    800063e0:	00003517          	auipc	a0,0x3
    800063e4:	ec050513          	addi	a0,a0,-320 # 800092a0 <CONSOLE_STATUS+0x290>
    800063e8:	fffff097          	auipc	ra,0xfffff
    800063ec:	74c080e7          	jalr	1868(ra) # 80005b34 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800063f0:	0014849b          	addiw	s1,s1,1
    800063f4:	0ff4f493          	andi	s1,s1,255
    800063f8:	00c00793          	li	a5,12
    800063fc:	fc97f0e3          	bgeu	a5,s1,800063bc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006400:	00003517          	auipc	a0,0x3
    80006404:	17050513          	addi	a0,a0,368 # 80009570 <CONSOLE_STATUS+0x560>
    80006408:	fffff097          	auipc	ra,0xfffff
    8000640c:	72c080e7          	jalr	1836(ra) # 80005b34 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006410:	00500313          	li	t1,5
    thread_dispatch();
    80006414:	ffffb097          	auipc	ra,0xffffb
    80006418:	f74080e7          	jalr	-140(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000641c:	01000513          	li	a0,16
    80006420:	00000097          	auipc	ra,0x0
    80006424:	f08080e7          	jalr	-248(ra) # 80006328 <_ZL9fibonaccim>
    80006428:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000642c:	00003517          	auipc	a0,0x3
    80006430:	15450513          	addi	a0,a0,340 # 80009580 <CONSOLE_STATUS+0x570>
    80006434:	fffff097          	auipc	ra,0xfffff
    80006438:	700080e7          	jalr	1792(ra) # 80005b34 <_Z11printStringPKc>
    8000643c:	00000613          	li	a2,0
    80006440:	00a00593          	li	a1,10
    80006444:	0009051b          	sext.w	a0,s2
    80006448:	00000097          	auipc	ra,0x0
    8000644c:	89c080e7          	jalr	-1892(ra) # 80005ce4 <_Z8printIntiii>
    80006450:	00003517          	auipc	a0,0x3
    80006454:	e5050513          	addi	a0,a0,-432 # 800092a0 <CONSOLE_STATUS+0x290>
    80006458:	fffff097          	auipc	ra,0xfffff
    8000645c:	6dc080e7          	jalr	1756(ra) # 80005b34 <_Z11printStringPKc>
    80006460:	0400006f          	j	800064a0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006464:	00003517          	auipc	a0,0x3
    80006468:	10450513          	addi	a0,a0,260 # 80009568 <CONSOLE_STATUS+0x558>
    8000646c:	fffff097          	auipc	ra,0xfffff
    80006470:	6c8080e7          	jalr	1736(ra) # 80005b34 <_Z11printStringPKc>
    80006474:	00000613          	li	a2,0
    80006478:	00a00593          	li	a1,10
    8000647c:	00048513          	mv	a0,s1
    80006480:	00000097          	auipc	ra,0x0
    80006484:	864080e7          	jalr	-1948(ra) # 80005ce4 <_Z8printIntiii>
    80006488:	00003517          	auipc	a0,0x3
    8000648c:	e1850513          	addi	a0,a0,-488 # 800092a0 <CONSOLE_STATUS+0x290>
    80006490:	fffff097          	auipc	ra,0xfffff
    80006494:	6a4080e7          	jalr	1700(ra) # 80005b34 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006498:	0014849b          	addiw	s1,s1,1
    8000649c:	0ff4f493          	andi	s1,s1,255
    800064a0:	00f00793          	li	a5,15
    800064a4:	fc97f0e3          	bgeu	a5,s1,80006464 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800064a8:	00003517          	auipc	a0,0x3
    800064ac:	0e850513          	addi	a0,a0,232 # 80009590 <CONSOLE_STATUS+0x580>
    800064b0:	fffff097          	auipc	ra,0xfffff
    800064b4:	684080e7          	jalr	1668(ra) # 80005b34 <_Z11printStringPKc>
    finishedD = true;
    800064b8:	00100793          	li	a5,1
    800064bc:	00006717          	auipc	a4,0x6
    800064c0:	9cf70b23          	sb	a5,-1578(a4) # 8000be92 <_ZL9finishedD>
    thread_dispatch();
    800064c4:	ffffb097          	auipc	ra,0xffffb
    800064c8:	ec4080e7          	jalr	-316(ra) # 80001388 <_Z15thread_dispatchv>
}
    800064cc:	01813083          	ld	ra,24(sp)
    800064d0:	01013403          	ld	s0,16(sp)
    800064d4:	00813483          	ld	s1,8(sp)
    800064d8:	00013903          	ld	s2,0(sp)
    800064dc:	02010113          	addi	sp,sp,32
    800064e0:	00008067          	ret

00000000800064e4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800064e4:	fe010113          	addi	sp,sp,-32
    800064e8:	00113c23          	sd	ra,24(sp)
    800064ec:	00813823          	sd	s0,16(sp)
    800064f0:	00913423          	sd	s1,8(sp)
    800064f4:	01213023          	sd	s2,0(sp)
    800064f8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800064fc:	00000493          	li	s1,0
    80006500:	0400006f          	j	80006540 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006504:	00003517          	auipc	a0,0x3
    80006508:	ef450513          	addi	a0,a0,-268 # 800093f8 <CONSOLE_STATUS+0x3e8>
    8000650c:	fffff097          	auipc	ra,0xfffff
    80006510:	628080e7          	jalr	1576(ra) # 80005b34 <_Z11printStringPKc>
    80006514:	00000613          	li	a2,0
    80006518:	00a00593          	li	a1,10
    8000651c:	00048513          	mv	a0,s1
    80006520:	fffff097          	auipc	ra,0xfffff
    80006524:	7c4080e7          	jalr	1988(ra) # 80005ce4 <_Z8printIntiii>
    80006528:	00003517          	auipc	a0,0x3
    8000652c:	d7850513          	addi	a0,a0,-648 # 800092a0 <CONSOLE_STATUS+0x290>
    80006530:	fffff097          	auipc	ra,0xfffff
    80006534:	604080e7          	jalr	1540(ra) # 80005b34 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006538:	0014849b          	addiw	s1,s1,1
    8000653c:	0ff4f493          	andi	s1,s1,255
    80006540:	00200793          	li	a5,2
    80006544:	fc97f0e3          	bgeu	a5,s1,80006504 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006548:	00003517          	auipc	a0,0x3
    8000654c:	eb850513          	addi	a0,a0,-328 # 80009400 <CONSOLE_STATUS+0x3f0>
    80006550:	fffff097          	auipc	ra,0xfffff
    80006554:	5e4080e7          	jalr	1508(ra) # 80005b34 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006558:	00700313          	li	t1,7
    thread_dispatch();
    8000655c:	ffffb097          	auipc	ra,0xffffb
    80006560:	e2c080e7          	jalr	-468(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006564:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006568:	00003517          	auipc	a0,0x3
    8000656c:	ea850513          	addi	a0,a0,-344 # 80009410 <CONSOLE_STATUS+0x400>
    80006570:	fffff097          	auipc	ra,0xfffff
    80006574:	5c4080e7          	jalr	1476(ra) # 80005b34 <_Z11printStringPKc>
    80006578:	00000613          	li	a2,0
    8000657c:	00a00593          	li	a1,10
    80006580:	0009051b          	sext.w	a0,s2
    80006584:	fffff097          	auipc	ra,0xfffff
    80006588:	760080e7          	jalr	1888(ra) # 80005ce4 <_Z8printIntiii>
    8000658c:	00003517          	auipc	a0,0x3
    80006590:	d1450513          	addi	a0,a0,-748 # 800092a0 <CONSOLE_STATUS+0x290>
    80006594:	fffff097          	auipc	ra,0xfffff
    80006598:	5a0080e7          	jalr	1440(ra) # 80005b34 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000659c:	00c00513          	li	a0,12
    800065a0:	00000097          	auipc	ra,0x0
    800065a4:	d88080e7          	jalr	-632(ra) # 80006328 <_ZL9fibonaccim>
    800065a8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800065ac:	00003517          	auipc	a0,0x3
    800065b0:	e6c50513          	addi	a0,a0,-404 # 80009418 <CONSOLE_STATUS+0x408>
    800065b4:	fffff097          	auipc	ra,0xfffff
    800065b8:	580080e7          	jalr	1408(ra) # 80005b34 <_Z11printStringPKc>
    800065bc:	00000613          	li	a2,0
    800065c0:	00a00593          	li	a1,10
    800065c4:	0009051b          	sext.w	a0,s2
    800065c8:	fffff097          	auipc	ra,0xfffff
    800065cc:	71c080e7          	jalr	1820(ra) # 80005ce4 <_Z8printIntiii>
    800065d0:	00003517          	auipc	a0,0x3
    800065d4:	cd050513          	addi	a0,a0,-816 # 800092a0 <CONSOLE_STATUS+0x290>
    800065d8:	fffff097          	auipc	ra,0xfffff
    800065dc:	55c080e7          	jalr	1372(ra) # 80005b34 <_Z11printStringPKc>
    800065e0:	0400006f          	j	80006620 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800065e4:	00003517          	auipc	a0,0x3
    800065e8:	e1450513          	addi	a0,a0,-492 # 800093f8 <CONSOLE_STATUS+0x3e8>
    800065ec:	fffff097          	auipc	ra,0xfffff
    800065f0:	548080e7          	jalr	1352(ra) # 80005b34 <_Z11printStringPKc>
    800065f4:	00000613          	li	a2,0
    800065f8:	00a00593          	li	a1,10
    800065fc:	00048513          	mv	a0,s1
    80006600:	fffff097          	auipc	ra,0xfffff
    80006604:	6e4080e7          	jalr	1764(ra) # 80005ce4 <_Z8printIntiii>
    80006608:	00003517          	auipc	a0,0x3
    8000660c:	c9850513          	addi	a0,a0,-872 # 800092a0 <CONSOLE_STATUS+0x290>
    80006610:	fffff097          	auipc	ra,0xfffff
    80006614:	524080e7          	jalr	1316(ra) # 80005b34 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006618:	0014849b          	addiw	s1,s1,1
    8000661c:	0ff4f493          	andi	s1,s1,255
    80006620:	00500793          	li	a5,5
    80006624:	fc97f0e3          	bgeu	a5,s1,800065e4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006628:	00003517          	auipc	a0,0x3
    8000662c:	da850513          	addi	a0,a0,-600 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80006630:	fffff097          	auipc	ra,0xfffff
    80006634:	504080e7          	jalr	1284(ra) # 80005b34 <_Z11printStringPKc>
    finishedC = true;
    80006638:	00100793          	li	a5,1
    8000663c:	00006717          	auipc	a4,0x6
    80006640:	84f70ba3          	sb	a5,-1961(a4) # 8000be93 <_ZL9finishedC>
    thread_dispatch();
    80006644:	ffffb097          	auipc	ra,0xffffb
    80006648:	d44080e7          	jalr	-700(ra) # 80001388 <_Z15thread_dispatchv>
}
    8000664c:	01813083          	ld	ra,24(sp)
    80006650:	01013403          	ld	s0,16(sp)
    80006654:	00813483          	ld	s1,8(sp)
    80006658:	00013903          	ld	s2,0(sp)
    8000665c:	02010113          	addi	sp,sp,32
    80006660:	00008067          	ret

0000000080006664 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006664:	fe010113          	addi	sp,sp,-32
    80006668:	00113c23          	sd	ra,24(sp)
    8000666c:	00813823          	sd	s0,16(sp)
    80006670:	00913423          	sd	s1,8(sp)
    80006674:	01213023          	sd	s2,0(sp)
    80006678:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000667c:	00000913          	li	s2,0
    80006680:	0400006f          	j	800066c0 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006684:	ffffb097          	auipc	ra,0xffffb
    80006688:	d04080e7          	jalr	-764(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000668c:	00148493          	addi	s1,s1,1
    80006690:	000027b7          	lui	a5,0x2
    80006694:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006698:	0097ee63          	bltu	a5,s1,800066b4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000669c:	00000713          	li	a4,0
    800066a0:	000077b7          	lui	a5,0x7
    800066a4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800066a8:	fce7eee3          	bltu	a5,a4,80006684 <_ZL11workerBodyBPv+0x20>
    800066ac:	00170713          	addi	a4,a4,1
    800066b0:	ff1ff06f          	j	800066a0 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800066b4:	00a00793          	li	a5,10
    800066b8:	04f90663          	beq	s2,a5,80006704 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800066bc:	00190913          	addi	s2,s2,1
    800066c0:	00f00793          	li	a5,15
    800066c4:	0527e463          	bltu	a5,s2,8000670c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800066c8:	00003517          	auipc	a0,0x3
    800066cc:	d1850513          	addi	a0,a0,-744 # 800093e0 <CONSOLE_STATUS+0x3d0>
    800066d0:	fffff097          	auipc	ra,0xfffff
    800066d4:	464080e7          	jalr	1124(ra) # 80005b34 <_Z11printStringPKc>
    800066d8:	00000613          	li	a2,0
    800066dc:	00a00593          	li	a1,10
    800066e0:	0009051b          	sext.w	a0,s2
    800066e4:	fffff097          	auipc	ra,0xfffff
    800066e8:	600080e7          	jalr	1536(ra) # 80005ce4 <_Z8printIntiii>
    800066ec:	00003517          	auipc	a0,0x3
    800066f0:	bb450513          	addi	a0,a0,-1100 # 800092a0 <CONSOLE_STATUS+0x290>
    800066f4:	fffff097          	auipc	ra,0xfffff
    800066f8:	440080e7          	jalr	1088(ra) # 80005b34 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800066fc:	00000493          	li	s1,0
    80006700:	f91ff06f          	j	80006690 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006704:	14102ff3          	csrr	t6,sepc
    80006708:	fb5ff06f          	j	800066bc <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000670c:	00003517          	auipc	a0,0x3
    80006710:	cdc50513          	addi	a0,a0,-804 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80006714:	fffff097          	auipc	ra,0xfffff
    80006718:	420080e7          	jalr	1056(ra) # 80005b34 <_Z11printStringPKc>
    finishedB = true;
    8000671c:	00100793          	li	a5,1
    80006720:	00005717          	auipc	a4,0x5
    80006724:	76f70a23          	sb	a5,1908(a4) # 8000be94 <_ZL9finishedB>
    thread_dispatch();
    80006728:	ffffb097          	auipc	ra,0xffffb
    8000672c:	c60080e7          	jalr	-928(ra) # 80001388 <_Z15thread_dispatchv>
}
    80006730:	01813083          	ld	ra,24(sp)
    80006734:	01013403          	ld	s0,16(sp)
    80006738:	00813483          	ld	s1,8(sp)
    8000673c:	00013903          	ld	s2,0(sp)
    80006740:	02010113          	addi	sp,sp,32
    80006744:	00008067          	ret

0000000080006748 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006748:	fe010113          	addi	sp,sp,-32
    8000674c:	00113c23          	sd	ra,24(sp)
    80006750:	00813823          	sd	s0,16(sp)
    80006754:	00913423          	sd	s1,8(sp)
    80006758:	01213023          	sd	s2,0(sp)
    8000675c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006760:	00000913          	li	s2,0
    80006764:	0380006f          	j	8000679c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006768:	ffffb097          	auipc	ra,0xffffb
    8000676c:	c20080e7          	jalr	-992(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006770:	00148493          	addi	s1,s1,1
    80006774:	000027b7          	lui	a5,0x2
    80006778:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000677c:	0097ee63          	bltu	a5,s1,80006798 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006780:	00000713          	li	a4,0
    80006784:	000077b7          	lui	a5,0x7
    80006788:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000678c:	fce7eee3          	bltu	a5,a4,80006768 <_ZL11workerBodyAPv+0x20>
    80006790:	00170713          	addi	a4,a4,1
    80006794:	ff1ff06f          	j	80006784 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006798:	00190913          	addi	s2,s2,1
    8000679c:	00900793          	li	a5,9
    800067a0:	0527e063          	bltu	a5,s2,800067e0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800067a4:	00003517          	auipc	a0,0x3
    800067a8:	c2450513          	addi	a0,a0,-988 # 800093c8 <CONSOLE_STATUS+0x3b8>
    800067ac:	fffff097          	auipc	ra,0xfffff
    800067b0:	388080e7          	jalr	904(ra) # 80005b34 <_Z11printStringPKc>
    800067b4:	00000613          	li	a2,0
    800067b8:	00a00593          	li	a1,10
    800067bc:	0009051b          	sext.w	a0,s2
    800067c0:	fffff097          	auipc	ra,0xfffff
    800067c4:	524080e7          	jalr	1316(ra) # 80005ce4 <_Z8printIntiii>
    800067c8:	00003517          	auipc	a0,0x3
    800067cc:	ad850513          	addi	a0,a0,-1320 # 800092a0 <CONSOLE_STATUS+0x290>
    800067d0:	fffff097          	auipc	ra,0xfffff
    800067d4:	364080e7          	jalr	868(ra) # 80005b34 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800067d8:	00000493          	li	s1,0
    800067dc:	f99ff06f          	j	80006774 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800067e0:	00003517          	auipc	a0,0x3
    800067e4:	bf050513          	addi	a0,a0,-1040 # 800093d0 <CONSOLE_STATUS+0x3c0>
    800067e8:	fffff097          	auipc	ra,0xfffff
    800067ec:	34c080e7          	jalr	844(ra) # 80005b34 <_Z11printStringPKc>
    finishedA = true;
    800067f0:	00100793          	li	a5,1
    800067f4:	00005717          	auipc	a4,0x5
    800067f8:	6af700a3          	sb	a5,1697(a4) # 8000be95 <_ZL9finishedA>
}
    800067fc:	01813083          	ld	ra,24(sp)
    80006800:	01013403          	ld	s0,16(sp)
    80006804:	00813483          	ld	s1,8(sp)
    80006808:	00013903          	ld	s2,0(sp)
    8000680c:	02010113          	addi	sp,sp,32
    80006810:	00008067          	ret

0000000080006814 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006814:	fd010113          	addi	sp,sp,-48
    80006818:	02113423          	sd	ra,40(sp)
    8000681c:	02813023          	sd	s0,32(sp)
    80006820:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006824:	00000613          	li	a2,0
    80006828:	00000597          	auipc	a1,0x0
    8000682c:	f2058593          	addi	a1,a1,-224 # 80006748 <_ZL11workerBodyAPv>
    80006830:	fd040513          	addi	a0,s0,-48
    80006834:	ffffb097          	auipc	ra,0xffffb
    80006838:	a50080e7          	jalr	-1456(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    8000683c:	00003517          	auipc	a0,0x3
    80006840:	bfc50513          	addi	a0,a0,-1028 # 80009438 <CONSOLE_STATUS+0x428>
    80006844:	fffff097          	auipc	ra,0xfffff
    80006848:	2f0080e7          	jalr	752(ra) # 80005b34 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000684c:	00000613          	li	a2,0
    80006850:	00000597          	auipc	a1,0x0
    80006854:	e1458593          	addi	a1,a1,-492 # 80006664 <_ZL11workerBodyBPv>
    80006858:	fd840513          	addi	a0,s0,-40
    8000685c:	ffffb097          	auipc	ra,0xffffb
    80006860:	a28080e7          	jalr	-1496(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80006864:	00003517          	auipc	a0,0x3
    80006868:	bec50513          	addi	a0,a0,-1044 # 80009450 <CONSOLE_STATUS+0x440>
    8000686c:	fffff097          	auipc	ra,0xfffff
    80006870:	2c8080e7          	jalr	712(ra) # 80005b34 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006874:	00000613          	li	a2,0
    80006878:	00000597          	auipc	a1,0x0
    8000687c:	c6c58593          	addi	a1,a1,-916 # 800064e4 <_ZL11workerBodyCPv>
    80006880:	fe040513          	addi	a0,s0,-32
    80006884:	ffffb097          	auipc	ra,0xffffb
    80006888:	a00080e7          	jalr	-1536(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    8000688c:	00003517          	auipc	a0,0x3
    80006890:	bdc50513          	addi	a0,a0,-1060 # 80009468 <CONSOLE_STATUS+0x458>
    80006894:	fffff097          	auipc	ra,0xfffff
    80006898:	2a0080e7          	jalr	672(ra) # 80005b34 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000689c:	00000613          	li	a2,0
    800068a0:	00000597          	auipc	a1,0x0
    800068a4:	afc58593          	addi	a1,a1,-1284 # 8000639c <_ZL11workerBodyDPv>
    800068a8:	fe840513          	addi	a0,s0,-24
    800068ac:	ffffb097          	auipc	ra,0xffffb
    800068b0:	9d8080e7          	jalr	-1576(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800068b4:	00003517          	auipc	a0,0x3
    800068b8:	cec50513          	addi	a0,a0,-788 # 800095a0 <CONSOLE_STATUS+0x590>
    800068bc:	fffff097          	auipc	ra,0xfffff
    800068c0:	278080e7          	jalr	632(ra) # 80005b34 <_Z11printStringPKc>
    800068c4:	00c0006f          	j	800068d0 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800068c8:	ffffb097          	auipc	ra,0xffffb
    800068cc:	ac0080e7          	jalr	-1344(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800068d0:	00005797          	auipc	a5,0x5
    800068d4:	5c57c783          	lbu	a5,1477(a5) # 8000be95 <_ZL9finishedA>
    800068d8:	fe0788e3          	beqz	a5,800068c8 <_Z16System_Mode_testv+0xb4>
    800068dc:	00005797          	auipc	a5,0x5
    800068e0:	5b87c783          	lbu	a5,1464(a5) # 8000be94 <_ZL9finishedB>
    800068e4:	fe0782e3          	beqz	a5,800068c8 <_Z16System_Mode_testv+0xb4>
    800068e8:	00005797          	auipc	a5,0x5
    800068ec:	5ab7c783          	lbu	a5,1451(a5) # 8000be93 <_ZL9finishedC>
    800068f0:	fc078ce3          	beqz	a5,800068c8 <_Z16System_Mode_testv+0xb4>
    800068f4:	00005797          	auipc	a5,0x5
    800068f8:	59e7c783          	lbu	a5,1438(a5) # 8000be92 <_ZL9finishedD>
    800068fc:	fc0786e3          	beqz	a5,800068c8 <_Z16System_Mode_testv+0xb4>
    }

}
    80006900:	02813083          	ld	ra,40(sp)
    80006904:	02013403          	ld	s0,32(sp)
    80006908:	03010113          	addi	sp,sp,48
    8000690c:	00008067          	ret

0000000080006910 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006910:	fe010113          	addi	sp,sp,-32
    80006914:	00113c23          	sd	ra,24(sp)
    80006918:	00813823          	sd	s0,16(sp)
    8000691c:	00913423          	sd	s1,8(sp)
    80006920:	01213023          	sd	s2,0(sp)
    80006924:	02010413          	addi	s0,sp,32
    80006928:	00050493          	mv	s1,a0
    8000692c:	00058913          	mv	s2,a1
    80006930:	0015879b          	addiw	a5,a1,1
    80006934:	0007851b          	sext.w	a0,a5
    80006938:	00f4a023          	sw	a5,0(s1)
    8000693c:	0004a823          	sw	zero,16(s1)
    80006940:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006944:	00251513          	slli	a0,a0,0x2
    80006948:	ffffb097          	auipc	ra,0xffffb
    8000694c:	8b0080e7          	jalr	-1872(ra) # 800011f8 <_Z9mem_allocm>
    80006950:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006954:	00000593          	li	a1,0
    80006958:	02048513          	addi	a0,s1,32
    8000695c:	ffffb097          	auipc	ra,0xffffb
    80006960:	aa4080e7          	jalr	-1372(ra) # 80001400 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80006964:	00090593          	mv	a1,s2
    80006968:	01848513          	addi	a0,s1,24
    8000696c:	ffffb097          	auipc	ra,0xffffb
    80006970:	a94080e7          	jalr	-1388(ra) # 80001400 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80006974:	00100593          	li	a1,1
    80006978:	02848513          	addi	a0,s1,40
    8000697c:	ffffb097          	auipc	ra,0xffffb
    80006980:	a84080e7          	jalr	-1404(ra) # 80001400 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006984:	00100593          	li	a1,1
    80006988:	03048513          	addi	a0,s1,48
    8000698c:	ffffb097          	auipc	ra,0xffffb
    80006990:	a74080e7          	jalr	-1420(ra) # 80001400 <_Z8sem_openPP4_semj>
}
    80006994:	01813083          	ld	ra,24(sp)
    80006998:	01013403          	ld	s0,16(sp)
    8000699c:	00813483          	ld	s1,8(sp)
    800069a0:	00013903          	ld	s2,0(sp)
    800069a4:	02010113          	addi	sp,sp,32
    800069a8:	00008067          	ret

00000000800069ac <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800069ac:	fe010113          	addi	sp,sp,-32
    800069b0:	00113c23          	sd	ra,24(sp)
    800069b4:	00813823          	sd	s0,16(sp)
    800069b8:	00913423          	sd	s1,8(sp)
    800069bc:	01213023          	sd	s2,0(sp)
    800069c0:	02010413          	addi	s0,sp,32
    800069c4:	00050493          	mv	s1,a0
    800069c8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800069cc:	01853503          	ld	a0,24(a0)
    800069d0:	ffffb097          	auipc	ra,0xffffb
    800069d4:	ab4080e7          	jalr	-1356(ra) # 80001484 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800069d8:	0304b503          	ld	a0,48(s1)
    800069dc:	ffffb097          	auipc	ra,0xffffb
    800069e0:	aa8080e7          	jalr	-1368(ra) # 80001484 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800069e4:	0084b783          	ld	a5,8(s1)
    800069e8:	0144a703          	lw	a4,20(s1)
    800069ec:	00271713          	slli	a4,a4,0x2
    800069f0:	00e787b3          	add	a5,a5,a4
    800069f4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800069f8:	0144a783          	lw	a5,20(s1)
    800069fc:	0017879b          	addiw	a5,a5,1
    80006a00:	0004a703          	lw	a4,0(s1)
    80006a04:	02e7e7bb          	remw	a5,a5,a4
    80006a08:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006a0c:	0304b503          	ld	a0,48(s1)
    80006a10:	ffffb097          	auipc	ra,0xffffb
    80006a14:	ab4080e7          	jalr	-1356(ra) # 800014c4 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006a18:	0204b503          	ld	a0,32(s1)
    80006a1c:	ffffb097          	auipc	ra,0xffffb
    80006a20:	aa8080e7          	jalr	-1368(ra) # 800014c4 <_Z10sem_signalP4_sem>

}
    80006a24:	01813083          	ld	ra,24(sp)
    80006a28:	01013403          	ld	s0,16(sp)
    80006a2c:	00813483          	ld	s1,8(sp)
    80006a30:	00013903          	ld	s2,0(sp)
    80006a34:	02010113          	addi	sp,sp,32
    80006a38:	00008067          	ret

0000000080006a3c <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006a3c:	fe010113          	addi	sp,sp,-32
    80006a40:	00113c23          	sd	ra,24(sp)
    80006a44:	00813823          	sd	s0,16(sp)
    80006a48:	00913423          	sd	s1,8(sp)
    80006a4c:	01213023          	sd	s2,0(sp)
    80006a50:	02010413          	addi	s0,sp,32
    80006a54:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006a58:	02053503          	ld	a0,32(a0)
    80006a5c:	ffffb097          	auipc	ra,0xffffb
    80006a60:	a28080e7          	jalr	-1496(ra) # 80001484 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006a64:	0284b503          	ld	a0,40(s1)
    80006a68:	ffffb097          	auipc	ra,0xffffb
    80006a6c:	a1c080e7          	jalr	-1508(ra) # 80001484 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006a70:	0084b703          	ld	a4,8(s1)
    80006a74:	0104a783          	lw	a5,16(s1)
    80006a78:	00279693          	slli	a3,a5,0x2
    80006a7c:	00d70733          	add	a4,a4,a3
    80006a80:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006a84:	0017879b          	addiw	a5,a5,1
    80006a88:	0004a703          	lw	a4,0(s1)
    80006a8c:	02e7e7bb          	remw	a5,a5,a4
    80006a90:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006a94:	0284b503          	ld	a0,40(s1)
    80006a98:	ffffb097          	auipc	ra,0xffffb
    80006a9c:	a2c080e7          	jalr	-1492(ra) # 800014c4 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006aa0:	0184b503          	ld	a0,24(s1)
    80006aa4:	ffffb097          	auipc	ra,0xffffb
    80006aa8:	a20080e7          	jalr	-1504(ra) # 800014c4 <_Z10sem_signalP4_sem>

    return ret;
}
    80006aac:	00090513          	mv	a0,s2
    80006ab0:	01813083          	ld	ra,24(sp)
    80006ab4:	01013403          	ld	s0,16(sp)
    80006ab8:	00813483          	ld	s1,8(sp)
    80006abc:	00013903          	ld	s2,0(sp)
    80006ac0:	02010113          	addi	sp,sp,32
    80006ac4:	00008067          	ret

0000000080006ac8 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006ac8:	fe010113          	addi	sp,sp,-32
    80006acc:	00113c23          	sd	ra,24(sp)
    80006ad0:	00813823          	sd	s0,16(sp)
    80006ad4:	00913423          	sd	s1,8(sp)
    80006ad8:	01213023          	sd	s2,0(sp)
    80006adc:	02010413          	addi	s0,sp,32
    80006ae0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006ae4:	02853503          	ld	a0,40(a0)
    80006ae8:	ffffb097          	auipc	ra,0xffffb
    80006aec:	99c080e7          	jalr	-1636(ra) # 80001484 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006af0:	0304b503          	ld	a0,48(s1)
    80006af4:	ffffb097          	auipc	ra,0xffffb
    80006af8:	990080e7          	jalr	-1648(ra) # 80001484 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006afc:	0144a783          	lw	a5,20(s1)
    80006b00:	0104a903          	lw	s2,16(s1)
    80006b04:	0327ce63          	blt	a5,s2,80006b40 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006b08:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006b0c:	0304b503          	ld	a0,48(s1)
    80006b10:	ffffb097          	auipc	ra,0xffffb
    80006b14:	9b4080e7          	jalr	-1612(ra) # 800014c4 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006b18:	0284b503          	ld	a0,40(s1)
    80006b1c:	ffffb097          	auipc	ra,0xffffb
    80006b20:	9a8080e7          	jalr	-1624(ra) # 800014c4 <_Z10sem_signalP4_sem>

    return ret;
}
    80006b24:	00090513          	mv	a0,s2
    80006b28:	01813083          	ld	ra,24(sp)
    80006b2c:	01013403          	ld	s0,16(sp)
    80006b30:	00813483          	ld	s1,8(sp)
    80006b34:	00013903          	ld	s2,0(sp)
    80006b38:	02010113          	addi	sp,sp,32
    80006b3c:	00008067          	ret
        ret = cap - head + tail;
    80006b40:	0004a703          	lw	a4,0(s1)
    80006b44:	4127093b          	subw	s2,a4,s2
    80006b48:	00f9093b          	addw	s2,s2,a5
    80006b4c:	fc1ff06f          	j	80006b0c <_ZN6Buffer6getCntEv+0x44>

0000000080006b50 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006b50:	fe010113          	addi	sp,sp,-32
    80006b54:	00113c23          	sd	ra,24(sp)
    80006b58:	00813823          	sd	s0,16(sp)
    80006b5c:	00913423          	sd	s1,8(sp)
    80006b60:	02010413          	addi	s0,sp,32
    80006b64:	00050493          	mv	s1,a0
    putc('\n');
    80006b68:	00a00513          	li	a0,10
    80006b6c:	ffffb097          	auipc	ra,0xffffb
    80006b70:	aa0080e7          	jalr	-1376(ra) # 8000160c <_Z4putcc>
    printString("Buffer deleted!\n");
    80006b74:	00003517          	auipc	a0,0x3
    80006b78:	a4450513          	addi	a0,a0,-1468 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80006b7c:	fffff097          	auipc	ra,0xfffff
    80006b80:	fb8080e7          	jalr	-72(ra) # 80005b34 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006b84:	00048513          	mv	a0,s1
    80006b88:	00000097          	auipc	ra,0x0
    80006b8c:	f40080e7          	jalr	-192(ra) # 80006ac8 <_ZN6Buffer6getCntEv>
    80006b90:	02a05c63          	blez	a0,80006bc8 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006b94:	0084b783          	ld	a5,8(s1)
    80006b98:	0104a703          	lw	a4,16(s1)
    80006b9c:	00271713          	slli	a4,a4,0x2
    80006ba0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006ba4:	0007c503          	lbu	a0,0(a5)
    80006ba8:	ffffb097          	auipc	ra,0xffffb
    80006bac:	a64080e7          	jalr	-1436(ra) # 8000160c <_Z4putcc>
        head = (head + 1) % cap;
    80006bb0:	0104a783          	lw	a5,16(s1)
    80006bb4:	0017879b          	addiw	a5,a5,1
    80006bb8:	0004a703          	lw	a4,0(s1)
    80006bbc:	02e7e7bb          	remw	a5,a5,a4
    80006bc0:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006bc4:	fc1ff06f          	j	80006b84 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006bc8:	02100513          	li	a0,33
    80006bcc:	ffffb097          	auipc	ra,0xffffb
    80006bd0:	a40080e7          	jalr	-1472(ra) # 8000160c <_Z4putcc>
    putc('\n');
    80006bd4:	00a00513          	li	a0,10
    80006bd8:	ffffb097          	auipc	ra,0xffffb
    80006bdc:	a34080e7          	jalr	-1484(ra) # 8000160c <_Z4putcc>
    mem_free(buffer);
    80006be0:	0084b503          	ld	a0,8(s1)
    80006be4:	ffffa097          	auipc	ra,0xffffa
    80006be8:	660080e7          	jalr	1632(ra) # 80001244 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006bec:	0204b503          	ld	a0,32(s1)
    80006bf0:	ffffb097          	auipc	ra,0xffffb
    80006bf4:	854080e7          	jalr	-1964(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006bf8:	0184b503          	ld	a0,24(s1)
    80006bfc:	ffffb097          	auipc	ra,0xffffb
    80006c00:	848080e7          	jalr	-1976(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006c04:	0304b503          	ld	a0,48(s1)
    80006c08:	ffffb097          	auipc	ra,0xffffb
    80006c0c:	83c080e7          	jalr	-1988(ra) # 80001444 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006c10:	0284b503          	ld	a0,40(s1)
    80006c14:	ffffb097          	auipc	ra,0xffffb
    80006c18:	830080e7          	jalr	-2000(ra) # 80001444 <_Z9sem_closeP4_sem>
}
    80006c1c:	01813083          	ld	ra,24(sp)
    80006c20:	01013403          	ld	s0,16(sp)
    80006c24:	00813483          	ld	s1,8(sp)
    80006c28:	02010113          	addi	sp,sp,32
    80006c2c:	00008067          	ret

0000000080006c30 <start>:
    80006c30:	ff010113          	addi	sp,sp,-16
    80006c34:	00813423          	sd	s0,8(sp)
    80006c38:	01010413          	addi	s0,sp,16
    80006c3c:	300027f3          	csrr	a5,mstatus
    80006c40:	ffffe737          	lui	a4,0xffffe
    80006c44:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff16ff>
    80006c48:	00e7f7b3          	and	a5,a5,a4
    80006c4c:	00001737          	lui	a4,0x1
    80006c50:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006c54:	00e7e7b3          	or	a5,a5,a4
    80006c58:	30079073          	csrw	mstatus,a5
    80006c5c:	00000797          	auipc	a5,0x0
    80006c60:	16078793          	addi	a5,a5,352 # 80006dbc <system_main>
    80006c64:	34179073          	csrw	mepc,a5
    80006c68:	00000793          	li	a5,0
    80006c6c:	18079073          	csrw	satp,a5
    80006c70:	000107b7          	lui	a5,0x10
    80006c74:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006c78:	30279073          	csrw	medeleg,a5
    80006c7c:	30379073          	csrw	mideleg,a5
    80006c80:	104027f3          	csrr	a5,sie
    80006c84:	2227e793          	ori	a5,a5,546
    80006c88:	10479073          	csrw	sie,a5
    80006c8c:	fff00793          	li	a5,-1
    80006c90:	00a7d793          	srli	a5,a5,0xa
    80006c94:	3b079073          	csrw	pmpaddr0,a5
    80006c98:	00f00793          	li	a5,15
    80006c9c:	3a079073          	csrw	pmpcfg0,a5
    80006ca0:	f14027f3          	csrr	a5,mhartid
    80006ca4:	0200c737          	lui	a4,0x200c
    80006ca8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006cac:	0007869b          	sext.w	a3,a5
    80006cb0:	00269713          	slli	a4,a3,0x2
    80006cb4:	000f4637          	lui	a2,0xf4
    80006cb8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006cbc:	00d70733          	add	a4,a4,a3
    80006cc0:	0037979b          	slliw	a5,a5,0x3
    80006cc4:	020046b7          	lui	a3,0x2004
    80006cc8:	00d787b3          	add	a5,a5,a3
    80006ccc:	00c585b3          	add	a1,a1,a2
    80006cd0:	00371693          	slli	a3,a4,0x3
    80006cd4:	00005717          	auipc	a4,0x5
    80006cd8:	1cc70713          	addi	a4,a4,460 # 8000bea0 <timer_scratch>
    80006cdc:	00b7b023          	sd	a1,0(a5)
    80006ce0:	00d70733          	add	a4,a4,a3
    80006ce4:	00f73c23          	sd	a5,24(a4)
    80006ce8:	02c73023          	sd	a2,32(a4)
    80006cec:	34071073          	csrw	mscratch,a4
    80006cf0:	00000797          	auipc	a5,0x0
    80006cf4:	6e078793          	addi	a5,a5,1760 # 800073d0 <timervec>
    80006cf8:	30579073          	csrw	mtvec,a5
    80006cfc:	300027f3          	csrr	a5,mstatus
    80006d00:	0087e793          	ori	a5,a5,8
    80006d04:	30079073          	csrw	mstatus,a5
    80006d08:	304027f3          	csrr	a5,mie
    80006d0c:	0807e793          	ori	a5,a5,128
    80006d10:	30479073          	csrw	mie,a5
    80006d14:	f14027f3          	csrr	a5,mhartid
    80006d18:	0007879b          	sext.w	a5,a5
    80006d1c:	00078213          	mv	tp,a5
    80006d20:	30200073          	mret
    80006d24:	00813403          	ld	s0,8(sp)
    80006d28:	01010113          	addi	sp,sp,16
    80006d2c:	00008067          	ret

0000000080006d30 <timerinit>:
    80006d30:	ff010113          	addi	sp,sp,-16
    80006d34:	00813423          	sd	s0,8(sp)
    80006d38:	01010413          	addi	s0,sp,16
    80006d3c:	f14027f3          	csrr	a5,mhartid
    80006d40:	0200c737          	lui	a4,0x200c
    80006d44:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006d48:	0007869b          	sext.w	a3,a5
    80006d4c:	00269713          	slli	a4,a3,0x2
    80006d50:	000f4637          	lui	a2,0xf4
    80006d54:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006d58:	00d70733          	add	a4,a4,a3
    80006d5c:	0037979b          	slliw	a5,a5,0x3
    80006d60:	020046b7          	lui	a3,0x2004
    80006d64:	00d787b3          	add	a5,a5,a3
    80006d68:	00c585b3          	add	a1,a1,a2
    80006d6c:	00371693          	slli	a3,a4,0x3
    80006d70:	00005717          	auipc	a4,0x5
    80006d74:	13070713          	addi	a4,a4,304 # 8000bea0 <timer_scratch>
    80006d78:	00b7b023          	sd	a1,0(a5)
    80006d7c:	00d70733          	add	a4,a4,a3
    80006d80:	00f73c23          	sd	a5,24(a4)
    80006d84:	02c73023          	sd	a2,32(a4)
    80006d88:	34071073          	csrw	mscratch,a4
    80006d8c:	00000797          	auipc	a5,0x0
    80006d90:	64478793          	addi	a5,a5,1604 # 800073d0 <timervec>
    80006d94:	30579073          	csrw	mtvec,a5
    80006d98:	300027f3          	csrr	a5,mstatus
    80006d9c:	0087e793          	ori	a5,a5,8
    80006da0:	30079073          	csrw	mstatus,a5
    80006da4:	304027f3          	csrr	a5,mie
    80006da8:	0807e793          	ori	a5,a5,128
    80006dac:	30479073          	csrw	mie,a5
    80006db0:	00813403          	ld	s0,8(sp)
    80006db4:	01010113          	addi	sp,sp,16
    80006db8:	00008067          	ret

0000000080006dbc <system_main>:
    80006dbc:	fe010113          	addi	sp,sp,-32
    80006dc0:	00813823          	sd	s0,16(sp)
    80006dc4:	00913423          	sd	s1,8(sp)
    80006dc8:	00113c23          	sd	ra,24(sp)
    80006dcc:	02010413          	addi	s0,sp,32
    80006dd0:	00000097          	auipc	ra,0x0
    80006dd4:	0c4080e7          	jalr	196(ra) # 80006e94 <cpuid>
    80006dd8:	00005497          	auipc	s1,0x5
    80006ddc:	fe848493          	addi	s1,s1,-24 # 8000bdc0 <started>
    80006de0:	02050263          	beqz	a0,80006e04 <system_main+0x48>
    80006de4:	0004a783          	lw	a5,0(s1)
    80006de8:	0007879b          	sext.w	a5,a5
    80006dec:	fe078ce3          	beqz	a5,80006de4 <system_main+0x28>
    80006df0:	0ff0000f          	fence
    80006df4:	00003517          	auipc	a0,0x3
    80006df8:	81c50513          	addi	a0,a0,-2020 # 80009610 <CONSOLE_STATUS+0x600>
    80006dfc:	00001097          	auipc	ra,0x1
    80006e00:	a70080e7          	jalr	-1424(ra) # 8000786c <panic>
    80006e04:	00001097          	auipc	ra,0x1
    80006e08:	9c4080e7          	jalr	-1596(ra) # 800077c8 <consoleinit>
    80006e0c:	00001097          	auipc	ra,0x1
    80006e10:	150080e7          	jalr	336(ra) # 80007f5c <printfinit>
    80006e14:	00002517          	auipc	a0,0x2
    80006e18:	48c50513          	addi	a0,a0,1164 # 800092a0 <CONSOLE_STATUS+0x290>
    80006e1c:	00001097          	auipc	ra,0x1
    80006e20:	aac080e7          	jalr	-1364(ra) # 800078c8 <__printf>
    80006e24:	00002517          	auipc	a0,0x2
    80006e28:	7bc50513          	addi	a0,a0,1980 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80006e2c:	00001097          	auipc	ra,0x1
    80006e30:	a9c080e7          	jalr	-1380(ra) # 800078c8 <__printf>
    80006e34:	00002517          	auipc	a0,0x2
    80006e38:	46c50513          	addi	a0,a0,1132 # 800092a0 <CONSOLE_STATUS+0x290>
    80006e3c:	00001097          	auipc	ra,0x1
    80006e40:	a8c080e7          	jalr	-1396(ra) # 800078c8 <__printf>
    80006e44:	00001097          	auipc	ra,0x1
    80006e48:	4a4080e7          	jalr	1188(ra) # 800082e8 <kinit>
    80006e4c:	00000097          	auipc	ra,0x0
    80006e50:	148080e7          	jalr	328(ra) # 80006f94 <trapinit>
    80006e54:	00000097          	auipc	ra,0x0
    80006e58:	16c080e7          	jalr	364(ra) # 80006fc0 <trapinithart>
    80006e5c:	00000097          	auipc	ra,0x0
    80006e60:	5b4080e7          	jalr	1460(ra) # 80007410 <plicinit>
    80006e64:	00000097          	auipc	ra,0x0
    80006e68:	5d4080e7          	jalr	1492(ra) # 80007438 <plicinithart>
    80006e6c:	00000097          	auipc	ra,0x0
    80006e70:	078080e7          	jalr	120(ra) # 80006ee4 <userinit>
    80006e74:	0ff0000f          	fence
    80006e78:	00100793          	li	a5,1
    80006e7c:	00002517          	auipc	a0,0x2
    80006e80:	77c50513          	addi	a0,a0,1916 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80006e84:	00f4a023          	sw	a5,0(s1)
    80006e88:	00001097          	auipc	ra,0x1
    80006e8c:	a40080e7          	jalr	-1472(ra) # 800078c8 <__printf>
    80006e90:	0000006f          	j	80006e90 <system_main+0xd4>

0000000080006e94 <cpuid>:
    80006e94:	ff010113          	addi	sp,sp,-16
    80006e98:	00813423          	sd	s0,8(sp)
    80006e9c:	01010413          	addi	s0,sp,16
    80006ea0:	00020513          	mv	a0,tp
    80006ea4:	00813403          	ld	s0,8(sp)
    80006ea8:	0005051b          	sext.w	a0,a0
    80006eac:	01010113          	addi	sp,sp,16
    80006eb0:	00008067          	ret

0000000080006eb4 <mycpu>:
    80006eb4:	ff010113          	addi	sp,sp,-16
    80006eb8:	00813423          	sd	s0,8(sp)
    80006ebc:	01010413          	addi	s0,sp,16
    80006ec0:	00020793          	mv	a5,tp
    80006ec4:	00813403          	ld	s0,8(sp)
    80006ec8:	0007879b          	sext.w	a5,a5
    80006ecc:	00779793          	slli	a5,a5,0x7
    80006ed0:	00006517          	auipc	a0,0x6
    80006ed4:	00050513          	mv	a0,a0
    80006ed8:	00f50533          	add	a0,a0,a5
    80006edc:	01010113          	addi	sp,sp,16
    80006ee0:	00008067          	ret

0000000080006ee4 <userinit>:
    80006ee4:	ff010113          	addi	sp,sp,-16
    80006ee8:	00813423          	sd	s0,8(sp)
    80006eec:	01010413          	addi	s0,sp,16
    80006ef0:	00813403          	ld	s0,8(sp)
    80006ef4:	01010113          	addi	sp,sp,16
    80006ef8:	ffffb317          	auipc	t1,0xffffb
    80006efc:	77c30067          	jr	1916(t1) # 80002674 <main>

0000000080006f00 <either_copyout>:
    80006f00:	ff010113          	addi	sp,sp,-16
    80006f04:	00813023          	sd	s0,0(sp)
    80006f08:	00113423          	sd	ra,8(sp)
    80006f0c:	01010413          	addi	s0,sp,16
    80006f10:	02051663          	bnez	a0,80006f3c <either_copyout+0x3c>
    80006f14:	00058513          	mv	a0,a1
    80006f18:	00060593          	mv	a1,a2
    80006f1c:	0006861b          	sext.w	a2,a3
    80006f20:	00002097          	auipc	ra,0x2
    80006f24:	c54080e7          	jalr	-940(ra) # 80008b74 <__memmove>
    80006f28:	00813083          	ld	ra,8(sp)
    80006f2c:	00013403          	ld	s0,0(sp)
    80006f30:	00000513          	li	a0,0
    80006f34:	01010113          	addi	sp,sp,16
    80006f38:	00008067          	ret
    80006f3c:	00002517          	auipc	a0,0x2
    80006f40:	6fc50513          	addi	a0,a0,1788 # 80009638 <CONSOLE_STATUS+0x628>
    80006f44:	00001097          	auipc	ra,0x1
    80006f48:	928080e7          	jalr	-1752(ra) # 8000786c <panic>

0000000080006f4c <either_copyin>:
    80006f4c:	ff010113          	addi	sp,sp,-16
    80006f50:	00813023          	sd	s0,0(sp)
    80006f54:	00113423          	sd	ra,8(sp)
    80006f58:	01010413          	addi	s0,sp,16
    80006f5c:	02059463          	bnez	a1,80006f84 <either_copyin+0x38>
    80006f60:	00060593          	mv	a1,a2
    80006f64:	0006861b          	sext.w	a2,a3
    80006f68:	00002097          	auipc	ra,0x2
    80006f6c:	c0c080e7          	jalr	-1012(ra) # 80008b74 <__memmove>
    80006f70:	00813083          	ld	ra,8(sp)
    80006f74:	00013403          	ld	s0,0(sp)
    80006f78:	00000513          	li	a0,0
    80006f7c:	01010113          	addi	sp,sp,16
    80006f80:	00008067          	ret
    80006f84:	00002517          	auipc	a0,0x2
    80006f88:	6dc50513          	addi	a0,a0,1756 # 80009660 <CONSOLE_STATUS+0x650>
    80006f8c:	00001097          	auipc	ra,0x1
    80006f90:	8e0080e7          	jalr	-1824(ra) # 8000786c <panic>

0000000080006f94 <trapinit>:
    80006f94:	ff010113          	addi	sp,sp,-16
    80006f98:	00813423          	sd	s0,8(sp)
    80006f9c:	01010413          	addi	s0,sp,16
    80006fa0:	00813403          	ld	s0,8(sp)
    80006fa4:	00002597          	auipc	a1,0x2
    80006fa8:	6e458593          	addi	a1,a1,1764 # 80009688 <CONSOLE_STATUS+0x678>
    80006fac:	00006517          	auipc	a0,0x6
    80006fb0:	fa450513          	addi	a0,a0,-92 # 8000cf50 <tickslock>
    80006fb4:	01010113          	addi	sp,sp,16
    80006fb8:	00001317          	auipc	t1,0x1
    80006fbc:	5c030067          	jr	1472(t1) # 80008578 <initlock>

0000000080006fc0 <trapinithart>:
    80006fc0:	ff010113          	addi	sp,sp,-16
    80006fc4:	00813423          	sd	s0,8(sp)
    80006fc8:	01010413          	addi	s0,sp,16
    80006fcc:	00000797          	auipc	a5,0x0
    80006fd0:	2f478793          	addi	a5,a5,756 # 800072c0 <kernelvec>
    80006fd4:	10579073          	csrw	stvec,a5
    80006fd8:	00813403          	ld	s0,8(sp)
    80006fdc:	01010113          	addi	sp,sp,16
    80006fe0:	00008067          	ret

0000000080006fe4 <usertrap>:
    80006fe4:	ff010113          	addi	sp,sp,-16
    80006fe8:	00813423          	sd	s0,8(sp)
    80006fec:	01010413          	addi	s0,sp,16
    80006ff0:	00813403          	ld	s0,8(sp)
    80006ff4:	01010113          	addi	sp,sp,16
    80006ff8:	00008067          	ret

0000000080006ffc <usertrapret>:
    80006ffc:	ff010113          	addi	sp,sp,-16
    80007000:	00813423          	sd	s0,8(sp)
    80007004:	01010413          	addi	s0,sp,16
    80007008:	00813403          	ld	s0,8(sp)
    8000700c:	01010113          	addi	sp,sp,16
    80007010:	00008067          	ret

0000000080007014 <kerneltrap>:
    80007014:	fe010113          	addi	sp,sp,-32
    80007018:	00813823          	sd	s0,16(sp)
    8000701c:	00113c23          	sd	ra,24(sp)
    80007020:	00913423          	sd	s1,8(sp)
    80007024:	02010413          	addi	s0,sp,32
    80007028:	142025f3          	csrr	a1,scause
    8000702c:	100027f3          	csrr	a5,sstatus
    80007030:	0027f793          	andi	a5,a5,2
    80007034:	10079c63          	bnez	a5,8000714c <kerneltrap+0x138>
    80007038:	142027f3          	csrr	a5,scause
    8000703c:	0207ce63          	bltz	a5,80007078 <kerneltrap+0x64>
    80007040:	00002517          	auipc	a0,0x2
    80007044:	69050513          	addi	a0,a0,1680 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80007048:	00001097          	auipc	ra,0x1
    8000704c:	880080e7          	jalr	-1920(ra) # 800078c8 <__printf>
    80007050:	141025f3          	csrr	a1,sepc
    80007054:	14302673          	csrr	a2,stval
    80007058:	00002517          	auipc	a0,0x2
    8000705c:	68850513          	addi	a0,a0,1672 # 800096e0 <CONSOLE_STATUS+0x6d0>
    80007060:	00001097          	auipc	ra,0x1
    80007064:	868080e7          	jalr	-1944(ra) # 800078c8 <__printf>
    80007068:	00002517          	auipc	a0,0x2
    8000706c:	69050513          	addi	a0,a0,1680 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80007070:	00000097          	auipc	ra,0x0
    80007074:	7fc080e7          	jalr	2044(ra) # 8000786c <panic>
    80007078:	0ff7f713          	andi	a4,a5,255
    8000707c:	00900693          	li	a3,9
    80007080:	04d70063          	beq	a4,a3,800070c0 <kerneltrap+0xac>
    80007084:	fff00713          	li	a4,-1
    80007088:	03f71713          	slli	a4,a4,0x3f
    8000708c:	00170713          	addi	a4,a4,1
    80007090:	fae798e3          	bne	a5,a4,80007040 <kerneltrap+0x2c>
    80007094:	00000097          	auipc	ra,0x0
    80007098:	e00080e7          	jalr	-512(ra) # 80006e94 <cpuid>
    8000709c:	06050663          	beqz	a0,80007108 <kerneltrap+0xf4>
    800070a0:	144027f3          	csrr	a5,sip
    800070a4:	ffd7f793          	andi	a5,a5,-3
    800070a8:	14479073          	csrw	sip,a5
    800070ac:	01813083          	ld	ra,24(sp)
    800070b0:	01013403          	ld	s0,16(sp)
    800070b4:	00813483          	ld	s1,8(sp)
    800070b8:	02010113          	addi	sp,sp,32
    800070bc:	00008067          	ret
    800070c0:	00000097          	auipc	ra,0x0
    800070c4:	3c4080e7          	jalr	964(ra) # 80007484 <plic_claim>
    800070c8:	00a00793          	li	a5,10
    800070cc:	00050493          	mv	s1,a0
    800070d0:	06f50863          	beq	a0,a5,80007140 <kerneltrap+0x12c>
    800070d4:	fc050ce3          	beqz	a0,800070ac <kerneltrap+0x98>
    800070d8:	00050593          	mv	a1,a0
    800070dc:	00002517          	auipc	a0,0x2
    800070e0:	5d450513          	addi	a0,a0,1492 # 800096b0 <CONSOLE_STATUS+0x6a0>
    800070e4:	00000097          	auipc	ra,0x0
    800070e8:	7e4080e7          	jalr	2020(ra) # 800078c8 <__printf>
    800070ec:	01013403          	ld	s0,16(sp)
    800070f0:	01813083          	ld	ra,24(sp)
    800070f4:	00048513          	mv	a0,s1
    800070f8:	00813483          	ld	s1,8(sp)
    800070fc:	02010113          	addi	sp,sp,32
    80007100:	00000317          	auipc	t1,0x0
    80007104:	3bc30067          	jr	956(t1) # 800074bc <plic_complete>
    80007108:	00006517          	auipc	a0,0x6
    8000710c:	e4850513          	addi	a0,a0,-440 # 8000cf50 <tickslock>
    80007110:	00001097          	auipc	ra,0x1
    80007114:	48c080e7          	jalr	1164(ra) # 8000859c <acquire>
    80007118:	00005717          	auipc	a4,0x5
    8000711c:	cac70713          	addi	a4,a4,-852 # 8000bdc4 <ticks>
    80007120:	00072783          	lw	a5,0(a4)
    80007124:	00006517          	auipc	a0,0x6
    80007128:	e2c50513          	addi	a0,a0,-468 # 8000cf50 <tickslock>
    8000712c:	0017879b          	addiw	a5,a5,1
    80007130:	00f72023          	sw	a5,0(a4)
    80007134:	00001097          	auipc	ra,0x1
    80007138:	534080e7          	jalr	1332(ra) # 80008668 <release>
    8000713c:	f65ff06f          	j	800070a0 <kerneltrap+0x8c>
    80007140:	00001097          	auipc	ra,0x1
    80007144:	090080e7          	jalr	144(ra) # 800081d0 <uartintr>
    80007148:	fa5ff06f          	j	800070ec <kerneltrap+0xd8>
    8000714c:	00002517          	auipc	a0,0x2
    80007150:	54450513          	addi	a0,a0,1348 # 80009690 <CONSOLE_STATUS+0x680>
    80007154:	00000097          	auipc	ra,0x0
    80007158:	718080e7          	jalr	1816(ra) # 8000786c <panic>

000000008000715c <clockintr>:
    8000715c:	fe010113          	addi	sp,sp,-32
    80007160:	00813823          	sd	s0,16(sp)
    80007164:	00913423          	sd	s1,8(sp)
    80007168:	00113c23          	sd	ra,24(sp)
    8000716c:	02010413          	addi	s0,sp,32
    80007170:	00006497          	auipc	s1,0x6
    80007174:	de048493          	addi	s1,s1,-544 # 8000cf50 <tickslock>
    80007178:	00048513          	mv	a0,s1
    8000717c:	00001097          	auipc	ra,0x1
    80007180:	420080e7          	jalr	1056(ra) # 8000859c <acquire>
    80007184:	00005717          	auipc	a4,0x5
    80007188:	c4070713          	addi	a4,a4,-960 # 8000bdc4 <ticks>
    8000718c:	00072783          	lw	a5,0(a4)
    80007190:	01013403          	ld	s0,16(sp)
    80007194:	01813083          	ld	ra,24(sp)
    80007198:	00048513          	mv	a0,s1
    8000719c:	0017879b          	addiw	a5,a5,1
    800071a0:	00813483          	ld	s1,8(sp)
    800071a4:	00f72023          	sw	a5,0(a4)
    800071a8:	02010113          	addi	sp,sp,32
    800071ac:	00001317          	auipc	t1,0x1
    800071b0:	4bc30067          	jr	1212(t1) # 80008668 <release>

00000000800071b4 <devintr>:
    800071b4:	142027f3          	csrr	a5,scause
    800071b8:	00000513          	li	a0,0
    800071bc:	0007c463          	bltz	a5,800071c4 <devintr+0x10>
    800071c0:	00008067          	ret
    800071c4:	fe010113          	addi	sp,sp,-32
    800071c8:	00813823          	sd	s0,16(sp)
    800071cc:	00113c23          	sd	ra,24(sp)
    800071d0:	00913423          	sd	s1,8(sp)
    800071d4:	02010413          	addi	s0,sp,32
    800071d8:	0ff7f713          	andi	a4,a5,255
    800071dc:	00900693          	li	a3,9
    800071e0:	04d70c63          	beq	a4,a3,80007238 <devintr+0x84>
    800071e4:	fff00713          	li	a4,-1
    800071e8:	03f71713          	slli	a4,a4,0x3f
    800071ec:	00170713          	addi	a4,a4,1
    800071f0:	00e78c63          	beq	a5,a4,80007208 <devintr+0x54>
    800071f4:	01813083          	ld	ra,24(sp)
    800071f8:	01013403          	ld	s0,16(sp)
    800071fc:	00813483          	ld	s1,8(sp)
    80007200:	02010113          	addi	sp,sp,32
    80007204:	00008067          	ret
    80007208:	00000097          	auipc	ra,0x0
    8000720c:	c8c080e7          	jalr	-884(ra) # 80006e94 <cpuid>
    80007210:	06050663          	beqz	a0,8000727c <devintr+0xc8>
    80007214:	144027f3          	csrr	a5,sip
    80007218:	ffd7f793          	andi	a5,a5,-3
    8000721c:	14479073          	csrw	sip,a5
    80007220:	01813083          	ld	ra,24(sp)
    80007224:	01013403          	ld	s0,16(sp)
    80007228:	00813483          	ld	s1,8(sp)
    8000722c:	00200513          	li	a0,2
    80007230:	02010113          	addi	sp,sp,32
    80007234:	00008067          	ret
    80007238:	00000097          	auipc	ra,0x0
    8000723c:	24c080e7          	jalr	588(ra) # 80007484 <plic_claim>
    80007240:	00a00793          	li	a5,10
    80007244:	00050493          	mv	s1,a0
    80007248:	06f50663          	beq	a0,a5,800072b4 <devintr+0x100>
    8000724c:	00100513          	li	a0,1
    80007250:	fa0482e3          	beqz	s1,800071f4 <devintr+0x40>
    80007254:	00048593          	mv	a1,s1
    80007258:	00002517          	auipc	a0,0x2
    8000725c:	45850513          	addi	a0,a0,1112 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80007260:	00000097          	auipc	ra,0x0
    80007264:	668080e7          	jalr	1640(ra) # 800078c8 <__printf>
    80007268:	00048513          	mv	a0,s1
    8000726c:	00000097          	auipc	ra,0x0
    80007270:	250080e7          	jalr	592(ra) # 800074bc <plic_complete>
    80007274:	00100513          	li	a0,1
    80007278:	f7dff06f          	j	800071f4 <devintr+0x40>
    8000727c:	00006517          	auipc	a0,0x6
    80007280:	cd450513          	addi	a0,a0,-812 # 8000cf50 <tickslock>
    80007284:	00001097          	auipc	ra,0x1
    80007288:	318080e7          	jalr	792(ra) # 8000859c <acquire>
    8000728c:	00005717          	auipc	a4,0x5
    80007290:	b3870713          	addi	a4,a4,-1224 # 8000bdc4 <ticks>
    80007294:	00072783          	lw	a5,0(a4)
    80007298:	00006517          	auipc	a0,0x6
    8000729c:	cb850513          	addi	a0,a0,-840 # 8000cf50 <tickslock>
    800072a0:	0017879b          	addiw	a5,a5,1
    800072a4:	00f72023          	sw	a5,0(a4)
    800072a8:	00001097          	auipc	ra,0x1
    800072ac:	3c0080e7          	jalr	960(ra) # 80008668 <release>
    800072b0:	f65ff06f          	j	80007214 <devintr+0x60>
    800072b4:	00001097          	auipc	ra,0x1
    800072b8:	f1c080e7          	jalr	-228(ra) # 800081d0 <uartintr>
    800072bc:	fadff06f          	j	80007268 <devintr+0xb4>

00000000800072c0 <kernelvec>:
    800072c0:	f0010113          	addi	sp,sp,-256
    800072c4:	00113023          	sd	ra,0(sp)
    800072c8:	00213423          	sd	sp,8(sp)
    800072cc:	00313823          	sd	gp,16(sp)
    800072d0:	00413c23          	sd	tp,24(sp)
    800072d4:	02513023          	sd	t0,32(sp)
    800072d8:	02613423          	sd	t1,40(sp)
    800072dc:	02713823          	sd	t2,48(sp)
    800072e0:	02813c23          	sd	s0,56(sp)
    800072e4:	04913023          	sd	s1,64(sp)
    800072e8:	04a13423          	sd	a0,72(sp)
    800072ec:	04b13823          	sd	a1,80(sp)
    800072f0:	04c13c23          	sd	a2,88(sp)
    800072f4:	06d13023          	sd	a3,96(sp)
    800072f8:	06e13423          	sd	a4,104(sp)
    800072fc:	06f13823          	sd	a5,112(sp)
    80007300:	07013c23          	sd	a6,120(sp)
    80007304:	09113023          	sd	a7,128(sp)
    80007308:	09213423          	sd	s2,136(sp)
    8000730c:	09313823          	sd	s3,144(sp)
    80007310:	09413c23          	sd	s4,152(sp)
    80007314:	0b513023          	sd	s5,160(sp)
    80007318:	0b613423          	sd	s6,168(sp)
    8000731c:	0b713823          	sd	s7,176(sp)
    80007320:	0b813c23          	sd	s8,184(sp)
    80007324:	0d913023          	sd	s9,192(sp)
    80007328:	0da13423          	sd	s10,200(sp)
    8000732c:	0db13823          	sd	s11,208(sp)
    80007330:	0dc13c23          	sd	t3,216(sp)
    80007334:	0fd13023          	sd	t4,224(sp)
    80007338:	0fe13423          	sd	t5,232(sp)
    8000733c:	0ff13823          	sd	t6,240(sp)
    80007340:	cd5ff0ef          	jal	ra,80007014 <kerneltrap>
    80007344:	00013083          	ld	ra,0(sp)
    80007348:	00813103          	ld	sp,8(sp)
    8000734c:	01013183          	ld	gp,16(sp)
    80007350:	02013283          	ld	t0,32(sp)
    80007354:	02813303          	ld	t1,40(sp)
    80007358:	03013383          	ld	t2,48(sp)
    8000735c:	03813403          	ld	s0,56(sp)
    80007360:	04013483          	ld	s1,64(sp)
    80007364:	04813503          	ld	a0,72(sp)
    80007368:	05013583          	ld	a1,80(sp)
    8000736c:	05813603          	ld	a2,88(sp)
    80007370:	06013683          	ld	a3,96(sp)
    80007374:	06813703          	ld	a4,104(sp)
    80007378:	07013783          	ld	a5,112(sp)
    8000737c:	07813803          	ld	a6,120(sp)
    80007380:	08013883          	ld	a7,128(sp)
    80007384:	08813903          	ld	s2,136(sp)
    80007388:	09013983          	ld	s3,144(sp)
    8000738c:	09813a03          	ld	s4,152(sp)
    80007390:	0a013a83          	ld	s5,160(sp)
    80007394:	0a813b03          	ld	s6,168(sp)
    80007398:	0b013b83          	ld	s7,176(sp)
    8000739c:	0b813c03          	ld	s8,184(sp)
    800073a0:	0c013c83          	ld	s9,192(sp)
    800073a4:	0c813d03          	ld	s10,200(sp)
    800073a8:	0d013d83          	ld	s11,208(sp)
    800073ac:	0d813e03          	ld	t3,216(sp)
    800073b0:	0e013e83          	ld	t4,224(sp)
    800073b4:	0e813f03          	ld	t5,232(sp)
    800073b8:	0f013f83          	ld	t6,240(sp)
    800073bc:	10010113          	addi	sp,sp,256
    800073c0:	10200073          	sret
    800073c4:	00000013          	nop
    800073c8:	00000013          	nop
    800073cc:	00000013          	nop

00000000800073d0 <timervec>:
    800073d0:	34051573          	csrrw	a0,mscratch,a0
    800073d4:	00b53023          	sd	a1,0(a0)
    800073d8:	00c53423          	sd	a2,8(a0)
    800073dc:	00d53823          	sd	a3,16(a0)
    800073e0:	01853583          	ld	a1,24(a0)
    800073e4:	02053603          	ld	a2,32(a0)
    800073e8:	0005b683          	ld	a3,0(a1)
    800073ec:	00c686b3          	add	a3,a3,a2
    800073f0:	00d5b023          	sd	a3,0(a1)
    800073f4:	00200593          	li	a1,2
    800073f8:	14459073          	csrw	sip,a1
    800073fc:	01053683          	ld	a3,16(a0)
    80007400:	00853603          	ld	a2,8(a0)
    80007404:	00053583          	ld	a1,0(a0)
    80007408:	34051573          	csrrw	a0,mscratch,a0
    8000740c:	30200073          	mret

0000000080007410 <plicinit>:
    80007410:	ff010113          	addi	sp,sp,-16
    80007414:	00813423          	sd	s0,8(sp)
    80007418:	01010413          	addi	s0,sp,16
    8000741c:	00813403          	ld	s0,8(sp)
    80007420:	0c0007b7          	lui	a5,0xc000
    80007424:	00100713          	li	a4,1
    80007428:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000742c:	00e7a223          	sw	a4,4(a5)
    80007430:	01010113          	addi	sp,sp,16
    80007434:	00008067          	ret

0000000080007438 <plicinithart>:
    80007438:	ff010113          	addi	sp,sp,-16
    8000743c:	00813023          	sd	s0,0(sp)
    80007440:	00113423          	sd	ra,8(sp)
    80007444:	01010413          	addi	s0,sp,16
    80007448:	00000097          	auipc	ra,0x0
    8000744c:	a4c080e7          	jalr	-1460(ra) # 80006e94 <cpuid>
    80007450:	0085171b          	slliw	a4,a0,0x8
    80007454:	0c0027b7          	lui	a5,0xc002
    80007458:	00e787b3          	add	a5,a5,a4
    8000745c:	40200713          	li	a4,1026
    80007460:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007464:	00813083          	ld	ra,8(sp)
    80007468:	00013403          	ld	s0,0(sp)
    8000746c:	00d5151b          	slliw	a0,a0,0xd
    80007470:	0c2017b7          	lui	a5,0xc201
    80007474:	00a78533          	add	a0,a5,a0
    80007478:	00052023          	sw	zero,0(a0)
    8000747c:	01010113          	addi	sp,sp,16
    80007480:	00008067          	ret

0000000080007484 <plic_claim>:
    80007484:	ff010113          	addi	sp,sp,-16
    80007488:	00813023          	sd	s0,0(sp)
    8000748c:	00113423          	sd	ra,8(sp)
    80007490:	01010413          	addi	s0,sp,16
    80007494:	00000097          	auipc	ra,0x0
    80007498:	a00080e7          	jalr	-1536(ra) # 80006e94 <cpuid>
    8000749c:	00813083          	ld	ra,8(sp)
    800074a0:	00013403          	ld	s0,0(sp)
    800074a4:	00d5151b          	slliw	a0,a0,0xd
    800074a8:	0c2017b7          	lui	a5,0xc201
    800074ac:	00a78533          	add	a0,a5,a0
    800074b0:	00452503          	lw	a0,4(a0)
    800074b4:	01010113          	addi	sp,sp,16
    800074b8:	00008067          	ret

00000000800074bc <plic_complete>:
    800074bc:	fe010113          	addi	sp,sp,-32
    800074c0:	00813823          	sd	s0,16(sp)
    800074c4:	00913423          	sd	s1,8(sp)
    800074c8:	00113c23          	sd	ra,24(sp)
    800074cc:	02010413          	addi	s0,sp,32
    800074d0:	00050493          	mv	s1,a0
    800074d4:	00000097          	auipc	ra,0x0
    800074d8:	9c0080e7          	jalr	-1600(ra) # 80006e94 <cpuid>
    800074dc:	01813083          	ld	ra,24(sp)
    800074e0:	01013403          	ld	s0,16(sp)
    800074e4:	00d5179b          	slliw	a5,a0,0xd
    800074e8:	0c201737          	lui	a4,0xc201
    800074ec:	00f707b3          	add	a5,a4,a5
    800074f0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800074f4:	00813483          	ld	s1,8(sp)
    800074f8:	02010113          	addi	sp,sp,32
    800074fc:	00008067          	ret

0000000080007500 <consolewrite>:
    80007500:	fb010113          	addi	sp,sp,-80
    80007504:	04813023          	sd	s0,64(sp)
    80007508:	04113423          	sd	ra,72(sp)
    8000750c:	02913c23          	sd	s1,56(sp)
    80007510:	03213823          	sd	s2,48(sp)
    80007514:	03313423          	sd	s3,40(sp)
    80007518:	03413023          	sd	s4,32(sp)
    8000751c:	01513c23          	sd	s5,24(sp)
    80007520:	05010413          	addi	s0,sp,80
    80007524:	06c05c63          	blez	a2,8000759c <consolewrite+0x9c>
    80007528:	00060993          	mv	s3,a2
    8000752c:	00050a13          	mv	s4,a0
    80007530:	00058493          	mv	s1,a1
    80007534:	00000913          	li	s2,0
    80007538:	fff00a93          	li	s5,-1
    8000753c:	01c0006f          	j	80007558 <consolewrite+0x58>
    80007540:	fbf44503          	lbu	a0,-65(s0)
    80007544:	0019091b          	addiw	s2,s2,1
    80007548:	00148493          	addi	s1,s1,1
    8000754c:	00001097          	auipc	ra,0x1
    80007550:	a9c080e7          	jalr	-1380(ra) # 80007fe8 <uartputc>
    80007554:	03298063          	beq	s3,s2,80007574 <consolewrite+0x74>
    80007558:	00048613          	mv	a2,s1
    8000755c:	00100693          	li	a3,1
    80007560:	000a0593          	mv	a1,s4
    80007564:	fbf40513          	addi	a0,s0,-65
    80007568:	00000097          	auipc	ra,0x0
    8000756c:	9e4080e7          	jalr	-1564(ra) # 80006f4c <either_copyin>
    80007570:	fd5518e3          	bne	a0,s5,80007540 <consolewrite+0x40>
    80007574:	04813083          	ld	ra,72(sp)
    80007578:	04013403          	ld	s0,64(sp)
    8000757c:	03813483          	ld	s1,56(sp)
    80007580:	02813983          	ld	s3,40(sp)
    80007584:	02013a03          	ld	s4,32(sp)
    80007588:	01813a83          	ld	s5,24(sp)
    8000758c:	00090513          	mv	a0,s2
    80007590:	03013903          	ld	s2,48(sp)
    80007594:	05010113          	addi	sp,sp,80
    80007598:	00008067          	ret
    8000759c:	00000913          	li	s2,0
    800075a0:	fd5ff06f          	j	80007574 <consolewrite+0x74>

00000000800075a4 <consoleread>:
    800075a4:	f9010113          	addi	sp,sp,-112
    800075a8:	06813023          	sd	s0,96(sp)
    800075ac:	04913c23          	sd	s1,88(sp)
    800075b0:	05213823          	sd	s2,80(sp)
    800075b4:	05313423          	sd	s3,72(sp)
    800075b8:	05413023          	sd	s4,64(sp)
    800075bc:	03513c23          	sd	s5,56(sp)
    800075c0:	03613823          	sd	s6,48(sp)
    800075c4:	03713423          	sd	s7,40(sp)
    800075c8:	03813023          	sd	s8,32(sp)
    800075cc:	06113423          	sd	ra,104(sp)
    800075d0:	01913c23          	sd	s9,24(sp)
    800075d4:	07010413          	addi	s0,sp,112
    800075d8:	00060b93          	mv	s7,a2
    800075dc:	00050913          	mv	s2,a0
    800075e0:	00058c13          	mv	s8,a1
    800075e4:	00060b1b          	sext.w	s6,a2
    800075e8:	00006497          	auipc	s1,0x6
    800075ec:	99048493          	addi	s1,s1,-1648 # 8000cf78 <cons>
    800075f0:	00400993          	li	s3,4
    800075f4:	fff00a13          	li	s4,-1
    800075f8:	00a00a93          	li	s5,10
    800075fc:	05705e63          	blez	s7,80007658 <consoleread+0xb4>
    80007600:	09c4a703          	lw	a4,156(s1)
    80007604:	0984a783          	lw	a5,152(s1)
    80007608:	0007071b          	sext.w	a4,a4
    8000760c:	08e78463          	beq	a5,a4,80007694 <consoleread+0xf0>
    80007610:	07f7f713          	andi	a4,a5,127
    80007614:	00e48733          	add	a4,s1,a4
    80007618:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000761c:	0017869b          	addiw	a3,a5,1
    80007620:	08d4ac23          	sw	a3,152(s1)
    80007624:	00070c9b          	sext.w	s9,a4
    80007628:	0b370663          	beq	a4,s3,800076d4 <consoleread+0x130>
    8000762c:	00100693          	li	a3,1
    80007630:	f9f40613          	addi	a2,s0,-97
    80007634:	000c0593          	mv	a1,s8
    80007638:	00090513          	mv	a0,s2
    8000763c:	f8e40fa3          	sb	a4,-97(s0)
    80007640:	00000097          	auipc	ra,0x0
    80007644:	8c0080e7          	jalr	-1856(ra) # 80006f00 <either_copyout>
    80007648:	01450863          	beq	a0,s4,80007658 <consoleread+0xb4>
    8000764c:	001c0c13          	addi	s8,s8,1
    80007650:	fffb8b9b          	addiw	s7,s7,-1
    80007654:	fb5c94e3          	bne	s9,s5,800075fc <consoleread+0x58>
    80007658:	000b851b          	sext.w	a0,s7
    8000765c:	06813083          	ld	ra,104(sp)
    80007660:	06013403          	ld	s0,96(sp)
    80007664:	05813483          	ld	s1,88(sp)
    80007668:	05013903          	ld	s2,80(sp)
    8000766c:	04813983          	ld	s3,72(sp)
    80007670:	04013a03          	ld	s4,64(sp)
    80007674:	03813a83          	ld	s5,56(sp)
    80007678:	02813b83          	ld	s7,40(sp)
    8000767c:	02013c03          	ld	s8,32(sp)
    80007680:	01813c83          	ld	s9,24(sp)
    80007684:	40ab053b          	subw	a0,s6,a0
    80007688:	03013b03          	ld	s6,48(sp)
    8000768c:	07010113          	addi	sp,sp,112
    80007690:	00008067          	ret
    80007694:	00001097          	auipc	ra,0x1
    80007698:	1d8080e7          	jalr	472(ra) # 8000886c <push_on>
    8000769c:	0984a703          	lw	a4,152(s1)
    800076a0:	09c4a783          	lw	a5,156(s1)
    800076a4:	0007879b          	sext.w	a5,a5
    800076a8:	fef70ce3          	beq	a4,a5,800076a0 <consoleread+0xfc>
    800076ac:	00001097          	auipc	ra,0x1
    800076b0:	234080e7          	jalr	564(ra) # 800088e0 <pop_on>
    800076b4:	0984a783          	lw	a5,152(s1)
    800076b8:	07f7f713          	andi	a4,a5,127
    800076bc:	00e48733          	add	a4,s1,a4
    800076c0:	01874703          	lbu	a4,24(a4)
    800076c4:	0017869b          	addiw	a3,a5,1
    800076c8:	08d4ac23          	sw	a3,152(s1)
    800076cc:	00070c9b          	sext.w	s9,a4
    800076d0:	f5371ee3          	bne	a4,s3,8000762c <consoleread+0x88>
    800076d4:	000b851b          	sext.w	a0,s7
    800076d8:	f96bf2e3          	bgeu	s7,s6,8000765c <consoleread+0xb8>
    800076dc:	08f4ac23          	sw	a5,152(s1)
    800076e0:	f7dff06f          	j	8000765c <consoleread+0xb8>

00000000800076e4 <consputc>:
    800076e4:	10000793          	li	a5,256
    800076e8:	00f50663          	beq	a0,a5,800076f4 <consputc+0x10>
    800076ec:	00001317          	auipc	t1,0x1
    800076f0:	9f430067          	jr	-1548(t1) # 800080e0 <uartputc_sync>
    800076f4:	ff010113          	addi	sp,sp,-16
    800076f8:	00113423          	sd	ra,8(sp)
    800076fc:	00813023          	sd	s0,0(sp)
    80007700:	01010413          	addi	s0,sp,16
    80007704:	00800513          	li	a0,8
    80007708:	00001097          	auipc	ra,0x1
    8000770c:	9d8080e7          	jalr	-1576(ra) # 800080e0 <uartputc_sync>
    80007710:	02000513          	li	a0,32
    80007714:	00001097          	auipc	ra,0x1
    80007718:	9cc080e7          	jalr	-1588(ra) # 800080e0 <uartputc_sync>
    8000771c:	00013403          	ld	s0,0(sp)
    80007720:	00813083          	ld	ra,8(sp)
    80007724:	00800513          	li	a0,8
    80007728:	01010113          	addi	sp,sp,16
    8000772c:	00001317          	auipc	t1,0x1
    80007730:	9b430067          	jr	-1612(t1) # 800080e0 <uartputc_sync>

0000000080007734 <consoleintr>:
    80007734:	fe010113          	addi	sp,sp,-32
    80007738:	00813823          	sd	s0,16(sp)
    8000773c:	00913423          	sd	s1,8(sp)
    80007740:	01213023          	sd	s2,0(sp)
    80007744:	00113c23          	sd	ra,24(sp)
    80007748:	02010413          	addi	s0,sp,32
    8000774c:	00006917          	auipc	s2,0x6
    80007750:	82c90913          	addi	s2,s2,-2004 # 8000cf78 <cons>
    80007754:	00050493          	mv	s1,a0
    80007758:	00090513          	mv	a0,s2
    8000775c:	00001097          	auipc	ra,0x1
    80007760:	e40080e7          	jalr	-448(ra) # 8000859c <acquire>
    80007764:	02048c63          	beqz	s1,8000779c <consoleintr+0x68>
    80007768:	0a092783          	lw	a5,160(s2)
    8000776c:	09892703          	lw	a4,152(s2)
    80007770:	07f00693          	li	a3,127
    80007774:	40e7873b          	subw	a4,a5,a4
    80007778:	02e6e263          	bltu	a3,a4,8000779c <consoleintr+0x68>
    8000777c:	00d00713          	li	a4,13
    80007780:	04e48063          	beq	s1,a4,800077c0 <consoleintr+0x8c>
    80007784:	07f7f713          	andi	a4,a5,127
    80007788:	00e90733          	add	a4,s2,a4
    8000778c:	0017879b          	addiw	a5,a5,1
    80007790:	0af92023          	sw	a5,160(s2)
    80007794:	00970c23          	sb	s1,24(a4)
    80007798:	08f92e23          	sw	a5,156(s2)
    8000779c:	01013403          	ld	s0,16(sp)
    800077a0:	01813083          	ld	ra,24(sp)
    800077a4:	00813483          	ld	s1,8(sp)
    800077a8:	00013903          	ld	s2,0(sp)
    800077ac:	00005517          	auipc	a0,0x5
    800077b0:	7cc50513          	addi	a0,a0,1996 # 8000cf78 <cons>
    800077b4:	02010113          	addi	sp,sp,32
    800077b8:	00001317          	auipc	t1,0x1
    800077bc:	eb030067          	jr	-336(t1) # 80008668 <release>
    800077c0:	00a00493          	li	s1,10
    800077c4:	fc1ff06f          	j	80007784 <consoleintr+0x50>

00000000800077c8 <consoleinit>:
    800077c8:	fe010113          	addi	sp,sp,-32
    800077cc:	00113c23          	sd	ra,24(sp)
    800077d0:	00813823          	sd	s0,16(sp)
    800077d4:	00913423          	sd	s1,8(sp)
    800077d8:	02010413          	addi	s0,sp,32
    800077dc:	00005497          	auipc	s1,0x5
    800077e0:	79c48493          	addi	s1,s1,1948 # 8000cf78 <cons>
    800077e4:	00048513          	mv	a0,s1
    800077e8:	00002597          	auipc	a1,0x2
    800077ec:	f2058593          	addi	a1,a1,-224 # 80009708 <CONSOLE_STATUS+0x6f8>
    800077f0:	00001097          	auipc	ra,0x1
    800077f4:	d88080e7          	jalr	-632(ra) # 80008578 <initlock>
    800077f8:	00000097          	auipc	ra,0x0
    800077fc:	7ac080e7          	jalr	1964(ra) # 80007fa4 <uartinit>
    80007800:	01813083          	ld	ra,24(sp)
    80007804:	01013403          	ld	s0,16(sp)
    80007808:	00000797          	auipc	a5,0x0
    8000780c:	d9c78793          	addi	a5,a5,-612 # 800075a4 <consoleread>
    80007810:	0af4bc23          	sd	a5,184(s1)
    80007814:	00000797          	auipc	a5,0x0
    80007818:	cec78793          	addi	a5,a5,-788 # 80007500 <consolewrite>
    8000781c:	0cf4b023          	sd	a5,192(s1)
    80007820:	00813483          	ld	s1,8(sp)
    80007824:	02010113          	addi	sp,sp,32
    80007828:	00008067          	ret

000000008000782c <console_read>:
    8000782c:	ff010113          	addi	sp,sp,-16
    80007830:	00813423          	sd	s0,8(sp)
    80007834:	01010413          	addi	s0,sp,16
    80007838:	00813403          	ld	s0,8(sp)
    8000783c:	00005317          	auipc	t1,0x5
    80007840:	7f433303          	ld	t1,2036(t1) # 8000d030 <devsw+0x10>
    80007844:	01010113          	addi	sp,sp,16
    80007848:	00030067          	jr	t1

000000008000784c <console_write>:
    8000784c:	ff010113          	addi	sp,sp,-16
    80007850:	00813423          	sd	s0,8(sp)
    80007854:	01010413          	addi	s0,sp,16
    80007858:	00813403          	ld	s0,8(sp)
    8000785c:	00005317          	auipc	t1,0x5
    80007860:	7dc33303          	ld	t1,2012(t1) # 8000d038 <devsw+0x18>
    80007864:	01010113          	addi	sp,sp,16
    80007868:	00030067          	jr	t1

000000008000786c <panic>:
    8000786c:	fe010113          	addi	sp,sp,-32
    80007870:	00113c23          	sd	ra,24(sp)
    80007874:	00813823          	sd	s0,16(sp)
    80007878:	00913423          	sd	s1,8(sp)
    8000787c:	02010413          	addi	s0,sp,32
    80007880:	00050493          	mv	s1,a0
    80007884:	00002517          	auipc	a0,0x2
    80007888:	e8c50513          	addi	a0,a0,-372 # 80009710 <CONSOLE_STATUS+0x700>
    8000788c:	00006797          	auipc	a5,0x6
    80007890:	8407a623          	sw	zero,-1972(a5) # 8000d0d8 <pr+0x18>
    80007894:	00000097          	auipc	ra,0x0
    80007898:	034080e7          	jalr	52(ra) # 800078c8 <__printf>
    8000789c:	00048513          	mv	a0,s1
    800078a0:	00000097          	auipc	ra,0x0
    800078a4:	028080e7          	jalr	40(ra) # 800078c8 <__printf>
    800078a8:	00002517          	auipc	a0,0x2
    800078ac:	9f850513          	addi	a0,a0,-1544 # 800092a0 <CONSOLE_STATUS+0x290>
    800078b0:	00000097          	auipc	ra,0x0
    800078b4:	018080e7          	jalr	24(ra) # 800078c8 <__printf>
    800078b8:	00100793          	li	a5,1
    800078bc:	00004717          	auipc	a4,0x4
    800078c0:	50f72623          	sw	a5,1292(a4) # 8000bdc8 <panicked>
    800078c4:	0000006f          	j	800078c4 <panic+0x58>

00000000800078c8 <__printf>:
    800078c8:	f3010113          	addi	sp,sp,-208
    800078cc:	08813023          	sd	s0,128(sp)
    800078d0:	07313423          	sd	s3,104(sp)
    800078d4:	09010413          	addi	s0,sp,144
    800078d8:	05813023          	sd	s8,64(sp)
    800078dc:	08113423          	sd	ra,136(sp)
    800078e0:	06913c23          	sd	s1,120(sp)
    800078e4:	07213823          	sd	s2,112(sp)
    800078e8:	07413023          	sd	s4,96(sp)
    800078ec:	05513c23          	sd	s5,88(sp)
    800078f0:	05613823          	sd	s6,80(sp)
    800078f4:	05713423          	sd	s7,72(sp)
    800078f8:	03913c23          	sd	s9,56(sp)
    800078fc:	03a13823          	sd	s10,48(sp)
    80007900:	03b13423          	sd	s11,40(sp)
    80007904:	00005317          	auipc	t1,0x5
    80007908:	7bc30313          	addi	t1,t1,1980 # 8000d0c0 <pr>
    8000790c:	01832c03          	lw	s8,24(t1)
    80007910:	00b43423          	sd	a1,8(s0)
    80007914:	00c43823          	sd	a2,16(s0)
    80007918:	00d43c23          	sd	a3,24(s0)
    8000791c:	02e43023          	sd	a4,32(s0)
    80007920:	02f43423          	sd	a5,40(s0)
    80007924:	03043823          	sd	a6,48(s0)
    80007928:	03143c23          	sd	a7,56(s0)
    8000792c:	00050993          	mv	s3,a0
    80007930:	4a0c1663          	bnez	s8,80007ddc <__printf+0x514>
    80007934:	60098c63          	beqz	s3,80007f4c <__printf+0x684>
    80007938:	0009c503          	lbu	a0,0(s3)
    8000793c:	00840793          	addi	a5,s0,8
    80007940:	f6f43c23          	sd	a5,-136(s0)
    80007944:	00000493          	li	s1,0
    80007948:	22050063          	beqz	a0,80007b68 <__printf+0x2a0>
    8000794c:	00002a37          	lui	s4,0x2
    80007950:	00018ab7          	lui	s5,0x18
    80007954:	000f4b37          	lui	s6,0xf4
    80007958:	00989bb7          	lui	s7,0x989
    8000795c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007960:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007964:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007968:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000796c:	00148c9b          	addiw	s9,s1,1
    80007970:	02500793          	li	a5,37
    80007974:	01998933          	add	s2,s3,s9
    80007978:	38f51263          	bne	a0,a5,80007cfc <__printf+0x434>
    8000797c:	00094783          	lbu	a5,0(s2)
    80007980:	00078c9b          	sext.w	s9,a5
    80007984:	1e078263          	beqz	a5,80007b68 <__printf+0x2a0>
    80007988:	0024849b          	addiw	s1,s1,2
    8000798c:	07000713          	li	a4,112
    80007990:	00998933          	add	s2,s3,s1
    80007994:	38e78a63          	beq	a5,a4,80007d28 <__printf+0x460>
    80007998:	20f76863          	bltu	a4,a5,80007ba8 <__printf+0x2e0>
    8000799c:	42a78863          	beq	a5,a0,80007dcc <__printf+0x504>
    800079a0:	06400713          	li	a4,100
    800079a4:	40e79663          	bne	a5,a4,80007db0 <__printf+0x4e8>
    800079a8:	f7843783          	ld	a5,-136(s0)
    800079ac:	0007a603          	lw	a2,0(a5)
    800079b0:	00878793          	addi	a5,a5,8
    800079b4:	f6f43c23          	sd	a5,-136(s0)
    800079b8:	42064a63          	bltz	a2,80007dec <__printf+0x524>
    800079bc:	00a00713          	li	a4,10
    800079c0:	02e677bb          	remuw	a5,a2,a4
    800079c4:	00002d97          	auipc	s11,0x2
    800079c8:	d74d8d93          	addi	s11,s11,-652 # 80009738 <digits>
    800079cc:	00900593          	li	a1,9
    800079d0:	0006051b          	sext.w	a0,a2
    800079d4:	00000c93          	li	s9,0
    800079d8:	02079793          	slli	a5,a5,0x20
    800079dc:	0207d793          	srli	a5,a5,0x20
    800079e0:	00fd87b3          	add	a5,s11,a5
    800079e4:	0007c783          	lbu	a5,0(a5)
    800079e8:	02e656bb          	divuw	a3,a2,a4
    800079ec:	f8f40023          	sb	a5,-128(s0)
    800079f0:	14c5d863          	bge	a1,a2,80007b40 <__printf+0x278>
    800079f4:	06300593          	li	a1,99
    800079f8:	00100c93          	li	s9,1
    800079fc:	02e6f7bb          	remuw	a5,a3,a4
    80007a00:	02079793          	slli	a5,a5,0x20
    80007a04:	0207d793          	srli	a5,a5,0x20
    80007a08:	00fd87b3          	add	a5,s11,a5
    80007a0c:	0007c783          	lbu	a5,0(a5)
    80007a10:	02e6d73b          	divuw	a4,a3,a4
    80007a14:	f8f400a3          	sb	a5,-127(s0)
    80007a18:	12a5f463          	bgeu	a1,a0,80007b40 <__printf+0x278>
    80007a1c:	00a00693          	li	a3,10
    80007a20:	00900593          	li	a1,9
    80007a24:	02d777bb          	remuw	a5,a4,a3
    80007a28:	02079793          	slli	a5,a5,0x20
    80007a2c:	0207d793          	srli	a5,a5,0x20
    80007a30:	00fd87b3          	add	a5,s11,a5
    80007a34:	0007c503          	lbu	a0,0(a5)
    80007a38:	02d757bb          	divuw	a5,a4,a3
    80007a3c:	f8a40123          	sb	a0,-126(s0)
    80007a40:	48e5f263          	bgeu	a1,a4,80007ec4 <__printf+0x5fc>
    80007a44:	06300513          	li	a0,99
    80007a48:	02d7f5bb          	remuw	a1,a5,a3
    80007a4c:	02059593          	slli	a1,a1,0x20
    80007a50:	0205d593          	srli	a1,a1,0x20
    80007a54:	00bd85b3          	add	a1,s11,a1
    80007a58:	0005c583          	lbu	a1,0(a1)
    80007a5c:	02d7d7bb          	divuw	a5,a5,a3
    80007a60:	f8b401a3          	sb	a1,-125(s0)
    80007a64:	48e57263          	bgeu	a0,a4,80007ee8 <__printf+0x620>
    80007a68:	3e700513          	li	a0,999
    80007a6c:	02d7f5bb          	remuw	a1,a5,a3
    80007a70:	02059593          	slli	a1,a1,0x20
    80007a74:	0205d593          	srli	a1,a1,0x20
    80007a78:	00bd85b3          	add	a1,s11,a1
    80007a7c:	0005c583          	lbu	a1,0(a1)
    80007a80:	02d7d7bb          	divuw	a5,a5,a3
    80007a84:	f8b40223          	sb	a1,-124(s0)
    80007a88:	46e57663          	bgeu	a0,a4,80007ef4 <__printf+0x62c>
    80007a8c:	02d7f5bb          	remuw	a1,a5,a3
    80007a90:	02059593          	slli	a1,a1,0x20
    80007a94:	0205d593          	srli	a1,a1,0x20
    80007a98:	00bd85b3          	add	a1,s11,a1
    80007a9c:	0005c583          	lbu	a1,0(a1)
    80007aa0:	02d7d7bb          	divuw	a5,a5,a3
    80007aa4:	f8b402a3          	sb	a1,-123(s0)
    80007aa8:	46ea7863          	bgeu	s4,a4,80007f18 <__printf+0x650>
    80007aac:	02d7f5bb          	remuw	a1,a5,a3
    80007ab0:	02059593          	slli	a1,a1,0x20
    80007ab4:	0205d593          	srli	a1,a1,0x20
    80007ab8:	00bd85b3          	add	a1,s11,a1
    80007abc:	0005c583          	lbu	a1,0(a1)
    80007ac0:	02d7d7bb          	divuw	a5,a5,a3
    80007ac4:	f8b40323          	sb	a1,-122(s0)
    80007ac8:	3eeaf863          	bgeu	s5,a4,80007eb8 <__printf+0x5f0>
    80007acc:	02d7f5bb          	remuw	a1,a5,a3
    80007ad0:	02059593          	slli	a1,a1,0x20
    80007ad4:	0205d593          	srli	a1,a1,0x20
    80007ad8:	00bd85b3          	add	a1,s11,a1
    80007adc:	0005c583          	lbu	a1,0(a1)
    80007ae0:	02d7d7bb          	divuw	a5,a5,a3
    80007ae4:	f8b403a3          	sb	a1,-121(s0)
    80007ae8:	42eb7e63          	bgeu	s6,a4,80007f24 <__printf+0x65c>
    80007aec:	02d7f5bb          	remuw	a1,a5,a3
    80007af0:	02059593          	slli	a1,a1,0x20
    80007af4:	0205d593          	srli	a1,a1,0x20
    80007af8:	00bd85b3          	add	a1,s11,a1
    80007afc:	0005c583          	lbu	a1,0(a1)
    80007b00:	02d7d7bb          	divuw	a5,a5,a3
    80007b04:	f8b40423          	sb	a1,-120(s0)
    80007b08:	42ebfc63          	bgeu	s7,a4,80007f40 <__printf+0x678>
    80007b0c:	02079793          	slli	a5,a5,0x20
    80007b10:	0207d793          	srli	a5,a5,0x20
    80007b14:	00fd8db3          	add	s11,s11,a5
    80007b18:	000dc703          	lbu	a4,0(s11)
    80007b1c:	00a00793          	li	a5,10
    80007b20:	00900c93          	li	s9,9
    80007b24:	f8e404a3          	sb	a4,-119(s0)
    80007b28:	00065c63          	bgez	a2,80007b40 <__printf+0x278>
    80007b2c:	f9040713          	addi	a4,s0,-112
    80007b30:	00f70733          	add	a4,a4,a5
    80007b34:	02d00693          	li	a3,45
    80007b38:	fed70823          	sb	a3,-16(a4)
    80007b3c:	00078c93          	mv	s9,a5
    80007b40:	f8040793          	addi	a5,s0,-128
    80007b44:	01978cb3          	add	s9,a5,s9
    80007b48:	f7f40d13          	addi	s10,s0,-129
    80007b4c:	000cc503          	lbu	a0,0(s9)
    80007b50:	fffc8c93          	addi	s9,s9,-1
    80007b54:	00000097          	auipc	ra,0x0
    80007b58:	b90080e7          	jalr	-1136(ra) # 800076e4 <consputc>
    80007b5c:	ffac98e3          	bne	s9,s10,80007b4c <__printf+0x284>
    80007b60:	00094503          	lbu	a0,0(s2)
    80007b64:	e00514e3          	bnez	a0,8000796c <__printf+0xa4>
    80007b68:	1a0c1663          	bnez	s8,80007d14 <__printf+0x44c>
    80007b6c:	08813083          	ld	ra,136(sp)
    80007b70:	08013403          	ld	s0,128(sp)
    80007b74:	07813483          	ld	s1,120(sp)
    80007b78:	07013903          	ld	s2,112(sp)
    80007b7c:	06813983          	ld	s3,104(sp)
    80007b80:	06013a03          	ld	s4,96(sp)
    80007b84:	05813a83          	ld	s5,88(sp)
    80007b88:	05013b03          	ld	s6,80(sp)
    80007b8c:	04813b83          	ld	s7,72(sp)
    80007b90:	04013c03          	ld	s8,64(sp)
    80007b94:	03813c83          	ld	s9,56(sp)
    80007b98:	03013d03          	ld	s10,48(sp)
    80007b9c:	02813d83          	ld	s11,40(sp)
    80007ba0:	0d010113          	addi	sp,sp,208
    80007ba4:	00008067          	ret
    80007ba8:	07300713          	li	a4,115
    80007bac:	1ce78a63          	beq	a5,a4,80007d80 <__printf+0x4b8>
    80007bb0:	07800713          	li	a4,120
    80007bb4:	1ee79e63          	bne	a5,a4,80007db0 <__printf+0x4e8>
    80007bb8:	f7843783          	ld	a5,-136(s0)
    80007bbc:	0007a703          	lw	a4,0(a5)
    80007bc0:	00878793          	addi	a5,a5,8
    80007bc4:	f6f43c23          	sd	a5,-136(s0)
    80007bc8:	28074263          	bltz	a4,80007e4c <__printf+0x584>
    80007bcc:	00002d97          	auipc	s11,0x2
    80007bd0:	b6cd8d93          	addi	s11,s11,-1172 # 80009738 <digits>
    80007bd4:	00f77793          	andi	a5,a4,15
    80007bd8:	00fd87b3          	add	a5,s11,a5
    80007bdc:	0007c683          	lbu	a3,0(a5)
    80007be0:	00f00613          	li	a2,15
    80007be4:	0007079b          	sext.w	a5,a4
    80007be8:	f8d40023          	sb	a3,-128(s0)
    80007bec:	0047559b          	srliw	a1,a4,0x4
    80007bf0:	0047569b          	srliw	a3,a4,0x4
    80007bf4:	00000c93          	li	s9,0
    80007bf8:	0ee65063          	bge	a2,a4,80007cd8 <__printf+0x410>
    80007bfc:	00f6f693          	andi	a3,a3,15
    80007c00:	00dd86b3          	add	a3,s11,a3
    80007c04:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007c08:	0087d79b          	srliw	a5,a5,0x8
    80007c0c:	00100c93          	li	s9,1
    80007c10:	f8d400a3          	sb	a3,-127(s0)
    80007c14:	0cb67263          	bgeu	a2,a1,80007cd8 <__printf+0x410>
    80007c18:	00f7f693          	andi	a3,a5,15
    80007c1c:	00dd86b3          	add	a3,s11,a3
    80007c20:	0006c583          	lbu	a1,0(a3)
    80007c24:	00f00613          	li	a2,15
    80007c28:	0047d69b          	srliw	a3,a5,0x4
    80007c2c:	f8b40123          	sb	a1,-126(s0)
    80007c30:	0047d593          	srli	a1,a5,0x4
    80007c34:	28f67e63          	bgeu	a2,a5,80007ed0 <__printf+0x608>
    80007c38:	00f6f693          	andi	a3,a3,15
    80007c3c:	00dd86b3          	add	a3,s11,a3
    80007c40:	0006c503          	lbu	a0,0(a3)
    80007c44:	0087d813          	srli	a6,a5,0x8
    80007c48:	0087d69b          	srliw	a3,a5,0x8
    80007c4c:	f8a401a3          	sb	a0,-125(s0)
    80007c50:	28b67663          	bgeu	a2,a1,80007edc <__printf+0x614>
    80007c54:	00f6f693          	andi	a3,a3,15
    80007c58:	00dd86b3          	add	a3,s11,a3
    80007c5c:	0006c583          	lbu	a1,0(a3)
    80007c60:	00c7d513          	srli	a0,a5,0xc
    80007c64:	00c7d69b          	srliw	a3,a5,0xc
    80007c68:	f8b40223          	sb	a1,-124(s0)
    80007c6c:	29067a63          	bgeu	a2,a6,80007f00 <__printf+0x638>
    80007c70:	00f6f693          	andi	a3,a3,15
    80007c74:	00dd86b3          	add	a3,s11,a3
    80007c78:	0006c583          	lbu	a1,0(a3)
    80007c7c:	0107d813          	srli	a6,a5,0x10
    80007c80:	0107d69b          	srliw	a3,a5,0x10
    80007c84:	f8b402a3          	sb	a1,-123(s0)
    80007c88:	28a67263          	bgeu	a2,a0,80007f0c <__printf+0x644>
    80007c8c:	00f6f693          	andi	a3,a3,15
    80007c90:	00dd86b3          	add	a3,s11,a3
    80007c94:	0006c683          	lbu	a3,0(a3)
    80007c98:	0147d79b          	srliw	a5,a5,0x14
    80007c9c:	f8d40323          	sb	a3,-122(s0)
    80007ca0:	21067663          	bgeu	a2,a6,80007eac <__printf+0x5e4>
    80007ca4:	02079793          	slli	a5,a5,0x20
    80007ca8:	0207d793          	srli	a5,a5,0x20
    80007cac:	00fd8db3          	add	s11,s11,a5
    80007cb0:	000dc683          	lbu	a3,0(s11)
    80007cb4:	00800793          	li	a5,8
    80007cb8:	00700c93          	li	s9,7
    80007cbc:	f8d403a3          	sb	a3,-121(s0)
    80007cc0:	00075c63          	bgez	a4,80007cd8 <__printf+0x410>
    80007cc4:	f9040713          	addi	a4,s0,-112
    80007cc8:	00f70733          	add	a4,a4,a5
    80007ccc:	02d00693          	li	a3,45
    80007cd0:	fed70823          	sb	a3,-16(a4)
    80007cd4:	00078c93          	mv	s9,a5
    80007cd8:	f8040793          	addi	a5,s0,-128
    80007cdc:	01978cb3          	add	s9,a5,s9
    80007ce0:	f7f40d13          	addi	s10,s0,-129
    80007ce4:	000cc503          	lbu	a0,0(s9)
    80007ce8:	fffc8c93          	addi	s9,s9,-1
    80007cec:	00000097          	auipc	ra,0x0
    80007cf0:	9f8080e7          	jalr	-1544(ra) # 800076e4 <consputc>
    80007cf4:	ff9d18e3          	bne	s10,s9,80007ce4 <__printf+0x41c>
    80007cf8:	0100006f          	j	80007d08 <__printf+0x440>
    80007cfc:	00000097          	auipc	ra,0x0
    80007d00:	9e8080e7          	jalr	-1560(ra) # 800076e4 <consputc>
    80007d04:	000c8493          	mv	s1,s9
    80007d08:	00094503          	lbu	a0,0(s2)
    80007d0c:	c60510e3          	bnez	a0,8000796c <__printf+0xa4>
    80007d10:	e40c0ee3          	beqz	s8,80007b6c <__printf+0x2a4>
    80007d14:	00005517          	auipc	a0,0x5
    80007d18:	3ac50513          	addi	a0,a0,940 # 8000d0c0 <pr>
    80007d1c:	00001097          	auipc	ra,0x1
    80007d20:	94c080e7          	jalr	-1716(ra) # 80008668 <release>
    80007d24:	e49ff06f          	j	80007b6c <__printf+0x2a4>
    80007d28:	f7843783          	ld	a5,-136(s0)
    80007d2c:	03000513          	li	a0,48
    80007d30:	01000d13          	li	s10,16
    80007d34:	00878713          	addi	a4,a5,8
    80007d38:	0007bc83          	ld	s9,0(a5)
    80007d3c:	f6e43c23          	sd	a4,-136(s0)
    80007d40:	00000097          	auipc	ra,0x0
    80007d44:	9a4080e7          	jalr	-1628(ra) # 800076e4 <consputc>
    80007d48:	07800513          	li	a0,120
    80007d4c:	00000097          	auipc	ra,0x0
    80007d50:	998080e7          	jalr	-1640(ra) # 800076e4 <consputc>
    80007d54:	00002d97          	auipc	s11,0x2
    80007d58:	9e4d8d93          	addi	s11,s11,-1564 # 80009738 <digits>
    80007d5c:	03ccd793          	srli	a5,s9,0x3c
    80007d60:	00fd87b3          	add	a5,s11,a5
    80007d64:	0007c503          	lbu	a0,0(a5)
    80007d68:	fffd0d1b          	addiw	s10,s10,-1
    80007d6c:	004c9c93          	slli	s9,s9,0x4
    80007d70:	00000097          	auipc	ra,0x0
    80007d74:	974080e7          	jalr	-1676(ra) # 800076e4 <consputc>
    80007d78:	fe0d12e3          	bnez	s10,80007d5c <__printf+0x494>
    80007d7c:	f8dff06f          	j	80007d08 <__printf+0x440>
    80007d80:	f7843783          	ld	a5,-136(s0)
    80007d84:	0007bc83          	ld	s9,0(a5)
    80007d88:	00878793          	addi	a5,a5,8
    80007d8c:	f6f43c23          	sd	a5,-136(s0)
    80007d90:	000c9a63          	bnez	s9,80007da4 <__printf+0x4dc>
    80007d94:	1080006f          	j	80007e9c <__printf+0x5d4>
    80007d98:	001c8c93          	addi	s9,s9,1
    80007d9c:	00000097          	auipc	ra,0x0
    80007da0:	948080e7          	jalr	-1720(ra) # 800076e4 <consputc>
    80007da4:	000cc503          	lbu	a0,0(s9)
    80007da8:	fe0518e3          	bnez	a0,80007d98 <__printf+0x4d0>
    80007dac:	f5dff06f          	j	80007d08 <__printf+0x440>
    80007db0:	02500513          	li	a0,37
    80007db4:	00000097          	auipc	ra,0x0
    80007db8:	930080e7          	jalr	-1744(ra) # 800076e4 <consputc>
    80007dbc:	000c8513          	mv	a0,s9
    80007dc0:	00000097          	auipc	ra,0x0
    80007dc4:	924080e7          	jalr	-1756(ra) # 800076e4 <consputc>
    80007dc8:	f41ff06f          	j	80007d08 <__printf+0x440>
    80007dcc:	02500513          	li	a0,37
    80007dd0:	00000097          	auipc	ra,0x0
    80007dd4:	914080e7          	jalr	-1772(ra) # 800076e4 <consputc>
    80007dd8:	f31ff06f          	j	80007d08 <__printf+0x440>
    80007ddc:	00030513          	mv	a0,t1
    80007de0:	00000097          	auipc	ra,0x0
    80007de4:	7bc080e7          	jalr	1980(ra) # 8000859c <acquire>
    80007de8:	b4dff06f          	j	80007934 <__printf+0x6c>
    80007dec:	40c0053b          	negw	a0,a2
    80007df0:	00a00713          	li	a4,10
    80007df4:	02e576bb          	remuw	a3,a0,a4
    80007df8:	00002d97          	auipc	s11,0x2
    80007dfc:	940d8d93          	addi	s11,s11,-1728 # 80009738 <digits>
    80007e00:	ff700593          	li	a1,-9
    80007e04:	02069693          	slli	a3,a3,0x20
    80007e08:	0206d693          	srli	a3,a3,0x20
    80007e0c:	00dd86b3          	add	a3,s11,a3
    80007e10:	0006c683          	lbu	a3,0(a3)
    80007e14:	02e557bb          	divuw	a5,a0,a4
    80007e18:	f8d40023          	sb	a3,-128(s0)
    80007e1c:	10b65e63          	bge	a2,a1,80007f38 <__printf+0x670>
    80007e20:	06300593          	li	a1,99
    80007e24:	02e7f6bb          	remuw	a3,a5,a4
    80007e28:	02069693          	slli	a3,a3,0x20
    80007e2c:	0206d693          	srli	a3,a3,0x20
    80007e30:	00dd86b3          	add	a3,s11,a3
    80007e34:	0006c683          	lbu	a3,0(a3)
    80007e38:	02e7d73b          	divuw	a4,a5,a4
    80007e3c:	00200793          	li	a5,2
    80007e40:	f8d400a3          	sb	a3,-127(s0)
    80007e44:	bca5ece3          	bltu	a1,a0,80007a1c <__printf+0x154>
    80007e48:	ce5ff06f          	j	80007b2c <__printf+0x264>
    80007e4c:	40e007bb          	negw	a5,a4
    80007e50:	00002d97          	auipc	s11,0x2
    80007e54:	8e8d8d93          	addi	s11,s11,-1816 # 80009738 <digits>
    80007e58:	00f7f693          	andi	a3,a5,15
    80007e5c:	00dd86b3          	add	a3,s11,a3
    80007e60:	0006c583          	lbu	a1,0(a3)
    80007e64:	ff100613          	li	a2,-15
    80007e68:	0047d69b          	srliw	a3,a5,0x4
    80007e6c:	f8b40023          	sb	a1,-128(s0)
    80007e70:	0047d59b          	srliw	a1,a5,0x4
    80007e74:	0ac75e63          	bge	a4,a2,80007f30 <__printf+0x668>
    80007e78:	00f6f693          	andi	a3,a3,15
    80007e7c:	00dd86b3          	add	a3,s11,a3
    80007e80:	0006c603          	lbu	a2,0(a3)
    80007e84:	00f00693          	li	a3,15
    80007e88:	0087d79b          	srliw	a5,a5,0x8
    80007e8c:	f8c400a3          	sb	a2,-127(s0)
    80007e90:	d8b6e4e3          	bltu	a3,a1,80007c18 <__printf+0x350>
    80007e94:	00200793          	li	a5,2
    80007e98:	e2dff06f          	j	80007cc4 <__printf+0x3fc>
    80007e9c:	00002c97          	auipc	s9,0x2
    80007ea0:	87cc8c93          	addi	s9,s9,-1924 # 80009718 <CONSOLE_STATUS+0x708>
    80007ea4:	02800513          	li	a0,40
    80007ea8:	ef1ff06f          	j	80007d98 <__printf+0x4d0>
    80007eac:	00700793          	li	a5,7
    80007eb0:	00600c93          	li	s9,6
    80007eb4:	e0dff06f          	j	80007cc0 <__printf+0x3f8>
    80007eb8:	00700793          	li	a5,7
    80007ebc:	00600c93          	li	s9,6
    80007ec0:	c69ff06f          	j	80007b28 <__printf+0x260>
    80007ec4:	00300793          	li	a5,3
    80007ec8:	00200c93          	li	s9,2
    80007ecc:	c5dff06f          	j	80007b28 <__printf+0x260>
    80007ed0:	00300793          	li	a5,3
    80007ed4:	00200c93          	li	s9,2
    80007ed8:	de9ff06f          	j	80007cc0 <__printf+0x3f8>
    80007edc:	00400793          	li	a5,4
    80007ee0:	00300c93          	li	s9,3
    80007ee4:	dddff06f          	j	80007cc0 <__printf+0x3f8>
    80007ee8:	00400793          	li	a5,4
    80007eec:	00300c93          	li	s9,3
    80007ef0:	c39ff06f          	j	80007b28 <__printf+0x260>
    80007ef4:	00500793          	li	a5,5
    80007ef8:	00400c93          	li	s9,4
    80007efc:	c2dff06f          	j	80007b28 <__printf+0x260>
    80007f00:	00500793          	li	a5,5
    80007f04:	00400c93          	li	s9,4
    80007f08:	db9ff06f          	j	80007cc0 <__printf+0x3f8>
    80007f0c:	00600793          	li	a5,6
    80007f10:	00500c93          	li	s9,5
    80007f14:	dadff06f          	j	80007cc0 <__printf+0x3f8>
    80007f18:	00600793          	li	a5,6
    80007f1c:	00500c93          	li	s9,5
    80007f20:	c09ff06f          	j	80007b28 <__printf+0x260>
    80007f24:	00800793          	li	a5,8
    80007f28:	00700c93          	li	s9,7
    80007f2c:	bfdff06f          	j	80007b28 <__printf+0x260>
    80007f30:	00100793          	li	a5,1
    80007f34:	d91ff06f          	j	80007cc4 <__printf+0x3fc>
    80007f38:	00100793          	li	a5,1
    80007f3c:	bf1ff06f          	j	80007b2c <__printf+0x264>
    80007f40:	00900793          	li	a5,9
    80007f44:	00800c93          	li	s9,8
    80007f48:	be1ff06f          	j	80007b28 <__printf+0x260>
    80007f4c:	00001517          	auipc	a0,0x1
    80007f50:	7d450513          	addi	a0,a0,2004 # 80009720 <CONSOLE_STATUS+0x710>
    80007f54:	00000097          	auipc	ra,0x0
    80007f58:	918080e7          	jalr	-1768(ra) # 8000786c <panic>

0000000080007f5c <printfinit>:
    80007f5c:	fe010113          	addi	sp,sp,-32
    80007f60:	00813823          	sd	s0,16(sp)
    80007f64:	00913423          	sd	s1,8(sp)
    80007f68:	00113c23          	sd	ra,24(sp)
    80007f6c:	02010413          	addi	s0,sp,32
    80007f70:	00005497          	auipc	s1,0x5
    80007f74:	15048493          	addi	s1,s1,336 # 8000d0c0 <pr>
    80007f78:	00048513          	mv	a0,s1
    80007f7c:	00001597          	auipc	a1,0x1
    80007f80:	7b458593          	addi	a1,a1,1972 # 80009730 <CONSOLE_STATUS+0x720>
    80007f84:	00000097          	auipc	ra,0x0
    80007f88:	5f4080e7          	jalr	1524(ra) # 80008578 <initlock>
    80007f8c:	01813083          	ld	ra,24(sp)
    80007f90:	01013403          	ld	s0,16(sp)
    80007f94:	0004ac23          	sw	zero,24(s1)
    80007f98:	00813483          	ld	s1,8(sp)
    80007f9c:	02010113          	addi	sp,sp,32
    80007fa0:	00008067          	ret

0000000080007fa4 <uartinit>:
    80007fa4:	ff010113          	addi	sp,sp,-16
    80007fa8:	00813423          	sd	s0,8(sp)
    80007fac:	01010413          	addi	s0,sp,16
    80007fb0:	100007b7          	lui	a5,0x10000
    80007fb4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007fb8:	f8000713          	li	a4,-128
    80007fbc:	00e781a3          	sb	a4,3(a5)
    80007fc0:	00300713          	li	a4,3
    80007fc4:	00e78023          	sb	a4,0(a5)
    80007fc8:	000780a3          	sb	zero,1(a5)
    80007fcc:	00e781a3          	sb	a4,3(a5)
    80007fd0:	00700693          	li	a3,7
    80007fd4:	00d78123          	sb	a3,2(a5)
    80007fd8:	00e780a3          	sb	a4,1(a5)
    80007fdc:	00813403          	ld	s0,8(sp)
    80007fe0:	01010113          	addi	sp,sp,16
    80007fe4:	00008067          	ret

0000000080007fe8 <uartputc>:
    80007fe8:	00004797          	auipc	a5,0x4
    80007fec:	de07a783          	lw	a5,-544(a5) # 8000bdc8 <panicked>
    80007ff0:	00078463          	beqz	a5,80007ff8 <uartputc+0x10>
    80007ff4:	0000006f          	j	80007ff4 <uartputc+0xc>
    80007ff8:	fd010113          	addi	sp,sp,-48
    80007ffc:	02813023          	sd	s0,32(sp)
    80008000:	00913c23          	sd	s1,24(sp)
    80008004:	01213823          	sd	s2,16(sp)
    80008008:	01313423          	sd	s3,8(sp)
    8000800c:	02113423          	sd	ra,40(sp)
    80008010:	03010413          	addi	s0,sp,48
    80008014:	00004917          	auipc	s2,0x4
    80008018:	dbc90913          	addi	s2,s2,-580 # 8000bdd0 <uart_tx_r>
    8000801c:	00093783          	ld	a5,0(s2)
    80008020:	00004497          	auipc	s1,0x4
    80008024:	db848493          	addi	s1,s1,-584 # 8000bdd8 <uart_tx_w>
    80008028:	0004b703          	ld	a4,0(s1)
    8000802c:	02078693          	addi	a3,a5,32
    80008030:	00050993          	mv	s3,a0
    80008034:	02e69c63          	bne	a3,a4,8000806c <uartputc+0x84>
    80008038:	00001097          	auipc	ra,0x1
    8000803c:	834080e7          	jalr	-1996(ra) # 8000886c <push_on>
    80008040:	00093783          	ld	a5,0(s2)
    80008044:	0004b703          	ld	a4,0(s1)
    80008048:	02078793          	addi	a5,a5,32
    8000804c:	00e79463          	bne	a5,a4,80008054 <uartputc+0x6c>
    80008050:	0000006f          	j	80008050 <uartputc+0x68>
    80008054:	00001097          	auipc	ra,0x1
    80008058:	88c080e7          	jalr	-1908(ra) # 800088e0 <pop_on>
    8000805c:	00093783          	ld	a5,0(s2)
    80008060:	0004b703          	ld	a4,0(s1)
    80008064:	02078693          	addi	a3,a5,32
    80008068:	fce688e3          	beq	a3,a4,80008038 <uartputc+0x50>
    8000806c:	01f77693          	andi	a3,a4,31
    80008070:	00005597          	auipc	a1,0x5
    80008074:	07058593          	addi	a1,a1,112 # 8000d0e0 <uart_tx_buf>
    80008078:	00d586b3          	add	a3,a1,a3
    8000807c:	00170713          	addi	a4,a4,1
    80008080:	01368023          	sb	s3,0(a3)
    80008084:	00e4b023          	sd	a4,0(s1)
    80008088:	10000637          	lui	a2,0x10000
    8000808c:	02f71063          	bne	a4,a5,800080ac <uartputc+0xc4>
    80008090:	0340006f          	j	800080c4 <uartputc+0xdc>
    80008094:	00074703          	lbu	a4,0(a4)
    80008098:	00f93023          	sd	a5,0(s2)
    8000809c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800080a0:	00093783          	ld	a5,0(s2)
    800080a4:	0004b703          	ld	a4,0(s1)
    800080a8:	00f70e63          	beq	a4,a5,800080c4 <uartputc+0xdc>
    800080ac:	00564683          	lbu	a3,5(a2)
    800080b0:	01f7f713          	andi	a4,a5,31
    800080b4:	00e58733          	add	a4,a1,a4
    800080b8:	0206f693          	andi	a3,a3,32
    800080bc:	00178793          	addi	a5,a5,1
    800080c0:	fc069ae3          	bnez	a3,80008094 <uartputc+0xac>
    800080c4:	02813083          	ld	ra,40(sp)
    800080c8:	02013403          	ld	s0,32(sp)
    800080cc:	01813483          	ld	s1,24(sp)
    800080d0:	01013903          	ld	s2,16(sp)
    800080d4:	00813983          	ld	s3,8(sp)
    800080d8:	03010113          	addi	sp,sp,48
    800080dc:	00008067          	ret

00000000800080e0 <uartputc_sync>:
    800080e0:	ff010113          	addi	sp,sp,-16
    800080e4:	00813423          	sd	s0,8(sp)
    800080e8:	01010413          	addi	s0,sp,16
    800080ec:	00004717          	auipc	a4,0x4
    800080f0:	cdc72703          	lw	a4,-804(a4) # 8000bdc8 <panicked>
    800080f4:	02071663          	bnez	a4,80008120 <uartputc_sync+0x40>
    800080f8:	00050793          	mv	a5,a0
    800080fc:	100006b7          	lui	a3,0x10000
    80008100:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008104:	02077713          	andi	a4,a4,32
    80008108:	fe070ce3          	beqz	a4,80008100 <uartputc_sync+0x20>
    8000810c:	0ff7f793          	andi	a5,a5,255
    80008110:	00f68023          	sb	a5,0(a3)
    80008114:	00813403          	ld	s0,8(sp)
    80008118:	01010113          	addi	sp,sp,16
    8000811c:	00008067          	ret
    80008120:	0000006f          	j	80008120 <uartputc_sync+0x40>

0000000080008124 <uartstart>:
    80008124:	ff010113          	addi	sp,sp,-16
    80008128:	00813423          	sd	s0,8(sp)
    8000812c:	01010413          	addi	s0,sp,16
    80008130:	00004617          	auipc	a2,0x4
    80008134:	ca060613          	addi	a2,a2,-864 # 8000bdd0 <uart_tx_r>
    80008138:	00004517          	auipc	a0,0x4
    8000813c:	ca050513          	addi	a0,a0,-864 # 8000bdd8 <uart_tx_w>
    80008140:	00063783          	ld	a5,0(a2)
    80008144:	00053703          	ld	a4,0(a0)
    80008148:	04f70263          	beq	a4,a5,8000818c <uartstart+0x68>
    8000814c:	100005b7          	lui	a1,0x10000
    80008150:	00005817          	auipc	a6,0x5
    80008154:	f9080813          	addi	a6,a6,-112 # 8000d0e0 <uart_tx_buf>
    80008158:	01c0006f          	j	80008174 <uartstart+0x50>
    8000815c:	0006c703          	lbu	a4,0(a3)
    80008160:	00f63023          	sd	a5,0(a2)
    80008164:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008168:	00063783          	ld	a5,0(a2)
    8000816c:	00053703          	ld	a4,0(a0)
    80008170:	00f70e63          	beq	a4,a5,8000818c <uartstart+0x68>
    80008174:	01f7f713          	andi	a4,a5,31
    80008178:	00e806b3          	add	a3,a6,a4
    8000817c:	0055c703          	lbu	a4,5(a1)
    80008180:	00178793          	addi	a5,a5,1
    80008184:	02077713          	andi	a4,a4,32
    80008188:	fc071ae3          	bnez	a4,8000815c <uartstart+0x38>
    8000818c:	00813403          	ld	s0,8(sp)
    80008190:	01010113          	addi	sp,sp,16
    80008194:	00008067          	ret

0000000080008198 <uartgetc>:
    80008198:	ff010113          	addi	sp,sp,-16
    8000819c:	00813423          	sd	s0,8(sp)
    800081a0:	01010413          	addi	s0,sp,16
    800081a4:	10000737          	lui	a4,0x10000
    800081a8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800081ac:	0017f793          	andi	a5,a5,1
    800081b0:	00078c63          	beqz	a5,800081c8 <uartgetc+0x30>
    800081b4:	00074503          	lbu	a0,0(a4)
    800081b8:	0ff57513          	andi	a0,a0,255
    800081bc:	00813403          	ld	s0,8(sp)
    800081c0:	01010113          	addi	sp,sp,16
    800081c4:	00008067          	ret
    800081c8:	fff00513          	li	a0,-1
    800081cc:	ff1ff06f          	j	800081bc <uartgetc+0x24>

00000000800081d0 <uartintr>:
    800081d0:	100007b7          	lui	a5,0x10000
    800081d4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800081d8:	0017f793          	andi	a5,a5,1
    800081dc:	0a078463          	beqz	a5,80008284 <uartintr+0xb4>
    800081e0:	fe010113          	addi	sp,sp,-32
    800081e4:	00813823          	sd	s0,16(sp)
    800081e8:	00913423          	sd	s1,8(sp)
    800081ec:	00113c23          	sd	ra,24(sp)
    800081f0:	02010413          	addi	s0,sp,32
    800081f4:	100004b7          	lui	s1,0x10000
    800081f8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800081fc:	0ff57513          	andi	a0,a0,255
    80008200:	fffff097          	auipc	ra,0xfffff
    80008204:	534080e7          	jalr	1332(ra) # 80007734 <consoleintr>
    80008208:	0054c783          	lbu	a5,5(s1)
    8000820c:	0017f793          	andi	a5,a5,1
    80008210:	fe0794e3          	bnez	a5,800081f8 <uartintr+0x28>
    80008214:	00004617          	auipc	a2,0x4
    80008218:	bbc60613          	addi	a2,a2,-1092 # 8000bdd0 <uart_tx_r>
    8000821c:	00004517          	auipc	a0,0x4
    80008220:	bbc50513          	addi	a0,a0,-1092 # 8000bdd8 <uart_tx_w>
    80008224:	00063783          	ld	a5,0(a2)
    80008228:	00053703          	ld	a4,0(a0)
    8000822c:	04f70263          	beq	a4,a5,80008270 <uartintr+0xa0>
    80008230:	100005b7          	lui	a1,0x10000
    80008234:	00005817          	auipc	a6,0x5
    80008238:	eac80813          	addi	a6,a6,-340 # 8000d0e0 <uart_tx_buf>
    8000823c:	01c0006f          	j	80008258 <uartintr+0x88>
    80008240:	0006c703          	lbu	a4,0(a3)
    80008244:	00f63023          	sd	a5,0(a2)
    80008248:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000824c:	00063783          	ld	a5,0(a2)
    80008250:	00053703          	ld	a4,0(a0)
    80008254:	00f70e63          	beq	a4,a5,80008270 <uartintr+0xa0>
    80008258:	01f7f713          	andi	a4,a5,31
    8000825c:	00e806b3          	add	a3,a6,a4
    80008260:	0055c703          	lbu	a4,5(a1)
    80008264:	00178793          	addi	a5,a5,1
    80008268:	02077713          	andi	a4,a4,32
    8000826c:	fc071ae3          	bnez	a4,80008240 <uartintr+0x70>
    80008270:	01813083          	ld	ra,24(sp)
    80008274:	01013403          	ld	s0,16(sp)
    80008278:	00813483          	ld	s1,8(sp)
    8000827c:	02010113          	addi	sp,sp,32
    80008280:	00008067          	ret
    80008284:	00004617          	auipc	a2,0x4
    80008288:	b4c60613          	addi	a2,a2,-1204 # 8000bdd0 <uart_tx_r>
    8000828c:	00004517          	auipc	a0,0x4
    80008290:	b4c50513          	addi	a0,a0,-1204 # 8000bdd8 <uart_tx_w>
    80008294:	00063783          	ld	a5,0(a2)
    80008298:	00053703          	ld	a4,0(a0)
    8000829c:	04f70263          	beq	a4,a5,800082e0 <uartintr+0x110>
    800082a0:	100005b7          	lui	a1,0x10000
    800082a4:	00005817          	auipc	a6,0x5
    800082a8:	e3c80813          	addi	a6,a6,-452 # 8000d0e0 <uart_tx_buf>
    800082ac:	01c0006f          	j	800082c8 <uartintr+0xf8>
    800082b0:	0006c703          	lbu	a4,0(a3)
    800082b4:	00f63023          	sd	a5,0(a2)
    800082b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800082bc:	00063783          	ld	a5,0(a2)
    800082c0:	00053703          	ld	a4,0(a0)
    800082c4:	02f70063          	beq	a4,a5,800082e4 <uartintr+0x114>
    800082c8:	01f7f713          	andi	a4,a5,31
    800082cc:	00e806b3          	add	a3,a6,a4
    800082d0:	0055c703          	lbu	a4,5(a1)
    800082d4:	00178793          	addi	a5,a5,1
    800082d8:	02077713          	andi	a4,a4,32
    800082dc:	fc071ae3          	bnez	a4,800082b0 <uartintr+0xe0>
    800082e0:	00008067          	ret
    800082e4:	00008067          	ret

00000000800082e8 <kinit>:
    800082e8:	fc010113          	addi	sp,sp,-64
    800082ec:	02913423          	sd	s1,40(sp)
    800082f0:	fffff7b7          	lui	a5,0xfffff
    800082f4:	00006497          	auipc	s1,0x6
    800082f8:	e0b48493          	addi	s1,s1,-501 # 8000e0ff <end+0xfff>
    800082fc:	02813823          	sd	s0,48(sp)
    80008300:	01313c23          	sd	s3,24(sp)
    80008304:	00f4f4b3          	and	s1,s1,a5
    80008308:	02113c23          	sd	ra,56(sp)
    8000830c:	03213023          	sd	s2,32(sp)
    80008310:	01413823          	sd	s4,16(sp)
    80008314:	01513423          	sd	s5,8(sp)
    80008318:	04010413          	addi	s0,sp,64
    8000831c:	000017b7          	lui	a5,0x1
    80008320:	01100993          	li	s3,17
    80008324:	00f487b3          	add	a5,s1,a5
    80008328:	01b99993          	slli	s3,s3,0x1b
    8000832c:	06f9e063          	bltu	s3,a5,8000838c <kinit+0xa4>
    80008330:	00005a97          	auipc	s5,0x5
    80008334:	dd0a8a93          	addi	s5,s5,-560 # 8000d100 <end>
    80008338:	0754ec63          	bltu	s1,s5,800083b0 <kinit+0xc8>
    8000833c:	0734fa63          	bgeu	s1,s3,800083b0 <kinit+0xc8>
    80008340:	00088a37          	lui	s4,0x88
    80008344:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008348:	00004917          	auipc	s2,0x4
    8000834c:	a9890913          	addi	s2,s2,-1384 # 8000bde0 <kmem>
    80008350:	00ca1a13          	slli	s4,s4,0xc
    80008354:	0140006f          	j	80008368 <kinit+0x80>
    80008358:	000017b7          	lui	a5,0x1
    8000835c:	00f484b3          	add	s1,s1,a5
    80008360:	0554e863          	bltu	s1,s5,800083b0 <kinit+0xc8>
    80008364:	0534f663          	bgeu	s1,s3,800083b0 <kinit+0xc8>
    80008368:	00001637          	lui	a2,0x1
    8000836c:	00100593          	li	a1,1
    80008370:	00048513          	mv	a0,s1
    80008374:	00000097          	auipc	ra,0x0
    80008378:	5e4080e7          	jalr	1508(ra) # 80008958 <__memset>
    8000837c:	00093783          	ld	a5,0(s2)
    80008380:	00f4b023          	sd	a5,0(s1)
    80008384:	00993023          	sd	s1,0(s2)
    80008388:	fd4498e3          	bne	s1,s4,80008358 <kinit+0x70>
    8000838c:	03813083          	ld	ra,56(sp)
    80008390:	03013403          	ld	s0,48(sp)
    80008394:	02813483          	ld	s1,40(sp)
    80008398:	02013903          	ld	s2,32(sp)
    8000839c:	01813983          	ld	s3,24(sp)
    800083a0:	01013a03          	ld	s4,16(sp)
    800083a4:	00813a83          	ld	s5,8(sp)
    800083a8:	04010113          	addi	sp,sp,64
    800083ac:	00008067          	ret
    800083b0:	00001517          	auipc	a0,0x1
    800083b4:	3a050513          	addi	a0,a0,928 # 80009750 <digits+0x18>
    800083b8:	fffff097          	auipc	ra,0xfffff
    800083bc:	4b4080e7          	jalr	1204(ra) # 8000786c <panic>

00000000800083c0 <freerange>:
    800083c0:	fc010113          	addi	sp,sp,-64
    800083c4:	000017b7          	lui	a5,0x1
    800083c8:	02913423          	sd	s1,40(sp)
    800083cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800083d0:	009504b3          	add	s1,a0,s1
    800083d4:	fffff537          	lui	a0,0xfffff
    800083d8:	02813823          	sd	s0,48(sp)
    800083dc:	02113c23          	sd	ra,56(sp)
    800083e0:	03213023          	sd	s2,32(sp)
    800083e4:	01313c23          	sd	s3,24(sp)
    800083e8:	01413823          	sd	s4,16(sp)
    800083ec:	01513423          	sd	s5,8(sp)
    800083f0:	01613023          	sd	s6,0(sp)
    800083f4:	04010413          	addi	s0,sp,64
    800083f8:	00a4f4b3          	and	s1,s1,a0
    800083fc:	00f487b3          	add	a5,s1,a5
    80008400:	06f5e463          	bltu	a1,a5,80008468 <freerange+0xa8>
    80008404:	00005a97          	auipc	s5,0x5
    80008408:	cfca8a93          	addi	s5,s5,-772 # 8000d100 <end>
    8000840c:	0954e263          	bltu	s1,s5,80008490 <freerange+0xd0>
    80008410:	01100993          	li	s3,17
    80008414:	01b99993          	slli	s3,s3,0x1b
    80008418:	0734fc63          	bgeu	s1,s3,80008490 <freerange+0xd0>
    8000841c:	00058a13          	mv	s4,a1
    80008420:	00004917          	auipc	s2,0x4
    80008424:	9c090913          	addi	s2,s2,-1600 # 8000bde0 <kmem>
    80008428:	00002b37          	lui	s6,0x2
    8000842c:	0140006f          	j	80008440 <freerange+0x80>
    80008430:	000017b7          	lui	a5,0x1
    80008434:	00f484b3          	add	s1,s1,a5
    80008438:	0554ec63          	bltu	s1,s5,80008490 <freerange+0xd0>
    8000843c:	0534fa63          	bgeu	s1,s3,80008490 <freerange+0xd0>
    80008440:	00001637          	lui	a2,0x1
    80008444:	00100593          	li	a1,1
    80008448:	00048513          	mv	a0,s1
    8000844c:	00000097          	auipc	ra,0x0
    80008450:	50c080e7          	jalr	1292(ra) # 80008958 <__memset>
    80008454:	00093703          	ld	a4,0(s2)
    80008458:	016487b3          	add	a5,s1,s6
    8000845c:	00e4b023          	sd	a4,0(s1)
    80008460:	00993023          	sd	s1,0(s2)
    80008464:	fcfa76e3          	bgeu	s4,a5,80008430 <freerange+0x70>
    80008468:	03813083          	ld	ra,56(sp)
    8000846c:	03013403          	ld	s0,48(sp)
    80008470:	02813483          	ld	s1,40(sp)
    80008474:	02013903          	ld	s2,32(sp)
    80008478:	01813983          	ld	s3,24(sp)
    8000847c:	01013a03          	ld	s4,16(sp)
    80008480:	00813a83          	ld	s5,8(sp)
    80008484:	00013b03          	ld	s6,0(sp)
    80008488:	04010113          	addi	sp,sp,64
    8000848c:	00008067          	ret
    80008490:	00001517          	auipc	a0,0x1
    80008494:	2c050513          	addi	a0,a0,704 # 80009750 <digits+0x18>
    80008498:	fffff097          	auipc	ra,0xfffff
    8000849c:	3d4080e7          	jalr	980(ra) # 8000786c <panic>

00000000800084a0 <kfree>:
    800084a0:	fe010113          	addi	sp,sp,-32
    800084a4:	00813823          	sd	s0,16(sp)
    800084a8:	00113c23          	sd	ra,24(sp)
    800084ac:	00913423          	sd	s1,8(sp)
    800084b0:	02010413          	addi	s0,sp,32
    800084b4:	03451793          	slli	a5,a0,0x34
    800084b8:	04079c63          	bnez	a5,80008510 <kfree+0x70>
    800084bc:	00005797          	auipc	a5,0x5
    800084c0:	c4478793          	addi	a5,a5,-956 # 8000d100 <end>
    800084c4:	00050493          	mv	s1,a0
    800084c8:	04f56463          	bltu	a0,a5,80008510 <kfree+0x70>
    800084cc:	01100793          	li	a5,17
    800084d0:	01b79793          	slli	a5,a5,0x1b
    800084d4:	02f57e63          	bgeu	a0,a5,80008510 <kfree+0x70>
    800084d8:	00001637          	lui	a2,0x1
    800084dc:	00100593          	li	a1,1
    800084e0:	00000097          	auipc	ra,0x0
    800084e4:	478080e7          	jalr	1144(ra) # 80008958 <__memset>
    800084e8:	00004797          	auipc	a5,0x4
    800084ec:	8f878793          	addi	a5,a5,-1800 # 8000bde0 <kmem>
    800084f0:	0007b703          	ld	a4,0(a5)
    800084f4:	01813083          	ld	ra,24(sp)
    800084f8:	01013403          	ld	s0,16(sp)
    800084fc:	00e4b023          	sd	a4,0(s1)
    80008500:	0097b023          	sd	s1,0(a5)
    80008504:	00813483          	ld	s1,8(sp)
    80008508:	02010113          	addi	sp,sp,32
    8000850c:	00008067          	ret
    80008510:	00001517          	auipc	a0,0x1
    80008514:	24050513          	addi	a0,a0,576 # 80009750 <digits+0x18>
    80008518:	fffff097          	auipc	ra,0xfffff
    8000851c:	354080e7          	jalr	852(ra) # 8000786c <panic>

0000000080008520 <kalloc>:
    80008520:	fe010113          	addi	sp,sp,-32
    80008524:	00813823          	sd	s0,16(sp)
    80008528:	00913423          	sd	s1,8(sp)
    8000852c:	00113c23          	sd	ra,24(sp)
    80008530:	02010413          	addi	s0,sp,32
    80008534:	00004797          	auipc	a5,0x4
    80008538:	8ac78793          	addi	a5,a5,-1876 # 8000bde0 <kmem>
    8000853c:	0007b483          	ld	s1,0(a5)
    80008540:	02048063          	beqz	s1,80008560 <kalloc+0x40>
    80008544:	0004b703          	ld	a4,0(s1)
    80008548:	00001637          	lui	a2,0x1
    8000854c:	00500593          	li	a1,5
    80008550:	00048513          	mv	a0,s1
    80008554:	00e7b023          	sd	a4,0(a5)
    80008558:	00000097          	auipc	ra,0x0
    8000855c:	400080e7          	jalr	1024(ra) # 80008958 <__memset>
    80008560:	01813083          	ld	ra,24(sp)
    80008564:	01013403          	ld	s0,16(sp)
    80008568:	00048513          	mv	a0,s1
    8000856c:	00813483          	ld	s1,8(sp)
    80008570:	02010113          	addi	sp,sp,32
    80008574:	00008067          	ret

0000000080008578 <initlock>:
    80008578:	ff010113          	addi	sp,sp,-16
    8000857c:	00813423          	sd	s0,8(sp)
    80008580:	01010413          	addi	s0,sp,16
    80008584:	00813403          	ld	s0,8(sp)
    80008588:	00b53423          	sd	a1,8(a0)
    8000858c:	00052023          	sw	zero,0(a0)
    80008590:	00053823          	sd	zero,16(a0)
    80008594:	01010113          	addi	sp,sp,16
    80008598:	00008067          	ret

000000008000859c <acquire>:
    8000859c:	fe010113          	addi	sp,sp,-32
    800085a0:	00813823          	sd	s0,16(sp)
    800085a4:	00913423          	sd	s1,8(sp)
    800085a8:	00113c23          	sd	ra,24(sp)
    800085ac:	01213023          	sd	s2,0(sp)
    800085b0:	02010413          	addi	s0,sp,32
    800085b4:	00050493          	mv	s1,a0
    800085b8:	10002973          	csrr	s2,sstatus
    800085bc:	100027f3          	csrr	a5,sstatus
    800085c0:	ffd7f793          	andi	a5,a5,-3
    800085c4:	10079073          	csrw	sstatus,a5
    800085c8:	fffff097          	auipc	ra,0xfffff
    800085cc:	8ec080e7          	jalr	-1812(ra) # 80006eb4 <mycpu>
    800085d0:	07852783          	lw	a5,120(a0)
    800085d4:	06078e63          	beqz	a5,80008650 <acquire+0xb4>
    800085d8:	fffff097          	auipc	ra,0xfffff
    800085dc:	8dc080e7          	jalr	-1828(ra) # 80006eb4 <mycpu>
    800085e0:	07852783          	lw	a5,120(a0)
    800085e4:	0004a703          	lw	a4,0(s1)
    800085e8:	0017879b          	addiw	a5,a5,1
    800085ec:	06f52c23          	sw	a5,120(a0)
    800085f0:	04071063          	bnez	a4,80008630 <acquire+0x94>
    800085f4:	00100713          	li	a4,1
    800085f8:	00070793          	mv	a5,a4
    800085fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008600:	0007879b          	sext.w	a5,a5
    80008604:	fe079ae3          	bnez	a5,800085f8 <acquire+0x5c>
    80008608:	0ff0000f          	fence
    8000860c:	fffff097          	auipc	ra,0xfffff
    80008610:	8a8080e7          	jalr	-1880(ra) # 80006eb4 <mycpu>
    80008614:	01813083          	ld	ra,24(sp)
    80008618:	01013403          	ld	s0,16(sp)
    8000861c:	00a4b823          	sd	a0,16(s1)
    80008620:	00013903          	ld	s2,0(sp)
    80008624:	00813483          	ld	s1,8(sp)
    80008628:	02010113          	addi	sp,sp,32
    8000862c:	00008067          	ret
    80008630:	0104b903          	ld	s2,16(s1)
    80008634:	fffff097          	auipc	ra,0xfffff
    80008638:	880080e7          	jalr	-1920(ra) # 80006eb4 <mycpu>
    8000863c:	faa91ce3          	bne	s2,a0,800085f4 <acquire+0x58>
    80008640:	00001517          	auipc	a0,0x1
    80008644:	11850513          	addi	a0,a0,280 # 80009758 <digits+0x20>
    80008648:	fffff097          	auipc	ra,0xfffff
    8000864c:	224080e7          	jalr	548(ra) # 8000786c <panic>
    80008650:	00195913          	srli	s2,s2,0x1
    80008654:	fffff097          	auipc	ra,0xfffff
    80008658:	860080e7          	jalr	-1952(ra) # 80006eb4 <mycpu>
    8000865c:	00197913          	andi	s2,s2,1
    80008660:	07252e23          	sw	s2,124(a0)
    80008664:	f75ff06f          	j	800085d8 <acquire+0x3c>

0000000080008668 <release>:
    80008668:	fe010113          	addi	sp,sp,-32
    8000866c:	00813823          	sd	s0,16(sp)
    80008670:	00113c23          	sd	ra,24(sp)
    80008674:	00913423          	sd	s1,8(sp)
    80008678:	01213023          	sd	s2,0(sp)
    8000867c:	02010413          	addi	s0,sp,32
    80008680:	00052783          	lw	a5,0(a0)
    80008684:	00079a63          	bnez	a5,80008698 <release+0x30>
    80008688:	00001517          	auipc	a0,0x1
    8000868c:	0d850513          	addi	a0,a0,216 # 80009760 <digits+0x28>
    80008690:	fffff097          	auipc	ra,0xfffff
    80008694:	1dc080e7          	jalr	476(ra) # 8000786c <panic>
    80008698:	01053903          	ld	s2,16(a0)
    8000869c:	00050493          	mv	s1,a0
    800086a0:	fffff097          	auipc	ra,0xfffff
    800086a4:	814080e7          	jalr	-2028(ra) # 80006eb4 <mycpu>
    800086a8:	fea910e3          	bne	s2,a0,80008688 <release+0x20>
    800086ac:	0004b823          	sd	zero,16(s1)
    800086b0:	0ff0000f          	fence
    800086b4:	0f50000f          	fence	iorw,ow
    800086b8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800086bc:	ffffe097          	auipc	ra,0xffffe
    800086c0:	7f8080e7          	jalr	2040(ra) # 80006eb4 <mycpu>
    800086c4:	100027f3          	csrr	a5,sstatus
    800086c8:	0027f793          	andi	a5,a5,2
    800086cc:	04079a63          	bnez	a5,80008720 <release+0xb8>
    800086d0:	07852783          	lw	a5,120(a0)
    800086d4:	02f05e63          	blez	a5,80008710 <release+0xa8>
    800086d8:	fff7871b          	addiw	a4,a5,-1
    800086dc:	06e52c23          	sw	a4,120(a0)
    800086e0:	00071c63          	bnez	a4,800086f8 <release+0x90>
    800086e4:	07c52783          	lw	a5,124(a0)
    800086e8:	00078863          	beqz	a5,800086f8 <release+0x90>
    800086ec:	100027f3          	csrr	a5,sstatus
    800086f0:	0027e793          	ori	a5,a5,2
    800086f4:	10079073          	csrw	sstatus,a5
    800086f8:	01813083          	ld	ra,24(sp)
    800086fc:	01013403          	ld	s0,16(sp)
    80008700:	00813483          	ld	s1,8(sp)
    80008704:	00013903          	ld	s2,0(sp)
    80008708:	02010113          	addi	sp,sp,32
    8000870c:	00008067          	ret
    80008710:	00001517          	auipc	a0,0x1
    80008714:	07050513          	addi	a0,a0,112 # 80009780 <digits+0x48>
    80008718:	fffff097          	auipc	ra,0xfffff
    8000871c:	154080e7          	jalr	340(ra) # 8000786c <panic>
    80008720:	00001517          	auipc	a0,0x1
    80008724:	04850513          	addi	a0,a0,72 # 80009768 <digits+0x30>
    80008728:	fffff097          	auipc	ra,0xfffff
    8000872c:	144080e7          	jalr	324(ra) # 8000786c <panic>

0000000080008730 <holding>:
    80008730:	00052783          	lw	a5,0(a0)
    80008734:	00079663          	bnez	a5,80008740 <holding+0x10>
    80008738:	00000513          	li	a0,0
    8000873c:	00008067          	ret
    80008740:	fe010113          	addi	sp,sp,-32
    80008744:	00813823          	sd	s0,16(sp)
    80008748:	00913423          	sd	s1,8(sp)
    8000874c:	00113c23          	sd	ra,24(sp)
    80008750:	02010413          	addi	s0,sp,32
    80008754:	01053483          	ld	s1,16(a0)
    80008758:	ffffe097          	auipc	ra,0xffffe
    8000875c:	75c080e7          	jalr	1884(ra) # 80006eb4 <mycpu>
    80008760:	01813083          	ld	ra,24(sp)
    80008764:	01013403          	ld	s0,16(sp)
    80008768:	40a48533          	sub	a0,s1,a0
    8000876c:	00153513          	seqz	a0,a0
    80008770:	00813483          	ld	s1,8(sp)
    80008774:	02010113          	addi	sp,sp,32
    80008778:	00008067          	ret

000000008000877c <push_off>:
    8000877c:	fe010113          	addi	sp,sp,-32
    80008780:	00813823          	sd	s0,16(sp)
    80008784:	00113c23          	sd	ra,24(sp)
    80008788:	00913423          	sd	s1,8(sp)
    8000878c:	02010413          	addi	s0,sp,32
    80008790:	100024f3          	csrr	s1,sstatus
    80008794:	100027f3          	csrr	a5,sstatus
    80008798:	ffd7f793          	andi	a5,a5,-3
    8000879c:	10079073          	csrw	sstatus,a5
    800087a0:	ffffe097          	auipc	ra,0xffffe
    800087a4:	714080e7          	jalr	1812(ra) # 80006eb4 <mycpu>
    800087a8:	07852783          	lw	a5,120(a0)
    800087ac:	02078663          	beqz	a5,800087d8 <push_off+0x5c>
    800087b0:	ffffe097          	auipc	ra,0xffffe
    800087b4:	704080e7          	jalr	1796(ra) # 80006eb4 <mycpu>
    800087b8:	07852783          	lw	a5,120(a0)
    800087bc:	01813083          	ld	ra,24(sp)
    800087c0:	01013403          	ld	s0,16(sp)
    800087c4:	0017879b          	addiw	a5,a5,1
    800087c8:	06f52c23          	sw	a5,120(a0)
    800087cc:	00813483          	ld	s1,8(sp)
    800087d0:	02010113          	addi	sp,sp,32
    800087d4:	00008067          	ret
    800087d8:	0014d493          	srli	s1,s1,0x1
    800087dc:	ffffe097          	auipc	ra,0xffffe
    800087e0:	6d8080e7          	jalr	1752(ra) # 80006eb4 <mycpu>
    800087e4:	0014f493          	andi	s1,s1,1
    800087e8:	06952e23          	sw	s1,124(a0)
    800087ec:	fc5ff06f          	j	800087b0 <push_off+0x34>

00000000800087f0 <pop_off>:
    800087f0:	ff010113          	addi	sp,sp,-16
    800087f4:	00813023          	sd	s0,0(sp)
    800087f8:	00113423          	sd	ra,8(sp)
    800087fc:	01010413          	addi	s0,sp,16
    80008800:	ffffe097          	auipc	ra,0xffffe
    80008804:	6b4080e7          	jalr	1716(ra) # 80006eb4 <mycpu>
    80008808:	100027f3          	csrr	a5,sstatus
    8000880c:	0027f793          	andi	a5,a5,2
    80008810:	04079663          	bnez	a5,8000885c <pop_off+0x6c>
    80008814:	07852783          	lw	a5,120(a0)
    80008818:	02f05a63          	blez	a5,8000884c <pop_off+0x5c>
    8000881c:	fff7871b          	addiw	a4,a5,-1
    80008820:	06e52c23          	sw	a4,120(a0)
    80008824:	00071c63          	bnez	a4,8000883c <pop_off+0x4c>
    80008828:	07c52783          	lw	a5,124(a0)
    8000882c:	00078863          	beqz	a5,8000883c <pop_off+0x4c>
    80008830:	100027f3          	csrr	a5,sstatus
    80008834:	0027e793          	ori	a5,a5,2
    80008838:	10079073          	csrw	sstatus,a5
    8000883c:	00813083          	ld	ra,8(sp)
    80008840:	00013403          	ld	s0,0(sp)
    80008844:	01010113          	addi	sp,sp,16
    80008848:	00008067          	ret
    8000884c:	00001517          	auipc	a0,0x1
    80008850:	f3450513          	addi	a0,a0,-204 # 80009780 <digits+0x48>
    80008854:	fffff097          	auipc	ra,0xfffff
    80008858:	018080e7          	jalr	24(ra) # 8000786c <panic>
    8000885c:	00001517          	auipc	a0,0x1
    80008860:	f0c50513          	addi	a0,a0,-244 # 80009768 <digits+0x30>
    80008864:	fffff097          	auipc	ra,0xfffff
    80008868:	008080e7          	jalr	8(ra) # 8000786c <panic>

000000008000886c <push_on>:
    8000886c:	fe010113          	addi	sp,sp,-32
    80008870:	00813823          	sd	s0,16(sp)
    80008874:	00113c23          	sd	ra,24(sp)
    80008878:	00913423          	sd	s1,8(sp)
    8000887c:	02010413          	addi	s0,sp,32
    80008880:	100024f3          	csrr	s1,sstatus
    80008884:	100027f3          	csrr	a5,sstatus
    80008888:	0027e793          	ori	a5,a5,2
    8000888c:	10079073          	csrw	sstatus,a5
    80008890:	ffffe097          	auipc	ra,0xffffe
    80008894:	624080e7          	jalr	1572(ra) # 80006eb4 <mycpu>
    80008898:	07852783          	lw	a5,120(a0)
    8000889c:	02078663          	beqz	a5,800088c8 <push_on+0x5c>
    800088a0:	ffffe097          	auipc	ra,0xffffe
    800088a4:	614080e7          	jalr	1556(ra) # 80006eb4 <mycpu>
    800088a8:	07852783          	lw	a5,120(a0)
    800088ac:	01813083          	ld	ra,24(sp)
    800088b0:	01013403          	ld	s0,16(sp)
    800088b4:	0017879b          	addiw	a5,a5,1
    800088b8:	06f52c23          	sw	a5,120(a0)
    800088bc:	00813483          	ld	s1,8(sp)
    800088c0:	02010113          	addi	sp,sp,32
    800088c4:	00008067          	ret
    800088c8:	0014d493          	srli	s1,s1,0x1
    800088cc:	ffffe097          	auipc	ra,0xffffe
    800088d0:	5e8080e7          	jalr	1512(ra) # 80006eb4 <mycpu>
    800088d4:	0014f493          	andi	s1,s1,1
    800088d8:	06952e23          	sw	s1,124(a0)
    800088dc:	fc5ff06f          	j	800088a0 <push_on+0x34>

00000000800088e0 <pop_on>:
    800088e0:	ff010113          	addi	sp,sp,-16
    800088e4:	00813023          	sd	s0,0(sp)
    800088e8:	00113423          	sd	ra,8(sp)
    800088ec:	01010413          	addi	s0,sp,16
    800088f0:	ffffe097          	auipc	ra,0xffffe
    800088f4:	5c4080e7          	jalr	1476(ra) # 80006eb4 <mycpu>
    800088f8:	100027f3          	csrr	a5,sstatus
    800088fc:	0027f793          	andi	a5,a5,2
    80008900:	04078463          	beqz	a5,80008948 <pop_on+0x68>
    80008904:	07852783          	lw	a5,120(a0)
    80008908:	02f05863          	blez	a5,80008938 <pop_on+0x58>
    8000890c:	fff7879b          	addiw	a5,a5,-1
    80008910:	06f52c23          	sw	a5,120(a0)
    80008914:	07853783          	ld	a5,120(a0)
    80008918:	00079863          	bnez	a5,80008928 <pop_on+0x48>
    8000891c:	100027f3          	csrr	a5,sstatus
    80008920:	ffd7f793          	andi	a5,a5,-3
    80008924:	10079073          	csrw	sstatus,a5
    80008928:	00813083          	ld	ra,8(sp)
    8000892c:	00013403          	ld	s0,0(sp)
    80008930:	01010113          	addi	sp,sp,16
    80008934:	00008067          	ret
    80008938:	00001517          	auipc	a0,0x1
    8000893c:	e7050513          	addi	a0,a0,-400 # 800097a8 <digits+0x70>
    80008940:	fffff097          	auipc	ra,0xfffff
    80008944:	f2c080e7          	jalr	-212(ra) # 8000786c <panic>
    80008948:	00001517          	auipc	a0,0x1
    8000894c:	e4050513          	addi	a0,a0,-448 # 80009788 <digits+0x50>
    80008950:	fffff097          	auipc	ra,0xfffff
    80008954:	f1c080e7          	jalr	-228(ra) # 8000786c <panic>

0000000080008958 <__memset>:
    80008958:	ff010113          	addi	sp,sp,-16
    8000895c:	00813423          	sd	s0,8(sp)
    80008960:	01010413          	addi	s0,sp,16
    80008964:	1a060e63          	beqz	a2,80008b20 <__memset+0x1c8>
    80008968:	40a007b3          	neg	a5,a0
    8000896c:	0077f793          	andi	a5,a5,7
    80008970:	00778693          	addi	a3,a5,7
    80008974:	00b00813          	li	a6,11
    80008978:	0ff5f593          	andi	a1,a1,255
    8000897c:	fff6071b          	addiw	a4,a2,-1
    80008980:	1b06e663          	bltu	a3,a6,80008b2c <__memset+0x1d4>
    80008984:	1cd76463          	bltu	a4,a3,80008b4c <__memset+0x1f4>
    80008988:	1a078e63          	beqz	a5,80008b44 <__memset+0x1ec>
    8000898c:	00b50023          	sb	a1,0(a0)
    80008990:	00100713          	li	a4,1
    80008994:	1ae78463          	beq	a5,a4,80008b3c <__memset+0x1e4>
    80008998:	00b500a3          	sb	a1,1(a0)
    8000899c:	00200713          	li	a4,2
    800089a0:	1ae78a63          	beq	a5,a4,80008b54 <__memset+0x1fc>
    800089a4:	00b50123          	sb	a1,2(a0)
    800089a8:	00300713          	li	a4,3
    800089ac:	18e78463          	beq	a5,a4,80008b34 <__memset+0x1dc>
    800089b0:	00b501a3          	sb	a1,3(a0)
    800089b4:	00400713          	li	a4,4
    800089b8:	1ae78263          	beq	a5,a4,80008b5c <__memset+0x204>
    800089bc:	00b50223          	sb	a1,4(a0)
    800089c0:	00500713          	li	a4,5
    800089c4:	1ae78063          	beq	a5,a4,80008b64 <__memset+0x20c>
    800089c8:	00b502a3          	sb	a1,5(a0)
    800089cc:	00700713          	li	a4,7
    800089d0:	18e79e63          	bne	a5,a4,80008b6c <__memset+0x214>
    800089d4:	00b50323          	sb	a1,6(a0)
    800089d8:	00700e93          	li	t4,7
    800089dc:	00859713          	slli	a4,a1,0x8
    800089e0:	00e5e733          	or	a4,a1,a4
    800089e4:	01059e13          	slli	t3,a1,0x10
    800089e8:	01c76e33          	or	t3,a4,t3
    800089ec:	01859313          	slli	t1,a1,0x18
    800089f0:	006e6333          	or	t1,t3,t1
    800089f4:	02059893          	slli	a7,a1,0x20
    800089f8:	40f60e3b          	subw	t3,a2,a5
    800089fc:	011368b3          	or	a7,t1,a7
    80008a00:	02859813          	slli	a6,a1,0x28
    80008a04:	0108e833          	or	a6,a7,a6
    80008a08:	03059693          	slli	a3,a1,0x30
    80008a0c:	003e589b          	srliw	a7,t3,0x3
    80008a10:	00d866b3          	or	a3,a6,a3
    80008a14:	03859713          	slli	a4,a1,0x38
    80008a18:	00389813          	slli	a6,a7,0x3
    80008a1c:	00f507b3          	add	a5,a0,a5
    80008a20:	00e6e733          	or	a4,a3,a4
    80008a24:	000e089b          	sext.w	a7,t3
    80008a28:	00f806b3          	add	a3,a6,a5
    80008a2c:	00e7b023          	sd	a4,0(a5)
    80008a30:	00878793          	addi	a5,a5,8
    80008a34:	fed79ce3          	bne	a5,a3,80008a2c <__memset+0xd4>
    80008a38:	ff8e7793          	andi	a5,t3,-8
    80008a3c:	0007871b          	sext.w	a4,a5
    80008a40:	01d787bb          	addw	a5,a5,t4
    80008a44:	0ce88e63          	beq	a7,a4,80008b20 <__memset+0x1c8>
    80008a48:	00f50733          	add	a4,a0,a5
    80008a4c:	00b70023          	sb	a1,0(a4)
    80008a50:	0017871b          	addiw	a4,a5,1
    80008a54:	0cc77663          	bgeu	a4,a2,80008b20 <__memset+0x1c8>
    80008a58:	00e50733          	add	a4,a0,a4
    80008a5c:	00b70023          	sb	a1,0(a4)
    80008a60:	0027871b          	addiw	a4,a5,2
    80008a64:	0ac77e63          	bgeu	a4,a2,80008b20 <__memset+0x1c8>
    80008a68:	00e50733          	add	a4,a0,a4
    80008a6c:	00b70023          	sb	a1,0(a4)
    80008a70:	0037871b          	addiw	a4,a5,3
    80008a74:	0ac77663          	bgeu	a4,a2,80008b20 <__memset+0x1c8>
    80008a78:	00e50733          	add	a4,a0,a4
    80008a7c:	00b70023          	sb	a1,0(a4)
    80008a80:	0047871b          	addiw	a4,a5,4
    80008a84:	08c77e63          	bgeu	a4,a2,80008b20 <__memset+0x1c8>
    80008a88:	00e50733          	add	a4,a0,a4
    80008a8c:	00b70023          	sb	a1,0(a4)
    80008a90:	0057871b          	addiw	a4,a5,5
    80008a94:	08c77663          	bgeu	a4,a2,80008b20 <__memset+0x1c8>
    80008a98:	00e50733          	add	a4,a0,a4
    80008a9c:	00b70023          	sb	a1,0(a4)
    80008aa0:	0067871b          	addiw	a4,a5,6
    80008aa4:	06c77e63          	bgeu	a4,a2,80008b20 <__memset+0x1c8>
    80008aa8:	00e50733          	add	a4,a0,a4
    80008aac:	00b70023          	sb	a1,0(a4)
    80008ab0:	0077871b          	addiw	a4,a5,7
    80008ab4:	06c77663          	bgeu	a4,a2,80008b20 <__memset+0x1c8>
    80008ab8:	00e50733          	add	a4,a0,a4
    80008abc:	00b70023          	sb	a1,0(a4)
    80008ac0:	0087871b          	addiw	a4,a5,8
    80008ac4:	04c77e63          	bgeu	a4,a2,80008b20 <__memset+0x1c8>
    80008ac8:	00e50733          	add	a4,a0,a4
    80008acc:	00b70023          	sb	a1,0(a4)
    80008ad0:	0097871b          	addiw	a4,a5,9
    80008ad4:	04c77663          	bgeu	a4,a2,80008b20 <__memset+0x1c8>
    80008ad8:	00e50733          	add	a4,a0,a4
    80008adc:	00b70023          	sb	a1,0(a4)
    80008ae0:	00a7871b          	addiw	a4,a5,10
    80008ae4:	02c77e63          	bgeu	a4,a2,80008b20 <__memset+0x1c8>
    80008ae8:	00e50733          	add	a4,a0,a4
    80008aec:	00b70023          	sb	a1,0(a4)
    80008af0:	00b7871b          	addiw	a4,a5,11
    80008af4:	02c77663          	bgeu	a4,a2,80008b20 <__memset+0x1c8>
    80008af8:	00e50733          	add	a4,a0,a4
    80008afc:	00b70023          	sb	a1,0(a4)
    80008b00:	00c7871b          	addiw	a4,a5,12
    80008b04:	00c77e63          	bgeu	a4,a2,80008b20 <__memset+0x1c8>
    80008b08:	00e50733          	add	a4,a0,a4
    80008b0c:	00b70023          	sb	a1,0(a4)
    80008b10:	00d7879b          	addiw	a5,a5,13
    80008b14:	00c7f663          	bgeu	a5,a2,80008b20 <__memset+0x1c8>
    80008b18:	00f507b3          	add	a5,a0,a5
    80008b1c:	00b78023          	sb	a1,0(a5)
    80008b20:	00813403          	ld	s0,8(sp)
    80008b24:	01010113          	addi	sp,sp,16
    80008b28:	00008067          	ret
    80008b2c:	00b00693          	li	a3,11
    80008b30:	e55ff06f          	j	80008984 <__memset+0x2c>
    80008b34:	00300e93          	li	t4,3
    80008b38:	ea5ff06f          	j	800089dc <__memset+0x84>
    80008b3c:	00100e93          	li	t4,1
    80008b40:	e9dff06f          	j	800089dc <__memset+0x84>
    80008b44:	00000e93          	li	t4,0
    80008b48:	e95ff06f          	j	800089dc <__memset+0x84>
    80008b4c:	00000793          	li	a5,0
    80008b50:	ef9ff06f          	j	80008a48 <__memset+0xf0>
    80008b54:	00200e93          	li	t4,2
    80008b58:	e85ff06f          	j	800089dc <__memset+0x84>
    80008b5c:	00400e93          	li	t4,4
    80008b60:	e7dff06f          	j	800089dc <__memset+0x84>
    80008b64:	00500e93          	li	t4,5
    80008b68:	e75ff06f          	j	800089dc <__memset+0x84>
    80008b6c:	00600e93          	li	t4,6
    80008b70:	e6dff06f          	j	800089dc <__memset+0x84>

0000000080008b74 <__memmove>:
    80008b74:	ff010113          	addi	sp,sp,-16
    80008b78:	00813423          	sd	s0,8(sp)
    80008b7c:	01010413          	addi	s0,sp,16
    80008b80:	0e060863          	beqz	a2,80008c70 <__memmove+0xfc>
    80008b84:	fff6069b          	addiw	a3,a2,-1
    80008b88:	0006881b          	sext.w	a6,a3
    80008b8c:	0ea5e863          	bltu	a1,a0,80008c7c <__memmove+0x108>
    80008b90:	00758713          	addi	a4,a1,7
    80008b94:	00a5e7b3          	or	a5,a1,a0
    80008b98:	40a70733          	sub	a4,a4,a0
    80008b9c:	0077f793          	andi	a5,a5,7
    80008ba0:	00f73713          	sltiu	a4,a4,15
    80008ba4:	00174713          	xori	a4,a4,1
    80008ba8:	0017b793          	seqz	a5,a5
    80008bac:	00e7f7b3          	and	a5,a5,a4
    80008bb0:	10078863          	beqz	a5,80008cc0 <__memmove+0x14c>
    80008bb4:	00900793          	li	a5,9
    80008bb8:	1107f463          	bgeu	a5,a6,80008cc0 <__memmove+0x14c>
    80008bbc:	0036581b          	srliw	a6,a2,0x3
    80008bc0:	fff8081b          	addiw	a6,a6,-1
    80008bc4:	02081813          	slli	a6,a6,0x20
    80008bc8:	01d85893          	srli	a7,a6,0x1d
    80008bcc:	00858813          	addi	a6,a1,8
    80008bd0:	00058793          	mv	a5,a1
    80008bd4:	00050713          	mv	a4,a0
    80008bd8:	01088833          	add	a6,a7,a6
    80008bdc:	0007b883          	ld	a7,0(a5)
    80008be0:	00878793          	addi	a5,a5,8
    80008be4:	00870713          	addi	a4,a4,8
    80008be8:	ff173c23          	sd	a7,-8(a4)
    80008bec:	ff0798e3          	bne	a5,a6,80008bdc <__memmove+0x68>
    80008bf0:	ff867713          	andi	a4,a2,-8
    80008bf4:	02071793          	slli	a5,a4,0x20
    80008bf8:	0207d793          	srli	a5,a5,0x20
    80008bfc:	00f585b3          	add	a1,a1,a5
    80008c00:	40e686bb          	subw	a3,a3,a4
    80008c04:	00f507b3          	add	a5,a0,a5
    80008c08:	06e60463          	beq	a2,a4,80008c70 <__memmove+0xfc>
    80008c0c:	0005c703          	lbu	a4,0(a1)
    80008c10:	00e78023          	sb	a4,0(a5)
    80008c14:	04068e63          	beqz	a3,80008c70 <__memmove+0xfc>
    80008c18:	0015c603          	lbu	a2,1(a1)
    80008c1c:	00100713          	li	a4,1
    80008c20:	00c780a3          	sb	a2,1(a5)
    80008c24:	04e68663          	beq	a3,a4,80008c70 <__memmove+0xfc>
    80008c28:	0025c603          	lbu	a2,2(a1)
    80008c2c:	00200713          	li	a4,2
    80008c30:	00c78123          	sb	a2,2(a5)
    80008c34:	02e68e63          	beq	a3,a4,80008c70 <__memmove+0xfc>
    80008c38:	0035c603          	lbu	a2,3(a1)
    80008c3c:	00300713          	li	a4,3
    80008c40:	00c781a3          	sb	a2,3(a5)
    80008c44:	02e68663          	beq	a3,a4,80008c70 <__memmove+0xfc>
    80008c48:	0045c603          	lbu	a2,4(a1)
    80008c4c:	00400713          	li	a4,4
    80008c50:	00c78223          	sb	a2,4(a5)
    80008c54:	00e68e63          	beq	a3,a4,80008c70 <__memmove+0xfc>
    80008c58:	0055c603          	lbu	a2,5(a1)
    80008c5c:	00500713          	li	a4,5
    80008c60:	00c782a3          	sb	a2,5(a5)
    80008c64:	00e68663          	beq	a3,a4,80008c70 <__memmove+0xfc>
    80008c68:	0065c703          	lbu	a4,6(a1)
    80008c6c:	00e78323          	sb	a4,6(a5)
    80008c70:	00813403          	ld	s0,8(sp)
    80008c74:	01010113          	addi	sp,sp,16
    80008c78:	00008067          	ret
    80008c7c:	02061713          	slli	a4,a2,0x20
    80008c80:	02075713          	srli	a4,a4,0x20
    80008c84:	00e587b3          	add	a5,a1,a4
    80008c88:	f0f574e3          	bgeu	a0,a5,80008b90 <__memmove+0x1c>
    80008c8c:	02069613          	slli	a2,a3,0x20
    80008c90:	02065613          	srli	a2,a2,0x20
    80008c94:	fff64613          	not	a2,a2
    80008c98:	00e50733          	add	a4,a0,a4
    80008c9c:	00c78633          	add	a2,a5,a2
    80008ca0:	fff7c683          	lbu	a3,-1(a5)
    80008ca4:	fff78793          	addi	a5,a5,-1
    80008ca8:	fff70713          	addi	a4,a4,-1
    80008cac:	00d70023          	sb	a3,0(a4)
    80008cb0:	fec798e3          	bne	a5,a2,80008ca0 <__memmove+0x12c>
    80008cb4:	00813403          	ld	s0,8(sp)
    80008cb8:	01010113          	addi	sp,sp,16
    80008cbc:	00008067          	ret
    80008cc0:	02069713          	slli	a4,a3,0x20
    80008cc4:	02075713          	srli	a4,a4,0x20
    80008cc8:	00170713          	addi	a4,a4,1
    80008ccc:	00e50733          	add	a4,a0,a4
    80008cd0:	00050793          	mv	a5,a0
    80008cd4:	0005c683          	lbu	a3,0(a1)
    80008cd8:	00178793          	addi	a5,a5,1
    80008cdc:	00158593          	addi	a1,a1,1
    80008ce0:	fed78fa3          	sb	a3,-1(a5)
    80008ce4:	fee798e3          	bne	a5,a4,80008cd4 <__memmove+0x160>
    80008ce8:	f89ff06f          	j	80008c70 <__memmove+0xfc>

0000000080008cec <__putc>:
    80008cec:	fe010113          	addi	sp,sp,-32
    80008cf0:	00813823          	sd	s0,16(sp)
    80008cf4:	00113c23          	sd	ra,24(sp)
    80008cf8:	02010413          	addi	s0,sp,32
    80008cfc:	00050793          	mv	a5,a0
    80008d00:	fef40593          	addi	a1,s0,-17
    80008d04:	00100613          	li	a2,1
    80008d08:	00000513          	li	a0,0
    80008d0c:	fef407a3          	sb	a5,-17(s0)
    80008d10:	fffff097          	auipc	ra,0xfffff
    80008d14:	b3c080e7          	jalr	-1220(ra) # 8000784c <console_write>
    80008d18:	01813083          	ld	ra,24(sp)
    80008d1c:	01013403          	ld	s0,16(sp)
    80008d20:	02010113          	addi	sp,sp,32
    80008d24:	00008067          	ret

0000000080008d28 <__getc>:
    80008d28:	fe010113          	addi	sp,sp,-32
    80008d2c:	00813823          	sd	s0,16(sp)
    80008d30:	00113c23          	sd	ra,24(sp)
    80008d34:	02010413          	addi	s0,sp,32
    80008d38:	fe840593          	addi	a1,s0,-24
    80008d3c:	00100613          	li	a2,1
    80008d40:	00000513          	li	a0,0
    80008d44:	fffff097          	auipc	ra,0xfffff
    80008d48:	ae8080e7          	jalr	-1304(ra) # 8000782c <console_read>
    80008d4c:	fe844503          	lbu	a0,-24(s0)
    80008d50:	01813083          	ld	ra,24(sp)
    80008d54:	01013403          	ld	s0,16(sp)
    80008d58:	02010113          	addi	sp,sp,32
    80008d5c:	00008067          	ret

0000000080008d60 <console_handler>:
    80008d60:	fe010113          	addi	sp,sp,-32
    80008d64:	00813823          	sd	s0,16(sp)
    80008d68:	00113c23          	sd	ra,24(sp)
    80008d6c:	00913423          	sd	s1,8(sp)
    80008d70:	02010413          	addi	s0,sp,32
    80008d74:	14202773          	csrr	a4,scause
    80008d78:	100027f3          	csrr	a5,sstatus
    80008d7c:	0027f793          	andi	a5,a5,2
    80008d80:	06079e63          	bnez	a5,80008dfc <console_handler+0x9c>
    80008d84:	00074c63          	bltz	a4,80008d9c <console_handler+0x3c>
    80008d88:	01813083          	ld	ra,24(sp)
    80008d8c:	01013403          	ld	s0,16(sp)
    80008d90:	00813483          	ld	s1,8(sp)
    80008d94:	02010113          	addi	sp,sp,32
    80008d98:	00008067          	ret
    80008d9c:	0ff77713          	andi	a4,a4,255
    80008da0:	00900793          	li	a5,9
    80008da4:	fef712e3          	bne	a4,a5,80008d88 <console_handler+0x28>
    80008da8:	ffffe097          	auipc	ra,0xffffe
    80008dac:	6dc080e7          	jalr	1756(ra) # 80007484 <plic_claim>
    80008db0:	00a00793          	li	a5,10
    80008db4:	00050493          	mv	s1,a0
    80008db8:	02f50c63          	beq	a0,a5,80008df0 <console_handler+0x90>
    80008dbc:	fc0506e3          	beqz	a0,80008d88 <console_handler+0x28>
    80008dc0:	00050593          	mv	a1,a0
    80008dc4:	00001517          	auipc	a0,0x1
    80008dc8:	8ec50513          	addi	a0,a0,-1812 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80008dcc:	fffff097          	auipc	ra,0xfffff
    80008dd0:	afc080e7          	jalr	-1284(ra) # 800078c8 <__printf>
    80008dd4:	01013403          	ld	s0,16(sp)
    80008dd8:	01813083          	ld	ra,24(sp)
    80008ddc:	00048513          	mv	a0,s1
    80008de0:	00813483          	ld	s1,8(sp)
    80008de4:	02010113          	addi	sp,sp,32
    80008de8:	ffffe317          	auipc	t1,0xffffe
    80008dec:	6d430067          	jr	1748(t1) # 800074bc <plic_complete>
    80008df0:	fffff097          	auipc	ra,0xfffff
    80008df4:	3e0080e7          	jalr	992(ra) # 800081d0 <uartintr>
    80008df8:	fddff06f          	j	80008dd4 <console_handler+0x74>
    80008dfc:	00001517          	auipc	a0,0x1
    80008e00:	9b450513          	addi	a0,a0,-1612 # 800097b0 <digits+0x78>
    80008e04:	fffff097          	auipc	ra,0xfffff
    80008e08:	a68080e7          	jalr	-1432(ra) # 8000786c <panic>
	...
