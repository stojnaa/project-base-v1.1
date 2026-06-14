
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	8f813103          	ld	sp,-1800(sp) # 8000b8f8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	260060ef          	jal	ra,8000627c <start>

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
    80001090:	18d000ef          	jal	ra,80001a1c <handleSupervisorTrap>

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
.align 4
.global contextSwitch
.type contextSwitch, @function

contextSwitch:
    sd ra, 0(a0)
    80001130:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 8(a0)
    80001134:	00253423          	sd	sp,8(a0)

    ld ra, 0(a1)
    80001138:	0005b083          	ld	ra,0(a1)
    ld sp, 8(a1)
    8000113c:	0085b103          	ld	sp,8(a1)

    80001140:	00008067          	ret

0000000080001144 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001144:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001148:	00b29a63          	bne	t0,a1,8000115c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000114c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001150:	fe029ae3          	bnez	t0,80001144 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001154:	00000513          	li	a0,0
    jr ra                  # Return.
    80001158:	00008067          	ret

000000008000115c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000115c:	00100513          	li	a0,1
    80001160:	00008067          	ret

0000000080001164 <_ZL9doSyscallmmmmm>:
#include "../h/syscall_c.hpp"

static uint64 doSyscall(uint64 code, uint64 arg1 = 0, uint64 arg2 = 0,
                        uint64 arg3 = 0, uint64 arg4 = 0) {
    80001164:	ff010113          	addi	sp,sp,-16
    80001168:	00813423          	sd	s0,8(sp)
    8000116c:	01010413          	addi	s0,sp,16
    uint64 ret;

    asm volatile("mv a4, %0" : : "r"(arg4));
    80001170:	00070713          	mv	a4,a4
    asm volatile("mv a3, %0" : : "r"(arg3));
    80001174:	00068693          	mv	a3,a3
    asm volatile("mv a2, %0" : : "r"(arg2));
    80001178:	00060613          	mv	a2,a2
    asm volatile("mv a1, %0" : : "r"(arg1));
    8000117c:	00058593          	mv	a1,a1
    asm volatile("mv a0, %0" : : "r"(code));
    80001180:	00050513          	mv	a0,a0

    asm volatile("ecall");
    80001184:	00000073          	ecall

    asm volatile("mv %0, a0" : "=r"(ret));
    80001188:	00050513          	mv	a0,a0

    return ret;
}
    8000118c:	00813403          	ld	s0,8(sp)
    80001190:	01010113          	addi	sp,sp,16
    80001194:	00008067          	ret

0000000080001198 <_Z9mem_allocm>:

void* mem_alloc(size_t size) {
    if (size == 0) {
    80001198:	04050263          	beqz	a0,800011dc <_Z9mem_allocm+0x44>
void* mem_alloc(size_t size) {
    8000119c:	ff010113          	addi	sp,sp,-16
    800011a0:	00113423          	sd	ra,8(sp)
    800011a4:	00813023          	sd	s0,0(sp)
    800011a8:	01010413          	addi	s0,sp,16
        return nullptr;
    }

    size_t numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    800011ac:	03f50513          	addi	a0,a0,63

    return (void*)doSyscall(0x01, numBlocks);
    800011b0:	00000713          	li	a4,0
    800011b4:	00000693          	li	a3,0
    800011b8:	00000613          	li	a2,0
    800011bc:	00655593          	srli	a1,a0,0x6
    800011c0:	00100513          	li	a0,1
    800011c4:	00000097          	auipc	ra,0x0
    800011c8:	fa0080e7          	jalr	-96(ra) # 80001164 <_ZL9doSyscallmmmmm>
}
    800011cc:	00813083          	ld	ra,8(sp)
    800011d0:	00013403          	ld	s0,0(sp)
    800011d4:	01010113          	addi	sp,sp,16
    800011d8:	00008067          	ret
        return nullptr;
    800011dc:	00000513          	li	a0,0
}
    800011e0:	00008067          	ret

00000000800011e4 <_Z8mem_freePv>:

int mem_free(void* ptr) {
    800011e4:	ff010113          	addi	sp,sp,-16
    800011e8:	00113423          	sd	ra,8(sp)
    800011ec:	00813023          	sd	s0,0(sp)
    800011f0:	01010413          	addi	s0,sp,16
    800011f4:	00050593          	mv	a1,a0
    return (int)doSyscall(0x02, (uint64)ptr);
    800011f8:	00000713          	li	a4,0
    800011fc:	00000693          	li	a3,0
    80001200:	00000613          	li	a2,0
    80001204:	00200513          	li	a0,2
    80001208:	00000097          	auipc	ra,0x0
    8000120c:	f5c080e7          	jalr	-164(ra) # 80001164 <_ZL9doSyscallmmmmm>
}
    80001210:	0005051b          	sext.w	a0,a0
    80001214:	00813083          	ld	ra,8(sp)
    80001218:	00013403          	ld	s0,0(sp)
    8000121c:	01010113          	addi	sp,sp,16
    80001220:	00008067          	ret

0000000080001224 <_Z13thread_createPP7_threadPFvPvES2_>:


int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg){
    80001224:	fd010113          	addi	sp,sp,-48
    80001228:	02113423          	sd	ra,40(sp)
    8000122c:	02813023          	sd	s0,32(sp)
    80001230:	00913c23          	sd	s1,24(sp)
    80001234:	01213823          	sd	s2,16(sp)
    80001238:	01313423          	sd	s3,8(sp)
    8000123c:	01413023          	sd	s4,0(sp)
    80001240:	03010413          	addi	s0,sp,48
    if (handle == nullptr || start_routine == nullptr){
    80001244:	08050663          	beqz	a0,800012d0 <_Z13thread_createPP7_threadPFvPvES2_+0xac>
    80001248:	00050913          	mv	s2,a0
    8000124c:	00058993          	mv	s3,a1
    80001250:	00060a13          	mv	s4,a2
    80001254:	08058263          	beqz	a1,800012d8 <_Z13thread_createPP7_threadPFvPvES2_+0xb4>
        return -1;
    }
    void* stack = mem_alloc(DEFAULT_STACK_SIZE);
    80001258:	00001537          	lui	a0,0x1
    8000125c:	00000097          	auipc	ra,0x0
    80001260:	f3c080e7          	jalr	-196(ra) # 80001198 <_Z9mem_allocm>
    80001264:	00050493          	mv	s1,a0
    if (stack == nullptr){
    80001268:	06050c63          	beqz	a0,800012e0 <_Z13thread_createPP7_threadPFvPvES2_+0xbc>
        return -1;
    }
    uint64 stackTop = (uint64)stack + DEFAULT_STACK_SIZE;//stek raste na dole, pocetni sp na kraju alociranog prostora
    8000126c:	00001737          	lui	a4,0x1
    80001270:	00e50733          	add	a4,a0,a4
    stackTop &= ~((uint64)0xF);//obrisemo poslednja 4 bita adrese jer deljivo sa 16

    int ret = (int)doSyscall(
    80001274:	ff077713          	andi	a4,a4,-16
    80001278:	000a0693          	mv	a3,s4
    8000127c:	00098613          	mv	a2,s3
    80001280:	00090593          	mv	a1,s2
    80001284:	01100513          	li	a0,17
    80001288:	00000097          	auipc	ra,0x0
    8000128c:	edc080e7          	jalr	-292(ra) # 80001164 <_ZL9doSyscallmmmmm>
            0x11,
            (uint64)handle,
            (uint64)start_routine,
            (uint64)arg,
            stackTop
    );
    80001290:	0005091b          	sext.w	s2,a0

    if (ret < 0) {
    80001294:	02051793          	slli	a5,a0,0x20
    80001298:	0207c463          	bltz	a5,800012c0 <_Z13thread_createPP7_threadPFvPvES2_+0x9c>
        mem_free(stack);
    }

    return ret;
}
    8000129c:	00090513          	mv	a0,s2
    800012a0:	02813083          	ld	ra,40(sp)
    800012a4:	02013403          	ld	s0,32(sp)
    800012a8:	01813483          	ld	s1,24(sp)
    800012ac:	01013903          	ld	s2,16(sp)
    800012b0:	00813983          	ld	s3,8(sp)
    800012b4:	00013a03          	ld	s4,0(sp)
    800012b8:	03010113          	addi	sp,sp,48
    800012bc:	00008067          	ret
        mem_free(stack);
    800012c0:	00048513          	mv	a0,s1
    800012c4:	00000097          	auipc	ra,0x0
    800012c8:	f20080e7          	jalr	-224(ra) # 800011e4 <_Z8mem_freePv>
    800012cc:	fd1ff06f          	j	8000129c <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;
    800012d0:	fff00913          	li	s2,-1
    800012d4:	fc9ff06f          	j	8000129c <_Z13thread_createPP7_threadPFvPvES2_+0x78>
    800012d8:	fff00913          	li	s2,-1
    800012dc:	fc1ff06f          	j	8000129c <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;
    800012e0:	fff00913          	li	s2,-1
    800012e4:	fb9ff06f          	j	8000129c <_Z13thread_createPP7_threadPFvPvES2_+0x78>

00000000800012e8 <_Z11thread_exitv>:
int thread_exit() {
    800012e8:	ff010113          	addi	sp,sp,-16
    800012ec:	00113423          	sd	ra,8(sp)
    800012f0:	00813023          	sd	s0,0(sp)
    800012f4:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x12);
    800012f8:	00000713          	li	a4,0
    800012fc:	00000693          	li	a3,0
    80001300:	00000613          	li	a2,0
    80001304:	00000593          	li	a1,0
    80001308:	01200513          	li	a0,18
    8000130c:	00000097          	auipc	ra,0x0
    80001310:	e58080e7          	jalr	-424(ra) # 80001164 <_ZL9doSyscallmmmmm>
}
    80001314:	0005051b          	sext.w	a0,a0
    80001318:	00813083          	ld	ra,8(sp)
    8000131c:	00013403          	ld	s0,0(sp)
    80001320:	01010113          	addi	sp,sp,16
    80001324:	00008067          	ret

0000000080001328 <_Z15thread_dispatchv>:
void thread_dispatch() {
    80001328:	ff010113          	addi	sp,sp,-16
    8000132c:	00113423          	sd	ra,8(sp)
    80001330:	00813023          	sd	s0,0(sp)
    80001334:	01010413          	addi	s0,sp,16
    doSyscall(0x13);
    80001338:	00000713          	li	a4,0
    8000133c:	00000693          	li	a3,0
    80001340:	00000613          	li	a2,0
    80001344:	00000593          	li	a1,0
    80001348:	01300513          	li	a0,19
    8000134c:	00000097          	auipc	ra,0x0
    80001350:	e18080e7          	jalr	-488(ra) # 80001164 <_ZL9doSyscallmmmmm>
}
    80001354:	00813083          	ld	ra,8(sp)
    80001358:	00013403          	ld	s0,0(sp)
    8000135c:	01010113          	addi	sp,sp,16
    80001360:	00008067          	ret

0000000080001364 <_Z8sem_openPP4_semj>:
int sem_open(sem_t* handle, unsigned init) {
    80001364:	ff010113          	addi	sp,sp,-16
    80001368:	00113423          	sd	ra,8(sp)
    8000136c:	00813023          	sd	s0,0(sp)
    80001370:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x21, (uint64)handle, (uint64)init);
    80001374:	00000713          	li	a4,0
    80001378:	00000693          	li	a3,0
    8000137c:	02059613          	slli	a2,a1,0x20
    80001380:	02065613          	srli	a2,a2,0x20
    80001384:	00050593          	mv	a1,a0
    80001388:	02100513          	li	a0,33
    8000138c:	00000097          	auipc	ra,0x0
    80001390:	dd8080e7          	jalr	-552(ra) # 80001164 <_ZL9doSyscallmmmmm>
}
    80001394:	0005051b          	sext.w	a0,a0
    80001398:	00813083          	ld	ra,8(sp)
    8000139c:	00013403          	ld	s0,0(sp)
    800013a0:	01010113          	addi	sp,sp,16
    800013a4:	00008067          	ret

00000000800013a8 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    800013a8:	ff010113          	addi	sp,sp,-16
    800013ac:	00113423          	sd	ra,8(sp)
    800013b0:	00813023          	sd	s0,0(sp)
    800013b4:	01010413          	addi	s0,sp,16
    800013b8:	00050593          	mv	a1,a0
    return (int)doSyscall(0x22, (uint64)handle);
    800013bc:	00000713          	li	a4,0
    800013c0:	00000693          	li	a3,0
    800013c4:	00000613          	li	a2,0
    800013c8:	02200513          	li	a0,34
    800013cc:	00000097          	auipc	ra,0x0
    800013d0:	d98080e7          	jalr	-616(ra) # 80001164 <_ZL9doSyscallmmmmm>
}
    800013d4:	0005051b          	sext.w	a0,a0
    800013d8:	00813083          	ld	ra,8(sp)
    800013dc:	00013403          	ld	s0,0(sp)
    800013e0:	01010113          	addi	sp,sp,16
    800013e4:	00008067          	ret

00000000800013e8 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    800013e8:	ff010113          	addi	sp,sp,-16
    800013ec:	00113423          	sd	ra,8(sp)
    800013f0:	00813023          	sd	s0,0(sp)
    800013f4:	01010413          	addi	s0,sp,16
    800013f8:	00050593          	mv	a1,a0
    return (int)doSyscall(0x23, (uint64)id);
    800013fc:	00000713          	li	a4,0
    80001400:	00000693          	li	a3,0
    80001404:	00000613          	li	a2,0
    80001408:	02300513          	li	a0,35
    8000140c:	00000097          	auipc	ra,0x0
    80001410:	d58080e7          	jalr	-680(ra) # 80001164 <_ZL9doSyscallmmmmm>
}
    80001414:	0005051b          	sext.w	a0,a0
    80001418:	00813083          	ld	ra,8(sp)
    8000141c:	00013403          	ld	s0,0(sp)
    80001420:	01010113          	addi	sp,sp,16
    80001424:	00008067          	ret

0000000080001428 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    80001428:	ff010113          	addi	sp,sp,-16
    8000142c:	00113423          	sd	ra,8(sp)
    80001430:	00813023          	sd	s0,0(sp)
    80001434:	01010413          	addi	s0,sp,16
    80001438:	00050593          	mv	a1,a0
    return (int)doSyscall(0x24, (uint64)id);
    8000143c:	00000713          	li	a4,0
    80001440:	00000693          	li	a3,0
    80001444:	00000613          	li	a2,0
    80001448:	02400513          	li	a0,36
    8000144c:	00000097          	auipc	ra,0x0
    80001450:	d18080e7          	jalr	-744(ra) # 80001164 <_ZL9doSyscallmmmmm>
}
    80001454:	0005051b          	sext.w	a0,a0
    80001458:	00813083          	ld	ra,8(sp)
    8000145c:	00013403          	ld	s0,0(sp)
    80001460:	01010113          	addi	sp,sp,16
    80001464:	00008067          	ret

0000000080001468 <_Z10sem_wait_nP4_semj>:

int sem_wait_n(sem_t id, unsigned n) {
    80001468:	ff010113          	addi	sp,sp,-16
    8000146c:	00113423          	sd	ra,8(sp)
    80001470:	00813023          	sd	s0,0(sp)
    80001474:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x25, (uint64)id, (uint64)n);
    80001478:	00000713          	li	a4,0
    8000147c:	00000693          	li	a3,0
    80001480:	02059613          	slli	a2,a1,0x20
    80001484:	02065613          	srli	a2,a2,0x20
    80001488:	00050593          	mv	a1,a0
    8000148c:	02500513          	li	a0,37
    80001490:	00000097          	auipc	ra,0x0
    80001494:	cd4080e7          	jalr	-812(ra) # 80001164 <_ZL9doSyscallmmmmm>
}
    80001498:	0005051b          	sext.w	a0,a0
    8000149c:	00813083          	ld	ra,8(sp)
    800014a0:	00013403          	ld	s0,0(sp)
    800014a4:	01010113          	addi	sp,sp,16
    800014a8:	00008067          	ret

00000000800014ac <_Z12sem_signal_nP4_semj>:

int sem_signal_n(sem_t id, unsigned n) {
    800014ac:	ff010113          	addi	sp,sp,-16
    800014b0:	00113423          	sd	ra,8(sp)
    800014b4:	00813023          	sd	s0,0(sp)
    800014b8:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x26, (uint64)id, (uint64)n);
    800014bc:	00000713          	li	a4,0
    800014c0:	00000693          	li	a3,0
    800014c4:	02059613          	slli	a2,a1,0x20
    800014c8:	02065613          	srli	a2,a2,0x20
    800014cc:	00050593          	mv	a1,a0
    800014d0:	02600513          	li	a0,38
    800014d4:	00000097          	auipc	ra,0x0
    800014d8:	c90080e7          	jalr	-880(ra) # 80001164 <_ZL9doSyscallmmmmm>
}
    800014dc:	0005051b          	sext.w	a0,a0
    800014e0:	00813083          	ld	ra,8(sp)
    800014e4:	00013403          	ld	s0,0(sp)
    800014e8:	01010113          	addi	sp,sp,16
    800014ec:	00008067          	ret

00000000800014f0 <_Z10time_sleepm>:
int time_sleep(time_t time) {
    800014f0:	ff010113          	addi	sp,sp,-16
    800014f4:	00113423          	sd	ra,8(sp)
    800014f8:	00813023          	sd	s0,0(sp)
    800014fc:	01010413          	addi	s0,sp,16
    80001500:	00050593          	mv	a1,a0
    return (int)doSyscall(0x31, (uint64)time);
    80001504:	00000713          	li	a4,0
    80001508:	00000693          	li	a3,0
    8000150c:	00000613          	li	a2,0
    80001510:	03100513          	li	a0,49
    80001514:	00000097          	auipc	ra,0x0
    80001518:	c50080e7          	jalr	-944(ra) # 80001164 <_ZL9doSyscallmmmmm>
}
    8000151c:	0005051b          	sext.w	a0,a0
    80001520:	00813083          	ld	ra,8(sp)
    80001524:	00013403          	ld	s0,0(sp)
    80001528:	01010113          	addi	sp,sp,16
    8000152c:	00008067          	ret

0000000080001530 <_Z4getcv>:

char getc() {
    80001530:	ff010113          	addi	sp,sp,-16
    80001534:	00113423          	sd	ra,8(sp)
    80001538:	00813023          	sd	s0,0(sp)
    8000153c:	01010413          	addi	s0,sp,16
    return (char)doSyscall(0x41);
    80001540:	00000713          	li	a4,0
    80001544:	00000693          	li	a3,0
    80001548:	00000613          	li	a2,0
    8000154c:	00000593          	li	a1,0
    80001550:	04100513          	li	a0,65
    80001554:	00000097          	auipc	ra,0x0
    80001558:	c10080e7          	jalr	-1008(ra) # 80001164 <_ZL9doSyscallmmmmm>
}
    8000155c:	0ff57513          	andi	a0,a0,255
    80001560:	00813083          	ld	ra,8(sp)
    80001564:	00013403          	ld	s0,0(sp)
    80001568:	01010113          	addi	sp,sp,16
    8000156c:	00008067          	ret

0000000080001570 <_Z4putcc>:

void putc(char c) {
    80001570:	ff010113          	addi	sp,sp,-16
    80001574:	00113423          	sd	ra,8(sp)
    80001578:	00813023          	sd	s0,0(sp)
    8000157c:	01010413          	addi	s0,sp,16
    80001580:	00050593          	mv	a1,a0
    doSyscall(0x42, (uint64)c);
    80001584:	00000713          	li	a4,0
    80001588:	00000693          	li	a3,0
    8000158c:	00000613          	li	a2,0
    80001590:	04200513          	li	a0,66
    80001594:	00000097          	auipc	ra,0x0
    80001598:	bd0080e7          	jalr	-1072(ra) # 80001164 <_ZL9doSyscallmmmmm>
    8000159c:	00813083          	ld	ra,8(sp)
    800015a0:	00013403          	ld	s0,0(sp)
    800015a4:	01010113          	addi	sp,sp,16
    800015a8:	00008067          	ret

00000000800015ac <_ZL23blocksForBytesSemaphorem>:
#include "../h/Semaphore.hpp"
#include "../h/Thread.hpp"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"

static size_t blocksForBytesSemaphore(size_t bytes) {
    800015ac:	ff010113          	addi	sp,sp,-16
    800015b0:	00813423          	sd	s0,8(sp)
    800015b4:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    800015b8:	03f50513          	addi	a0,a0,63 # 103f <_entry-0x7fffefc1>
}
    800015bc:	00655513          	srli	a0,a0,0x6
    800015c0:	00813403          	ld	s0,8(sp)
    800015c4:	01010113          	addi	sp,sp,16
    800015c8:	00008067          	ret

00000000800015cc <_ZN4_semnwEm>:

void* _sem::operator new(size_t size) {
    800015cc:	fe010113          	addi	sp,sp,-32
    800015d0:	00113c23          	sd	ra,24(sp)
    800015d4:	00813823          	sd	s0,16(sp)
    800015d8:	00913423          	sd	s1,8(sp)
    800015dc:	01213023          	sd	s2,0(sp)
    800015e0:	02010413          	addi	s0,sp,32
    800015e4:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytesSemaphore(size));
    800015e8:	00001097          	auipc	ra,0x1
    800015ec:	3a4080e7          	jalr	932(ra) # 8000298c <_ZN15MemoryAllocator11getInstanceEv>
    800015f0:	00050493          	mv	s1,a0
    800015f4:	00090513          	mv	a0,s2
    800015f8:	00000097          	auipc	ra,0x0
    800015fc:	fb4080e7          	jalr	-76(ra) # 800015ac <_ZL23blocksForBytesSemaphorem>
    80001600:	00050593          	mv	a1,a0
    80001604:	00048513          	mv	a0,s1
    80001608:	00001097          	auipc	ra,0x1
    8000160c:	404080e7          	jalr	1028(ra) # 80002a0c <_ZN15MemoryAllocator6mallocEm>
}
    80001610:	01813083          	ld	ra,24(sp)
    80001614:	01013403          	ld	s0,16(sp)
    80001618:	00813483          	ld	s1,8(sp)
    8000161c:	00013903          	ld	s2,0(sp)
    80001620:	02010113          	addi	sp,sp,32
    80001624:	00008067          	ret

0000000080001628 <_ZN4_semdlEPv>:

void _sem::operator delete(void* ptr) {
    if (ptr == nullptr) {
    80001628:	04050263          	beqz	a0,8000166c <_ZN4_semdlEPv+0x44>
void _sem::operator delete(void* ptr) {
    8000162c:	fe010113          	addi	sp,sp,-32
    80001630:	00113c23          	sd	ra,24(sp)
    80001634:	00813823          	sd	s0,16(sp)
    80001638:	00913423          	sd	s1,8(sp)
    8000163c:	02010413          	addi	s0,sp,32
    80001640:	00050493          	mv	s1,a0
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
    80001644:	00001097          	auipc	ra,0x1
    80001648:	348080e7          	jalr	840(ra) # 8000298c <_ZN15MemoryAllocator11getInstanceEv>
    8000164c:	00048593          	mv	a1,s1
    80001650:	00001097          	auipc	ra,0x1
    80001654:	518080e7          	jalr	1304(ra) # 80002b68 <_ZN15MemoryAllocator4freeEPv>
}
    80001658:	01813083          	ld	ra,24(sp)
    8000165c:	01013403          	ld	s0,16(sp)
    80001660:	00813483          	ld	s1,8(sp)
    80001664:	02010113          	addi	sp,sp,32
    80001668:	00008067          	ret
    8000166c:	00008067          	ret

0000000080001670 <_ZN4_semC1Ej>:

_sem::_sem(unsigned init) {
    80001670:	ff010113          	addi	sp,sp,-16
    80001674:	00813423          	sd	s0,8(sp)
    80001678:	01010413          	addi	s0,sp,16
    val = (int)init;
    8000167c:	00b52023          	sw	a1,0(a0)
    closed = false;
    80001680:	00050223          	sb	zero,4(a0)
    head = nullptr;
    80001684:	00053423          	sd	zero,8(a0)
    tail = nullptr;
    80001688:	00053823          	sd	zero,16(a0)
}
    8000168c:	00813403          	ld	s0,8(sp)
    80001690:	01010113          	addi	sp,sp,16
    80001694:	00008067          	ret

0000000080001698 <_ZN4_sem15createSemaphoreEj>:

_sem* _sem::createSemaphore(unsigned init) {
    80001698:	fe010113          	addi	sp,sp,-32
    8000169c:	00113c23          	sd	ra,24(sp)
    800016a0:	00813823          	sd	s0,16(sp)
    800016a4:	00913423          	sd	s1,8(sp)
    800016a8:	01213023          	sd	s2,0(sp)
    800016ac:	02010413          	addi	s0,sp,32
    800016b0:	00050913          	mv	s2,a0
    return new _sem(init);
    800016b4:	01800513          	li	a0,24
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	f14080e7          	jalr	-236(ra) # 800015cc <_ZN4_semnwEm>
    800016c0:	00050493          	mv	s1,a0
    800016c4:	00090593          	mv	a1,s2
    800016c8:	00000097          	auipc	ra,0x0
    800016cc:	fa8080e7          	jalr	-88(ra) # 80001670 <_ZN4_semC1Ej>
}
    800016d0:	00048513          	mv	a0,s1
    800016d4:	01813083          	ld	ra,24(sp)
    800016d8:	01013403          	ld	s0,16(sp)
    800016dc:	00813483          	ld	s1,8(sp)
    800016e0:	00013903          	ld	s2,0(sp)
    800016e4:	02010113          	addi	sp,sp,32
    800016e8:	00008067          	ret

00000000800016ec <_ZN4_sem16destroySemaphoreEPS_>:

int _sem::destroySemaphore(_sem* sem) {
    if (sem == nullptr) {
    800016ec:	02050863          	beqz	a0,8000171c <_ZN4_sem16destroySemaphoreEPS_+0x30>
int _sem::destroySemaphore(_sem* sem) {
    800016f0:	ff010113          	addi	sp,sp,-16
    800016f4:	00113423          	sd	ra,8(sp)
    800016f8:	00813023          	sd	s0,0(sp)
    800016fc:	01010413          	addi	s0,sp,16
        return -1;
    }

    delete sem;
    80001700:	00000097          	auipc	ra,0x0
    80001704:	f28080e7          	jalr	-216(ra) # 80001628 <_ZN4_semdlEPv>
    return 0;
    80001708:	00000513          	li	a0,0
}
    8000170c:	00813083          	ld	ra,8(sp)
    80001710:	00013403          	ld	s0,0(sp)
    80001714:	01010113          	addi	sp,sp,16
    80001718:	00008067          	ret
        return -1;
    8000171c:	fff00513          	li	a0,-1
}
    80001720:	00008067          	ret

0000000080001724 <_ZN4_sem5blockEPNS_11BlockedNodeE>:
    unblockReady();

    return 0;
}

void _sem::block(BlockedNode* node) {
    80001724:	ff010113          	addi	sp,sp,-16
    80001728:	00813423          	sd	s0,8(sp)
    8000172c:	01010413          	addi	s0,sp,16
    if (node == nullptr) {
    80001730:	00058e63          	beqz	a1,8000174c <_ZN4_sem5blockEPNS_11BlockedNodeE+0x28>
        return;
    }

    node->next = nullptr;
    80001734:	0005b823          	sd	zero,16(a1)

    if (head == nullptr) {
    80001738:	00853783          	ld	a5,8(a0)
    8000173c:	00078e63          	beqz	a5,80001758 <_ZN4_sem5blockEPNS_11BlockedNodeE+0x34>
        head = node;
        tail = node;
    } else {
        tail->next = node;
    80001740:	01053783          	ld	a5,16(a0)
    80001744:	00b7b823          	sd	a1,16(a5)
        tail = node;
    80001748:	00b53823          	sd	a1,16(a0)
    }
}
    8000174c:	00813403          	ld	s0,8(sp)
    80001750:	01010113          	addi	sp,sp,16
    80001754:	00008067          	ret
        head = node;
    80001758:	00b53423          	sd	a1,8(a0)
        tail = node;
    8000175c:	00b53823          	sd	a1,16(a0)
    80001760:	fedff06f          	j	8000174c <_ZN4_sem5blockEPNS_11BlockedNodeE+0x28>

0000000080001764 <_ZN4_sem5waitNEj>:
    if (_thread::running == nullptr) {
    80001764:	0000a797          	auipc	a5,0xa
    80001768:	1847b783          	ld	a5,388(a5) # 8000b8e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000176c:	0007b783          	ld	a5,0(a5)
    80001770:	08078a63          	beqz	a5,80001804 <_ZN4_sem5waitNEj+0xa0>
    if (closed) {
    80001774:	00454703          	lbu	a4,4(a0)
    80001778:	08071a63          	bnez	a4,8000180c <_ZN4_sem5waitNEj+0xa8>
    if (n == 0) {
    8000177c:	08058c63          	beqz	a1,80001814 <_ZN4_sem5waitNEj+0xb0>
    if (head == nullptr && val >= (int)n) {
    80001780:	00853703          	ld	a4,8(a0)
    80001784:	06070263          	beqz	a4,800017e8 <_ZN4_sem5waitNEj+0x84>
int _sem::waitN(unsigned n) {
    80001788:	fd010113          	addi	sp,sp,-48
    8000178c:	02113423          	sd	ra,40(sp)
    80001790:	02813023          	sd	s0,32(sp)
    80001794:	03010413          	addi	s0,sp,48
    node.thread = _thread::running;
    80001798:	fcf43c23          	sd	a5,-40(s0)
    node.requested = n;
    8000179c:	feb42023          	sw	a1,-32(s0)
    node.status = 0;
    800017a0:	fe042223          	sw	zero,-28(s0)
    node.next = nullptr;
    800017a4:	fe043423          	sd	zero,-24(s0)
    block(&node);
    800017a8:	fd840593          	addi	a1,s0,-40
    800017ac:	00000097          	auipc	ra,0x0
    800017b0:	f78080e7          	jalr	-136(ra) # 80001724 <_ZN4_sem5blockEPNS_11BlockedNodeE>
    _thread::running->setState(_thread::BLOCKED);
    800017b4:	00300593          	li	a1,3
    800017b8:	0000a797          	auipc	a5,0xa
    800017bc:	1307b783          	ld	a5,304(a5) # 8000b8e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800017c0:	0007b503          	ld	a0,0(a5)
    800017c4:	00001097          	auipc	ra,0x1
    800017c8:	98c080e7          	jalr	-1652(ra) # 80002150 <_ZN7_thread8setStateENS_5StateE>
    _thread::dispatch();
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	7c4080e7          	jalr	1988(ra) # 80001f90 <_ZN7_thread8dispatchEv>
    return node.status;
    800017d4:	fe442503          	lw	a0,-28(s0)
}
    800017d8:	02813083          	ld	ra,40(sp)
    800017dc:	02013403          	ld	s0,32(sp)
    800017e0:	03010113          	addi	sp,sp,48
    800017e4:	00008067          	ret
    if (head == nullptr && val >= (int)n) {
    800017e8:	00052703          	lw	a4,0(a0)
    800017ec:	0005869b          	sext.w	a3,a1
    800017f0:	f8d74ce3          	blt	a4,a3,80001788 <_ZN4_sem5waitNEj+0x24>
        val -= (int)n;
    800017f4:	40d7073b          	subw	a4,a4,a3
    800017f8:	00e52023          	sw	a4,0(a0)
        return 0;
    800017fc:	00000513          	li	a0,0
    80001800:	00008067          	ret
        return -1;
    80001804:	fff00513          	li	a0,-1
    80001808:	00008067          	ret
        return -1;
    8000180c:	fff00513          	li	a0,-1
    80001810:	00008067          	ret
        return 0;
    80001814:	00000513          	li	a0,0
}
    80001818:	00008067          	ret

000000008000181c <_ZN4_sem4waitEv>:
int _sem::wait() {
    8000181c:	ff010113          	addi	sp,sp,-16
    80001820:	00113423          	sd	ra,8(sp)
    80001824:	00813023          	sd	s0,0(sp)
    80001828:	01010413          	addi	s0,sp,16
    return waitN(1);
    8000182c:	00100593          	li	a1,1
    80001830:	00000097          	auipc	ra,0x0
    80001834:	f34080e7          	jalr	-204(ra) # 80001764 <_ZN4_sem5waitNEj>
}
    80001838:	00813083          	ld	ra,8(sp)
    8000183c:	00013403          	ld	s0,0(sp)
    80001840:	01010113          	addi	sp,sp,16
    80001844:	00008067          	ret

0000000080001848 <_ZN4_sem12unblockReadyEv>:

void _sem::unblockReady() {
    80001848:	fe010113          	addi	sp,sp,-32
    8000184c:	00113c23          	sd	ra,24(sp)
    80001850:	00813823          	sd	s0,16(sp)
    80001854:	00913423          	sd	s1,8(sp)
    80001858:	01213023          	sd	s2,0(sp)
    8000185c:	02010413          	addi	s0,sp,32
    80001860:	00050913          	mv	s2,a0
    80001864:	0240006f          	j	80001888 <_ZN4_sem12unblockReadyEv+0x40>
        BlockedNode* node = head;

        head = head->next;

        if (head == nullptr) {
            tail = nullptr;
    80001868:	00093823          	sd	zero,16(s2)
        }

        val -= (int)node->requested;
    8000186c:	0084a703          	lw	a4,8(s1)
    80001870:	40e787bb          	subw	a5,a5,a4
    80001874:	00f92023          	sw	a5,0(s2)

        node->status = 0;
    80001878:	0004a623          	sw	zero,12(s1)
        node->next = nullptr;
    8000187c:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    80001880:	0004b503          	ld	a0,0(s1)
    80001884:	02051463          	bnez	a0,800018ac <_ZN4_sem12unblockReadyEv+0x64>
    while (head != nullptr && val >= (int)head->requested) {
    80001888:	00893483          	ld	s1,8(s2)
    8000188c:	02048e63          	beqz	s1,800018c8 <_ZN4_sem12unblockReadyEv+0x80>
    80001890:	00092783          	lw	a5,0(s2)
    80001894:	0084a703          	lw	a4,8(s1)
    80001898:	02e7c863          	blt	a5,a4,800018c8 <_ZN4_sem12unblockReadyEv+0x80>
        head = head->next;
    8000189c:	0104b703          	ld	a4,16(s1)
    800018a0:	00e93423          	sd	a4,8(s2)
        if (head == nullptr) {
    800018a4:	fc0714e3          	bnez	a4,8000186c <_ZN4_sem12unblockReadyEv+0x24>
    800018a8:	fc1ff06f          	j	80001868 <_ZN4_sem12unblockReadyEv+0x20>
            node->thread->setState(_thread::READY);
    800018ac:	00100593          	li	a1,1
    800018b0:	00001097          	auipc	ra,0x1
    800018b4:	8a0080e7          	jalr	-1888(ra) # 80002150 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    800018b8:	0004b503          	ld	a0,0(s1)
    800018bc:	00001097          	auipc	ra,0x1
    800018c0:	a14080e7          	jalr	-1516(ra) # 800022d0 <_ZN9Scheduler3putEP7_thread>
    800018c4:	fc5ff06f          	j	80001888 <_ZN4_sem12unblockReadyEv+0x40>
        }
    }
}
    800018c8:	01813083          	ld	ra,24(sp)
    800018cc:	01013403          	ld	s0,16(sp)
    800018d0:	00813483          	ld	s1,8(sp)
    800018d4:	00013903          	ld	s2,0(sp)
    800018d8:	02010113          	addi	sp,sp,32
    800018dc:	00008067          	ret

00000000800018e0 <_ZN4_sem7signalNEj>:
    if (closed) {
    800018e0:	00454783          	lbu	a5,4(a0)
    800018e4:	04079463          	bnez	a5,8000192c <_ZN4_sem7signalNEj+0x4c>
    if (n == 0) {
    800018e8:	00059663          	bnez	a1,800018f4 <_ZN4_sem7signalNEj+0x14>
        return 0;
    800018ec:	00000513          	li	a0,0
}
    800018f0:	00008067          	ret
int _sem::signalN(unsigned n) {
    800018f4:	ff010113          	addi	sp,sp,-16
    800018f8:	00113423          	sd	ra,8(sp)
    800018fc:	00813023          	sd	s0,0(sp)
    80001900:	01010413          	addi	s0,sp,16
    val += (int)n;
    80001904:	00052783          	lw	a5,0(a0)
    80001908:	00b785bb          	addw	a1,a5,a1
    8000190c:	00b52023          	sw	a1,0(a0)
    unblockReady();
    80001910:	00000097          	auipc	ra,0x0
    80001914:	f38080e7          	jalr	-200(ra) # 80001848 <_ZN4_sem12unblockReadyEv>
    return 0;
    80001918:	00000513          	li	a0,0
}
    8000191c:	00813083          	ld	ra,8(sp)
    80001920:	00013403          	ld	s0,0(sp)
    80001924:	01010113          	addi	sp,sp,16
    80001928:	00008067          	ret
        return -1;
    8000192c:	fff00513          	li	a0,-1
    80001930:	00008067          	ret

0000000080001934 <_ZN4_sem6signalEv>:
int _sem::signal() {
    80001934:	ff010113          	addi	sp,sp,-16
    80001938:	00113423          	sd	ra,8(sp)
    8000193c:	00813023          	sd	s0,0(sp)
    80001940:	01010413          	addi	s0,sp,16
    return signalN(1);
    80001944:	00100593          	li	a1,1
    80001948:	00000097          	auipc	ra,0x0
    8000194c:	f98080e7          	jalr	-104(ra) # 800018e0 <_ZN4_sem7signalNEj>
}
    80001950:	00813083          	ld	ra,8(sp)
    80001954:	00013403          	ld	s0,0(sp)
    80001958:	01010113          	addi	sp,sp,16
    8000195c:	00008067          	ret

0000000080001960 <_ZN4_sem10unblockAllEv>:

void _sem::unblockAll() {
    80001960:	fe010113          	addi	sp,sp,-32
    80001964:	00113c23          	sd	ra,24(sp)
    80001968:	00813823          	sd	s0,16(sp)
    8000196c:	00913423          	sd	s1,8(sp)
    80001970:	01213023          	sd	s2,0(sp)
    80001974:	02010413          	addi	s0,sp,32
    80001978:	00050913          	mv	s2,a0
    while (head != nullptr) {
    8000197c:	00893483          	ld	s1,8(s2)
    80001980:	02048e63          	beqz	s1,800019bc <_ZN4_sem10unblockAllEv+0x5c>
        BlockedNode* node = head;

        head = head->next;
    80001984:	0104b783          	ld	a5,16(s1)
    80001988:	00f93423          	sd	a5,8(s2)

        node->status = -1;
    8000198c:	fff00793          	li	a5,-1
    80001990:	00f4a623          	sw	a5,12(s1)
        node->next = nullptr;
    80001994:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    80001998:	0004b503          	ld	a0,0(s1)
    8000199c:	fe0500e3          	beqz	a0,8000197c <_ZN4_sem10unblockAllEv+0x1c>
            node->thread->setState(_thread::READY);
    800019a0:	00100593          	li	a1,1
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	7ac080e7          	jalr	1964(ra) # 80002150 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    800019ac:	0004b503          	ld	a0,0(s1)
    800019b0:	00001097          	auipc	ra,0x1
    800019b4:	920080e7          	jalr	-1760(ra) # 800022d0 <_ZN9Scheduler3putEP7_thread>
    800019b8:	fc5ff06f          	j	8000197c <_ZN4_sem10unblockAllEv+0x1c>
        }
    }

    tail = nullptr;
    800019bc:	00093823          	sd	zero,16(s2)
    800019c0:	01813083          	ld	ra,24(sp)
    800019c4:	01013403          	ld	s0,16(sp)
    800019c8:	00813483          	ld	s1,8(sp)
    800019cc:	00013903          	ld	s2,0(sp)
    800019d0:	02010113          	addi	sp,sp,32
    800019d4:	00008067          	ret

00000000800019d8 <_ZN4_sem5closeEv>:
    if (closed) {
    800019d8:	00454783          	lbu	a5,4(a0)
    800019dc:	02079c63          	bnez	a5,80001a14 <_ZN4_sem5closeEv+0x3c>
int _sem::close() {
    800019e0:	ff010113          	addi	sp,sp,-16
    800019e4:	00113423          	sd	ra,8(sp)
    800019e8:	00813023          	sd	s0,0(sp)
    800019ec:	01010413          	addi	s0,sp,16
    closed = true;
    800019f0:	00100793          	li	a5,1
    800019f4:	00f50223          	sb	a5,4(a0)
    unblockAll();
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	f68080e7          	jalr	-152(ra) # 80001960 <_ZN4_sem10unblockAllEv>
    return 0;
    80001a00:	00000513          	li	a0,0
}
    80001a04:	00813083          	ld	ra,8(sp)
    80001a08:	00013403          	ld	s0,0(sp)
    80001a0c:	01010113          	addi	sp,sp,16
    80001a10:	00008067          	ret
        return -1;
    80001a14:	fff00513          	li	a0,-1
}
    80001a18:	00008067          	ret

0000000080001a1c <handleSupervisorTrap>:
#include "../h/Semaphore.hpp"
#include "../lib/console.h"

extern "C" void handleSupervisorTrap(TrapFrame* frame);

extern "C" void handleSupervisorTrap(TrapFrame* frame) {
    80001a1c:	fd010113          	addi	sp,sp,-48
    80001a20:	02113423          	sd	ra,40(sp)
    80001a24:	02813023          	sd	s0,32(sp)
    80001a28:	00913c23          	sd	s1,24(sp)
    80001a2c:	01213823          	sd	s2,16(sp)
    80001a30:	01313423          	sd	s3,8(sp)
    80001a34:	03010413          	addi	s0,sp,48
    static const uint64 SSTATUS_SIE = (1UL << 1);
    static const uint64 SIP_SSIP = (1UL << 1);

    static uint64 r_scause() {
        uint64 x;
        asm volatile("csrr %0, scause" : "=r"(x));//upis vrednosti scause u x
    80001a38:	14202773          	csrr	a4,scause
    uint64 scause = Riscv::r_scause();

    if (scause == 8 || scause == 9) {
    80001a3c:	ff870693          	addi	a3,a4,-8 # ff8 <_entry-0x7ffff008>
    80001a40:	00100793          	li	a5,1
    80001a44:	02d7f463          	bgeu	a5,a3,80001a6c <handleSupervisorTrap+0x50>

        frame->sepc += 4;
        return;
    }

    if (scause == 0x8000000000000001UL) {
    80001a48:	fff00793          	li	a5,-1
    80001a4c:	03f79793          	slli	a5,a5,0x3f
    80001a50:	00178793          	addi	a5,a5,1
    80001a54:	28f70463          	beq	a4,a5,80001cdc <handleSupervisorTrap+0x2c0>
        Riscv::mc_sip(Riscv::SIP_SSIP);
        return;
    }

    if (scause == 0x8000000000000009UL) {
    80001a58:	fff00793          	li	a5,-1
    80001a5c:	03f79793          	slli	a5,a5,0x3f
    80001a60:	00978793          	addi	a5,a5,9
    80001a64:	28f70263          	beq	a4,a5,80001ce8 <handleSupervisorTrap+0x2cc>
        console_handler();
        return;
    }

    while (true) {}
    80001a68:	0000006f          	j	80001a68 <handleSupervisorTrap+0x4c>
    80001a6c:	00050493          	mv	s1,a0
        uint64 syscallCode = frame->a0;
    80001a70:	04053783          	ld	a5,64(a0)
        uint64 arg1 = frame->a1;
    80001a74:	04853903          	ld	s2,72(a0)
        uint64 arg2 = frame->a2;
    80001a78:	05053503          	ld	a0,80(a0)
        uint64 arg3 = frame->a3;
    80001a7c:	0584b583          	ld	a1,88(s1)
        uint64 arg4 = frame->a4;
    80001a80:	0604b603          	ld	a2,96(s1)
        switch (syscallCode) {
    80001a84:	04200713          	li	a4,66
    80001a88:	24f76463          	bltu	a4,a5,80001cd0 <handleSupervisorTrap+0x2b4>
    80001a8c:	00279793          	slli	a5,a5,0x2
    80001a90:	00007717          	auipc	a4,0x7
    80001a94:	59070713          	addi	a4,a4,1424 # 80009020 <CONSOLE_STATUS+0x10>
    80001a98:	00e787b3          	add	a5,a5,a4
    80001a9c:	0007a783          	lw	a5,0(a5)
    80001aa0:	00e787b3          	add	a5,a5,a4
    80001aa4:	00078067          	jr	a5
                frame->a0 = (uint64)MemoryAllocator::getInstance().malloc((size_t)arg1);
    80001aa8:	00001097          	auipc	ra,0x1
    80001aac:	ee4080e7          	jalr	-284(ra) # 8000298c <_ZN15MemoryAllocator11getInstanceEv>
    80001ab0:	00090593          	mv	a1,s2
    80001ab4:	00001097          	auipc	ra,0x1
    80001ab8:	f58080e7          	jalr	-168(ra) # 80002a0c <_ZN15MemoryAllocator6mallocEm>
    80001abc:	04a4b023          	sd	a0,64(s1)
        frame->sepc += 4;
    80001ac0:	0f04b783          	ld	a5,240(s1)
    80001ac4:	00478793          	addi	a5,a5,4
    80001ac8:	0ef4b823          	sd	a5,240(s1)
    80001acc:	02813083          	ld	ra,40(sp)
    80001ad0:	02013403          	ld	s0,32(sp)
    80001ad4:	01813483          	ld	s1,24(sp)
    80001ad8:	01013903          	ld	s2,16(sp)
    80001adc:	00813983          	ld	s3,8(sp)
    80001ae0:	03010113          	addi	sp,sp,48
    80001ae4:	00008067          	ret
                frame->a0 = (uint64)MemoryAllocator::getInstance().free((void*)arg1);
    80001ae8:	00001097          	auipc	ra,0x1
    80001aec:	ea4080e7          	jalr	-348(ra) # 8000298c <_ZN15MemoryAllocator11getInstanceEv>
    80001af0:	00090593          	mv	a1,s2
    80001af4:	00001097          	auipc	ra,0x1
    80001af8:	074080e7          	jalr	116(ra) # 80002b68 <_ZN15MemoryAllocator4freeEPv>
    80001afc:	04a4b023          	sd	a0,64(s1)
                break;
    80001b00:	fc1ff06f          	j	80001ac0 <handleSupervisorTrap+0xa4>
                if (handle == nullptr || body == nullptr || stackSpace == nullptr) {
    80001b04:	00090663          	beqz	s2,80001b10 <handleSupervisorTrap+0xf4>
    80001b08:	00050463          	beqz	a0,80001b10 <handleSupervisorTrap+0xf4>
    80001b0c:	00061863          	bnez	a2,80001b1c <handleSupervisorTrap+0x100>
                    frame->a0 = (uint64)-1;
    80001b10:	fff00793          	li	a5,-1
    80001b14:	04f4b023          	sd	a5,64(s1)
                    break;
    80001b18:	fa9ff06f          	j	80001ac0 <handleSupervisorTrap+0xa4>
                _thread* thread = _thread::createThread(body, arg, stackSpace);
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	39c080e7          	jalr	924(ra) # 80001eb8 <_ZN7_thread12createThreadEPFvPvES0_S0_>
                if (thread == nullptr) {
    80001b24:	00050c63          	beqz	a0,80001b3c <handleSupervisorTrap+0x120>
                *handle = thread;
    80001b28:	00a93023          	sd	a0,0(s2)
                Scheduler::put(thread);
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	7a4080e7          	jalr	1956(ra) # 800022d0 <_ZN9Scheduler3putEP7_thread>
                frame->a0 = 0;
    80001b34:	0404b023          	sd	zero,64(s1)
                break;
    80001b38:	f89ff06f          	j	80001ac0 <handleSupervisorTrap+0xa4>
                    frame->a0 = (uint64)-1;
    80001b3c:	fff00793          	li	a5,-1
    80001b40:	04f4b023          	sd	a5,64(s1)
                    break;
    80001b44:	f7dff06f          	j	80001ac0 <handleSupervisorTrap+0xa4>
                frame->sepc += 4;
    80001b48:	0f04b783          	ld	a5,240(s1)
    80001b4c:	00478793          	addi	a5,a5,4
    80001b50:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)_thread::exit();
    80001b54:	00000097          	auipc	ra,0x0
    80001b58:	4e4080e7          	jalr	1252(ra) # 80002038 <_ZN7_thread4exitEv>
    80001b5c:	04a4b023          	sd	a0,64(s1)
                return;
    80001b60:	f6dff06f          	j	80001acc <handleSupervisorTrap+0xb0>
                frame->sepc += 4;
    80001b64:	0f04b783          	ld	a5,240(s1)
    80001b68:	00478793          	addi	a5,a5,4
    80001b6c:	0ef4b823          	sd	a5,240(s1)
                _thread::dispatch();
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	420080e7          	jalr	1056(ra) # 80001f90 <_ZN7_thread8dispatchEv>
                return;
    80001b78:	f55ff06f          	j	80001acc <handleSupervisorTrap+0xb0>
                unsigned init = (unsigned)arg2;
    80001b7c:	0005051b          	sext.w	a0,a0
                if (handle == nullptr) {
    80001b80:	00091863          	bnez	s2,80001b90 <handleSupervisorTrap+0x174>
                    frame->a0 = (uint64)-1;
    80001b84:	fff00793          	li	a5,-1
    80001b88:	04f4b023          	sd	a5,64(s1)
                    break;
    80001b8c:	f35ff06f          	j	80001ac0 <handleSupervisorTrap+0xa4>
                _sem* sem = _sem::createSemaphore(init);
    80001b90:	00000097          	auipc	ra,0x0
    80001b94:	b08080e7          	jalr	-1272(ra) # 80001698 <_ZN4_sem15createSemaphoreEj>
                if (sem == nullptr) {
    80001b98:	00050863          	beqz	a0,80001ba8 <handleSupervisorTrap+0x18c>
                *handle = sem;
    80001b9c:	00a93023          	sd	a0,0(s2)
                frame->a0 = 0;
    80001ba0:	0404b023          	sd	zero,64(s1)
                break;
    80001ba4:	f1dff06f          	j	80001ac0 <handleSupervisorTrap+0xa4>
                    frame->a0 = (uint64)-1;
    80001ba8:	fff00793          	li	a5,-1
    80001bac:	04f4b023          	sd	a5,64(s1)
                    break;
    80001bb0:	f11ff06f          	j	80001ac0 <handleSupervisorTrap+0xa4>
                if (sem == nullptr) {
    80001bb4:	00091863          	bnez	s2,80001bc4 <handleSupervisorTrap+0x1a8>
                    frame->a0 = (uint64)-1;
    80001bb8:	fff00793          	li	a5,-1
    80001bbc:	04f4b023          	sd	a5,64(s1)
                    break;
    80001bc0:	f01ff06f          	j	80001ac0 <handleSupervisorTrap+0xa4>
                int ret = sem->close();
    80001bc4:	00090513          	mv	a0,s2
    80001bc8:	00000097          	auipc	ra,0x0
    80001bcc:	e10080e7          	jalr	-496(ra) # 800019d8 <_ZN4_sem5closeEv>
    80001bd0:	00050993          	mv	s3,a0
                if (ret == 0) {
    80001bd4:	00050663          	beqz	a0,80001be0 <handleSupervisorTrap+0x1c4>
                frame->a0 = (uint64)ret;
    80001bd8:	0534b023          	sd	s3,64(s1)
                break;
    80001bdc:	ee5ff06f          	j	80001ac0 <handleSupervisorTrap+0xa4>
                    _sem::destroySemaphore(sem);
    80001be0:	00090513          	mv	a0,s2
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	b08080e7          	jalr	-1272(ra) # 800016ec <_ZN4_sem16destroySemaphoreEPS_>
    80001bec:	fedff06f          	j	80001bd8 <handleSupervisorTrap+0x1bc>
                if (sem == nullptr) {
    80001bf0:	00091863          	bnez	s2,80001c00 <handleSupervisorTrap+0x1e4>
                    frame->a0 = (uint64)-1;
    80001bf4:	fff00793          	li	a5,-1
    80001bf8:	04f4b023          	sd	a5,64(s1)
                    break;
    80001bfc:	ec5ff06f          	j	80001ac0 <handleSupervisorTrap+0xa4>
                frame->sepc += 4;
    80001c00:	0f04b783          	ld	a5,240(s1)
    80001c04:	00478793          	addi	a5,a5,4
    80001c08:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->wait();
    80001c0c:	00090513          	mv	a0,s2
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	c0c080e7          	jalr	-1012(ra) # 8000181c <_ZN4_sem4waitEv>
    80001c18:	04a4b023          	sd	a0,64(s1)
                return;
    80001c1c:	eb1ff06f          	j	80001acc <handleSupervisorTrap+0xb0>
                if (sem == nullptr) {
    80001c20:	00091863          	bnez	s2,80001c30 <handleSupervisorTrap+0x214>
                    frame->a0 = (uint64)-1;
    80001c24:	fff00793          	li	a5,-1
    80001c28:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c2c:	e95ff06f          	j	80001ac0 <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)sem->signal();
    80001c30:	00090513          	mv	a0,s2
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	d00080e7          	jalr	-768(ra) # 80001934 <_ZN4_sem6signalEv>
    80001c3c:	04a4b023          	sd	a0,64(s1)
                break;
    80001c40:	e81ff06f          	j	80001ac0 <handleSupervisorTrap+0xa4>
                unsigned n = (unsigned)arg2;
    80001c44:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001c48:	00091863          	bnez	s2,80001c58 <handleSupervisorTrap+0x23c>
                    frame->a0 = (uint64)-1;
    80001c4c:	fff00793          	li	a5,-1
    80001c50:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c54:	e6dff06f          	j	80001ac0 <handleSupervisorTrap+0xa4>
                frame->sepc += 4;
    80001c58:	0f04b783          	ld	a5,240(s1)
    80001c5c:	00478793          	addi	a5,a5,4
    80001c60:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->waitN(n);
    80001c64:	00090513          	mv	a0,s2
    80001c68:	00000097          	auipc	ra,0x0
    80001c6c:	afc080e7          	jalr	-1284(ra) # 80001764 <_ZN4_sem5waitNEj>
    80001c70:	04a4b023          	sd	a0,64(s1)
                return;
    80001c74:	e59ff06f          	j	80001acc <handleSupervisorTrap+0xb0>
                unsigned n = (unsigned)arg2;
    80001c78:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001c7c:	00091863          	bnez	s2,80001c8c <handleSupervisorTrap+0x270>
                    frame->a0 = (uint64)-1;
    80001c80:	fff00793          	li	a5,-1
    80001c84:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c88:	e39ff06f          	j	80001ac0 <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)sem->signalN(n);
    80001c8c:	00090513          	mv	a0,s2
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	c50080e7          	jalr	-944(ra) # 800018e0 <_ZN4_sem7signalNEj>
    80001c98:	04a4b023          	sd	a0,64(s1)
                break;
    80001c9c:	e25ff06f          	j	80001ac0 <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)-1;
    80001ca0:	fff00793          	li	a5,-1
    80001ca4:	04f4b023          	sd	a5,64(s1)
                break;
    80001ca8:	e19ff06f          	j	80001ac0 <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)__getc();
    80001cac:	00006097          	auipc	ra,0x6
    80001cb0:	6cc080e7          	jalr	1740(ra) # 80008378 <__getc>
    80001cb4:	04a4b023          	sd	a0,64(s1)
                break;
    80001cb8:	e09ff06f          	j	80001ac0 <handleSupervisorTrap+0xa4>
                __putc((char)arg1);
    80001cbc:	0ff97513          	andi	a0,s2,255
    80001cc0:	00006097          	auipc	ra,0x6
    80001cc4:	67c080e7          	jalr	1660(ra) # 8000833c <__putc>
                frame->a0 = 0;
    80001cc8:	0404b023          	sd	zero,64(s1)
                break;
    80001ccc:	df5ff06f          	j	80001ac0 <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)-1;
    80001cd0:	fff00793          	li	a5,-1
    80001cd4:	04f4b023          	sd	a5,64(s1)
                break;
    80001cd8:	de9ff06f          	j	80001ac0 <handleSupervisorTrap+0xa4>

    static void mc_sstatus(uint64 mask) {
        asm volatile("csrc sstatus, %0" : : "r"(mask));//vrati prekide
    }
    static void mc_sip(uint64 mask) {
        asm volatile("csrc sip, %0" : : "r"(mask));
    80001cdc:	00200793          	li	a5,2
    80001ce0:	1447b073          	csrc	sip,a5
        return;
    80001ce4:	de9ff06f          	j	80001acc <handleSupervisorTrap+0xb0>
        console_handler();
    80001ce8:	00006097          	auipc	ra,0x6
    80001cec:	6c8080e7          	jalr	1736(ra) # 800083b0 <console_handler>
        return;
    80001cf0:	dddff06f          	j	80001acc <handleSupervisorTrap+0xb0>

0000000080001cf4 <_ZL14blocksForBytesm>:
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"

_thread* _thread::running = nullptr;

static size_t blocksForBytes(size_t bytes) {
    80001cf4:	ff010113          	addi	sp,sp,-16
    80001cf8:	00813423          	sd	s0,8(sp)
    80001cfc:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001d00:	03f50513          	addi	a0,a0,63
}
    80001d04:	00655513          	srli	a0,a0,0x6
    80001d08:	00813403          	ld	s0,8(sp)
    80001d0c:	01010113          	addi	sp,sp,16
    80001d10:	00008067          	ret

0000000080001d14 <_ZN7_threadnwEm>:

void* _thread::operator new(size_t size) {
    80001d14:	fe010113          	addi	sp,sp,-32
    80001d18:	00113c23          	sd	ra,24(sp)
    80001d1c:	00813823          	sd	s0,16(sp)
    80001d20:	00913423          	sd	s1,8(sp)
    80001d24:	01213023          	sd	s2,0(sp)
    80001d28:	02010413          	addi	s0,sp,32
    80001d2c:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001d30:	00001097          	auipc	ra,0x1
    80001d34:	c5c080e7          	jalr	-932(ra) # 8000298c <_ZN15MemoryAllocator11getInstanceEv>
    80001d38:	00050493          	mv	s1,a0
    80001d3c:	00090513          	mv	a0,s2
    80001d40:	00000097          	auipc	ra,0x0
    80001d44:	fb4080e7          	jalr	-76(ra) # 80001cf4 <_ZL14blocksForBytesm>
    80001d48:	00050593          	mv	a1,a0
    80001d4c:	00048513          	mv	a0,s1
    80001d50:	00001097          	auipc	ra,0x1
    80001d54:	cbc080e7          	jalr	-836(ra) # 80002a0c <_ZN15MemoryAllocator6mallocEm>
}
    80001d58:	01813083          	ld	ra,24(sp)
    80001d5c:	01013403          	ld	s0,16(sp)
    80001d60:	00813483          	ld	s1,8(sp)
    80001d64:	00013903          	ld	s2,0(sp)
    80001d68:	02010113          	addi	sp,sp,32
    80001d6c:	00008067          	ret

0000000080001d70 <_ZN7_threadnaEm>:

void* _thread::operator new[](size_t size) {
    80001d70:	fe010113          	addi	sp,sp,-32
    80001d74:	00113c23          	sd	ra,24(sp)
    80001d78:	00813823          	sd	s0,16(sp)
    80001d7c:	00913423          	sd	s1,8(sp)
    80001d80:	01213023          	sd	s2,0(sp)
    80001d84:	02010413          	addi	s0,sp,32
    80001d88:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001d8c:	00001097          	auipc	ra,0x1
    80001d90:	c00080e7          	jalr	-1024(ra) # 8000298c <_ZN15MemoryAllocator11getInstanceEv>
    80001d94:	00050493          	mv	s1,a0
    80001d98:	00090513          	mv	a0,s2
    80001d9c:	00000097          	auipc	ra,0x0
    80001da0:	f58080e7          	jalr	-168(ra) # 80001cf4 <_ZL14blocksForBytesm>
    80001da4:	00050593          	mv	a1,a0
    80001da8:	00048513          	mv	a0,s1
    80001dac:	00001097          	auipc	ra,0x1
    80001db0:	c60080e7          	jalr	-928(ra) # 80002a0c <_ZN15MemoryAllocator6mallocEm>
}
    80001db4:	01813083          	ld	ra,24(sp)
    80001db8:	01013403          	ld	s0,16(sp)
    80001dbc:	00813483          	ld	s1,8(sp)
    80001dc0:	00013903          	ld	s2,0(sp)
    80001dc4:	02010113          	addi	sp,sp,32
    80001dc8:	00008067          	ret

0000000080001dcc <_ZN7_threaddlEPv>:

void _thread::operator delete(void* ptr) {
    if (ptr == nullptr) {
    80001dcc:	04050263          	beqz	a0,80001e10 <_ZN7_threaddlEPv+0x44>
void _thread::operator delete(void* ptr) {
    80001dd0:	fe010113          	addi	sp,sp,-32
    80001dd4:	00113c23          	sd	ra,24(sp)
    80001dd8:	00813823          	sd	s0,16(sp)
    80001ddc:	00913423          	sd	s1,8(sp)
    80001de0:	02010413          	addi	s0,sp,32
    80001de4:	00050493          	mv	s1,a0
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
    80001de8:	00001097          	auipc	ra,0x1
    80001dec:	ba4080e7          	jalr	-1116(ra) # 8000298c <_ZN15MemoryAllocator11getInstanceEv>
    80001df0:	00048593          	mv	a1,s1
    80001df4:	00001097          	auipc	ra,0x1
    80001df8:	d74080e7          	jalr	-652(ra) # 80002b68 <_ZN15MemoryAllocator4freeEPv>
}
    80001dfc:	01813083          	ld	ra,24(sp)
    80001e00:	01013403          	ld	s0,16(sp)
    80001e04:	00813483          	ld	s1,8(sp)
    80001e08:	02010113          	addi	sp,sp,32
    80001e0c:	00008067          	ret
    80001e10:	00008067          	ret

0000000080001e14 <_ZN7_threaddaEPv>:

void _thread::operator delete[](void* ptr) {
    if (ptr == nullptr) {
    80001e14:	04050263          	beqz	a0,80001e58 <_ZN7_threaddaEPv+0x44>
void _thread::operator delete[](void* ptr) {
    80001e18:	fe010113          	addi	sp,sp,-32
    80001e1c:	00113c23          	sd	ra,24(sp)
    80001e20:	00813823          	sd	s0,16(sp)
    80001e24:	00913423          	sd	s1,8(sp)
    80001e28:	02010413          	addi	s0,sp,32
    80001e2c:	00050493          	mv	s1,a0
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
    80001e30:	00001097          	auipc	ra,0x1
    80001e34:	b5c080e7          	jalr	-1188(ra) # 8000298c <_ZN15MemoryAllocator11getInstanceEv>
    80001e38:	00048593          	mv	a1,s1
    80001e3c:	00001097          	auipc	ra,0x1
    80001e40:	d2c080e7          	jalr	-724(ra) # 80002b68 <_ZN15MemoryAllocator4freeEPv>
}
    80001e44:	01813083          	ld	ra,24(sp)
    80001e48:	01013403          	ld	s0,16(sp)
    80001e4c:	00813483          	ld	s1,8(sp)
    80001e50:	02010113          	addi	sp,sp,32
    80001e54:	00008067          	ret
    80001e58:	00008067          	ret

0000000080001e5c <_ZN7_threadC1EPFvPvES0_S0_>:

_thread::_thread(Body body, void* arg, void* stackSpace) {
    80001e5c:	ff010113          	addi	sp,sp,-16
    80001e60:	00813423          	sd	s0,8(sp)
    80001e64:	01010413          	addi	s0,sp,16
    this->body = body;
    80001e68:	00b53023          	sd	a1,0(a0)
    this->arg = arg;
    80001e6c:	00c53423          	sd	a2,8(a0)

    if (stackSpace != nullptr) {
    80001e70:	02068e63          	beqz	a3,80001eac <_ZN7_threadC1EPFvPvES0_S0_+0x50>
        this->stack = (void*)((uint64)stackSpace - DEFAULT_STACK_SIZE);
    80001e74:	fffff7b7          	lui	a5,0xfffff
    80001e78:	00f687b3          	add	a5,a3,a5
    80001e7c:	00f53823          	sd	a5,16(a0)
        this->context.sp = (uint64)stackSpace;
    80001e80:	02d53023          	sd	a3,32(a0)
    } else {
        this->stack = nullptr;
        this->context.sp = 0;
    }

    this->context.ra = (uint64)&_thread::threadWrapper;
    80001e84:	00000797          	auipc	a5,0x0
    80001e88:	1fc78793          	addi	a5,a5,508 # 80002080 <_ZN7_thread13threadWrapperEv>
    80001e8c:	00f53c23          	sd	a5,24(a0)
    this->timeSlice = DEFAULT_TIME_SLICE;
    80001e90:	00200793          	li	a5,2
    80001e94:	02f53423          	sd	a5,40(a0)
    this->state = CREATED;
    80001e98:	02052823          	sw	zero,48(a0)
    this->next = nullptr;
    80001e9c:	02053c23          	sd	zero,56(a0)
}
    80001ea0:	00813403          	ld	s0,8(sp)
    80001ea4:	01010113          	addi	sp,sp,16
    80001ea8:	00008067          	ret
        this->stack = nullptr;
    80001eac:	00053823          	sd	zero,16(a0)
        this->context.sp = 0;
    80001eb0:	02053023          	sd	zero,32(a0)
    80001eb4:	fd1ff06f          	j	80001e84 <_ZN7_threadC1EPFvPvES0_S0_+0x28>

0000000080001eb8 <_ZN7_thread12createThreadEPFvPvES0_S0_>:

_thread* _thread::createThread(Body body, void* arg, void* stackSpace) {
    80001eb8:	fd010113          	addi	sp,sp,-48
    80001ebc:	02113423          	sd	ra,40(sp)
    80001ec0:	02813023          	sd	s0,32(sp)
    80001ec4:	00913c23          	sd	s1,24(sp)
    80001ec8:	01213823          	sd	s2,16(sp)
    80001ecc:	01313423          	sd	s3,8(sp)
    80001ed0:	01413023          	sd	s4,0(sp)
    80001ed4:	03010413          	addi	s0,sp,48
    80001ed8:	00050913          	mv	s2,a0
    80001edc:	00058993          	mv	s3,a1
    80001ee0:	00060a13          	mv	s4,a2
    return new _thread(body, arg, stackSpace);
    80001ee4:	04000513          	li	a0,64
    80001ee8:	00000097          	auipc	ra,0x0
    80001eec:	e2c080e7          	jalr	-468(ra) # 80001d14 <_ZN7_threadnwEm>
    80001ef0:	00050493          	mv	s1,a0
    80001ef4:	000a0693          	mv	a3,s4
    80001ef8:	00098613          	mv	a2,s3
    80001efc:	00090593          	mv	a1,s2
    80001f00:	00000097          	auipc	ra,0x0
    80001f04:	f5c080e7          	jalr	-164(ra) # 80001e5c <_ZN7_threadC1EPFvPvES0_S0_>
}
    80001f08:	00048513          	mv	a0,s1
    80001f0c:	02813083          	ld	ra,40(sp)
    80001f10:	02013403          	ld	s0,32(sp)
    80001f14:	01813483          	ld	s1,24(sp)
    80001f18:	01013903          	ld	s2,16(sp)
    80001f1c:	00813983          	ld	s3,8(sp)
    80001f20:	00013a03          	ld	s4,0(sp)
    80001f24:	03010113          	addi	sp,sp,48
    80001f28:	00008067          	ret

0000000080001f2c <_ZN7_thread13destroyThreadEPS_>:

int _thread::destroyThread(_thread* thread) {
    if (thread == nullptr) {
    80001f2c:	04050e63          	beqz	a0,80001f88 <_ZN7_thread13destroyThreadEPS_+0x5c>
int _thread::destroyThread(_thread* thread) {
    80001f30:	fe010113          	addi	sp,sp,-32
    80001f34:	00113c23          	sd	ra,24(sp)
    80001f38:	00813823          	sd	s0,16(sp)
    80001f3c:	00913423          	sd	s1,8(sp)
    80001f40:	02010413          	addi	s0,sp,32
    80001f44:	00050493          	mv	s1,a0
        return -1;
    }

    if (thread->stack != nullptr) {
    80001f48:	01053783          	ld	a5,16(a0)
    80001f4c:	00078c63          	beqz	a5,80001f64 <_ZN7_thread13destroyThreadEPS_+0x38>
        MemoryAllocator::getInstance().free(thread->stack);
    80001f50:	00001097          	auipc	ra,0x1
    80001f54:	a3c080e7          	jalr	-1476(ra) # 8000298c <_ZN15MemoryAllocator11getInstanceEv>
    80001f58:	0104b583          	ld	a1,16(s1)
    80001f5c:	00001097          	auipc	ra,0x1
    80001f60:	c0c080e7          	jalr	-1012(ra) # 80002b68 <_ZN15MemoryAllocator4freeEPv>
        thread->stack = nullptr;
    }

    delete thread;
    80001f64:	00048513          	mv	a0,s1
    80001f68:	00000097          	auipc	ra,0x0
    80001f6c:	e64080e7          	jalr	-412(ra) # 80001dcc <_ZN7_threaddlEPv>
    return 0;
    80001f70:	00000513          	li	a0,0
}
    80001f74:	01813083          	ld	ra,24(sp)
    80001f78:	01013403          	ld	s0,16(sp)
    80001f7c:	00813483          	ld	s1,8(sp)
    80001f80:	02010113          	addi	sp,sp,32
    80001f84:	00008067          	ret
        return -1;
    80001f88:	fff00513          	li	a0,-1
}
    80001f8c:	00008067          	ret

0000000080001f90 <_ZN7_thread8dispatchEv>:

void _thread::dispatch() {
    80001f90:	fe010113          	addi	sp,sp,-32
    80001f94:	00113c23          	sd	ra,24(sp)
    80001f98:	00813823          	sd	s0,16(sp)
    80001f9c:	00913423          	sd	s1,8(sp)
    80001fa0:	02010413          	addi	s0,sp,32
    _thread* old = running;
    80001fa4:	0000a497          	auipc	s1,0xa
    80001fa8:	9ac4b483          	ld	s1,-1620(s1) # 8000b950 <_ZN7_thread7runningE>

    if (old != nullptr && old->state != FINISHED && old->state != BLOCKED) {
    80001fac:	00048c63          	beqz	s1,80001fc4 <_ZN7_thread8dispatchEv+0x34>
    80001fb0:	0304a783          	lw	a5,48(s1)
    80001fb4:	00400713          	li	a4,4
    80001fb8:	00e78663          	beq	a5,a4,80001fc4 <_ZN7_thread8dispatchEv+0x34>
    80001fbc:	00300713          	li	a4,3
    80001fc0:	04e79663          	bne	a5,a4,8000200c <_ZN7_thread8dispatchEv+0x7c>
        Scheduler::put(old);
    }

    _thread* next = Scheduler::get();
    80001fc4:	00000097          	auipc	ra,0x0
    80001fc8:	378080e7          	jalr	888(ra) # 8000233c <_ZN9Scheduler3getEv>

    if (next == nullptr) {
    80001fcc:	04050863          	beqz	a0,8000201c <_ZN7_thread8dispatchEv+0x8c>
            running = old;
        }
        return;
    }

    running = next;
    80001fd0:	0000a797          	auipc	a5,0xa
    80001fd4:	98a7b023          	sd	a0,-1664(a5) # 8000b950 <_ZN7_thread7runningE>
    running->state = RUNNING;
    80001fd8:	00200793          	li	a5,2
    80001fdc:	02f52823          	sw	a5,48(a0)

    if (old != nullptr && old != running) {
    80001fe0:	00048c63          	beqz	s1,80001ff8 <_ZN7_thread8dispatchEv+0x68>
    80001fe4:	00a48a63          	beq	s1,a0,80001ff8 <_ZN7_thread8dispatchEv+0x68>
        contextSwitch(&old->context, &running->context);
    80001fe8:	01850593          	addi	a1,a0,24
    80001fec:	01848513          	addi	a0,s1,24
    80001ff0:	fffff097          	auipc	ra,0xfffff
    80001ff4:	140080e7          	jalr	320(ra) # 80001130 <contextSwitch>
    }
}
    80001ff8:	01813083          	ld	ra,24(sp)
    80001ffc:	01013403          	ld	s0,16(sp)
    80002000:	00813483          	ld	s1,8(sp)
    80002004:	02010113          	addi	sp,sp,32
    80002008:	00008067          	ret
        Scheduler::put(old);
    8000200c:	00048513          	mv	a0,s1
    80002010:	00000097          	auipc	ra,0x0
    80002014:	2c0080e7          	jalr	704(ra) # 800022d0 <_ZN9Scheduler3putEP7_thread>
    80002018:	fadff06f          	j	80001fc4 <_ZN7_thread8dispatchEv+0x34>
        if (old != nullptr && old->state == RUNNING) {
    8000201c:	fc048ee3          	beqz	s1,80001ff8 <_ZN7_thread8dispatchEv+0x68>
    80002020:	0304a703          	lw	a4,48(s1)
    80002024:	00200793          	li	a5,2
    80002028:	fcf718e3          	bne	a4,a5,80001ff8 <_ZN7_thread8dispatchEv+0x68>
            running = old;
    8000202c:	0000a797          	auipc	a5,0xa
    80002030:	9297b223          	sd	s1,-1756(a5) # 8000b950 <_ZN7_thread7runningE>
        return;
    80002034:	fc5ff06f          	j	80001ff8 <_ZN7_thread8dispatchEv+0x68>

0000000080002038 <_ZN7_thread4exitEv>:
int _thread::exit() {
    if (running == nullptr) {
    80002038:	0000a797          	auipc	a5,0xa
    8000203c:	9187b783          	ld	a5,-1768(a5) # 8000b950 <_ZN7_thread7runningE>
    80002040:	02078c63          	beqz	a5,80002078 <_ZN7_thread4exitEv+0x40>
int _thread::exit() {
    80002044:	ff010113          	addi	sp,sp,-16
    80002048:	00113423          	sd	ra,8(sp)
    8000204c:	00813023          	sd	s0,0(sp)
    80002050:	01010413          	addi	s0,sp,16
        return -1;
    }

    running->state = FINISHED;
    80002054:	00400713          	li	a4,4
    80002058:	02e7a823          	sw	a4,48(a5)

    dispatch();
    8000205c:	00000097          	auipc	ra,0x0
    80002060:	f34080e7          	jalr	-204(ra) # 80001f90 <_ZN7_thread8dispatchEv>

    return 0;
    80002064:	00000513          	li	a0,0
}
    80002068:	00813083          	ld	ra,8(sp)
    8000206c:	00013403          	ld	s0,0(sp)
    80002070:	01010113          	addi	sp,sp,16
    80002074:	00008067          	ret
        return -1;
    80002078:	fff00513          	li	a0,-1
}
    8000207c:	00008067          	ret

0000000080002080 <_ZN7_thread13threadWrapperEv>:

uint64 _thread::getTimeSlice() const {
    return timeSlice;
}

void _thread::threadWrapper() {
    80002080:	ff010113          	addi	sp,sp,-16
    80002084:	00113423          	sd	ra,8(sp)
    80002088:	00813023          	sd	s0,0(sp)
    8000208c:	01010413          	addi	s0,sp,16
    if (running != nullptr && running->body != nullptr) {
    80002090:	0000a797          	auipc	a5,0xa
    80002094:	8c07b783          	ld	a5,-1856(a5) # 8000b950 <_ZN7_thread7runningE>
    80002098:	00078a63          	beqz	a5,800020ac <_ZN7_thread13threadWrapperEv+0x2c>
    8000209c:	0007b703          	ld	a4,0(a5)
    800020a0:	00070663          	beqz	a4,800020ac <_ZN7_thread13threadWrapperEv+0x2c>
        running->body(running->arg);
    800020a4:	0087b503          	ld	a0,8(a5)
    800020a8:	000700e7          	jalr	a4
    }

    _thread::exit();
    800020ac:	00000097          	auipc	ra,0x0
    800020b0:	f8c080e7          	jalr	-116(ra) # 80002038 <_ZN7_thread4exitEv>
    800020b4:	00813083          	ld	ra,8(sp)
    800020b8:	00013403          	ld	s0,0(sp)
    800020bc:	01010113          	addi	sp,sp,16
    800020c0:	00008067          	ret

00000000800020c4 <_ZNK7_thread7getBodyEv>:
_thread::Body _thread::getBody() const {
    800020c4:	ff010113          	addi	sp,sp,-16
    800020c8:	00813423          	sd	s0,8(sp)
    800020cc:	01010413          	addi	s0,sp,16
}
    800020d0:	00053503          	ld	a0,0(a0)
    800020d4:	00813403          	ld	s0,8(sp)
    800020d8:	01010113          	addi	sp,sp,16
    800020dc:	00008067          	ret

00000000800020e0 <_ZNK7_thread6getArgEv>:
void* _thread::getArg() const {
    800020e0:	ff010113          	addi	sp,sp,-16
    800020e4:	00813423          	sd	s0,8(sp)
    800020e8:	01010413          	addi	s0,sp,16
}
    800020ec:	00853503          	ld	a0,8(a0)
    800020f0:	00813403          	ld	s0,8(sp)
    800020f4:	01010113          	addi	sp,sp,16
    800020f8:	00008067          	ret

00000000800020fc <_ZNK7_thread8getStackEv>:
void* _thread::getStack() const {
    800020fc:	ff010113          	addi	sp,sp,-16
    80002100:	00813423          	sd	s0,8(sp)
    80002104:	01010413          	addi	s0,sp,16
}
    80002108:	01053503          	ld	a0,16(a0)
    8000210c:	00813403          	ld	s0,8(sp)
    80002110:	01010113          	addi	sp,sp,16
    80002114:	00008067          	ret

0000000080002118 <_ZN7_thread10getContextEv>:
_thread::Context* _thread::getContext() {
    80002118:	ff010113          	addi	sp,sp,-16
    8000211c:	00813423          	sd	s0,8(sp)
    80002120:	01010413          	addi	s0,sp,16
}
    80002124:	01850513          	addi	a0,a0,24
    80002128:	00813403          	ld	s0,8(sp)
    8000212c:	01010113          	addi	sp,sp,16
    80002130:	00008067          	ret

0000000080002134 <_ZNK7_thread8getStateEv>:
_thread::State _thread::getState() const {
    80002134:	ff010113          	addi	sp,sp,-16
    80002138:	00813423          	sd	s0,8(sp)
    8000213c:	01010413          	addi	s0,sp,16
}
    80002140:	03052503          	lw	a0,48(a0)
    80002144:	00813403          	ld	s0,8(sp)
    80002148:	01010113          	addi	sp,sp,16
    8000214c:	00008067          	ret

0000000080002150 <_ZN7_thread8setStateENS_5StateE>:
void _thread::setState(State state) {
    80002150:	ff010113          	addi	sp,sp,-16
    80002154:	00813423          	sd	s0,8(sp)
    80002158:	01010413          	addi	s0,sp,16
    this->state = state;
    8000215c:	02b52823          	sw	a1,48(a0)
}
    80002160:	00813403          	ld	s0,8(sp)
    80002164:	01010113          	addi	sp,sp,16
    80002168:	00008067          	ret

000000008000216c <_ZNK7_thread12getTimeSliceEv>:
uint64 _thread::getTimeSlice() const {
    8000216c:	ff010113          	addi	sp,sp,-16
    80002170:	00813423          	sd	s0,8(sp)
    80002174:	01010413          	addi	s0,sp,16
}
    80002178:	02853503          	ld	a0,40(a0)
    8000217c:	00813403          	ld	s0,8(sp)
    80002180:	01010113          	addi	sp,sp,16
    80002184:	00008067          	ret

0000000080002188 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80002188:	fe010113          	addi	sp,sp,-32
    8000218c:	00113c23          	sd	ra,24(sp)
    80002190:	00813823          	sd	s0,16(sp)
    80002194:	00913423          	sd	s1,8(sp)
    80002198:	01213023          	sd	s2,0(sp)
    8000219c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800021a0:	00007517          	auipc	a0,0x7
    800021a4:	f9050513          	addi	a0,a0,-112 # 80009130 <CONSOLE_STATUS+0x120>
    800021a8:	00003097          	auipc	ra,0x3
    800021ac:	fd8080e7          	jalr	-40(ra) # 80005180 <_Z11printStringPKc>
    int test = getc() - '0';
    800021b0:	fffff097          	auipc	ra,0xfffff
    800021b4:	380080e7          	jalr	896(ra) # 80001530 <_Z4getcv>
    800021b8:	00050913          	mv	s2,a0
    800021bc:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800021c0:	fffff097          	auipc	ra,0xfffff
    800021c4:	370080e7          	jalr	880(ra) # 80001530 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800021c8:	fcb9091b          	addiw	s2,s2,-53
    800021cc:	00100793          	li	a5,1
    800021d0:	0327f463          	bgeu	a5,s2,800021f8 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800021d4:	00700793          	li	a5,7
    800021d8:	0e97e263          	bltu	a5,s1,800022bc <_Z8userMainv+0x134>
    800021dc:	00249493          	slli	s1,s1,0x2
    800021e0:	00007717          	auipc	a4,0x7
    800021e4:	16870713          	addi	a4,a4,360 # 80009348 <CONSOLE_STATUS+0x338>
    800021e8:	00e484b3          	add	s1,s1,a4
    800021ec:	0004a783          	lw	a5,0(s1)
    800021f0:	00e787b3          	add	a5,a5,a4
    800021f4:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800021f8:	00007517          	auipc	a0,0x7
    800021fc:	f5850513          	addi	a0,a0,-168 # 80009150 <CONSOLE_STATUS+0x140>
    80002200:	00003097          	auipc	ra,0x3
    80002204:	f80080e7          	jalr	-128(ra) # 80005180 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80002208:	01813083          	ld	ra,24(sp)
    8000220c:	01013403          	ld	s0,16(sp)
    80002210:	00813483          	ld	s1,8(sp)
    80002214:	00013903          	ld	s2,0(sp)
    80002218:	02010113          	addi	sp,sp,32
    8000221c:	00008067          	ret
            Threads_C_API_test();
    80002220:	00002097          	auipc	ra,0x2
    80002224:	5d8080e7          	jalr	1496(ra) # 800047f8 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80002228:	00007517          	auipc	a0,0x7
    8000222c:	f5850513          	addi	a0,a0,-168 # 80009180 <CONSOLE_STATUS+0x170>
    80002230:	00003097          	auipc	ra,0x3
    80002234:	f50080e7          	jalr	-176(ra) # 80005180 <_Z11printStringPKc>
            break;
    80002238:	fd1ff06f          	j	80002208 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    8000223c:	00001097          	auipc	ra,0x1
    80002240:	49c080e7          	jalr	1180(ra) # 800036d8 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80002244:	00007517          	auipc	a0,0x7
    80002248:	f7c50513          	addi	a0,a0,-132 # 800091c0 <CONSOLE_STATUS+0x1b0>
    8000224c:	00003097          	auipc	ra,0x3
    80002250:	f34080e7          	jalr	-204(ra) # 80005180 <_Z11printStringPKc>
            break;
    80002254:	fb5ff06f          	j	80002208 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80002258:	00001097          	auipc	ra,0x1
    8000225c:	cd4080e7          	jalr	-812(ra) # 80002f2c <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80002260:	00007517          	auipc	a0,0x7
    80002264:	fa050513          	addi	a0,a0,-96 # 80009200 <CONSOLE_STATUS+0x1f0>
    80002268:	00003097          	auipc	ra,0x3
    8000226c:	f18080e7          	jalr	-232(ra) # 80005180 <_Z11printStringPKc>
            break;
    80002270:	f99ff06f          	j	80002208 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80002274:	00003097          	auipc	ra,0x3
    80002278:	8c8080e7          	jalr	-1848(ra) # 80004b3c <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    8000227c:	00007517          	auipc	a0,0x7
    80002280:	fd450513          	addi	a0,a0,-44 # 80009250 <CONSOLE_STATUS+0x240>
    80002284:	00003097          	auipc	ra,0x3
    80002288:	efc080e7          	jalr	-260(ra) # 80005180 <_Z11printStringPKc>
            break;
    8000228c:	f7dff06f          	j	80002208 <_Z8userMainv+0x80>
            System_Mode_test();
    80002290:	00004097          	auipc	ra,0x4
    80002294:	bd0080e7          	jalr	-1072(ra) # 80005e60 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80002298:	00007517          	auipc	a0,0x7
    8000229c:	01050513          	addi	a0,a0,16 # 800092a8 <CONSOLE_STATUS+0x298>
    800022a0:	00003097          	auipc	ra,0x3
    800022a4:	ee0080e7          	jalr	-288(ra) # 80005180 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800022a8:	00007517          	auipc	a0,0x7
    800022ac:	02050513          	addi	a0,a0,32 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800022b0:	00003097          	auipc	ra,0x3
    800022b4:	ed0080e7          	jalr	-304(ra) # 80005180 <_Z11printStringPKc>
            break;
    800022b8:	f51ff06f          	j	80002208 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800022bc:	00007517          	auipc	a0,0x7
    800022c0:	06450513          	addi	a0,a0,100 # 80009320 <CONSOLE_STATUS+0x310>
    800022c4:	00003097          	auipc	ra,0x3
    800022c8:	ebc080e7          	jalr	-324(ra) # 80005180 <_Z11printStringPKc>
    800022cc:	f3dff06f          	j	80002208 <_Z8userMainv+0x80>

00000000800022d0 <_ZN9Scheduler3putEP7_thread>:
#include "../h/Thread.hpp"

_thread* Scheduler::head = nullptr;
_thread* Scheduler::tail = nullptr;

void Scheduler::put(_thread* thread) {
    800022d0:	ff010113          	addi	sp,sp,-16
    800022d4:	00813423          	sd	s0,8(sp)
    800022d8:	01010413          	addi	s0,sp,16
    if (thread == nullptr) {
    800022dc:	04050063          	beqz	a0,8000231c <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    if (thread->state == _thread::FINISHED || thread->state == _thread::BLOCKED) {
    800022e0:	03052783          	lw	a5,48(a0)
    800022e4:	ffd7879b          	addiw	a5,a5,-3
    800022e8:	00100713          	li	a4,1
    800022ec:	02f77863          	bgeu	a4,a5,8000231c <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    thread->state = _thread::READY;
    800022f0:	00100793          	li	a5,1
    800022f4:	02f52823          	sw	a5,48(a0)
    thread->next = nullptr;
    800022f8:	02053c23          	sd	zero,56(a0)

    if (head == nullptr) {
    800022fc:	00009797          	auipc	a5,0x9
    80002300:	65c7b783          	ld	a5,1628(a5) # 8000b958 <_ZN9Scheduler4headE>
    80002304:	02078263          	beqz	a5,80002328 <_ZN9Scheduler3putEP7_thread+0x58>
        head = thread;
        tail = thread;
    } else {
        tail->next = thread;
    80002308:	00009797          	auipc	a5,0x9
    8000230c:	65078793          	addi	a5,a5,1616 # 8000b958 <_ZN9Scheduler4headE>
    80002310:	0087b703          	ld	a4,8(a5)
    80002314:	02a73c23          	sd	a0,56(a4)
        tail = thread;
    80002318:	00a7b423          	sd	a0,8(a5)
    }
}
    8000231c:	00813403          	ld	s0,8(sp)
    80002320:	01010113          	addi	sp,sp,16
    80002324:	00008067          	ret
        head = thread;
    80002328:	00009797          	auipc	a5,0x9
    8000232c:	63078793          	addi	a5,a5,1584 # 8000b958 <_ZN9Scheduler4headE>
    80002330:	00a7b023          	sd	a0,0(a5)
        tail = thread;
    80002334:	00a7b423          	sd	a0,8(a5)
    80002338:	fe5ff06f          	j	8000231c <_ZN9Scheduler3putEP7_thread+0x4c>

000000008000233c <_ZN9Scheduler3getEv>:

_thread* Scheduler::get() {
    8000233c:	ff010113          	addi	sp,sp,-16
    80002340:	00813423          	sd	s0,8(sp)
    80002344:	01010413          	addi	s0,sp,16
    if (head == nullptr) {
    80002348:	00009517          	auipc	a0,0x9
    8000234c:	61053503          	ld	a0,1552(a0) # 8000b958 <_ZN9Scheduler4headE>
    80002350:	00050c63          	beqz	a0,80002368 <_ZN9Scheduler3getEv+0x2c>
        return nullptr;
    }

    _thread* thread = head;

    head = head->next;
    80002354:	03853783          	ld	a5,56(a0)
    80002358:	00009717          	auipc	a4,0x9
    8000235c:	60f73023          	sd	a5,1536(a4) # 8000b958 <_ZN9Scheduler4headE>

    if (head == nullptr) {
    80002360:	00078a63          	beqz	a5,80002374 <_ZN9Scheduler3getEv+0x38>
        tail = nullptr;
    }

    thread->next = nullptr;
    80002364:	02053c23          	sd	zero,56(a0)

    return thread;
}
    80002368:	00813403          	ld	s0,8(sp)
    8000236c:	01010113          	addi	sp,sp,16
    80002370:	00008067          	ret
        tail = nullptr;
    80002374:	00009797          	auipc	a5,0x9
    80002378:	5e07b623          	sd	zero,1516(a5) # 8000b960 <_ZN9Scheduler4tailE>
    8000237c:	fe9ff06f          	j	80002364 <_ZN9Scheduler3getEv+0x28>

0000000080002380 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    80002380:	ff010113          	addi	sp,sp,-16
    80002384:	00813423          	sd	s0,8(sp)
    80002388:	01010413          	addi	s0,sp,16
    return head == nullptr;
    8000238c:	00009517          	auipc	a0,0x9
    80002390:	5cc53503          	ld	a0,1484(a0) # 8000b958 <_ZN9Scheduler4headE>
    80002394:	00153513          	seqz	a0,a0
    80002398:	00813403          	ld	s0,8(sp)
    8000239c:	01010113          	addi	sp,sp,16
    800023a0:	00008067          	ret

00000000800023a4 <_Znwm>:
#include "../h/new.hpp"
#include "../h/syscall_c.hpp"

void* operator new(size_t size) {
    800023a4:	ff010113          	addi	sp,sp,-16
    800023a8:	00113423          	sd	ra,8(sp)
    800023ac:	00813023          	sd	s0,0(sp)
    800023b0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800023b4:	fffff097          	auipc	ra,0xfffff
    800023b8:	de4080e7          	jalr	-540(ra) # 80001198 <_Z9mem_allocm>
}
    800023bc:	00813083          	ld	ra,8(sp)
    800023c0:	00013403          	ld	s0,0(sp)
    800023c4:	01010113          	addi	sp,sp,16
    800023c8:	00008067          	ret

00000000800023cc <_Znam>:

void* operator new[](size_t size) {
    800023cc:	ff010113          	addi	sp,sp,-16
    800023d0:	00113423          	sd	ra,8(sp)
    800023d4:	00813023          	sd	s0,0(sp)
    800023d8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800023dc:	fffff097          	auipc	ra,0xfffff
    800023e0:	dbc080e7          	jalr	-580(ra) # 80001198 <_Z9mem_allocm>
}
    800023e4:	00813083          	ld	ra,8(sp)
    800023e8:	00013403          	ld	s0,0(sp)
    800023ec:	01010113          	addi	sp,sp,16
    800023f0:	00008067          	ret

00000000800023f4 <_ZdlPv>:

void operator delete(void* ptr) {
    800023f4:	ff010113          	addi	sp,sp,-16
    800023f8:	00113423          	sd	ra,8(sp)
    800023fc:	00813023          	sd	s0,0(sp)
    80002400:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80002404:	fffff097          	auipc	ra,0xfffff
    80002408:	de0080e7          	jalr	-544(ra) # 800011e4 <_Z8mem_freePv>
}
    8000240c:	00813083          	ld	ra,8(sp)
    80002410:	00013403          	ld	s0,0(sp)
    80002414:	01010113          	addi	sp,sp,16
    80002418:	00008067          	ret

000000008000241c <_ZdaPv>:

void operator delete[](void* ptr) {
    8000241c:	ff010113          	addi	sp,sp,-16
    80002420:	00113423          	sd	ra,8(sp)
    80002424:	00813023          	sd	s0,0(sp)
    80002428:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    8000242c:	fffff097          	auipc	ra,0xfffff
    80002430:	db8080e7          	jalr	-584(ra) # 800011e4 <_Z8mem_freePv>
    80002434:	00813083          	ld	ra,8(sp)
    80002438:	00013403          	ld	s0,0(sp)
    8000243c:	01010113          	addi	sp,sp,16
    80002440:	00008067          	ret

0000000080002444 <_ZL15userMainWrapperPv>:
extern "C" void supervisorTrap();
extern void userMain();

static volatile bool userMainFinished = false;

static void userMainWrapper(void*) {
    80002444:	ff010113          	addi	sp,sp,-16
    80002448:	00113423          	sd	ra,8(sp)
    8000244c:	00813023          	sd	s0,0(sp)
    80002450:	01010413          	addi	s0,sp,16
    userMain();
    80002454:	00000097          	auipc	ra,0x0
    80002458:	d34080e7          	jalr	-716(ra) # 80002188 <_Z8userMainv>
    userMainFinished = true;
    8000245c:	00100793          	li	a5,1
    80002460:	00009717          	auipc	a4,0x9
    80002464:	50f70423          	sb	a5,1288(a4) # 8000b968 <_ZL16userMainFinished>
    thread_exit();
    80002468:	fffff097          	auipc	ra,0xfffff
    8000246c:	e80080e7          	jalr	-384(ra) # 800012e8 <_Z11thread_exitv>
}
    80002470:	00813083          	ld	ra,8(sp)
    80002474:	00013403          	ld	s0,0(sp)
    80002478:	01010113          	addi	sp,sp,16
    8000247c:	00008067          	ret

0000000080002480 <main>:

int main() {
    80002480:	f9010113          	addi	sp,sp,-112
    80002484:	06113423          	sd	ra,104(sp)
    80002488:	06813023          	sd	s0,96(sp)
    8000248c:	04913c23          	sd	s1,88(sp)
    80002490:	07010413          	addi	s0,sp,112
    Riscv::w_stvec((uint64)&supervisorTrap);
    80002494:	00009797          	auipc	a5,0x9
    80002498:	45c7b783          	ld	a5,1116(a5) # 8000b8f0 <_GLOBAL_OFFSET_TABLE_+0x18>
        asm volatile("csrw stvec, %0" : : "r"(x));//adresa prekidne rutine, da bi skocilo na supervisorTrap
    8000249c:	10579073          	csrw	stvec,a5
        asm volatile("csrs sstatus, %0" : : "r"(mask));//omoguci prekide
    800024a0:	00200793          	li	a5,2
    800024a4:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    // Za tačke 1, 2, 3 ne uključujemo prekide.
    // Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    _thread mainThread(nullptr, nullptr, nullptr);
    800024a8:	00000693          	li	a3,0
    800024ac:	00000613          	li	a2,0
    800024b0:	00000593          	li	a1,0
    800024b4:	fa040493          	addi	s1,s0,-96
    800024b8:	00048513          	mv	a0,s1
    800024bc:	00000097          	auipc	ra,0x0
    800024c0:	9a0080e7          	jalr	-1632(ra) # 80001e5c <_ZN7_threadC1EPFvPvES0_S0_>
    mainThread.setState(_thread::RUNNING);
    800024c4:	00200593          	li	a1,2
    800024c8:	00048513          	mv	a0,s1
    800024cc:	00000097          	auipc	ra,0x0
    800024d0:	c84080e7          	jalr	-892(ra) # 80002150 <_ZN7_thread8setStateENS_5StateE>
    _thread::running = &mainThread;
    800024d4:	00009797          	auipc	a5,0x9
    800024d8:	4147b783          	ld	a5,1044(a5) # 8000b8e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800024dc:	0097b023          	sd	s1,0(a5)

    thread_t userThread = nullptr;
    800024e0:	f8043c23          	sd	zero,-104(s0)
    int ret = thread_create(&userThread, userMainWrapper, nullptr);
    800024e4:	00000613          	li	a2,0
    800024e8:	00000597          	auipc	a1,0x0
    800024ec:	f5c58593          	addi	a1,a1,-164 # 80002444 <_ZL15userMainWrapperPv>
    800024f0:	f9840513          	addi	a0,s0,-104
    800024f4:	fffff097          	auipc	ra,0xfffff
    800024f8:	d30080e7          	jalr	-720(ra) # 80001224 <_Z13thread_createPP7_threadPFvPvES2_>

    if (ret < 0 || userThread == nullptr) {
    800024fc:	00054663          	bltz	a0,80002508 <main+0x88>
    80002500:	f9843783          	ld	a5,-104(s0)
    80002504:	02079063          	bnez	a5,80002524 <main+0xa4>
        volatile uint32* qemu = (uint32*)0x100000;
        *qemu = 0x5555;
    80002508:	00100737          	lui	a4,0x100
    8000250c:	000057b7          	lui	a5,0x5
    80002510:	5557879b          	addiw	a5,a5,1365
    80002514:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
        return ret;
    80002518:	02c0006f          	j	80002544 <main+0xc4>
    }

    while (!userMainFinished) {
        thread_dispatch();
    8000251c:	fffff097          	auipc	ra,0xfffff
    80002520:	e0c080e7          	jalr	-500(ra) # 80001328 <_Z15thread_dispatchv>
    while (!userMainFinished) {
    80002524:	00009797          	auipc	a5,0x9
    80002528:	4447c783          	lbu	a5,1092(a5) # 8000b968 <_ZL16userMainFinished>
    8000252c:	fe0788e3          	beqz	a5,8000251c <main+0x9c>
    }

    volatile uint32* qemu = (uint32*)0x100000;
    *qemu = 0x5555;
    80002530:	00100737          	lui	a4,0x100
    80002534:	000057b7          	lui	a5,0x5
    80002538:	5557879b          	addiw	a5,a5,1365
    8000253c:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>

    return 0;
    80002540:	00000513          	li	a0,0
    80002544:	06813083          	ld	ra,104(sp)
    80002548:	06013403          	ld	s0,96(sp)
    8000254c:	05813483          	ld	s1,88(sp)
    80002550:	07010113          	addi	sp,sp,112
    80002554:	00008067          	ret

0000000080002558 <_ZN6ThreadD1Ev>:
    this->myHandle = nullptr;
    this->body = nullptr;
    this->arg = nullptr;
}

Thread::~Thread() {
    80002558:	ff010113          	addi	sp,sp,-16
    8000255c:	00813423          	sd	s0,8(sp)
    80002560:	01010413          	addi	s0,sp,16
    /*
     * Za sada nemamo syscall za brisanje tuđe niti.
     * Nit se sama gasi preko thread_exit().
     */
}
    80002564:	00813403          	ld	s0,8(sp)
    80002568:	01010113          	addi	sp,sp,16
    8000256c:	00008067          	ret

0000000080002570 <_ZN6Thread13threadWrapperEPv>:
}

void Thread::threadWrapper(void* thread) {
    Thread* t = (Thread*)thread;

    if (t != nullptr) {
    80002570:	02050863          	beqz	a0,800025a0 <_ZN6Thread13threadWrapperEPv+0x30>
void Thread::threadWrapper(void* thread) {
    80002574:	ff010113          	addi	sp,sp,-16
    80002578:	00113423          	sd	ra,8(sp)
    8000257c:	00813023          	sd	s0,0(sp)
    80002580:	01010413          	addi	s0,sp,16
        t->run();
    80002584:	00053783          	ld	a5,0(a0)
    80002588:	0107b783          	ld	a5,16(a5) # 5010 <_entry-0x7fffaff0>
    8000258c:	000780e7          	jalr	a5
    }
}
    80002590:	00813083          	ld	ra,8(sp)
    80002594:	00013403          	ld	s0,0(sp)
    80002598:	01010113          	addi	sp,sp,16
    8000259c:	00008067          	ret
    800025a0:	00008067          	ret

00000000800025a4 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800025a4:	ff010113          	addi	sp,sp,-16
    800025a8:	00113423          	sd	ra,8(sp)
    800025ac:	00813023          	sd	s0,0(sp)
    800025b0:	01010413          	addi	s0,sp,16
}
    800025b4:	00000097          	auipc	ra,0x0
    800025b8:	e40080e7          	jalr	-448(ra) # 800023f4 <_ZdlPv>
    800025bc:	00813083          	ld	ra,8(sp)
    800025c0:	00013403          	ld	s0,0(sp)
    800025c4:	01010113          	addi	sp,sp,16
    800025c8:	00008067          	ret

00000000800025cc <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800025cc:	00009797          	auipc	a5,0x9
    800025d0:	14c78793          	addi	a5,a5,332 # 8000b718 <_ZTV9Semaphore+0x10>
    800025d4:	00f53023          	sd	a5,0(a0)
    if (myHandle != nullptr) {
    800025d8:	00853503          	ld	a0,8(a0)
    800025dc:	02050663          	beqz	a0,80002608 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    800025e0:	ff010113          	addi	sp,sp,-16
    800025e4:	00113423          	sd	ra,8(sp)
    800025e8:	00813023          	sd	s0,0(sp)
    800025ec:	01010413          	addi	s0,sp,16
        sem_close(myHandle);
    800025f0:	fffff097          	auipc	ra,0xfffff
    800025f4:	db8080e7          	jalr	-584(ra) # 800013a8 <_Z9sem_closeP4_sem>
    }
}
    800025f8:	00813083          	ld	ra,8(sp)
    800025fc:	00013403          	ld	s0,0(sp)
    80002600:	01010113          	addi	sp,sp,16
    80002604:	00008067          	ret
    80002608:	00008067          	ret

000000008000260c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000260c:	fe010113          	addi	sp,sp,-32
    80002610:	00113c23          	sd	ra,24(sp)
    80002614:	00813823          	sd	s0,16(sp)
    80002618:	00913423          	sd	s1,8(sp)
    8000261c:	02010413          	addi	s0,sp,32
    80002620:	00050493          	mv	s1,a0
}
    80002624:	00000097          	auipc	ra,0x0
    80002628:	fa8080e7          	jalr	-88(ra) # 800025cc <_ZN9SemaphoreD1Ev>
    8000262c:	00048513          	mv	a0,s1
    80002630:	00000097          	auipc	ra,0x0
    80002634:	dc4080e7          	jalr	-572(ra) # 800023f4 <_ZdlPv>
    80002638:	01813083          	ld	ra,24(sp)
    8000263c:	01013403          	ld	s0,16(sp)
    80002640:	00813483          	ld	s1,8(sp)
    80002644:	02010113          	addi	sp,sp,32
    80002648:	00008067          	ret

000000008000264c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    8000264c:	ff010113          	addi	sp,sp,-16
    80002650:	00813423          	sd	s0,8(sp)
    80002654:	01010413          	addi	s0,sp,16
    80002658:	00009797          	auipc	a5,0x9
    8000265c:	09878793          	addi	a5,a5,152 # 8000b6f0 <_ZTV6Thread+0x10>
    80002660:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80002664:	00053423          	sd	zero,8(a0)
    this->body = body;
    80002668:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    8000266c:	00c53c23          	sd	a2,24(a0)
}
    80002670:	00813403          	ld	s0,8(sp)
    80002674:	01010113          	addi	sp,sp,16
    80002678:	00008067          	ret

000000008000267c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000267c:	ff010113          	addi	sp,sp,-16
    80002680:	00813423          	sd	s0,8(sp)
    80002684:	01010413          	addi	s0,sp,16
    80002688:	00009797          	auipc	a5,0x9
    8000268c:	06878793          	addi	a5,a5,104 # 8000b6f0 <_ZTV6Thread+0x10>
    80002690:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80002694:	00053423          	sd	zero,8(a0)
    this->body = nullptr;
    80002698:	00053823          	sd	zero,16(a0)
    this->arg = nullptr;
    8000269c:	00053c23          	sd	zero,24(a0)
}
    800026a0:	00813403          	ld	s0,8(sp)
    800026a4:	01010113          	addi	sp,sp,16
    800026a8:	00008067          	ret

00000000800026ac <_ZN6Thread5startEv>:
int Thread::start() {
    800026ac:	ff010113          	addi	sp,sp,-16
    800026b0:	00113423          	sd	ra,8(sp)
    800026b4:	00813023          	sd	s0,0(sp)
    800026b8:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    800026bc:	01053583          	ld	a1,16(a0)
    800026c0:	02058263          	beqz	a1,800026e4 <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    800026c4:	01853603          	ld	a2,24(a0)
    800026c8:	00850513          	addi	a0,a0,8
    800026cc:	fffff097          	auipc	ra,0xfffff
    800026d0:	b58080e7          	jalr	-1192(ra) # 80001224 <_Z13thread_createPP7_threadPFvPvES2_>
}
    800026d4:	00813083          	ld	ra,8(sp)
    800026d8:	00013403          	ld	s0,0(sp)
    800026dc:	01010113          	addi	sp,sp,16
    800026e0:	00008067          	ret
    return thread_create(&myHandle, Thread::threadWrapper, this);
    800026e4:	00050613          	mv	a2,a0
    800026e8:	00000597          	auipc	a1,0x0
    800026ec:	e8858593          	addi	a1,a1,-376 # 80002570 <_ZN6Thread13threadWrapperEPv>
    800026f0:	00850513          	addi	a0,a0,8
    800026f4:	fffff097          	auipc	ra,0xfffff
    800026f8:	b30080e7          	jalr	-1232(ra) # 80001224 <_Z13thread_createPP7_threadPFvPvES2_>
    800026fc:	fd9ff06f          	j	800026d4 <_ZN6Thread5startEv+0x28>

0000000080002700 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002700:	ff010113          	addi	sp,sp,-16
    80002704:	00113423          	sd	ra,8(sp)
    80002708:	00813023          	sd	s0,0(sp)
    8000270c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002710:	fffff097          	auipc	ra,0xfffff
    80002714:	c18080e7          	jalr	-1000(ra) # 80001328 <_Z15thread_dispatchv>
}
    80002718:	00813083          	ld	ra,8(sp)
    8000271c:	00013403          	ld	s0,0(sp)
    80002720:	01010113          	addi	sp,sp,16
    80002724:	00008067          	ret

0000000080002728 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002728:	ff010113          	addi	sp,sp,-16
    8000272c:	00113423          	sd	ra,8(sp)
    80002730:	00813023          	sd	s0,0(sp)
    80002734:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002738:	fffff097          	auipc	ra,0xfffff
    8000273c:	db8080e7          	jalr	-584(ra) # 800014f0 <_Z10time_sleepm>
}
    80002740:	00813083          	ld	ra,8(sp)
    80002744:	00013403          	ld	s0,0(sp)
    80002748:	01010113          	addi	sp,sp,16
    8000274c:	00008067          	ret

0000000080002750 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80002750:	ff010113          	addi	sp,sp,-16
    80002754:	00113423          	sd	ra,8(sp)
    80002758:	00813023          	sd	s0,0(sp)
    8000275c:	01010413          	addi	s0,sp,16
    80002760:	00009797          	auipc	a5,0x9
    80002764:	fb878793          	addi	a5,a5,-72 # 8000b718 <_ZTV9Semaphore+0x10>
    80002768:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    8000276c:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002770:	00850513          	addi	a0,a0,8
    80002774:	fffff097          	auipc	ra,0xfffff
    80002778:	bf0080e7          	jalr	-1040(ra) # 80001364 <_Z8sem_openPP4_semj>
}
    8000277c:	00813083          	ld	ra,8(sp)
    80002780:	00013403          	ld	s0,0(sp)
    80002784:	01010113          	addi	sp,sp,16
    80002788:	00008067          	ret

000000008000278c <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    8000278c:	ff010113          	addi	sp,sp,-16
    80002790:	00113423          	sd	ra,8(sp)
    80002794:	00813023          	sd	s0,0(sp)
    80002798:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000279c:	00853503          	ld	a0,8(a0)
    800027a0:	fffff097          	auipc	ra,0xfffff
    800027a4:	c48080e7          	jalr	-952(ra) # 800013e8 <_Z8sem_waitP4_sem>
}
    800027a8:	00813083          	ld	ra,8(sp)
    800027ac:	00013403          	ld	s0,0(sp)
    800027b0:	01010113          	addi	sp,sp,16
    800027b4:	00008067          	ret

00000000800027b8 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    800027b8:	ff010113          	addi	sp,sp,-16
    800027bc:	00113423          	sd	ra,8(sp)
    800027c0:	00813023          	sd	s0,0(sp)
    800027c4:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800027c8:	00853503          	ld	a0,8(a0)
    800027cc:	fffff097          	auipc	ra,0xfffff
    800027d0:	c5c080e7          	jalr	-932(ra) # 80001428 <_Z10sem_signalP4_sem>
}
    800027d4:	00813083          	ld	ra,8(sp)
    800027d8:	00013403          	ld	s0,0(sp)
    800027dc:	01010113          	addi	sp,sp,16
    800027e0:	00008067          	ret

00000000800027e4 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    800027e4:	fe010113          	addi	sp,sp,-32
    800027e8:	00113c23          	sd	ra,24(sp)
    800027ec:	00813823          	sd	s0,16(sp)
    800027f0:	00913423          	sd	s1,8(sp)
    800027f4:	01213023          	sd	s2,0(sp)
    800027f8:	02010413          	addi	s0,sp,32
    800027fc:	00050493          	mv	s1,a0
    80002800:	00058913          	mv	s2,a1
    80002804:	00000097          	auipc	ra,0x0
    80002808:	e78080e7          	jalr	-392(ra) # 8000267c <_ZN6ThreadC1Ev>
    8000280c:	00009797          	auipc	a5,0x9
    80002810:	eb478793          	addi	a5,a5,-332 # 8000b6c0 <_ZTV14PeriodicThread+0x10>
    80002814:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80002818:	0324b023          	sd	s2,32(s1)
}
    8000281c:	01813083          	ld	ra,24(sp)
    80002820:	01013403          	ld	s0,16(sp)
    80002824:	00813483          	ld	s1,8(sp)
    80002828:	00013903          	ld	s2,0(sp)
    8000282c:	02010113          	addi	sp,sp,32
    80002830:	00008067          	ret

0000000080002834 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002834:	ff010113          	addi	sp,sp,-16
    80002838:	00813423          	sd	s0,8(sp)
    8000283c:	01010413          	addi	s0,sp,16
    /*
     * PeriodicThread je deo zadatka 4.
     * Pošto ga ne radiš, ovo ostaje prazno.
     */
}
    80002840:	00813403          	ld	s0,8(sp)
    80002844:	01010113          	addi	sp,sp,16
    80002848:	00008067          	ret

000000008000284c <_ZN7Console4getcEv>:

char Console::getc() {
    8000284c:	ff010113          	addi	sp,sp,-16
    80002850:	00113423          	sd	ra,8(sp)
    80002854:	00813023          	sd	s0,0(sp)
    80002858:	01010413          	addi	s0,sp,16
    return ::getc();
    8000285c:	fffff097          	auipc	ra,0xfffff
    80002860:	cd4080e7          	jalr	-812(ra) # 80001530 <_Z4getcv>
}
    80002864:	00813083          	ld	ra,8(sp)
    80002868:	00013403          	ld	s0,0(sp)
    8000286c:	01010113          	addi	sp,sp,16
    80002870:	00008067          	ret

0000000080002874 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002874:	ff010113          	addi	sp,sp,-16
    80002878:	00113423          	sd	ra,8(sp)
    8000287c:	00813023          	sd	s0,0(sp)
    80002880:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002884:	fffff097          	auipc	ra,0xfffff
    80002888:	cec080e7          	jalr	-788(ra) # 80001570 <_Z4putcc>
    8000288c:	00813083          	ld	ra,8(sp)
    80002890:	00013403          	ld	s0,0(sp)
    80002894:	01010113          	addi	sp,sp,16
    80002898:	00008067          	ret

000000008000289c <_ZN6Thread3runEv>:
    static int sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    8000289c:	ff010113          	addi	sp,sp,-16
    800028a0:	00813423          	sd	s0,8(sp)
    800028a4:	01010413          	addi	s0,sp,16
    800028a8:	00813403          	ld	s0,8(sp)
    800028ac:	01010113          	addi	sp,sp,16
    800028b0:	00008067          	ret

00000000800028b4 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate();

protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    800028b4:	ff010113          	addi	sp,sp,-16
    800028b8:	00813423          	sd	s0,8(sp)
    800028bc:	01010413          	addi	s0,sp,16
    800028c0:	00813403          	ld	s0,8(sp)
    800028c4:	01010113          	addi	sp,sp,16
    800028c8:	00008067          	ret

00000000800028cc <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800028cc:	ff010113          	addi	sp,sp,-16
    800028d0:	00813423          	sd	s0,8(sp)
    800028d4:	01010413          	addi	s0,sp,16
    800028d8:	00009797          	auipc	a5,0x9
    800028dc:	de878793          	addi	a5,a5,-536 # 8000b6c0 <_ZTV14PeriodicThread+0x10>
    800028e0:	00f53023          	sd	a5,0(a0)
    800028e4:	00813403          	ld	s0,8(sp)
    800028e8:	01010113          	addi	sp,sp,16
    800028ec:	00008067          	ret

00000000800028f0 <_ZN14PeriodicThreadD0Ev>:
    800028f0:	ff010113          	addi	sp,sp,-16
    800028f4:	00113423          	sd	ra,8(sp)
    800028f8:	00813023          	sd	s0,0(sp)
    800028fc:	01010413          	addi	s0,sp,16
    80002900:	00009797          	auipc	a5,0x9
    80002904:	dc078793          	addi	a5,a5,-576 # 8000b6c0 <_ZTV14PeriodicThread+0x10>
    80002908:	00f53023          	sd	a5,0(a0)
    8000290c:	00000097          	auipc	ra,0x0
    80002910:	ae8080e7          	jalr	-1304(ra) # 800023f4 <_ZdlPv>
    80002914:	00813083          	ld	ra,8(sp)
    80002918:	00013403          	ld	s0,0(sp)
    8000291c:	01010113          	addi	sp,sp,16
    80002920:	00008067          	ret

0000000080002924 <_ZN15MemoryAllocatorC1Ev>:
#include "../h/MemoryAllocator.hpp"

MemoryAllocator::MemoryAllocator() : freeHead(nullptr), initialized(false) {}
    80002924:	ff010113          	addi	sp,sp,-16
    80002928:	00813423          	sd	s0,8(sp)
    8000292c:	01010413          	addi	s0,sp,16
    80002930:	00053023          	sd	zero,0(a0)
    80002934:	00050423          	sb	zero,8(a0)
    80002938:	00813403          	ld	s0,8(sp)
    8000293c:	01010113          	addi	sp,sp,16
    80002940:	00008067          	ret

0000000080002944 <_Z41__static_initialization_and_destruction_0ii>:
            block->next->prev = block;
        }
        nextBlock->next = nullptr;
        nextBlock->prev = nullptr;
    }
    80002944:	00100793          	li	a5,1
    80002948:	00f50463          	beq	a0,a5,80002950 <_Z41__static_initialization_and_destruction_0ii+0xc>
    8000294c:	00008067          	ret
    80002950:	000107b7          	lui	a5,0x10
    80002954:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002958:	fef59ae3          	bne	a1,a5,8000294c <_Z41__static_initialization_and_destruction_0ii+0x8>
    8000295c:	ff010113          	addi	sp,sp,-16
    80002960:	00113423          	sd	ra,8(sp)
    80002964:	00813023          	sd	s0,0(sp)
    80002968:	01010413          	addi	s0,sp,16
MemoryAllocator MemoryAllocator::instance;
    8000296c:	00009517          	auipc	a0,0x9
    80002970:	00450513          	addi	a0,a0,4 # 8000b970 <_ZN15MemoryAllocator8instanceE>
    80002974:	00000097          	auipc	ra,0x0
    80002978:	fb0080e7          	jalr	-80(ra) # 80002924 <_ZN15MemoryAllocatorC1Ev>
    8000297c:	00813083          	ld	ra,8(sp)
    80002980:	00013403          	ld	s0,0(sp)
    80002984:	01010113          	addi	sp,sp,16
    80002988:	00008067          	ret

000000008000298c <_ZN15MemoryAllocator11getInstanceEv>:
MemoryAllocator& MemoryAllocator::getInstance() {
    8000298c:	ff010113          	addi	sp,sp,-16
    80002990:	00813423          	sd	s0,8(sp)
    80002994:	01010413          	addi	s0,sp,16
}
    80002998:	00009517          	auipc	a0,0x9
    8000299c:	fd850513          	addi	a0,a0,-40 # 8000b970 <_ZN15MemoryAllocator8instanceE>
    800029a0:	00813403          	ld	s0,8(sp)
    800029a4:	01010113          	addi	sp,sp,16
    800029a8:	00008067          	ret

00000000800029ac <_ZN15MemoryAllocator4initEv>:
void MemoryAllocator::init() {
    800029ac:	ff010113          	addi	sp,sp,-16
    800029b0:	00813423          	sd	s0,8(sp)
    800029b4:	01010413          	addi	s0,sp,16
    if (initialized) return;
    800029b8:	00854783          	lbu	a5,8(a0)
    800029bc:	04079263          	bnez	a5,80002a00 <_ZN15MemoryAllocator4initEv+0x54>
    uint64 heapStart = (uint64) HEAP_START_ADDR;
    800029c0:	00009797          	auipc	a5,0x9
    800029c4:	f207b783          	ld	a5,-224(a5) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800029c8:	0007b703          	ld	a4,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    800029cc:	00009797          	auipc	a5,0x9
    800029d0:	f347b783          	ld	a5,-204(a5) # 8000b900 <_GLOBAL_OFFSET_TABLE_+0x28>
    800029d4:	0007b783          	ld	a5,0(a5)
    size_t heapSize = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    800029d8:	40e787b3          	sub	a5,a5,a4
    800029dc:	0067d793          	srli	a5,a5,0x6
    freeHead = (FreeBlock*) heapStart;
    800029e0:	00e53023          	sd	a4,0(a0)
    freeHead->size = heapSize;
    800029e4:	00f73023          	sd	a5,0(a4)
    freeHead->next = nullptr;
    800029e8:	00053783          	ld	a5,0(a0)
    800029ec:	0007b423          	sd	zero,8(a5)
    freeHead->prev = nullptr;
    800029f0:	00053783          	ld	a5,0(a0)
    800029f4:	0007b823          	sd	zero,16(a5)
    initialized = true;
    800029f8:	00100793          	li	a5,1
    800029fc:	00f50423          	sb	a5,8(a0)
}
    80002a00:	00813403          	ld	s0,8(sp)
    80002a04:	01010113          	addi	sp,sp,16
    80002a08:	00008067          	ret

0000000080002a0c <_ZN15MemoryAllocator6mallocEm>:
void* MemoryAllocator::malloc(size_t numBlocks) {
    80002a0c:	fe010113          	addi	sp,sp,-32
    80002a10:	00113c23          	sd	ra,24(sp)
    80002a14:	00813823          	sd	s0,16(sp)
    80002a18:	00913423          	sd	s1,8(sp)
    80002a1c:	01213023          	sd	s2,0(sp)
    80002a20:	02010413          	addi	s0,sp,32
    80002a24:	00050913          	mv	s2,a0
    80002a28:	00058493          	mv	s1,a1
    init();
    80002a2c:	00000097          	auipc	ra,0x0
    80002a30:	f80080e7          	jalr	-128(ra) # 800029ac <_ZN15MemoryAllocator4initEv>
    if (numBlocks == 0) return nullptr;
    80002a34:	0c048863          	beqz	s1,80002b04 <_ZN15MemoryAllocator6mallocEm+0xf8>
    size_t neededBlocks = numBlocks + 1;
    80002a38:	00148593          	addi	a1,s1,1
    FreeBlock* current = freeHead;
    80002a3c:	00093503          	ld	a0,0(s2)
    while(current != nullptr && current->size < neededBlocks){
    80002a40:	00050a63          	beqz	a0,80002a54 <_ZN15MemoryAllocator6mallocEm+0x48>
    80002a44:	00053783          	ld	a5,0(a0)
    80002a48:	00b7f663          	bgeu	a5,a1,80002a54 <_ZN15MemoryAllocator6mallocEm+0x48>
        current = current->next;
    80002a4c:	00853503          	ld	a0,8(a0)
    while(current != nullptr && current->size < neededBlocks){
    80002a50:	ff1ff06f          	j	80002a40 <_ZN15MemoryAllocator6mallocEm+0x34>
    if (current == nullptr){
    80002a54:	04050063          	beqz	a0,80002a94 <_ZN15MemoryAllocator6mallocEm+0x88>
    size_t remainingBlocks = current->size - neededBlocks;
    80002a58:	00053783          	ld	a5,0(a0)
    80002a5c:	40b787b3          	sub	a5,a5,a1
    if (remainingBlocks >= 2){
    80002a60:	00100713          	li	a4,1
    80002a64:	04f76463          	bltu	a4,a5,80002aac <_ZN15MemoryAllocator6mallocEm+0xa0>
    if (current->prev != nullptr){
    80002a68:	01053783          	ld	a5,16(a0)
    80002a6c:	08078663          	beqz	a5,80002af8 <_ZN15MemoryAllocator6mallocEm+0xec>
        current->prev->next = current->next;
    80002a70:	00853703          	ld	a4,8(a0)
    80002a74:	00e7b423          	sd	a4,8(a5)
    if (current->next != nullptr){
    80002a78:	00853783          	ld	a5,8(a0)
    80002a7c:	00078663          	beqz	a5,80002a88 <_ZN15MemoryAllocator6mallocEm+0x7c>
        current->next->prev = current->prev;
    80002a80:	01053703          	ld	a4,16(a0)
    80002a84:	00e7b823          	sd	a4,16(a5)
    current->next = nullptr;
    80002a88:	00053423          	sd	zero,8(a0)
    current->prev = nullptr;
    80002a8c:	00053823          	sd	zero,16(a0)
    return (void*) ((char*) current +MEM_BLOCK_SIZE);
    80002a90:	04050513          	addi	a0,a0,64
}
    80002a94:	01813083          	ld	ra,24(sp)
    80002a98:	01013403          	ld	s0,16(sp)
    80002a9c:	00813483          	ld	s1,8(sp)
    80002aa0:	00013903          	ld	s2,0(sp)
    80002aa4:	02010113          	addi	sp,sp,32
    80002aa8:	00008067          	ret
        FreeBlock* newFree = (FreeBlock*) ((char*) current + neededBlocks * MEM_BLOCK_SIZE);
    80002aac:	00659713          	slli	a4,a1,0x6
    80002ab0:	00e50733          	add	a4,a0,a4
        newFree->size = remainingBlocks;
    80002ab4:	00f73023          	sd	a5,0(a4)
        newFree->next = current->next;
    80002ab8:	00853783          	ld	a5,8(a0)
    80002abc:	00f73423          	sd	a5,8(a4)
        newFree->prev = current->prev;
    80002ac0:	01053783          	ld	a5,16(a0)
    80002ac4:	00f73823          	sd	a5,16(a4)
        if (current->prev != nullptr){
    80002ac8:	02078463          	beqz	a5,80002af0 <_ZN15MemoryAllocator6mallocEm+0xe4>
            current->prev->next = newFree;
    80002acc:	00e7b423          	sd	a4,8(a5)
        if (current->next != nullptr){
    80002ad0:	00853783          	ld	a5,8(a0)
    80002ad4:	00078463          	beqz	a5,80002adc <_ZN15MemoryAllocator6mallocEm+0xd0>
            current->next->prev = newFree;
    80002ad8:	00e7b823          	sd	a4,16(a5)
        current->size = neededBlocks;
    80002adc:	00b53023          	sd	a1,0(a0)
        current->next = nullptr;
    80002ae0:	00053423          	sd	zero,8(a0)
        current->prev = nullptr;
    80002ae4:	00053823          	sd	zero,16(a0)
        return (void*) ((char*) current + MEM_BLOCK_SIZE);
    80002ae8:	04050513          	addi	a0,a0,64
    80002aec:	fa9ff06f          	j	80002a94 <_ZN15MemoryAllocator6mallocEm+0x88>
            freeHead = newFree;
    80002af0:	00e93023          	sd	a4,0(s2)
    80002af4:	fddff06f          	j	80002ad0 <_ZN15MemoryAllocator6mallocEm+0xc4>
        freeHead = current->next;
    80002af8:	00853783          	ld	a5,8(a0)
    80002afc:	00f93023          	sd	a5,0(s2)
    80002b00:	f79ff06f          	j	80002a78 <_ZN15MemoryAllocator6mallocEm+0x6c>
    if (numBlocks == 0) return nullptr;
    80002b04:	00000513          	li	a0,0
    80002b08:	f8dff06f          	j	80002a94 <_ZN15MemoryAllocator6mallocEm+0x88>

0000000080002b0c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>:
void MemoryAllocator::tryToJoin(FreeBlock *block) {
    80002b0c:	ff010113          	addi	sp,sp,-16
    80002b10:	00813423          	sd	s0,8(sp)
    80002b14:	01010413          	addi	s0,sp,16
    if (block == nullptr || block->next == nullptr) return;
    80002b18:	00058e63          	beqz	a1,80002b34 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    80002b1c:	0085b783          	ld	a5,8(a1)
    80002b20:	00078a63          	beqz	a5,80002b34 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    char* endOfBlock = (char*) block + block->size * MEM_BLOCK_SIZE;
    80002b24:	0005b683          	ld	a3,0(a1)
    80002b28:	00669713          	slli	a4,a3,0x6
    80002b2c:	00e58733          	add	a4,a1,a4
    if (endOfBlock == (char*) block->next){
    80002b30:	00e78863          	beq	a5,a4,80002b40 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x34>
    80002b34:	00813403          	ld	s0,8(sp)
    80002b38:	01010113          	addi	sp,sp,16
    80002b3c:	00008067          	ret
        block->size += nextBlock->size;
    80002b40:	0007b703          	ld	a4,0(a5)
    80002b44:	00e686b3          	add	a3,a3,a4
    80002b48:	00d5b023          	sd	a3,0(a1)
        block->next = nextBlock->next;
    80002b4c:	0087b703          	ld	a4,8(a5)
    80002b50:	00e5b423          	sd	a4,8(a1)
        if (block->next != nullptr){
    80002b54:	00070463          	beqz	a4,80002b5c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x50>
            block->next->prev = block;
    80002b58:	00b73823          	sd	a1,16(a4)
        nextBlock->next = nullptr;
    80002b5c:	0007b423          	sd	zero,8(a5)
        nextBlock->prev = nullptr;
    80002b60:	0007b823          	sd	zero,16(a5)
    80002b64:	fd1ff06f          	j	80002b34 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>

0000000080002b68 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void* ptr){
    80002b68:	fd010113          	addi	sp,sp,-48
    80002b6c:	02113423          	sd	ra,40(sp)
    80002b70:	02813023          	sd	s0,32(sp)
    80002b74:	00913c23          	sd	s1,24(sp)
    80002b78:	01213823          	sd	s2,16(sp)
    80002b7c:	01313423          	sd	s3,8(sp)
    80002b80:	03010413          	addi	s0,sp,48
    80002b84:	00050993          	mv	s3,a0
    80002b88:	00058913          	mv	s2,a1
    init();
    80002b8c:	00000097          	auipc	ra,0x0
    80002b90:	e20080e7          	jalr	-480(ra) # 800029ac <_ZN15MemoryAllocator4initEv>
    if (ptr == nullptr) return -1;
    80002b94:	0e090863          	beqz	s2,80002c84 <_ZN15MemoryAllocator4freeEPv+0x11c>
    uint64 heapStart = (uint64)HEAP_START_ADDR;
    80002b98:	00009797          	auipc	a5,0x9
    80002b9c:	d487b783          	ld	a5,-696(a5) # 8000b8e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002ba0:	0007b683          	ld	a3,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002ba4:	00009797          	auipc	a5,0x9
    80002ba8:	d5c7b783          	ld	a5,-676(a5) # 8000b900 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002bac:	0007b603          	ld	a2,0(a5)
    if (ptrAddr < heapStart + MEM_BLOCK_SIZE || ptrAddr >= heapEnd){
    80002bb0:	04068793          	addi	a5,a3,64
    80002bb4:	0cf96c63          	bltu	s2,a5,80002c8c <_ZN15MemoryAllocator4freeEPv+0x124>
    80002bb8:	0cc97e63          	bgeu	s2,a2,80002c94 <_ZN15MemoryAllocator4freeEPv+0x12c>
    if ((ptrAddr - heapStart) % MEM_BLOCK_SIZE != 0){
    80002bbc:	40d907b3          	sub	a5,s2,a3
    80002bc0:	03f7f793          	andi	a5,a5,63
    80002bc4:	0c079c63          	bnez	a5,80002c9c <_ZN15MemoryAllocator4freeEPv+0x134>
    FreeBlock* block = (FreeBlock*) ((char*) ptr - MEM_BLOCK_SIZE);
    80002bc8:	fc090593          	addi	a1,s2,-64
    if (block->size < 2){
    80002bcc:	fc093783          	ld	a5,-64(s2)
    80002bd0:	00100713          	li	a4,1
    80002bd4:	0cf77863          	bgeu	a4,a5,80002ca4 <_ZN15MemoryAllocator4freeEPv+0x13c>
    if ((uint64) block < heapStart){
    80002bd8:	00058713          	mv	a4,a1
    80002bdc:	0cd5e863          	bltu	a1,a3,80002cac <_ZN15MemoryAllocator4freeEPv+0x144>
    if ((uint64) block + block->size * MEM_BLOCK_SIZE > heapEnd){
    80002be0:	00679793          	slli	a5,a5,0x6
    80002be4:	00f586b3          	add	a3,a1,a5
    80002be8:	0cd66663          	bltu	a2,a3,80002cb4 <_ZN15MemoryAllocator4freeEPv+0x14c>
    FreeBlock* current = freeHead;
    80002bec:	0009b783          	ld	a5,0(s3)
    FreeBlock* prev = nullptr;
    80002bf0:	00000493          	li	s1,0
    while (current != nullptr && (uint64) current < (uint64) block){
    80002bf4:	00078a63          	beqz	a5,80002c08 <_ZN15MemoryAllocator4freeEPv+0xa0>
    80002bf8:	00e7f863          	bgeu	a5,a4,80002c08 <_ZN15MemoryAllocator4freeEPv+0xa0>
        prev = current;
    80002bfc:	00078493          	mv	s1,a5
        current = current->next;
    80002c00:	0087b783          	ld	a5,8(a5)
    while (current != nullptr && (uint64) current < (uint64) block){
    80002c04:	ff1ff06f          	j	80002bf4 <_ZN15MemoryAllocator4freeEPv+0x8c>
    if (prev != nullptr &&
    80002c08:	00048a63          	beqz	s1,80002c1c <_ZN15MemoryAllocator4freeEPv+0xb4>
        (uint64) prev + prev->size * MEM_BLOCK_SIZE > (uint64) block) {
    80002c0c:	0004b603          	ld	a2,0(s1)
    80002c10:	00661613          	slli	a2,a2,0x6
    80002c14:	00c48633          	add	a2,s1,a2
    if (prev != nullptr &&
    80002c18:	0ac76263          	bltu	a4,a2,80002cbc <_ZN15MemoryAllocator4freeEPv+0x154>
    if (current!= nullptr && (uint64)block + block->size * MEM_BLOCK_SIZE > (uint64) current){
    80002c1c:	00078463          	beqz	a5,80002c24 <_ZN15MemoryAllocator4freeEPv+0xbc>
    80002c20:	0ad7e263          	bltu	a5,a3,80002cc4 <_ZN15MemoryAllocator4freeEPv+0x15c>
    block->prev = prev;
    80002c24:	fc993823          	sd	s1,-48(s2)
    block->next = current;
    80002c28:	fcf93423          	sd	a5,-56(s2)
    if (prev != nullptr){
    80002c2c:	04048863          	beqz	s1,80002c7c <_ZN15MemoryAllocator4freeEPv+0x114>
        prev->next = block;
    80002c30:	00b4b423          	sd	a1,8(s1)
    if (current != nullptr){
    80002c34:	00078463          	beqz	a5,80002c3c <_ZN15MemoryAllocator4freeEPv+0xd4>
        current->prev = block;
    80002c38:	00b7b823          	sd	a1,16(a5)
    tryToJoin(block);
    80002c3c:	00098513          	mv	a0,s3
    80002c40:	00000097          	auipc	ra,0x0
    80002c44:	ecc080e7          	jalr	-308(ra) # 80002b0c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    if (prev != nullptr){
    80002c48:	08048263          	beqz	s1,80002ccc <_ZN15MemoryAllocator4freeEPv+0x164>
        tryToJoin(prev);
    80002c4c:	00048593          	mv	a1,s1
    80002c50:	00098513          	mv	a0,s3
    80002c54:	00000097          	auipc	ra,0x0
    80002c58:	eb8080e7          	jalr	-328(ra) # 80002b0c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    return 0;
    80002c5c:	00000513          	li	a0,0
}
    80002c60:	02813083          	ld	ra,40(sp)
    80002c64:	02013403          	ld	s0,32(sp)
    80002c68:	01813483          	ld	s1,24(sp)
    80002c6c:	01013903          	ld	s2,16(sp)
    80002c70:	00813983          	ld	s3,8(sp)
    80002c74:	03010113          	addi	sp,sp,48
    80002c78:	00008067          	ret
        freeHead = block;
    80002c7c:	00b9b023          	sd	a1,0(s3)
    80002c80:	fb5ff06f          	j	80002c34 <_ZN15MemoryAllocator4freeEPv+0xcc>
    if (ptr == nullptr) return -1;
    80002c84:	fff00513          	li	a0,-1
    80002c88:	fd9ff06f          	j	80002c60 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002c8c:	fff00513          	li	a0,-1
    80002c90:	fd1ff06f          	j	80002c60 <_ZN15MemoryAllocator4freeEPv+0xf8>
    80002c94:	fff00513          	li	a0,-1
    80002c98:	fc9ff06f          	j	80002c60 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002c9c:	fff00513          	li	a0,-1
    80002ca0:	fc1ff06f          	j	80002c60 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002ca4:	fff00513          	li	a0,-1
    80002ca8:	fb9ff06f          	j	80002c60 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002cac:	fff00513          	li	a0,-1
    80002cb0:	fb1ff06f          	j	80002c60 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002cb4:	fff00513          	li	a0,-1
    80002cb8:	fa9ff06f          	j	80002c60 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002cbc:	fff00513          	li	a0,-1
    80002cc0:	fa1ff06f          	j	80002c60 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002cc4:	fff00513          	li	a0,-1
    80002cc8:	f99ff06f          	j	80002c60 <_ZN15MemoryAllocator4freeEPv+0xf8>
    return 0;
    80002ccc:	00000513          	li	a0,0
    80002cd0:	f91ff06f          	j	80002c60 <_ZN15MemoryAllocator4freeEPv+0xf8>

0000000080002cd4 <_GLOBAL__sub_I__ZN15MemoryAllocatorC2Ev>:
    80002cd4:	ff010113          	addi	sp,sp,-16
    80002cd8:	00113423          	sd	ra,8(sp)
    80002cdc:	00813023          	sd	s0,0(sp)
    80002ce0:	01010413          	addi	s0,sp,16
    80002ce4:	000105b7          	lui	a1,0x10
    80002ce8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002cec:	00100513          	li	a0,1
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	c54080e7          	jalr	-940(ra) # 80002944 <_Z41__static_initialization_and_destruction_0ii>
    80002cf8:	00813083          	ld	ra,8(sp)
    80002cfc:	00013403          	ld	s0,0(sp)
    80002d00:	01010113          	addi	sp,sp,16
    80002d04:	00008067          	ret

0000000080002d08 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002d08:	fe010113          	addi	sp,sp,-32
    80002d0c:	00113c23          	sd	ra,24(sp)
    80002d10:	00813823          	sd	s0,16(sp)
    80002d14:	00913423          	sd	s1,8(sp)
    80002d18:	01213023          	sd	s2,0(sp)
    80002d1c:	02010413          	addi	s0,sp,32
    80002d20:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002d24:	00000913          	li	s2,0
    80002d28:	00c0006f          	j	80002d34 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002d2c:	ffffe097          	auipc	ra,0xffffe
    80002d30:	5fc080e7          	jalr	1532(ra) # 80001328 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002d34:	ffffe097          	auipc	ra,0xffffe
    80002d38:	7fc080e7          	jalr	2044(ra) # 80001530 <_Z4getcv>
    80002d3c:	0005059b          	sext.w	a1,a0
    80002d40:	01b00793          	li	a5,27
    80002d44:	02f58a63          	beq	a1,a5,80002d78 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002d48:	0084b503          	ld	a0,8(s1)
    80002d4c:	00003097          	auipc	ra,0x3
    80002d50:	2ac080e7          	jalr	684(ra) # 80005ff8 <_ZN6Buffer3putEi>
        i++;
    80002d54:	0019071b          	addiw	a4,s2,1
    80002d58:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002d5c:	0004a683          	lw	a3,0(s1)
    80002d60:	0026979b          	slliw	a5,a3,0x2
    80002d64:	00d787bb          	addw	a5,a5,a3
    80002d68:	0017979b          	slliw	a5,a5,0x1
    80002d6c:	02f767bb          	remw	a5,a4,a5
    80002d70:	fc0792e3          	bnez	a5,80002d34 <_ZL16producerKeyboardPv+0x2c>
    80002d74:	fb9ff06f          	j	80002d2c <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002d78:	00100793          	li	a5,1
    80002d7c:	00009717          	auipc	a4,0x9
    80002d80:	c0f72223          	sw	a5,-1020(a4) # 8000b980 <_ZL9threadEnd>
    data->buffer->put('!');
    80002d84:	02100593          	li	a1,33
    80002d88:	0084b503          	ld	a0,8(s1)
    80002d8c:	00003097          	auipc	ra,0x3
    80002d90:	26c080e7          	jalr	620(ra) # 80005ff8 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002d94:	0104b503          	ld	a0,16(s1)
    80002d98:	ffffe097          	auipc	ra,0xffffe
    80002d9c:	690080e7          	jalr	1680(ra) # 80001428 <_Z10sem_signalP4_sem>
}
    80002da0:	01813083          	ld	ra,24(sp)
    80002da4:	01013403          	ld	s0,16(sp)
    80002da8:	00813483          	ld	s1,8(sp)
    80002dac:	00013903          	ld	s2,0(sp)
    80002db0:	02010113          	addi	sp,sp,32
    80002db4:	00008067          	ret

0000000080002db8 <_ZL8producerPv>:

static void producer(void *arg) {
    80002db8:	fe010113          	addi	sp,sp,-32
    80002dbc:	00113c23          	sd	ra,24(sp)
    80002dc0:	00813823          	sd	s0,16(sp)
    80002dc4:	00913423          	sd	s1,8(sp)
    80002dc8:	01213023          	sd	s2,0(sp)
    80002dcc:	02010413          	addi	s0,sp,32
    80002dd0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002dd4:	00000913          	li	s2,0
    80002dd8:	00c0006f          	j	80002de4 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002ddc:	ffffe097          	auipc	ra,0xffffe
    80002de0:	54c080e7          	jalr	1356(ra) # 80001328 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002de4:	00009797          	auipc	a5,0x9
    80002de8:	b9c7a783          	lw	a5,-1124(a5) # 8000b980 <_ZL9threadEnd>
    80002dec:	02079e63          	bnez	a5,80002e28 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002df0:	0004a583          	lw	a1,0(s1)
    80002df4:	0305859b          	addiw	a1,a1,48
    80002df8:	0084b503          	ld	a0,8(s1)
    80002dfc:	00003097          	auipc	ra,0x3
    80002e00:	1fc080e7          	jalr	508(ra) # 80005ff8 <_ZN6Buffer3putEi>
        i++;
    80002e04:	0019071b          	addiw	a4,s2,1
    80002e08:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002e0c:	0004a683          	lw	a3,0(s1)
    80002e10:	0026979b          	slliw	a5,a3,0x2
    80002e14:	00d787bb          	addw	a5,a5,a3
    80002e18:	0017979b          	slliw	a5,a5,0x1
    80002e1c:	02f767bb          	remw	a5,a4,a5
    80002e20:	fc0792e3          	bnez	a5,80002de4 <_ZL8producerPv+0x2c>
    80002e24:	fb9ff06f          	j	80002ddc <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002e28:	0104b503          	ld	a0,16(s1)
    80002e2c:	ffffe097          	auipc	ra,0xffffe
    80002e30:	5fc080e7          	jalr	1532(ra) # 80001428 <_Z10sem_signalP4_sem>
}
    80002e34:	01813083          	ld	ra,24(sp)
    80002e38:	01013403          	ld	s0,16(sp)
    80002e3c:	00813483          	ld	s1,8(sp)
    80002e40:	00013903          	ld	s2,0(sp)
    80002e44:	02010113          	addi	sp,sp,32
    80002e48:	00008067          	ret

0000000080002e4c <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002e4c:	fd010113          	addi	sp,sp,-48
    80002e50:	02113423          	sd	ra,40(sp)
    80002e54:	02813023          	sd	s0,32(sp)
    80002e58:	00913c23          	sd	s1,24(sp)
    80002e5c:	01213823          	sd	s2,16(sp)
    80002e60:	01313423          	sd	s3,8(sp)
    80002e64:	03010413          	addi	s0,sp,48
    80002e68:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002e6c:	00000993          	li	s3,0
    80002e70:	01c0006f          	j	80002e8c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002e74:	ffffe097          	auipc	ra,0xffffe
    80002e78:	4b4080e7          	jalr	1204(ra) # 80001328 <_Z15thread_dispatchv>
    80002e7c:	0500006f          	j	80002ecc <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002e80:	00a00513          	li	a0,10
    80002e84:	ffffe097          	auipc	ra,0xffffe
    80002e88:	6ec080e7          	jalr	1772(ra) # 80001570 <_Z4putcc>
    while (!threadEnd) {
    80002e8c:	00009797          	auipc	a5,0x9
    80002e90:	af47a783          	lw	a5,-1292(a5) # 8000b980 <_ZL9threadEnd>
    80002e94:	06079063          	bnez	a5,80002ef4 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002e98:	00893503          	ld	a0,8(s2)
    80002e9c:	00003097          	auipc	ra,0x3
    80002ea0:	1ec080e7          	jalr	492(ra) # 80006088 <_ZN6Buffer3getEv>
        i++;
    80002ea4:	0019849b          	addiw	s1,s3,1
    80002ea8:	0004899b          	sext.w	s3,s1
        putc(key);
    80002eac:	0ff57513          	andi	a0,a0,255
    80002eb0:	ffffe097          	auipc	ra,0xffffe
    80002eb4:	6c0080e7          	jalr	1728(ra) # 80001570 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002eb8:	00092703          	lw	a4,0(s2)
    80002ebc:	0027179b          	slliw	a5,a4,0x2
    80002ec0:	00e787bb          	addw	a5,a5,a4
    80002ec4:	02f4e7bb          	remw	a5,s1,a5
    80002ec8:	fa0786e3          	beqz	a5,80002e74 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002ecc:	05000793          	li	a5,80
    80002ed0:	02f4e4bb          	remw	s1,s1,a5
    80002ed4:	fa049ce3          	bnez	s1,80002e8c <_ZL8consumerPv+0x40>
    80002ed8:	fa9ff06f          	j	80002e80 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002edc:	00893503          	ld	a0,8(s2)
    80002ee0:	00003097          	auipc	ra,0x3
    80002ee4:	1a8080e7          	jalr	424(ra) # 80006088 <_ZN6Buffer3getEv>
        putc(key);
    80002ee8:	0ff57513          	andi	a0,a0,255
    80002eec:	ffffe097          	auipc	ra,0xffffe
    80002ef0:	684080e7          	jalr	1668(ra) # 80001570 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002ef4:	00893503          	ld	a0,8(s2)
    80002ef8:	00003097          	auipc	ra,0x3
    80002efc:	21c080e7          	jalr	540(ra) # 80006114 <_ZN6Buffer6getCntEv>
    80002f00:	fca04ee3          	bgtz	a0,80002edc <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002f04:	01093503          	ld	a0,16(s2)
    80002f08:	ffffe097          	auipc	ra,0xffffe
    80002f0c:	520080e7          	jalr	1312(ra) # 80001428 <_Z10sem_signalP4_sem>
}
    80002f10:	02813083          	ld	ra,40(sp)
    80002f14:	02013403          	ld	s0,32(sp)
    80002f18:	01813483          	ld	s1,24(sp)
    80002f1c:	01013903          	ld	s2,16(sp)
    80002f20:	00813983          	ld	s3,8(sp)
    80002f24:	03010113          	addi	sp,sp,48
    80002f28:	00008067          	ret

0000000080002f2c <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002f2c:	f9010113          	addi	sp,sp,-112
    80002f30:	06113423          	sd	ra,104(sp)
    80002f34:	06813023          	sd	s0,96(sp)
    80002f38:	04913c23          	sd	s1,88(sp)
    80002f3c:	05213823          	sd	s2,80(sp)
    80002f40:	05313423          	sd	s3,72(sp)
    80002f44:	05413023          	sd	s4,64(sp)
    80002f48:	03513c23          	sd	s5,56(sp)
    80002f4c:	03613823          	sd	s6,48(sp)
    80002f50:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002f54:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002f58:	00006517          	auipc	a0,0x6
    80002f5c:	41050513          	addi	a0,a0,1040 # 80009368 <CONSOLE_STATUS+0x358>
    80002f60:	00002097          	auipc	ra,0x2
    80002f64:	220080e7          	jalr	544(ra) # 80005180 <_Z11printStringPKc>
    getString(input, 30);
    80002f68:	01e00593          	li	a1,30
    80002f6c:	fa040493          	addi	s1,s0,-96
    80002f70:	00048513          	mv	a0,s1
    80002f74:	00002097          	auipc	ra,0x2
    80002f78:	294080e7          	jalr	660(ra) # 80005208 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002f7c:	00048513          	mv	a0,s1
    80002f80:	00002097          	auipc	ra,0x2
    80002f84:	360080e7          	jalr	864(ra) # 800052e0 <_Z11stringToIntPKc>
    80002f88:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002f8c:	00006517          	auipc	a0,0x6
    80002f90:	3fc50513          	addi	a0,a0,1020 # 80009388 <CONSOLE_STATUS+0x378>
    80002f94:	00002097          	auipc	ra,0x2
    80002f98:	1ec080e7          	jalr	492(ra) # 80005180 <_Z11printStringPKc>
    getString(input, 30);
    80002f9c:	01e00593          	li	a1,30
    80002fa0:	00048513          	mv	a0,s1
    80002fa4:	00002097          	auipc	ra,0x2
    80002fa8:	264080e7          	jalr	612(ra) # 80005208 <_Z9getStringPci>
    n = stringToInt(input);
    80002fac:	00048513          	mv	a0,s1
    80002fb0:	00002097          	auipc	ra,0x2
    80002fb4:	330080e7          	jalr	816(ra) # 800052e0 <_Z11stringToIntPKc>
    80002fb8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002fbc:	00006517          	auipc	a0,0x6
    80002fc0:	3ec50513          	addi	a0,a0,1004 # 800093a8 <CONSOLE_STATUS+0x398>
    80002fc4:	00002097          	auipc	ra,0x2
    80002fc8:	1bc080e7          	jalr	444(ra) # 80005180 <_Z11printStringPKc>
    80002fcc:	00000613          	li	a2,0
    80002fd0:	00a00593          	li	a1,10
    80002fd4:	00090513          	mv	a0,s2
    80002fd8:	00002097          	auipc	ra,0x2
    80002fdc:	358080e7          	jalr	856(ra) # 80005330 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002fe0:	00006517          	auipc	a0,0x6
    80002fe4:	3e050513          	addi	a0,a0,992 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80002fe8:	00002097          	auipc	ra,0x2
    80002fec:	198080e7          	jalr	408(ra) # 80005180 <_Z11printStringPKc>
    80002ff0:	00000613          	li	a2,0
    80002ff4:	00a00593          	li	a1,10
    80002ff8:	00048513          	mv	a0,s1
    80002ffc:	00002097          	auipc	ra,0x2
    80003000:	334080e7          	jalr	820(ra) # 80005330 <_Z8printIntiii>
    printString(".\n");
    80003004:	00006517          	auipc	a0,0x6
    80003008:	3d450513          	addi	a0,a0,980 # 800093d8 <CONSOLE_STATUS+0x3c8>
    8000300c:	00002097          	auipc	ra,0x2
    80003010:	174080e7          	jalr	372(ra) # 80005180 <_Z11printStringPKc>
    if(threadNum > n) {
    80003014:	0324c463          	blt	s1,s2,8000303c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003018:	03205c63          	blez	s2,80003050 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    8000301c:	03800513          	li	a0,56
    80003020:	fffff097          	auipc	ra,0xfffff
    80003024:	384080e7          	jalr	900(ra) # 800023a4 <_Znwm>
    80003028:	00050a13          	mv	s4,a0
    8000302c:	00048593          	mv	a1,s1
    80003030:	00003097          	auipc	ra,0x3
    80003034:	f2c080e7          	jalr	-212(ra) # 80005f5c <_ZN6BufferC1Ei>
    80003038:	0300006f          	j	80003068 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000303c:	00006517          	auipc	a0,0x6
    80003040:	3a450513          	addi	a0,a0,932 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80003044:	00002097          	auipc	ra,0x2
    80003048:	13c080e7          	jalr	316(ra) # 80005180 <_Z11printStringPKc>
        return;
    8000304c:	0140006f          	j	80003060 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003050:	00006517          	auipc	a0,0x6
    80003054:	3d050513          	addi	a0,a0,976 # 80009420 <CONSOLE_STATUS+0x410>
    80003058:	00002097          	auipc	ra,0x2
    8000305c:	128080e7          	jalr	296(ra) # 80005180 <_Z11printStringPKc>
        return;
    80003060:	000b0113          	mv	sp,s6
    80003064:	1500006f          	j	800031b4 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003068:	00000593          	li	a1,0
    8000306c:	00009517          	auipc	a0,0x9
    80003070:	91c50513          	addi	a0,a0,-1764 # 8000b988 <_ZL10waitForAll>
    80003074:	ffffe097          	auipc	ra,0xffffe
    80003078:	2f0080e7          	jalr	752(ra) # 80001364 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    8000307c:	00391793          	slli	a5,s2,0x3
    80003080:	00f78793          	addi	a5,a5,15
    80003084:	ff07f793          	andi	a5,a5,-16
    80003088:	40f10133          	sub	sp,sp,a5
    8000308c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003090:	0019071b          	addiw	a4,s2,1
    80003094:	00171793          	slli	a5,a4,0x1
    80003098:	00e787b3          	add	a5,a5,a4
    8000309c:	00379793          	slli	a5,a5,0x3
    800030a0:	00f78793          	addi	a5,a5,15
    800030a4:	ff07f793          	andi	a5,a5,-16
    800030a8:	40f10133          	sub	sp,sp,a5
    800030ac:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800030b0:	00191613          	slli	a2,s2,0x1
    800030b4:	012607b3          	add	a5,a2,s2
    800030b8:	00379793          	slli	a5,a5,0x3
    800030bc:	00f987b3          	add	a5,s3,a5
    800030c0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800030c4:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800030c8:	00009717          	auipc	a4,0x9
    800030cc:	8c073703          	ld	a4,-1856(a4) # 8000b988 <_ZL10waitForAll>
    800030d0:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800030d4:	00078613          	mv	a2,a5
    800030d8:	00000597          	auipc	a1,0x0
    800030dc:	d7458593          	addi	a1,a1,-652 # 80002e4c <_ZL8consumerPv>
    800030e0:	f9840513          	addi	a0,s0,-104
    800030e4:	ffffe097          	auipc	ra,0xffffe
    800030e8:	140080e7          	jalr	320(ra) # 80001224 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800030ec:	00000493          	li	s1,0
    800030f0:	0280006f          	j	80003118 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800030f4:	00000597          	auipc	a1,0x0
    800030f8:	c1458593          	addi	a1,a1,-1004 # 80002d08 <_ZL16producerKeyboardPv>
                      data + i);
    800030fc:	00179613          	slli	a2,a5,0x1
    80003100:	00f60633          	add	a2,a2,a5
    80003104:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003108:	00c98633          	add	a2,s3,a2
    8000310c:	ffffe097          	auipc	ra,0xffffe
    80003110:	118080e7          	jalr	280(ra) # 80001224 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003114:	0014849b          	addiw	s1,s1,1
    80003118:	0524d263          	bge	s1,s2,8000315c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    8000311c:	00149793          	slli	a5,s1,0x1
    80003120:	009787b3          	add	a5,a5,s1
    80003124:	00379793          	slli	a5,a5,0x3
    80003128:	00f987b3          	add	a5,s3,a5
    8000312c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003130:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003134:	00009717          	auipc	a4,0x9
    80003138:	85473703          	ld	a4,-1964(a4) # 8000b988 <_ZL10waitForAll>
    8000313c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003140:	00048793          	mv	a5,s1
    80003144:	00349513          	slli	a0,s1,0x3
    80003148:	00aa8533          	add	a0,s5,a0
    8000314c:	fa9054e3          	blez	s1,800030f4 <_Z22producerConsumer_C_APIv+0x1c8>
    80003150:	00000597          	auipc	a1,0x0
    80003154:	c6858593          	addi	a1,a1,-920 # 80002db8 <_ZL8producerPv>
    80003158:	fa5ff06f          	j	800030fc <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    8000315c:	ffffe097          	auipc	ra,0xffffe
    80003160:	1cc080e7          	jalr	460(ra) # 80001328 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003164:	00000493          	li	s1,0
    80003168:	00994e63          	blt	s2,s1,80003184 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    8000316c:	00009517          	auipc	a0,0x9
    80003170:	81c53503          	ld	a0,-2020(a0) # 8000b988 <_ZL10waitForAll>
    80003174:	ffffe097          	auipc	ra,0xffffe
    80003178:	274080e7          	jalr	628(ra) # 800013e8 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    8000317c:	0014849b          	addiw	s1,s1,1
    80003180:	fe9ff06f          	j	80003168 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003184:	00009517          	auipc	a0,0x9
    80003188:	80453503          	ld	a0,-2044(a0) # 8000b988 <_ZL10waitForAll>
    8000318c:	ffffe097          	auipc	ra,0xffffe
    80003190:	21c080e7          	jalr	540(ra) # 800013a8 <_Z9sem_closeP4_sem>
    delete buffer;
    80003194:	000a0e63          	beqz	s4,800031b0 <_Z22producerConsumer_C_APIv+0x284>
    80003198:	000a0513          	mv	a0,s4
    8000319c:	00003097          	auipc	ra,0x3
    800031a0:	000080e7          	jalr	ra # 8000619c <_ZN6BufferD1Ev>
    800031a4:	000a0513          	mv	a0,s4
    800031a8:	fffff097          	auipc	ra,0xfffff
    800031ac:	24c080e7          	jalr	588(ra) # 800023f4 <_ZdlPv>
    800031b0:	000b0113          	mv	sp,s6

}
    800031b4:	f9040113          	addi	sp,s0,-112
    800031b8:	06813083          	ld	ra,104(sp)
    800031bc:	06013403          	ld	s0,96(sp)
    800031c0:	05813483          	ld	s1,88(sp)
    800031c4:	05013903          	ld	s2,80(sp)
    800031c8:	04813983          	ld	s3,72(sp)
    800031cc:	04013a03          	ld	s4,64(sp)
    800031d0:	03813a83          	ld	s5,56(sp)
    800031d4:	03013b03          	ld	s6,48(sp)
    800031d8:	07010113          	addi	sp,sp,112
    800031dc:	00008067          	ret
    800031e0:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800031e4:	000a0513          	mv	a0,s4
    800031e8:	fffff097          	auipc	ra,0xfffff
    800031ec:	20c080e7          	jalr	524(ra) # 800023f4 <_ZdlPv>
    800031f0:	00048513          	mv	a0,s1
    800031f4:	0000a097          	auipc	ra,0xa
    800031f8:	8a4080e7          	jalr	-1884(ra) # 8000ca98 <_Unwind_Resume>

00000000800031fc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800031fc:	fe010113          	addi	sp,sp,-32
    80003200:	00113c23          	sd	ra,24(sp)
    80003204:	00813823          	sd	s0,16(sp)
    80003208:	00913423          	sd	s1,8(sp)
    8000320c:	01213023          	sd	s2,0(sp)
    80003210:	02010413          	addi	s0,sp,32
    80003214:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003218:	00100793          	li	a5,1
    8000321c:	02a7f863          	bgeu	a5,a0,8000324c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003220:	00a00793          	li	a5,10
    80003224:	02f577b3          	remu	a5,a0,a5
    80003228:	02078e63          	beqz	a5,80003264 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000322c:	fff48513          	addi	a0,s1,-1
    80003230:	00000097          	auipc	ra,0x0
    80003234:	fcc080e7          	jalr	-52(ra) # 800031fc <_ZL9fibonaccim>
    80003238:	00050913          	mv	s2,a0
    8000323c:	ffe48513          	addi	a0,s1,-2
    80003240:	00000097          	auipc	ra,0x0
    80003244:	fbc080e7          	jalr	-68(ra) # 800031fc <_ZL9fibonaccim>
    80003248:	00a90533          	add	a0,s2,a0
}
    8000324c:	01813083          	ld	ra,24(sp)
    80003250:	01013403          	ld	s0,16(sp)
    80003254:	00813483          	ld	s1,8(sp)
    80003258:	00013903          	ld	s2,0(sp)
    8000325c:	02010113          	addi	sp,sp,32
    80003260:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003264:	ffffe097          	auipc	ra,0xffffe
    80003268:	0c4080e7          	jalr	196(ra) # 80001328 <_Z15thread_dispatchv>
    8000326c:	fc1ff06f          	j	8000322c <_ZL9fibonaccim+0x30>

0000000080003270 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003270:	fe010113          	addi	sp,sp,-32
    80003274:	00113c23          	sd	ra,24(sp)
    80003278:	00813823          	sd	s0,16(sp)
    8000327c:	00913423          	sd	s1,8(sp)
    80003280:	01213023          	sd	s2,0(sp)
    80003284:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003288:	00000913          	li	s2,0
    8000328c:	0380006f          	j	800032c4 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003290:	ffffe097          	auipc	ra,0xffffe
    80003294:	098080e7          	jalr	152(ra) # 80001328 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003298:	00148493          	addi	s1,s1,1
    8000329c:	000027b7          	lui	a5,0x2
    800032a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800032a4:	0097ee63          	bltu	a5,s1,800032c0 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800032a8:	00000713          	li	a4,0
    800032ac:	000077b7          	lui	a5,0x7
    800032b0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800032b4:	fce7eee3          	bltu	a5,a4,80003290 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800032b8:	00170713          	addi	a4,a4,1
    800032bc:	ff1ff06f          	j	800032ac <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800032c0:	00190913          	addi	s2,s2,1
    800032c4:	00900793          	li	a5,9
    800032c8:	0527e063          	bltu	a5,s2,80003308 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800032cc:	00006517          	auipc	a0,0x6
    800032d0:	18450513          	addi	a0,a0,388 # 80009450 <CONSOLE_STATUS+0x440>
    800032d4:	00002097          	auipc	ra,0x2
    800032d8:	eac080e7          	jalr	-340(ra) # 80005180 <_Z11printStringPKc>
    800032dc:	00000613          	li	a2,0
    800032e0:	00a00593          	li	a1,10
    800032e4:	0009051b          	sext.w	a0,s2
    800032e8:	00002097          	auipc	ra,0x2
    800032ec:	048080e7          	jalr	72(ra) # 80005330 <_Z8printIntiii>
    800032f0:	00006517          	auipc	a0,0x6
    800032f4:	fb050513          	addi	a0,a0,-80 # 800092a0 <CONSOLE_STATUS+0x290>
    800032f8:	00002097          	auipc	ra,0x2
    800032fc:	e88080e7          	jalr	-376(ra) # 80005180 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003300:	00000493          	li	s1,0
    80003304:	f99ff06f          	j	8000329c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003308:	00006517          	auipc	a0,0x6
    8000330c:	15050513          	addi	a0,a0,336 # 80009458 <CONSOLE_STATUS+0x448>
    80003310:	00002097          	auipc	ra,0x2
    80003314:	e70080e7          	jalr	-400(ra) # 80005180 <_Z11printStringPKc>
    finishedA = true;
    80003318:	00100793          	li	a5,1
    8000331c:	00008717          	auipc	a4,0x8
    80003320:	66f70a23          	sb	a5,1652(a4) # 8000b990 <_ZL9finishedA>
}
    80003324:	01813083          	ld	ra,24(sp)
    80003328:	01013403          	ld	s0,16(sp)
    8000332c:	00813483          	ld	s1,8(sp)
    80003330:	00013903          	ld	s2,0(sp)
    80003334:	02010113          	addi	sp,sp,32
    80003338:	00008067          	ret

000000008000333c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    8000333c:	fe010113          	addi	sp,sp,-32
    80003340:	00113c23          	sd	ra,24(sp)
    80003344:	00813823          	sd	s0,16(sp)
    80003348:	00913423          	sd	s1,8(sp)
    8000334c:	01213023          	sd	s2,0(sp)
    80003350:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003354:	00000913          	li	s2,0
    80003358:	0380006f          	j	80003390 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000335c:	ffffe097          	auipc	ra,0xffffe
    80003360:	fcc080e7          	jalr	-52(ra) # 80001328 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003364:	00148493          	addi	s1,s1,1
    80003368:	000027b7          	lui	a5,0x2
    8000336c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003370:	0097ee63          	bltu	a5,s1,8000338c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003374:	00000713          	li	a4,0
    80003378:	000077b7          	lui	a5,0x7
    8000337c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003380:	fce7eee3          	bltu	a5,a4,8000335c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003384:	00170713          	addi	a4,a4,1
    80003388:	ff1ff06f          	j	80003378 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000338c:	00190913          	addi	s2,s2,1
    80003390:	00f00793          	li	a5,15
    80003394:	0527e063          	bltu	a5,s2,800033d4 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003398:	00006517          	auipc	a0,0x6
    8000339c:	0d050513          	addi	a0,a0,208 # 80009468 <CONSOLE_STATUS+0x458>
    800033a0:	00002097          	auipc	ra,0x2
    800033a4:	de0080e7          	jalr	-544(ra) # 80005180 <_Z11printStringPKc>
    800033a8:	00000613          	li	a2,0
    800033ac:	00a00593          	li	a1,10
    800033b0:	0009051b          	sext.w	a0,s2
    800033b4:	00002097          	auipc	ra,0x2
    800033b8:	f7c080e7          	jalr	-132(ra) # 80005330 <_Z8printIntiii>
    800033bc:	00006517          	auipc	a0,0x6
    800033c0:	ee450513          	addi	a0,a0,-284 # 800092a0 <CONSOLE_STATUS+0x290>
    800033c4:	00002097          	auipc	ra,0x2
    800033c8:	dbc080e7          	jalr	-580(ra) # 80005180 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800033cc:	00000493          	li	s1,0
    800033d0:	f99ff06f          	j	80003368 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800033d4:	00006517          	auipc	a0,0x6
    800033d8:	09c50513          	addi	a0,a0,156 # 80009470 <CONSOLE_STATUS+0x460>
    800033dc:	00002097          	auipc	ra,0x2
    800033e0:	da4080e7          	jalr	-604(ra) # 80005180 <_Z11printStringPKc>
    finishedB = true;
    800033e4:	00100793          	li	a5,1
    800033e8:	00008717          	auipc	a4,0x8
    800033ec:	5af704a3          	sb	a5,1449(a4) # 8000b991 <_ZL9finishedB>
    thread_dispatch();
    800033f0:	ffffe097          	auipc	ra,0xffffe
    800033f4:	f38080e7          	jalr	-200(ra) # 80001328 <_Z15thread_dispatchv>
}
    800033f8:	01813083          	ld	ra,24(sp)
    800033fc:	01013403          	ld	s0,16(sp)
    80003400:	00813483          	ld	s1,8(sp)
    80003404:	00013903          	ld	s2,0(sp)
    80003408:	02010113          	addi	sp,sp,32
    8000340c:	00008067          	ret

0000000080003410 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003410:	fe010113          	addi	sp,sp,-32
    80003414:	00113c23          	sd	ra,24(sp)
    80003418:	00813823          	sd	s0,16(sp)
    8000341c:	00913423          	sd	s1,8(sp)
    80003420:	01213023          	sd	s2,0(sp)
    80003424:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003428:	00000493          	li	s1,0
    8000342c:	0400006f          	j	8000346c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003430:	00006517          	auipc	a0,0x6
    80003434:	05050513          	addi	a0,a0,80 # 80009480 <CONSOLE_STATUS+0x470>
    80003438:	00002097          	auipc	ra,0x2
    8000343c:	d48080e7          	jalr	-696(ra) # 80005180 <_Z11printStringPKc>
    80003440:	00000613          	li	a2,0
    80003444:	00a00593          	li	a1,10
    80003448:	00048513          	mv	a0,s1
    8000344c:	00002097          	auipc	ra,0x2
    80003450:	ee4080e7          	jalr	-284(ra) # 80005330 <_Z8printIntiii>
    80003454:	00006517          	auipc	a0,0x6
    80003458:	e4c50513          	addi	a0,a0,-436 # 800092a0 <CONSOLE_STATUS+0x290>
    8000345c:	00002097          	auipc	ra,0x2
    80003460:	d24080e7          	jalr	-732(ra) # 80005180 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003464:	0014849b          	addiw	s1,s1,1
    80003468:	0ff4f493          	andi	s1,s1,255
    8000346c:	00200793          	li	a5,2
    80003470:	fc97f0e3          	bgeu	a5,s1,80003430 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003474:	00006517          	auipc	a0,0x6
    80003478:	01450513          	addi	a0,a0,20 # 80009488 <CONSOLE_STATUS+0x478>
    8000347c:	00002097          	auipc	ra,0x2
    80003480:	d04080e7          	jalr	-764(ra) # 80005180 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003484:	00700313          	li	t1,7
    thread_dispatch();
    80003488:	ffffe097          	auipc	ra,0xffffe
    8000348c:	ea0080e7          	jalr	-352(ra) # 80001328 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003490:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003494:	00006517          	auipc	a0,0x6
    80003498:	00450513          	addi	a0,a0,4 # 80009498 <CONSOLE_STATUS+0x488>
    8000349c:	00002097          	auipc	ra,0x2
    800034a0:	ce4080e7          	jalr	-796(ra) # 80005180 <_Z11printStringPKc>
    800034a4:	00000613          	li	a2,0
    800034a8:	00a00593          	li	a1,10
    800034ac:	0009051b          	sext.w	a0,s2
    800034b0:	00002097          	auipc	ra,0x2
    800034b4:	e80080e7          	jalr	-384(ra) # 80005330 <_Z8printIntiii>
    800034b8:	00006517          	auipc	a0,0x6
    800034bc:	de850513          	addi	a0,a0,-536 # 800092a0 <CONSOLE_STATUS+0x290>
    800034c0:	00002097          	auipc	ra,0x2
    800034c4:	cc0080e7          	jalr	-832(ra) # 80005180 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800034c8:	00c00513          	li	a0,12
    800034cc:	00000097          	auipc	ra,0x0
    800034d0:	d30080e7          	jalr	-720(ra) # 800031fc <_ZL9fibonaccim>
    800034d4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800034d8:	00006517          	auipc	a0,0x6
    800034dc:	fc850513          	addi	a0,a0,-56 # 800094a0 <CONSOLE_STATUS+0x490>
    800034e0:	00002097          	auipc	ra,0x2
    800034e4:	ca0080e7          	jalr	-864(ra) # 80005180 <_Z11printStringPKc>
    800034e8:	00000613          	li	a2,0
    800034ec:	00a00593          	li	a1,10
    800034f0:	0009051b          	sext.w	a0,s2
    800034f4:	00002097          	auipc	ra,0x2
    800034f8:	e3c080e7          	jalr	-452(ra) # 80005330 <_Z8printIntiii>
    800034fc:	00006517          	auipc	a0,0x6
    80003500:	da450513          	addi	a0,a0,-604 # 800092a0 <CONSOLE_STATUS+0x290>
    80003504:	00002097          	auipc	ra,0x2
    80003508:	c7c080e7          	jalr	-900(ra) # 80005180 <_Z11printStringPKc>
    8000350c:	0400006f          	j	8000354c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003510:	00006517          	auipc	a0,0x6
    80003514:	f7050513          	addi	a0,a0,-144 # 80009480 <CONSOLE_STATUS+0x470>
    80003518:	00002097          	auipc	ra,0x2
    8000351c:	c68080e7          	jalr	-920(ra) # 80005180 <_Z11printStringPKc>
    80003520:	00000613          	li	a2,0
    80003524:	00a00593          	li	a1,10
    80003528:	00048513          	mv	a0,s1
    8000352c:	00002097          	auipc	ra,0x2
    80003530:	e04080e7          	jalr	-508(ra) # 80005330 <_Z8printIntiii>
    80003534:	00006517          	auipc	a0,0x6
    80003538:	d6c50513          	addi	a0,a0,-660 # 800092a0 <CONSOLE_STATUS+0x290>
    8000353c:	00002097          	auipc	ra,0x2
    80003540:	c44080e7          	jalr	-956(ra) # 80005180 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003544:	0014849b          	addiw	s1,s1,1
    80003548:	0ff4f493          	andi	s1,s1,255
    8000354c:	00500793          	li	a5,5
    80003550:	fc97f0e3          	bgeu	a5,s1,80003510 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003554:	00006517          	auipc	a0,0x6
    80003558:	f0450513          	addi	a0,a0,-252 # 80009458 <CONSOLE_STATUS+0x448>
    8000355c:	00002097          	auipc	ra,0x2
    80003560:	c24080e7          	jalr	-988(ra) # 80005180 <_Z11printStringPKc>
    finishedC = true;
    80003564:	00100793          	li	a5,1
    80003568:	00008717          	auipc	a4,0x8
    8000356c:	42f70523          	sb	a5,1066(a4) # 8000b992 <_ZL9finishedC>
    thread_dispatch();
    80003570:	ffffe097          	auipc	ra,0xffffe
    80003574:	db8080e7          	jalr	-584(ra) # 80001328 <_Z15thread_dispatchv>
}
    80003578:	01813083          	ld	ra,24(sp)
    8000357c:	01013403          	ld	s0,16(sp)
    80003580:	00813483          	ld	s1,8(sp)
    80003584:	00013903          	ld	s2,0(sp)
    80003588:	02010113          	addi	sp,sp,32
    8000358c:	00008067          	ret

0000000080003590 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003590:	fe010113          	addi	sp,sp,-32
    80003594:	00113c23          	sd	ra,24(sp)
    80003598:	00813823          	sd	s0,16(sp)
    8000359c:	00913423          	sd	s1,8(sp)
    800035a0:	01213023          	sd	s2,0(sp)
    800035a4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800035a8:	00a00493          	li	s1,10
    800035ac:	0400006f          	j	800035ec <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800035b0:	00006517          	auipc	a0,0x6
    800035b4:	f0050513          	addi	a0,a0,-256 # 800094b0 <CONSOLE_STATUS+0x4a0>
    800035b8:	00002097          	auipc	ra,0x2
    800035bc:	bc8080e7          	jalr	-1080(ra) # 80005180 <_Z11printStringPKc>
    800035c0:	00000613          	li	a2,0
    800035c4:	00a00593          	li	a1,10
    800035c8:	00048513          	mv	a0,s1
    800035cc:	00002097          	auipc	ra,0x2
    800035d0:	d64080e7          	jalr	-668(ra) # 80005330 <_Z8printIntiii>
    800035d4:	00006517          	auipc	a0,0x6
    800035d8:	ccc50513          	addi	a0,a0,-820 # 800092a0 <CONSOLE_STATUS+0x290>
    800035dc:	00002097          	auipc	ra,0x2
    800035e0:	ba4080e7          	jalr	-1116(ra) # 80005180 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800035e4:	0014849b          	addiw	s1,s1,1
    800035e8:	0ff4f493          	andi	s1,s1,255
    800035ec:	00c00793          	li	a5,12
    800035f0:	fc97f0e3          	bgeu	a5,s1,800035b0 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800035f4:	00006517          	auipc	a0,0x6
    800035f8:	ec450513          	addi	a0,a0,-316 # 800094b8 <CONSOLE_STATUS+0x4a8>
    800035fc:	00002097          	auipc	ra,0x2
    80003600:	b84080e7          	jalr	-1148(ra) # 80005180 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003604:	00500313          	li	t1,5
    thread_dispatch();
    80003608:	ffffe097          	auipc	ra,0xffffe
    8000360c:	d20080e7          	jalr	-736(ra) # 80001328 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003610:	01000513          	li	a0,16
    80003614:	00000097          	auipc	ra,0x0
    80003618:	be8080e7          	jalr	-1048(ra) # 800031fc <_ZL9fibonaccim>
    8000361c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003620:	00006517          	auipc	a0,0x6
    80003624:	ea850513          	addi	a0,a0,-344 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80003628:	00002097          	auipc	ra,0x2
    8000362c:	b58080e7          	jalr	-1192(ra) # 80005180 <_Z11printStringPKc>
    80003630:	00000613          	li	a2,0
    80003634:	00a00593          	li	a1,10
    80003638:	0009051b          	sext.w	a0,s2
    8000363c:	00002097          	auipc	ra,0x2
    80003640:	cf4080e7          	jalr	-780(ra) # 80005330 <_Z8printIntiii>
    80003644:	00006517          	auipc	a0,0x6
    80003648:	c5c50513          	addi	a0,a0,-932 # 800092a0 <CONSOLE_STATUS+0x290>
    8000364c:	00002097          	auipc	ra,0x2
    80003650:	b34080e7          	jalr	-1228(ra) # 80005180 <_Z11printStringPKc>
    80003654:	0400006f          	j	80003694 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003658:	00006517          	auipc	a0,0x6
    8000365c:	e5850513          	addi	a0,a0,-424 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80003660:	00002097          	auipc	ra,0x2
    80003664:	b20080e7          	jalr	-1248(ra) # 80005180 <_Z11printStringPKc>
    80003668:	00000613          	li	a2,0
    8000366c:	00a00593          	li	a1,10
    80003670:	00048513          	mv	a0,s1
    80003674:	00002097          	auipc	ra,0x2
    80003678:	cbc080e7          	jalr	-836(ra) # 80005330 <_Z8printIntiii>
    8000367c:	00006517          	auipc	a0,0x6
    80003680:	c2450513          	addi	a0,a0,-988 # 800092a0 <CONSOLE_STATUS+0x290>
    80003684:	00002097          	auipc	ra,0x2
    80003688:	afc080e7          	jalr	-1284(ra) # 80005180 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000368c:	0014849b          	addiw	s1,s1,1
    80003690:	0ff4f493          	andi	s1,s1,255
    80003694:	00f00793          	li	a5,15
    80003698:	fc97f0e3          	bgeu	a5,s1,80003658 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000369c:	00006517          	auipc	a0,0x6
    800036a0:	e3c50513          	addi	a0,a0,-452 # 800094d8 <CONSOLE_STATUS+0x4c8>
    800036a4:	00002097          	auipc	ra,0x2
    800036a8:	adc080e7          	jalr	-1316(ra) # 80005180 <_Z11printStringPKc>
    finishedD = true;
    800036ac:	00100793          	li	a5,1
    800036b0:	00008717          	auipc	a4,0x8
    800036b4:	2ef701a3          	sb	a5,739(a4) # 8000b993 <_ZL9finishedD>
    thread_dispatch();
    800036b8:	ffffe097          	auipc	ra,0xffffe
    800036bc:	c70080e7          	jalr	-912(ra) # 80001328 <_Z15thread_dispatchv>
}
    800036c0:	01813083          	ld	ra,24(sp)
    800036c4:	01013403          	ld	s0,16(sp)
    800036c8:	00813483          	ld	s1,8(sp)
    800036cc:	00013903          	ld	s2,0(sp)
    800036d0:	02010113          	addi	sp,sp,32
    800036d4:	00008067          	ret

00000000800036d8 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800036d8:	fc010113          	addi	sp,sp,-64
    800036dc:	02113c23          	sd	ra,56(sp)
    800036e0:	02813823          	sd	s0,48(sp)
    800036e4:	02913423          	sd	s1,40(sp)
    800036e8:	03213023          	sd	s2,32(sp)
    800036ec:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800036f0:	02000513          	li	a0,32
    800036f4:	fffff097          	auipc	ra,0xfffff
    800036f8:	cb0080e7          	jalr	-848(ra) # 800023a4 <_Znwm>
    800036fc:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003700:	fffff097          	auipc	ra,0xfffff
    80003704:	f7c080e7          	jalr	-132(ra) # 8000267c <_ZN6ThreadC1Ev>
    80003708:	00008797          	auipc	a5,0x8
    8000370c:	03878793          	addi	a5,a5,56 # 8000b740 <_ZTV7WorkerA+0x10>
    80003710:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003714:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003718:	00006517          	auipc	a0,0x6
    8000371c:	dd050513          	addi	a0,a0,-560 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80003720:	00002097          	auipc	ra,0x2
    80003724:	a60080e7          	jalr	-1440(ra) # 80005180 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003728:	02000513          	li	a0,32
    8000372c:	fffff097          	auipc	ra,0xfffff
    80003730:	c78080e7          	jalr	-904(ra) # 800023a4 <_Znwm>
    80003734:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003738:	fffff097          	auipc	ra,0xfffff
    8000373c:	f44080e7          	jalr	-188(ra) # 8000267c <_ZN6ThreadC1Ev>
    80003740:	00008797          	auipc	a5,0x8
    80003744:	02878793          	addi	a5,a5,40 # 8000b768 <_ZTV7WorkerB+0x10>
    80003748:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8000374c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003750:	00006517          	auipc	a0,0x6
    80003754:	db050513          	addi	a0,a0,-592 # 80009500 <CONSOLE_STATUS+0x4f0>
    80003758:	00002097          	auipc	ra,0x2
    8000375c:	a28080e7          	jalr	-1496(ra) # 80005180 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003760:	02000513          	li	a0,32
    80003764:	fffff097          	auipc	ra,0xfffff
    80003768:	c40080e7          	jalr	-960(ra) # 800023a4 <_Znwm>
    8000376c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003770:	fffff097          	auipc	ra,0xfffff
    80003774:	f0c080e7          	jalr	-244(ra) # 8000267c <_ZN6ThreadC1Ev>
    80003778:	00008797          	auipc	a5,0x8
    8000377c:	01878793          	addi	a5,a5,24 # 8000b790 <_ZTV7WorkerC+0x10>
    80003780:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003784:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003788:	00006517          	auipc	a0,0x6
    8000378c:	d9050513          	addi	a0,a0,-624 # 80009518 <CONSOLE_STATUS+0x508>
    80003790:	00002097          	auipc	ra,0x2
    80003794:	9f0080e7          	jalr	-1552(ra) # 80005180 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003798:	02000513          	li	a0,32
    8000379c:	fffff097          	auipc	ra,0xfffff
    800037a0:	c08080e7          	jalr	-1016(ra) # 800023a4 <_Znwm>
    800037a4:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800037a8:	fffff097          	auipc	ra,0xfffff
    800037ac:	ed4080e7          	jalr	-300(ra) # 8000267c <_ZN6ThreadC1Ev>
    800037b0:	00008797          	auipc	a5,0x8
    800037b4:	00878793          	addi	a5,a5,8 # 8000b7b8 <_ZTV7WorkerD+0x10>
    800037b8:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800037bc:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800037c0:	00006517          	auipc	a0,0x6
    800037c4:	d7050513          	addi	a0,a0,-656 # 80009530 <CONSOLE_STATUS+0x520>
    800037c8:	00002097          	auipc	ra,0x2
    800037cc:	9b8080e7          	jalr	-1608(ra) # 80005180 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800037d0:	00000493          	li	s1,0
    800037d4:	00300793          	li	a5,3
    800037d8:	0297c663          	blt	a5,s1,80003804 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800037dc:	00349793          	slli	a5,s1,0x3
    800037e0:	fe040713          	addi	a4,s0,-32
    800037e4:	00f707b3          	add	a5,a4,a5
    800037e8:	fe07b503          	ld	a0,-32(a5)
    800037ec:	fffff097          	auipc	ra,0xfffff
    800037f0:	ec0080e7          	jalr	-320(ra) # 800026ac <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800037f4:	0014849b          	addiw	s1,s1,1
    800037f8:	fddff06f          	j	800037d4 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800037fc:	fffff097          	auipc	ra,0xfffff
    80003800:	f04080e7          	jalr	-252(ra) # 80002700 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003804:	00008797          	auipc	a5,0x8
    80003808:	18c7c783          	lbu	a5,396(a5) # 8000b990 <_ZL9finishedA>
    8000380c:	fe0788e3          	beqz	a5,800037fc <_Z20Threads_CPP_API_testv+0x124>
    80003810:	00008797          	auipc	a5,0x8
    80003814:	1817c783          	lbu	a5,385(a5) # 8000b991 <_ZL9finishedB>
    80003818:	fe0782e3          	beqz	a5,800037fc <_Z20Threads_CPP_API_testv+0x124>
    8000381c:	00008797          	auipc	a5,0x8
    80003820:	1767c783          	lbu	a5,374(a5) # 8000b992 <_ZL9finishedC>
    80003824:	fc078ce3          	beqz	a5,800037fc <_Z20Threads_CPP_API_testv+0x124>
    80003828:	00008797          	auipc	a5,0x8
    8000382c:	16b7c783          	lbu	a5,363(a5) # 8000b993 <_ZL9finishedD>
    80003830:	fc0786e3          	beqz	a5,800037fc <_Z20Threads_CPP_API_testv+0x124>
    80003834:	fc040493          	addi	s1,s0,-64
    80003838:	0080006f          	j	80003840 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    8000383c:	00848493          	addi	s1,s1,8
    80003840:	fe040793          	addi	a5,s0,-32
    80003844:	08f48663          	beq	s1,a5,800038d0 <_Z20Threads_CPP_API_testv+0x1f8>
    80003848:	0004b503          	ld	a0,0(s1)
    8000384c:	fe0508e3          	beqz	a0,8000383c <_Z20Threads_CPP_API_testv+0x164>
    80003850:	00053783          	ld	a5,0(a0)
    80003854:	0087b783          	ld	a5,8(a5)
    80003858:	000780e7          	jalr	a5
    8000385c:	fe1ff06f          	j	8000383c <_Z20Threads_CPP_API_testv+0x164>
    80003860:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003864:	00048513          	mv	a0,s1
    80003868:	fffff097          	auipc	ra,0xfffff
    8000386c:	b8c080e7          	jalr	-1140(ra) # 800023f4 <_ZdlPv>
    80003870:	00090513          	mv	a0,s2
    80003874:	00009097          	auipc	ra,0x9
    80003878:	224080e7          	jalr	548(ra) # 8000ca98 <_Unwind_Resume>
    8000387c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003880:	00048513          	mv	a0,s1
    80003884:	fffff097          	auipc	ra,0xfffff
    80003888:	b70080e7          	jalr	-1168(ra) # 800023f4 <_ZdlPv>
    8000388c:	00090513          	mv	a0,s2
    80003890:	00009097          	auipc	ra,0x9
    80003894:	208080e7          	jalr	520(ra) # 8000ca98 <_Unwind_Resume>
    80003898:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000389c:	00048513          	mv	a0,s1
    800038a0:	fffff097          	auipc	ra,0xfffff
    800038a4:	b54080e7          	jalr	-1196(ra) # 800023f4 <_ZdlPv>
    800038a8:	00090513          	mv	a0,s2
    800038ac:	00009097          	auipc	ra,0x9
    800038b0:	1ec080e7          	jalr	492(ra) # 8000ca98 <_Unwind_Resume>
    800038b4:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800038b8:	00048513          	mv	a0,s1
    800038bc:	fffff097          	auipc	ra,0xfffff
    800038c0:	b38080e7          	jalr	-1224(ra) # 800023f4 <_ZdlPv>
    800038c4:	00090513          	mv	a0,s2
    800038c8:	00009097          	auipc	ra,0x9
    800038cc:	1d0080e7          	jalr	464(ra) # 8000ca98 <_Unwind_Resume>
}
    800038d0:	03813083          	ld	ra,56(sp)
    800038d4:	03013403          	ld	s0,48(sp)
    800038d8:	02813483          	ld	s1,40(sp)
    800038dc:	02013903          	ld	s2,32(sp)
    800038e0:	04010113          	addi	sp,sp,64
    800038e4:	00008067          	ret

00000000800038e8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800038e8:	ff010113          	addi	sp,sp,-16
    800038ec:	00113423          	sd	ra,8(sp)
    800038f0:	00813023          	sd	s0,0(sp)
    800038f4:	01010413          	addi	s0,sp,16
    800038f8:	00008797          	auipc	a5,0x8
    800038fc:	e4878793          	addi	a5,a5,-440 # 8000b740 <_ZTV7WorkerA+0x10>
    80003900:	00f53023          	sd	a5,0(a0)
    80003904:	fffff097          	auipc	ra,0xfffff
    80003908:	c54080e7          	jalr	-940(ra) # 80002558 <_ZN6ThreadD1Ev>
    8000390c:	00813083          	ld	ra,8(sp)
    80003910:	00013403          	ld	s0,0(sp)
    80003914:	01010113          	addi	sp,sp,16
    80003918:	00008067          	ret

000000008000391c <_ZN7WorkerAD0Ev>:
    8000391c:	fe010113          	addi	sp,sp,-32
    80003920:	00113c23          	sd	ra,24(sp)
    80003924:	00813823          	sd	s0,16(sp)
    80003928:	00913423          	sd	s1,8(sp)
    8000392c:	02010413          	addi	s0,sp,32
    80003930:	00050493          	mv	s1,a0
    80003934:	00008797          	auipc	a5,0x8
    80003938:	e0c78793          	addi	a5,a5,-500 # 8000b740 <_ZTV7WorkerA+0x10>
    8000393c:	00f53023          	sd	a5,0(a0)
    80003940:	fffff097          	auipc	ra,0xfffff
    80003944:	c18080e7          	jalr	-1000(ra) # 80002558 <_ZN6ThreadD1Ev>
    80003948:	00048513          	mv	a0,s1
    8000394c:	fffff097          	auipc	ra,0xfffff
    80003950:	aa8080e7          	jalr	-1368(ra) # 800023f4 <_ZdlPv>
    80003954:	01813083          	ld	ra,24(sp)
    80003958:	01013403          	ld	s0,16(sp)
    8000395c:	00813483          	ld	s1,8(sp)
    80003960:	02010113          	addi	sp,sp,32
    80003964:	00008067          	ret

0000000080003968 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003968:	ff010113          	addi	sp,sp,-16
    8000396c:	00113423          	sd	ra,8(sp)
    80003970:	00813023          	sd	s0,0(sp)
    80003974:	01010413          	addi	s0,sp,16
    80003978:	00008797          	auipc	a5,0x8
    8000397c:	df078793          	addi	a5,a5,-528 # 8000b768 <_ZTV7WorkerB+0x10>
    80003980:	00f53023          	sd	a5,0(a0)
    80003984:	fffff097          	auipc	ra,0xfffff
    80003988:	bd4080e7          	jalr	-1068(ra) # 80002558 <_ZN6ThreadD1Ev>
    8000398c:	00813083          	ld	ra,8(sp)
    80003990:	00013403          	ld	s0,0(sp)
    80003994:	01010113          	addi	sp,sp,16
    80003998:	00008067          	ret

000000008000399c <_ZN7WorkerBD0Ev>:
    8000399c:	fe010113          	addi	sp,sp,-32
    800039a0:	00113c23          	sd	ra,24(sp)
    800039a4:	00813823          	sd	s0,16(sp)
    800039a8:	00913423          	sd	s1,8(sp)
    800039ac:	02010413          	addi	s0,sp,32
    800039b0:	00050493          	mv	s1,a0
    800039b4:	00008797          	auipc	a5,0x8
    800039b8:	db478793          	addi	a5,a5,-588 # 8000b768 <_ZTV7WorkerB+0x10>
    800039bc:	00f53023          	sd	a5,0(a0)
    800039c0:	fffff097          	auipc	ra,0xfffff
    800039c4:	b98080e7          	jalr	-1128(ra) # 80002558 <_ZN6ThreadD1Ev>
    800039c8:	00048513          	mv	a0,s1
    800039cc:	fffff097          	auipc	ra,0xfffff
    800039d0:	a28080e7          	jalr	-1496(ra) # 800023f4 <_ZdlPv>
    800039d4:	01813083          	ld	ra,24(sp)
    800039d8:	01013403          	ld	s0,16(sp)
    800039dc:	00813483          	ld	s1,8(sp)
    800039e0:	02010113          	addi	sp,sp,32
    800039e4:	00008067          	ret

00000000800039e8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800039e8:	ff010113          	addi	sp,sp,-16
    800039ec:	00113423          	sd	ra,8(sp)
    800039f0:	00813023          	sd	s0,0(sp)
    800039f4:	01010413          	addi	s0,sp,16
    800039f8:	00008797          	auipc	a5,0x8
    800039fc:	d9878793          	addi	a5,a5,-616 # 8000b790 <_ZTV7WorkerC+0x10>
    80003a00:	00f53023          	sd	a5,0(a0)
    80003a04:	fffff097          	auipc	ra,0xfffff
    80003a08:	b54080e7          	jalr	-1196(ra) # 80002558 <_ZN6ThreadD1Ev>
    80003a0c:	00813083          	ld	ra,8(sp)
    80003a10:	00013403          	ld	s0,0(sp)
    80003a14:	01010113          	addi	sp,sp,16
    80003a18:	00008067          	ret

0000000080003a1c <_ZN7WorkerCD0Ev>:
    80003a1c:	fe010113          	addi	sp,sp,-32
    80003a20:	00113c23          	sd	ra,24(sp)
    80003a24:	00813823          	sd	s0,16(sp)
    80003a28:	00913423          	sd	s1,8(sp)
    80003a2c:	02010413          	addi	s0,sp,32
    80003a30:	00050493          	mv	s1,a0
    80003a34:	00008797          	auipc	a5,0x8
    80003a38:	d5c78793          	addi	a5,a5,-676 # 8000b790 <_ZTV7WorkerC+0x10>
    80003a3c:	00f53023          	sd	a5,0(a0)
    80003a40:	fffff097          	auipc	ra,0xfffff
    80003a44:	b18080e7          	jalr	-1256(ra) # 80002558 <_ZN6ThreadD1Ev>
    80003a48:	00048513          	mv	a0,s1
    80003a4c:	fffff097          	auipc	ra,0xfffff
    80003a50:	9a8080e7          	jalr	-1624(ra) # 800023f4 <_ZdlPv>
    80003a54:	01813083          	ld	ra,24(sp)
    80003a58:	01013403          	ld	s0,16(sp)
    80003a5c:	00813483          	ld	s1,8(sp)
    80003a60:	02010113          	addi	sp,sp,32
    80003a64:	00008067          	ret

0000000080003a68 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003a68:	ff010113          	addi	sp,sp,-16
    80003a6c:	00113423          	sd	ra,8(sp)
    80003a70:	00813023          	sd	s0,0(sp)
    80003a74:	01010413          	addi	s0,sp,16
    80003a78:	00008797          	auipc	a5,0x8
    80003a7c:	d4078793          	addi	a5,a5,-704 # 8000b7b8 <_ZTV7WorkerD+0x10>
    80003a80:	00f53023          	sd	a5,0(a0)
    80003a84:	fffff097          	auipc	ra,0xfffff
    80003a88:	ad4080e7          	jalr	-1324(ra) # 80002558 <_ZN6ThreadD1Ev>
    80003a8c:	00813083          	ld	ra,8(sp)
    80003a90:	00013403          	ld	s0,0(sp)
    80003a94:	01010113          	addi	sp,sp,16
    80003a98:	00008067          	ret

0000000080003a9c <_ZN7WorkerDD0Ev>:
    80003a9c:	fe010113          	addi	sp,sp,-32
    80003aa0:	00113c23          	sd	ra,24(sp)
    80003aa4:	00813823          	sd	s0,16(sp)
    80003aa8:	00913423          	sd	s1,8(sp)
    80003aac:	02010413          	addi	s0,sp,32
    80003ab0:	00050493          	mv	s1,a0
    80003ab4:	00008797          	auipc	a5,0x8
    80003ab8:	d0478793          	addi	a5,a5,-764 # 8000b7b8 <_ZTV7WorkerD+0x10>
    80003abc:	00f53023          	sd	a5,0(a0)
    80003ac0:	fffff097          	auipc	ra,0xfffff
    80003ac4:	a98080e7          	jalr	-1384(ra) # 80002558 <_ZN6ThreadD1Ev>
    80003ac8:	00048513          	mv	a0,s1
    80003acc:	fffff097          	auipc	ra,0xfffff
    80003ad0:	928080e7          	jalr	-1752(ra) # 800023f4 <_ZdlPv>
    80003ad4:	01813083          	ld	ra,24(sp)
    80003ad8:	01013403          	ld	s0,16(sp)
    80003adc:	00813483          	ld	s1,8(sp)
    80003ae0:	02010113          	addi	sp,sp,32
    80003ae4:	00008067          	ret

0000000080003ae8 <_ZN7WorkerA3runEv>:
    void run() override {
    80003ae8:	ff010113          	addi	sp,sp,-16
    80003aec:	00113423          	sd	ra,8(sp)
    80003af0:	00813023          	sd	s0,0(sp)
    80003af4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003af8:	00000593          	li	a1,0
    80003afc:	fffff097          	auipc	ra,0xfffff
    80003b00:	774080e7          	jalr	1908(ra) # 80003270 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003b04:	00813083          	ld	ra,8(sp)
    80003b08:	00013403          	ld	s0,0(sp)
    80003b0c:	01010113          	addi	sp,sp,16
    80003b10:	00008067          	ret

0000000080003b14 <_ZN7WorkerB3runEv>:
    void run() override {
    80003b14:	ff010113          	addi	sp,sp,-16
    80003b18:	00113423          	sd	ra,8(sp)
    80003b1c:	00813023          	sd	s0,0(sp)
    80003b20:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003b24:	00000593          	li	a1,0
    80003b28:	00000097          	auipc	ra,0x0
    80003b2c:	814080e7          	jalr	-2028(ra) # 8000333c <_ZN7WorkerB11workerBodyBEPv>
    }
    80003b30:	00813083          	ld	ra,8(sp)
    80003b34:	00013403          	ld	s0,0(sp)
    80003b38:	01010113          	addi	sp,sp,16
    80003b3c:	00008067          	ret

0000000080003b40 <_ZN7WorkerC3runEv>:
    void run() override {
    80003b40:	ff010113          	addi	sp,sp,-16
    80003b44:	00113423          	sd	ra,8(sp)
    80003b48:	00813023          	sd	s0,0(sp)
    80003b4c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003b50:	00000593          	li	a1,0
    80003b54:	00000097          	auipc	ra,0x0
    80003b58:	8bc080e7          	jalr	-1860(ra) # 80003410 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003b5c:	00813083          	ld	ra,8(sp)
    80003b60:	00013403          	ld	s0,0(sp)
    80003b64:	01010113          	addi	sp,sp,16
    80003b68:	00008067          	ret

0000000080003b6c <_ZN7WorkerD3runEv>:
    void run() override {
    80003b6c:	ff010113          	addi	sp,sp,-16
    80003b70:	00113423          	sd	ra,8(sp)
    80003b74:	00813023          	sd	s0,0(sp)
    80003b78:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003b7c:	00000593          	li	a1,0
    80003b80:	00000097          	auipc	ra,0x0
    80003b84:	a10080e7          	jalr	-1520(ra) # 80003590 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003b88:	00813083          	ld	ra,8(sp)
    80003b8c:	00013403          	ld	s0,0(sp)
    80003b90:	01010113          	addi	sp,sp,16
    80003b94:	00008067          	ret

0000000080003b98 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003b98:	f8010113          	addi	sp,sp,-128
    80003b9c:	06113c23          	sd	ra,120(sp)
    80003ba0:	06813823          	sd	s0,112(sp)
    80003ba4:	06913423          	sd	s1,104(sp)
    80003ba8:	07213023          	sd	s2,96(sp)
    80003bac:	05313c23          	sd	s3,88(sp)
    80003bb0:	05413823          	sd	s4,80(sp)
    80003bb4:	05513423          	sd	s5,72(sp)
    80003bb8:	05613023          	sd	s6,64(sp)
    80003bbc:	03713c23          	sd	s7,56(sp)
    80003bc0:	03813823          	sd	s8,48(sp)
    80003bc4:	03913423          	sd	s9,40(sp)
    80003bc8:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003bcc:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003bd0:	00005517          	auipc	a0,0x5
    80003bd4:	79850513          	addi	a0,a0,1944 # 80009368 <CONSOLE_STATUS+0x358>
    80003bd8:	00001097          	auipc	ra,0x1
    80003bdc:	5a8080e7          	jalr	1448(ra) # 80005180 <_Z11printStringPKc>
    getString(input, 30);
    80003be0:	01e00593          	li	a1,30
    80003be4:	f8040493          	addi	s1,s0,-128
    80003be8:	00048513          	mv	a0,s1
    80003bec:	00001097          	auipc	ra,0x1
    80003bf0:	61c080e7          	jalr	1564(ra) # 80005208 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003bf4:	00048513          	mv	a0,s1
    80003bf8:	00001097          	auipc	ra,0x1
    80003bfc:	6e8080e7          	jalr	1768(ra) # 800052e0 <_Z11stringToIntPKc>
    80003c00:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003c04:	00005517          	auipc	a0,0x5
    80003c08:	78450513          	addi	a0,a0,1924 # 80009388 <CONSOLE_STATUS+0x378>
    80003c0c:	00001097          	auipc	ra,0x1
    80003c10:	574080e7          	jalr	1396(ra) # 80005180 <_Z11printStringPKc>
    getString(input, 30);
    80003c14:	01e00593          	li	a1,30
    80003c18:	00048513          	mv	a0,s1
    80003c1c:	00001097          	auipc	ra,0x1
    80003c20:	5ec080e7          	jalr	1516(ra) # 80005208 <_Z9getStringPci>
    n = stringToInt(input);
    80003c24:	00048513          	mv	a0,s1
    80003c28:	00001097          	auipc	ra,0x1
    80003c2c:	6b8080e7          	jalr	1720(ra) # 800052e0 <_Z11stringToIntPKc>
    80003c30:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003c34:	00005517          	auipc	a0,0x5
    80003c38:	77450513          	addi	a0,a0,1908 # 800093a8 <CONSOLE_STATUS+0x398>
    80003c3c:	00001097          	auipc	ra,0x1
    80003c40:	544080e7          	jalr	1348(ra) # 80005180 <_Z11printStringPKc>
    printInt(threadNum);
    80003c44:	00000613          	li	a2,0
    80003c48:	00a00593          	li	a1,10
    80003c4c:	00098513          	mv	a0,s3
    80003c50:	00001097          	auipc	ra,0x1
    80003c54:	6e0080e7          	jalr	1760(ra) # 80005330 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003c58:	00005517          	auipc	a0,0x5
    80003c5c:	76850513          	addi	a0,a0,1896 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80003c60:	00001097          	auipc	ra,0x1
    80003c64:	520080e7          	jalr	1312(ra) # 80005180 <_Z11printStringPKc>
    printInt(n);
    80003c68:	00000613          	li	a2,0
    80003c6c:	00a00593          	li	a1,10
    80003c70:	00048513          	mv	a0,s1
    80003c74:	00001097          	auipc	ra,0x1
    80003c78:	6bc080e7          	jalr	1724(ra) # 80005330 <_Z8printIntiii>
    printString(".\n");
    80003c7c:	00005517          	auipc	a0,0x5
    80003c80:	75c50513          	addi	a0,a0,1884 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80003c84:	00001097          	auipc	ra,0x1
    80003c88:	4fc080e7          	jalr	1276(ra) # 80005180 <_Z11printStringPKc>
    if (threadNum > n) {
    80003c8c:	0334c463          	blt	s1,s3,80003cb4 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003c90:	03305c63          	blez	s3,80003cc8 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003c94:	03800513          	li	a0,56
    80003c98:	ffffe097          	auipc	ra,0xffffe
    80003c9c:	70c080e7          	jalr	1804(ra) # 800023a4 <_Znwm>
    80003ca0:	00050a93          	mv	s5,a0
    80003ca4:	00048593          	mv	a1,s1
    80003ca8:	00001097          	auipc	ra,0x1
    80003cac:	7a8080e7          	jalr	1960(ra) # 80005450 <_ZN9BufferCPPC1Ei>
    80003cb0:	0300006f          	j	80003ce0 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003cb4:	00005517          	auipc	a0,0x5
    80003cb8:	72c50513          	addi	a0,a0,1836 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80003cbc:	00001097          	auipc	ra,0x1
    80003cc0:	4c4080e7          	jalr	1220(ra) # 80005180 <_Z11printStringPKc>
        return;
    80003cc4:	0140006f          	j	80003cd8 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003cc8:	00005517          	auipc	a0,0x5
    80003ccc:	75850513          	addi	a0,a0,1880 # 80009420 <CONSOLE_STATUS+0x410>
    80003cd0:	00001097          	auipc	ra,0x1
    80003cd4:	4b0080e7          	jalr	1200(ra) # 80005180 <_Z11printStringPKc>
        return;
    80003cd8:	000c0113          	mv	sp,s8
    80003cdc:	2140006f          	j	80003ef0 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003ce0:	01000513          	li	a0,16
    80003ce4:	ffffe097          	auipc	ra,0xffffe
    80003ce8:	6c0080e7          	jalr	1728(ra) # 800023a4 <_Znwm>
    80003cec:	00050913          	mv	s2,a0
    80003cf0:	00000593          	li	a1,0
    80003cf4:	fffff097          	auipc	ra,0xfffff
    80003cf8:	a5c080e7          	jalr	-1444(ra) # 80002750 <_ZN9SemaphoreC1Ej>
    80003cfc:	00008797          	auipc	a5,0x8
    80003d00:	cb27b223          	sd	s2,-860(a5) # 8000b9a0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003d04:	00399793          	slli	a5,s3,0x3
    80003d08:	00f78793          	addi	a5,a5,15
    80003d0c:	ff07f793          	andi	a5,a5,-16
    80003d10:	40f10133          	sub	sp,sp,a5
    80003d14:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003d18:	0019871b          	addiw	a4,s3,1
    80003d1c:	00171793          	slli	a5,a4,0x1
    80003d20:	00e787b3          	add	a5,a5,a4
    80003d24:	00379793          	slli	a5,a5,0x3
    80003d28:	00f78793          	addi	a5,a5,15
    80003d2c:	ff07f793          	andi	a5,a5,-16
    80003d30:	40f10133          	sub	sp,sp,a5
    80003d34:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003d38:	00199493          	slli	s1,s3,0x1
    80003d3c:	013484b3          	add	s1,s1,s3
    80003d40:	00349493          	slli	s1,s1,0x3
    80003d44:	009b04b3          	add	s1,s6,s1
    80003d48:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003d4c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003d50:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003d54:	02800513          	li	a0,40
    80003d58:	ffffe097          	auipc	ra,0xffffe
    80003d5c:	64c080e7          	jalr	1612(ra) # 800023a4 <_Znwm>
    80003d60:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003d64:	fffff097          	auipc	ra,0xfffff
    80003d68:	918080e7          	jalr	-1768(ra) # 8000267c <_ZN6ThreadC1Ev>
    80003d6c:	00008797          	auipc	a5,0x8
    80003d70:	ac478793          	addi	a5,a5,-1340 # 8000b830 <_ZTV8Consumer+0x10>
    80003d74:	00fbb023          	sd	a5,0(s7)
    80003d78:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003d7c:	000b8513          	mv	a0,s7
    80003d80:	fffff097          	auipc	ra,0xfffff
    80003d84:	92c080e7          	jalr	-1748(ra) # 800026ac <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003d88:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003d8c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003d90:	00008797          	auipc	a5,0x8
    80003d94:	c107b783          	ld	a5,-1008(a5) # 8000b9a0 <_ZL10waitForAll>
    80003d98:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003d9c:	02800513          	li	a0,40
    80003da0:	ffffe097          	auipc	ra,0xffffe
    80003da4:	604080e7          	jalr	1540(ra) # 800023a4 <_Znwm>
    80003da8:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003dac:	fffff097          	auipc	ra,0xfffff
    80003db0:	8d0080e7          	jalr	-1840(ra) # 8000267c <_ZN6ThreadC1Ev>
    80003db4:	00008797          	auipc	a5,0x8
    80003db8:	a2c78793          	addi	a5,a5,-1492 # 8000b7e0 <_ZTV16ProducerKeyborad+0x10>
    80003dbc:	00f4b023          	sd	a5,0(s1)
    80003dc0:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003dc4:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003dc8:	00048513          	mv	a0,s1
    80003dcc:	fffff097          	auipc	ra,0xfffff
    80003dd0:	8e0080e7          	jalr	-1824(ra) # 800026ac <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003dd4:	00100913          	li	s2,1
    80003dd8:	0300006f          	j	80003e08 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003ddc:	00008797          	auipc	a5,0x8
    80003de0:	a2c78793          	addi	a5,a5,-1492 # 8000b808 <_ZTV8Producer+0x10>
    80003de4:	00fcb023          	sd	a5,0(s9)
    80003de8:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003dec:	00391793          	slli	a5,s2,0x3
    80003df0:	00fa07b3          	add	a5,s4,a5
    80003df4:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003df8:	000c8513          	mv	a0,s9
    80003dfc:	fffff097          	auipc	ra,0xfffff
    80003e00:	8b0080e7          	jalr	-1872(ra) # 800026ac <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003e04:	0019091b          	addiw	s2,s2,1
    80003e08:	05395263          	bge	s2,s3,80003e4c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003e0c:	00191493          	slli	s1,s2,0x1
    80003e10:	012484b3          	add	s1,s1,s2
    80003e14:	00349493          	slli	s1,s1,0x3
    80003e18:	009b04b3          	add	s1,s6,s1
    80003e1c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003e20:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003e24:	00008797          	auipc	a5,0x8
    80003e28:	b7c7b783          	ld	a5,-1156(a5) # 8000b9a0 <_ZL10waitForAll>
    80003e2c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003e30:	02800513          	li	a0,40
    80003e34:	ffffe097          	auipc	ra,0xffffe
    80003e38:	570080e7          	jalr	1392(ra) # 800023a4 <_Znwm>
    80003e3c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003e40:	fffff097          	auipc	ra,0xfffff
    80003e44:	83c080e7          	jalr	-1988(ra) # 8000267c <_ZN6ThreadC1Ev>
    80003e48:	f95ff06f          	j	80003ddc <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003e4c:	fffff097          	auipc	ra,0xfffff
    80003e50:	8b4080e7          	jalr	-1868(ra) # 80002700 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003e54:	00000493          	li	s1,0
    80003e58:	0099ce63          	blt	s3,s1,80003e74 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003e5c:	00008517          	auipc	a0,0x8
    80003e60:	b4453503          	ld	a0,-1212(a0) # 8000b9a0 <_ZL10waitForAll>
    80003e64:	fffff097          	auipc	ra,0xfffff
    80003e68:	928080e7          	jalr	-1752(ra) # 8000278c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003e6c:	0014849b          	addiw	s1,s1,1
    80003e70:	fe9ff06f          	j	80003e58 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003e74:	00008517          	auipc	a0,0x8
    80003e78:	b2c53503          	ld	a0,-1236(a0) # 8000b9a0 <_ZL10waitForAll>
    80003e7c:	00050863          	beqz	a0,80003e8c <_Z20testConsumerProducerv+0x2f4>
    80003e80:	00053783          	ld	a5,0(a0)
    80003e84:	0087b783          	ld	a5,8(a5)
    80003e88:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003e8c:	00000493          	li	s1,0
    80003e90:	0080006f          	j	80003e98 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003e94:	0014849b          	addiw	s1,s1,1
    80003e98:	0334d263          	bge	s1,s3,80003ebc <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003e9c:	00349793          	slli	a5,s1,0x3
    80003ea0:	00fa07b3          	add	a5,s4,a5
    80003ea4:	0007b503          	ld	a0,0(a5)
    80003ea8:	fe0506e3          	beqz	a0,80003e94 <_Z20testConsumerProducerv+0x2fc>
    80003eac:	00053783          	ld	a5,0(a0)
    80003eb0:	0087b783          	ld	a5,8(a5)
    80003eb4:	000780e7          	jalr	a5
    80003eb8:	fddff06f          	j	80003e94 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003ebc:	000b8a63          	beqz	s7,80003ed0 <_Z20testConsumerProducerv+0x338>
    80003ec0:	000bb783          	ld	a5,0(s7)
    80003ec4:	0087b783          	ld	a5,8(a5)
    80003ec8:	000b8513          	mv	a0,s7
    80003ecc:	000780e7          	jalr	a5
    delete buffer;
    80003ed0:	000a8e63          	beqz	s5,80003eec <_Z20testConsumerProducerv+0x354>
    80003ed4:	000a8513          	mv	a0,s5
    80003ed8:	00002097          	auipc	ra,0x2
    80003edc:	870080e7          	jalr	-1936(ra) # 80005748 <_ZN9BufferCPPD1Ev>
    80003ee0:	000a8513          	mv	a0,s5
    80003ee4:	ffffe097          	auipc	ra,0xffffe
    80003ee8:	510080e7          	jalr	1296(ra) # 800023f4 <_ZdlPv>
    80003eec:	000c0113          	mv	sp,s8
}
    80003ef0:	f8040113          	addi	sp,s0,-128
    80003ef4:	07813083          	ld	ra,120(sp)
    80003ef8:	07013403          	ld	s0,112(sp)
    80003efc:	06813483          	ld	s1,104(sp)
    80003f00:	06013903          	ld	s2,96(sp)
    80003f04:	05813983          	ld	s3,88(sp)
    80003f08:	05013a03          	ld	s4,80(sp)
    80003f0c:	04813a83          	ld	s5,72(sp)
    80003f10:	04013b03          	ld	s6,64(sp)
    80003f14:	03813b83          	ld	s7,56(sp)
    80003f18:	03013c03          	ld	s8,48(sp)
    80003f1c:	02813c83          	ld	s9,40(sp)
    80003f20:	08010113          	addi	sp,sp,128
    80003f24:	00008067          	ret
    80003f28:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003f2c:	000a8513          	mv	a0,s5
    80003f30:	ffffe097          	auipc	ra,0xffffe
    80003f34:	4c4080e7          	jalr	1220(ra) # 800023f4 <_ZdlPv>
    80003f38:	00048513          	mv	a0,s1
    80003f3c:	00009097          	auipc	ra,0x9
    80003f40:	b5c080e7          	jalr	-1188(ra) # 8000ca98 <_Unwind_Resume>
    80003f44:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003f48:	00090513          	mv	a0,s2
    80003f4c:	ffffe097          	auipc	ra,0xffffe
    80003f50:	4a8080e7          	jalr	1192(ra) # 800023f4 <_ZdlPv>
    80003f54:	00048513          	mv	a0,s1
    80003f58:	00009097          	auipc	ra,0x9
    80003f5c:	b40080e7          	jalr	-1216(ra) # 8000ca98 <_Unwind_Resume>
    80003f60:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003f64:	000b8513          	mv	a0,s7
    80003f68:	ffffe097          	auipc	ra,0xffffe
    80003f6c:	48c080e7          	jalr	1164(ra) # 800023f4 <_ZdlPv>
    80003f70:	00048513          	mv	a0,s1
    80003f74:	00009097          	auipc	ra,0x9
    80003f78:	b24080e7          	jalr	-1244(ra) # 8000ca98 <_Unwind_Resume>
    80003f7c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003f80:	00048513          	mv	a0,s1
    80003f84:	ffffe097          	auipc	ra,0xffffe
    80003f88:	470080e7          	jalr	1136(ra) # 800023f4 <_ZdlPv>
    80003f8c:	00090513          	mv	a0,s2
    80003f90:	00009097          	auipc	ra,0x9
    80003f94:	b08080e7          	jalr	-1272(ra) # 8000ca98 <_Unwind_Resume>
    80003f98:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003f9c:	000c8513          	mv	a0,s9
    80003fa0:	ffffe097          	auipc	ra,0xffffe
    80003fa4:	454080e7          	jalr	1108(ra) # 800023f4 <_ZdlPv>
    80003fa8:	00048513          	mv	a0,s1
    80003fac:	00009097          	auipc	ra,0x9
    80003fb0:	aec080e7          	jalr	-1300(ra) # 8000ca98 <_Unwind_Resume>

0000000080003fb4 <_ZN8Consumer3runEv>:
    void run() override {
    80003fb4:	fd010113          	addi	sp,sp,-48
    80003fb8:	02113423          	sd	ra,40(sp)
    80003fbc:	02813023          	sd	s0,32(sp)
    80003fc0:	00913c23          	sd	s1,24(sp)
    80003fc4:	01213823          	sd	s2,16(sp)
    80003fc8:	01313423          	sd	s3,8(sp)
    80003fcc:	03010413          	addi	s0,sp,48
    80003fd0:	00050913          	mv	s2,a0
        int i = 0;
    80003fd4:	00000993          	li	s3,0
    80003fd8:	0100006f          	j	80003fe8 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003fdc:	00a00513          	li	a0,10
    80003fe0:	fffff097          	auipc	ra,0xfffff
    80003fe4:	894080e7          	jalr	-1900(ra) # 80002874 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003fe8:	00008797          	auipc	a5,0x8
    80003fec:	9b07a783          	lw	a5,-1616(a5) # 8000b998 <_ZL9threadEnd>
    80003ff0:	04079a63          	bnez	a5,80004044 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003ff4:	02093783          	ld	a5,32(s2)
    80003ff8:	0087b503          	ld	a0,8(a5)
    80003ffc:	00001097          	auipc	ra,0x1
    80004000:	638080e7          	jalr	1592(ra) # 80005634 <_ZN9BufferCPP3getEv>
            i++;
    80004004:	0019849b          	addiw	s1,s3,1
    80004008:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    8000400c:	0ff57513          	andi	a0,a0,255
    80004010:	fffff097          	auipc	ra,0xfffff
    80004014:	864080e7          	jalr	-1948(ra) # 80002874 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004018:	05000793          	li	a5,80
    8000401c:	02f4e4bb          	remw	s1,s1,a5
    80004020:	fc0494e3          	bnez	s1,80003fe8 <_ZN8Consumer3runEv+0x34>
    80004024:	fb9ff06f          	j	80003fdc <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004028:	02093783          	ld	a5,32(s2)
    8000402c:	0087b503          	ld	a0,8(a5)
    80004030:	00001097          	auipc	ra,0x1
    80004034:	604080e7          	jalr	1540(ra) # 80005634 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004038:	0ff57513          	andi	a0,a0,255
    8000403c:	fffff097          	auipc	ra,0xfffff
    80004040:	838080e7          	jalr	-1992(ra) # 80002874 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004044:	02093783          	ld	a5,32(s2)
    80004048:	0087b503          	ld	a0,8(a5)
    8000404c:	00001097          	auipc	ra,0x1
    80004050:	674080e7          	jalr	1652(ra) # 800056c0 <_ZN9BufferCPP6getCntEv>
    80004054:	fca04ae3          	bgtz	a0,80004028 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004058:	02093783          	ld	a5,32(s2)
    8000405c:	0107b503          	ld	a0,16(a5)
    80004060:	ffffe097          	auipc	ra,0xffffe
    80004064:	758080e7          	jalr	1880(ra) # 800027b8 <_ZN9Semaphore6signalEv>
    }
    80004068:	02813083          	ld	ra,40(sp)
    8000406c:	02013403          	ld	s0,32(sp)
    80004070:	01813483          	ld	s1,24(sp)
    80004074:	01013903          	ld	s2,16(sp)
    80004078:	00813983          	ld	s3,8(sp)
    8000407c:	03010113          	addi	sp,sp,48
    80004080:	00008067          	ret

0000000080004084 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004084:	ff010113          	addi	sp,sp,-16
    80004088:	00113423          	sd	ra,8(sp)
    8000408c:	00813023          	sd	s0,0(sp)
    80004090:	01010413          	addi	s0,sp,16
    80004094:	00007797          	auipc	a5,0x7
    80004098:	79c78793          	addi	a5,a5,1948 # 8000b830 <_ZTV8Consumer+0x10>
    8000409c:	00f53023          	sd	a5,0(a0)
    800040a0:	ffffe097          	auipc	ra,0xffffe
    800040a4:	4b8080e7          	jalr	1208(ra) # 80002558 <_ZN6ThreadD1Ev>
    800040a8:	00813083          	ld	ra,8(sp)
    800040ac:	00013403          	ld	s0,0(sp)
    800040b0:	01010113          	addi	sp,sp,16
    800040b4:	00008067          	ret

00000000800040b8 <_ZN8ConsumerD0Ev>:
    800040b8:	fe010113          	addi	sp,sp,-32
    800040bc:	00113c23          	sd	ra,24(sp)
    800040c0:	00813823          	sd	s0,16(sp)
    800040c4:	00913423          	sd	s1,8(sp)
    800040c8:	02010413          	addi	s0,sp,32
    800040cc:	00050493          	mv	s1,a0
    800040d0:	00007797          	auipc	a5,0x7
    800040d4:	76078793          	addi	a5,a5,1888 # 8000b830 <_ZTV8Consumer+0x10>
    800040d8:	00f53023          	sd	a5,0(a0)
    800040dc:	ffffe097          	auipc	ra,0xffffe
    800040e0:	47c080e7          	jalr	1148(ra) # 80002558 <_ZN6ThreadD1Ev>
    800040e4:	00048513          	mv	a0,s1
    800040e8:	ffffe097          	auipc	ra,0xffffe
    800040ec:	30c080e7          	jalr	780(ra) # 800023f4 <_ZdlPv>
    800040f0:	01813083          	ld	ra,24(sp)
    800040f4:	01013403          	ld	s0,16(sp)
    800040f8:	00813483          	ld	s1,8(sp)
    800040fc:	02010113          	addi	sp,sp,32
    80004100:	00008067          	ret

0000000080004104 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004104:	ff010113          	addi	sp,sp,-16
    80004108:	00113423          	sd	ra,8(sp)
    8000410c:	00813023          	sd	s0,0(sp)
    80004110:	01010413          	addi	s0,sp,16
    80004114:	00007797          	auipc	a5,0x7
    80004118:	6cc78793          	addi	a5,a5,1740 # 8000b7e0 <_ZTV16ProducerKeyborad+0x10>
    8000411c:	00f53023          	sd	a5,0(a0)
    80004120:	ffffe097          	auipc	ra,0xffffe
    80004124:	438080e7          	jalr	1080(ra) # 80002558 <_ZN6ThreadD1Ev>
    80004128:	00813083          	ld	ra,8(sp)
    8000412c:	00013403          	ld	s0,0(sp)
    80004130:	01010113          	addi	sp,sp,16
    80004134:	00008067          	ret

0000000080004138 <_ZN16ProducerKeyboradD0Ev>:
    80004138:	fe010113          	addi	sp,sp,-32
    8000413c:	00113c23          	sd	ra,24(sp)
    80004140:	00813823          	sd	s0,16(sp)
    80004144:	00913423          	sd	s1,8(sp)
    80004148:	02010413          	addi	s0,sp,32
    8000414c:	00050493          	mv	s1,a0
    80004150:	00007797          	auipc	a5,0x7
    80004154:	69078793          	addi	a5,a5,1680 # 8000b7e0 <_ZTV16ProducerKeyborad+0x10>
    80004158:	00f53023          	sd	a5,0(a0)
    8000415c:	ffffe097          	auipc	ra,0xffffe
    80004160:	3fc080e7          	jalr	1020(ra) # 80002558 <_ZN6ThreadD1Ev>
    80004164:	00048513          	mv	a0,s1
    80004168:	ffffe097          	auipc	ra,0xffffe
    8000416c:	28c080e7          	jalr	652(ra) # 800023f4 <_ZdlPv>
    80004170:	01813083          	ld	ra,24(sp)
    80004174:	01013403          	ld	s0,16(sp)
    80004178:	00813483          	ld	s1,8(sp)
    8000417c:	02010113          	addi	sp,sp,32
    80004180:	00008067          	ret

0000000080004184 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004184:	ff010113          	addi	sp,sp,-16
    80004188:	00113423          	sd	ra,8(sp)
    8000418c:	00813023          	sd	s0,0(sp)
    80004190:	01010413          	addi	s0,sp,16
    80004194:	00007797          	auipc	a5,0x7
    80004198:	67478793          	addi	a5,a5,1652 # 8000b808 <_ZTV8Producer+0x10>
    8000419c:	00f53023          	sd	a5,0(a0)
    800041a0:	ffffe097          	auipc	ra,0xffffe
    800041a4:	3b8080e7          	jalr	952(ra) # 80002558 <_ZN6ThreadD1Ev>
    800041a8:	00813083          	ld	ra,8(sp)
    800041ac:	00013403          	ld	s0,0(sp)
    800041b0:	01010113          	addi	sp,sp,16
    800041b4:	00008067          	ret

00000000800041b8 <_ZN8ProducerD0Ev>:
    800041b8:	fe010113          	addi	sp,sp,-32
    800041bc:	00113c23          	sd	ra,24(sp)
    800041c0:	00813823          	sd	s0,16(sp)
    800041c4:	00913423          	sd	s1,8(sp)
    800041c8:	02010413          	addi	s0,sp,32
    800041cc:	00050493          	mv	s1,a0
    800041d0:	00007797          	auipc	a5,0x7
    800041d4:	63878793          	addi	a5,a5,1592 # 8000b808 <_ZTV8Producer+0x10>
    800041d8:	00f53023          	sd	a5,0(a0)
    800041dc:	ffffe097          	auipc	ra,0xffffe
    800041e0:	37c080e7          	jalr	892(ra) # 80002558 <_ZN6ThreadD1Ev>
    800041e4:	00048513          	mv	a0,s1
    800041e8:	ffffe097          	auipc	ra,0xffffe
    800041ec:	20c080e7          	jalr	524(ra) # 800023f4 <_ZdlPv>
    800041f0:	01813083          	ld	ra,24(sp)
    800041f4:	01013403          	ld	s0,16(sp)
    800041f8:	00813483          	ld	s1,8(sp)
    800041fc:	02010113          	addi	sp,sp,32
    80004200:	00008067          	ret

0000000080004204 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004204:	fe010113          	addi	sp,sp,-32
    80004208:	00113c23          	sd	ra,24(sp)
    8000420c:	00813823          	sd	s0,16(sp)
    80004210:	00913423          	sd	s1,8(sp)
    80004214:	02010413          	addi	s0,sp,32
    80004218:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    8000421c:	ffffd097          	auipc	ra,0xffffd
    80004220:	314080e7          	jalr	788(ra) # 80001530 <_Z4getcv>
    80004224:	0005059b          	sext.w	a1,a0
    80004228:	01b00793          	li	a5,27
    8000422c:	00f58c63          	beq	a1,a5,80004244 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004230:	0204b783          	ld	a5,32(s1)
    80004234:	0087b503          	ld	a0,8(a5)
    80004238:	00001097          	auipc	ra,0x1
    8000423c:	36c080e7          	jalr	876(ra) # 800055a4 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004240:	fddff06f          	j	8000421c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004244:	00100793          	li	a5,1
    80004248:	00007717          	auipc	a4,0x7
    8000424c:	74f72823          	sw	a5,1872(a4) # 8000b998 <_ZL9threadEnd>
        td->buffer->put('!');
    80004250:	0204b783          	ld	a5,32(s1)
    80004254:	02100593          	li	a1,33
    80004258:	0087b503          	ld	a0,8(a5)
    8000425c:	00001097          	auipc	ra,0x1
    80004260:	348080e7          	jalr	840(ra) # 800055a4 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004264:	0204b783          	ld	a5,32(s1)
    80004268:	0107b503          	ld	a0,16(a5)
    8000426c:	ffffe097          	auipc	ra,0xffffe
    80004270:	54c080e7          	jalr	1356(ra) # 800027b8 <_ZN9Semaphore6signalEv>
    }
    80004274:	01813083          	ld	ra,24(sp)
    80004278:	01013403          	ld	s0,16(sp)
    8000427c:	00813483          	ld	s1,8(sp)
    80004280:	02010113          	addi	sp,sp,32
    80004284:	00008067          	ret

0000000080004288 <_ZN8Producer3runEv>:
    void run() override {
    80004288:	fe010113          	addi	sp,sp,-32
    8000428c:	00113c23          	sd	ra,24(sp)
    80004290:	00813823          	sd	s0,16(sp)
    80004294:	00913423          	sd	s1,8(sp)
    80004298:	01213023          	sd	s2,0(sp)
    8000429c:	02010413          	addi	s0,sp,32
    800042a0:	00050493          	mv	s1,a0
        int i = 0;
    800042a4:	00000913          	li	s2,0
        while (!threadEnd) {
    800042a8:	00007797          	auipc	a5,0x7
    800042ac:	6f07a783          	lw	a5,1776(a5) # 8000b998 <_ZL9threadEnd>
    800042b0:	04079263          	bnez	a5,800042f4 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800042b4:	0204b783          	ld	a5,32(s1)
    800042b8:	0007a583          	lw	a1,0(a5)
    800042bc:	0305859b          	addiw	a1,a1,48
    800042c0:	0087b503          	ld	a0,8(a5)
    800042c4:	00001097          	auipc	ra,0x1
    800042c8:	2e0080e7          	jalr	736(ra) # 800055a4 <_ZN9BufferCPP3putEi>
            i++;
    800042cc:	0019071b          	addiw	a4,s2,1
    800042d0:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800042d4:	0204b783          	ld	a5,32(s1)
    800042d8:	0007a783          	lw	a5,0(a5)
    800042dc:	00e787bb          	addw	a5,a5,a4
    800042e0:	00500513          	li	a0,5
    800042e4:	02a7e53b          	remw	a0,a5,a0
    800042e8:	ffffe097          	auipc	ra,0xffffe
    800042ec:	440080e7          	jalr	1088(ra) # 80002728 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800042f0:	fb9ff06f          	j	800042a8 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800042f4:	0204b783          	ld	a5,32(s1)
    800042f8:	0107b503          	ld	a0,16(a5)
    800042fc:	ffffe097          	auipc	ra,0xffffe
    80004300:	4bc080e7          	jalr	1212(ra) # 800027b8 <_ZN9Semaphore6signalEv>
    }
    80004304:	01813083          	ld	ra,24(sp)
    80004308:	01013403          	ld	s0,16(sp)
    8000430c:	00813483          	ld	s1,8(sp)
    80004310:	00013903          	ld	s2,0(sp)
    80004314:	02010113          	addi	sp,sp,32
    80004318:	00008067          	ret

000000008000431c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000431c:	fe010113          	addi	sp,sp,-32
    80004320:	00113c23          	sd	ra,24(sp)
    80004324:	00813823          	sd	s0,16(sp)
    80004328:	00913423          	sd	s1,8(sp)
    8000432c:	01213023          	sd	s2,0(sp)
    80004330:	02010413          	addi	s0,sp,32
    80004334:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004338:	00100793          	li	a5,1
    8000433c:	02a7f863          	bgeu	a5,a0,8000436c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004340:	00a00793          	li	a5,10
    80004344:	02f577b3          	remu	a5,a0,a5
    80004348:	02078e63          	beqz	a5,80004384 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000434c:	fff48513          	addi	a0,s1,-1
    80004350:	00000097          	auipc	ra,0x0
    80004354:	fcc080e7          	jalr	-52(ra) # 8000431c <_ZL9fibonaccim>
    80004358:	00050913          	mv	s2,a0
    8000435c:	ffe48513          	addi	a0,s1,-2
    80004360:	00000097          	auipc	ra,0x0
    80004364:	fbc080e7          	jalr	-68(ra) # 8000431c <_ZL9fibonaccim>
    80004368:	00a90533          	add	a0,s2,a0
}
    8000436c:	01813083          	ld	ra,24(sp)
    80004370:	01013403          	ld	s0,16(sp)
    80004374:	00813483          	ld	s1,8(sp)
    80004378:	00013903          	ld	s2,0(sp)
    8000437c:	02010113          	addi	sp,sp,32
    80004380:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004384:	ffffd097          	auipc	ra,0xffffd
    80004388:	fa4080e7          	jalr	-92(ra) # 80001328 <_Z15thread_dispatchv>
    8000438c:	fc1ff06f          	j	8000434c <_ZL9fibonaccim+0x30>

0000000080004390 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004390:	fe010113          	addi	sp,sp,-32
    80004394:	00113c23          	sd	ra,24(sp)
    80004398:	00813823          	sd	s0,16(sp)
    8000439c:	00913423          	sd	s1,8(sp)
    800043a0:	01213023          	sd	s2,0(sp)
    800043a4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800043a8:	00a00493          	li	s1,10
    800043ac:	0400006f          	j	800043ec <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800043b0:	00005517          	auipc	a0,0x5
    800043b4:	10050513          	addi	a0,a0,256 # 800094b0 <CONSOLE_STATUS+0x4a0>
    800043b8:	00001097          	auipc	ra,0x1
    800043bc:	dc8080e7          	jalr	-568(ra) # 80005180 <_Z11printStringPKc>
    800043c0:	00000613          	li	a2,0
    800043c4:	00a00593          	li	a1,10
    800043c8:	00048513          	mv	a0,s1
    800043cc:	00001097          	auipc	ra,0x1
    800043d0:	f64080e7          	jalr	-156(ra) # 80005330 <_Z8printIntiii>
    800043d4:	00005517          	auipc	a0,0x5
    800043d8:	ecc50513          	addi	a0,a0,-308 # 800092a0 <CONSOLE_STATUS+0x290>
    800043dc:	00001097          	auipc	ra,0x1
    800043e0:	da4080e7          	jalr	-604(ra) # 80005180 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800043e4:	0014849b          	addiw	s1,s1,1
    800043e8:	0ff4f493          	andi	s1,s1,255
    800043ec:	00c00793          	li	a5,12
    800043f0:	fc97f0e3          	bgeu	a5,s1,800043b0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800043f4:	00005517          	auipc	a0,0x5
    800043f8:	0c450513          	addi	a0,a0,196 # 800094b8 <CONSOLE_STATUS+0x4a8>
    800043fc:	00001097          	auipc	ra,0x1
    80004400:	d84080e7          	jalr	-636(ra) # 80005180 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004404:	00500313          	li	t1,5
    thread_dispatch();
    80004408:	ffffd097          	auipc	ra,0xffffd
    8000440c:	f20080e7          	jalr	-224(ra) # 80001328 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004410:	01000513          	li	a0,16
    80004414:	00000097          	auipc	ra,0x0
    80004418:	f08080e7          	jalr	-248(ra) # 8000431c <_ZL9fibonaccim>
    8000441c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004420:	00005517          	auipc	a0,0x5
    80004424:	0a850513          	addi	a0,a0,168 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80004428:	00001097          	auipc	ra,0x1
    8000442c:	d58080e7          	jalr	-680(ra) # 80005180 <_Z11printStringPKc>
    80004430:	00000613          	li	a2,0
    80004434:	00a00593          	li	a1,10
    80004438:	0009051b          	sext.w	a0,s2
    8000443c:	00001097          	auipc	ra,0x1
    80004440:	ef4080e7          	jalr	-268(ra) # 80005330 <_Z8printIntiii>
    80004444:	00005517          	auipc	a0,0x5
    80004448:	e5c50513          	addi	a0,a0,-420 # 800092a0 <CONSOLE_STATUS+0x290>
    8000444c:	00001097          	auipc	ra,0x1
    80004450:	d34080e7          	jalr	-716(ra) # 80005180 <_Z11printStringPKc>
    80004454:	0400006f          	j	80004494 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004458:	00005517          	auipc	a0,0x5
    8000445c:	05850513          	addi	a0,a0,88 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80004460:	00001097          	auipc	ra,0x1
    80004464:	d20080e7          	jalr	-736(ra) # 80005180 <_Z11printStringPKc>
    80004468:	00000613          	li	a2,0
    8000446c:	00a00593          	li	a1,10
    80004470:	00048513          	mv	a0,s1
    80004474:	00001097          	auipc	ra,0x1
    80004478:	ebc080e7          	jalr	-324(ra) # 80005330 <_Z8printIntiii>
    8000447c:	00005517          	auipc	a0,0x5
    80004480:	e2450513          	addi	a0,a0,-476 # 800092a0 <CONSOLE_STATUS+0x290>
    80004484:	00001097          	auipc	ra,0x1
    80004488:	cfc080e7          	jalr	-772(ra) # 80005180 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000448c:	0014849b          	addiw	s1,s1,1
    80004490:	0ff4f493          	andi	s1,s1,255
    80004494:	00f00793          	li	a5,15
    80004498:	fc97f0e3          	bgeu	a5,s1,80004458 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000449c:	00005517          	auipc	a0,0x5
    800044a0:	03c50513          	addi	a0,a0,60 # 800094d8 <CONSOLE_STATUS+0x4c8>
    800044a4:	00001097          	auipc	ra,0x1
    800044a8:	cdc080e7          	jalr	-804(ra) # 80005180 <_Z11printStringPKc>
    finishedD = true;
    800044ac:	00100793          	li	a5,1
    800044b0:	00007717          	auipc	a4,0x7
    800044b4:	4ef70c23          	sb	a5,1272(a4) # 8000b9a8 <_ZL9finishedD>
    thread_dispatch();
    800044b8:	ffffd097          	auipc	ra,0xffffd
    800044bc:	e70080e7          	jalr	-400(ra) # 80001328 <_Z15thread_dispatchv>
}
    800044c0:	01813083          	ld	ra,24(sp)
    800044c4:	01013403          	ld	s0,16(sp)
    800044c8:	00813483          	ld	s1,8(sp)
    800044cc:	00013903          	ld	s2,0(sp)
    800044d0:	02010113          	addi	sp,sp,32
    800044d4:	00008067          	ret

00000000800044d8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800044d8:	fe010113          	addi	sp,sp,-32
    800044dc:	00113c23          	sd	ra,24(sp)
    800044e0:	00813823          	sd	s0,16(sp)
    800044e4:	00913423          	sd	s1,8(sp)
    800044e8:	01213023          	sd	s2,0(sp)
    800044ec:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800044f0:	00000493          	li	s1,0
    800044f4:	0400006f          	j	80004534 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800044f8:	00005517          	auipc	a0,0x5
    800044fc:	f8850513          	addi	a0,a0,-120 # 80009480 <CONSOLE_STATUS+0x470>
    80004500:	00001097          	auipc	ra,0x1
    80004504:	c80080e7          	jalr	-896(ra) # 80005180 <_Z11printStringPKc>
    80004508:	00000613          	li	a2,0
    8000450c:	00a00593          	li	a1,10
    80004510:	00048513          	mv	a0,s1
    80004514:	00001097          	auipc	ra,0x1
    80004518:	e1c080e7          	jalr	-484(ra) # 80005330 <_Z8printIntiii>
    8000451c:	00005517          	auipc	a0,0x5
    80004520:	d8450513          	addi	a0,a0,-636 # 800092a0 <CONSOLE_STATUS+0x290>
    80004524:	00001097          	auipc	ra,0x1
    80004528:	c5c080e7          	jalr	-932(ra) # 80005180 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000452c:	0014849b          	addiw	s1,s1,1
    80004530:	0ff4f493          	andi	s1,s1,255
    80004534:	00200793          	li	a5,2
    80004538:	fc97f0e3          	bgeu	a5,s1,800044f8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000453c:	00005517          	auipc	a0,0x5
    80004540:	f4c50513          	addi	a0,a0,-180 # 80009488 <CONSOLE_STATUS+0x478>
    80004544:	00001097          	auipc	ra,0x1
    80004548:	c3c080e7          	jalr	-964(ra) # 80005180 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000454c:	00700313          	li	t1,7
    thread_dispatch();
    80004550:	ffffd097          	auipc	ra,0xffffd
    80004554:	dd8080e7          	jalr	-552(ra) # 80001328 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004558:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000455c:	00005517          	auipc	a0,0x5
    80004560:	f3c50513          	addi	a0,a0,-196 # 80009498 <CONSOLE_STATUS+0x488>
    80004564:	00001097          	auipc	ra,0x1
    80004568:	c1c080e7          	jalr	-996(ra) # 80005180 <_Z11printStringPKc>
    8000456c:	00000613          	li	a2,0
    80004570:	00a00593          	li	a1,10
    80004574:	0009051b          	sext.w	a0,s2
    80004578:	00001097          	auipc	ra,0x1
    8000457c:	db8080e7          	jalr	-584(ra) # 80005330 <_Z8printIntiii>
    80004580:	00005517          	auipc	a0,0x5
    80004584:	d2050513          	addi	a0,a0,-736 # 800092a0 <CONSOLE_STATUS+0x290>
    80004588:	00001097          	auipc	ra,0x1
    8000458c:	bf8080e7          	jalr	-1032(ra) # 80005180 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004590:	00c00513          	li	a0,12
    80004594:	00000097          	auipc	ra,0x0
    80004598:	d88080e7          	jalr	-632(ra) # 8000431c <_ZL9fibonaccim>
    8000459c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800045a0:	00005517          	auipc	a0,0x5
    800045a4:	f0050513          	addi	a0,a0,-256 # 800094a0 <CONSOLE_STATUS+0x490>
    800045a8:	00001097          	auipc	ra,0x1
    800045ac:	bd8080e7          	jalr	-1064(ra) # 80005180 <_Z11printStringPKc>
    800045b0:	00000613          	li	a2,0
    800045b4:	00a00593          	li	a1,10
    800045b8:	0009051b          	sext.w	a0,s2
    800045bc:	00001097          	auipc	ra,0x1
    800045c0:	d74080e7          	jalr	-652(ra) # 80005330 <_Z8printIntiii>
    800045c4:	00005517          	auipc	a0,0x5
    800045c8:	cdc50513          	addi	a0,a0,-804 # 800092a0 <CONSOLE_STATUS+0x290>
    800045cc:	00001097          	auipc	ra,0x1
    800045d0:	bb4080e7          	jalr	-1100(ra) # 80005180 <_Z11printStringPKc>
    800045d4:	0400006f          	j	80004614 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800045d8:	00005517          	auipc	a0,0x5
    800045dc:	ea850513          	addi	a0,a0,-344 # 80009480 <CONSOLE_STATUS+0x470>
    800045e0:	00001097          	auipc	ra,0x1
    800045e4:	ba0080e7          	jalr	-1120(ra) # 80005180 <_Z11printStringPKc>
    800045e8:	00000613          	li	a2,0
    800045ec:	00a00593          	li	a1,10
    800045f0:	00048513          	mv	a0,s1
    800045f4:	00001097          	auipc	ra,0x1
    800045f8:	d3c080e7          	jalr	-708(ra) # 80005330 <_Z8printIntiii>
    800045fc:	00005517          	auipc	a0,0x5
    80004600:	ca450513          	addi	a0,a0,-860 # 800092a0 <CONSOLE_STATUS+0x290>
    80004604:	00001097          	auipc	ra,0x1
    80004608:	b7c080e7          	jalr	-1156(ra) # 80005180 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000460c:	0014849b          	addiw	s1,s1,1
    80004610:	0ff4f493          	andi	s1,s1,255
    80004614:	00500793          	li	a5,5
    80004618:	fc97f0e3          	bgeu	a5,s1,800045d8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000461c:	00005517          	auipc	a0,0x5
    80004620:	e3c50513          	addi	a0,a0,-452 # 80009458 <CONSOLE_STATUS+0x448>
    80004624:	00001097          	auipc	ra,0x1
    80004628:	b5c080e7          	jalr	-1188(ra) # 80005180 <_Z11printStringPKc>
    finishedC = true;
    8000462c:	00100793          	li	a5,1
    80004630:	00007717          	auipc	a4,0x7
    80004634:	36f70ca3          	sb	a5,889(a4) # 8000b9a9 <_ZL9finishedC>
    thread_dispatch();
    80004638:	ffffd097          	auipc	ra,0xffffd
    8000463c:	cf0080e7          	jalr	-784(ra) # 80001328 <_Z15thread_dispatchv>
}
    80004640:	01813083          	ld	ra,24(sp)
    80004644:	01013403          	ld	s0,16(sp)
    80004648:	00813483          	ld	s1,8(sp)
    8000464c:	00013903          	ld	s2,0(sp)
    80004650:	02010113          	addi	sp,sp,32
    80004654:	00008067          	ret

0000000080004658 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004658:	fe010113          	addi	sp,sp,-32
    8000465c:	00113c23          	sd	ra,24(sp)
    80004660:	00813823          	sd	s0,16(sp)
    80004664:	00913423          	sd	s1,8(sp)
    80004668:	01213023          	sd	s2,0(sp)
    8000466c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004670:	00000913          	li	s2,0
    80004674:	0380006f          	j	800046ac <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004678:	ffffd097          	auipc	ra,0xffffd
    8000467c:	cb0080e7          	jalr	-848(ra) # 80001328 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004680:	00148493          	addi	s1,s1,1
    80004684:	000027b7          	lui	a5,0x2
    80004688:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000468c:	0097ee63          	bltu	a5,s1,800046a8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004690:	00000713          	li	a4,0
    80004694:	000077b7          	lui	a5,0x7
    80004698:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000469c:	fce7eee3          	bltu	a5,a4,80004678 <_ZL11workerBodyBPv+0x20>
    800046a0:	00170713          	addi	a4,a4,1
    800046a4:	ff1ff06f          	j	80004694 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800046a8:	00190913          	addi	s2,s2,1
    800046ac:	00f00793          	li	a5,15
    800046b0:	0527e063          	bltu	a5,s2,800046f0 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800046b4:	00005517          	auipc	a0,0x5
    800046b8:	db450513          	addi	a0,a0,-588 # 80009468 <CONSOLE_STATUS+0x458>
    800046bc:	00001097          	auipc	ra,0x1
    800046c0:	ac4080e7          	jalr	-1340(ra) # 80005180 <_Z11printStringPKc>
    800046c4:	00000613          	li	a2,0
    800046c8:	00a00593          	li	a1,10
    800046cc:	0009051b          	sext.w	a0,s2
    800046d0:	00001097          	auipc	ra,0x1
    800046d4:	c60080e7          	jalr	-928(ra) # 80005330 <_Z8printIntiii>
    800046d8:	00005517          	auipc	a0,0x5
    800046dc:	bc850513          	addi	a0,a0,-1080 # 800092a0 <CONSOLE_STATUS+0x290>
    800046e0:	00001097          	auipc	ra,0x1
    800046e4:	aa0080e7          	jalr	-1376(ra) # 80005180 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800046e8:	00000493          	li	s1,0
    800046ec:	f99ff06f          	j	80004684 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800046f0:	00005517          	auipc	a0,0x5
    800046f4:	d8050513          	addi	a0,a0,-640 # 80009470 <CONSOLE_STATUS+0x460>
    800046f8:	00001097          	auipc	ra,0x1
    800046fc:	a88080e7          	jalr	-1400(ra) # 80005180 <_Z11printStringPKc>
    finishedB = true;
    80004700:	00100793          	li	a5,1
    80004704:	00007717          	auipc	a4,0x7
    80004708:	2af70323          	sb	a5,678(a4) # 8000b9aa <_ZL9finishedB>
    thread_dispatch();
    8000470c:	ffffd097          	auipc	ra,0xffffd
    80004710:	c1c080e7          	jalr	-996(ra) # 80001328 <_Z15thread_dispatchv>
}
    80004714:	01813083          	ld	ra,24(sp)
    80004718:	01013403          	ld	s0,16(sp)
    8000471c:	00813483          	ld	s1,8(sp)
    80004720:	00013903          	ld	s2,0(sp)
    80004724:	02010113          	addi	sp,sp,32
    80004728:	00008067          	ret

000000008000472c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000472c:	fe010113          	addi	sp,sp,-32
    80004730:	00113c23          	sd	ra,24(sp)
    80004734:	00813823          	sd	s0,16(sp)
    80004738:	00913423          	sd	s1,8(sp)
    8000473c:	01213023          	sd	s2,0(sp)
    80004740:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004744:	00000913          	li	s2,0
    80004748:	0380006f          	j	80004780 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000474c:	ffffd097          	auipc	ra,0xffffd
    80004750:	bdc080e7          	jalr	-1060(ra) # 80001328 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004754:	00148493          	addi	s1,s1,1
    80004758:	000027b7          	lui	a5,0x2
    8000475c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004760:	0097ee63          	bltu	a5,s1,8000477c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004764:	00000713          	li	a4,0
    80004768:	000077b7          	lui	a5,0x7
    8000476c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004770:	fce7eee3          	bltu	a5,a4,8000474c <_ZL11workerBodyAPv+0x20>
    80004774:	00170713          	addi	a4,a4,1
    80004778:	ff1ff06f          	j	80004768 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000477c:	00190913          	addi	s2,s2,1
    80004780:	00900793          	li	a5,9
    80004784:	0527e063          	bltu	a5,s2,800047c4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004788:	00005517          	auipc	a0,0x5
    8000478c:	cc850513          	addi	a0,a0,-824 # 80009450 <CONSOLE_STATUS+0x440>
    80004790:	00001097          	auipc	ra,0x1
    80004794:	9f0080e7          	jalr	-1552(ra) # 80005180 <_Z11printStringPKc>
    80004798:	00000613          	li	a2,0
    8000479c:	00a00593          	li	a1,10
    800047a0:	0009051b          	sext.w	a0,s2
    800047a4:	00001097          	auipc	ra,0x1
    800047a8:	b8c080e7          	jalr	-1140(ra) # 80005330 <_Z8printIntiii>
    800047ac:	00005517          	auipc	a0,0x5
    800047b0:	af450513          	addi	a0,a0,-1292 # 800092a0 <CONSOLE_STATUS+0x290>
    800047b4:	00001097          	auipc	ra,0x1
    800047b8:	9cc080e7          	jalr	-1588(ra) # 80005180 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800047bc:	00000493          	li	s1,0
    800047c0:	f99ff06f          	j	80004758 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800047c4:	00005517          	auipc	a0,0x5
    800047c8:	c9450513          	addi	a0,a0,-876 # 80009458 <CONSOLE_STATUS+0x448>
    800047cc:	00001097          	auipc	ra,0x1
    800047d0:	9b4080e7          	jalr	-1612(ra) # 80005180 <_Z11printStringPKc>
    finishedA = true;
    800047d4:	00100793          	li	a5,1
    800047d8:	00007717          	auipc	a4,0x7
    800047dc:	1cf709a3          	sb	a5,467(a4) # 8000b9ab <_ZL9finishedA>
}
    800047e0:	01813083          	ld	ra,24(sp)
    800047e4:	01013403          	ld	s0,16(sp)
    800047e8:	00813483          	ld	s1,8(sp)
    800047ec:	00013903          	ld	s2,0(sp)
    800047f0:	02010113          	addi	sp,sp,32
    800047f4:	00008067          	ret

00000000800047f8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800047f8:	fd010113          	addi	sp,sp,-48
    800047fc:	02113423          	sd	ra,40(sp)
    80004800:	02813023          	sd	s0,32(sp)
    80004804:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004808:	00000613          	li	a2,0
    8000480c:	00000597          	auipc	a1,0x0
    80004810:	f2058593          	addi	a1,a1,-224 # 8000472c <_ZL11workerBodyAPv>
    80004814:	fd040513          	addi	a0,s0,-48
    80004818:	ffffd097          	auipc	ra,0xffffd
    8000481c:	a0c080e7          	jalr	-1524(ra) # 80001224 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80004820:	00005517          	auipc	a0,0x5
    80004824:	cc850513          	addi	a0,a0,-824 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80004828:	00001097          	auipc	ra,0x1
    8000482c:	958080e7          	jalr	-1704(ra) # 80005180 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004830:	00000613          	li	a2,0
    80004834:	00000597          	auipc	a1,0x0
    80004838:	e2458593          	addi	a1,a1,-476 # 80004658 <_ZL11workerBodyBPv>
    8000483c:	fd840513          	addi	a0,s0,-40
    80004840:	ffffd097          	auipc	ra,0xffffd
    80004844:	9e4080e7          	jalr	-1564(ra) # 80001224 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80004848:	00005517          	auipc	a0,0x5
    8000484c:	cb850513          	addi	a0,a0,-840 # 80009500 <CONSOLE_STATUS+0x4f0>
    80004850:	00001097          	auipc	ra,0x1
    80004854:	930080e7          	jalr	-1744(ra) # 80005180 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004858:	00000613          	li	a2,0
    8000485c:	00000597          	auipc	a1,0x0
    80004860:	c7c58593          	addi	a1,a1,-900 # 800044d8 <_ZL11workerBodyCPv>
    80004864:	fe040513          	addi	a0,s0,-32
    80004868:	ffffd097          	auipc	ra,0xffffd
    8000486c:	9bc080e7          	jalr	-1604(ra) # 80001224 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80004870:	00005517          	auipc	a0,0x5
    80004874:	ca850513          	addi	a0,a0,-856 # 80009518 <CONSOLE_STATUS+0x508>
    80004878:	00001097          	auipc	ra,0x1
    8000487c:	908080e7          	jalr	-1784(ra) # 80005180 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004880:	00000613          	li	a2,0
    80004884:	00000597          	auipc	a1,0x0
    80004888:	b0c58593          	addi	a1,a1,-1268 # 80004390 <_ZL11workerBodyDPv>
    8000488c:	fe840513          	addi	a0,s0,-24
    80004890:	ffffd097          	auipc	ra,0xffffd
    80004894:	994080e7          	jalr	-1644(ra) # 80001224 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80004898:	00005517          	auipc	a0,0x5
    8000489c:	c9850513          	addi	a0,a0,-872 # 80009530 <CONSOLE_STATUS+0x520>
    800048a0:	00001097          	auipc	ra,0x1
    800048a4:	8e0080e7          	jalr	-1824(ra) # 80005180 <_Z11printStringPKc>
    800048a8:	00c0006f          	j	800048b4 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800048ac:	ffffd097          	auipc	ra,0xffffd
    800048b0:	a7c080e7          	jalr	-1412(ra) # 80001328 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800048b4:	00007797          	auipc	a5,0x7
    800048b8:	0f77c783          	lbu	a5,247(a5) # 8000b9ab <_ZL9finishedA>
    800048bc:	fe0788e3          	beqz	a5,800048ac <_Z18Threads_C_API_testv+0xb4>
    800048c0:	00007797          	auipc	a5,0x7
    800048c4:	0ea7c783          	lbu	a5,234(a5) # 8000b9aa <_ZL9finishedB>
    800048c8:	fe0782e3          	beqz	a5,800048ac <_Z18Threads_C_API_testv+0xb4>
    800048cc:	00007797          	auipc	a5,0x7
    800048d0:	0dd7c783          	lbu	a5,221(a5) # 8000b9a9 <_ZL9finishedC>
    800048d4:	fc078ce3          	beqz	a5,800048ac <_Z18Threads_C_API_testv+0xb4>
    800048d8:	00007797          	auipc	a5,0x7
    800048dc:	0d07c783          	lbu	a5,208(a5) # 8000b9a8 <_ZL9finishedD>
    800048e0:	fc0786e3          	beqz	a5,800048ac <_Z18Threads_C_API_testv+0xb4>
    }

}
    800048e4:	02813083          	ld	ra,40(sp)
    800048e8:	02013403          	ld	s0,32(sp)
    800048ec:	03010113          	addi	sp,sp,48
    800048f0:	00008067          	ret

00000000800048f4 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800048f4:	fd010113          	addi	sp,sp,-48
    800048f8:	02113423          	sd	ra,40(sp)
    800048fc:	02813023          	sd	s0,32(sp)
    80004900:	00913c23          	sd	s1,24(sp)
    80004904:	01213823          	sd	s2,16(sp)
    80004908:	01313423          	sd	s3,8(sp)
    8000490c:	03010413          	addi	s0,sp,48
    80004910:	00050993          	mv	s3,a0
    80004914:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004918:	00000913          	li	s2,0
    8000491c:	00c0006f          	j	80004928 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004920:	ffffe097          	auipc	ra,0xffffe
    80004924:	de0080e7          	jalr	-544(ra) # 80002700 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004928:	ffffd097          	auipc	ra,0xffffd
    8000492c:	c08080e7          	jalr	-1016(ra) # 80001530 <_Z4getcv>
    80004930:	0005059b          	sext.w	a1,a0
    80004934:	01b00793          	li	a5,27
    80004938:	02f58a63          	beq	a1,a5,8000496c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000493c:	0084b503          	ld	a0,8(s1)
    80004940:	00001097          	auipc	ra,0x1
    80004944:	c64080e7          	jalr	-924(ra) # 800055a4 <_ZN9BufferCPP3putEi>
        i++;
    80004948:	0019071b          	addiw	a4,s2,1
    8000494c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004950:	0004a683          	lw	a3,0(s1)
    80004954:	0026979b          	slliw	a5,a3,0x2
    80004958:	00d787bb          	addw	a5,a5,a3
    8000495c:	0017979b          	slliw	a5,a5,0x1
    80004960:	02f767bb          	remw	a5,a4,a5
    80004964:	fc0792e3          	bnez	a5,80004928 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004968:	fb9ff06f          	j	80004920 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    8000496c:	00100793          	li	a5,1
    80004970:	00007717          	auipc	a4,0x7
    80004974:	04f72023          	sw	a5,64(a4) # 8000b9b0 <_ZL9threadEnd>
    td->buffer->put('!');
    80004978:	0209b783          	ld	a5,32(s3)
    8000497c:	02100593          	li	a1,33
    80004980:	0087b503          	ld	a0,8(a5)
    80004984:	00001097          	auipc	ra,0x1
    80004988:	c20080e7          	jalr	-992(ra) # 800055a4 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000498c:	0104b503          	ld	a0,16(s1)
    80004990:	ffffe097          	auipc	ra,0xffffe
    80004994:	e28080e7          	jalr	-472(ra) # 800027b8 <_ZN9Semaphore6signalEv>
}
    80004998:	02813083          	ld	ra,40(sp)
    8000499c:	02013403          	ld	s0,32(sp)
    800049a0:	01813483          	ld	s1,24(sp)
    800049a4:	01013903          	ld	s2,16(sp)
    800049a8:	00813983          	ld	s3,8(sp)
    800049ac:	03010113          	addi	sp,sp,48
    800049b0:	00008067          	ret

00000000800049b4 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800049b4:	fe010113          	addi	sp,sp,-32
    800049b8:	00113c23          	sd	ra,24(sp)
    800049bc:	00813823          	sd	s0,16(sp)
    800049c0:	00913423          	sd	s1,8(sp)
    800049c4:	01213023          	sd	s2,0(sp)
    800049c8:	02010413          	addi	s0,sp,32
    800049cc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800049d0:	00000913          	li	s2,0
    800049d4:	00c0006f          	j	800049e0 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800049d8:	ffffe097          	auipc	ra,0xffffe
    800049dc:	d28080e7          	jalr	-728(ra) # 80002700 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800049e0:	00007797          	auipc	a5,0x7
    800049e4:	fd07a783          	lw	a5,-48(a5) # 8000b9b0 <_ZL9threadEnd>
    800049e8:	02079e63          	bnez	a5,80004a24 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800049ec:	0004a583          	lw	a1,0(s1)
    800049f0:	0305859b          	addiw	a1,a1,48
    800049f4:	0084b503          	ld	a0,8(s1)
    800049f8:	00001097          	auipc	ra,0x1
    800049fc:	bac080e7          	jalr	-1108(ra) # 800055a4 <_ZN9BufferCPP3putEi>
        i++;
    80004a00:	0019071b          	addiw	a4,s2,1
    80004a04:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004a08:	0004a683          	lw	a3,0(s1)
    80004a0c:	0026979b          	slliw	a5,a3,0x2
    80004a10:	00d787bb          	addw	a5,a5,a3
    80004a14:	0017979b          	slliw	a5,a5,0x1
    80004a18:	02f767bb          	remw	a5,a4,a5
    80004a1c:	fc0792e3          	bnez	a5,800049e0 <_ZN12ProducerSync8producerEPv+0x2c>
    80004a20:	fb9ff06f          	j	800049d8 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004a24:	0104b503          	ld	a0,16(s1)
    80004a28:	ffffe097          	auipc	ra,0xffffe
    80004a2c:	d90080e7          	jalr	-624(ra) # 800027b8 <_ZN9Semaphore6signalEv>
}
    80004a30:	01813083          	ld	ra,24(sp)
    80004a34:	01013403          	ld	s0,16(sp)
    80004a38:	00813483          	ld	s1,8(sp)
    80004a3c:	00013903          	ld	s2,0(sp)
    80004a40:	02010113          	addi	sp,sp,32
    80004a44:	00008067          	ret

0000000080004a48 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004a48:	fd010113          	addi	sp,sp,-48
    80004a4c:	02113423          	sd	ra,40(sp)
    80004a50:	02813023          	sd	s0,32(sp)
    80004a54:	00913c23          	sd	s1,24(sp)
    80004a58:	01213823          	sd	s2,16(sp)
    80004a5c:	01313423          	sd	s3,8(sp)
    80004a60:	01413023          	sd	s4,0(sp)
    80004a64:	03010413          	addi	s0,sp,48
    80004a68:	00050993          	mv	s3,a0
    80004a6c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004a70:	00000a13          	li	s4,0
    80004a74:	01c0006f          	j	80004a90 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004a78:	ffffe097          	auipc	ra,0xffffe
    80004a7c:	c88080e7          	jalr	-888(ra) # 80002700 <_ZN6Thread8dispatchEv>
    80004a80:	0500006f          	j	80004ad0 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004a84:	00a00513          	li	a0,10
    80004a88:	ffffd097          	auipc	ra,0xffffd
    80004a8c:	ae8080e7          	jalr	-1304(ra) # 80001570 <_Z4putcc>
    while (!threadEnd) {
    80004a90:	00007797          	auipc	a5,0x7
    80004a94:	f207a783          	lw	a5,-224(a5) # 8000b9b0 <_ZL9threadEnd>
    80004a98:	06079263          	bnez	a5,80004afc <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004a9c:	00893503          	ld	a0,8(s2)
    80004aa0:	00001097          	auipc	ra,0x1
    80004aa4:	b94080e7          	jalr	-1132(ra) # 80005634 <_ZN9BufferCPP3getEv>
        i++;
    80004aa8:	001a049b          	addiw	s1,s4,1
    80004aac:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004ab0:	0ff57513          	andi	a0,a0,255
    80004ab4:	ffffd097          	auipc	ra,0xffffd
    80004ab8:	abc080e7          	jalr	-1348(ra) # 80001570 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004abc:	00092703          	lw	a4,0(s2)
    80004ac0:	0027179b          	slliw	a5,a4,0x2
    80004ac4:	00e787bb          	addw	a5,a5,a4
    80004ac8:	02f4e7bb          	remw	a5,s1,a5
    80004acc:	fa0786e3          	beqz	a5,80004a78 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004ad0:	05000793          	li	a5,80
    80004ad4:	02f4e4bb          	remw	s1,s1,a5
    80004ad8:	fa049ce3          	bnez	s1,80004a90 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004adc:	fa9ff06f          	j	80004a84 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004ae0:	0209b783          	ld	a5,32(s3)
    80004ae4:	0087b503          	ld	a0,8(a5)
    80004ae8:	00001097          	auipc	ra,0x1
    80004aec:	b4c080e7          	jalr	-1204(ra) # 80005634 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004af0:	0ff57513          	andi	a0,a0,255
    80004af4:	ffffe097          	auipc	ra,0xffffe
    80004af8:	d80080e7          	jalr	-640(ra) # 80002874 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004afc:	0209b783          	ld	a5,32(s3)
    80004b00:	0087b503          	ld	a0,8(a5)
    80004b04:	00001097          	auipc	ra,0x1
    80004b08:	bbc080e7          	jalr	-1092(ra) # 800056c0 <_ZN9BufferCPP6getCntEv>
    80004b0c:	fca04ae3          	bgtz	a0,80004ae0 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004b10:	01093503          	ld	a0,16(s2)
    80004b14:	ffffe097          	auipc	ra,0xffffe
    80004b18:	ca4080e7          	jalr	-860(ra) # 800027b8 <_ZN9Semaphore6signalEv>
}
    80004b1c:	02813083          	ld	ra,40(sp)
    80004b20:	02013403          	ld	s0,32(sp)
    80004b24:	01813483          	ld	s1,24(sp)
    80004b28:	01013903          	ld	s2,16(sp)
    80004b2c:	00813983          	ld	s3,8(sp)
    80004b30:	00013a03          	ld	s4,0(sp)
    80004b34:	03010113          	addi	sp,sp,48
    80004b38:	00008067          	ret

0000000080004b3c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004b3c:	f8010113          	addi	sp,sp,-128
    80004b40:	06113c23          	sd	ra,120(sp)
    80004b44:	06813823          	sd	s0,112(sp)
    80004b48:	06913423          	sd	s1,104(sp)
    80004b4c:	07213023          	sd	s2,96(sp)
    80004b50:	05313c23          	sd	s3,88(sp)
    80004b54:	05413823          	sd	s4,80(sp)
    80004b58:	05513423          	sd	s5,72(sp)
    80004b5c:	05613023          	sd	s6,64(sp)
    80004b60:	03713c23          	sd	s7,56(sp)
    80004b64:	03813823          	sd	s8,48(sp)
    80004b68:	03913423          	sd	s9,40(sp)
    80004b6c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004b70:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004b74:	00004517          	auipc	a0,0x4
    80004b78:	7f450513          	addi	a0,a0,2036 # 80009368 <CONSOLE_STATUS+0x358>
    80004b7c:	00000097          	auipc	ra,0x0
    80004b80:	604080e7          	jalr	1540(ra) # 80005180 <_Z11printStringPKc>
    getString(input, 30);
    80004b84:	01e00593          	li	a1,30
    80004b88:	f8040493          	addi	s1,s0,-128
    80004b8c:	00048513          	mv	a0,s1
    80004b90:	00000097          	auipc	ra,0x0
    80004b94:	678080e7          	jalr	1656(ra) # 80005208 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004b98:	00048513          	mv	a0,s1
    80004b9c:	00000097          	auipc	ra,0x0
    80004ba0:	744080e7          	jalr	1860(ra) # 800052e0 <_Z11stringToIntPKc>
    80004ba4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004ba8:	00004517          	auipc	a0,0x4
    80004bac:	7e050513          	addi	a0,a0,2016 # 80009388 <CONSOLE_STATUS+0x378>
    80004bb0:	00000097          	auipc	ra,0x0
    80004bb4:	5d0080e7          	jalr	1488(ra) # 80005180 <_Z11printStringPKc>
    getString(input, 30);
    80004bb8:	01e00593          	li	a1,30
    80004bbc:	00048513          	mv	a0,s1
    80004bc0:	00000097          	auipc	ra,0x0
    80004bc4:	648080e7          	jalr	1608(ra) # 80005208 <_Z9getStringPci>
    n = stringToInt(input);
    80004bc8:	00048513          	mv	a0,s1
    80004bcc:	00000097          	auipc	ra,0x0
    80004bd0:	714080e7          	jalr	1812(ra) # 800052e0 <_Z11stringToIntPKc>
    80004bd4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004bd8:	00004517          	auipc	a0,0x4
    80004bdc:	7d050513          	addi	a0,a0,2000 # 800093a8 <CONSOLE_STATUS+0x398>
    80004be0:	00000097          	auipc	ra,0x0
    80004be4:	5a0080e7          	jalr	1440(ra) # 80005180 <_Z11printStringPKc>
    80004be8:	00000613          	li	a2,0
    80004bec:	00a00593          	li	a1,10
    80004bf0:	00090513          	mv	a0,s2
    80004bf4:	00000097          	auipc	ra,0x0
    80004bf8:	73c080e7          	jalr	1852(ra) # 80005330 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004bfc:	00004517          	auipc	a0,0x4
    80004c00:	7c450513          	addi	a0,a0,1988 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80004c04:	00000097          	auipc	ra,0x0
    80004c08:	57c080e7          	jalr	1404(ra) # 80005180 <_Z11printStringPKc>
    80004c0c:	00000613          	li	a2,0
    80004c10:	00a00593          	li	a1,10
    80004c14:	00048513          	mv	a0,s1
    80004c18:	00000097          	auipc	ra,0x0
    80004c1c:	718080e7          	jalr	1816(ra) # 80005330 <_Z8printIntiii>
    printString(".\n");
    80004c20:	00004517          	auipc	a0,0x4
    80004c24:	7b850513          	addi	a0,a0,1976 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80004c28:	00000097          	auipc	ra,0x0
    80004c2c:	558080e7          	jalr	1368(ra) # 80005180 <_Z11printStringPKc>
    if(threadNum > n) {
    80004c30:	0324c463          	blt	s1,s2,80004c58 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004c34:	03205c63          	blez	s2,80004c6c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004c38:	03800513          	li	a0,56
    80004c3c:	ffffd097          	auipc	ra,0xffffd
    80004c40:	768080e7          	jalr	1896(ra) # 800023a4 <_Znwm>
    80004c44:	00050a93          	mv	s5,a0
    80004c48:	00048593          	mv	a1,s1
    80004c4c:	00001097          	auipc	ra,0x1
    80004c50:	804080e7          	jalr	-2044(ra) # 80005450 <_ZN9BufferCPPC1Ei>
    80004c54:	0300006f          	j	80004c84 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004c58:	00004517          	auipc	a0,0x4
    80004c5c:	78850513          	addi	a0,a0,1928 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80004c60:	00000097          	auipc	ra,0x0
    80004c64:	520080e7          	jalr	1312(ra) # 80005180 <_Z11printStringPKc>
        return;
    80004c68:	0140006f          	j	80004c7c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004c6c:	00004517          	auipc	a0,0x4
    80004c70:	7b450513          	addi	a0,a0,1972 # 80009420 <CONSOLE_STATUS+0x410>
    80004c74:	00000097          	auipc	ra,0x0
    80004c78:	50c080e7          	jalr	1292(ra) # 80005180 <_Z11printStringPKc>
        return;
    80004c7c:	000b8113          	mv	sp,s7
    80004c80:	2380006f          	j	80004eb8 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004c84:	01000513          	li	a0,16
    80004c88:	ffffd097          	auipc	ra,0xffffd
    80004c8c:	71c080e7          	jalr	1820(ra) # 800023a4 <_Znwm>
    80004c90:	00050493          	mv	s1,a0
    80004c94:	00000593          	li	a1,0
    80004c98:	ffffe097          	auipc	ra,0xffffe
    80004c9c:	ab8080e7          	jalr	-1352(ra) # 80002750 <_ZN9SemaphoreC1Ej>
    80004ca0:	00007797          	auipc	a5,0x7
    80004ca4:	d097bc23          	sd	s1,-744(a5) # 8000b9b8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004ca8:	00391793          	slli	a5,s2,0x3
    80004cac:	00f78793          	addi	a5,a5,15
    80004cb0:	ff07f793          	andi	a5,a5,-16
    80004cb4:	40f10133          	sub	sp,sp,a5
    80004cb8:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004cbc:	0019071b          	addiw	a4,s2,1
    80004cc0:	00171793          	slli	a5,a4,0x1
    80004cc4:	00e787b3          	add	a5,a5,a4
    80004cc8:	00379793          	slli	a5,a5,0x3
    80004ccc:	00f78793          	addi	a5,a5,15
    80004cd0:	ff07f793          	andi	a5,a5,-16
    80004cd4:	40f10133          	sub	sp,sp,a5
    80004cd8:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004cdc:	00191c13          	slli	s8,s2,0x1
    80004ce0:	012c07b3          	add	a5,s8,s2
    80004ce4:	00379793          	slli	a5,a5,0x3
    80004ce8:	00fa07b3          	add	a5,s4,a5
    80004cec:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004cf0:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004cf4:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004cf8:	02800513          	li	a0,40
    80004cfc:	ffffd097          	auipc	ra,0xffffd
    80004d00:	6a8080e7          	jalr	1704(ra) # 800023a4 <_Znwm>
    80004d04:	00050b13          	mv	s6,a0
    80004d08:	012c0c33          	add	s8,s8,s2
    80004d0c:	003c1c13          	slli	s8,s8,0x3
    80004d10:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004d14:	ffffe097          	auipc	ra,0xffffe
    80004d18:	968080e7          	jalr	-1688(ra) # 8000267c <_ZN6ThreadC1Ev>
    80004d1c:	00007797          	auipc	a5,0x7
    80004d20:	b8c78793          	addi	a5,a5,-1140 # 8000b8a8 <_ZTV12ConsumerSync+0x10>
    80004d24:	00fb3023          	sd	a5,0(s6)
    80004d28:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004d2c:	000b0513          	mv	a0,s6
    80004d30:	ffffe097          	auipc	ra,0xffffe
    80004d34:	97c080e7          	jalr	-1668(ra) # 800026ac <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004d38:	00000493          	li	s1,0
    80004d3c:	0380006f          	j	80004d74 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004d40:	00007797          	auipc	a5,0x7
    80004d44:	b4078793          	addi	a5,a5,-1216 # 8000b880 <_ZTV12ProducerSync+0x10>
    80004d48:	00fcb023          	sd	a5,0(s9)
    80004d4c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004d50:	00349793          	slli	a5,s1,0x3
    80004d54:	00f987b3          	add	a5,s3,a5
    80004d58:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004d5c:	00349793          	slli	a5,s1,0x3
    80004d60:	00f987b3          	add	a5,s3,a5
    80004d64:	0007b503          	ld	a0,0(a5)
    80004d68:	ffffe097          	auipc	ra,0xffffe
    80004d6c:	944080e7          	jalr	-1724(ra) # 800026ac <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004d70:	0014849b          	addiw	s1,s1,1
    80004d74:	0b24d063          	bge	s1,s2,80004e14 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004d78:	00149793          	slli	a5,s1,0x1
    80004d7c:	009787b3          	add	a5,a5,s1
    80004d80:	00379793          	slli	a5,a5,0x3
    80004d84:	00fa07b3          	add	a5,s4,a5
    80004d88:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004d8c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004d90:	00007717          	auipc	a4,0x7
    80004d94:	c2873703          	ld	a4,-984(a4) # 8000b9b8 <_ZL10waitForAll>
    80004d98:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004d9c:	02905863          	blez	s1,80004dcc <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004da0:	02800513          	li	a0,40
    80004da4:	ffffd097          	auipc	ra,0xffffd
    80004da8:	600080e7          	jalr	1536(ra) # 800023a4 <_Znwm>
    80004dac:	00050c93          	mv	s9,a0
    80004db0:	00149c13          	slli	s8,s1,0x1
    80004db4:	009c0c33          	add	s8,s8,s1
    80004db8:	003c1c13          	slli	s8,s8,0x3
    80004dbc:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004dc0:	ffffe097          	auipc	ra,0xffffe
    80004dc4:	8bc080e7          	jalr	-1860(ra) # 8000267c <_ZN6ThreadC1Ev>
    80004dc8:	f79ff06f          	j	80004d40 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004dcc:	02800513          	li	a0,40
    80004dd0:	ffffd097          	auipc	ra,0xffffd
    80004dd4:	5d4080e7          	jalr	1492(ra) # 800023a4 <_Znwm>
    80004dd8:	00050c93          	mv	s9,a0
    80004ddc:	00149c13          	slli	s8,s1,0x1
    80004de0:	009c0c33          	add	s8,s8,s1
    80004de4:	003c1c13          	slli	s8,s8,0x3
    80004de8:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004dec:	ffffe097          	auipc	ra,0xffffe
    80004df0:	890080e7          	jalr	-1904(ra) # 8000267c <_ZN6ThreadC1Ev>
    80004df4:	00007797          	auipc	a5,0x7
    80004df8:	a6478793          	addi	a5,a5,-1436 # 8000b858 <_ZTV16ProducerKeyboard+0x10>
    80004dfc:	00fcb023          	sd	a5,0(s9)
    80004e00:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004e04:	00349793          	slli	a5,s1,0x3
    80004e08:	00f987b3          	add	a5,s3,a5
    80004e0c:	0197b023          	sd	s9,0(a5)
    80004e10:	f4dff06f          	j	80004d5c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004e14:	ffffe097          	auipc	ra,0xffffe
    80004e18:	8ec080e7          	jalr	-1812(ra) # 80002700 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004e1c:	00000493          	li	s1,0
    80004e20:	00994e63          	blt	s2,s1,80004e3c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004e24:	00007517          	auipc	a0,0x7
    80004e28:	b9453503          	ld	a0,-1132(a0) # 8000b9b8 <_ZL10waitForAll>
    80004e2c:	ffffe097          	auipc	ra,0xffffe
    80004e30:	960080e7          	jalr	-1696(ra) # 8000278c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004e34:	0014849b          	addiw	s1,s1,1
    80004e38:	fe9ff06f          	j	80004e20 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004e3c:	00000493          	li	s1,0
    80004e40:	0080006f          	j	80004e48 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004e44:	0014849b          	addiw	s1,s1,1
    80004e48:	0324d263          	bge	s1,s2,80004e6c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004e4c:	00349793          	slli	a5,s1,0x3
    80004e50:	00f987b3          	add	a5,s3,a5
    80004e54:	0007b503          	ld	a0,0(a5)
    80004e58:	fe0506e3          	beqz	a0,80004e44 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004e5c:	00053783          	ld	a5,0(a0)
    80004e60:	0087b783          	ld	a5,8(a5)
    80004e64:	000780e7          	jalr	a5
    80004e68:	fddff06f          	j	80004e44 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004e6c:	000b0a63          	beqz	s6,80004e80 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004e70:	000b3783          	ld	a5,0(s6)
    80004e74:	0087b783          	ld	a5,8(a5)
    80004e78:	000b0513          	mv	a0,s6
    80004e7c:	000780e7          	jalr	a5
    delete waitForAll;
    80004e80:	00007517          	auipc	a0,0x7
    80004e84:	b3853503          	ld	a0,-1224(a0) # 8000b9b8 <_ZL10waitForAll>
    80004e88:	00050863          	beqz	a0,80004e98 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004e8c:	00053783          	ld	a5,0(a0)
    80004e90:	0087b783          	ld	a5,8(a5)
    80004e94:	000780e7          	jalr	a5
    delete buffer;
    80004e98:	000a8e63          	beqz	s5,80004eb4 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004e9c:	000a8513          	mv	a0,s5
    80004ea0:	00001097          	auipc	ra,0x1
    80004ea4:	8a8080e7          	jalr	-1880(ra) # 80005748 <_ZN9BufferCPPD1Ev>
    80004ea8:	000a8513          	mv	a0,s5
    80004eac:	ffffd097          	auipc	ra,0xffffd
    80004eb0:	548080e7          	jalr	1352(ra) # 800023f4 <_ZdlPv>
    80004eb4:	000b8113          	mv	sp,s7

}
    80004eb8:	f8040113          	addi	sp,s0,-128
    80004ebc:	07813083          	ld	ra,120(sp)
    80004ec0:	07013403          	ld	s0,112(sp)
    80004ec4:	06813483          	ld	s1,104(sp)
    80004ec8:	06013903          	ld	s2,96(sp)
    80004ecc:	05813983          	ld	s3,88(sp)
    80004ed0:	05013a03          	ld	s4,80(sp)
    80004ed4:	04813a83          	ld	s5,72(sp)
    80004ed8:	04013b03          	ld	s6,64(sp)
    80004edc:	03813b83          	ld	s7,56(sp)
    80004ee0:	03013c03          	ld	s8,48(sp)
    80004ee4:	02813c83          	ld	s9,40(sp)
    80004ee8:	08010113          	addi	sp,sp,128
    80004eec:	00008067          	ret
    80004ef0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004ef4:	000a8513          	mv	a0,s5
    80004ef8:	ffffd097          	auipc	ra,0xffffd
    80004efc:	4fc080e7          	jalr	1276(ra) # 800023f4 <_ZdlPv>
    80004f00:	00048513          	mv	a0,s1
    80004f04:	00008097          	auipc	ra,0x8
    80004f08:	b94080e7          	jalr	-1132(ra) # 8000ca98 <_Unwind_Resume>
    80004f0c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004f10:	00048513          	mv	a0,s1
    80004f14:	ffffd097          	auipc	ra,0xffffd
    80004f18:	4e0080e7          	jalr	1248(ra) # 800023f4 <_ZdlPv>
    80004f1c:	00090513          	mv	a0,s2
    80004f20:	00008097          	auipc	ra,0x8
    80004f24:	b78080e7          	jalr	-1160(ra) # 8000ca98 <_Unwind_Resume>
    80004f28:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004f2c:	000b0513          	mv	a0,s6
    80004f30:	ffffd097          	auipc	ra,0xffffd
    80004f34:	4c4080e7          	jalr	1220(ra) # 800023f4 <_ZdlPv>
    80004f38:	00048513          	mv	a0,s1
    80004f3c:	00008097          	auipc	ra,0x8
    80004f40:	b5c080e7          	jalr	-1188(ra) # 8000ca98 <_Unwind_Resume>
    80004f44:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004f48:	000c8513          	mv	a0,s9
    80004f4c:	ffffd097          	auipc	ra,0xffffd
    80004f50:	4a8080e7          	jalr	1192(ra) # 800023f4 <_ZdlPv>
    80004f54:	00048513          	mv	a0,s1
    80004f58:	00008097          	auipc	ra,0x8
    80004f5c:	b40080e7          	jalr	-1216(ra) # 8000ca98 <_Unwind_Resume>
    80004f60:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004f64:	000c8513          	mv	a0,s9
    80004f68:	ffffd097          	auipc	ra,0xffffd
    80004f6c:	48c080e7          	jalr	1164(ra) # 800023f4 <_ZdlPv>
    80004f70:	00048513          	mv	a0,s1
    80004f74:	00008097          	auipc	ra,0x8
    80004f78:	b24080e7          	jalr	-1244(ra) # 8000ca98 <_Unwind_Resume>

0000000080004f7c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004f7c:	ff010113          	addi	sp,sp,-16
    80004f80:	00113423          	sd	ra,8(sp)
    80004f84:	00813023          	sd	s0,0(sp)
    80004f88:	01010413          	addi	s0,sp,16
    80004f8c:	00007797          	auipc	a5,0x7
    80004f90:	91c78793          	addi	a5,a5,-1764 # 8000b8a8 <_ZTV12ConsumerSync+0x10>
    80004f94:	00f53023          	sd	a5,0(a0)
    80004f98:	ffffd097          	auipc	ra,0xffffd
    80004f9c:	5c0080e7          	jalr	1472(ra) # 80002558 <_ZN6ThreadD1Ev>
    80004fa0:	00813083          	ld	ra,8(sp)
    80004fa4:	00013403          	ld	s0,0(sp)
    80004fa8:	01010113          	addi	sp,sp,16
    80004fac:	00008067          	ret

0000000080004fb0 <_ZN12ConsumerSyncD0Ev>:
    80004fb0:	fe010113          	addi	sp,sp,-32
    80004fb4:	00113c23          	sd	ra,24(sp)
    80004fb8:	00813823          	sd	s0,16(sp)
    80004fbc:	00913423          	sd	s1,8(sp)
    80004fc0:	02010413          	addi	s0,sp,32
    80004fc4:	00050493          	mv	s1,a0
    80004fc8:	00007797          	auipc	a5,0x7
    80004fcc:	8e078793          	addi	a5,a5,-1824 # 8000b8a8 <_ZTV12ConsumerSync+0x10>
    80004fd0:	00f53023          	sd	a5,0(a0)
    80004fd4:	ffffd097          	auipc	ra,0xffffd
    80004fd8:	584080e7          	jalr	1412(ra) # 80002558 <_ZN6ThreadD1Ev>
    80004fdc:	00048513          	mv	a0,s1
    80004fe0:	ffffd097          	auipc	ra,0xffffd
    80004fe4:	414080e7          	jalr	1044(ra) # 800023f4 <_ZdlPv>
    80004fe8:	01813083          	ld	ra,24(sp)
    80004fec:	01013403          	ld	s0,16(sp)
    80004ff0:	00813483          	ld	s1,8(sp)
    80004ff4:	02010113          	addi	sp,sp,32
    80004ff8:	00008067          	ret

0000000080004ffc <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004ffc:	ff010113          	addi	sp,sp,-16
    80005000:	00113423          	sd	ra,8(sp)
    80005004:	00813023          	sd	s0,0(sp)
    80005008:	01010413          	addi	s0,sp,16
    8000500c:	00007797          	auipc	a5,0x7
    80005010:	87478793          	addi	a5,a5,-1932 # 8000b880 <_ZTV12ProducerSync+0x10>
    80005014:	00f53023          	sd	a5,0(a0)
    80005018:	ffffd097          	auipc	ra,0xffffd
    8000501c:	540080e7          	jalr	1344(ra) # 80002558 <_ZN6ThreadD1Ev>
    80005020:	00813083          	ld	ra,8(sp)
    80005024:	00013403          	ld	s0,0(sp)
    80005028:	01010113          	addi	sp,sp,16
    8000502c:	00008067          	ret

0000000080005030 <_ZN12ProducerSyncD0Ev>:
    80005030:	fe010113          	addi	sp,sp,-32
    80005034:	00113c23          	sd	ra,24(sp)
    80005038:	00813823          	sd	s0,16(sp)
    8000503c:	00913423          	sd	s1,8(sp)
    80005040:	02010413          	addi	s0,sp,32
    80005044:	00050493          	mv	s1,a0
    80005048:	00007797          	auipc	a5,0x7
    8000504c:	83878793          	addi	a5,a5,-1992 # 8000b880 <_ZTV12ProducerSync+0x10>
    80005050:	00f53023          	sd	a5,0(a0)
    80005054:	ffffd097          	auipc	ra,0xffffd
    80005058:	504080e7          	jalr	1284(ra) # 80002558 <_ZN6ThreadD1Ev>
    8000505c:	00048513          	mv	a0,s1
    80005060:	ffffd097          	auipc	ra,0xffffd
    80005064:	394080e7          	jalr	916(ra) # 800023f4 <_ZdlPv>
    80005068:	01813083          	ld	ra,24(sp)
    8000506c:	01013403          	ld	s0,16(sp)
    80005070:	00813483          	ld	s1,8(sp)
    80005074:	02010113          	addi	sp,sp,32
    80005078:	00008067          	ret

000000008000507c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    8000507c:	ff010113          	addi	sp,sp,-16
    80005080:	00113423          	sd	ra,8(sp)
    80005084:	00813023          	sd	s0,0(sp)
    80005088:	01010413          	addi	s0,sp,16
    8000508c:	00006797          	auipc	a5,0x6
    80005090:	7cc78793          	addi	a5,a5,1996 # 8000b858 <_ZTV16ProducerKeyboard+0x10>
    80005094:	00f53023          	sd	a5,0(a0)
    80005098:	ffffd097          	auipc	ra,0xffffd
    8000509c:	4c0080e7          	jalr	1216(ra) # 80002558 <_ZN6ThreadD1Ev>
    800050a0:	00813083          	ld	ra,8(sp)
    800050a4:	00013403          	ld	s0,0(sp)
    800050a8:	01010113          	addi	sp,sp,16
    800050ac:	00008067          	ret

00000000800050b0 <_ZN16ProducerKeyboardD0Ev>:
    800050b0:	fe010113          	addi	sp,sp,-32
    800050b4:	00113c23          	sd	ra,24(sp)
    800050b8:	00813823          	sd	s0,16(sp)
    800050bc:	00913423          	sd	s1,8(sp)
    800050c0:	02010413          	addi	s0,sp,32
    800050c4:	00050493          	mv	s1,a0
    800050c8:	00006797          	auipc	a5,0x6
    800050cc:	79078793          	addi	a5,a5,1936 # 8000b858 <_ZTV16ProducerKeyboard+0x10>
    800050d0:	00f53023          	sd	a5,0(a0)
    800050d4:	ffffd097          	auipc	ra,0xffffd
    800050d8:	484080e7          	jalr	1156(ra) # 80002558 <_ZN6ThreadD1Ev>
    800050dc:	00048513          	mv	a0,s1
    800050e0:	ffffd097          	auipc	ra,0xffffd
    800050e4:	314080e7          	jalr	788(ra) # 800023f4 <_ZdlPv>
    800050e8:	01813083          	ld	ra,24(sp)
    800050ec:	01013403          	ld	s0,16(sp)
    800050f0:	00813483          	ld	s1,8(sp)
    800050f4:	02010113          	addi	sp,sp,32
    800050f8:	00008067          	ret

00000000800050fc <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800050fc:	ff010113          	addi	sp,sp,-16
    80005100:	00113423          	sd	ra,8(sp)
    80005104:	00813023          	sd	s0,0(sp)
    80005108:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    8000510c:	02053583          	ld	a1,32(a0)
    80005110:	fffff097          	auipc	ra,0xfffff
    80005114:	7e4080e7          	jalr	2020(ra) # 800048f4 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005118:	00813083          	ld	ra,8(sp)
    8000511c:	00013403          	ld	s0,0(sp)
    80005120:	01010113          	addi	sp,sp,16
    80005124:	00008067          	ret

0000000080005128 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005128:	ff010113          	addi	sp,sp,-16
    8000512c:	00113423          	sd	ra,8(sp)
    80005130:	00813023          	sd	s0,0(sp)
    80005134:	01010413          	addi	s0,sp,16
        producer(td);
    80005138:	02053583          	ld	a1,32(a0)
    8000513c:	00000097          	auipc	ra,0x0
    80005140:	878080e7          	jalr	-1928(ra) # 800049b4 <_ZN12ProducerSync8producerEPv>
    }
    80005144:	00813083          	ld	ra,8(sp)
    80005148:	00013403          	ld	s0,0(sp)
    8000514c:	01010113          	addi	sp,sp,16
    80005150:	00008067          	ret

0000000080005154 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005154:	ff010113          	addi	sp,sp,-16
    80005158:	00113423          	sd	ra,8(sp)
    8000515c:	00813023          	sd	s0,0(sp)
    80005160:	01010413          	addi	s0,sp,16
        consumer(td);
    80005164:	02053583          	ld	a1,32(a0)
    80005168:	00000097          	auipc	ra,0x0
    8000516c:	8e0080e7          	jalr	-1824(ra) # 80004a48 <_ZN12ConsumerSync8consumerEPv>
    }
    80005170:	00813083          	ld	ra,8(sp)
    80005174:	00013403          	ld	s0,0(sp)
    80005178:	01010113          	addi	sp,sp,16
    8000517c:	00008067          	ret

0000000080005180 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005180:	fe010113          	addi	sp,sp,-32
    80005184:	00113c23          	sd	ra,24(sp)
    80005188:	00813823          	sd	s0,16(sp)
    8000518c:	00913423          	sd	s1,8(sp)
    80005190:	02010413          	addi	s0,sp,32
    80005194:	00050493          	mv	s1,a0
    LOCK();
    80005198:	00100613          	li	a2,1
    8000519c:	00000593          	li	a1,0
    800051a0:	00007517          	auipc	a0,0x7
    800051a4:	82050513          	addi	a0,a0,-2016 # 8000b9c0 <lockPrint>
    800051a8:	ffffc097          	auipc	ra,0xffffc
    800051ac:	f9c080e7          	jalr	-100(ra) # 80001144 <copy_and_swap>
    800051b0:	00050863          	beqz	a0,800051c0 <_Z11printStringPKc+0x40>
    800051b4:	ffffc097          	auipc	ra,0xffffc
    800051b8:	174080e7          	jalr	372(ra) # 80001328 <_Z15thread_dispatchv>
    800051bc:	fddff06f          	j	80005198 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800051c0:	0004c503          	lbu	a0,0(s1)
    800051c4:	00050a63          	beqz	a0,800051d8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800051c8:	ffffc097          	auipc	ra,0xffffc
    800051cc:	3a8080e7          	jalr	936(ra) # 80001570 <_Z4putcc>
        string++;
    800051d0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800051d4:	fedff06f          	j	800051c0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800051d8:	00000613          	li	a2,0
    800051dc:	00100593          	li	a1,1
    800051e0:	00006517          	auipc	a0,0x6
    800051e4:	7e050513          	addi	a0,a0,2016 # 8000b9c0 <lockPrint>
    800051e8:	ffffc097          	auipc	ra,0xffffc
    800051ec:	f5c080e7          	jalr	-164(ra) # 80001144 <copy_and_swap>
    800051f0:	fe0514e3          	bnez	a0,800051d8 <_Z11printStringPKc+0x58>
}
    800051f4:	01813083          	ld	ra,24(sp)
    800051f8:	01013403          	ld	s0,16(sp)
    800051fc:	00813483          	ld	s1,8(sp)
    80005200:	02010113          	addi	sp,sp,32
    80005204:	00008067          	ret

0000000080005208 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005208:	fd010113          	addi	sp,sp,-48
    8000520c:	02113423          	sd	ra,40(sp)
    80005210:	02813023          	sd	s0,32(sp)
    80005214:	00913c23          	sd	s1,24(sp)
    80005218:	01213823          	sd	s2,16(sp)
    8000521c:	01313423          	sd	s3,8(sp)
    80005220:	01413023          	sd	s4,0(sp)
    80005224:	03010413          	addi	s0,sp,48
    80005228:	00050993          	mv	s3,a0
    8000522c:	00058a13          	mv	s4,a1
    LOCK();
    80005230:	00100613          	li	a2,1
    80005234:	00000593          	li	a1,0
    80005238:	00006517          	auipc	a0,0x6
    8000523c:	78850513          	addi	a0,a0,1928 # 8000b9c0 <lockPrint>
    80005240:	ffffc097          	auipc	ra,0xffffc
    80005244:	f04080e7          	jalr	-252(ra) # 80001144 <copy_and_swap>
    80005248:	00050863          	beqz	a0,80005258 <_Z9getStringPci+0x50>
    8000524c:	ffffc097          	auipc	ra,0xffffc
    80005250:	0dc080e7          	jalr	220(ra) # 80001328 <_Z15thread_dispatchv>
    80005254:	fddff06f          	j	80005230 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005258:	00000913          	li	s2,0
    8000525c:	00090493          	mv	s1,s2
    80005260:	0019091b          	addiw	s2,s2,1
    80005264:	03495a63          	bge	s2,s4,80005298 <_Z9getStringPci+0x90>
        cc = getc();
    80005268:	ffffc097          	auipc	ra,0xffffc
    8000526c:	2c8080e7          	jalr	712(ra) # 80001530 <_Z4getcv>
        if(cc < 1)
    80005270:	02050463          	beqz	a0,80005298 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005274:	009984b3          	add	s1,s3,s1
    80005278:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000527c:	00a00793          	li	a5,10
    80005280:	00f50a63          	beq	a0,a5,80005294 <_Z9getStringPci+0x8c>
    80005284:	00d00793          	li	a5,13
    80005288:	fcf51ae3          	bne	a0,a5,8000525c <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000528c:	00090493          	mv	s1,s2
    80005290:	0080006f          	j	80005298 <_Z9getStringPci+0x90>
    80005294:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005298:	009984b3          	add	s1,s3,s1
    8000529c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800052a0:	00000613          	li	a2,0
    800052a4:	00100593          	li	a1,1
    800052a8:	00006517          	auipc	a0,0x6
    800052ac:	71850513          	addi	a0,a0,1816 # 8000b9c0 <lockPrint>
    800052b0:	ffffc097          	auipc	ra,0xffffc
    800052b4:	e94080e7          	jalr	-364(ra) # 80001144 <copy_and_swap>
    800052b8:	fe0514e3          	bnez	a0,800052a0 <_Z9getStringPci+0x98>
    return buf;
}
    800052bc:	00098513          	mv	a0,s3
    800052c0:	02813083          	ld	ra,40(sp)
    800052c4:	02013403          	ld	s0,32(sp)
    800052c8:	01813483          	ld	s1,24(sp)
    800052cc:	01013903          	ld	s2,16(sp)
    800052d0:	00813983          	ld	s3,8(sp)
    800052d4:	00013a03          	ld	s4,0(sp)
    800052d8:	03010113          	addi	sp,sp,48
    800052dc:	00008067          	ret

00000000800052e0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800052e0:	ff010113          	addi	sp,sp,-16
    800052e4:	00813423          	sd	s0,8(sp)
    800052e8:	01010413          	addi	s0,sp,16
    800052ec:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800052f0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800052f4:	0006c603          	lbu	a2,0(a3)
    800052f8:	fd06071b          	addiw	a4,a2,-48
    800052fc:	0ff77713          	andi	a4,a4,255
    80005300:	00900793          	li	a5,9
    80005304:	02e7e063          	bltu	a5,a4,80005324 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005308:	0025179b          	slliw	a5,a0,0x2
    8000530c:	00a787bb          	addw	a5,a5,a0
    80005310:	0017979b          	slliw	a5,a5,0x1
    80005314:	00168693          	addi	a3,a3,1
    80005318:	00c787bb          	addw	a5,a5,a2
    8000531c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005320:	fd5ff06f          	j	800052f4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005324:	00813403          	ld	s0,8(sp)
    80005328:	01010113          	addi	sp,sp,16
    8000532c:	00008067          	ret

0000000080005330 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005330:	fc010113          	addi	sp,sp,-64
    80005334:	02113c23          	sd	ra,56(sp)
    80005338:	02813823          	sd	s0,48(sp)
    8000533c:	02913423          	sd	s1,40(sp)
    80005340:	03213023          	sd	s2,32(sp)
    80005344:	01313c23          	sd	s3,24(sp)
    80005348:	04010413          	addi	s0,sp,64
    8000534c:	00050493          	mv	s1,a0
    80005350:	00058913          	mv	s2,a1
    80005354:	00060993          	mv	s3,a2
    LOCK();
    80005358:	00100613          	li	a2,1
    8000535c:	00000593          	li	a1,0
    80005360:	00006517          	auipc	a0,0x6
    80005364:	66050513          	addi	a0,a0,1632 # 8000b9c0 <lockPrint>
    80005368:	ffffc097          	auipc	ra,0xffffc
    8000536c:	ddc080e7          	jalr	-548(ra) # 80001144 <copy_and_swap>
    80005370:	00050863          	beqz	a0,80005380 <_Z8printIntiii+0x50>
    80005374:	ffffc097          	auipc	ra,0xffffc
    80005378:	fb4080e7          	jalr	-76(ra) # 80001328 <_Z15thread_dispatchv>
    8000537c:	fddff06f          	j	80005358 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005380:	00098463          	beqz	s3,80005388 <_Z8printIntiii+0x58>
    80005384:	0804c463          	bltz	s1,8000540c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005388:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000538c:	00000593          	li	a1,0
    }

    i = 0;
    80005390:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005394:	0009079b          	sext.w	a5,s2
    80005398:	0325773b          	remuw	a4,a0,s2
    8000539c:	00048613          	mv	a2,s1
    800053a0:	0014849b          	addiw	s1,s1,1
    800053a4:	02071693          	slli	a3,a4,0x20
    800053a8:	0206d693          	srli	a3,a3,0x20
    800053ac:	00006717          	auipc	a4,0x6
    800053b0:	51470713          	addi	a4,a4,1300 # 8000b8c0 <digits>
    800053b4:	00d70733          	add	a4,a4,a3
    800053b8:	00074683          	lbu	a3,0(a4)
    800053bc:	fd040713          	addi	a4,s0,-48
    800053c0:	00c70733          	add	a4,a4,a2
    800053c4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800053c8:	0005071b          	sext.w	a4,a0
    800053cc:	0325553b          	divuw	a0,a0,s2
    800053d0:	fcf772e3          	bgeu	a4,a5,80005394 <_Z8printIntiii+0x64>
    if(neg)
    800053d4:	00058c63          	beqz	a1,800053ec <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800053d8:	fd040793          	addi	a5,s0,-48
    800053dc:	009784b3          	add	s1,a5,s1
    800053e0:	02d00793          	li	a5,45
    800053e4:	fef48823          	sb	a5,-16(s1)
    800053e8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800053ec:	fff4849b          	addiw	s1,s1,-1
    800053f0:	0204c463          	bltz	s1,80005418 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800053f4:	fd040793          	addi	a5,s0,-48
    800053f8:	009787b3          	add	a5,a5,s1
    800053fc:	ff07c503          	lbu	a0,-16(a5)
    80005400:	ffffc097          	auipc	ra,0xffffc
    80005404:	170080e7          	jalr	368(ra) # 80001570 <_Z4putcc>
    80005408:	fe5ff06f          	j	800053ec <_Z8printIntiii+0xbc>
        x = -xx;
    8000540c:	4090053b          	negw	a0,s1
        neg = 1;
    80005410:	00100593          	li	a1,1
        x = -xx;
    80005414:	f7dff06f          	j	80005390 <_Z8printIntiii+0x60>

    UNLOCK();
    80005418:	00000613          	li	a2,0
    8000541c:	00100593          	li	a1,1
    80005420:	00006517          	auipc	a0,0x6
    80005424:	5a050513          	addi	a0,a0,1440 # 8000b9c0 <lockPrint>
    80005428:	ffffc097          	auipc	ra,0xffffc
    8000542c:	d1c080e7          	jalr	-740(ra) # 80001144 <copy_and_swap>
    80005430:	fe0514e3          	bnez	a0,80005418 <_Z8printIntiii+0xe8>
    80005434:	03813083          	ld	ra,56(sp)
    80005438:	03013403          	ld	s0,48(sp)
    8000543c:	02813483          	ld	s1,40(sp)
    80005440:	02013903          	ld	s2,32(sp)
    80005444:	01813983          	ld	s3,24(sp)
    80005448:	04010113          	addi	sp,sp,64
    8000544c:	00008067          	ret

0000000080005450 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005450:	fd010113          	addi	sp,sp,-48
    80005454:	02113423          	sd	ra,40(sp)
    80005458:	02813023          	sd	s0,32(sp)
    8000545c:	00913c23          	sd	s1,24(sp)
    80005460:	01213823          	sd	s2,16(sp)
    80005464:	01313423          	sd	s3,8(sp)
    80005468:	03010413          	addi	s0,sp,48
    8000546c:	00050493          	mv	s1,a0
    80005470:	00058913          	mv	s2,a1
    80005474:	0015879b          	addiw	a5,a1,1
    80005478:	0007851b          	sext.w	a0,a5
    8000547c:	00f4a023          	sw	a5,0(s1)
    80005480:	0004a823          	sw	zero,16(s1)
    80005484:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005488:	00251513          	slli	a0,a0,0x2
    8000548c:	ffffc097          	auipc	ra,0xffffc
    80005490:	d0c080e7          	jalr	-756(ra) # 80001198 <_Z9mem_allocm>
    80005494:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005498:	01000513          	li	a0,16
    8000549c:	ffffd097          	auipc	ra,0xffffd
    800054a0:	f08080e7          	jalr	-248(ra) # 800023a4 <_Znwm>
    800054a4:	00050993          	mv	s3,a0
    800054a8:	00000593          	li	a1,0
    800054ac:	ffffd097          	auipc	ra,0xffffd
    800054b0:	2a4080e7          	jalr	676(ra) # 80002750 <_ZN9SemaphoreC1Ej>
    800054b4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800054b8:	01000513          	li	a0,16
    800054bc:	ffffd097          	auipc	ra,0xffffd
    800054c0:	ee8080e7          	jalr	-280(ra) # 800023a4 <_Znwm>
    800054c4:	00050993          	mv	s3,a0
    800054c8:	00090593          	mv	a1,s2
    800054cc:	ffffd097          	auipc	ra,0xffffd
    800054d0:	284080e7          	jalr	644(ra) # 80002750 <_ZN9SemaphoreC1Ej>
    800054d4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800054d8:	01000513          	li	a0,16
    800054dc:	ffffd097          	auipc	ra,0xffffd
    800054e0:	ec8080e7          	jalr	-312(ra) # 800023a4 <_Znwm>
    800054e4:	00050913          	mv	s2,a0
    800054e8:	00100593          	li	a1,1
    800054ec:	ffffd097          	auipc	ra,0xffffd
    800054f0:	264080e7          	jalr	612(ra) # 80002750 <_ZN9SemaphoreC1Ej>
    800054f4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800054f8:	01000513          	li	a0,16
    800054fc:	ffffd097          	auipc	ra,0xffffd
    80005500:	ea8080e7          	jalr	-344(ra) # 800023a4 <_Znwm>
    80005504:	00050913          	mv	s2,a0
    80005508:	00100593          	li	a1,1
    8000550c:	ffffd097          	auipc	ra,0xffffd
    80005510:	244080e7          	jalr	580(ra) # 80002750 <_ZN9SemaphoreC1Ej>
    80005514:	0324b823          	sd	s2,48(s1)
}
    80005518:	02813083          	ld	ra,40(sp)
    8000551c:	02013403          	ld	s0,32(sp)
    80005520:	01813483          	ld	s1,24(sp)
    80005524:	01013903          	ld	s2,16(sp)
    80005528:	00813983          	ld	s3,8(sp)
    8000552c:	03010113          	addi	sp,sp,48
    80005530:	00008067          	ret
    80005534:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005538:	00098513          	mv	a0,s3
    8000553c:	ffffd097          	auipc	ra,0xffffd
    80005540:	eb8080e7          	jalr	-328(ra) # 800023f4 <_ZdlPv>
    80005544:	00048513          	mv	a0,s1
    80005548:	00007097          	auipc	ra,0x7
    8000554c:	550080e7          	jalr	1360(ra) # 8000ca98 <_Unwind_Resume>
    80005550:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005554:	00098513          	mv	a0,s3
    80005558:	ffffd097          	auipc	ra,0xffffd
    8000555c:	e9c080e7          	jalr	-356(ra) # 800023f4 <_ZdlPv>
    80005560:	00048513          	mv	a0,s1
    80005564:	00007097          	auipc	ra,0x7
    80005568:	534080e7          	jalr	1332(ra) # 8000ca98 <_Unwind_Resume>
    8000556c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005570:	00090513          	mv	a0,s2
    80005574:	ffffd097          	auipc	ra,0xffffd
    80005578:	e80080e7          	jalr	-384(ra) # 800023f4 <_ZdlPv>
    8000557c:	00048513          	mv	a0,s1
    80005580:	00007097          	auipc	ra,0x7
    80005584:	518080e7          	jalr	1304(ra) # 8000ca98 <_Unwind_Resume>
    80005588:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000558c:	00090513          	mv	a0,s2
    80005590:	ffffd097          	auipc	ra,0xffffd
    80005594:	e64080e7          	jalr	-412(ra) # 800023f4 <_ZdlPv>
    80005598:	00048513          	mv	a0,s1
    8000559c:	00007097          	auipc	ra,0x7
    800055a0:	4fc080e7          	jalr	1276(ra) # 8000ca98 <_Unwind_Resume>

00000000800055a4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800055a4:	fe010113          	addi	sp,sp,-32
    800055a8:	00113c23          	sd	ra,24(sp)
    800055ac:	00813823          	sd	s0,16(sp)
    800055b0:	00913423          	sd	s1,8(sp)
    800055b4:	01213023          	sd	s2,0(sp)
    800055b8:	02010413          	addi	s0,sp,32
    800055bc:	00050493          	mv	s1,a0
    800055c0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800055c4:	01853503          	ld	a0,24(a0)
    800055c8:	ffffd097          	auipc	ra,0xffffd
    800055cc:	1c4080e7          	jalr	452(ra) # 8000278c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800055d0:	0304b503          	ld	a0,48(s1)
    800055d4:	ffffd097          	auipc	ra,0xffffd
    800055d8:	1b8080e7          	jalr	440(ra) # 8000278c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800055dc:	0084b783          	ld	a5,8(s1)
    800055e0:	0144a703          	lw	a4,20(s1)
    800055e4:	00271713          	slli	a4,a4,0x2
    800055e8:	00e787b3          	add	a5,a5,a4
    800055ec:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800055f0:	0144a783          	lw	a5,20(s1)
    800055f4:	0017879b          	addiw	a5,a5,1
    800055f8:	0004a703          	lw	a4,0(s1)
    800055fc:	02e7e7bb          	remw	a5,a5,a4
    80005600:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005604:	0304b503          	ld	a0,48(s1)
    80005608:	ffffd097          	auipc	ra,0xffffd
    8000560c:	1b0080e7          	jalr	432(ra) # 800027b8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005610:	0204b503          	ld	a0,32(s1)
    80005614:	ffffd097          	auipc	ra,0xffffd
    80005618:	1a4080e7          	jalr	420(ra) # 800027b8 <_ZN9Semaphore6signalEv>

}
    8000561c:	01813083          	ld	ra,24(sp)
    80005620:	01013403          	ld	s0,16(sp)
    80005624:	00813483          	ld	s1,8(sp)
    80005628:	00013903          	ld	s2,0(sp)
    8000562c:	02010113          	addi	sp,sp,32
    80005630:	00008067          	ret

0000000080005634 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005634:	fe010113          	addi	sp,sp,-32
    80005638:	00113c23          	sd	ra,24(sp)
    8000563c:	00813823          	sd	s0,16(sp)
    80005640:	00913423          	sd	s1,8(sp)
    80005644:	01213023          	sd	s2,0(sp)
    80005648:	02010413          	addi	s0,sp,32
    8000564c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005650:	02053503          	ld	a0,32(a0)
    80005654:	ffffd097          	auipc	ra,0xffffd
    80005658:	138080e7          	jalr	312(ra) # 8000278c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000565c:	0284b503          	ld	a0,40(s1)
    80005660:	ffffd097          	auipc	ra,0xffffd
    80005664:	12c080e7          	jalr	300(ra) # 8000278c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005668:	0084b703          	ld	a4,8(s1)
    8000566c:	0104a783          	lw	a5,16(s1)
    80005670:	00279693          	slli	a3,a5,0x2
    80005674:	00d70733          	add	a4,a4,a3
    80005678:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000567c:	0017879b          	addiw	a5,a5,1
    80005680:	0004a703          	lw	a4,0(s1)
    80005684:	02e7e7bb          	remw	a5,a5,a4
    80005688:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000568c:	0284b503          	ld	a0,40(s1)
    80005690:	ffffd097          	auipc	ra,0xffffd
    80005694:	128080e7          	jalr	296(ra) # 800027b8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005698:	0184b503          	ld	a0,24(s1)
    8000569c:	ffffd097          	auipc	ra,0xffffd
    800056a0:	11c080e7          	jalr	284(ra) # 800027b8 <_ZN9Semaphore6signalEv>

    return ret;
}
    800056a4:	00090513          	mv	a0,s2
    800056a8:	01813083          	ld	ra,24(sp)
    800056ac:	01013403          	ld	s0,16(sp)
    800056b0:	00813483          	ld	s1,8(sp)
    800056b4:	00013903          	ld	s2,0(sp)
    800056b8:	02010113          	addi	sp,sp,32
    800056bc:	00008067          	ret

00000000800056c0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800056c0:	fe010113          	addi	sp,sp,-32
    800056c4:	00113c23          	sd	ra,24(sp)
    800056c8:	00813823          	sd	s0,16(sp)
    800056cc:	00913423          	sd	s1,8(sp)
    800056d0:	01213023          	sd	s2,0(sp)
    800056d4:	02010413          	addi	s0,sp,32
    800056d8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800056dc:	02853503          	ld	a0,40(a0)
    800056e0:	ffffd097          	auipc	ra,0xffffd
    800056e4:	0ac080e7          	jalr	172(ra) # 8000278c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800056e8:	0304b503          	ld	a0,48(s1)
    800056ec:	ffffd097          	auipc	ra,0xffffd
    800056f0:	0a0080e7          	jalr	160(ra) # 8000278c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800056f4:	0144a783          	lw	a5,20(s1)
    800056f8:	0104a903          	lw	s2,16(s1)
    800056fc:	0327ce63          	blt	a5,s2,80005738 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005700:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005704:	0304b503          	ld	a0,48(s1)
    80005708:	ffffd097          	auipc	ra,0xffffd
    8000570c:	0b0080e7          	jalr	176(ra) # 800027b8 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005710:	0284b503          	ld	a0,40(s1)
    80005714:	ffffd097          	auipc	ra,0xffffd
    80005718:	0a4080e7          	jalr	164(ra) # 800027b8 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000571c:	00090513          	mv	a0,s2
    80005720:	01813083          	ld	ra,24(sp)
    80005724:	01013403          	ld	s0,16(sp)
    80005728:	00813483          	ld	s1,8(sp)
    8000572c:	00013903          	ld	s2,0(sp)
    80005730:	02010113          	addi	sp,sp,32
    80005734:	00008067          	ret
        ret = cap - head + tail;
    80005738:	0004a703          	lw	a4,0(s1)
    8000573c:	4127093b          	subw	s2,a4,s2
    80005740:	00f9093b          	addw	s2,s2,a5
    80005744:	fc1ff06f          	j	80005704 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005748 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005748:	fe010113          	addi	sp,sp,-32
    8000574c:	00113c23          	sd	ra,24(sp)
    80005750:	00813823          	sd	s0,16(sp)
    80005754:	00913423          	sd	s1,8(sp)
    80005758:	02010413          	addi	s0,sp,32
    8000575c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005760:	00a00513          	li	a0,10
    80005764:	ffffd097          	auipc	ra,0xffffd
    80005768:	110080e7          	jalr	272(ra) # 80002874 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000576c:	00004517          	auipc	a0,0x4
    80005770:	ddc50513          	addi	a0,a0,-548 # 80009548 <CONSOLE_STATUS+0x538>
    80005774:	00000097          	auipc	ra,0x0
    80005778:	a0c080e7          	jalr	-1524(ra) # 80005180 <_Z11printStringPKc>
    while (getCnt()) {
    8000577c:	00048513          	mv	a0,s1
    80005780:	00000097          	auipc	ra,0x0
    80005784:	f40080e7          	jalr	-192(ra) # 800056c0 <_ZN9BufferCPP6getCntEv>
    80005788:	02050c63          	beqz	a0,800057c0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000578c:	0084b783          	ld	a5,8(s1)
    80005790:	0104a703          	lw	a4,16(s1)
    80005794:	00271713          	slli	a4,a4,0x2
    80005798:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000579c:	0007c503          	lbu	a0,0(a5)
    800057a0:	ffffd097          	auipc	ra,0xffffd
    800057a4:	0d4080e7          	jalr	212(ra) # 80002874 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800057a8:	0104a783          	lw	a5,16(s1)
    800057ac:	0017879b          	addiw	a5,a5,1
    800057b0:	0004a703          	lw	a4,0(s1)
    800057b4:	02e7e7bb          	remw	a5,a5,a4
    800057b8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800057bc:	fc1ff06f          	j	8000577c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800057c0:	02100513          	li	a0,33
    800057c4:	ffffd097          	auipc	ra,0xffffd
    800057c8:	0b0080e7          	jalr	176(ra) # 80002874 <_ZN7Console4putcEc>
    Console::putc('\n');
    800057cc:	00a00513          	li	a0,10
    800057d0:	ffffd097          	auipc	ra,0xffffd
    800057d4:	0a4080e7          	jalr	164(ra) # 80002874 <_ZN7Console4putcEc>
    mem_free(buffer);
    800057d8:	0084b503          	ld	a0,8(s1)
    800057dc:	ffffc097          	auipc	ra,0xffffc
    800057e0:	a08080e7          	jalr	-1528(ra) # 800011e4 <_Z8mem_freePv>
    delete itemAvailable;
    800057e4:	0204b503          	ld	a0,32(s1)
    800057e8:	00050863          	beqz	a0,800057f8 <_ZN9BufferCPPD1Ev+0xb0>
    800057ec:	00053783          	ld	a5,0(a0)
    800057f0:	0087b783          	ld	a5,8(a5)
    800057f4:	000780e7          	jalr	a5
    delete spaceAvailable;
    800057f8:	0184b503          	ld	a0,24(s1)
    800057fc:	00050863          	beqz	a0,8000580c <_ZN9BufferCPPD1Ev+0xc4>
    80005800:	00053783          	ld	a5,0(a0)
    80005804:	0087b783          	ld	a5,8(a5)
    80005808:	000780e7          	jalr	a5
    delete mutexTail;
    8000580c:	0304b503          	ld	a0,48(s1)
    80005810:	00050863          	beqz	a0,80005820 <_ZN9BufferCPPD1Ev+0xd8>
    80005814:	00053783          	ld	a5,0(a0)
    80005818:	0087b783          	ld	a5,8(a5)
    8000581c:	000780e7          	jalr	a5
    delete mutexHead;
    80005820:	0284b503          	ld	a0,40(s1)
    80005824:	00050863          	beqz	a0,80005834 <_ZN9BufferCPPD1Ev+0xec>
    80005828:	00053783          	ld	a5,0(a0)
    8000582c:	0087b783          	ld	a5,8(a5)
    80005830:	000780e7          	jalr	a5
}
    80005834:	01813083          	ld	ra,24(sp)
    80005838:	01013403          	ld	s0,16(sp)
    8000583c:	00813483          	ld	s1,8(sp)
    80005840:	02010113          	addi	sp,sp,32
    80005844:	00008067          	ret

0000000080005848 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005848:	fe010113          	addi	sp,sp,-32
    8000584c:	00113c23          	sd	ra,24(sp)
    80005850:	00813823          	sd	s0,16(sp)
    80005854:	00913423          	sd	s1,8(sp)
    80005858:	01213023          	sd	s2,0(sp)
    8000585c:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005860:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005864:	00600493          	li	s1,6
    while (--i > 0) {
    80005868:	fff4849b          	addiw	s1,s1,-1
    8000586c:	04905463          	blez	s1,800058b4 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005870:	00004517          	auipc	a0,0x4
    80005874:	cf050513          	addi	a0,a0,-784 # 80009560 <CONSOLE_STATUS+0x550>
    80005878:	00000097          	auipc	ra,0x0
    8000587c:	908080e7          	jalr	-1784(ra) # 80005180 <_Z11printStringPKc>
        printInt(sleep_time);
    80005880:	00000613          	li	a2,0
    80005884:	00a00593          	li	a1,10
    80005888:	0009051b          	sext.w	a0,s2
    8000588c:	00000097          	auipc	ra,0x0
    80005890:	aa4080e7          	jalr	-1372(ra) # 80005330 <_Z8printIntiii>
        printString(" !\n");
    80005894:	00004517          	auipc	a0,0x4
    80005898:	cd450513          	addi	a0,a0,-812 # 80009568 <CONSOLE_STATUS+0x558>
    8000589c:	00000097          	auipc	ra,0x0
    800058a0:	8e4080e7          	jalr	-1820(ra) # 80005180 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800058a4:	00090513          	mv	a0,s2
    800058a8:	ffffc097          	auipc	ra,0xffffc
    800058ac:	c48080e7          	jalr	-952(ra) # 800014f0 <_Z10time_sleepm>
    while (--i > 0) {
    800058b0:	fb9ff06f          	j	80005868 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800058b4:	00a00793          	li	a5,10
    800058b8:	02f95933          	divu	s2,s2,a5
    800058bc:	fff90913          	addi	s2,s2,-1
    800058c0:	00006797          	auipc	a5,0x6
    800058c4:	10878793          	addi	a5,a5,264 # 8000b9c8 <_ZL8finished>
    800058c8:	01278933          	add	s2,a5,s2
    800058cc:	00100793          	li	a5,1
    800058d0:	00f90023          	sb	a5,0(s2)
}
    800058d4:	01813083          	ld	ra,24(sp)
    800058d8:	01013403          	ld	s0,16(sp)
    800058dc:	00813483          	ld	s1,8(sp)
    800058e0:	00013903          	ld	s2,0(sp)
    800058e4:	02010113          	addi	sp,sp,32
    800058e8:	00008067          	ret

00000000800058ec <_Z12testSleepingv>:

void testSleeping() {
    800058ec:	fc010113          	addi	sp,sp,-64
    800058f0:	02113c23          	sd	ra,56(sp)
    800058f4:	02813823          	sd	s0,48(sp)
    800058f8:	02913423          	sd	s1,40(sp)
    800058fc:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005900:	00a00793          	li	a5,10
    80005904:	fcf43823          	sd	a5,-48(s0)
    80005908:	01400793          	li	a5,20
    8000590c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005910:	00000493          	li	s1,0
    80005914:	02c0006f          	j	80005940 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005918:	00349793          	slli	a5,s1,0x3
    8000591c:	fd040613          	addi	a2,s0,-48
    80005920:	00f60633          	add	a2,a2,a5
    80005924:	00000597          	auipc	a1,0x0
    80005928:	f2458593          	addi	a1,a1,-220 # 80005848 <_ZL9sleepyRunPv>
    8000592c:	fc040513          	addi	a0,s0,-64
    80005930:	00f50533          	add	a0,a0,a5
    80005934:	ffffc097          	auipc	ra,0xffffc
    80005938:	8f0080e7          	jalr	-1808(ra) # 80001224 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000593c:	0014849b          	addiw	s1,s1,1
    80005940:	00100793          	li	a5,1
    80005944:	fc97dae3          	bge	a5,s1,80005918 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005948:	00006797          	auipc	a5,0x6
    8000594c:	0807c783          	lbu	a5,128(a5) # 8000b9c8 <_ZL8finished>
    80005950:	fe078ce3          	beqz	a5,80005948 <_Z12testSleepingv+0x5c>
    80005954:	00006797          	auipc	a5,0x6
    80005958:	0757c783          	lbu	a5,117(a5) # 8000b9c9 <_ZL8finished+0x1>
    8000595c:	fe0786e3          	beqz	a5,80005948 <_Z12testSleepingv+0x5c>
}
    80005960:	03813083          	ld	ra,56(sp)
    80005964:	03013403          	ld	s0,48(sp)
    80005968:	02813483          	ld	s1,40(sp)
    8000596c:	04010113          	addi	sp,sp,64
    80005970:	00008067          	ret

0000000080005974 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005974:	fe010113          	addi	sp,sp,-32
    80005978:	00113c23          	sd	ra,24(sp)
    8000597c:	00813823          	sd	s0,16(sp)
    80005980:	00913423          	sd	s1,8(sp)
    80005984:	01213023          	sd	s2,0(sp)
    80005988:	02010413          	addi	s0,sp,32
    8000598c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005990:	00100793          	li	a5,1
    80005994:	02a7f863          	bgeu	a5,a0,800059c4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005998:	00a00793          	li	a5,10
    8000599c:	02f577b3          	remu	a5,a0,a5
    800059a0:	02078e63          	beqz	a5,800059dc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800059a4:	fff48513          	addi	a0,s1,-1
    800059a8:	00000097          	auipc	ra,0x0
    800059ac:	fcc080e7          	jalr	-52(ra) # 80005974 <_ZL9fibonaccim>
    800059b0:	00050913          	mv	s2,a0
    800059b4:	ffe48513          	addi	a0,s1,-2
    800059b8:	00000097          	auipc	ra,0x0
    800059bc:	fbc080e7          	jalr	-68(ra) # 80005974 <_ZL9fibonaccim>
    800059c0:	00a90533          	add	a0,s2,a0
}
    800059c4:	01813083          	ld	ra,24(sp)
    800059c8:	01013403          	ld	s0,16(sp)
    800059cc:	00813483          	ld	s1,8(sp)
    800059d0:	00013903          	ld	s2,0(sp)
    800059d4:	02010113          	addi	sp,sp,32
    800059d8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800059dc:	ffffc097          	auipc	ra,0xffffc
    800059e0:	94c080e7          	jalr	-1716(ra) # 80001328 <_Z15thread_dispatchv>
    800059e4:	fc1ff06f          	j	800059a4 <_ZL9fibonaccim+0x30>

00000000800059e8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800059e8:	fe010113          	addi	sp,sp,-32
    800059ec:	00113c23          	sd	ra,24(sp)
    800059f0:	00813823          	sd	s0,16(sp)
    800059f4:	00913423          	sd	s1,8(sp)
    800059f8:	01213023          	sd	s2,0(sp)
    800059fc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005a00:	00a00493          	li	s1,10
    80005a04:	0400006f          	j	80005a44 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005a08:	00004517          	auipc	a0,0x4
    80005a0c:	aa850513          	addi	a0,a0,-1368 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80005a10:	fffff097          	auipc	ra,0xfffff
    80005a14:	770080e7          	jalr	1904(ra) # 80005180 <_Z11printStringPKc>
    80005a18:	00000613          	li	a2,0
    80005a1c:	00a00593          	li	a1,10
    80005a20:	00048513          	mv	a0,s1
    80005a24:	00000097          	auipc	ra,0x0
    80005a28:	90c080e7          	jalr	-1780(ra) # 80005330 <_Z8printIntiii>
    80005a2c:	00004517          	auipc	a0,0x4
    80005a30:	87450513          	addi	a0,a0,-1932 # 800092a0 <CONSOLE_STATUS+0x290>
    80005a34:	fffff097          	auipc	ra,0xfffff
    80005a38:	74c080e7          	jalr	1868(ra) # 80005180 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005a3c:	0014849b          	addiw	s1,s1,1
    80005a40:	0ff4f493          	andi	s1,s1,255
    80005a44:	00c00793          	li	a5,12
    80005a48:	fc97f0e3          	bgeu	a5,s1,80005a08 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005a4c:	00004517          	auipc	a0,0x4
    80005a50:	a6c50513          	addi	a0,a0,-1428 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80005a54:	fffff097          	auipc	ra,0xfffff
    80005a58:	72c080e7          	jalr	1836(ra) # 80005180 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005a5c:	00500313          	li	t1,5
    thread_dispatch();
    80005a60:	ffffc097          	auipc	ra,0xffffc
    80005a64:	8c8080e7          	jalr	-1848(ra) # 80001328 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005a68:	01000513          	li	a0,16
    80005a6c:	00000097          	auipc	ra,0x0
    80005a70:	f08080e7          	jalr	-248(ra) # 80005974 <_ZL9fibonaccim>
    80005a74:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005a78:	00004517          	auipc	a0,0x4
    80005a7c:	a5050513          	addi	a0,a0,-1456 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80005a80:	fffff097          	auipc	ra,0xfffff
    80005a84:	700080e7          	jalr	1792(ra) # 80005180 <_Z11printStringPKc>
    80005a88:	00000613          	li	a2,0
    80005a8c:	00a00593          	li	a1,10
    80005a90:	0009051b          	sext.w	a0,s2
    80005a94:	00000097          	auipc	ra,0x0
    80005a98:	89c080e7          	jalr	-1892(ra) # 80005330 <_Z8printIntiii>
    80005a9c:	00004517          	auipc	a0,0x4
    80005aa0:	80450513          	addi	a0,a0,-2044 # 800092a0 <CONSOLE_STATUS+0x290>
    80005aa4:	fffff097          	auipc	ra,0xfffff
    80005aa8:	6dc080e7          	jalr	1756(ra) # 80005180 <_Z11printStringPKc>
    80005aac:	0400006f          	j	80005aec <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005ab0:	00004517          	auipc	a0,0x4
    80005ab4:	a0050513          	addi	a0,a0,-1536 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80005ab8:	fffff097          	auipc	ra,0xfffff
    80005abc:	6c8080e7          	jalr	1736(ra) # 80005180 <_Z11printStringPKc>
    80005ac0:	00000613          	li	a2,0
    80005ac4:	00a00593          	li	a1,10
    80005ac8:	00048513          	mv	a0,s1
    80005acc:	00000097          	auipc	ra,0x0
    80005ad0:	864080e7          	jalr	-1948(ra) # 80005330 <_Z8printIntiii>
    80005ad4:	00003517          	auipc	a0,0x3
    80005ad8:	7cc50513          	addi	a0,a0,1996 # 800092a0 <CONSOLE_STATUS+0x290>
    80005adc:	fffff097          	auipc	ra,0xfffff
    80005ae0:	6a4080e7          	jalr	1700(ra) # 80005180 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005ae4:	0014849b          	addiw	s1,s1,1
    80005ae8:	0ff4f493          	andi	s1,s1,255
    80005aec:	00f00793          	li	a5,15
    80005af0:	fc97f0e3          	bgeu	a5,s1,80005ab0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005af4:	00004517          	auipc	a0,0x4
    80005af8:	9e450513          	addi	a0,a0,-1564 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80005afc:	fffff097          	auipc	ra,0xfffff
    80005b00:	684080e7          	jalr	1668(ra) # 80005180 <_Z11printStringPKc>
    finishedD = true;
    80005b04:	00100793          	li	a5,1
    80005b08:	00006717          	auipc	a4,0x6
    80005b0c:	ecf70123          	sb	a5,-318(a4) # 8000b9ca <_ZL9finishedD>
    thread_dispatch();
    80005b10:	ffffc097          	auipc	ra,0xffffc
    80005b14:	818080e7          	jalr	-2024(ra) # 80001328 <_Z15thread_dispatchv>
}
    80005b18:	01813083          	ld	ra,24(sp)
    80005b1c:	01013403          	ld	s0,16(sp)
    80005b20:	00813483          	ld	s1,8(sp)
    80005b24:	00013903          	ld	s2,0(sp)
    80005b28:	02010113          	addi	sp,sp,32
    80005b2c:	00008067          	ret

0000000080005b30 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005b30:	fe010113          	addi	sp,sp,-32
    80005b34:	00113c23          	sd	ra,24(sp)
    80005b38:	00813823          	sd	s0,16(sp)
    80005b3c:	00913423          	sd	s1,8(sp)
    80005b40:	01213023          	sd	s2,0(sp)
    80005b44:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005b48:	00000493          	li	s1,0
    80005b4c:	0400006f          	j	80005b8c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005b50:	00004517          	auipc	a0,0x4
    80005b54:	93050513          	addi	a0,a0,-1744 # 80009480 <CONSOLE_STATUS+0x470>
    80005b58:	fffff097          	auipc	ra,0xfffff
    80005b5c:	628080e7          	jalr	1576(ra) # 80005180 <_Z11printStringPKc>
    80005b60:	00000613          	li	a2,0
    80005b64:	00a00593          	li	a1,10
    80005b68:	00048513          	mv	a0,s1
    80005b6c:	fffff097          	auipc	ra,0xfffff
    80005b70:	7c4080e7          	jalr	1988(ra) # 80005330 <_Z8printIntiii>
    80005b74:	00003517          	auipc	a0,0x3
    80005b78:	72c50513          	addi	a0,a0,1836 # 800092a0 <CONSOLE_STATUS+0x290>
    80005b7c:	fffff097          	auipc	ra,0xfffff
    80005b80:	604080e7          	jalr	1540(ra) # 80005180 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005b84:	0014849b          	addiw	s1,s1,1
    80005b88:	0ff4f493          	andi	s1,s1,255
    80005b8c:	00200793          	li	a5,2
    80005b90:	fc97f0e3          	bgeu	a5,s1,80005b50 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005b94:	00004517          	auipc	a0,0x4
    80005b98:	8f450513          	addi	a0,a0,-1804 # 80009488 <CONSOLE_STATUS+0x478>
    80005b9c:	fffff097          	auipc	ra,0xfffff
    80005ba0:	5e4080e7          	jalr	1508(ra) # 80005180 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005ba4:	00700313          	li	t1,7
    thread_dispatch();
    80005ba8:	ffffb097          	auipc	ra,0xffffb
    80005bac:	780080e7          	jalr	1920(ra) # 80001328 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005bb0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005bb4:	00004517          	auipc	a0,0x4
    80005bb8:	8e450513          	addi	a0,a0,-1820 # 80009498 <CONSOLE_STATUS+0x488>
    80005bbc:	fffff097          	auipc	ra,0xfffff
    80005bc0:	5c4080e7          	jalr	1476(ra) # 80005180 <_Z11printStringPKc>
    80005bc4:	00000613          	li	a2,0
    80005bc8:	00a00593          	li	a1,10
    80005bcc:	0009051b          	sext.w	a0,s2
    80005bd0:	fffff097          	auipc	ra,0xfffff
    80005bd4:	760080e7          	jalr	1888(ra) # 80005330 <_Z8printIntiii>
    80005bd8:	00003517          	auipc	a0,0x3
    80005bdc:	6c850513          	addi	a0,a0,1736 # 800092a0 <CONSOLE_STATUS+0x290>
    80005be0:	fffff097          	auipc	ra,0xfffff
    80005be4:	5a0080e7          	jalr	1440(ra) # 80005180 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005be8:	00c00513          	li	a0,12
    80005bec:	00000097          	auipc	ra,0x0
    80005bf0:	d88080e7          	jalr	-632(ra) # 80005974 <_ZL9fibonaccim>
    80005bf4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005bf8:	00004517          	auipc	a0,0x4
    80005bfc:	8a850513          	addi	a0,a0,-1880 # 800094a0 <CONSOLE_STATUS+0x490>
    80005c00:	fffff097          	auipc	ra,0xfffff
    80005c04:	580080e7          	jalr	1408(ra) # 80005180 <_Z11printStringPKc>
    80005c08:	00000613          	li	a2,0
    80005c0c:	00a00593          	li	a1,10
    80005c10:	0009051b          	sext.w	a0,s2
    80005c14:	fffff097          	auipc	ra,0xfffff
    80005c18:	71c080e7          	jalr	1820(ra) # 80005330 <_Z8printIntiii>
    80005c1c:	00003517          	auipc	a0,0x3
    80005c20:	68450513          	addi	a0,a0,1668 # 800092a0 <CONSOLE_STATUS+0x290>
    80005c24:	fffff097          	auipc	ra,0xfffff
    80005c28:	55c080e7          	jalr	1372(ra) # 80005180 <_Z11printStringPKc>
    80005c2c:	0400006f          	j	80005c6c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005c30:	00004517          	auipc	a0,0x4
    80005c34:	85050513          	addi	a0,a0,-1968 # 80009480 <CONSOLE_STATUS+0x470>
    80005c38:	fffff097          	auipc	ra,0xfffff
    80005c3c:	548080e7          	jalr	1352(ra) # 80005180 <_Z11printStringPKc>
    80005c40:	00000613          	li	a2,0
    80005c44:	00a00593          	li	a1,10
    80005c48:	00048513          	mv	a0,s1
    80005c4c:	fffff097          	auipc	ra,0xfffff
    80005c50:	6e4080e7          	jalr	1764(ra) # 80005330 <_Z8printIntiii>
    80005c54:	00003517          	auipc	a0,0x3
    80005c58:	64c50513          	addi	a0,a0,1612 # 800092a0 <CONSOLE_STATUS+0x290>
    80005c5c:	fffff097          	auipc	ra,0xfffff
    80005c60:	524080e7          	jalr	1316(ra) # 80005180 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005c64:	0014849b          	addiw	s1,s1,1
    80005c68:	0ff4f493          	andi	s1,s1,255
    80005c6c:	00500793          	li	a5,5
    80005c70:	fc97f0e3          	bgeu	a5,s1,80005c30 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005c74:	00003517          	auipc	a0,0x3
    80005c78:	7e450513          	addi	a0,a0,2020 # 80009458 <CONSOLE_STATUS+0x448>
    80005c7c:	fffff097          	auipc	ra,0xfffff
    80005c80:	504080e7          	jalr	1284(ra) # 80005180 <_Z11printStringPKc>
    finishedC = true;
    80005c84:	00100793          	li	a5,1
    80005c88:	00006717          	auipc	a4,0x6
    80005c8c:	d4f701a3          	sb	a5,-701(a4) # 8000b9cb <_ZL9finishedC>
    thread_dispatch();
    80005c90:	ffffb097          	auipc	ra,0xffffb
    80005c94:	698080e7          	jalr	1688(ra) # 80001328 <_Z15thread_dispatchv>
}
    80005c98:	01813083          	ld	ra,24(sp)
    80005c9c:	01013403          	ld	s0,16(sp)
    80005ca0:	00813483          	ld	s1,8(sp)
    80005ca4:	00013903          	ld	s2,0(sp)
    80005ca8:	02010113          	addi	sp,sp,32
    80005cac:	00008067          	ret

0000000080005cb0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005cb0:	fe010113          	addi	sp,sp,-32
    80005cb4:	00113c23          	sd	ra,24(sp)
    80005cb8:	00813823          	sd	s0,16(sp)
    80005cbc:	00913423          	sd	s1,8(sp)
    80005cc0:	01213023          	sd	s2,0(sp)
    80005cc4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005cc8:	00000913          	li	s2,0
    80005ccc:	0400006f          	j	80005d0c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005cd0:	ffffb097          	auipc	ra,0xffffb
    80005cd4:	658080e7          	jalr	1624(ra) # 80001328 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005cd8:	00148493          	addi	s1,s1,1
    80005cdc:	000027b7          	lui	a5,0x2
    80005ce0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005ce4:	0097ee63          	bltu	a5,s1,80005d00 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005ce8:	00000713          	li	a4,0
    80005cec:	000077b7          	lui	a5,0x7
    80005cf0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005cf4:	fce7eee3          	bltu	a5,a4,80005cd0 <_ZL11workerBodyBPv+0x20>
    80005cf8:	00170713          	addi	a4,a4,1
    80005cfc:	ff1ff06f          	j	80005cec <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005d00:	00a00793          	li	a5,10
    80005d04:	04f90663          	beq	s2,a5,80005d50 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80005d08:	00190913          	addi	s2,s2,1
    80005d0c:	00f00793          	li	a5,15
    80005d10:	0527e463          	bltu	a5,s2,80005d58 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005d14:	00003517          	auipc	a0,0x3
    80005d18:	75450513          	addi	a0,a0,1876 # 80009468 <CONSOLE_STATUS+0x458>
    80005d1c:	fffff097          	auipc	ra,0xfffff
    80005d20:	464080e7          	jalr	1124(ra) # 80005180 <_Z11printStringPKc>
    80005d24:	00000613          	li	a2,0
    80005d28:	00a00593          	li	a1,10
    80005d2c:	0009051b          	sext.w	a0,s2
    80005d30:	fffff097          	auipc	ra,0xfffff
    80005d34:	600080e7          	jalr	1536(ra) # 80005330 <_Z8printIntiii>
    80005d38:	00003517          	auipc	a0,0x3
    80005d3c:	56850513          	addi	a0,a0,1384 # 800092a0 <CONSOLE_STATUS+0x290>
    80005d40:	fffff097          	auipc	ra,0xfffff
    80005d44:	440080e7          	jalr	1088(ra) # 80005180 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005d48:	00000493          	li	s1,0
    80005d4c:	f91ff06f          	j	80005cdc <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005d50:	14102ff3          	csrr	t6,sepc
    80005d54:	fb5ff06f          	j	80005d08 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005d58:	00003517          	auipc	a0,0x3
    80005d5c:	71850513          	addi	a0,a0,1816 # 80009470 <CONSOLE_STATUS+0x460>
    80005d60:	fffff097          	auipc	ra,0xfffff
    80005d64:	420080e7          	jalr	1056(ra) # 80005180 <_Z11printStringPKc>
    finishedB = true;
    80005d68:	00100793          	li	a5,1
    80005d6c:	00006717          	auipc	a4,0x6
    80005d70:	c6f70023          	sb	a5,-928(a4) # 8000b9cc <_ZL9finishedB>
    thread_dispatch();
    80005d74:	ffffb097          	auipc	ra,0xffffb
    80005d78:	5b4080e7          	jalr	1460(ra) # 80001328 <_Z15thread_dispatchv>
}
    80005d7c:	01813083          	ld	ra,24(sp)
    80005d80:	01013403          	ld	s0,16(sp)
    80005d84:	00813483          	ld	s1,8(sp)
    80005d88:	00013903          	ld	s2,0(sp)
    80005d8c:	02010113          	addi	sp,sp,32
    80005d90:	00008067          	ret

0000000080005d94 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005d94:	fe010113          	addi	sp,sp,-32
    80005d98:	00113c23          	sd	ra,24(sp)
    80005d9c:	00813823          	sd	s0,16(sp)
    80005da0:	00913423          	sd	s1,8(sp)
    80005da4:	01213023          	sd	s2,0(sp)
    80005da8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005dac:	00000913          	li	s2,0
    80005db0:	0380006f          	j	80005de8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005db4:	ffffb097          	auipc	ra,0xffffb
    80005db8:	574080e7          	jalr	1396(ra) # 80001328 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005dbc:	00148493          	addi	s1,s1,1
    80005dc0:	000027b7          	lui	a5,0x2
    80005dc4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005dc8:	0097ee63          	bltu	a5,s1,80005de4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005dcc:	00000713          	li	a4,0
    80005dd0:	000077b7          	lui	a5,0x7
    80005dd4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005dd8:	fce7eee3          	bltu	a5,a4,80005db4 <_ZL11workerBodyAPv+0x20>
    80005ddc:	00170713          	addi	a4,a4,1
    80005de0:	ff1ff06f          	j	80005dd0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005de4:	00190913          	addi	s2,s2,1
    80005de8:	00900793          	li	a5,9
    80005dec:	0527e063          	bltu	a5,s2,80005e2c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005df0:	00003517          	auipc	a0,0x3
    80005df4:	66050513          	addi	a0,a0,1632 # 80009450 <CONSOLE_STATUS+0x440>
    80005df8:	fffff097          	auipc	ra,0xfffff
    80005dfc:	388080e7          	jalr	904(ra) # 80005180 <_Z11printStringPKc>
    80005e00:	00000613          	li	a2,0
    80005e04:	00a00593          	li	a1,10
    80005e08:	0009051b          	sext.w	a0,s2
    80005e0c:	fffff097          	auipc	ra,0xfffff
    80005e10:	524080e7          	jalr	1316(ra) # 80005330 <_Z8printIntiii>
    80005e14:	00003517          	auipc	a0,0x3
    80005e18:	48c50513          	addi	a0,a0,1164 # 800092a0 <CONSOLE_STATUS+0x290>
    80005e1c:	fffff097          	auipc	ra,0xfffff
    80005e20:	364080e7          	jalr	868(ra) # 80005180 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005e24:	00000493          	li	s1,0
    80005e28:	f99ff06f          	j	80005dc0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005e2c:	00003517          	auipc	a0,0x3
    80005e30:	62c50513          	addi	a0,a0,1580 # 80009458 <CONSOLE_STATUS+0x448>
    80005e34:	fffff097          	auipc	ra,0xfffff
    80005e38:	34c080e7          	jalr	844(ra) # 80005180 <_Z11printStringPKc>
    finishedA = true;
    80005e3c:	00100793          	li	a5,1
    80005e40:	00006717          	auipc	a4,0x6
    80005e44:	b8f706a3          	sb	a5,-1139(a4) # 8000b9cd <_ZL9finishedA>
}
    80005e48:	01813083          	ld	ra,24(sp)
    80005e4c:	01013403          	ld	s0,16(sp)
    80005e50:	00813483          	ld	s1,8(sp)
    80005e54:	00013903          	ld	s2,0(sp)
    80005e58:	02010113          	addi	sp,sp,32
    80005e5c:	00008067          	ret

0000000080005e60 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005e60:	fd010113          	addi	sp,sp,-48
    80005e64:	02113423          	sd	ra,40(sp)
    80005e68:	02813023          	sd	s0,32(sp)
    80005e6c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005e70:	00000613          	li	a2,0
    80005e74:	00000597          	auipc	a1,0x0
    80005e78:	f2058593          	addi	a1,a1,-224 # 80005d94 <_ZL11workerBodyAPv>
    80005e7c:	fd040513          	addi	a0,s0,-48
    80005e80:	ffffb097          	auipc	ra,0xffffb
    80005e84:	3a4080e7          	jalr	932(ra) # 80001224 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80005e88:	00003517          	auipc	a0,0x3
    80005e8c:	66050513          	addi	a0,a0,1632 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80005e90:	fffff097          	auipc	ra,0xfffff
    80005e94:	2f0080e7          	jalr	752(ra) # 80005180 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005e98:	00000613          	li	a2,0
    80005e9c:	00000597          	auipc	a1,0x0
    80005ea0:	e1458593          	addi	a1,a1,-492 # 80005cb0 <_ZL11workerBodyBPv>
    80005ea4:	fd840513          	addi	a0,s0,-40
    80005ea8:	ffffb097          	auipc	ra,0xffffb
    80005eac:	37c080e7          	jalr	892(ra) # 80001224 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80005eb0:	00003517          	auipc	a0,0x3
    80005eb4:	65050513          	addi	a0,a0,1616 # 80009500 <CONSOLE_STATUS+0x4f0>
    80005eb8:	fffff097          	auipc	ra,0xfffff
    80005ebc:	2c8080e7          	jalr	712(ra) # 80005180 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005ec0:	00000613          	li	a2,0
    80005ec4:	00000597          	auipc	a1,0x0
    80005ec8:	c6c58593          	addi	a1,a1,-916 # 80005b30 <_ZL11workerBodyCPv>
    80005ecc:	fe040513          	addi	a0,s0,-32
    80005ed0:	ffffb097          	auipc	ra,0xffffb
    80005ed4:	354080e7          	jalr	852(ra) # 80001224 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80005ed8:	00003517          	auipc	a0,0x3
    80005edc:	64050513          	addi	a0,a0,1600 # 80009518 <CONSOLE_STATUS+0x508>
    80005ee0:	fffff097          	auipc	ra,0xfffff
    80005ee4:	2a0080e7          	jalr	672(ra) # 80005180 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005ee8:	00000613          	li	a2,0
    80005eec:	00000597          	auipc	a1,0x0
    80005ef0:	afc58593          	addi	a1,a1,-1284 # 800059e8 <_ZL11workerBodyDPv>
    80005ef4:	fe840513          	addi	a0,s0,-24
    80005ef8:	ffffb097          	auipc	ra,0xffffb
    80005efc:	32c080e7          	jalr	812(ra) # 80001224 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80005f00:	00003517          	auipc	a0,0x3
    80005f04:	63050513          	addi	a0,a0,1584 # 80009530 <CONSOLE_STATUS+0x520>
    80005f08:	fffff097          	auipc	ra,0xfffff
    80005f0c:	278080e7          	jalr	632(ra) # 80005180 <_Z11printStringPKc>
    80005f10:	00c0006f          	j	80005f1c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005f14:	ffffb097          	auipc	ra,0xffffb
    80005f18:	414080e7          	jalr	1044(ra) # 80001328 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005f1c:	00006797          	auipc	a5,0x6
    80005f20:	ab17c783          	lbu	a5,-1359(a5) # 8000b9cd <_ZL9finishedA>
    80005f24:	fe0788e3          	beqz	a5,80005f14 <_Z16System_Mode_testv+0xb4>
    80005f28:	00006797          	auipc	a5,0x6
    80005f2c:	aa47c783          	lbu	a5,-1372(a5) # 8000b9cc <_ZL9finishedB>
    80005f30:	fe0782e3          	beqz	a5,80005f14 <_Z16System_Mode_testv+0xb4>
    80005f34:	00006797          	auipc	a5,0x6
    80005f38:	a977c783          	lbu	a5,-1385(a5) # 8000b9cb <_ZL9finishedC>
    80005f3c:	fc078ce3          	beqz	a5,80005f14 <_Z16System_Mode_testv+0xb4>
    80005f40:	00006797          	auipc	a5,0x6
    80005f44:	a8a7c783          	lbu	a5,-1398(a5) # 8000b9ca <_ZL9finishedD>
    80005f48:	fc0786e3          	beqz	a5,80005f14 <_Z16System_Mode_testv+0xb4>
    }

}
    80005f4c:	02813083          	ld	ra,40(sp)
    80005f50:	02013403          	ld	s0,32(sp)
    80005f54:	03010113          	addi	sp,sp,48
    80005f58:	00008067          	ret

0000000080005f5c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005f5c:	fe010113          	addi	sp,sp,-32
    80005f60:	00113c23          	sd	ra,24(sp)
    80005f64:	00813823          	sd	s0,16(sp)
    80005f68:	00913423          	sd	s1,8(sp)
    80005f6c:	01213023          	sd	s2,0(sp)
    80005f70:	02010413          	addi	s0,sp,32
    80005f74:	00050493          	mv	s1,a0
    80005f78:	00058913          	mv	s2,a1
    80005f7c:	0015879b          	addiw	a5,a1,1
    80005f80:	0007851b          	sext.w	a0,a5
    80005f84:	00f4a023          	sw	a5,0(s1)
    80005f88:	0004a823          	sw	zero,16(s1)
    80005f8c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005f90:	00251513          	slli	a0,a0,0x2
    80005f94:	ffffb097          	auipc	ra,0xffffb
    80005f98:	204080e7          	jalr	516(ra) # 80001198 <_Z9mem_allocm>
    80005f9c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005fa0:	00000593          	li	a1,0
    80005fa4:	02048513          	addi	a0,s1,32
    80005fa8:	ffffb097          	auipc	ra,0xffffb
    80005fac:	3bc080e7          	jalr	956(ra) # 80001364 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80005fb0:	00090593          	mv	a1,s2
    80005fb4:	01848513          	addi	a0,s1,24
    80005fb8:	ffffb097          	auipc	ra,0xffffb
    80005fbc:	3ac080e7          	jalr	940(ra) # 80001364 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80005fc0:	00100593          	li	a1,1
    80005fc4:	02848513          	addi	a0,s1,40
    80005fc8:	ffffb097          	auipc	ra,0xffffb
    80005fcc:	39c080e7          	jalr	924(ra) # 80001364 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80005fd0:	00100593          	li	a1,1
    80005fd4:	03048513          	addi	a0,s1,48
    80005fd8:	ffffb097          	auipc	ra,0xffffb
    80005fdc:	38c080e7          	jalr	908(ra) # 80001364 <_Z8sem_openPP4_semj>
}
    80005fe0:	01813083          	ld	ra,24(sp)
    80005fe4:	01013403          	ld	s0,16(sp)
    80005fe8:	00813483          	ld	s1,8(sp)
    80005fec:	00013903          	ld	s2,0(sp)
    80005ff0:	02010113          	addi	sp,sp,32
    80005ff4:	00008067          	ret

0000000080005ff8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005ff8:	fe010113          	addi	sp,sp,-32
    80005ffc:	00113c23          	sd	ra,24(sp)
    80006000:	00813823          	sd	s0,16(sp)
    80006004:	00913423          	sd	s1,8(sp)
    80006008:	01213023          	sd	s2,0(sp)
    8000600c:	02010413          	addi	s0,sp,32
    80006010:	00050493          	mv	s1,a0
    80006014:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006018:	01853503          	ld	a0,24(a0)
    8000601c:	ffffb097          	auipc	ra,0xffffb
    80006020:	3cc080e7          	jalr	972(ra) # 800013e8 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006024:	0304b503          	ld	a0,48(s1)
    80006028:	ffffb097          	auipc	ra,0xffffb
    8000602c:	3c0080e7          	jalr	960(ra) # 800013e8 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006030:	0084b783          	ld	a5,8(s1)
    80006034:	0144a703          	lw	a4,20(s1)
    80006038:	00271713          	slli	a4,a4,0x2
    8000603c:	00e787b3          	add	a5,a5,a4
    80006040:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006044:	0144a783          	lw	a5,20(s1)
    80006048:	0017879b          	addiw	a5,a5,1
    8000604c:	0004a703          	lw	a4,0(s1)
    80006050:	02e7e7bb          	remw	a5,a5,a4
    80006054:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006058:	0304b503          	ld	a0,48(s1)
    8000605c:	ffffb097          	auipc	ra,0xffffb
    80006060:	3cc080e7          	jalr	972(ra) # 80001428 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006064:	0204b503          	ld	a0,32(s1)
    80006068:	ffffb097          	auipc	ra,0xffffb
    8000606c:	3c0080e7          	jalr	960(ra) # 80001428 <_Z10sem_signalP4_sem>

}
    80006070:	01813083          	ld	ra,24(sp)
    80006074:	01013403          	ld	s0,16(sp)
    80006078:	00813483          	ld	s1,8(sp)
    8000607c:	00013903          	ld	s2,0(sp)
    80006080:	02010113          	addi	sp,sp,32
    80006084:	00008067          	ret

0000000080006088 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006088:	fe010113          	addi	sp,sp,-32
    8000608c:	00113c23          	sd	ra,24(sp)
    80006090:	00813823          	sd	s0,16(sp)
    80006094:	00913423          	sd	s1,8(sp)
    80006098:	01213023          	sd	s2,0(sp)
    8000609c:	02010413          	addi	s0,sp,32
    800060a0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800060a4:	02053503          	ld	a0,32(a0)
    800060a8:	ffffb097          	auipc	ra,0xffffb
    800060ac:	340080e7          	jalr	832(ra) # 800013e8 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800060b0:	0284b503          	ld	a0,40(s1)
    800060b4:	ffffb097          	auipc	ra,0xffffb
    800060b8:	334080e7          	jalr	820(ra) # 800013e8 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    800060bc:	0084b703          	ld	a4,8(s1)
    800060c0:	0104a783          	lw	a5,16(s1)
    800060c4:	00279693          	slli	a3,a5,0x2
    800060c8:	00d70733          	add	a4,a4,a3
    800060cc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800060d0:	0017879b          	addiw	a5,a5,1
    800060d4:	0004a703          	lw	a4,0(s1)
    800060d8:	02e7e7bb          	remw	a5,a5,a4
    800060dc:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800060e0:	0284b503          	ld	a0,40(s1)
    800060e4:	ffffb097          	auipc	ra,0xffffb
    800060e8:	344080e7          	jalr	836(ra) # 80001428 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800060ec:	0184b503          	ld	a0,24(s1)
    800060f0:	ffffb097          	auipc	ra,0xffffb
    800060f4:	338080e7          	jalr	824(ra) # 80001428 <_Z10sem_signalP4_sem>

    return ret;
}
    800060f8:	00090513          	mv	a0,s2
    800060fc:	01813083          	ld	ra,24(sp)
    80006100:	01013403          	ld	s0,16(sp)
    80006104:	00813483          	ld	s1,8(sp)
    80006108:	00013903          	ld	s2,0(sp)
    8000610c:	02010113          	addi	sp,sp,32
    80006110:	00008067          	ret

0000000080006114 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006114:	fe010113          	addi	sp,sp,-32
    80006118:	00113c23          	sd	ra,24(sp)
    8000611c:	00813823          	sd	s0,16(sp)
    80006120:	00913423          	sd	s1,8(sp)
    80006124:	01213023          	sd	s2,0(sp)
    80006128:	02010413          	addi	s0,sp,32
    8000612c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006130:	02853503          	ld	a0,40(a0)
    80006134:	ffffb097          	auipc	ra,0xffffb
    80006138:	2b4080e7          	jalr	692(ra) # 800013e8 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    8000613c:	0304b503          	ld	a0,48(s1)
    80006140:	ffffb097          	auipc	ra,0xffffb
    80006144:	2a8080e7          	jalr	680(ra) # 800013e8 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006148:	0144a783          	lw	a5,20(s1)
    8000614c:	0104a903          	lw	s2,16(s1)
    80006150:	0327ce63          	blt	a5,s2,8000618c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006154:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006158:	0304b503          	ld	a0,48(s1)
    8000615c:	ffffb097          	auipc	ra,0xffffb
    80006160:	2cc080e7          	jalr	716(ra) # 80001428 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006164:	0284b503          	ld	a0,40(s1)
    80006168:	ffffb097          	auipc	ra,0xffffb
    8000616c:	2c0080e7          	jalr	704(ra) # 80001428 <_Z10sem_signalP4_sem>

    return ret;
}
    80006170:	00090513          	mv	a0,s2
    80006174:	01813083          	ld	ra,24(sp)
    80006178:	01013403          	ld	s0,16(sp)
    8000617c:	00813483          	ld	s1,8(sp)
    80006180:	00013903          	ld	s2,0(sp)
    80006184:	02010113          	addi	sp,sp,32
    80006188:	00008067          	ret
        ret = cap - head + tail;
    8000618c:	0004a703          	lw	a4,0(s1)
    80006190:	4127093b          	subw	s2,a4,s2
    80006194:	00f9093b          	addw	s2,s2,a5
    80006198:	fc1ff06f          	j	80006158 <_ZN6Buffer6getCntEv+0x44>

000000008000619c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000619c:	fe010113          	addi	sp,sp,-32
    800061a0:	00113c23          	sd	ra,24(sp)
    800061a4:	00813823          	sd	s0,16(sp)
    800061a8:	00913423          	sd	s1,8(sp)
    800061ac:	02010413          	addi	s0,sp,32
    800061b0:	00050493          	mv	s1,a0
    putc('\n');
    800061b4:	00a00513          	li	a0,10
    800061b8:	ffffb097          	auipc	ra,0xffffb
    800061bc:	3b8080e7          	jalr	952(ra) # 80001570 <_Z4putcc>
    printString("Buffer deleted!\n");
    800061c0:	00003517          	auipc	a0,0x3
    800061c4:	38850513          	addi	a0,a0,904 # 80009548 <CONSOLE_STATUS+0x538>
    800061c8:	fffff097          	auipc	ra,0xfffff
    800061cc:	fb8080e7          	jalr	-72(ra) # 80005180 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800061d0:	00048513          	mv	a0,s1
    800061d4:	00000097          	auipc	ra,0x0
    800061d8:	f40080e7          	jalr	-192(ra) # 80006114 <_ZN6Buffer6getCntEv>
    800061dc:	02a05c63          	blez	a0,80006214 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800061e0:	0084b783          	ld	a5,8(s1)
    800061e4:	0104a703          	lw	a4,16(s1)
    800061e8:	00271713          	slli	a4,a4,0x2
    800061ec:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800061f0:	0007c503          	lbu	a0,0(a5)
    800061f4:	ffffb097          	auipc	ra,0xffffb
    800061f8:	37c080e7          	jalr	892(ra) # 80001570 <_Z4putcc>
        head = (head + 1) % cap;
    800061fc:	0104a783          	lw	a5,16(s1)
    80006200:	0017879b          	addiw	a5,a5,1
    80006204:	0004a703          	lw	a4,0(s1)
    80006208:	02e7e7bb          	remw	a5,a5,a4
    8000620c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006210:	fc1ff06f          	j	800061d0 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006214:	02100513          	li	a0,33
    80006218:	ffffb097          	auipc	ra,0xffffb
    8000621c:	358080e7          	jalr	856(ra) # 80001570 <_Z4putcc>
    putc('\n');
    80006220:	00a00513          	li	a0,10
    80006224:	ffffb097          	auipc	ra,0xffffb
    80006228:	34c080e7          	jalr	844(ra) # 80001570 <_Z4putcc>
    mem_free(buffer);
    8000622c:	0084b503          	ld	a0,8(s1)
    80006230:	ffffb097          	auipc	ra,0xffffb
    80006234:	fb4080e7          	jalr	-76(ra) # 800011e4 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006238:	0204b503          	ld	a0,32(s1)
    8000623c:	ffffb097          	auipc	ra,0xffffb
    80006240:	16c080e7          	jalr	364(ra) # 800013a8 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006244:	0184b503          	ld	a0,24(s1)
    80006248:	ffffb097          	auipc	ra,0xffffb
    8000624c:	160080e7          	jalr	352(ra) # 800013a8 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006250:	0304b503          	ld	a0,48(s1)
    80006254:	ffffb097          	auipc	ra,0xffffb
    80006258:	154080e7          	jalr	340(ra) # 800013a8 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    8000625c:	0284b503          	ld	a0,40(s1)
    80006260:	ffffb097          	auipc	ra,0xffffb
    80006264:	148080e7          	jalr	328(ra) # 800013a8 <_Z9sem_closeP4_sem>
}
    80006268:	01813083          	ld	ra,24(sp)
    8000626c:	01013403          	ld	s0,16(sp)
    80006270:	00813483          	ld	s1,8(sp)
    80006274:	02010113          	addi	sp,sp,32
    80006278:	00008067          	ret

000000008000627c <start>:
    8000627c:	ff010113          	addi	sp,sp,-16
    80006280:	00813423          	sd	s0,8(sp)
    80006284:	01010413          	addi	s0,sp,16
    80006288:	300027f3          	csrr	a5,mstatus
    8000628c:	ffffe737          	lui	a4,0xffffe
    80006290:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1bcf>
    80006294:	00e7f7b3          	and	a5,a5,a4
    80006298:	00001737          	lui	a4,0x1
    8000629c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800062a0:	00e7e7b3          	or	a5,a5,a4
    800062a4:	30079073          	csrw	mstatus,a5
    800062a8:	00000797          	auipc	a5,0x0
    800062ac:	16078793          	addi	a5,a5,352 # 80006408 <system_main>
    800062b0:	34179073          	csrw	mepc,a5
    800062b4:	00000793          	li	a5,0
    800062b8:	18079073          	csrw	satp,a5
    800062bc:	000107b7          	lui	a5,0x10
    800062c0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800062c4:	30279073          	csrw	medeleg,a5
    800062c8:	30379073          	csrw	mideleg,a5
    800062cc:	104027f3          	csrr	a5,sie
    800062d0:	2227e793          	ori	a5,a5,546
    800062d4:	10479073          	csrw	sie,a5
    800062d8:	fff00793          	li	a5,-1
    800062dc:	00a7d793          	srli	a5,a5,0xa
    800062e0:	3b079073          	csrw	pmpaddr0,a5
    800062e4:	00f00793          	li	a5,15
    800062e8:	3a079073          	csrw	pmpcfg0,a5
    800062ec:	f14027f3          	csrr	a5,mhartid
    800062f0:	0200c737          	lui	a4,0x200c
    800062f4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800062f8:	0007869b          	sext.w	a3,a5
    800062fc:	00269713          	slli	a4,a3,0x2
    80006300:	000f4637          	lui	a2,0xf4
    80006304:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006308:	00d70733          	add	a4,a4,a3
    8000630c:	0037979b          	slliw	a5,a5,0x3
    80006310:	020046b7          	lui	a3,0x2004
    80006314:	00d787b3          	add	a5,a5,a3
    80006318:	00c585b3          	add	a1,a1,a2
    8000631c:	00371693          	slli	a3,a4,0x3
    80006320:	00005717          	auipc	a4,0x5
    80006324:	6b070713          	addi	a4,a4,1712 # 8000b9d0 <timer_scratch>
    80006328:	00b7b023          	sd	a1,0(a5)
    8000632c:	00d70733          	add	a4,a4,a3
    80006330:	00f73c23          	sd	a5,24(a4)
    80006334:	02c73023          	sd	a2,32(a4)
    80006338:	34071073          	csrw	mscratch,a4
    8000633c:	00000797          	auipc	a5,0x0
    80006340:	6e478793          	addi	a5,a5,1764 # 80006a20 <timervec>
    80006344:	30579073          	csrw	mtvec,a5
    80006348:	300027f3          	csrr	a5,mstatus
    8000634c:	0087e793          	ori	a5,a5,8
    80006350:	30079073          	csrw	mstatus,a5
    80006354:	304027f3          	csrr	a5,mie
    80006358:	0807e793          	ori	a5,a5,128
    8000635c:	30479073          	csrw	mie,a5
    80006360:	f14027f3          	csrr	a5,mhartid
    80006364:	0007879b          	sext.w	a5,a5
    80006368:	00078213          	mv	tp,a5
    8000636c:	30200073          	mret
    80006370:	00813403          	ld	s0,8(sp)
    80006374:	01010113          	addi	sp,sp,16
    80006378:	00008067          	ret

000000008000637c <timerinit>:
    8000637c:	ff010113          	addi	sp,sp,-16
    80006380:	00813423          	sd	s0,8(sp)
    80006384:	01010413          	addi	s0,sp,16
    80006388:	f14027f3          	csrr	a5,mhartid
    8000638c:	0200c737          	lui	a4,0x200c
    80006390:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006394:	0007869b          	sext.w	a3,a5
    80006398:	00269713          	slli	a4,a3,0x2
    8000639c:	000f4637          	lui	a2,0xf4
    800063a0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800063a4:	00d70733          	add	a4,a4,a3
    800063a8:	0037979b          	slliw	a5,a5,0x3
    800063ac:	020046b7          	lui	a3,0x2004
    800063b0:	00d787b3          	add	a5,a5,a3
    800063b4:	00c585b3          	add	a1,a1,a2
    800063b8:	00371693          	slli	a3,a4,0x3
    800063bc:	00005717          	auipc	a4,0x5
    800063c0:	61470713          	addi	a4,a4,1556 # 8000b9d0 <timer_scratch>
    800063c4:	00b7b023          	sd	a1,0(a5)
    800063c8:	00d70733          	add	a4,a4,a3
    800063cc:	00f73c23          	sd	a5,24(a4)
    800063d0:	02c73023          	sd	a2,32(a4)
    800063d4:	34071073          	csrw	mscratch,a4
    800063d8:	00000797          	auipc	a5,0x0
    800063dc:	64878793          	addi	a5,a5,1608 # 80006a20 <timervec>
    800063e0:	30579073          	csrw	mtvec,a5
    800063e4:	300027f3          	csrr	a5,mstatus
    800063e8:	0087e793          	ori	a5,a5,8
    800063ec:	30079073          	csrw	mstatus,a5
    800063f0:	304027f3          	csrr	a5,mie
    800063f4:	0807e793          	ori	a5,a5,128
    800063f8:	30479073          	csrw	mie,a5
    800063fc:	00813403          	ld	s0,8(sp)
    80006400:	01010113          	addi	sp,sp,16
    80006404:	00008067          	ret

0000000080006408 <system_main>:
    80006408:	fe010113          	addi	sp,sp,-32
    8000640c:	00813823          	sd	s0,16(sp)
    80006410:	00913423          	sd	s1,8(sp)
    80006414:	00113c23          	sd	ra,24(sp)
    80006418:	02010413          	addi	s0,sp,32
    8000641c:	00000097          	auipc	ra,0x0
    80006420:	0c4080e7          	jalr	196(ra) # 800064e0 <cpuid>
    80006424:	00005497          	auipc	s1,0x5
    80006428:	4fc48493          	addi	s1,s1,1276 # 8000b920 <started>
    8000642c:	02050263          	beqz	a0,80006450 <system_main+0x48>
    80006430:	0004a783          	lw	a5,0(s1)
    80006434:	0007879b          	sext.w	a5,a5
    80006438:	fe078ce3          	beqz	a5,80006430 <system_main+0x28>
    8000643c:	0ff0000f          	fence
    80006440:	00003517          	auipc	a0,0x3
    80006444:	16050513          	addi	a0,a0,352 # 800095a0 <CONSOLE_STATUS+0x590>
    80006448:	00001097          	auipc	ra,0x1
    8000644c:	a74080e7          	jalr	-1420(ra) # 80006ebc <panic>
    80006450:	00001097          	auipc	ra,0x1
    80006454:	9c8080e7          	jalr	-1592(ra) # 80006e18 <consoleinit>
    80006458:	00001097          	auipc	ra,0x1
    8000645c:	154080e7          	jalr	340(ra) # 800075ac <printfinit>
    80006460:	00003517          	auipc	a0,0x3
    80006464:	e4050513          	addi	a0,a0,-448 # 800092a0 <CONSOLE_STATUS+0x290>
    80006468:	00001097          	auipc	ra,0x1
    8000646c:	ab0080e7          	jalr	-1360(ra) # 80006f18 <__printf>
    80006470:	00003517          	auipc	a0,0x3
    80006474:	10050513          	addi	a0,a0,256 # 80009570 <CONSOLE_STATUS+0x560>
    80006478:	00001097          	auipc	ra,0x1
    8000647c:	aa0080e7          	jalr	-1376(ra) # 80006f18 <__printf>
    80006480:	00003517          	auipc	a0,0x3
    80006484:	e2050513          	addi	a0,a0,-480 # 800092a0 <CONSOLE_STATUS+0x290>
    80006488:	00001097          	auipc	ra,0x1
    8000648c:	a90080e7          	jalr	-1392(ra) # 80006f18 <__printf>
    80006490:	00001097          	auipc	ra,0x1
    80006494:	4a8080e7          	jalr	1192(ra) # 80007938 <kinit>
    80006498:	00000097          	auipc	ra,0x0
    8000649c:	148080e7          	jalr	328(ra) # 800065e0 <trapinit>
    800064a0:	00000097          	auipc	ra,0x0
    800064a4:	16c080e7          	jalr	364(ra) # 8000660c <trapinithart>
    800064a8:	00000097          	auipc	ra,0x0
    800064ac:	5b8080e7          	jalr	1464(ra) # 80006a60 <plicinit>
    800064b0:	00000097          	auipc	ra,0x0
    800064b4:	5d8080e7          	jalr	1496(ra) # 80006a88 <plicinithart>
    800064b8:	00000097          	auipc	ra,0x0
    800064bc:	078080e7          	jalr	120(ra) # 80006530 <userinit>
    800064c0:	0ff0000f          	fence
    800064c4:	00100793          	li	a5,1
    800064c8:	00003517          	auipc	a0,0x3
    800064cc:	0c050513          	addi	a0,a0,192 # 80009588 <CONSOLE_STATUS+0x578>
    800064d0:	00f4a023          	sw	a5,0(s1)
    800064d4:	00001097          	auipc	ra,0x1
    800064d8:	a44080e7          	jalr	-1468(ra) # 80006f18 <__printf>
    800064dc:	0000006f          	j	800064dc <system_main+0xd4>

00000000800064e0 <cpuid>:
    800064e0:	ff010113          	addi	sp,sp,-16
    800064e4:	00813423          	sd	s0,8(sp)
    800064e8:	01010413          	addi	s0,sp,16
    800064ec:	00020513          	mv	a0,tp
    800064f0:	00813403          	ld	s0,8(sp)
    800064f4:	0005051b          	sext.w	a0,a0
    800064f8:	01010113          	addi	sp,sp,16
    800064fc:	00008067          	ret

0000000080006500 <mycpu>:
    80006500:	ff010113          	addi	sp,sp,-16
    80006504:	00813423          	sd	s0,8(sp)
    80006508:	01010413          	addi	s0,sp,16
    8000650c:	00020793          	mv	a5,tp
    80006510:	00813403          	ld	s0,8(sp)
    80006514:	0007879b          	sext.w	a5,a5
    80006518:	00779793          	slli	a5,a5,0x7
    8000651c:	00006517          	auipc	a0,0x6
    80006520:	4e450513          	addi	a0,a0,1252 # 8000ca00 <cpus>
    80006524:	00f50533          	add	a0,a0,a5
    80006528:	01010113          	addi	sp,sp,16
    8000652c:	00008067          	ret

0000000080006530 <userinit>:
    80006530:	ff010113          	addi	sp,sp,-16
    80006534:	00813423          	sd	s0,8(sp)
    80006538:	01010413          	addi	s0,sp,16
    8000653c:	00813403          	ld	s0,8(sp)
    80006540:	01010113          	addi	sp,sp,16
    80006544:	ffffc317          	auipc	t1,0xffffc
    80006548:	f3c30067          	jr	-196(t1) # 80002480 <main>

000000008000654c <either_copyout>:
    8000654c:	ff010113          	addi	sp,sp,-16
    80006550:	00813023          	sd	s0,0(sp)
    80006554:	00113423          	sd	ra,8(sp)
    80006558:	01010413          	addi	s0,sp,16
    8000655c:	02051663          	bnez	a0,80006588 <either_copyout+0x3c>
    80006560:	00058513          	mv	a0,a1
    80006564:	00060593          	mv	a1,a2
    80006568:	0006861b          	sext.w	a2,a3
    8000656c:	00002097          	auipc	ra,0x2
    80006570:	c58080e7          	jalr	-936(ra) # 800081c4 <__memmove>
    80006574:	00813083          	ld	ra,8(sp)
    80006578:	00013403          	ld	s0,0(sp)
    8000657c:	00000513          	li	a0,0
    80006580:	01010113          	addi	sp,sp,16
    80006584:	00008067          	ret
    80006588:	00003517          	auipc	a0,0x3
    8000658c:	04050513          	addi	a0,a0,64 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80006590:	00001097          	auipc	ra,0x1
    80006594:	92c080e7          	jalr	-1748(ra) # 80006ebc <panic>

0000000080006598 <either_copyin>:
    80006598:	ff010113          	addi	sp,sp,-16
    8000659c:	00813023          	sd	s0,0(sp)
    800065a0:	00113423          	sd	ra,8(sp)
    800065a4:	01010413          	addi	s0,sp,16
    800065a8:	02059463          	bnez	a1,800065d0 <either_copyin+0x38>
    800065ac:	00060593          	mv	a1,a2
    800065b0:	0006861b          	sext.w	a2,a3
    800065b4:	00002097          	auipc	ra,0x2
    800065b8:	c10080e7          	jalr	-1008(ra) # 800081c4 <__memmove>
    800065bc:	00813083          	ld	ra,8(sp)
    800065c0:	00013403          	ld	s0,0(sp)
    800065c4:	00000513          	li	a0,0
    800065c8:	01010113          	addi	sp,sp,16
    800065cc:	00008067          	ret
    800065d0:	00003517          	auipc	a0,0x3
    800065d4:	02050513          	addi	a0,a0,32 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800065d8:	00001097          	auipc	ra,0x1
    800065dc:	8e4080e7          	jalr	-1820(ra) # 80006ebc <panic>

00000000800065e0 <trapinit>:
    800065e0:	ff010113          	addi	sp,sp,-16
    800065e4:	00813423          	sd	s0,8(sp)
    800065e8:	01010413          	addi	s0,sp,16
    800065ec:	00813403          	ld	s0,8(sp)
    800065f0:	00003597          	auipc	a1,0x3
    800065f4:	02858593          	addi	a1,a1,40 # 80009618 <CONSOLE_STATUS+0x608>
    800065f8:	00006517          	auipc	a0,0x6
    800065fc:	48850513          	addi	a0,a0,1160 # 8000ca80 <tickslock>
    80006600:	01010113          	addi	sp,sp,16
    80006604:	00001317          	auipc	t1,0x1
    80006608:	5c430067          	jr	1476(t1) # 80007bc8 <initlock>

000000008000660c <trapinithart>:
    8000660c:	ff010113          	addi	sp,sp,-16
    80006610:	00813423          	sd	s0,8(sp)
    80006614:	01010413          	addi	s0,sp,16
    80006618:	00000797          	auipc	a5,0x0
    8000661c:	2f878793          	addi	a5,a5,760 # 80006910 <kernelvec>
    80006620:	10579073          	csrw	stvec,a5
    80006624:	00813403          	ld	s0,8(sp)
    80006628:	01010113          	addi	sp,sp,16
    8000662c:	00008067          	ret

0000000080006630 <usertrap>:
    80006630:	ff010113          	addi	sp,sp,-16
    80006634:	00813423          	sd	s0,8(sp)
    80006638:	01010413          	addi	s0,sp,16
    8000663c:	00813403          	ld	s0,8(sp)
    80006640:	01010113          	addi	sp,sp,16
    80006644:	00008067          	ret

0000000080006648 <usertrapret>:
    80006648:	ff010113          	addi	sp,sp,-16
    8000664c:	00813423          	sd	s0,8(sp)
    80006650:	01010413          	addi	s0,sp,16
    80006654:	00813403          	ld	s0,8(sp)
    80006658:	01010113          	addi	sp,sp,16
    8000665c:	00008067          	ret

0000000080006660 <kerneltrap>:
    80006660:	fe010113          	addi	sp,sp,-32
    80006664:	00813823          	sd	s0,16(sp)
    80006668:	00113c23          	sd	ra,24(sp)
    8000666c:	00913423          	sd	s1,8(sp)
    80006670:	02010413          	addi	s0,sp,32
    80006674:	142025f3          	csrr	a1,scause
    80006678:	100027f3          	csrr	a5,sstatus
    8000667c:	0027f793          	andi	a5,a5,2
    80006680:	10079c63          	bnez	a5,80006798 <kerneltrap+0x138>
    80006684:	142027f3          	csrr	a5,scause
    80006688:	0207ce63          	bltz	a5,800066c4 <kerneltrap+0x64>
    8000668c:	00003517          	auipc	a0,0x3
    80006690:	fd450513          	addi	a0,a0,-44 # 80009660 <CONSOLE_STATUS+0x650>
    80006694:	00001097          	auipc	ra,0x1
    80006698:	884080e7          	jalr	-1916(ra) # 80006f18 <__printf>
    8000669c:	141025f3          	csrr	a1,sepc
    800066a0:	14302673          	csrr	a2,stval
    800066a4:	00003517          	auipc	a0,0x3
    800066a8:	fcc50513          	addi	a0,a0,-52 # 80009670 <CONSOLE_STATUS+0x660>
    800066ac:	00001097          	auipc	ra,0x1
    800066b0:	86c080e7          	jalr	-1940(ra) # 80006f18 <__printf>
    800066b4:	00003517          	auipc	a0,0x3
    800066b8:	fd450513          	addi	a0,a0,-44 # 80009688 <CONSOLE_STATUS+0x678>
    800066bc:	00001097          	auipc	ra,0x1
    800066c0:	800080e7          	jalr	-2048(ra) # 80006ebc <panic>
    800066c4:	0ff7f713          	andi	a4,a5,255
    800066c8:	00900693          	li	a3,9
    800066cc:	04d70063          	beq	a4,a3,8000670c <kerneltrap+0xac>
    800066d0:	fff00713          	li	a4,-1
    800066d4:	03f71713          	slli	a4,a4,0x3f
    800066d8:	00170713          	addi	a4,a4,1
    800066dc:	fae798e3          	bne	a5,a4,8000668c <kerneltrap+0x2c>
    800066e0:	00000097          	auipc	ra,0x0
    800066e4:	e00080e7          	jalr	-512(ra) # 800064e0 <cpuid>
    800066e8:	06050663          	beqz	a0,80006754 <kerneltrap+0xf4>
    800066ec:	144027f3          	csrr	a5,sip
    800066f0:	ffd7f793          	andi	a5,a5,-3
    800066f4:	14479073          	csrw	sip,a5
    800066f8:	01813083          	ld	ra,24(sp)
    800066fc:	01013403          	ld	s0,16(sp)
    80006700:	00813483          	ld	s1,8(sp)
    80006704:	02010113          	addi	sp,sp,32
    80006708:	00008067          	ret
    8000670c:	00000097          	auipc	ra,0x0
    80006710:	3c8080e7          	jalr	968(ra) # 80006ad4 <plic_claim>
    80006714:	00a00793          	li	a5,10
    80006718:	00050493          	mv	s1,a0
    8000671c:	06f50863          	beq	a0,a5,8000678c <kerneltrap+0x12c>
    80006720:	fc050ce3          	beqz	a0,800066f8 <kerneltrap+0x98>
    80006724:	00050593          	mv	a1,a0
    80006728:	00003517          	auipc	a0,0x3
    8000672c:	f1850513          	addi	a0,a0,-232 # 80009640 <CONSOLE_STATUS+0x630>
    80006730:	00000097          	auipc	ra,0x0
    80006734:	7e8080e7          	jalr	2024(ra) # 80006f18 <__printf>
    80006738:	01013403          	ld	s0,16(sp)
    8000673c:	01813083          	ld	ra,24(sp)
    80006740:	00048513          	mv	a0,s1
    80006744:	00813483          	ld	s1,8(sp)
    80006748:	02010113          	addi	sp,sp,32
    8000674c:	00000317          	auipc	t1,0x0
    80006750:	3c030067          	jr	960(t1) # 80006b0c <plic_complete>
    80006754:	00006517          	auipc	a0,0x6
    80006758:	32c50513          	addi	a0,a0,812 # 8000ca80 <tickslock>
    8000675c:	00001097          	auipc	ra,0x1
    80006760:	490080e7          	jalr	1168(ra) # 80007bec <acquire>
    80006764:	00005717          	auipc	a4,0x5
    80006768:	1c070713          	addi	a4,a4,448 # 8000b924 <ticks>
    8000676c:	00072783          	lw	a5,0(a4)
    80006770:	00006517          	auipc	a0,0x6
    80006774:	31050513          	addi	a0,a0,784 # 8000ca80 <tickslock>
    80006778:	0017879b          	addiw	a5,a5,1
    8000677c:	00f72023          	sw	a5,0(a4)
    80006780:	00001097          	auipc	ra,0x1
    80006784:	538080e7          	jalr	1336(ra) # 80007cb8 <release>
    80006788:	f65ff06f          	j	800066ec <kerneltrap+0x8c>
    8000678c:	00001097          	auipc	ra,0x1
    80006790:	094080e7          	jalr	148(ra) # 80007820 <uartintr>
    80006794:	fa5ff06f          	j	80006738 <kerneltrap+0xd8>
    80006798:	00003517          	auipc	a0,0x3
    8000679c:	e8850513          	addi	a0,a0,-376 # 80009620 <CONSOLE_STATUS+0x610>
    800067a0:	00000097          	auipc	ra,0x0
    800067a4:	71c080e7          	jalr	1820(ra) # 80006ebc <panic>

00000000800067a8 <clockintr>:
    800067a8:	fe010113          	addi	sp,sp,-32
    800067ac:	00813823          	sd	s0,16(sp)
    800067b0:	00913423          	sd	s1,8(sp)
    800067b4:	00113c23          	sd	ra,24(sp)
    800067b8:	02010413          	addi	s0,sp,32
    800067bc:	00006497          	auipc	s1,0x6
    800067c0:	2c448493          	addi	s1,s1,708 # 8000ca80 <tickslock>
    800067c4:	00048513          	mv	a0,s1
    800067c8:	00001097          	auipc	ra,0x1
    800067cc:	424080e7          	jalr	1060(ra) # 80007bec <acquire>
    800067d0:	00005717          	auipc	a4,0x5
    800067d4:	15470713          	addi	a4,a4,340 # 8000b924 <ticks>
    800067d8:	00072783          	lw	a5,0(a4)
    800067dc:	01013403          	ld	s0,16(sp)
    800067e0:	01813083          	ld	ra,24(sp)
    800067e4:	00048513          	mv	a0,s1
    800067e8:	0017879b          	addiw	a5,a5,1
    800067ec:	00813483          	ld	s1,8(sp)
    800067f0:	00f72023          	sw	a5,0(a4)
    800067f4:	02010113          	addi	sp,sp,32
    800067f8:	00001317          	auipc	t1,0x1
    800067fc:	4c030067          	jr	1216(t1) # 80007cb8 <release>

0000000080006800 <devintr>:
    80006800:	142027f3          	csrr	a5,scause
    80006804:	00000513          	li	a0,0
    80006808:	0007c463          	bltz	a5,80006810 <devintr+0x10>
    8000680c:	00008067          	ret
    80006810:	fe010113          	addi	sp,sp,-32
    80006814:	00813823          	sd	s0,16(sp)
    80006818:	00113c23          	sd	ra,24(sp)
    8000681c:	00913423          	sd	s1,8(sp)
    80006820:	02010413          	addi	s0,sp,32
    80006824:	0ff7f713          	andi	a4,a5,255
    80006828:	00900693          	li	a3,9
    8000682c:	04d70c63          	beq	a4,a3,80006884 <devintr+0x84>
    80006830:	fff00713          	li	a4,-1
    80006834:	03f71713          	slli	a4,a4,0x3f
    80006838:	00170713          	addi	a4,a4,1
    8000683c:	00e78c63          	beq	a5,a4,80006854 <devintr+0x54>
    80006840:	01813083          	ld	ra,24(sp)
    80006844:	01013403          	ld	s0,16(sp)
    80006848:	00813483          	ld	s1,8(sp)
    8000684c:	02010113          	addi	sp,sp,32
    80006850:	00008067          	ret
    80006854:	00000097          	auipc	ra,0x0
    80006858:	c8c080e7          	jalr	-884(ra) # 800064e0 <cpuid>
    8000685c:	06050663          	beqz	a0,800068c8 <devintr+0xc8>
    80006860:	144027f3          	csrr	a5,sip
    80006864:	ffd7f793          	andi	a5,a5,-3
    80006868:	14479073          	csrw	sip,a5
    8000686c:	01813083          	ld	ra,24(sp)
    80006870:	01013403          	ld	s0,16(sp)
    80006874:	00813483          	ld	s1,8(sp)
    80006878:	00200513          	li	a0,2
    8000687c:	02010113          	addi	sp,sp,32
    80006880:	00008067          	ret
    80006884:	00000097          	auipc	ra,0x0
    80006888:	250080e7          	jalr	592(ra) # 80006ad4 <plic_claim>
    8000688c:	00a00793          	li	a5,10
    80006890:	00050493          	mv	s1,a0
    80006894:	06f50663          	beq	a0,a5,80006900 <devintr+0x100>
    80006898:	00100513          	li	a0,1
    8000689c:	fa0482e3          	beqz	s1,80006840 <devintr+0x40>
    800068a0:	00048593          	mv	a1,s1
    800068a4:	00003517          	auipc	a0,0x3
    800068a8:	d9c50513          	addi	a0,a0,-612 # 80009640 <CONSOLE_STATUS+0x630>
    800068ac:	00000097          	auipc	ra,0x0
    800068b0:	66c080e7          	jalr	1644(ra) # 80006f18 <__printf>
    800068b4:	00048513          	mv	a0,s1
    800068b8:	00000097          	auipc	ra,0x0
    800068bc:	254080e7          	jalr	596(ra) # 80006b0c <plic_complete>
    800068c0:	00100513          	li	a0,1
    800068c4:	f7dff06f          	j	80006840 <devintr+0x40>
    800068c8:	00006517          	auipc	a0,0x6
    800068cc:	1b850513          	addi	a0,a0,440 # 8000ca80 <tickslock>
    800068d0:	00001097          	auipc	ra,0x1
    800068d4:	31c080e7          	jalr	796(ra) # 80007bec <acquire>
    800068d8:	00005717          	auipc	a4,0x5
    800068dc:	04c70713          	addi	a4,a4,76 # 8000b924 <ticks>
    800068e0:	00072783          	lw	a5,0(a4)
    800068e4:	00006517          	auipc	a0,0x6
    800068e8:	19c50513          	addi	a0,a0,412 # 8000ca80 <tickslock>
    800068ec:	0017879b          	addiw	a5,a5,1
    800068f0:	00f72023          	sw	a5,0(a4)
    800068f4:	00001097          	auipc	ra,0x1
    800068f8:	3c4080e7          	jalr	964(ra) # 80007cb8 <release>
    800068fc:	f65ff06f          	j	80006860 <devintr+0x60>
    80006900:	00001097          	auipc	ra,0x1
    80006904:	f20080e7          	jalr	-224(ra) # 80007820 <uartintr>
    80006908:	fadff06f          	j	800068b4 <devintr+0xb4>
    8000690c:	0000                	unimp
	...

0000000080006910 <kernelvec>:
    80006910:	f0010113          	addi	sp,sp,-256
    80006914:	00113023          	sd	ra,0(sp)
    80006918:	00213423          	sd	sp,8(sp)
    8000691c:	00313823          	sd	gp,16(sp)
    80006920:	00413c23          	sd	tp,24(sp)
    80006924:	02513023          	sd	t0,32(sp)
    80006928:	02613423          	sd	t1,40(sp)
    8000692c:	02713823          	sd	t2,48(sp)
    80006930:	02813c23          	sd	s0,56(sp)
    80006934:	04913023          	sd	s1,64(sp)
    80006938:	04a13423          	sd	a0,72(sp)
    8000693c:	04b13823          	sd	a1,80(sp)
    80006940:	04c13c23          	sd	a2,88(sp)
    80006944:	06d13023          	sd	a3,96(sp)
    80006948:	06e13423          	sd	a4,104(sp)
    8000694c:	06f13823          	sd	a5,112(sp)
    80006950:	07013c23          	sd	a6,120(sp)
    80006954:	09113023          	sd	a7,128(sp)
    80006958:	09213423          	sd	s2,136(sp)
    8000695c:	09313823          	sd	s3,144(sp)
    80006960:	09413c23          	sd	s4,152(sp)
    80006964:	0b513023          	sd	s5,160(sp)
    80006968:	0b613423          	sd	s6,168(sp)
    8000696c:	0b713823          	sd	s7,176(sp)
    80006970:	0b813c23          	sd	s8,184(sp)
    80006974:	0d913023          	sd	s9,192(sp)
    80006978:	0da13423          	sd	s10,200(sp)
    8000697c:	0db13823          	sd	s11,208(sp)
    80006980:	0dc13c23          	sd	t3,216(sp)
    80006984:	0fd13023          	sd	t4,224(sp)
    80006988:	0fe13423          	sd	t5,232(sp)
    8000698c:	0ff13823          	sd	t6,240(sp)
    80006990:	cd1ff0ef          	jal	ra,80006660 <kerneltrap>
    80006994:	00013083          	ld	ra,0(sp)
    80006998:	00813103          	ld	sp,8(sp)
    8000699c:	01013183          	ld	gp,16(sp)
    800069a0:	02013283          	ld	t0,32(sp)
    800069a4:	02813303          	ld	t1,40(sp)
    800069a8:	03013383          	ld	t2,48(sp)
    800069ac:	03813403          	ld	s0,56(sp)
    800069b0:	04013483          	ld	s1,64(sp)
    800069b4:	04813503          	ld	a0,72(sp)
    800069b8:	05013583          	ld	a1,80(sp)
    800069bc:	05813603          	ld	a2,88(sp)
    800069c0:	06013683          	ld	a3,96(sp)
    800069c4:	06813703          	ld	a4,104(sp)
    800069c8:	07013783          	ld	a5,112(sp)
    800069cc:	07813803          	ld	a6,120(sp)
    800069d0:	08013883          	ld	a7,128(sp)
    800069d4:	08813903          	ld	s2,136(sp)
    800069d8:	09013983          	ld	s3,144(sp)
    800069dc:	09813a03          	ld	s4,152(sp)
    800069e0:	0a013a83          	ld	s5,160(sp)
    800069e4:	0a813b03          	ld	s6,168(sp)
    800069e8:	0b013b83          	ld	s7,176(sp)
    800069ec:	0b813c03          	ld	s8,184(sp)
    800069f0:	0c013c83          	ld	s9,192(sp)
    800069f4:	0c813d03          	ld	s10,200(sp)
    800069f8:	0d013d83          	ld	s11,208(sp)
    800069fc:	0d813e03          	ld	t3,216(sp)
    80006a00:	0e013e83          	ld	t4,224(sp)
    80006a04:	0e813f03          	ld	t5,232(sp)
    80006a08:	0f013f83          	ld	t6,240(sp)
    80006a0c:	10010113          	addi	sp,sp,256
    80006a10:	10200073          	sret
    80006a14:	00000013          	nop
    80006a18:	00000013          	nop
    80006a1c:	00000013          	nop

0000000080006a20 <timervec>:
    80006a20:	34051573          	csrrw	a0,mscratch,a0
    80006a24:	00b53023          	sd	a1,0(a0)
    80006a28:	00c53423          	sd	a2,8(a0)
    80006a2c:	00d53823          	sd	a3,16(a0)
    80006a30:	01853583          	ld	a1,24(a0)
    80006a34:	02053603          	ld	a2,32(a0)
    80006a38:	0005b683          	ld	a3,0(a1)
    80006a3c:	00c686b3          	add	a3,a3,a2
    80006a40:	00d5b023          	sd	a3,0(a1)
    80006a44:	00200593          	li	a1,2
    80006a48:	14459073          	csrw	sip,a1
    80006a4c:	01053683          	ld	a3,16(a0)
    80006a50:	00853603          	ld	a2,8(a0)
    80006a54:	00053583          	ld	a1,0(a0)
    80006a58:	34051573          	csrrw	a0,mscratch,a0
    80006a5c:	30200073          	mret

0000000080006a60 <plicinit>:
    80006a60:	ff010113          	addi	sp,sp,-16
    80006a64:	00813423          	sd	s0,8(sp)
    80006a68:	01010413          	addi	s0,sp,16
    80006a6c:	00813403          	ld	s0,8(sp)
    80006a70:	0c0007b7          	lui	a5,0xc000
    80006a74:	00100713          	li	a4,1
    80006a78:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006a7c:	00e7a223          	sw	a4,4(a5)
    80006a80:	01010113          	addi	sp,sp,16
    80006a84:	00008067          	ret

0000000080006a88 <plicinithart>:
    80006a88:	ff010113          	addi	sp,sp,-16
    80006a8c:	00813023          	sd	s0,0(sp)
    80006a90:	00113423          	sd	ra,8(sp)
    80006a94:	01010413          	addi	s0,sp,16
    80006a98:	00000097          	auipc	ra,0x0
    80006a9c:	a48080e7          	jalr	-1464(ra) # 800064e0 <cpuid>
    80006aa0:	0085171b          	slliw	a4,a0,0x8
    80006aa4:	0c0027b7          	lui	a5,0xc002
    80006aa8:	00e787b3          	add	a5,a5,a4
    80006aac:	40200713          	li	a4,1026
    80006ab0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006ab4:	00813083          	ld	ra,8(sp)
    80006ab8:	00013403          	ld	s0,0(sp)
    80006abc:	00d5151b          	slliw	a0,a0,0xd
    80006ac0:	0c2017b7          	lui	a5,0xc201
    80006ac4:	00a78533          	add	a0,a5,a0
    80006ac8:	00052023          	sw	zero,0(a0)
    80006acc:	01010113          	addi	sp,sp,16
    80006ad0:	00008067          	ret

0000000080006ad4 <plic_claim>:
    80006ad4:	ff010113          	addi	sp,sp,-16
    80006ad8:	00813023          	sd	s0,0(sp)
    80006adc:	00113423          	sd	ra,8(sp)
    80006ae0:	01010413          	addi	s0,sp,16
    80006ae4:	00000097          	auipc	ra,0x0
    80006ae8:	9fc080e7          	jalr	-1540(ra) # 800064e0 <cpuid>
    80006aec:	00813083          	ld	ra,8(sp)
    80006af0:	00013403          	ld	s0,0(sp)
    80006af4:	00d5151b          	slliw	a0,a0,0xd
    80006af8:	0c2017b7          	lui	a5,0xc201
    80006afc:	00a78533          	add	a0,a5,a0
    80006b00:	00452503          	lw	a0,4(a0)
    80006b04:	01010113          	addi	sp,sp,16
    80006b08:	00008067          	ret

0000000080006b0c <plic_complete>:
    80006b0c:	fe010113          	addi	sp,sp,-32
    80006b10:	00813823          	sd	s0,16(sp)
    80006b14:	00913423          	sd	s1,8(sp)
    80006b18:	00113c23          	sd	ra,24(sp)
    80006b1c:	02010413          	addi	s0,sp,32
    80006b20:	00050493          	mv	s1,a0
    80006b24:	00000097          	auipc	ra,0x0
    80006b28:	9bc080e7          	jalr	-1604(ra) # 800064e0 <cpuid>
    80006b2c:	01813083          	ld	ra,24(sp)
    80006b30:	01013403          	ld	s0,16(sp)
    80006b34:	00d5179b          	slliw	a5,a0,0xd
    80006b38:	0c201737          	lui	a4,0xc201
    80006b3c:	00f707b3          	add	a5,a4,a5
    80006b40:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006b44:	00813483          	ld	s1,8(sp)
    80006b48:	02010113          	addi	sp,sp,32
    80006b4c:	00008067          	ret

0000000080006b50 <consolewrite>:
    80006b50:	fb010113          	addi	sp,sp,-80
    80006b54:	04813023          	sd	s0,64(sp)
    80006b58:	04113423          	sd	ra,72(sp)
    80006b5c:	02913c23          	sd	s1,56(sp)
    80006b60:	03213823          	sd	s2,48(sp)
    80006b64:	03313423          	sd	s3,40(sp)
    80006b68:	03413023          	sd	s4,32(sp)
    80006b6c:	01513c23          	sd	s5,24(sp)
    80006b70:	05010413          	addi	s0,sp,80
    80006b74:	06c05c63          	blez	a2,80006bec <consolewrite+0x9c>
    80006b78:	00060993          	mv	s3,a2
    80006b7c:	00050a13          	mv	s4,a0
    80006b80:	00058493          	mv	s1,a1
    80006b84:	00000913          	li	s2,0
    80006b88:	fff00a93          	li	s5,-1
    80006b8c:	01c0006f          	j	80006ba8 <consolewrite+0x58>
    80006b90:	fbf44503          	lbu	a0,-65(s0)
    80006b94:	0019091b          	addiw	s2,s2,1
    80006b98:	00148493          	addi	s1,s1,1
    80006b9c:	00001097          	auipc	ra,0x1
    80006ba0:	a9c080e7          	jalr	-1380(ra) # 80007638 <uartputc>
    80006ba4:	03298063          	beq	s3,s2,80006bc4 <consolewrite+0x74>
    80006ba8:	00048613          	mv	a2,s1
    80006bac:	00100693          	li	a3,1
    80006bb0:	000a0593          	mv	a1,s4
    80006bb4:	fbf40513          	addi	a0,s0,-65
    80006bb8:	00000097          	auipc	ra,0x0
    80006bbc:	9e0080e7          	jalr	-1568(ra) # 80006598 <either_copyin>
    80006bc0:	fd5518e3          	bne	a0,s5,80006b90 <consolewrite+0x40>
    80006bc4:	04813083          	ld	ra,72(sp)
    80006bc8:	04013403          	ld	s0,64(sp)
    80006bcc:	03813483          	ld	s1,56(sp)
    80006bd0:	02813983          	ld	s3,40(sp)
    80006bd4:	02013a03          	ld	s4,32(sp)
    80006bd8:	01813a83          	ld	s5,24(sp)
    80006bdc:	00090513          	mv	a0,s2
    80006be0:	03013903          	ld	s2,48(sp)
    80006be4:	05010113          	addi	sp,sp,80
    80006be8:	00008067          	ret
    80006bec:	00000913          	li	s2,0
    80006bf0:	fd5ff06f          	j	80006bc4 <consolewrite+0x74>

0000000080006bf4 <consoleread>:
    80006bf4:	f9010113          	addi	sp,sp,-112
    80006bf8:	06813023          	sd	s0,96(sp)
    80006bfc:	04913c23          	sd	s1,88(sp)
    80006c00:	05213823          	sd	s2,80(sp)
    80006c04:	05313423          	sd	s3,72(sp)
    80006c08:	05413023          	sd	s4,64(sp)
    80006c0c:	03513c23          	sd	s5,56(sp)
    80006c10:	03613823          	sd	s6,48(sp)
    80006c14:	03713423          	sd	s7,40(sp)
    80006c18:	03813023          	sd	s8,32(sp)
    80006c1c:	06113423          	sd	ra,104(sp)
    80006c20:	01913c23          	sd	s9,24(sp)
    80006c24:	07010413          	addi	s0,sp,112
    80006c28:	00060b93          	mv	s7,a2
    80006c2c:	00050913          	mv	s2,a0
    80006c30:	00058c13          	mv	s8,a1
    80006c34:	00060b1b          	sext.w	s6,a2
    80006c38:	00006497          	auipc	s1,0x6
    80006c3c:	e7048493          	addi	s1,s1,-400 # 8000caa8 <cons>
    80006c40:	00400993          	li	s3,4
    80006c44:	fff00a13          	li	s4,-1
    80006c48:	00a00a93          	li	s5,10
    80006c4c:	05705e63          	blez	s7,80006ca8 <consoleread+0xb4>
    80006c50:	09c4a703          	lw	a4,156(s1)
    80006c54:	0984a783          	lw	a5,152(s1)
    80006c58:	0007071b          	sext.w	a4,a4
    80006c5c:	08e78463          	beq	a5,a4,80006ce4 <consoleread+0xf0>
    80006c60:	07f7f713          	andi	a4,a5,127
    80006c64:	00e48733          	add	a4,s1,a4
    80006c68:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006c6c:	0017869b          	addiw	a3,a5,1
    80006c70:	08d4ac23          	sw	a3,152(s1)
    80006c74:	00070c9b          	sext.w	s9,a4
    80006c78:	0b370663          	beq	a4,s3,80006d24 <consoleread+0x130>
    80006c7c:	00100693          	li	a3,1
    80006c80:	f9f40613          	addi	a2,s0,-97
    80006c84:	000c0593          	mv	a1,s8
    80006c88:	00090513          	mv	a0,s2
    80006c8c:	f8e40fa3          	sb	a4,-97(s0)
    80006c90:	00000097          	auipc	ra,0x0
    80006c94:	8bc080e7          	jalr	-1860(ra) # 8000654c <either_copyout>
    80006c98:	01450863          	beq	a0,s4,80006ca8 <consoleread+0xb4>
    80006c9c:	001c0c13          	addi	s8,s8,1
    80006ca0:	fffb8b9b          	addiw	s7,s7,-1
    80006ca4:	fb5c94e3          	bne	s9,s5,80006c4c <consoleread+0x58>
    80006ca8:	000b851b          	sext.w	a0,s7
    80006cac:	06813083          	ld	ra,104(sp)
    80006cb0:	06013403          	ld	s0,96(sp)
    80006cb4:	05813483          	ld	s1,88(sp)
    80006cb8:	05013903          	ld	s2,80(sp)
    80006cbc:	04813983          	ld	s3,72(sp)
    80006cc0:	04013a03          	ld	s4,64(sp)
    80006cc4:	03813a83          	ld	s5,56(sp)
    80006cc8:	02813b83          	ld	s7,40(sp)
    80006ccc:	02013c03          	ld	s8,32(sp)
    80006cd0:	01813c83          	ld	s9,24(sp)
    80006cd4:	40ab053b          	subw	a0,s6,a0
    80006cd8:	03013b03          	ld	s6,48(sp)
    80006cdc:	07010113          	addi	sp,sp,112
    80006ce0:	00008067          	ret
    80006ce4:	00001097          	auipc	ra,0x1
    80006ce8:	1d8080e7          	jalr	472(ra) # 80007ebc <push_on>
    80006cec:	0984a703          	lw	a4,152(s1)
    80006cf0:	09c4a783          	lw	a5,156(s1)
    80006cf4:	0007879b          	sext.w	a5,a5
    80006cf8:	fef70ce3          	beq	a4,a5,80006cf0 <consoleread+0xfc>
    80006cfc:	00001097          	auipc	ra,0x1
    80006d00:	234080e7          	jalr	564(ra) # 80007f30 <pop_on>
    80006d04:	0984a783          	lw	a5,152(s1)
    80006d08:	07f7f713          	andi	a4,a5,127
    80006d0c:	00e48733          	add	a4,s1,a4
    80006d10:	01874703          	lbu	a4,24(a4)
    80006d14:	0017869b          	addiw	a3,a5,1
    80006d18:	08d4ac23          	sw	a3,152(s1)
    80006d1c:	00070c9b          	sext.w	s9,a4
    80006d20:	f5371ee3          	bne	a4,s3,80006c7c <consoleread+0x88>
    80006d24:	000b851b          	sext.w	a0,s7
    80006d28:	f96bf2e3          	bgeu	s7,s6,80006cac <consoleread+0xb8>
    80006d2c:	08f4ac23          	sw	a5,152(s1)
    80006d30:	f7dff06f          	j	80006cac <consoleread+0xb8>

0000000080006d34 <consputc>:
    80006d34:	10000793          	li	a5,256
    80006d38:	00f50663          	beq	a0,a5,80006d44 <consputc+0x10>
    80006d3c:	00001317          	auipc	t1,0x1
    80006d40:	9f430067          	jr	-1548(t1) # 80007730 <uartputc_sync>
    80006d44:	ff010113          	addi	sp,sp,-16
    80006d48:	00113423          	sd	ra,8(sp)
    80006d4c:	00813023          	sd	s0,0(sp)
    80006d50:	01010413          	addi	s0,sp,16
    80006d54:	00800513          	li	a0,8
    80006d58:	00001097          	auipc	ra,0x1
    80006d5c:	9d8080e7          	jalr	-1576(ra) # 80007730 <uartputc_sync>
    80006d60:	02000513          	li	a0,32
    80006d64:	00001097          	auipc	ra,0x1
    80006d68:	9cc080e7          	jalr	-1588(ra) # 80007730 <uartputc_sync>
    80006d6c:	00013403          	ld	s0,0(sp)
    80006d70:	00813083          	ld	ra,8(sp)
    80006d74:	00800513          	li	a0,8
    80006d78:	01010113          	addi	sp,sp,16
    80006d7c:	00001317          	auipc	t1,0x1
    80006d80:	9b430067          	jr	-1612(t1) # 80007730 <uartputc_sync>

0000000080006d84 <consoleintr>:
    80006d84:	fe010113          	addi	sp,sp,-32
    80006d88:	00813823          	sd	s0,16(sp)
    80006d8c:	00913423          	sd	s1,8(sp)
    80006d90:	01213023          	sd	s2,0(sp)
    80006d94:	00113c23          	sd	ra,24(sp)
    80006d98:	02010413          	addi	s0,sp,32
    80006d9c:	00006917          	auipc	s2,0x6
    80006da0:	d0c90913          	addi	s2,s2,-756 # 8000caa8 <cons>
    80006da4:	00050493          	mv	s1,a0
    80006da8:	00090513          	mv	a0,s2
    80006dac:	00001097          	auipc	ra,0x1
    80006db0:	e40080e7          	jalr	-448(ra) # 80007bec <acquire>
    80006db4:	02048c63          	beqz	s1,80006dec <consoleintr+0x68>
    80006db8:	0a092783          	lw	a5,160(s2)
    80006dbc:	09892703          	lw	a4,152(s2)
    80006dc0:	07f00693          	li	a3,127
    80006dc4:	40e7873b          	subw	a4,a5,a4
    80006dc8:	02e6e263          	bltu	a3,a4,80006dec <consoleintr+0x68>
    80006dcc:	00d00713          	li	a4,13
    80006dd0:	04e48063          	beq	s1,a4,80006e10 <consoleintr+0x8c>
    80006dd4:	07f7f713          	andi	a4,a5,127
    80006dd8:	00e90733          	add	a4,s2,a4
    80006ddc:	0017879b          	addiw	a5,a5,1
    80006de0:	0af92023          	sw	a5,160(s2)
    80006de4:	00970c23          	sb	s1,24(a4)
    80006de8:	08f92e23          	sw	a5,156(s2)
    80006dec:	01013403          	ld	s0,16(sp)
    80006df0:	01813083          	ld	ra,24(sp)
    80006df4:	00813483          	ld	s1,8(sp)
    80006df8:	00013903          	ld	s2,0(sp)
    80006dfc:	00006517          	auipc	a0,0x6
    80006e00:	cac50513          	addi	a0,a0,-852 # 8000caa8 <cons>
    80006e04:	02010113          	addi	sp,sp,32
    80006e08:	00001317          	auipc	t1,0x1
    80006e0c:	eb030067          	jr	-336(t1) # 80007cb8 <release>
    80006e10:	00a00493          	li	s1,10
    80006e14:	fc1ff06f          	j	80006dd4 <consoleintr+0x50>

0000000080006e18 <consoleinit>:
    80006e18:	fe010113          	addi	sp,sp,-32
    80006e1c:	00113c23          	sd	ra,24(sp)
    80006e20:	00813823          	sd	s0,16(sp)
    80006e24:	00913423          	sd	s1,8(sp)
    80006e28:	02010413          	addi	s0,sp,32
    80006e2c:	00006497          	auipc	s1,0x6
    80006e30:	c7c48493          	addi	s1,s1,-900 # 8000caa8 <cons>
    80006e34:	00048513          	mv	a0,s1
    80006e38:	00003597          	auipc	a1,0x3
    80006e3c:	86058593          	addi	a1,a1,-1952 # 80009698 <CONSOLE_STATUS+0x688>
    80006e40:	00001097          	auipc	ra,0x1
    80006e44:	d88080e7          	jalr	-632(ra) # 80007bc8 <initlock>
    80006e48:	00000097          	auipc	ra,0x0
    80006e4c:	7ac080e7          	jalr	1964(ra) # 800075f4 <uartinit>
    80006e50:	01813083          	ld	ra,24(sp)
    80006e54:	01013403          	ld	s0,16(sp)
    80006e58:	00000797          	auipc	a5,0x0
    80006e5c:	d9c78793          	addi	a5,a5,-612 # 80006bf4 <consoleread>
    80006e60:	0af4bc23          	sd	a5,184(s1)
    80006e64:	00000797          	auipc	a5,0x0
    80006e68:	cec78793          	addi	a5,a5,-788 # 80006b50 <consolewrite>
    80006e6c:	0cf4b023          	sd	a5,192(s1)
    80006e70:	00813483          	ld	s1,8(sp)
    80006e74:	02010113          	addi	sp,sp,32
    80006e78:	00008067          	ret

0000000080006e7c <console_read>:
    80006e7c:	ff010113          	addi	sp,sp,-16
    80006e80:	00813423          	sd	s0,8(sp)
    80006e84:	01010413          	addi	s0,sp,16
    80006e88:	00813403          	ld	s0,8(sp)
    80006e8c:	00006317          	auipc	t1,0x6
    80006e90:	cd433303          	ld	t1,-812(t1) # 8000cb60 <devsw+0x10>
    80006e94:	01010113          	addi	sp,sp,16
    80006e98:	00030067          	jr	t1

0000000080006e9c <console_write>:
    80006e9c:	ff010113          	addi	sp,sp,-16
    80006ea0:	00813423          	sd	s0,8(sp)
    80006ea4:	01010413          	addi	s0,sp,16
    80006ea8:	00813403          	ld	s0,8(sp)
    80006eac:	00006317          	auipc	t1,0x6
    80006eb0:	cbc33303          	ld	t1,-836(t1) # 8000cb68 <devsw+0x18>
    80006eb4:	01010113          	addi	sp,sp,16
    80006eb8:	00030067          	jr	t1

0000000080006ebc <panic>:
    80006ebc:	fe010113          	addi	sp,sp,-32
    80006ec0:	00113c23          	sd	ra,24(sp)
    80006ec4:	00813823          	sd	s0,16(sp)
    80006ec8:	00913423          	sd	s1,8(sp)
    80006ecc:	02010413          	addi	s0,sp,32
    80006ed0:	00050493          	mv	s1,a0
    80006ed4:	00002517          	auipc	a0,0x2
    80006ed8:	7cc50513          	addi	a0,a0,1996 # 800096a0 <CONSOLE_STATUS+0x690>
    80006edc:	00006797          	auipc	a5,0x6
    80006ee0:	d207a623          	sw	zero,-724(a5) # 8000cc08 <pr+0x18>
    80006ee4:	00000097          	auipc	ra,0x0
    80006ee8:	034080e7          	jalr	52(ra) # 80006f18 <__printf>
    80006eec:	00048513          	mv	a0,s1
    80006ef0:	00000097          	auipc	ra,0x0
    80006ef4:	028080e7          	jalr	40(ra) # 80006f18 <__printf>
    80006ef8:	00002517          	auipc	a0,0x2
    80006efc:	3a850513          	addi	a0,a0,936 # 800092a0 <CONSOLE_STATUS+0x290>
    80006f00:	00000097          	auipc	ra,0x0
    80006f04:	018080e7          	jalr	24(ra) # 80006f18 <__printf>
    80006f08:	00100793          	li	a5,1
    80006f0c:	00005717          	auipc	a4,0x5
    80006f10:	a0f72e23          	sw	a5,-1508(a4) # 8000b928 <panicked>
    80006f14:	0000006f          	j	80006f14 <panic+0x58>

0000000080006f18 <__printf>:
    80006f18:	f3010113          	addi	sp,sp,-208
    80006f1c:	08813023          	sd	s0,128(sp)
    80006f20:	07313423          	sd	s3,104(sp)
    80006f24:	09010413          	addi	s0,sp,144
    80006f28:	05813023          	sd	s8,64(sp)
    80006f2c:	08113423          	sd	ra,136(sp)
    80006f30:	06913c23          	sd	s1,120(sp)
    80006f34:	07213823          	sd	s2,112(sp)
    80006f38:	07413023          	sd	s4,96(sp)
    80006f3c:	05513c23          	sd	s5,88(sp)
    80006f40:	05613823          	sd	s6,80(sp)
    80006f44:	05713423          	sd	s7,72(sp)
    80006f48:	03913c23          	sd	s9,56(sp)
    80006f4c:	03a13823          	sd	s10,48(sp)
    80006f50:	03b13423          	sd	s11,40(sp)
    80006f54:	00006317          	auipc	t1,0x6
    80006f58:	c9c30313          	addi	t1,t1,-868 # 8000cbf0 <pr>
    80006f5c:	01832c03          	lw	s8,24(t1)
    80006f60:	00b43423          	sd	a1,8(s0)
    80006f64:	00c43823          	sd	a2,16(s0)
    80006f68:	00d43c23          	sd	a3,24(s0)
    80006f6c:	02e43023          	sd	a4,32(s0)
    80006f70:	02f43423          	sd	a5,40(s0)
    80006f74:	03043823          	sd	a6,48(s0)
    80006f78:	03143c23          	sd	a7,56(s0)
    80006f7c:	00050993          	mv	s3,a0
    80006f80:	4a0c1663          	bnez	s8,8000742c <__printf+0x514>
    80006f84:	60098c63          	beqz	s3,8000759c <__printf+0x684>
    80006f88:	0009c503          	lbu	a0,0(s3)
    80006f8c:	00840793          	addi	a5,s0,8
    80006f90:	f6f43c23          	sd	a5,-136(s0)
    80006f94:	00000493          	li	s1,0
    80006f98:	22050063          	beqz	a0,800071b8 <__printf+0x2a0>
    80006f9c:	00002a37          	lui	s4,0x2
    80006fa0:	00018ab7          	lui	s5,0x18
    80006fa4:	000f4b37          	lui	s6,0xf4
    80006fa8:	00989bb7          	lui	s7,0x989
    80006fac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006fb0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006fb4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006fb8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006fbc:	00148c9b          	addiw	s9,s1,1
    80006fc0:	02500793          	li	a5,37
    80006fc4:	01998933          	add	s2,s3,s9
    80006fc8:	38f51263          	bne	a0,a5,8000734c <__printf+0x434>
    80006fcc:	00094783          	lbu	a5,0(s2)
    80006fd0:	00078c9b          	sext.w	s9,a5
    80006fd4:	1e078263          	beqz	a5,800071b8 <__printf+0x2a0>
    80006fd8:	0024849b          	addiw	s1,s1,2
    80006fdc:	07000713          	li	a4,112
    80006fe0:	00998933          	add	s2,s3,s1
    80006fe4:	38e78a63          	beq	a5,a4,80007378 <__printf+0x460>
    80006fe8:	20f76863          	bltu	a4,a5,800071f8 <__printf+0x2e0>
    80006fec:	42a78863          	beq	a5,a0,8000741c <__printf+0x504>
    80006ff0:	06400713          	li	a4,100
    80006ff4:	40e79663          	bne	a5,a4,80007400 <__printf+0x4e8>
    80006ff8:	f7843783          	ld	a5,-136(s0)
    80006ffc:	0007a603          	lw	a2,0(a5)
    80007000:	00878793          	addi	a5,a5,8
    80007004:	f6f43c23          	sd	a5,-136(s0)
    80007008:	42064a63          	bltz	a2,8000743c <__printf+0x524>
    8000700c:	00a00713          	li	a4,10
    80007010:	02e677bb          	remuw	a5,a2,a4
    80007014:	00002d97          	auipc	s11,0x2
    80007018:	6b4d8d93          	addi	s11,s11,1716 # 800096c8 <digits>
    8000701c:	00900593          	li	a1,9
    80007020:	0006051b          	sext.w	a0,a2
    80007024:	00000c93          	li	s9,0
    80007028:	02079793          	slli	a5,a5,0x20
    8000702c:	0207d793          	srli	a5,a5,0x20
    80007030:	00fd87b3          	add	a5,s11,a5
    80007034:	0007c783          	lbu	a5,0(a5)
    80007038:	02e656bb          	divuw	a3,a2,a4
    8000703c:	f8f40023          	sb	a5,-128(s0)
    80007040:	14c5d863          	bge	a1,a2,80007190 <__printf+0x278>
    80007044:	06300593          	li	a1,99
    80007048:	00100c93          	li	s9,1
    8000704c:	02e6f7bb          	remuw	a5,a3,a4
    80007050:	02079793          	slli	a5,a5,0x20
    80007054:	0207d793          	srli	a5,a5,0x20
    80007058:	00fd87b3          	add	a5,s11,a5
    8000705c:	0007c783          	lbu	a5,0(a5)
    80007060:	02e6d73b          	divuw	a4,a3,a4
    80007064:	f8f400a3          	sb	a5,-127(s0)
    80007068:	12a5f463          	bgeu	a1,a0,80007190 <__printf+0x278>
    8000706c:	00a00693          	li	a3,10
    80007070:	00900593          	li	a1,9
    80007074:	02d777bb          	remuw	a5,a4,a3
    80007078:	02079793          	slli	a5,a5,0x20
    8000707c:	0207d793          	srli	a5,a5,0x20
    80007080:	00fd87b3          	add	a5,s11,a5
    80007084:	0007c503          	lbu	a0,0(a5)
    80007088:	02d757bb          	divuw	a5,a4,a3
    8000708c:	f8a40123          	sb	a0,-126(s0)
    80007090:	48e5f263          	bgeu	a1,a4,80007514 <__printf+0x5fc>
    80007094:	06300513          	li	a0,99
    80007098:	02d7f5bb          	remuw	a1,a5,a3
    8000709c:	02059593          	slli	a1,a1,0x20
    800070a0:	0205d593          	srli	a1,a1,0x20
    800070a4:	00bd85b3          	add	a1,s11,a1
    800070a8:	0005c583          	lbu	a1,0(a1)
    800070ac:	02d7d7bb          	divuw	a5,a5,a3
    800070b0:	f8b401a3          	sb	a1,-125(s0)
    800070b4:	48e57263          	bgeu	a0,a4,80007538 <__printf+0x620>
    800070b8:	3e700513          	li	a0,999
    800070bc:	02d7f5bb          	remuw	a1,a5,a3
    800070c0:	02059593          	slli	a1,a1,0x20
    800070c4:	0205d593          	srli	a1,a1,0x20
    800070c8:	00bd85b3          	add	a1,s11,a1
    800070cc:	0005c583          	lbu	a1,0(a1)
    800070d0:	02d7d7bb          	divuw	a5,a5,a3
    800070d4:	f8b40223          	sb	a1,-124(s0)
    800070d8:	46e57663          	bgeu	a0,a4,80007544 <__printf+0x62c>
    800070dc:	02d7f5bb          	remuw	a1,a5,a3
    800070e0:	02059593          	slli	a1,a1,0x20
    800070e4:	0205d593          	srli	a1,a1,0x20
    800070e8:	00bd85b3          	add	a1,s11,a1
    800070ec:	0005c583          	lbu	a1,0(a1)
    800070f0:	02d7d7bb          	divuw	a5,a5,a3
    800070f4:	f8b402a3          	sb	a1,-123(s0)
    800070f8:	46ea7863          	bgeu	s4,a4,80007568 <__printf+0x650>
    800070fc:	02d7f5bb          	remuw	a1,a5,a3
    80007100:	02059593          	slli	a1,a1,0x20
    80007104:	0205d593          	srli	a1,a1,0x20
    80007108:	00bd85b3          	add	a1,s11,a1
    8000710c:	0005c583          	lbu	a1,0(a1)
    80007110:	02d7d7bb          	divuw	a5,a5,a3
    80007114:	f8b40323          	sb	a1,-122(s0)
    80007118:	3eeaf863          	bgeu	s5,a4,80007508 <__printf+0x5f0>
    8000711c:	02d7f5bb          	remuw	a1,a5,a3
    80007120:	02059593          	slli	a1,a1,0x20
    80007124:	0205d593          	srli	a1,a1,0x20
    80007128:	00bd85b3          	add	a1,s11,a1
    8000712c:	0005c583          	lbu	a1,0(a1)
    80007130:	02d7d7bb          	divuw	a5,a5,a3
    80007134:	f8b403a3          	sb	a1,-121(s0)
    80007138:	42eb7e63          	bgeu	s6,a4,80007574 <__printf+0x65c>
    8000713c:	02d7f5bb          	remuw	a1,a5,a3
    80007140:	02059593          	slli	a1,a1,0x20
    80007144:	0205d593          	srli	a1,a1,0x20
    80007148:	00bd85b3          	add	a1,s11,a1
    8000714c:	0005c583          	lbu	a1,0(a1)
    80007150:	02d7d7bb          	divuw	a5,a5,a3
    80007154:	f8b40423          	sb	a1,-120(s0)
    80007158:	42ebfc63          	bgeu	s7,a4,80007590 <__printf+0x678>
    8000715c:	02079793          	slli	a5,a5,0x20
    80007160:	0207d793          	srli	a5,a5,0x20
    80007164:	00fd8db3          	add	s11,s11,a5
    80007168:	000dc703          	lbu	a4,0(s11)
    8000716c:	00a00793          	li	a5,10
    80007170:	00900c93          	li	s9,9
    80007174:	f8e404a3          	sb	a4,-119(s0)
    80007178:	00065c63          	bgez	a2,80007190 <__printf+0x278>
    8000717c:	f9040713          	addi	a4,s0,-112
    80007180:	00f70733          	add	a4,a4,a5
    80007184:	02d00693          	li	a3,45
    80007188:	fed70823          	sb	a3,-16(a4)
    8000718c:	00078c93          	mv	s9,a5
    80007190:	f8040793          	addi	a5,s0,-128
    80007194:	01978cb3          	add	s9,a5,s9
    80007198:	f7f40d13          	addi	s10,s0,-129
    8000719c:	000cc503          	lbu	a0,0(s9)
    800071a0:	fffc8c93          	addi	s9,s9,-1
    800071a4:	00000097          	auipc	ra,0x0
    800071a8:	b90080e7          	jalr	-1136(ra) # 80006d34 <consputc>
    800071ac:	ffac98e3          	bne	s9,s10,8000719c <__printf+0x284>
    800071b0:	00094503          	lbu	a0,0(s2)
    800071b4:	e00514e3          	bnez	a0,80006fbc <__printf+0xa4>
    800071b8:	1a0c1663          	bnez	s8,80007364 <__printf+0x44c>
    800071bc:	08813083          	ld	ra,136(sp)
    800071c0:	08013403          	ld	s0,128(sp)
    800071c4:	07813483          	ld	s1,120(sp)
    800071c8:	07013903          	ld	s2,112(sp)
    800071cc:	06813983          	ld	s3,104(sp)
    800071d0:	06013a03          	ld	s4,96(sp)
    800071d4:	05813a83          	ld	s5,88(sp)
    800071d8:	05013b03          	ld	s6,80(sp)
    800071dc:	04813b83          	ld	s7,72(sp)
    800071e0:	04013c03          	ld	s8,64(sp)
    800071e4:	03813c83          	ld	s9,56(sp)
    800071e8:	03013d03          	ld	s10,48(sp)
    800071ec:	02813d83          	ld	s11,40(sp)
    800071f0:	0d010113          	addi	sp,sp,208
    800071f4:	00008067          	ret
    800071f8:	07300713          	li	a4,115
    800071fc:	1ce78a63          	beq	a5,a4,800073d0 <__printf+0x4b8>
    80007200:	07800713          	li	a4,120
    80007204:	1ee79e63          	bne	a5,a4,80007400 <__printf+0x4e8>
    80007208:	f7843783          	ld	a5,-136(s0)
    8000720c:	0007a703          	lw	a4,0(a5)
    80007210:	00878793          	addi	a5,a5,8
    80007214:	f6f43c23          	sd	a5,-136(s0)
    80007218:	28074263          	bltz	a4,8000749c <__printf+0x584>
    8000721c:	00002d97          	auipc	s11,0x2
    80007220:	4acd8d93          	addi	s11,s11,1196 # 800096c8 <digits>
    80007224:	00f77793          	andi	a5,a4,15
    80007228:	00fd87b3          	add	a5,s11,a5
    8000722c:	0007c683          	lbu	a3,0(a5)
    80007230:	00f00613          	li	a2,15
    80007234:	0007079b          	sext.w	a5,a4
    80007238:	f8d40023          	sb	a3,-128(s0)
    8000723c:	0047559b          	srliw	a1,a4,0x4
    80007240:	0047569b          	srliw	a3,a4,0x4
    80007244:	00000c93          	li	s9,0
    80007248:	0ee65063          	bge	a2,a4,80007328 <__printf+0x410>
    8000724c:	00f6f693          	andi	a3,a3,15
    80007250:	00dd86b3          	add	a3,s11,a3
    80007254:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007258:	0087d79b          	srliw	a5,a5,0x8
    8000725c:	00100c93          	li	s9,1
    80007260:	f8d400a3          	sb	a3,-127(s0)
    80007264:	0cb67263          	bgeu	a2,a1,80007328 <__printf+0x410>
    80007268:	00f7f693          	andi	a3,a5,15
    8000726c:	00dd86b3          	add	a3,s11,a3
    80007270:	0006c583          	lbu	a1,0(a3)
    80007274:	00f00613          	li	a2,15
    80007278:	0047d69b          	srliw	a3,a5,0x4
    8000727c:	f8b40123          	sb	a1,-126(s0)
    80007280:	0047d593          	srli	a1,a5,0x4
    80007284:	28f67e63          	bgeu	a2,a5,80007520 <__printf+0x608>
    80007288:	00f6f693          	andi	a3,a3,15
    8000728c:	00dd86b3          	add	a3,s11,a3
    80007290:	0006c503          	lbu	a0,0(a3)
    80007294:	0087d813          	srli	a6,a5,0x8
    80007298:	0087d69b          	srliw	a3,a5,0x8
    8000729c:	f8a401a3          	sb	a0,-125(s0)
    800072a0:	28b67663          	bgeu	a2,a1,8000752c <__printf+0x614>
    800072a4:	00f6f693          	andi	a3,a3,15
    800072a8:	00dd86b3          	add	a3,s11,a3
    800072ac:	0006c583          	lbu	a1,0(a3)
    800072b0:	00c7d513          	srli	a0,a5,0xc
    800072b4:	00c7d69b          	srliw	a3,a5,0xc
    800072b8:	f8b40223          	sb	a1,-124(s0)
    800072bc:	29067a63          	bgeu	a2,a6,80007550 <__printf+0x638>
    800072c0:	00f6f693          	andi	a3,a3,15
    800072c4:	00dd86b3          	add	a3,s11,a3
    800072c8:	0006c583          	lbu	a1,0(a3)
    800072cc:	0107d813          	srli	a6,a5,0x10
    800072d0:	0107d69b          	srliw	a3,a5,0x10
    800072d4:	f8b402a3          	sb	a1,-123(s0)
    800072d8:	28a67263          	bgeu	a2,a0,8000755c <__printf+0x644>
    800072dc:	00f6f693          	andi	a3,a3,15
    800072e0:	00dd86b3          	add	a3,s11,a3
    800072e4:	0006c683          	lbu	a3,0(a3)
    800072e8:	0147d79b          	srliw	a5,a5,0x14
    800072ec:	f8d40323          	sb	a3,-122(s0)
    800072f0:	21067663          	bgeu	a2,a6,800074fc <__printf+0x5e4>
    800072f4:	02079793          	slli	a5,a5,0x20
    800072f8:	0207d793          	srli	a5,a5,0x20
    800072fc:	00fd8db3          	add	s11,s11,a5
    80007300:	000dc683          	lbu	a3,0(s11)
    80007304:	00800793          	li	a5,8
    80007308:	00700c93          	li	s9,7
    8000730c:	f8d403a3          	sb	a3,-121(s0)
    80007310:	00075c63          	bgez	a4,80007328 <__printf+0x410>
    80007314:	f9040713          	addi	a4,s0,-112
    80007318:	00f70733          	add	a4,a4,a5
    8000731c:	02d00693          	li	a3,45
    80007320:	fed70823          	sb	a3,-16(a4)
    80007324:	00078c93          	mv	s9,a5
    80007328:	f8040793          	addi	a5,s0,-128
    8000732c:	01978cb3          	add	s9,a5,s9
    80007330:	f7f40d13          	addi	s10,s0,-129
    80007334:	000cc503          	lbu	a0,0(s9)
    80007338:	fffc8c93          	addi	s9,s9,-1
    8000733c:	00000097          	auipc	ra,0x0
    80007340:	9f8080e7          	jalr	-1544(ra) # 80006d34 <consputc>
    80007344:	ff9d18e3          	bne	s10,s9,80007334 <__printf+0x41c>
    80007348:	0100006f          	j	80007358 <__printf+0x440>
    8000734c:	00000097          	auipc	ra,0x0
    80007350:	9e8080e7          	jalr	-1560(ra) # 80006d34 <consputc>
    80007354:	000c8493          	mv	s1,s9
    80007358:	00094503          	lbu	a0,0(s2)
    8000735c:	c60510e3          	bnez	a0,80006fbc <__printf+0xa4>
    80007360:	e40c0ee3          	beqz	s8,800071bc <__printf+0x2a4>
    80007364:	00006517          	auipc	a0,0x6
    80007368:	88c50513          	addi	a0,a0,-1908 # 8000cbf0 <pr>
    8000736c:	00001097          	auipc	ra,0x1
    80007370:	94c080e7          	jalr	-1716(ra) # 80007cb8 <release>
    80007374:	e49ff06f          	j	800071bc <__printf+0x2a4>
    80007378:	f7843783          	ld	a5,-136(s0)
    8000737c:	03000513          	li	a0,48
    80007380:	01000d13          	li	s10,16
    80007384:	00878713          	addi	a4,a5,8
    80007388:	0007bc83          	ld	s9,0(a5)
    8000738c:	f6e43c23          	sd	a4,-136(s0)
    80007390:	00000097          	auipc	ra,0x0
    80007394:	9a4080e7          	jalr	-1628(ra) # 80006d34 <consputc>
    80007398:	07800513          	li	a0,120
    8000739c:	00000097          	auipc	ra,0x0
    800073a0:	998080e7          	jalr	-1640(ra) # 80006d34 <consputc>
    800073a4:	00002d97          	auipc	s11,0x2
    800073a8:	324d8d93          	addi	s11,s11,804 # 800096c8 <digits>
    800073ac:	03ccd793          	srli	a5,s9,0x3c
    800073b0:	00fd87b3          	add	a5,s11,a5
    800073b4:	0007c503          	lbu	a0,0(a5)
    800073b8:	fffd0d1b          	addiw	s10,s10,-1
    800073bc:	004c9c93          	slli	s9,s9,0x4
    800073c0:	00000097          	auipc	ra,0x0
    800073c4:	974080e7          	jalr	-1676(ra) # 80006d34 <consputc>
    800073c8:	fe0d12e3          	bnez	s10,800073ac <__printf+0x494>
    800073cc:	f8dff06f          	j	80007358 <__printf+0x440>
    800073d0:	f7843783          	ld	a5,-136(s0)
    800073d4:	0007bc83          	ld	s9,0(a5)
    800073d8:	00878793          	addi	a5,a5,8
    800073dc:	f6f43c23          	sd	a5,-136(s0)
    800073e0:	000c9a63          	bnez	s9,800073f4 <__printf+0x4dc>
    800073e4:	1080006f          	j	800074ec <__printf+0x5d4>
    800073e8:	001c8c93          	addi	s9,s9,1
    800073ec:	00000097          	auipc	ra,0x0
    800073f0:	948080e7          	jalr	-1720(ra) # 80006d34 <consputc>
    800073f4:	000cc503          	lbu	a0,0(s9)
    800073f8:	fe0518e3          	bnez	a0,800073e8 <__printf+0x4d0>
    800073fc:	f5dff06f          	j	80007358 <__printf+0x440>
    80007400:	02500513          	li	a0,37
    80007404:	00000097          	auipc	ra,0x0
    80007408:	930080e7          	jalr	-1744(ra) # 80006d34 <consputc>
    8000740c:	000c8513          	mv	a0,s9
    80007410:	00000097          	auipc	ra,0x0
    80007414:	924080e7          	jalr	-1756(ra) # 80006d34 <consputc>
    80007418:	f41ff06f          	j	80007358 <__printf+0x440>
    8000741c:	02500513          	li	a0,37
    80007420:	00000097          	auipc	ra,0x0
    80007424:	914080e7          	jalr	-1772(ra) # 80006d34 <consputc>
    80007428:	f31ff06f          	j	80007358 <__printf+0x440>
    8000742c:	00030513          	mv	a0,t1
    80007430:	00000097          	auipc	ra,0x0
    80007434:	7bc080e7          	jalr	1980(ra) # 80007bec <acquire>
    80007438:	b4dff06f          	j	80006f84 <__printf+0x6c>
    8000743c:	40c0053b          	negw	a0,a2
    80007440:	00a00713          	li	a4,10
    80007444:	02e576bb          	remuw	a3,a0,a4
    80007448:	00002d97          	auipc	s11,0x2
    8000744c:	280d8d93          	addi	s11,s11,640 # 800096c8 <digits>
    80007450:	ff700593          	li	a1,-9
    80007454:	02069693          	slli	a3,a3,0x20
    80007458:	0206d693          	srli	a3,a3,0x20
    8000745c:	00dd86b3          	add	a3,s11,a3
    80007460:	0006c683          	lbu	a3,0(a3)
    80007464:	02e557bb          	divuw	a5,a0,a4
    80007468:	f8d40023          	sb	a3,-128(s0)
    8000746c:	10b65e63          	bge	a2,a1,80007588 <__printf+0x670>
    80007470:	06300593          	li	a1,99
    80007474:	02e7f6bb          	remuw	a3,a5,a4
    80007478:	02069693          	slli	a3,a3,0x20
    8000747c:	0206d693          	srli	a3,a3,0x20
    80007480:	00dd86b3          	add	a3,s11,a3
    80007484:	0006c683          	lbu	a3,0(a3)
    80007488:	02e7d73b          	divuw	a4,a5,a4
    8000748c:	00200793          	li	a5,2
    80007490:	f8d400a3          	sb	a3,-127(s0)
    80007494:	bca5ece3          	bltu	a1,a0,8000706c <__printf+0x154>
    80007498:	ce5ff06f          	j	8000717c <__printf+0x264>
    8000749c:	40e007bb          	negw	a5,a4
    800074a0:	00002d97          	auipc	s11,0x2
    800074a4:	228d8d93          	addi	s11,s11,552 # 800096c8 <digits>
    800074a8:	00f7f693          	andi	a3,a5,15
    800074ac:	00dd86b3          	add	a3,s11,a3
    800074b0:	0006c583          	lbu	a1,0(a3)
    800074b4:	ff100613          	li	a2,-15
    800074b8:	0047d69b          	srliw	a3,a5,0x4
    800074bc:	f8b40023          	sb	a1,-128(s0)
    800074c0:	0047d59b          	srliw	a1,a5,0x4
    800074c4:	0ac75e63          	bge	a4,a2,80007580 <__printf+0x668>
    800074c8:	00f6f693          	andi	a3,a3,15
    800074cc:	00dd86b3          	add	a3,s11,a3
    800074d0:	0006c603          	lbu	a2,0(a3)
    800074d4:	00f00693          	li	a3,15
    800074d8:	0087d79b          	srliw	a5,a5,0x8
    800074dc:	f8c400a3          	sb	a2,-127(s0)
    800074e0:	d8b6e4e3          	bltu	a3,a1,80007268 <__printf+0x350>
    800074e4:	00200793          	li	a5,2
    800074e8:	e2dff06f          	j	80007314 <__printf+0x3fc>
    800074ec:	00002c97          	auipc	s9,0x2
    800074f0:	1bcc8c93          	addi	s9,s9,444 # 800096a8 <CONSOLE_STATUS+0x698>
    800074f4:	02800513          	li	a0,40
    800074f8:	ef1ff06f          	j	800073e8 <__printf+0x4d0>
    800074fc:	00700793          	li	a5,7
    80007500:	00600c93          	li	s9,6
    80007504:	e0dff06f          	j	80007310 <__printf+0x3f8>
    80007508:	00700793          	li	a5,7
    8000750c:	00600c93          	li	s9,6
    80007510:	c69ff06f          	j	80007178 <__printf+0x260>
    80007514:	00300793          	li	a5,3
    80007518:	00200c93          	li	s9,2
    8000751c:	c5dff06f          	j	80007178 <__printf+0x260>
    80007520:	00300793          	li	a5,3
    80007524:	00200c93          	li	s9,2
    80007528:	de9ff06f          	j	80007310 <__printf+0x3f8>
    8000752c:	00400793          	li	a5,4
    80007530:	00300c93          	li	s9,3
    80007534:	dddff06f          	j	80007310 <__printf+0x3f8>
    80007538:	00400793          	li	a5,4
    8000753c:	00300c93          	li	s9,3
    80007540:	c39ff06f          	j	80007178 <__printf+0x260>
    80007544:	00500793          	li	a5,5
    80007548:	00400c93          	li	s9,4
    8000754c:	c2dff06f          	j	80007178 <__printf+0x260>
    80007550:	00500793          	li	a5,5
    80007554:	00400c93          	li	s9,4
    80007558:	db9ff06f          	j	80007310 <__printf+0x3f8>
    8000755c:	00600793          	li	a5,6
    80007560:	00500c93          	li	s9,5
    80007564:	dadff06f          	j	80007310 <__printf+0x3f8>
    80007568:	00600793          	li	a5,6
    8000756c:	00500c93          	li	s9,5
    80007570:	c09ff06f          	j	80007178 <__printf+0x260>
    80007574:	00800793          	li	a5,8
    80007578:	00700c93          	li	s9,7
    8000757c:	bfdff06f          	j	80007178 <__printf+0x260>
    80007580:	00100793          	li	a5,1
    80007584:	d91ff06f          	j	80007314 <__printf+0x3fc>
    80007588:	00100793          	li	a5,1
    8000758c:	bf1ff06f          	j	8000717c <__printf+0x264>
    80007590:	00900793          	li	a5,9
    80007594:	00800c93          	li	s9,8
    80007598:	be1ff06f          	j	80007178 <__printf+0x260>
    8000759c:	00002517          	auipc	a0,0x2
    800075a0:	11450513          	addi	a0,a0,276 # 800096b0 <CONSOLE_STATUS+0x6a0>
    800075a4:	00000097          	auipc	ra,0x0
    800075a8:	918080e7          	jalr	-1768(ra) # 80006ebc <panic>

00000000800075ac <printfinit>:
    800075ac:	fe010113          	addi	sp,sp,-32
    800075b0:	00813823          	sd	s0,16(sp)
    800075b4:	00913423          	sd	s1,8(sp)
    800075b8:	00113c23          	sd	ra,24(sp)
    800075bc:	02010413          	addi	s0,sp,32
    800075c0:	00005497          	auipc	s1,0x5
    800075c4:	63048493          	addi	s1,s1,1584 # 8000cbf0 <pr>
    800075c8:	00048513          	mv	a0,s1
    800075cc:	00002597          	auipc	a1,0x2
    800075d0:	0f458593          	addi	a1,a1,244 # 800096c0 <CONSOLE_STATUS+0x6b0>
    800075d4:	00000097          	auipc	ra,0x0
    800075d8:	5f4080e7          	jalr	1524(ra) # 80007bc8 <initlock>
    800075dc:	01813083          	ld	ra,24(sp)
    800075e0:	01013403          	ld	s0,16(sp)
    800075e4:	0004ac23          	sw	zero,24(s1)
    800075e8:	00813483          	ld	s1,8(sp)
    800075ec:	02010113          	addi	sp,sp,32
    800075f0:	00008067          	ret

00000000800075f4 <uartinit>:
    800075f4:	ff010113          	addi	sp,sp,-16
    800075f8:	00813423          	sd	s0,8(sp)
    800075fc:	01010413          	addi	s0,sp,16
    80007600:	100007b7          	lui	a5,0x10000
    80007604:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007608:	f8000713          	li	a4,-128
    8000760c:	00e781a3          	sb	a4,3(a5)
    80007610:	00300713          	li	a4,3
    80007614:	00e78023          	sb	a4,0(a5)
    80007618:	000780a3          	sb	zero,1(a5)
    8000761c:	00e781a3          	sb	a4,3(a5)
    80007620:	00700693          	li	a3,7
    80007624:	00d78123          	sb	a3,2(a5)
    80007628:	00e780a3          	sb	a4,1(a5)
    8000762c:	00813403          	ld	s0,8(sp)
    80007630:	01010113          	addi	sp,sp,16
    80007634:	00008067          	ret

0000000080007638 <uartputc>:
    80007638:	00004797          	auipc	a5,0x4
    8000763c:	2f07a783          	lw	a5,752(a5) # 8000b928 <panicked>
    80007640:	00078463          	beqz	a5,80007648 <uartputc+0x10>
    80007644:	0000006f          	j	80007644 <uartputc+0xc>
    80007648:	fd010113          	addi	sp,sp,-48
    8000764c:	02813023          	sd	s0,32(sp)
    80007650:	00913c23          	sd	s1,24(sp)
    80007654:	01213823          	sd	s2,16(sp)
    80007658:	01313423          	sd	s3,8(sp)
    8000765c:	02113423          	sd	ra,40(sp)
    80007660:	03010413          	addi	s0,sp,48
    80007664:	00004917          	auipc	s2,0x4
    80007668:	2cc90913          	addi	s2,s2,716 # 8000b930 <uart_tx_r>
    8000766c:	00093783          	ld	a5,0(s2)
    80007670:	00004497          	auipc	s1,0x4
    80007674:	2c848493          	addi	s1,s1,712 # 8000b938 <uart_tx_w>
    80007678:	0004b703          	ld	a4,0(s1)
    8000767c:	02078693          	addi	a3,a5,32
    80007680:	00050993          	mv	s3,a0
    80007684:	02e69c63          	bne	a3,a4,800076bc <uartputc+0x84>
    80007688:	00001097          	auipc	ra,0x1
    8000768c:	834080e7          	jalr	-1996(ra) # 80007ebc <push_on>
    80007690:	00093783          	ld	a5,0(s2)
    80007694:	0004b703          	ld	a4,0(s1)
    80007698:	02078793          	addi	a5,a5,32
    8000769c:	00e79463          	bne	a5,a4,800076a4 <uartputc+0x6c>
    800076a0:	0000006f          	j	800076a0 <uartputc+0x68>
    800076a4:	00001097          	auipc	ra,0x1
    800076a8:	88c080e7          	jalr	-1908(ra) # 80007f30 <pop_on>
    800076ac:	00093783          	ld	a5,0(s2)
    800076b0:	0004b703          	ld	a4,0(s1)
    800076b4:	02078693          	addi	a3,a5,32
    800076b8:	fce688e3          	beq	a3,a4,80007688 <uartputc+0x50>
    800076bc:	01f77693          	andi	a3,a4,31
    800076c0:	00005597          	auipc	a1,0x5
    800076c4:	55058593          	addi	a1,a1,1360 # 8000cc10 <uart_tx_buf>
    800076c8:	00d586b3          	add	a3,a1,a3
    800076cc:	00170713          	addi	a4,a4,1
    800076d0:	01368023          	sb	s3,0(a3)
    800076d4:	00e4b023          	sd	a4,0(s1)
    800076d8:	10000637          	lui	a2,0x10000
    800076dc:	02f71063          	bne	a4,a5,800076fc <uartputc+0xc4>
    800076e0:	0340006f          	j	80007714 <uartputc+0xdc>
    800076e4:	00074703          	lbu	a4,0(a4)
    800076e8:	00f93023          	sd	a5,0(s2)
    800076ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800076f0:	00093783          	ld	a5,0(s2)
    800076f4:	0004b703          	ld	a4,0(s1)
    800076f8:	00f70e63          	beq	a4,a5,80007714 <uartputc+0xdc>
    800076fc:	00564683          	lbu	a3,5(a2)
    80007700:	01f7f713          	andi	a4,a5,31
    80007704:	00e58733          	add	a4,a1,a4
    80007708:	0206f693          	andi	a3,a3,32
    8000770c:	00178793          	addi	a5,a5,1
    80007710:	fc069ae3          	bnez	a3,800076e4 <uartputc+0xac>
    80007714:	02813083          	ld	ra,40(sp)
    80007718:	02013403          	ld	s0,32(sp)
    8000771c:	01813483          	ld	s1,24(sp)
    80007720:	01013903          	ld	s2,16(sp)
    80007724:	00813983          	ld	s3,8(sp)
    80007728:	03010113          	addi	sp,sp,48
    8000772c:	00008067          	ret

0000000080007730 <uartputc_sync>:
    80007730:	ff010113          	addi	sp,sp,-16
    80007734:	00813423          	sd	s0,8(sp)
    80007738:	01010413          	addi	s0,sp,16
    8000773c:	00004717          	auipc	a4,0x4
    80007740:	1ec72703          	lw	a4,492(a4) # 8000b928 <panicked>
    80007744:	02071663          	bnez	a4,80007770 <uartputc_sync+0x40>
    80007748:	00050793          	mv	a5,a0
    8000774c:	100006b7          	lui	a3,0x10000
    80007750:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007754:	02077713          	andi	a4,a4,32
    80007758:	fe070ce3          	beqz	a4,80007750 <uartputc_sync+0x20>
    8000775c:	0ff7f793          	andi	a5,a5,255
    80007760:	00f68023          	sb	a5,0(a3)
    80007764:	00813403          	ld	s0,8(sp)
    80007768:	01010113          	addi	sp,sp,16
    8000776c:	00008067          	ret
    80007770:	0000006f          	j	80007770 <uartputc_sync+0x40>

0000000080007774 <uartstart>:
    80007774:	ff010113          	addi	sp,sp,-16
    80007778:	00813423          	sd	s0,8(sp)
    8000777c:	01010413          	addi	s0,sp,16
    80007780:	00004617          	auipc	a2,0x4
    80007784:	1b060613          	addi	a2,a2,432 # 8000b930 <uart_tx_r>
    80007788:	00004517          	auipc	a0,0x4
    8000778c:	1b050513          	addi	a0,a0,432 # 8000b938 <uart_tx_w>
    80007790:	00063783          	ld	a5,0(a2)
    80007794:	00053703          	ld	a4,0(a0)
    80007798:	04f70263          	beq	a4,a5,800077dc <uartstart+0x68>
    8000779c:	100005b7          	lui	a1,0x10000
    800077a0:	00005817          	auipc	a6,0x5
    800077a4:	47080813          	addi	a6,a6,1136 # 8000cc10 <uart_tx_buf>
    800077a8:	01c0006f          	j	800077c4 <uartstart+0x50>
    800077ac:	0006c703          	lbu	a4,0(a3)
    800077b0:	00f63023          	sd	a5,0(a2)
    800077b4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800077b8:	00063783          	ld	a5,0(a2)
    800077bc:	00053703          	ld	a4,0(a0)
    800077c0:	00f70e63          	beq	a4,a5,800077dc <uartstart+0x68>
    800077c4:	01f7f713          	andi	a4,a5,31
    800077c8:	00e806b3          	add	a3,a6,a4
    800077cc:	0055c703          	lbu	a4,5(a1)
    800077d0:	00178793          	addi	a5,a5,1
    800077d4:	02077713          	andi	a4,a4,32
    800077d8:	fc071ae3          	bnez	a4,800077ac <uartstart+0x38>
    800077dc:	00813403          	ld	s0,8(sp)
    800077e0:	01010113          	addi	sp,sp,16
    800077e4:	00008067          	ret

00000000800077e8 <uartgetc>:
    800077e8:	ff010113          	addi	sp,sp,-16
    800077ec:	00813423          	sd	s0,8(sp)
    800077f0:	01010413          	addi	s0,sp,16
    800077f4:	10000737          	lui	a4,0x10000
    800077f8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800077fc:	0017f793          	andi	a5,a5,1
    80007800:	00078c63          	beqz	a5,80007818 <uartgetc+0x30>
    80007804:	00074503          	lbu	a0,0(a4)
    80007808:	0ff57513          	andi	a0,a0,255
    8000780c:	00813403          	ld	s0,8(sp)
    80007810:	01010113          	addi	sp,sp,16
    80007814:	00008067          	ret
    80007818:	fff00513          	li	a0,-1
    8000781c:	ff1ff06f          	j	8000780c <uartgetc+0x24>

0000000080007820 <uartintr>:
    80007820:	100007b7          	lui	a5,0x10000
    80007824:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007828:	0017f793          	andi	a5,a5,1
    8000782c:	0a078463          	beqz	a5,800078d4 <uartintr+0xb4>
    80007830:	fe010113          	addi	sp,sp,-32
    80007834:	00813823          	sd	s0,16(sp)
    80007838:	00913423          	sd	s1,8(sp)
    8000783c:	00113c23          	sd	ra,24(sp)
    80007840:	02010413          	addi	s0,sp,32
    80007844:	100004b7          	lui	s1,0x10000
    80007848:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000784c:	0ff57513          	andi	a0,a0,255
    80007850:	fffff097          	auipc	ra,0xfffff
    80007854:	534080e7          	jalr	1332(ra) # 80006d84 <consoleintr>
    80007858:	0054c783          	lbu	a5,5(s1)
    8000785c:	0017f793          	andi	a5,a5,1
    80007860:	fe0794e3          	bnez	a5,80007848 <uartintr+0x28>
    80007864:	00004617          	auipc	a2,0x4
    80007868:	0cc60613          	addi	a2,a2,204 # 8000b930 <uart_tx_r>
    8000786c:	00004517          	auipc	a0,0x4
    80007870:	0cc50513          	addi	a0,a0,204 # 8000b938 <uart_tx_w>
    80007874:	00063783          	ld	a5,0(a2)
    80007878:	00053703          	ld	a4,0(a0)
    8000787c:	04f70263          	beq	a4,a5,800078c0 <uartintr+0xa0>
    80007880:	100005b7          	lui	a1,0x10000
    80007884:	00005817          	auipc	a6,0x5
    80007888:	38c80813          	addi	a6,a6,908 # 8000cc10 <uart_tx_buf>
    8000788c:	01c0006f          	j	800078a8 <uartintr+0x88>
    80007890:	0006c703          	lbu	a4,0(a3)
    80007894:	00f63023          	sd	a5,0(a2)
    80007898:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000789c:	00063783          	ld	a5,0(a2)
    800078a0:	00053703          	ld	a4,0(a0)
    800078a4:	00f70e63          	beq	a4,a5,800078c0 <uartintr+0xa0>
    800078a8:	01f7f713          	andi	a4,a5,31
    800078ac:	00e806b3          	add	a3,a6,a4
    800078b0:	0055c703          	lbu	a4,5(a1)
    800078b4:	00178793          	addi	a5,a5,1
    800078b8:	02077713          	andi	a4,a4,32
    800078bc:	fc071ae3          	bnez	a4,80007890 <uartintr+0x70>
    800078c0:	01813083          	ld	ra,24(sp)
    800078c4:	01013403          	ld	s0,16(sp)
    800078c8:	00813483          	ld	s1,8(sp)
    800078cc:	02010113          	addi	sp,sp,32
    800078d0:	00008067          	ret
    800078d4:	00004617          	auipc	a2,0x4
    800078d8:	05c60613          	addi	a2,a2,92 # 8000b930 <uart_tx_r>
    800078dc:	00004517          	auipc	a0,0x4
    800078e0:	05c50513          	addi	a0,a0,92 # 8000b938 <uart_tx_w>
    800078e4:	00063783          	ld	a5,0(a2)
    800078e8:	00053703          	ld	a4,0(a0)
    800078ec:	04f70263          	beq	a4,a5,80007930 <uartintr+0x110>
    800078f0:	100005b7          	lui	a1,0x10000
    800078f4:	00005817          	auipc	a6,0x5
    800078f8:	31c80813          	addi	a6,a6,796 # 8000cc10 <uart_tx_buf>
    800078fc:	01c0006f          	j	80007918 <uartintr+0xf8>
    80007900:	0006c703          	lbu	a4,0(a3)
    80007904:	00f63023          	sd	a5,0(a2)
    80007908:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000790c:	00063783          	ld	a5,0(a2)
    80007910:	00053703          	ld	a4,0(a0)
    80007914:	02f70063          	beq	a4,a5,80007934 <uartintr+0x114>
    80007918:	01f7f713          	andi	a4,a5,31
    8000791c:	00e806b3          	add	a3,a6,a4
    80007920:	0055c703          	lbu	a4,5(a1)
    80007924:	00178793          	addi	a5,a5,1
    80007928:	02077713          	andi	a4,a4,32
    8000792c:	fc071ae3          	bnez	a4,80007900 <uartintr+0xe0>
    80007930:	00008067          	ret
    80007934:	00008067          	ret

0000000080007938 <kinit>:
    80007938:	fc010113          	addi	sp,sp,-64
    8000793c:	02913423          	sd	s1,40(sp)
    80007940:	fffff7b7          	lui	a5,0xfffff
    80007944:	00006497          	auipc	s1,0x6
    80007948:	2eb48493          	addi	s1,s1,747 # 8000dc2f <end+0xfff>
    8000794c:	02813823          	sd	s0,48(sp)
    80007950:	01313c23          	sd	s3,24(sp)
    80007954:	00f4f4b3          	and	s1,s1,a5
    80007958:	02113c23          	sd	ra,56(sp)
    8000795c:	03213023          	sd	s2,32(sp)
    80007960:	01413823          	sd	s4,16(sp)
    80007964:	01513423          	sd	s5,8(sp)
    80007968:	04010413          	addi	s0,sp,64
    8000796c:	000017b7          	lui	a5,0x1
    80007970:	01100993          	li	s3,17
    80007974:	00f487b3          	add	a5,s1,a5
    80007978:	01b99993          	slli	s3,s3,0x1b
    8000797c:	06f9e063          	bltu	s3,a5,800079dc <kinit+0xa4>
    80007980:	00005a97          	auipc	s5,0x5
    80007984:	2b0a8a93          	addi	s5,s5,688 # 8000cc30 <end>
    80007988:	0754ec63          	bltu	s1,s5,80007a00 <kinit+0xc8>
    8000798c:	0734fa63          	bgeu	s1,s3,80007a00 <kinit+0xc8>
    80007990:	00088a37          	lui	s4,0x88
    80007994:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007998:	00004917          	auipc	s2,0x4
    8000799c:	fa890913          	addi	s2,s2,-88 # 8000b940 <kmem>
    800079a0:	00ca1a13          	slli	s4,s4,0xc
    800079a4:	0140006f          	j	800079b8 <kinit+0x80>
    800079a8:	000017b7          	lui	a5,0x1
    800079ac:	00f484b3          	add	s1,s1,a5
    800079b0:	0554e863          	bltu	s1,s5,80007a00 <kinit+0xc8>
    800079b4:	0534f663          	bgeu	s1,s3,80007a00 <kinit+0xc8>
    800079b8:	00001637          	lui	a2,0x1
    800079bc:	00100593          	li	a1,1
    800079c0:	00048513          	mv	a0,s1
    800079c4:	00000097          	auipc	ra,0x0
    800079c8:	5e4080e7          	jalr	1508(ra) # 80007fa8 <__memset>
    800079cc:	00093783          	ld	a5,0(s2)
    800079d0:	00f4b023          	sd	a5,0(s1)
    800079d4:	00993023          	sd	s1,0(s2)
    800079d8:	fd4498e3          	bne	s1,s4,800079a8 <kinit+0x70>
    800079dc:	03813083          	ld	ra,56(sp)
    800079e0:	03013403          	ld	s0,48(sp)
    800079e4:	02813483          	ld	s1,40(sp)
    800079e8:	02013903          	ld	s2,32(sp)
    800079ec:	01813983          	ld	s3,24(sp)
    800079f0:	01013a03          	ld	s4,16(sp)
    800079f4:	00813a83          	ld	s5,8(sp)
    800079f8:	04010113          	addi	sp,sp,64
    800079fc:	00008067          	ret
    80007a00:	00002517          	auipc	a0,0x2
    80007a04:	ce050513          	addi	a0,a0,-800 # 800096e0 <digits+0x18>
    80007a08:	fffff097          	auipc	ra,0xfffff
    80007a0c:	4b4080e7          	jalr	1204(ra) # 80006ebc <panic>

0000000080007a10 <freerange>:
    80007a10:	fc010113          	addi	sp,sp,-64
    80007a14:	000017b7          	lui	a5,0x1
    80007a18:	02913423          	sd	s1,40(sp)
    80007a1c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007a20:	009504b3          	add	s1,a0,s1
    80007a24:	fffff537          	lui	a0,0xfffff
    80007a28:	02813823          	sd	s0,48(sp)
    80007a2c:	02113c23          	sd	ra,56(sp)
    80007a30:	03213023          	sd	s2,32(sp)
    80007a34:	01313c23          	sd	s3,24(sp)
    80007a38:	01413823          	sd	s4,16(sp)
    80007a3c:	01513423          	sd	s5,8(sp)
    80007a40:	01613023          	sd	s6,0(sp)
    80007a44:	04010413          	addi	s0,sp,64
    80007a48:	00a4f4b3          	and	s1,s1,a0
    80007a4c:	00f487b3          	add	a5,s1,a5
    80007a50:	06f5e463          	bltu	a1,a5,80007ab8 <freerange+0xa8>
    80007a54:	00005a97          	auipc	s5,0x5
    80007a58:	1dca8a93          	addi	s5,s5,476 # 8000cc30 <end>
    80007a5c:	0954e263          	bltu	s1,s5,80007ae0 <freerange+0xd0>
    80007a60:	01100993          	li	s3,17
    80007a64:	01b99993          	slli	s3,s3,0x1b
    80007a68:	0734fc63          	bgeu	s1,s3,80007ae0 <freerange+0xd0>
    80007a6c:	00058a13          	mv	s4,a1
    80007a70:	00004917          	auipc	s2,0x4
    80007a74:	ed090913          	addi	s2,s2,-304 # 8000b940 <kmem>
    80007a78:	00002b37          	lui	s6,0x2
    80007a7c:	0140006f          	j	80007a90 <freerange+0x80>
    80007a80:	000017b7          	lui	a5,0x1
    80007a84:	00f484b3          	add	s1,s1,a5
    80007a88:	0554ec63          	bltu	s1,s5,80007ae0 <freerange+0xd0>
    80007a8c:	0534fa63          	bgeu	s1,s3,80007ae0 <freerange+0xd0>
    80007a90:	00001637          	lui	a2,0x1
    80007a94:	00100593          	li	a1,1
    80007a98:	00048513          	mv	a0,s1
    80007a9c:	00000097          	auipc	ra,0x0
    80007aa0:	50c080e7          	jalr	1292(ra) # 80007fa8 <__memset>
    80007aa4:	00093703          	ld	a4,0(s2)
    80007aa8:	016487b3          	add	a5,s1,s6
    80007aac:	00e4b023          	sd	a4,0(s1)
    80007ab0:	00993023          	sd	s1,0(s2)
    80007ab4:	fcfa76e3          	bgeu	s4,a5,80007a80 <freerange+0x70>
    80007ab8:	03813083          	ld	ra,56(sp)
    80007abc:	03013403          	ld	s0,48(sp)
    80007ac0:	02813483          	ld	s1,40(sp)
    80007ac4:	02013903          	ld	s2,32(sp)
    80007ac8:	01813983          	ld	s3,24(sp)
    80007acc:	01013a03          	ld	s4,16(sp)
    80007ad0:	00813a83          	ld	s5,8(sp)
    80007ad4:	00013b03          	ld	s6,0(sp)
    80007ad8:	04010113          	addi	sp,sp,64
    80007adc:	00008067          	ret
    80007ae0:	00002517          	auipc	a0,0x2
    80007ae4:	c0050513          	addi	a0,a0,-1024 # 800096e0 <digits+0x18>
    80007ae8:	fffff097          	auipc	ra,0xfffff
    80007aec:	3d4080e7          	jalr	980(ra) # 80006ebc <panic>

0000000080007af0 <kfree>:
    80007af0:	fe010113          	addi	sp,sp,-32
    80007af4:	00813823          	sd	s0,16(sp)
    80007af8:	00113c23          	sd	ra,24(sp)
    80007afc:	00913423          	sd	s1,8(sp)
    80007b00:	02010413          	addi	s0,sp,32
    80007b04:	03451793          	slli	a5,a0,0x34
    80007b08:	04079c63          	bnez	a5,80007b60 <kfree+0x70>
    80007b0c:	00005797          	auipc	a5,0x5
    80007b10:	12478793          	addi	a5,a5,292 # 8000cc30 <end>
    80007b14:	00050493          	mv	s1,a0
    80007b18:	04f56463          	bltu	a0,a5,80007b60 <kfree+0x70>
    80007b1c:	01100793          	li	a5,17
    80007b20:	01b79793          	slli	a5,a5,0x1b
    80007b24:	02f57e63          	bgeu	a0,a5,80007b60 <kfree+0x70>
    80007b28:	00001637          	lui	a2,0x1
    80007b2c:	00100593          	li	a1,1
    80007b30:	00000097          	auipc	ra,0x0
    80007b34:	478080e7          	jalr	1144(ra) # 80007fa8 <__memset>
    80007b38:	00004797          	auipc	a5,0x4
    80007b3c:	e0878793          	addi	a5,a5,-504 # 8000b940 <kmem>
    80007b40:	0007b703          	ld	a4,0(a5)
    80007b44:	01813083          	ld	ra,24(sp)
    80007b48:	01013403          	ld	s0,16(sp)
    80007b4c:	00e4b023          	sd	a4,0(s1)
    80007b50:	0097b023          	sd	s1,0(a5)
    80007b54:	00813483          	ld	s1,8(sp)
    80007b58:	02010113          	addi	sp,sp,32
    80007b5c:	00008067          	ret
    80007b60:	00002517          	auipc	a0,0x2
    80007b64:	b8050513          	addi	a0,a0,-1152 # 800096e0 <digits+0x18>
    80007b68:	fffff097          	auipc	ra,0xfffff
    80007b6c:	354080e7          	jalr	852(ra) # 80006ebc <panic>

0000000080007b70 <kalloc>:
    80007b70:	fe010113          	addi	sp,sp,-32
    80007b74:	00813823          	sd	s0,16(sp)
    80007b78:	00913423          	sd	s1,8(sp)
    80007b7c:	00113c23          	sd	ra,24(sp)
    80007b80:	02010413          	addi	s0,sp,32
    80007b84:	00004797          	auipc	a5,0x4
    80007b88:	dbc78793          	addi	a5,a5,-580 # 8000b940 <kmem>
    80007b8c:	0007b483          	ld	s1,0(a5)
    80007b90:	02048063          	beqz	s1,80007bb0 <kalloc+0x40>
    80007b94:	0004b703          	ld	a4,0(s1)
    80007b98:	00001637          	lui	a2,0x1
    80007b9c:	00500593          	li	a1,5
    80007ba0:	00048513          	mv	a0,s1
    80007ba4:	00e7b023          	sd	a4,0(a5)
    80007ba8:	00000097          	auipc	ra,0x0
    80007bac:	400080e7          	jalr	1024(ra) # 80007fa8 <__memset>
    80007bb0:	01813083          	ld	ra,24(sp)
    80007bb4:	01013403          	ld	s0,16(sp)
    80007bb8:	00048513          	mv	a0,s1
    80007bbc:	00813483          	ld	s1,8(sp)
    80007bc0:	02010113          	addi	sp,sp,32
    80007bc4:	00008067          	ret

0000000080007bc8 <initlock>:
    80007bc8:	ff010113          	addi	sp,sp,-16
    80007bcc:	00813423          	sd	s0,8(sp)
    80007bd0:	01010413          	addi	s0,sp,16
    80007bd4:	00813403          	ld	s0,8(sp)
    80007bd8:	00b53423          	sd	a1,8(a0)
    80007bdc:	00052023          	sw	zero,0(a0)
    80007be0:	00053823          	sd	zero,16(a0)
    80007be4:	01010113          	addi	sp,sp,16
    80007be8:	00008067          	ret

0000000080007bec <acquire>:
    80007bec:	fe010113          	addi	sp,sp,-32
    80007bf0:	00813823          	sd	s0,16(sp)
    80007bf4:	00913423          	sd	s1,8(sp)
    80007bf8:	00113c23          	sd	ra,24(sp)
    80007bfc:	01213023          	sd	s2,0(sp)
    80007c00:	02010413          	addi	s0,sp,32
    80007c04:	00050493          	mv	s1,a0
    80007c08:	10002973          	csrr	s2,sstatus
    80007c0c:	100027f3          	csrr	a5,sstatus
    80007c10:	ffd7f793          	andi	a5,a5,-3
    80007c14:	10079073          	csrw	sstatus,a5
    80007c18:	fffff097          	auipc	ra,0xfffff
    80007c1c:	8e8080e7          	jalr	-1816(ra) # 80006500 <mycpu>
    80007c20:	07852783          	lw	a5,120(a0)
    80007c24:	06078e63          	beqz	a5,80007ca0 <acquire+0xb4>
    80007c28:	fffff097          	auipc	ra,0xfffff
    80007c2c:	8d8080e7          	jalr	-1832(ra) # 80006500 <mycpu>
    80007c30:	07852783          	lw	a5,120(a0)
    80007c34:	0004a703          	lw	a4,0(s1)
    80007c38:	0017879b          	addiw	a5,a5,1
    80007c3c:	06f52c23          	sw	a5,120(a0)
    80007c40:	04071063          	bnez	a4,80007c80 <acquire+0x94>
    80007c44:	00100713          	li	a4,1
    80007c48:	00070793          	mv	a5,a4
    80007c4c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007c50:	0007879b          	sext.w	a5,a5
    80007c54:	fe079ae3          	bnez	a5,80007c48 <acquire+0x5c>
    80007c58:	0ff0000f          	fence
    80007c5c:	fffff097          	auipc	ra,0xfffff
    80007c60:	8a4080e7          	jalr	-1884(ra) # 80006500 <mycpu>
    80007c64:	01813083          	ld	ra,24(sp)
    80007c68:	01013403          	ld	s0,16(sp)
    80007c6c:	00a4b823          	sd	a0,16(s1)
    80007c70:	00013903          	ld	s2,0(sp)
    80007c74:	00813483          	ld	s1,8(sp)
    80007c78:	02010113          	addi	sp,sp,32
    80007c7c:	00008067          	ret
    80007c80:	0104b903          	ld	s2,16(s1)
    80007c84:	fffff097          	auipc	ra,0xfffff
    80007c88:	87c080e7          	jalr	-1924(ra) # 80006500 <mycpu>
    80007c8c:	faa91ce3          	bne	s2,a0,80007c44 <acquire+0x58>
    80007c90:	00002517          	auipc	a0,0x2
    80007c94:	a5850513          	addi	a0,a0,-1448 # 800096e8 <digits+0x20>
    80007c98:	fffff097          	auipc	ra,0xfffff
    80007c9c:	224080e7          	jalr	548(ra) # 80006ebc <panic>
    80007ca0:	00195913          	srli	s2,s2,0x1
    80007ca4:	fffff097          	auipc	ra,0xfffff
    80007ca8:	85c080e7          	jalr	-1956(ra) # 80006500 <mycpu>
    80007cac:	00197913          	andi	s2,s2,1
    80007cb0:	07252e23          	sw	s2,124(a0)
    80007cb4:	f75ff06f          	j	80007c28 <acquire+0x3c>

0000000080007cb8 <release>:
    80007cb8:	fe010113          	addi	sp,sp,-32
    80007cbc:	00813823          	sd	s0,16(sp)
    80007cc0:	00113c23          	sd	ra,24(sp)
    80007cc4:	00913423          	sd	s1,8(sp)
    80007cc8:	01213023          	sd	s2,0(sp)
    80007ccc:	02010413          	addi	s0,sp,32
    80007cd0:	00052783          	lw	a5,0(a0)
    80007cd4:	00079a63          	bnez	a5,80007ce8 <release+0x30>
    80007cd8:	00002517          	auipc	a0,0x2
    80007cdc:	a1850513          	addi	a0,a0,-1512 # 800096f0 <digits+0x28>
    80007ce0:	fffff097          	auipc	ra,0xfffff
    80007ce4:	1dc080e7          	jalr	476(ra) # 80006ebc <panic>
    80007ce8:	01053903          	ld	s2,16(a0)
    80007cec:	00050493          	mv	s1,a0
    80007cf0:	fffff097          	auipc	ra,0xfffff
    80007cf4:	810080e7          	jalr	-2032(ra) # 80006500 <mycpu>
    80007cf8:	fea910e3          	bne	s2,a0,80007cd8 <release+0x20>
    80007cfc:	0004b823          	sd	zero,16(s1)
    80007d00:	0ff0000f          	fence
    80007d04:	0f50000f          	fence	iorw,ow
    80007d08:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007d0c:	ffffe097          	auipc	ra,0xffffe
    80007d10:	7f4080e7          	jalr	2036(ra) # 80006500 <mycpu>
    80007d14:	100027f3          	csrr	a5,sstatus
    80007d18:	0027f793          	andi	a5,a5,2
    80007d1c:	04079a63          	bnez	a5,80007d70 <release+0xb8>
    80007d20:	07852783          	lw	a5,120(a0)
    80007d24:	02f05e63          	blez	a5,80007d60 <release+0xa8>
    80007d28:	fff7871b          	addiw	a4,a5,-1
    80007d2c:	06e52c23          	sw	a4,120(a0)
    80007d30:	00071c63          	bnez	a4,80007d48 <release+0x90>
    80007d34:	07c52783          	lw	a5,124(a0)
    80007d38:	00078863          	beqz	a5,80007d48 <release+0x90>
    80007d3c:	100027f3          	csrr	a5,sstatus
    80007d40:	0027e793          	ori	a5,a5,2
    80007d44:	10079073          	csrw	sstatus,a5
    80007d48:	01813083          	ld	ra,24(sp)
    80007d4c:	01013403          	ld	s0,16(sp)
    80007d50:	00813483          	ld	s1,8(sp)
    80007d54:	00013903          	ld	s2,0(sp)
    80007d58:	02010113          	addi	sp,sp,32
    80007d5c:	00008067          	ret
    80007d60:	00002517          	auipc	a0,0x2
    80007d64:	9b050513          	addi	a0,a0,-1616 # 80009710 <digits+0x48>
    80007d68:	fffff097          	auipc	ra,0xfffff
    80007d6c:	154080e7          	jalr	340(ra) # 80006ebc <panic>
    80007d70:	00002517          	auipc	a0,0x2
    80007d74:	98850513          	addi	a0,a0,-1656 # 800096f8 <digits+0x30>
    80007d78:	fffff097          	auipc	ra,0xfffff
    80007d7c:	144080e7          	jalr	324(ra) # 80006ebc <panic>

0000000080007d80 <holding>:
    80007d80:	00052783          	lw	a5,0(a0)
    80007d84:	00079663          	bnez	a5,80007d90 <holding+0x10>
    80007d88:	00000513          	li	a0,0
    80007d8c:	00008067          	ret
    80007d90:	fe010113          	addi	sp,sp,-32
    80007d94:	00813823          	sd	s0,16(sp)
    80007d98:	00913423          	sd	s1,8(sp)
    80007d9c:	00113c23          	sd	ra,24(sp)
    80007da0:	02010413          	addi	s0,sp,32
    80007da4:	01053483          	ld	s1,16(a0)
    80007da8:	ffffe097          	auipc	ra,0xffffe
    80007dac:	758080e7          	jalr	1880(ra) # 80006500 <mycpu>
    80007db0:	01813083          	ld	ra,24(sp)
    80007db4:	01013403          	ld	s0,16(sp)
    80007db8:	40a48533          	sub	a0,s1,a0
    80007dbc:	00153513          	seqz	a0,a0
    80007dc0:	00813483          	ld	s1,8(sp)
    80007dc4:	02010113          	addi	sp,sp,32
    80007dc8:	00008067          	ret

0000000080007dcc <push_off>:
    80007dcc:	fe010113          	addi	sp,sp,-32
    80007dd0:	00813823          	sd	s0,16(sp)
    80007dd4:	00113c23          	sd	ra,24(sp)
    80007dd8:	00913423          	sd	s1,8(sp)
    80007ddc:	02010413          	addi	s0,sp,32
    80007de0:	100024f3          	csrr	s1,sstatus
    80007de4:	100027f3          	csrr	a5,sstatus
    80007de8:	ffd7f793          	andi	a5,a5,-3
    80007dec:	10079073          	csrw	sstatus,a5
    80007df0:	ffffe097          	auipc	ra,0xffffe
    80007df4:	710080e7          	jalr	1808(ra) # 80006500 <mycpu>
    80007df8:	07852783          	lw	a5,120(a0)
    80007dfc:	02078663          	beqz	a5,80007e28 <push_off+0x5c>
    80007e00:	ffffe097          	auipc	ra,0xffffe
    80007e04:	700080e7          	jalr	1792(ra) # 80006500 <mycpu>
    80007e08:	07852783          	lw	a5,120(a0)
    80007e0c:	01813083          	ld	ra,24(sp)
    80007e10:	01013403          	ld	s0,16(sp)
    80007e14:	0017879b          	addiw	a5,a5,1
    80007e18:	06f52c23          	sw	a5,120(a0)
    80007e1c:	00813483          	ld	s1,8(sp)
    80007e20:	02010113          	addi	sp,sp,32
    80007e24:	00008067          	ret
    80007e28:	0014d493          	srli	s1,s1,0x1
    80007e2c:	ffffe097          	auipc	ra,0xffffe
    80007e30:	6d4080e7          	jalr	1748(ra) # 80006500 <mycpu>
    80007e34:	0014f493          	andi	s1,s1,1
    80007e38:	06952e23          	sw	s1,124(a0)
    80007e3c:	fc5ff06f          	j	80007e00 <push_off+0x34>

0000000080007e40 <pop_off>:
    80007e40:	ff010113          	addi	sp,sp,-16
    80007e44:	00813023          	sd	s0,0(sp)
    80007e48:	00113423          	sd	ra,8(sp)
    80007e4c:	01010413          	addi	s0,sp,16
    80007e50:	ffffe097          	auipc	ra,0xffffe
    80007e54:	6b0080e7          	jalr	1712(ra) # 80006500 <mycpu>
    80007e58:	100027f3          	csrr	a5,sstatus
    80007e5c:	0027f793          	andi	a5,a5,2
    80007e60:	04079663          	bnez	a5,80007eac <pop_off+0x6c>
    80007e64:	07852783          	lw	a5,120(a0)
    80007e68:	02f05a63          	blez	a5,80007e9c <pop_off+0x5c>
    80007e6c:	fff7871b          	addiw	a4,a5,-1
    80007e70:	06e52c23          	sw	a4,120(a0)
    80007e74:	00071c63          	bnez	a4,80007e8c <pop_off+0x4c>
    80007e78:	07c52783          	lw	a5,124(a0)
    80007e7c:	00078863          	beqz	a5,80007e8c <pop_off+0x4c>
    80007e80:	100027f3          	csrr	a5,sstatus
    80007e84:	0027e793          	ori	a5,a5,2
    80007e88:	10079073          	csrw	sstatus,a5
    80007e8c:	00813083          	ld	ra,8(sp)
    80007e90:	00013403          	ld	s0,0(sp)
    80007e94:	01010113          	addi	sp,sp,16
    80007e98:	00008067          	ret
    80007e9c:	00002517          	auipc	a0,0x2
    80007ea0:	87450513          	addi	a0,a0,-1932 # 80009710 <digits+0x48>
    80007ea4:	fffff097          	auipc	ra,0xfffff
    80007ea8:	018080e7          	jalr	24(ra) # 80006ebc <panic>
    80007eac:	00002517          	auipc	a0,0x2
    80007eb0:	84c50513          	addi	a0,a0,-1972 # 800096f8 <digits+0x30>
    80007eb4:	fffff097          	auipc	ra,0xfffff
    80007eb8:	008080e7          	jalr	8(ra) # 80006ebc <panic>

0000000080007ebc <push_on>:
    80007ebc:	fe010113          	addi	sp,sp,-32
    80007ec0:	00813823          	sd	s0,16(sp)
    80007ec4:	00113c23          	sd	ra,24(sp)
    80007ec8:	00913423          	sd	s1,8(sp)
    80007ecc:	02010413          	addi	s0,sp,32
    80007ed0:	100024f3          	csrr	s1,sstatus
    80007ed4:	100027f3          	csrr	a5,sstatus
    80007ed8:	0027e793          	ori	a5,a5,2
    80007edc:	10079073          	csrw	sstatus,a5
    80007ee0:	ffffe097          	auipc	ra,0xffffe
    80007ee4:	620080e7          	jalr	1568(ra) # 80006500 <mycpu>
    80007ee8:	07852783          	lw	a5,120(a0)
    80007eec:	02078663          	beqz	a5,80007f18 <push_on+0x5c>
    80007ef0:	ffffe097          	auipc	ra,0xffffe
    80007ef4:	610080e7          	jalr	1552(ra) # 80006500 <mycpu>
    80007ef8:	07852783          	lw	a5,120(a0)
    80007efc:	01813083          	ld	ra,24(sp)
    80007f00:	01013403          	ld	s0,16(sp)
    80007f04:	0017879b          	addiw	a5,a5,1
    80007f08:	06f52c23          	sw	a5,120(a0)
    80007f0c:	00813483          	ld	s1,8(sp)
    80007f10:	02010113          	addi	sp,sp,32
    80007f14:	00008067          	ret
    80007f18:	0014d493          	srli	s1,s1,0x1
    80007f1c:	ffffe097          	auipc	ra,0xffffe
    80007f20:	5e4080e7          	jalr	1508(ra) # 80006500 <mycpu>
    80007f24:	0014f493          	andi	s1,s1,1
    80007f28:	06952e23          	sw	s1,124(a0)
    80007f2c:	fc5ff06f          	j	80007ef0 <push_on+0x34>

0000000080007f30 <pop_on>:
    80007f30:	ff010113          	addi	sp,sp,-16
    80007f34:	00813023          	sd	s0,0(sp)
    80007f38:	00113423          	sd	ra,8(sp)
    80007f3c:	01010413          	addi	s0,sp,16
    80007f40:	ffffe097          	auipc	ra,0xffffe
    80007f44:	5c0080e7          	jalr	1472(ra) # 80006500 <mycpu>
    80007f48:	100027f3          	csrr	a5,sstatus
    80007f4c:	0027f793          	andi	a5,a5,2
    80007f50:	04078463          	beqz	a5,80007f98 <pop_on+0x68>
    80007f54:	07852783          	lw	a5,120(a0)
    80007f58:	02f05863          	blez	a5,80007f88 <pop_on+0x58>
    80007f5c:	fff7879b          	addiw	a5,a5,-1
    80007f60:	06f52c23          	sw	a5,120(a0)
    80007f64:	07853783          	ld	a5,120(a0)
    80007f68:	00079863          	bnez	a5,80007f78 <pop_on+0x48>
    80007f6c:	100027f3          	csrr	a5,sstatus
    80007f70:	ffd7f793          	andi	a5,a5,-3
    80007f74:	10079073          	csrw	sstatus,a5
    80007f78:	00813083          	ld	ra,8(sp)
    80007f7c:	00013403          	ld	s0,0(sp)
    80007f80:	01010113          	addi	sp,sp,16
    80007f84:	00008067          	ret
    80007f88:	00001517          	auipc	a0,0x1
    80007f8c:	7b050513          	addi	a0,a0,1968 # 80009738 <digits+0x70>
    80007f90:	fffff097          	auipc	ra,0xfffff
    80007f94:	f2c080e7          	jalr	-212(ra) # 80006ebc <panic>
    80007f98:	00001517          	auipc	a0,0x1
    80007f9c:	78050513          	addi	a0,a0,1920 # 80009718 <digits+0x50>
    80007fa0:	fffff097          	auipc	ra,0xfffff
    80007fa4:	f1c080e7          	jalr	-228(ra) # 80006ebc <panic>

0000000080007fa8 <__memset>:
    80007fa8:	ff010113          	addi	sp,sp,-16
    80007fac:	00813423          	sd	s0,8(sp)
    80007fb0:	01010413          	addi	s0,sp,16
    80007fb4:	1a060e63          	beqz	a2,80008170 <__memset+0x1c8>
    80007fb8:	40a007b3          	neg	a5,a0
    80007fbc:	0077f793          	andi	a5,a5,7
    80007fc0:	00778693          	addi	a3,a5,7
    80007fc4:	00b00813          	li	a6,11
    80007fc8:	0ff5f593          	andi	a1,a1,255
    80007fcc:	fff6071b          	addiw	a4,a2,-1
    80007fd0:	1b06e663          	bltu	a3,a6,8000817c <__memset+0x1d4>
    80007fd4:	1cd76463          	bltu	a4,a3,8000819c <__memset+0x1f4>
    80007fd8:	1a078e63          	beqz	a5,80008194 <__memset+0x1ec>
    80007fdc:	00b50023          	sb	a1,0(a0)
    80007fe0:	00100713          	li	a4,1
    80007fe4:	1ae78463          	beq	a5,a4,8000818c <__memset+0x1e4>
    80007fe8:	00b500a3          	sb	a1,1(a0)
    80007fec:	00200713          	li	a4,2
    80007ff0:	1ae78a63          	beq	a5,a4,800081a4 <__memset+0x1fc>
    80007ff4:	00b50123          	sb	a1,2(a0)
    80007ff8:	00300713          	li	a4,3
    80007ffc:	18e78463          	beq	a5,a4,80008184 <__memset+0x1dc>
    80008000:	00b501a3          	sb	a1,3(a0)
    80008004:	00400713          	li	a4,4
    80008008:	1ae78263          	beq	a5,a4,800081ac <__memset+0x204>
    8000800c:	00b50223          	sb	a1,4(a0)
    80008010:	00500713          	li	a4,5
    80008014:	1ae78063          	beq	a5,a4,800081b4 <__memset+0x20c>
    80008018:	00b502a3          	sb	a1,5(a0)
    8000801c:	00700713          	li	a4,7
    80008020:	18e79e63          	bne	a5,a4,800081bc <__memset+0x214>
    80008024:	00b50323          	sb	a1,6(a0)
    80008028:	00700e93          	li	t4,7
    8000802c:	00859713          	slli	a4,a1,0x8
    80008030:	00e5e733          	or	a4,a1,a4
    80008034:	01059e13          	slli	t3,a1,0x10
    80008038:	01c76e33          	or	t3,a4,t3
    8000803c:	01859313          	slli	t1,a1,0x18
    80008040:	006e6333          	or	t1,t3,t1
    80008044:	02059893          	slli	a7,a1,0x20
    80008048:	40f60e3b          	subw	t3,a2,a5
    8000804c:	011368b3          	or	a7,t1,a7
    80008050:	02859813          	slli	a6,a1,0x28
    80008054:	0108e833          	or	a6,a7,a6
    80008058:	03059693          	slli	a3,a1,0x30
    8000805c:	003e589b          	srliw	a7,t3,0x3
    80008060:	00d866b3          	or	a3,a6,a3
    80008064:	03859713          	slli	a4,a1,0x38
    80008068:	00389813          	slli	a6,a7,0x3
    8000806c:	00f507b3          	add	a5,a0,a5
    80008070:	00e6e733          	or	a4,a3,a4
    80008074:	000e089b          	sext.w	a7,t3
    80008078:	00f806b3          	add	a3,a6,a5
    8000807c:	00e7b023          	sd	a4,0(a5)
    80008080:	00878793          	addi	a5,a5,8
    80008084:	fed79ce3          	bne	a5,a3,8000807c <__memset+0xd4>
    80008088:	ff8e7793          	andi	a5,t3,-8
    8000808c:	0007871b          	sext.w	a4,a5
    80008090:	01d787bb          	addw	a5,a5,t4
    80008094:	0ce88e63          	beq	a7,a4,80008170 <__memset+0x1c8>
    80008098:	00f50733          	add	a4,a0,a5
    8000809c:	00b70023          	sb	a1,0(a4)
    800080a0:	0017871b          	addiw	a4,a5,1
    800080a4:	0cc77663          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    800080a8:	00e50733          	add	a4,a0,a4
    800080ac:	00b70023          	sb	a1,0(a4)
    800080b0:	0027871b          	addiw	a4,a5,2
    800080b4:	0ac77e63          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    800080b8:	00e50733          	add	a4,a0,a4
    800080bc:	00b70023          	sb	a1,0(a4)
    800080c0:	0037871b          	addiw	a4,a5,3
    800080c4:	0ac77663          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    800080c8:	00e50733          	add	a4,a0,a4
    800080cc:	00b70023          	sb	a1,0(a4)
    800080d0:	0047871b          	addiw	a4,a5,4
    800080d4:	08c77e63          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    800080d8:	00e50733          	add	a4,a0,a4
    800080dc:	00b70023          	sb	a1,0(a4)
    800080e0:	0057871b          	addiw	a4,a5,5
    800080e4:	08c77663          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    800080e8:	00e50733          	add	a4,a0,a4
    800080ec:	00b70023          	sb	a1,0(a4)
    800080f0:	0067871b          	addiw	a4,a5,6
    800080f4:	06c77e63          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    800080f8:	00e50733          	add	a4,a0,a4
    800080fc:	00b70023          	sb	a1,0(a4)
    80008100:	0077871b          	addiw	a4,a5,7
    80008104:	06c77663          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    80008108:	00e50733          	add	a4,a0,a4
    8000810c:	00b70023          	sb	a1,0(a4)
    80008110:	0087871b          	addiw	a4,a5,8
    80008114:	04c77e63          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    80008118:	00e50733          	add	a4,a0,a4
    8000811c:	00b70023          	sb	a1,0(a4)
    80008120:	0097871b          	addiw	a4,a5,9
    80008124:	04c77663          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    80008128:	00e50733          	add	a4,a0,a4
    8000812c:	00b70023          	sb	a1,0(a4)
    80008130:	00a7871b          	addiw	a4,a5,10
    80008134:	02c77e63          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    80008138:	00e50733          	add	a4,a0,a4
    8000813c:	00b70023          	sb	a1,0(a4)
    80008140:	00b7871b          	addiw	a4,a5,11
    80008144:	02c77663          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    80008148:	00e50733          	add	a4,a0,a4
    8000814c:	00b70023          	sb	a1,0(a4)
    80008150:	00c7871b          	addiw	a4,a5,12
    80008154:	00c77e63          	bgeu	a4,a2,80008170 <__memset+0x1c8>
    80008158:	00e50733          	add	a4,a0,a4
    8000815c:	00b70023          	sb	a1,0(a4)
    80008160:	00d7879b          	addiw	a5,a5,13
    80008164:	00c7f663          	bgeu	a5,a2,80008170 <__memset+0x1c8>
    80008168:	00f507b3          	add	a5,a0,a5
    8000816c:	00b78023          	sb	a1,0(a5)
    80008170:	00813403          	ld	s0,8(sp)
    80008174:	01010113          	addi	sp,sp,16
    80008178:	00008067          	ret
    8000817c:	00b00693          	li	a3,11
    80008180:	e55ff06f          	j	80007fd4 <__memset+0x2c>
    80008184:	00300e93          	li	t4,3
    80008188:	ea5ff06f          	j	8000802c <__memset+0x84>
    8000818c:	00100e93          	li	t4,1
    80008190:	e9dff06f          	j	8000802c <__memset+0x84>
    80008194:	00000e93          	li	t4,0
    80008198:	e95ff06f          	j	8000802c <__memset+0x84>
    8000819c:	00000793          	li	a5,0
    800081a0:	ef9ff06f          	j	80008098 <__memset+0xf0>
    800081a4:	00200e93          	li	t4,2
    800081a8:	e85ff06f          	j	8000802c <__memset+0x84>
    800081ac:	00400e93          	li	t4,4
    800081b0:	e7dff06f          	j	8000802c <__memset+0x84>
    800081b4:	00500e93          	li	t4,5
    800081b8:	e75ff06f          	j	8000802c <__memset+0x84>
    800081bc:	00600e93          	li	t4,6
    800081c0:	e6dff06f          	j	8000802c <__memset+0x84>

00000000800081c4 <__memmove>:
    800081c4:	ff010113          	addi	sp,sp,-16
    800081c8:	00813423          	sd	s0,8(sp)
    800081cc:	01010413          	addi	s0,sp,16
    800081d0:	0e060863          	beqz	a2,800082c0 <__memmove+0xfc>
    800081d4:	fff6069b          	addiw	a3,a2,-1
    800081d8:	0006881b          	sext.w	a6,a3
    800081dc:	0ea5e863          	bltu	a1,a0,800082cc <__memmove+0x108>
    800081e0:	00758713          	addi	a4,a1,7
    800081e4:	00a5e7b3          	or	a5,a1,a0
    800081e8:	40a70733          	sub	a4,a4,a0
    800081ec:	0077f793          	andi	a5,a5,7
    800081f0:	00f73713          	sltiu	a4,a4,15
    800081f4:	00174713          	xori	a4,a4,1
    800081f8:	0017b793          	seqz	a5,a5
    800081fc:	00e7f7b3          	and	a5,a5,a4
    80008200:	10078863          	beqz	a5,80008310 <__memmove+0x14c>
    80008204:	00900793          	li	a5,9
    80008208:	1107f463          	bgeu	a5,a6,80008310 <__memmove+0x14c>
    8000820c:	0036581b          	srliw	a6,a2,0x3
    80008210:	fff8081b          	addiw	a6,a6,-1
    80008214:	02081813          	slli	a6,a6,0x20
    80008218:	01d85893          	srli	a7,a6,0x1d
    8000821c:	00858813          	addi	a6,a1,8
    80008220:	00058793          	mv	a5,a1
    80008224:	00050713          	mv	a4,a0
    80008228:	01088833          	add	a6,a7,a6
    8000822c:	0007b883          	ld	a7,0(a5)
    80008230:	00878793          	addi	a5,a5,8
    80008234:	00870713          	addi	a4,a4,8
    80008238:	ff173c23          	sd	a7,-8(a4)
    8000823c:	ff0798e3          	bne	a5,a6,8000822c <__memmove+0x68>
    80008240:	ff867713          	andi	a4,a2,-8
    80008244:	02071793          	slli	a5,a4,0x20
    80008248:	0207d793          	srli	a5,a5,0x20
    8000824c:	00f585b3          	add	a1,a1,a5
    80008250:	40e686bb          	subw	a3,a3,a4
    80008254:	00f507b3          	add	a5,a0,a5
    80008258:	06e60463          	beq	a2,a4,800082c0 <__memmove+0xfc>
    8000825c:	0005c703          	lbu	a4,0(a1)
    80008260:	00e78023          	sb	a4,0(a5)
    80008264:	04068e63          	beqz	a3,800082c0 <__memmove+0xfc>
    80008268:	0015c603          	lbu	a2,1(a1)
    8000826c:	00100713          	li	a4,1
    80008270:	00c780a3          	sb	a2,1(a5)
    80008274:	04e68663          	beq	a3,a4,800082c0 <__memmove+0xfc>
    80008278:	0025c603          	lbu	a2,2(a1)
    8000827c:	00200713          	li	a4,2
    80008280:	00c78123          	sb	a2,2(a5)
    80008284:	02e68e63          	beq	a3,a4,800082c0 <__memmove+0xfc>
    80008288:	0035c603          	lbu	a2,3(a1)
    8000828c:	00300713          	li	a4,3
    80008290:	00c781a3          	sb	a2,3(a5)
    80008294:	02e68663          	beq	a3,a4,800082c0 <__memmove+0xfc>
    80008298:	0045c603          	lbu	a2,4(a1)
    8000829c:	00400713          	li	a4,4
    800082a0:	00c78223          	sb	a2,4(a5)
    800082a4:	00e68e63          	beq	a3,a4,800082c0 <__memmove+0xfc>
    800082a8:	0055c603          	lbu	a2,5(a1)
    800082ac:	00500713          	li	a4,5
    800082b0:	00c782a3          	sb	a2,5(a5)
    800082b4:	00e68663          	beq	a3,a4,800082c0 <__memmove+0xfc>
    800082b8:	0065c703          	lbu	a4,6(a1)
    800082bc:	00e78323          	sb	a4,6(a5)
    800082c0:	00813403          	ld	s0,8(sp)
    800082c4:	01010113          	addi	sp,sp,16
    800082c8:	00008067          	ret
    800082cc:	02061713          	slli	a4,a2,0x20
    800082d0:	02075713          	srli	a4,a4,0x20
    800082d4:	00e587b3          	add	a5,a1,a4
    800082d8:	f0f574e3          	bgeu	a0,a5,800081e0 <__memmove+0x1c>
    800082dc:	02069613          	slli	a2,a3,0x20
    800082e0:	02065613          	srli	a2,a2,0x20
    800082e4:	fff64613          	not	a2,a2
    800082e8:	00e50733          	add	a4,a0,a4
    800082ec:	00c78633          	add	a2,a5,a2
    800082f0:	fff7c683          	lbu	a3,-1(a5)
    800082f4:	fff78793          	addi	a5,a5,-1
    800082f8:	fff70713          	addi	a4,a4,-1
    800082fc:	00d70023          	sb	a3,0(a4)
    80008300:	fec798e3          	bne	a5,a2,800082f0 <__memmove+0x12c>
    80008304:	00813403          	ld	s0,8(sp)
    80008308:	01010113          	addi	sp,sp,16
    8000830c:	00008067          	ret
    80008310:	02069713          	slli	a4,a3,0x20
    80008314:	02075713          	srli	a4,a4,0x20
    80008318:	00170713          	addi	a4,a4,1
    8000831c:	00e50733          	add	a4,a0,a4
    80008320:	00050793          	mv	a5,a0
    80008324:	0005c683          	lbu	a3,0(a1)
    80008328:	00178793          	addi	a5,a5,1
    8000832c:	00158593          	addi	a1,a1,1
    80008330:	fed78fa3          	sb	a3,-1(a5)
    80008334:	fee798e3          	bne	a5,a4,80008324 <__memmove+0x160>
    80008338:	f89ff06f          	j	800082c0 <__memmove+0xfc>

000000008000833c <__putc>:
    8000833c:	fe010113          	addi	sp,sp,-32
    80008340:	00813823          	sd	s0,16(sp)
    80008344:	00113c23          	sd	ra,24(sp)
    80008348:	02010413          	addi	s0,sp,32
    8000834c:	00050793          	mv	a5,a0
    80008350:	fef40593          	addi	a1,s0,-17
    80008354:	00100613          	li	a2,1
    80008358:	00000513          	li	a0,0
    8000835c:	fef407a3          	sb	a5,-17(s0)
    80008360:	fffff097          	auipc	ra,0xfffff
    80008364:	b3c080e7          	jalr	-1220(ra) # 80006e9c <console_write>
    80008368:	01813083          	ld	ra,24(sp)
    8000836c:	01013403          	ld	s0,16(sp)
    80008370:	02010113          	addi	sp,sp,32
    80008374:	00008067          	ret

0000000080008378 <__getc>:
    80008378:	fe010113          	addi	sp,sp,-32
    8000837c:	00813823          	sd	s0,16(sp)
    80008380:	00113c23          	sd	ra,24(sp)
    80008384:	02010413          	addi	s0,sp,32
    80008388:	fe840593          	addi	a1,s0,-24
    8000838c:	00100613          	li	a2,1
    80008390:	00000513          	li	a0,0
    80008394:	fffff097          	auipc	ra,0xfffff
    80008398:	ae8080e7          	jalr	-1304(ra) # 80006e7c <console_read>
    8000839c:	fe844503          	lbu	a0,-24(s0)
    800083a0:	01813083          	ld	ra,24(sp)
    800083a4:	01013403          	ld	s0,16(sp)
    800083a8:	02010113          	addi	sp,sp,32
    800083ac:	00008067          	ret

00000000800083b0 <console_handler>:
    800083b0:	fe010113          	addi	sp,sp,-32
    800083b4:	00813823          	sd	s0,16(sp)
    800083b8:	00113c23          	sd	ra,24(sp)
    800083bc:	00913423          	sd	s1,8(sp)
    800083c0:	02010413          	addi	s0,sp,32
    800083c4:	14202773          	csrr	a4,scause
    800083c8:	100027f3          	csrr	a5,sstatus
    800083cc:	0027f793          	andi	a5,a5,2
    800083d0:	06079e63          	bnez	a5,8000844c <console_handler+0x9c>
    800083d4:	00074c63          	bltz	a4,800083ec <console_handler+0x3c>
    800083d8:	01813083          	ld	ra,24(sp)
    800083dc:	01013403          	ld	s0,16(sp)
    800083e0:	00813483          	ld	s1,8(sp)
    800083e4:	02010113          	addi	sp,sp,32
    800083e8:	00008067          	ret
    800083ec:	0ff77713          	andi	a4,a4,255
    800083f0:	00900793          	li	a5,9
    800083f4:	fef712e3          	bne	a4,a5,800083d8 <console_handler+0x28>
    800083f8:	ffffe097          	auipc	ra,0xffffe
    800083fc:	6dc080e7          	jalr	1756(ra) # 80006ad4 <plic_claim>
    80008400:	00a00793          	li	a5,10
    80008404:	00050493          	mv	s1,a0
    80008408:	02f50c63          	beq	a0,a5,80008440 <console_handler+0x90>
    8000840c:	fc0506e3          	beqz	a0,800083d8 <console_handler+0x28>
    80008410:	00050593          	mv	a1,a0
    80008414:	00001517          	auipc	a0,0x1
    80008418:	22c50513          	addi	a0,a0,556 # 80009640 <CONSOLE_STATUS+0x630>
    8000841c:	fffff097          	auipc	ra,0xfffff
    80008420:	afc080e7          	jalr	-1284(ra) # 80006f18 <__printf>
    80008424:	01013403          	ld	s0,16(sp)
    80008428:	01813083          	ld	ra,24(sp)
    8000842c:	00048513          	mv	a0,s1
    80008430:	00813483          	ld	s1,8(sp)
    80008434:	02010113          	addi	sp,sp,32
    80008438:	ffffe317          	auipc	t1,0xffffe
    8000843c:	6d430067          	jr	1748(t1) # 80006b0c <plic_complete>
    80008440:	fffff097          	auipc	ra,0xfffff
    80008444:	3e0080e7          	jalr	992(ra) # 80007820 <uartintr>
    80008448:	fddff06f          	j	80008424 <console_handler+0x74>
    8000844c:	00001517          	auipc	a0,0x1
    80008450:	2f450513          	addi	a0,a0,756 # 80009740 <digits+0x78>
    80008454:	fffff097          	auipc	ra,0xfffff
    80008458:	a68080e7          	jalr	-1432(ra) # 80006ebc <panic>
	...
